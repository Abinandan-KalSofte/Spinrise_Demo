VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form JURNL 
   Caption         =   "Journals"
   ClientHeight    =   6795
   ClientLeft      =   165
   ClientTop       =   -1995
   ClientWidth     =   9210
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin RMI.UserFooter UserFooter2 
      Height          =   525
      Left            =   5160
      TabIndex        =   130
      Top             =   7230
      Visible         =   0   'False
      Width           =   525
      _ExtentX        =   926
      _ExtentY        =   926
   End
   Begin Crystal.CrystalReport CR2 
      Left            =   855
      Top             =   8430
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowState     =   2
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame tdsframe2 
      Caption         =   "TDS Details"
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
      Height          =   3315
      Left            =   9750
      TabIndex        =   115
      Top             =   4365
      Visible         =   0   'False
      Width           =   4335
      Begin VB.CommandButton Command2 
         Caption         =   "&OK"
         Height          =   375
         Left            =   1800
         TabIndex        =   121
         Top             =   2850
         Width           =   975
      End
      Begin VB.TextBox Text17 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   120
         Top             =   2295
         Width           =   1455
      End
      Begin VB.TextBox Text16 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   119
         Top             =   1770
         Width           =   1455
      End
      Begin VB.TextBox Text15 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   118
         Top             =   765
         Width           =   1455
      End
      Begin VB.TextBox Text14 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   117
         Top             =   1290
         Width           =   1455
      End
      Begin VB.TextBox Text13 
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
         Left            =   2280
         TabIndex        =   116
         Top             =   225
         Width           =   1410
      End
      Begin VB.Label Label28 
         Caption         =   "HS CESS %"
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
         Height          =   255
         Left            =   600
         TabIndex        =   126
         Top             =   2370
         Width           =   1215
      End
      Begin VB.Label Label24 
         Caption         =   "EDU CESS %"
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
         Height          =   255
         Left            =   600
         TabIndex        =   125
         Top             =   1770
         Width           =   1215
      End
      Begin VB.Label Label23 
         Caption         =   "TDS %"
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
         Height          =   255
         Left            =   600
         TabIndex        =   124
         Top             =   810
         Width           =   855
      End
      Begin VB.Label Label22 
         Caption         =   "SC%"
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
         Height          =   255
         Left            =   600
         TabIndex        =   123
         Top             =   1290
         Width           =   1455
      End
      Begin VB.Label Label21 
         Caption         =   "TDS AMOUNT"
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
         Height          =   345
         Left            =   570
         TabIndex        =   122
         Top             =   240
         Width           =   1485
      End
   End
   Begin VB.Frame UserFooterFrame 
      Height          =   4995
      Left            =   11010
      TabIndex        =   101
      Top             =   630
      Visible         =   0   'False
      Width           =   4170
      Begin VB.CommandButton FooterCmd 
         Caption         =   "&OK"
         Height          =   375
         Left            =   1545
         TabIndex        =   102
         Top             =   4530
         Width           =   945
      End
      Begin VB.PictureBox UserFooter1 
         Height          =   4395
         Left            =   45
         ScaleHeight     =   4335
         ScaleWidth      =   3975
         TabIndex        =   103
         Top             =   135
         Width           =   4035
      End
   End
   Begin VB.Frame TdsFrame 
      Caption         =   "TDS Details"
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
      Height          =   3315
      Left            =   10215
      TabIndex        =   71
      Top             =   840
      Visible         =   0   'False
      Width           =   4335
      Begin VB.TextBox txttdsamt 
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
         Left            =   2280
         TabIndex        =   99
         Top             =   225
         Width           =   1410
      End
      Begin VB.TextBox Text12 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   80
         Top             =   1290
         Width           =   1455
      End
      Begin VB.TextBox Text9 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   75
         Top             =   765
         Width           =   1455
      End
      Begin VB.TextBox Text10 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   74
         Top             =   1770
         Width           =   1455
      End
      Begin VB.TextBox Text11 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   73
         Top             =   2295
         Width           =   1455
      End
      Begin VB.CommandButton TdsCmd 
         Caption         =   "&OK"
         Height          =   375
         Left            =   1800
         TabIndex        =   72
         Top             =   2850
         Width           =   975
      End
      Begin VB.Label Label17 
         Caption         =   "TDS AMOUNT"
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
         Height          =   345
         Left            =   570
         TabIndex        =   100
         Top             =   240
         Width           =   1485
      End
      Begin VB.Label Label9 
         Caption         =   "SC%"
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
         Height          =   255
         Left            =   600
         TabIndex        =   79
         Top             =   1290
         Width           =   1455
      End
      Begin VB.Label Label25 
         Caption         =   "TDS %"
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
         Height          =   255
         Left            =   600
         TabIndex        =   78
         Top             =   810
         Width           =   855
      End
      Begin VB.Label Label26 
         Caption         =   "EDU CESS %"
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
         Height          =   255
         Left            =   600
         TabIndex        =   77
         Top             =   1770
         Width           =   1215
      End
      Begin VB.Label Label27 
         Caption         =   "HS CESS %"
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
         Height          =   255
         Left            =   600
         TabIndex        =   76
         Top             =   2370
         Width           =   1215
      End
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   4410
      Left            =   10200
      TabIndex        =   97
      Top             =   1125
      Visible         =   0   'False
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   7779
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   12632256
      ForeColor       =   -2147483641
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   " "
      TabPicture(0)   =   "JURNL.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "readDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid readDataGrid 
         Height          =   4185
         Left            =   120
         TabIndex        =   98
         Top             =   120
         Width           =   3735
         _ExtentX        =   6588
         _ExtentY        =   7382
         _Version        =   393216
         AllowArrows     =   -1  'True
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
   Begin VB.Frame Buttonframe 
      Height          =   720
      Left            =   -30
      TabIndex        =   39
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   4
         Left            =   5250
         Picture         =   "JURNL.frx":001C
         Style           =   1  'Graphical
         TabIndex        =   52
         ToolTipText     =   "Print (Ctrl + P)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":045E
         Height          =   550
         Index           =   6
         Left            =   2685
         Picture         =   "JURNL.frx":08A8
         Style           =   1  'Graphical
         TabIndex        =   51
         ToolTipText     =   "Next Record (Ctrl + N)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":0BF5
         Height          =   550
         Index           =   0
         Left            =   60
         Picture         =   "JURNL.frx":0EFF
         Style           =   1  'Graphical
         TabIndex        =   50
         ToolTipText     =   "Add (Ctrl + A)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":1292
         Height          =   550
         Index           =   5
         Left            =   2160
         Picture         =   "JURNL.frx":16DC
         Style           =   1  'Graphical
         TabIndex        =   49
         ToolTipText     =   "First Record (Ctrl + F)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":1A41
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
         Picture         =   "JURNL.frx":1D4B
         Style           =   1  'Graphical
         TabIndex        =   48
         ToolTipText     =   "Delete (Ctrl  +D)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":20E7
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "JURNL.frx":23F1
         Style           =   1  'Graphical
         TabIndex        =   47
         ToolTipText     =   "Modify (Ctrl + M)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   7650
         Picture         =   "JURNL.frx":276B
         Style           =   1  'Graphical
         TabIndex        =   46
         ToolTipText     =   "List (Ctrl + T)"
         Top             =   135
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":2B02
         Height          =   550
         Index           =   7
         Left            =   3210
         Picture         =   "JURNL.frx":2F4C
         Style           =   1  'Graphical
         TabIndex        =   45
         ToolTipText     =   "Previous Record (Ctrl + O)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":329C
         Height          =   550
         Index           =   11
         Left            =   5865
         Picture         =   "JURNL.frx":36E6
         Style           =   1  'Graphical
         TabIndex        =   44
         ToolTipText     =   "Exit (Ctrl + Q)"
         Top             =   135
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":3A7B
         Height          =   550
         Index           =   9
         Left            =   4260
         Picture         =   "JURNL.frx":3D85
         Style           =   1  'Graphical
         TabIndex        =   43
         ToolTipText     =   "Save (Ctrl + S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "JURNL.frx":4127
         Height          =   550
         Index           =   10
         Left            =   4785
         Picture         =   "JURNL.frx":4431
         Style           =   1  'Graphical
         TabIndex        =   42
         ToolTipText     =   "Cancel (Ctrl + Z)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":47AD
         Height          =   550
         Index           =   8
         Left            =   3735
         Picture         =   "JURNL.frx":4BF7
         Style           =   1  'Graphical
         TabIndex        =   41
         ToolTipText     =   "Last Record (Ctrl + L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "JURNL.frx":4F59
         Height          =   550
         Index           =   3
         Left            =   1635
         Picture         =   "JURNL.frx":5263
         Style           =   1  'Graphical
         TabIndex        =   40
         ToolTipText     =   "Find (Ctrl + R)"
         Top             =   135
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
         Left            =   8220
         TabIndex        =   54
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
         Left            =   6855
         TabIndex        =   53
         Top             =   270
         Width           =   1125
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Delete"
      Height          =   390
      Left            =   6630
      TabIndex        =   33
      Top             =   5610
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.TextBox debit 
      Alignment       =   1  'Right Justify
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "##########0.00"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   300
      Left            =   6480
      TabIndex        =   24
      Top             =   5220
      Width           =   1335
   End
   Begin VB.TextBox credit 
      Alignment       =   1  'Right Justify
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "##########0.00"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   300
      Left            =   7875
      TabIndex        =   23
      Top             =   5220
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Height          =   1440
      Left            =   315
      TabIndex        =   6
      Top             =   1080
      Width           =   8895
      Begin VB.TextBox Text19 
         Height          =   315
         Left            =   2085
         TabIndex        =   128
         Top             =   1455
         Visible         =   0   'False
         Width           =   1740
      End
      Begin VB.TextBox Text18 
         Height          =   330
         Left            =   1455
         TabIndex        =   127
         Top             =   1455
         Visible         =   0   'False
         Width           =   540
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         DataField       =   "tdsdate"
         Height          =   315
         Left            =   7335
         TabIndex        =   113
         Top             =   1500
         Visible         =   0   'False
         Width           =   1395
         _ExtentX        =   2461
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
         Format          =   453246977
         CurrentDate     =   40137
      End
      Begin VB.TextBox tdsrefno 
         DataField       =   "tdsrefno"
         Height          =   285
         Left            =   5040
         TabIndex        =   111
         Text            =   "0"
         Top             =   1515
         Visible         =   0   'False
         Width           =   840
      End
      Begin VB.Frame Frame5 
         Caption         =   "Service Tax Mill Account"
         Enabled         =   0   'False
         Height          =   615
         Left            =   5880
         TabIndex        =   94
         Top             =   0
         Visible         =   0   'False
         Width           =   1455
         Begin VB.OptionButton Option4 
            Caption         =   "No"
            Enabled         =   0   'False
            Height          =   255
            Left            =   960
            TabIndex        =   96
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
         Begin VB.OptionButton Option3 
            Caption         =   "Yes"
            Enabled         =   0   'False
            Height          =   255
            Left            =   0
            TabIndex        =   95
            Top             =   240
            Width           =   615
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Service Tax"
         Height          =   615
         Left            =   4920
         TabIndex        =   81
         Top             =   0
         Visible         =   0   'False
         Width           =   855
         Begin VB.OptionButton Option2 
            Caption         =   "No"
            Height          =   195
            Left            =   1080
            TabIndex        =   83
            Top             =   240
            Value           =   -1  'True
            Width           =   735
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Yes"
            Height          =   255
            Left            =   120
            TabIndex        =   82
            Top             =   240
            Width           =   855
         End
      End
      Begin MSMask.MaskEdBox MaskRefDate 
         DataField       =   "ref_date"
         Height          =   315
         Left            =   5850
         TabIndex        =   10
         Top             =   1140
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   556
         _Version        =   393216
         ForeColor       =   -2147483635
         MaxLength       =   10
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker RefDate 
         Height          =   345
         Left            =   5850
         TabIndex        =   68
         Top             =   1110
         Width           =   1965
         _ExtentX        =   3466
         _ExtentY        =   609
         _Version        =   393216
         Format          =   453312513
         CurrentDate     =   38477
      End
      Begin VB.TextBox txtRefNo 
         DataField       =   "ref_no"
         Height          =   315
         Left            =   1470
         MaxLength       =   25
         TabIndex        =   9
         Top             =   1020
         Width           =   1875
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "vocdt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   330
         Index           =   0
         Left            =   5835
         TabIndex        =   8
         Top             =   630
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   582
         _Version        =   393216
         ForeColor       =   -2147483635
         Enabled         =   0   'False
         MaxLength       =   10
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "dd/MM/yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   330
         Left            =   5820
         TabIndex        =   13
         Top             =   645
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   582
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   453312513
         CurrentDate     =   36208
      End
      Begin VB.ComboBox Combo1 
         ForeColor       =   &H8000000D&
         Height          =   315
         Left            =   7800
         Style           =   2  'Dropdown List
         TabIndex        =   58
         Top             =   120
         Visible         =   0   'False
         Width           =   1110
      End
      Begin VB.TextBox txtfields 
         DataField       =   "CURRCODE"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   330
         Index           =   4
         Left            =   7920
         TabIndex        =   59
         Top             =   600
         Visible         =   0   'False
         Width           =   840
      End
      Begin VB.TextBox txtfields 
         DataField       =   "CONVRATE"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   330
         Index           =   3
         Left            =   7905
         TabIndex        =   57
         Top             =   1035
         Visible         =   0   'False
         Width           =   840
      End
      Begin VB.TextBox txtfields 
         DataField       =   "TC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   330
         Index           =   1
         Left            =   1455
         Locked          =   -1  'True
         TabIndex        =   21
         Top             =   195
         Width           =   390
      End
      Begin VB.TextBox TCN 
         DataField       =   "TCHEAD"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   330
         Left            =   1935
         Locked          =   -1  'True
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   210
         Width           =   2790
      End
      Begin VB.TextBox txtfields 
         DataField       =   "VOCNO"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   330
         Index           =   2
         Left            =   1425
         TabIndex        =   7
         Top             =   615
         Width           =   1515
      End
      Begin VB.TextBox txtfields 
         DataField       =   "DOCNO"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   330
         Index           =   5
         Left            =   1455
         TabIndex        =   63
         Top             =   630
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.Label Label29 
         Caption         =   "TDS Ref.TC"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   135
         TabIndex        =   129
         Top             =   1470
         Visible         =   0   'False
         Width           =   1065
      End
      Begin VB.Label Label20 
         Caption         =   "TDS Ref.Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   5925
         TabIndex        =   114
         Top             =   1530
         Visible         =   0   'False
         Width           =   1260
      End
      Begin VB.Label Label19 
         Caption         =   "TDS Ref.No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3855
         TabIndex        =   112
         Top             =   1530
         Visible         =   0   'False
         Width           =   1170
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Ref. Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   4860
         TabIndex        =   67
         Top             =   1170
         Width           =   840
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Ref. No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   150
         TabIndex        =   66
         Top             =   1020
         Width           =   735
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Document  No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Index           =   1
         Left            =   120
         TabIndex        =   64
         Top             =   645
         Width           =   1290
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   195
         Index           =   3
         Left            =   4860
         TabIndex        =   15
         Top             =   690
         Width           =   420
      End
      Begin VB.Label Label6 
         Caption         =   "Currency"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   3675
         TabIndex        =   61
         Top             =   795
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.Label Label5 
         Caption         =   "Rate"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   7155
         TabIndex        =   60
         Top             =   720
         Visible         =   0   'False
         Width           =   600
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "TC"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   20
         Top             =   255
         Width           =   255
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Voucher  No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Index           =   2
         Left            =   135
         TabIndex        =   14
         Top             =   690
         Width           =   1140
      End
   End
   Begin MSDataGridLib.DataGrid grddatagrid 
      Height          =   2175
      Left            =   315
      TabIndex        =   12
      Top             =   2520
      Width           =   8910
      _ExtentX        =   15716
      _ExtentY        =   3836
      _Version        =   393216
      AllowUpdate     =   -1  'True
      ForeColor       =   -2147483635
      HeadLines       =   1
      RowHeight       =   18
      TabAction       =   2
      WrapCellPointer =   -1  'True
      AllowAddNew     =   -1  'True
      AllowDelete     =   -1  'True
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
         Name            =   "Times New Roman"
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
            Type            =   1
            Format          =   "0.000"
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
   Begin VB.TextBox txtfields 
      DataField       =   "DIVCODE"
      ForeColor       =   &H80000002&
      Height          =   285
      Index           =   0
      Left            =   8310
      TabIndex        =   2
      Top             =   990
      Visible         =   0   'False
      Width           =   150
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   55
      Top             =   10755
      Width           =   20370
      _ExtentX        =   35930
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   1
            Object.Width           =   2646
            MinWidth        =   2646
            TextSave        =   "06/02/2020"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "12:09 PM"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSDataListLib.DataCombo DataCombo1 
      Height          =   315
      Left            =   2955
      TabIndex        =   1
      Top             =   1725
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   556
      _Version        =   393216
      ForeColor       =   -2147483635
      Text            =   ""
   End
   Begin VB.CommandButton delmodok 
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
      Height          =   340
      Left            =   6060
      TabIndex        =   0
      Top             =   1695
      Width           =   600
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   7200
      Top             =   60
   End
   Begin VB.Frame Frame7 
      Height          =   2835
      Left            =   1710
      TabIndex        =   27
      Top             =   2040
      Visible         =   0   'False
      Width           =   6435
      Begin VB.ListBox List1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         ItemData        =   "JURNL.frx":55F8
         Left            =   750
         List            =   "JURNL.frx":55FA
         TabIndex        =   38
         Top             =   1515
         Width           =   1335
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   315
         Left            =   1335
         TabIndex        =   36
         Text            =   " "
         Top             =   900
         Width           =   4935
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   315
         Left            =   435
         TabIndex        =   35
         Text            =   " "
         Top             =   900
         Width           =   870
      End
      Begin VB.CommandButton qrycan 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3420
         TabIndex        =   30
         Top             =   2190
         Width           =   930
      End
      Begin VB.CommandButton qryok 
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
         Height          =   375
         Left            =   2340
         TabIndex        =   29
         Top             =   2190
         Width           =   930
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   4230
         MaxLength       =   6
         TabIndex        =   28
         Top             =   1500
         Width           =   2025
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         Caption         =   "Month"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   225
         Left            =   120
         TabIndex        =   37
         Top             =   1560
         Width           =   525
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "TC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   225
         Left            =   135
         TabIndex        =   34
         Top             =   945
         Width           =   255
      End
      Begin VB.Label Label14 
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
         Height          =   330
         Left            =   45
         TabIndex        =   32
         Top             =   120
         Width           =   6345
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "Voucher No."
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   225
         Left            =   2940
         TabIndex        =   31
         Top             =   1545
         Width           =   1020
      End
      Begin VB.Shape Shape2 
         Height          =   2310
         Left            =   30
         Top             =   465
         Width           =   6330
      End
   End
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   4170
      Left            =   225
      TabIndex        =   5
      Top             =   990
      Width           =   9270
      _ExtentX        =   16351
      _ExtentY        =   7355
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame2 
      Height          =   4725
      Left            =   315
      TabIndex        =   3
      Top             =   1230
      Visible         =   0   'False
      Width           =   8895
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   2400
         TabIndex        =   70
         Top             =   3960
         Width           =   1575
      End
      Begin VB.TextBox Text3 
         Height          =   285
         Left            =   1680
         TabIndex        =   69
         Top             =   3960
         Width           =   375
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3030
         Left            =   270
         TabIndex        =   4
         Top             =   900
         Width           =   7695
         _ExtentX        =   13573
         _ExtentY        =   5345
         _Version        =   393216
         AllowUpdate     =   0   'False
         BackColor       =   16777215
         HeadLines       =   1
         RowHeight       =   18
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
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Caption         =   "Double Click on the required record"
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "dd/MM/yyyy"
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
      Begin VB.Label delmodoklabel 
         Caption         =   "Doc  No.                       TC"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2640
         TabIndex        =   26
         Top             =   165
         Visible         =   0   'False
         Width           =   2775
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4860
      Left            =   195
      TabIndex        =   16
      Top             =   960
      Visible         =   0   'False
      Width           =   9030
      Begin RichTextLib.RichTextBox txtgl 
         Height          =   375
         Left            =   1350
         TabIndex        =   56
         Top             =   3810
         Visible         =   0   'False
         Width           =   6645
         _ExtentX        =   11721
         _ExtentY        =   661
         _Version        =   393217
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         TextRTF         =   $"JURNL.frx":55FC
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3795
         Left            =   990
         TabIndex        =   65
         Top             =   570
         Width           =   7395
         _ExtentX        =   13044
         _ExtentY        =   6694
         caption         =   ""
      End
      Begin VB.CommandButton Command4 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4920
         TabIndex        =   18
         Top             =   4335
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3225
         TabIndex        =   17
         Top             =   4335
         Width           =   975
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   330
         Left            =   45
         TabIndex        =   22
         Top             =   120
         Width           =   8940
      End
   End
   Begin VB.Frame staxframe 
      Caption         =   "Service Tax"
      ForeColor       =   &H00FF0000&
      Height          =   2895
      Left            =   870
      TabIndex        =   84
      Top             =   885
      Visible         =   0   'False
      Width           =   3615
      Begin VB.CommandButton STAXCMD 
         Caption         =   "&OK"
         Height          =   375
         Left            =   1440
         TabIndex        =   93
         Top             =   2280
         Width           =   1095
      End
      Begin VB.TextBox Text8 
         Height          =   405
         Left            =   1680
         TabIndex        =   92
         Top             =   1800
         Width           =   1215
      End
      Begin VB.TextBox Text7 
         Height          =   405
         Left            =   1680
         TabIndex        =   91
         Top             =   1320
         Width           =   1215
      End
      Begin VB.TextBox Text6 
         Height          =   405
         Left            =   1680
         TabIndex        =   90
         Top             =   840
         Width           =   1215
      End
      Begin VB.TextBox Text5 
         Height          =   405
         Left            =   1680
         TabIndex        =   89
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label15 
         Caption         =   "HS Cess %"
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   240
         TabIndex        =   88
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label Label12 
         Caption         =   "Edu.Cess %"
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   240
         TabIndex        =   87
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label11 
         Caption         =   "Service Tax %"
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   240
         TabIndex        =   86
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label10 
         Caption         =   "Ass.Tax %"
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   240
         TabIndex        =   85
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame FooterFrame 
      Height          =   930
      Left            =   3015
      TabIndex        =   104
      Top             =   660
      Visible         =   0   'False
      Width           =   4065
      Begin VB.CommandButton Command7 
         Caption         =   "&OK"
         Height          =   375
         Left            =   1665
         TabIndex        =   105
         Top             =   3945
         Width           =   945
      End
      Begin TabDlg.SSTab FooterTab 
         Height          =   735
         Left            =   90
         TabIndex        =   106
         Top             =   150
         Width           =   3870
         _ExtentX        =   6826
         _ExtentY        =   1296
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         TabCaption(0)   =   "Tab 0"
         TabPicture(0)   =   "JURNL.frx":5673
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "FooterFrame8"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame FooterFrame8 
            Height          =   615
            Left            =   90
            TabIndex        =   107
            Top             =   30
            Width           =   3720
            Begin VB.OptionButton FooterNo 
               Caption         =   "No"
               Height          =   285
               Left            =   2895
               TabIndex        =   109
               Top             =   255
               Width           =   540
            End
            Begin VB.OptionButton FooterYes 
               Caption         =   "Yes"
               Height          =   315
               Left            =   1680
               TabIndex        =   108
               Top             =   210
               Width           =   780
            End
            Begin VB.Label Label18 
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
               Height          =   315
               Left            =   165
               TabIndex        =   110
               Top             =   255
               Width           =   1425
            End
         End
      End
   End
   Begin VB.Label lblctrl 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      Caption         =   " Press F1/F2 to Add GL/SL"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   345
      Left            =   1380
      TabIndex        =   62
      Top             =   6180
      Visible         =   0   'False
      Width           =   4500
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Journals"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   360
      Left            =   60
      TabIndex        =   25
      Top             =   585
      Width           =   1140
   End
   Begin VB.Label Label4 
      Caption         =   "label4"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   19
      Top             =   1305
      Visible         =   0   'False
      Width           =   2895
   End
End
Attribute VB_Name = "JURNL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim RsNav As Recordset
Dim t_glno As Integer
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim RsJv1 As Recordset
Dim Rscur As Recordset
Dim staxperrs As Recordset

Dim vocno As Double
Dim oldDocNo As Double
Dim docNo As Double
Dim getd As Recordset
Dim DB As Connection
Dim db1 As Connection

Dim DB_V As Double
Dim CR_V As Double
Dim Opt As String
Dim deltype As String
Dim TC As Integer, te As Boolean
Dim st As String, st1 As String
Dim crdamt, dbtamt As Double
Dim GL As String
Dim RW As Integer
Dim TSTR1 As String
Dim sumcrd As Double, sumdbt As Double
Dim gflag As Integer
Dim lbstats As String

Dim rsorg As Recordset
Dim rsorg1 As Recordset


Dim rstdsrev As Recordset

Dim c As String, CR(100) As Double, dr(100) As Double
Dim narr1, narr2 As String
Dim NVAL As Double, Nval1 As Double, nval2 As Double
Dim tds1 As Double

Dim sType As String
Dim rstds1 As Recordset
Dim rstds2 As Recordset
Dim rstds3 As Recordset
Dim rstds4 As Recordset

Dim rstdsjv1 As Recordset
Dim rstdsjv2 As Recordset
Dim rstdsjv3 As Recordset
Dim rstdsjv4 As Recordset
Dim rstdsjv5 As Recordset
Dim rstdsjv6 As Recordset

Dim rssl1 As Recordset
Dim rssl2 As Recordset

Dim rss2 As Recordset
Dim gflg

Dim crtax 'cr
Dim CR1
Dim crtot
Dim staxst 'stax
Dim etaxst 'etax
Dim htaxst 'htax
Dim totline As Integer
Dim dif
Dim repFoot As String

Dim cnt As Integer
Dim intTc As Integer

Dim pjvno
Dim pjvdt
Dim Fatc




Private Sub can1()
 SSTab2.Visible = False
   'CANCEL
    'lblctrl.Visible = True
    Timer1.Enabled = True
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Select Case Opt
    Case "mod"
        'To undo changes made
        
        If Option1.value = False Then
            DB.RollbackTrans
        End If
        
        'db.RollbackTrans
        
        Opt = ""
        
        
    Case "add"
        'To undo addition
        On Error Resume Next
        txtFields(1).Text = ""
        MaskEdBox1(0).Text = "__/__/____"
        TCN = ""
        adoSecondaryRS.Requery
        stbar.Panels(2).Text = ""
        grdDataGrid.Columns(0).Visible = False
        grdDataGrid.Columns(1).Visible = False
        grdDataGrid.Columns(2).Visible = False
        grdDataGrid.Columns(3).Visible = False
        grdDataGrid.Columns(4).Visible = False
        grdDataGrid.Columns(12).Visible = False
        grdDataGrid.Columns(13).Visible = False
        DB.RollbackTrans
        MaskEdBox1(0).Enabled = False
        DTPicker1.Enabled = False
        Screen.MousePointer = 0
        debit.Text = ""
        credit.Text = ""
        Opt = ""
    Case "del"
        'To undo deletion
        DB.RollbackTrans
        Opt = " "
   End Select
    Opt = " "
    'To return default settings - i.e query mode
    Call TXTCLR
    Call txtclear1
    
    Set adoSecondaryRS = New Recordset
    
'   If Repindex = 201 Then
'    adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",c.cchead ""Description"",t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t,FA_CCMAS C where c.cccode =* t.cccode AND T.TC=(SELECT DRNOTE FROM FA_PARAM) AND 1 = 2 Order by t.vocsno", DB
'   Else
'    adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",c.cchead ""Description"",t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t,FA_CCMAS C where c.cccode =* t.cccode AND T.TC=(SELECT CRNOTE FROM FA_PARAM) AND 1 = 2 Order by t.vocsno", DB
'   End If
'


 adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",c.cchead ""Description"",t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t,FA_CCMAS C where c.cccode =* t.cccode AND (T.TC=(SELECT DRNOTE FROM FA_PARAM) or T.TC=(SELECT CRNOTE FROM FA_PARAM)) AND 1 = 2 Order by t.vocsno", DB
    
    
    
    Set grdDataGrid.DataSource = adoSecondaryRS
    grdDataGrid.Columns(0).Visible = False
    grdDataGrid.Columns(1).Visible = False
    grdDataGrid.Columns(2).Visible = False
    grdDataGrid.Columns(3).Visible = False
    grdDataGrid.Columns(4).Visible = False
    grdDataGrid.Columns(6).Width = 2325
    grdDataGrid.Columns(7).Width = 2055.118
    
    grdDataGrid.Columns(8).Width = 540.2835
    
    grdDataGrid.Columns(8).Visible = False
    
    grdDataGrid.Columns(9).Width = 1305.071
    grdDataGrid.Columns(9).Visible = False
    grdDataGrid.Columns(10).Width = 1305.071
    grdDataGrid.Columns(12).Visible = False
    grdDataGrid.Columns(13).Visible = False
    grdDataGrid.Columns(14).Visible = False
    grdDataGrid.Columns(15).Visible = False
    grdDataGrid.Columns(0).Width = 0
    grdDataGrid.Columns(9).Alignment = dbgRight
    grdDataGrid.Columns(10).Alignment = dbgRight
    grdDataGrid.Columns(10).NumberFormat = "#0.00"
    grdDataGrid.Columns(11).NumberFormat = "#0.00"
    grdDataGrid.ScrollBars = dbgAutomatic
    Call Show_Rec1("L")
    
    credit.Visible = False
    debit.Visible = False
    DataCombo1.Visible = False
    delmodoklabel.Visible = False
    delmodok.Visible = False
    Label4.Visible = False
    DataGrid1.Visible = False
    Frame2.Visible = False
    Frame1.Visible = True
    Frame1.ZOrder
    Frame3.Visible = False
    grdDataGrid.Visible = True
    'calling cancl procedure from module
    Screen.MousePointer = 0
    Opt = " "
    Call cancl(BUTTON, GSNO)
    Call disablcontls
    
End Sub

Private Sub BUTTON_Click(Index As Integer)


 On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0

SSTab2.Visible = False

    cnt = cnt + 1
    If cnt >= 1 Then
        Call can1
    End If

     '''030109 - Addition
         ' Call EntryLocking(CStr(pdate))
            If fa_flag = "Y" Then
                Call BUTTON_Click(10)
                Screen.MousePointer = 0
                Exit Sub
            End If



    Opt = "add"
    
    RefDate.value = yfdate
    
    
    narr1 = ""
    narr2 = ""
    desc.Caption = "Addition"
    Combo1.Visible = False 'True
    Combo1.clear
    Set Rs = New Recordset
    Rs.Open "select currcode from fa_param", DB
    If Rs.RecordCount = 0 Then
        Combo1.List(0) = "RS"
    Else
        Combo1.List(0) = Rs(0)
    End If
    
    Set Rs = New Recordset
    Rs.Open "select currcode,convrate from fa_currate where currdate = '" & Format(pdate, "yyyy-mm-dd") & "'", DB
    If Rs.RecordCount > 0 Then
        Rs.MoveFirst
        Do While Not (Rs.EOF)
            Combo1.AddItem (Rs(0))
            Rs.MoveNext
        Loop
    End If
    NVAL = 0
    Nval1 = 0
'    lblctrl.Visible = True
    Timer1.Enabled = True
    Set adoprimaryrs = New Recordset
    adoprimaryrs.Open "Select DIVCODE,TC,VOCNO,VOCDT,CURRCODE,CONVRATE,ENTUSRID,ENTDATE,MODUSRID,MODDATE,docno,Ref_no,Ref_Date,tdsrefno,tdsdate from FA_JVHEAD WHERE 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
    
    Combo1.ListIndex = 0
    Dim txt1 As String
    Dim DTXT As String
    If Trim(txtFields(1).Text) <> "" Then
        txt1 = txtFields(1).Text
        DTXT = MaskEdBox1(0).Text
    Else
        txt1 = ""
        DTXT = ""
    End If
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select DIVCODE,TC,VOCNO,VOCDT,VOCSNO,ACCODE ""AC Code"",narration1 ""Narration1"",narration2 ""Narration2"",cccode ""C.C"",debit ""Debit"",credit ""Credit"",crdrflg ,AMTRECPAY,amtdue,FDEBIT,FCREDIT,docno from FA_JVLINE WHERE 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
    
    Set grdDataGrid.DataSource = adoSecondaryRS
    Call bindcontls
    Call ENABLCONTLS
    
    adoprimaryrs.AddNew
    adoSecondaryRS.AddNew
    
    
 '180209
    
    grdDataGrid.AllowUpdate = True
    grdDataGrid.AllowAddNew = True
   
    credit.Visible = True
    debit.Visible = True

    If intTc = 0 Then
       LookUp.clear = True
       
       'qrl = "select Tc,Tchead from FA_TCMAS,FA_PARAM where tc between fromjvtc and tojvtc"
       
       'If Repindex = 201 Then
       ' qrl = "select Tc,Tchead from FA_TCMAS,FA_PARAM where tc between DRNOTE and DRNOTE"
       'Else
       ' qrl = "select Tc,Tchead from FA_TCMAS,FA_PARAM where tc between CRNOTE and CRNOTE"
       'End If
       
        qrl = "select Tc,Tchead from FA_TCMAS,FA_PARAM where tc between DRNOTE and CRNOTE"
       
       
       LookUp.query = qrl
       LookUp.Caption = "TC Listing"
       LookUp.DefCol = "tchead"
       LookUp.ALIGN = "1500,3900"
       LookUp.Show vbModal
       If LookUp.Cancel = False Then
          intTc = LookUp.Fields(0)
       Else
          intTc = 0
        End If
    End If
    
    If intTc <> 0 Then
        
       If Opt = "add" Or Opt = "mod" Then
                If intTc = 0 Then 'ksldesc1.CODE = "" Then
                    MsgBox "No Transaction Codes found", vbInformation, head
                    Exit Sub
                End If
                txtFields(1).Text = intTc 'ksldesc1.CODE
'                TCN.text = Lookup.Fields(1) 'ksldesc1.description
                
                Set Rs = New Recordset
                Rs.Open "select tc,tchead,flg from FA_TCMAS where tc ='" & txtFields(1).Text & "'", DB, adOpenStatic
                If Not Rs.EOF Then
                     Text3.Text = IIf(IsNull(Rs("flg")), "", Rs("flg"))
                End If
                Call ENABLCONTLS
                txtFields(2).Locked = True
'                vocNo = newVocNo(Val(txtfields(1).text), MaskEdBox1(0).text)
'                docno = newdocno(Val(txtfields(1).text), MaskEdBox1(0).text)
'                txtfields(5).text = Val(docno)
'                txtfields(2).text = Val(vocNo)
                
                BUTTON(9).Enabled = True
                
                BUTTON(10).Enabled = True
                stbar.Panels(2).Text = "Please select a date"
                
                'MaskEdBox1(0).SetFocus
                
                
                End If
        Else
            'MsgBox "Enter valid Transaction Code", vbInformation, Head
            ''txtfields(1).SetFocus
            ''BUTTON_Click (10)
            Exit Sub
        End If
        
        
        'txtfields(1).text = txt1
        'MaskEdBox1(0).text = DTXT
        
        
        MaskEdBox1(0).Enabled = False 'True
        
        
        DTPicker1.Enabled = True
    txtFields(0).Text = Divcode
    Call TXTCLR
    grdDataGrid.Columns(0).Visible = False
    grdDataGrid.Columns(1).Visible = False
    grdDataGrid.Columns(2).Visible = False
    grdDataGrid.Columns(3).Visible = False
    grdDataGrid.Columns(4).Visible = False
    grdDataGrid.Columns(11).Visible = False
    grdDataGrid.Columns(12).Visible = False
    grdDataGrid.Columns(13).Visible = False
    grdDataGrid.Columns(14).Visible = False
    grdDataGrid.Columns(15).Visible = False
    grdDataGrid.Columns(16).Visible = False
    grdDataGrid.Columns(0).Width = 0
    
    grdDataGrid.Columns(8).Locked = True
    
    
    grdDataGrid.Columns(6).Width = 2325
    grdDataGrid.Columns(7).Width = 2055.118
    'grddatagrid.Columns(8).Width = 540.2835
    
    grdDataGrid.Columns(8).Visible = False
    
    
    grdDataGrid.Columns(9).Width = 1305.071
    grdDataGrid.Columns(10).Width = 1275
    'RAVI
        grdDataGrid.Columns(9).Alignment = dbgRight
        grdDataGrid.Columns(10).Alignment = dbgRight
        grdDataGrid.Columns(9).NumberFormat = "#0.00"
        grdDataGrid.Columns(10).NumberFormat = "#0.00"
    If txt1 <> "" Then
       ' grddatagrid.Col = 5
        'grddatagrid.EditActive = True
        'grddatagrid.SetFocus
        txtRefNo.SetFocus
    End If
    DB.BeginTrans
    txtFields(0).Text = Divcode
    'Calling adddelmod procedure
    Call adddelmod(BUTTON)
    
    BUTTON(9).Enabled = False 'True
    
    grdDataGrid.ScrollBars = dbgAutomatic
    
    
    
                
Case 1
SSTab2.Visible = False

     '''030109
          'Call EntryLocking(CStr(pdate))
            If fa_flag = "Y" Then
                Call BUTTON_Click(10)
                Screen.MousePointer = 0
                Exit Sub
            End If

Combo1.clear
    Set Rs = New Recordset
    Rs.Open "select currcode from fa_param", DB
    If Rs.RecordCount = 0 Then
        Combo1.List(0) = "RS"
    Else
      
        Combo1.List(0) = Rs(0)
    End If
 Text3.Visible = False
 Text4.Visible = False
    Opt = "mod"
    desc.Caption = "Modification"
    Call delmodclick
       grdDataGrid.AllowAddNew = True
    grdDataGrid.AllowDelete = True
    grdDataGrid.AllowUpdate = True
    NVAL = 0
    Nval1 = 0
    retqty = 0#
    
   
Case 2

SSTab2.Visible = False
     '''030109
     
          'Call EntryLocking(CStr(pdate))
            If fa_flag = "Y" Then
                Call BUTTON_Click(10)
                Screen.MousePointer = 0
                Exit Sub
            End If


 Text3.Visible = False
 Text4.Visible = False
    Opt = "del"
    desc.Caption = "Deletion"
    For i = 0 To 100
        CR(i) = 0
        dr(i) = 0
    Next
    Combo1.clear
    Set Rs = New Recordset
    Rs.Open "select currcode from fa_param", DB
    If Rs.RecordCount = 0 Then
        Combo1.List(0) = "RS"
    Else
        Combo1.List(0) = Rs(0)
    End If
    Call delmodclick
    grdDataGrid.AllowAddNew = True
    grdDataGrid.AllowDelete = True
    grdDataGrid.AllowUpdate = True

Case 3

SSTab2.Visible = False

    desc.Caption = "Find"
    
    Dim tcrs As Recordset
    Set tcrs = New Recordset
              '''qrl = "SELECT a.TC ,TCHEAD as [Transaction Head], Vocno,Vocdt  FROM FA_jvhead A, FA_TCMAS B ,fa_param c WHERE  A.vOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(pdate, "yyyy-MM-dd") & "'  and a.TC=B.TC  and a.TC BETWEEN c.fromjvtc and  c.tojvtc   "
              
'
'              If Repindex = 201 Then
'                qrl = "SELECT a.TC ,TCHEAD as [Transaction Head], Vocno,Vocdt  FROM FA_jvhead A, FA_TCMAS B ,fa_param c WHERE  A.vOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(pdate, "yyyy-MM-dd") & "'  and a.TC=B.TC  and a.TC BETWEEN c.DRNOTE and  c.DRNOTE   "
'              Else
'                qrl = "SELECT a.TC ,TCHEAD as [Transaction Head], Vocno,Vocdt  FROM FA_jvhead A, FA_TCMAS B ,fa_param c WHERE  A.vOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(pdate, "yyyy-MM-dd") & "'  and a.TC=B.TC  and a.TC BETWEEN c.CRNOTE and  c.CRNOTE  "
'              End If
'
                qrl = "SELECT a.TC ,TCHEAD as [Transaction Head], Vocno,Vocdt  FROM FA_jvhead A, FA_TCMAS B ,fa_param c WHERE  A.vOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(pdate, "yyyy-MM-dd") & "'  and a.TC=B.TC  and a.TC BETWEEN c.DRNOTE and  c.CRNOTE   "
              
              
              tcrs.Open qrl, DB
              If tcrs.RecordCount = 0 Then
                 MsgBox "No Transaction Codes found", vbInformation, head
                 Exit Sub
              End If
              LookUp.clear = True
              LookUp.query = qrl
              LookUp.Caption = "Voucher Details"
              LookUp.DefCol = "Transaction Head"
              LookUp.ALIGN = "500,2900,1000,1000"
              LookUp.Show vbModal
              If LookUp.Cancel = False Then
                Call Find_lookupFA(LookUp.Fields(0), LookUp.Fields(2), LookUp.Fields(3))
              End If
              
              
Case 4



'    Dim strVno1 As String
'    Dim strVno2 As String
'    Dim Strdate As String
'    Dim strTC As String
'    Dim QY As String
'    Dim QM
'
'    SSTab2.Visible = False
'
'    If FooterFrame.Visible = False Then
'        FooterFrame.Visible = True
'        FooterFrame.ZOrder
'        FooterYes.value = False
'        FooterNo.value = False
'        Exit Sub
'    Else
'        FooterFrame.Visible = False
'        UserFooterFrame.Visible = False
'    End If
'
'    strTC = Trim(txtfields(1).Text) & " ------- " & Trim(TCN.Text)
'    strVno1 = (txtfields(2).Text)
'    strVno2 = (txtfields(2).Text)
'    'strDate = UCase(Format(MaskEdBox1(0).text, "MMMm")) & " - " & Year(Me.MaskEdBox1.text)
'
'    QY = Year(Me.MaskEdBox1(0).Text)
'    QM = Month(MaskEdBox1(0).Text)
'
'    mksldivcode = divcode
'    mksldivname = divname
'   repform.Journal_Printing strTC, Trim(strVno1), Trim(strVno2), CStr(QY), CStr(QM), CStr(RepFoot)
     Call JVPRINT 'drnotedisp
    
    
    
   
'
'    Pjvocno = Val(txtfields(2).Text)   'Val(adoPrimaryRS("VOCNO"))
'    pjvocdt = Format(MaskEdBox1(0).Text, "YYYY-MM-DD")  'Format(adoPrimaryRS("VOCDT"), "YYYY-MM-DD")
'    Fatc = Val(txtfields(1).Text)    'Val(adoPrimaryRS("TC"))
'
'    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\" & "ACC\debitnote.rpt"
'    FrmRpt.PVSelectionFormula = "{fa_jvline.VOCNO}=" & Pjvocno & " and {fa_jvline.TC}=" & Fatc & " AND {fa_jvline.divcode}='" & divcode & "' AND {fa_jvline.VOCDT} =  DATE(" & Val(Year(pjvocdt)) & "," & Val(Month(pjvocdt)) & "," & Val(Day(pjvocdt)) & ")"
'
'    Set rsjvline = New Recordset
'    rsjvline.Open "Select sum(isnull(debit,0)) from FA_jvline where divcode = '" & divcode & "' and tc = " & Fatc & " and vocno = " & Pjvocno & " and vocdt = '" & pjvocdt & "' ", db, adOpenStatic, adLockReadOnly
'
'
'    Set RShead = New Recordset
'    RShead.Open "Select CurrCode, CurrName, ISNULL(DecimalName,'PAISE') from FA_CURRENCY where CURRCODE = '" & Trim(txtfields(3).Text) & "'", db, adOpenStatic, adLockReadOnly
'
'
'    If Not (RShead.BOF And RShead.EOF) Then
'        sAmtInWord = Num_To_Word(Val(rsjvline(0).value), CStr(RShead(0)), CStr(RShead(2)))
'
'    Else
'        sAmtInWord = Num_To_Word(Val(rsjvline(0).value))
'    End If
'
'
'    FrmRpt.sAmtInWords = sAmtInWord
'
'    FrmRpt.dCRindex = 341
'
'    FrmRpt.Show
'    Screen.MousePointer = 0
'
'
'
'
    

    Exit Sub


    
    
      

Case 5

SSTab2.Visible = False

    'first
    desc.Caption = "Query"
    On Error GoTo GoFirstError
'''    adoPrimaryRS.MoveFirst
    'calling fir procedure from module
'''    grdDataGrid.Columns(0).Visible = False
'''    grdDataGrid.Columns(1).Visible = False
'''    grdDataGrid.Columns(2).Visible = False
    Call FIR(BUTTON)
    Call prev(BUTTON)
    ''Call las(BUTTON)
    Call Show_Rec("F")
    ''Call navi(BUTTON)
    
    Exit Sub
GoFirstError:
    If TCN = "" Then txtFields(1).Text = ""
       
Case 6
    'next
    
 SSTab2.Visible = False
 
    desc.Caption = "Query"
    On Error GoTo GoNextError
'''    If Not adoPrimaryRS.EOF Then
'''        adoPrimaryRS.MoveNext
        Call Show_Rec("N")
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
'''    End If
'''    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
'''        BUTTON(6).Enabled = False
'''        BUTTON(8).Enabled = False
'''        BUTTON(5).Enabled = True
'''        BUTTON(7).Enabled = True
'''        Call NEX(BUTTON)
'''        'moved off the end so go back
'''        adoPrimaryRS.MoveLast
'''    End If
    'show the current record
    ''Call navi(BUTTON)
'''    grdDataGrid.Columns(0).Visible = False
'''    grdDataGrid.Columns(1).Visible = False
'''    If TCN = "" Then txtfields(1).text = ""
    Exit Sub
GoNextError:
    If TCN = "" Then txtFields(1).Text = ""

Case 7
    'previous
    SSTab2.Visible = False
    
    desc.Caption = "Query"
    On Error GoTo GoPrevError
'''    If Not adoPrimaryRS.BOF Then
'''        adoPrimaryRS.MovePrevious
        Call Show_Rec("P")
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
'''    End If
'''    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
'''        'Beep
'''        'moved off the end so go back
'''        BUTTON(5).Enabled = False
'''        BUTTON(7).Enabled = False
'''        BUTTON(6).Enabled = True
'''        BUTTON(8).Enabled = True
'''        Call PREV(BUTTON)
'''        adoPrimaryRS.MoveFirst
'''    End If
    'show the current record
    ''Call navi(BUTTON)
'''    grdDataGrid.Columns(0).Visible = False
'''    grdDataGrid.Columns(1).Visible = False
'''    grdDataGrid.Columns(2).Visible = False
    Exit Sub
GoPrevError:
    If TCN = "" Then txtFields(1).Text = ""

Case 8
SSTab2.Visible = False
    'Last
    desc.Caption = "Query"
    On Error GoTo GoLastError
'''    adoPrimaryRS.MoveLast
    'calling las procedure from module
    Call Show_Rec("L")
    ''Call navi(BUTTON)
    
    Call las(BUTTON)
'''    grdDataGrid.Columns(0).Visible = False
'''    grdDataGrid.Columns(1).Visible = False
'''    grdDataGrid.Columns(2).Visible = False
    Exit Sub
GoLastError:
    If TCN = "" Then txtFields(1).Text = ""



Case 9

gflg = 0


'    'Save
'
'
  If Opt = "add" Or Opt = "mod" Then
     If (adoSecondaryRS.RecordCount) > 0 Then
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
            Set chk = New Recordset
            Set chk1 = New Recordset


            chk.Open "Select *   from fa_glmas where glcode ='" & grdDataGrid.Columns(5).Text & "'", DB
            chk1.Open "Select *  from fa_slmas where slcode ='" & grdDataGrid.Columns(5).Text & "'", DB

            '''If chk.EOF And chk1.EOF And IIf(IsNull(grddatagrid.Columns(10)), "0", grddatagrid.Columns(10)) = "0" And IIf(IsNull(grddatagrid.Columns(11)), "0", grddatagrid.Columns(11)) = 0 Then


            If chk.EOF And chk1.EOF Then
              MsgBox "Invalid A/C Code. You Can't Save. ", vbCritical, head
              grdDataGrid.Col = 5
              grdDataGrid.SetFocus
              Exit Sub
            End If
            adoSecondaryRS.MoveNext
            Loop
      End If
    End If




    SSTab2.Visible = False
    SSTab2.Enabled = False
    
    tmp = Opt
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    On Error GoTo er1
    
    
    If Opt = "add" Then
        If MsgBox("Are you sure to save?", vbYesNo, head) = vbNo Then
         Call canclear1
        End If
        vocno = newVocNo(val(txtFields(1).Text), MaskEdBox1(0).Text)
        docNo = newdocno(val(txtFields(1).Text), MaskEdBox1(0).Text)
        txtFields(5).Text = val(docNo)
        txtFields(2).Text = val(vocno)
    End If
    
    
  If Opt = "add" Then

''    If (txtfields(5).Text) = "" Then
''        MsgBox "Document No cannot be empty", vbInformation, head
''        txtfields(5).SetFocus
''        Exit Sub
''    End If


    If (txtFields(2).Text) = "" Then
        MsgBox "Document No cannot be empty", vbInformation, head
        txtFields(5).SetFocus
        Exit Sub
    End If
    
    If txtFields(2).Text <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select count(*) from FA_JVHEAD where Vocno='" & txtFields(2).Text & "' AND TC='" & txtFields(1).Text & "' AND Divcode = '" & Divcode & "' AND Vocdt >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND Vocdt <= '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic
        
        If Rs(0) > 0 Then
            MsgBox "This DocumentNo Already Defined", vbInformation, head
            txtFields(5).Text = ""
            txtFields(5).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        
    End If
    
    Screen.MousePointer = 11
    '-------- Addition
    debit.Text = 0
    credit.Text = 0
    If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        debit.Text = debit.Text + IIf(IsNull(adoSecondaryRS(9).value) = True Or adoSecondaryRS(9).value = "", 0, adoSecondaryRS(9).value)
        credit.Text = credit.Text + IIf(IsNull(adoSecondaryRS(10).value) = True Or adoSecondaryRS(10).value = "", 0, adoSecondaryRS(10).value)
        adoSecondaryRS.MoveNext
    Loop
   If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
    
     Set Rs = New Recordset
     Rs.Open "select drnote,crnote from fa_param", DB
     
        If Not val(credit) = val(debit) Then
            MsgBox " Credit Total not tallying with Debit Total", vbCritical, head
            Call setf
            Screen.MousePointer = 0
            Exit Sub
        End If
     
     
        Opt = ""
        gflag = 1
      
      'On Error Resume Next
        
        
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            If IsNull(adoSecondaryRS(5)) = True Or adoSecondaryRS(5) = "" Then
                adoSecondaryRS.Delete
            End If
            adoSecondaryRS.MoveNext
        Loop
        
        If adoSecondaryRS.RecordCount <= 0 Then
            MsgBox "No Line Detail has been Entered", vbInformation, head
            adoSecondaryRS.AddNew
            grdDataGrid.Col = 5
            grdDataGrid.SetFocus
            Screen.MousePointer = 0
            Opt = "add"
            Exit Sub
        End If
        
        adoSecondaryRS.MoveFirst
        
        Do While Not adoSecondaryRS.EOF
            If (IsNull(adoSecondaryRS(9)) Or Trim(adoSecondaryRS(9)) = "" Or adoSecondaryRS(9) = 0) And (IsNull(adoSecondaryRS(10)) Or Trim(adoSecondaryRS(10)) = "" Or adoSecondaryRS(10) = 0) And Not (IsNull(adoSecondaryRS(5)) = True) Then
                MsgBox "Debit or Credit amount should be entered", vbCritical, head
                Opt = "add"
                Screen.MousePointer = 0
                Exit Sub
            ElseIf IsNull(adoSecondaryRS(6)) And Not (IsNull(adoSecondaryRS(5)) = True) Then
                MsgBox "Narration should not be empty", vbCritical, head
                Opt = "add"
                Screen.MousePointer = 0
                Exit Sub
            End If
            adoSecondaryRS.MoveNext
        Loop
        
        
        'db.BeginTrans  'change 27.06.08 insert this line - jvline update but cgtrn not update
        
        'On Error Resume Next
        
        
        Set getd = New Recordset
        getd.Open "SELECT GETDATE() AS GETDATE", DB, adOpenStatic, adLockBatchOptimistic
        adoprimaryrs(1) = CInt(txtFields(1).Text)
        adoprimaryrs(3) = MaskEdBox1(0).Text
        adoprimaryrs("ENTUSRID") = uid
        
        If txtFields(5).Text <> "" Then
            adoprimaryrs("docno") = val(txtFields(5).Text)
        Else
            docNo = newdocno(adoprimaryrs(1), MaskEdBox1(0).Text)
        End If
        If txtFields(2).Text <> "" Then
            adoprimaryrs("vocno") = val(txtFields(2).Text)
        Else
            vocno = newVocNo(adoprimaryrs(1), MaskEdBox1(0).Text)
        End If

        vocno = newVocNo(adoprimaryrs(1), MaskEdBox1(0).Text)
        On Error Resume Next
        adoprimaryrs("docno") = vocno
        adoprimaryrs("ENTDATE") = Format(getd("GETDATE"), "YYYY-MM-DD hh:mm:ss.m")
        vocno = newVocNo(adoprimaryrs(1), MaskEdBox1(0).Text)
        Opt = "add"
        adoprimaryrs(2) = vocno
        
        adoprimaryrs("Ref_No") = txtRefNo.Text
        adoprimaryrs("Ref_Date") = MaskRefDate.Text
        
        adoprimaryrs("tdsRefNo") = txtRefNo.Text
        adoprimaryrs("tdsdate") = Format(DTPicker2.value, "yyyy-mm-dd")
        
        
        Opt = " "
        Dim J As Integer
        J = 1
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            adoSecondaryRS(0).value = Divcode
            adoSecondaryRS(1).value = txtFields(1).Text
            adoSecondaryRS(3).value = MaskEdBox1(0).Text
            adoSecondaryRS(4).value = J
            adoSecondaryRS(2).value = val(vocno)
            adoSecondaryRS("docno").value = val(vocno) 'Val(TXTFIELDS(5).Text)
            adoSecondaryRS(3).value = Format(adoprimaryrs("vocdt"), "dd-mmm-yyyy")
            
            'adoSecondaryRS(6).Value = StrConv(adoSecondaryRS(6).Value, vbProperCase)
            'adoSecondaryRS(7).Value = StrConv(adoSecondaryRS(7).Value, vbProperCase)
            
            adoSecondaryRS(5).value = UCase(adoSecondaryRS(5).value)
            adoSecondaryRS(6).value = adoSecondaryRS(6).value
            adoSecondaryRS(7).value = adoSecondaryRS(7).value
            
            adoSecondaryRS(12) = 0
            Select Case (Mid(adoSecondaryRS(5), 1, 1))
            Case "C"
                adoSecondaryRS(11) = "C"
            Case "D"
                adoSecondaryRS(11) = "D"
            Case "O"
                adoSecondaryRS(11) = "O"
            Case Else
                adoSecondaryRS(11) = Null
            End Select
            If Not (IsNull(grdDataGrid.Columns(9)) Or grdDataGrid.Columns(9) = "") Then
                If CDbl(grdDataGrid.Columns(9)) > 0 Then adoSecondaryRS(13).value = CDbl(grdDataGrid.Columns(9))
            ElseIf CDbl(grdDataGrid.Columns(10)) > 0 Then
                adoSecondaryRS(13) = CDbl(grdDataGrid.Columns(10))
            End If
            adoSecondaryRS.MoveNext
            J = J + 1
        Loop
        
        ' Foreign Currency Conversion and Validation
        Set Rs = New Recordset
        Rs.Open "select currcode from fa_param", DB
        If Rs.RecordCount > 0 Then
            If Rs(0) <> Combo1.Text Then            'Foreign Currency
                adoprimaryrs(4) = txtFields(4).Text
                adoprimaryrs(5) = val(txtFields(3).Text)
                adoSecondaryRS.MoveFirst
                Do While Not adoSecondaryRS.EOF
                    If adoSecondaryRS(9) <> "" Then
                        adoSecondaryRS(14) = adoSecondaryRS(9).value
                        adoSecondaryRS(9) = adoSecondaryRS(9) * val(txtFields(3).Text)
                    Else
                        If adoSecondaryRS(10) <> "" Then
                            adoSecondaryRS(15) = adoSecondaryRS(10).value
                            adoSecondaryRS(10) = adoSecondaryRS(10) * val(txtFields(3).Text)
                        End If
                    End If
                    adoSecondaryRS.MoveNext
                Loop
            Else  'Local Currency
                'adoprimaryrs(4) = Combo1.Text
                'adoprimaryrs(5) = 1
                
                
                adoprimaryrs(4) = Combo1.Text
                adoprimaryrs(5) = 1

                adoSecondaryRS.MoveFirst

                Do While Not adoSecondaryRS.EOF
                    'sasi require
                    adoSecondaryRS("fdebit") = adoSecondaryRS("debit").value
                    adoSecondaryRS("fcredit") = adoSecondaryRS("credit").value
                    adoSecondaryRS.MoveNext
                Loop
      
                
                
                
            End If
        End If
              
            adoprimaryrs.UpdateBatch adAffectAllChapters
            
            TC = txtFields(1).Text
            
            'DB.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.text, "YYYY-MM-DD") & "' WHERE Divcode = '" & Divcode & "' AND Tc = " & tc & " AND Vocno = " & vocNo & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'"
            
            'DB.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.text, "YYYY-MM-DD") & "',tdsrefno='" & Trim(tdsrefno) & "',tdsdate='" & Format(DTPicker2.Value, "YYYY-MM-DD") & "'  WHERE Divcode = '" & Divcode & "' AND Tc = " & tc & " AND Vocno = " & vocNo & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'"
            
            
            
            
            adoSecondaryRS.UpdateBatch adAffectAllChapters
            adoSecondaryRS.UpdateBatch adAffectAll
            
        
        'MsgBox tc & "  " & vocNo & "  " & MaskEdBox1(0).text
        
        DB.CommitTrans
        
        
        
        
        
        
        Call UpdateCgtrnjventry(txtFields(1).Text, val(vocno), Format(MaskEdBox1(0).Text, "YYYY-MM-DD"))
        
        
        
        
        
            
        
        
            
            
            
            
            
            
            
            
            
            
        
        
        
        
        
        Dim rs1 As Recordset
        Set rs1 = New Recordset
        rs1.Open "select * from fa_tcmas where tc=" & txtFields(1).Text & "", DB, adOpenStatic
        
        
        
    If rs1("flg") = "Y" Then
        
        If (val(Text18.Text) > 0 And val(tdsrefno.Text) > 0) Then
        
            LookUp.clear = True
            qrl = "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE"
            LookUp.query = qrl
            LookUp.Caption = "TDS Type Listing"
            LookUp.DefCol = "TDShead"
            LookUp.ALIGN = "1500,3900"
            LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
            
                If LookUp.Fields(0) = "" Then
                    MsgBox "No Transaction Codes found", vbInformation, head
                    Exit Sub
                End If
                
                  Text4.Text = LookUp.Fields(0)
                  Set rsorg = New Recordset
                  rsorg.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", DB, adOpenDynamic, adLockOptimistic
                  
                Set rsorg1 = New Recordset
                rsorg1.Open "select ORG_TYPE from fa_SLMAS where SLCODE = '" & rsorg("ACCODE") & "'", DB, adOpenDynamic, adLockOptimistic
                
                Set TDSrs = New Recordset
                TDSrs.Open "select tds_gl_code,glcode,tds_type from fa_tds_gl where tds_type='" & LookUp.Fields(0) & "' and org_type='" & rsorg1(0).value & "' ", DB, adOpenStatic
                
                    Set TDSPerRs = New Recordset
                    TDSPerRs.Open " select * from fa_tds where  divcode='" & Divcode & "' and vocno= " & Trim(tdsrefno.Text) & " AND Vocdt = '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' AND SLCODE='" & rsorg("ACCODE") & "'", DB, adOpenDynamic
                                                                             
                    If TDSPerRs.RecordCount > 0 Then
                        tdsframe2.Top = TdsFrame.Top
                        tdsframe2.Visible = True
                        tdsframe2.ZOrder
                        Text13.Text = IIf(IsNull(TDSPerRs("amount")), 0, TDSPerRs("amount"))
                        Text15.Text = IIf(IsNull(TDSPerRs("tds_rate")), 0, TDSPerRs("tds_rate"))
                        Text14.Text = IIf(IsNull(TDSPerRs("sc_per")), 0, TDSPerRs("sc_per"))
                        Text16.Text = IIf(IsNull(TDSPerRs("edu_cess_per")), 0, TDSPerRs("edu_cess_per"))
                        Text17.Text = IIf(IsNull(TDSPerRs("hs_cess_per")), 0, TDSPerRs("hs_cess_per"))
                        Command2.SetFocus
                        Exit Sub
                    End If
                End If
            End If

   End If
 
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
'elseIf rs1("flg") = "Y" Then
                
If rs1("flg") = "Y" Then

        
    
    
    
    
    
    
         '10/10/09
          BUTTON(9).Enabled = False
          
        
    
'TDS
'====
            LookUp.clear = True
            qrl = "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE"
            LookUp.query = qrl
            LookUp.Caption = "TDS Type Listing"
            LookUp.DefCol = "TDShead"
            LookUp.ALIGN = "1500,3900"
            LookUp.Show vbModal
         
            If LookUp.Cancel = False Then
                If LookUp.Fields(0) = "" Then
                    MsgBox "No Transaction Codes found", vbInformation, head
                    Exit Sub
                End If
                
                Text4.Text = LookUp.Fields(0)
                
                  Set rsorg = New Recordset
                  rsorg.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", DB, adOpenDynamic, adLockOptimistic


                Set rsorg1 = New Recordset
                rsorg1.Open "select ORG_TYPE from fa_SLMAS where SLCODE = '" & rsorg("ACCODE") & "'", DB, adOpenDynamic, adLockOptimistic
                                
                
                
                Set TDSrs = New Recordset
                'TDSrs.Open "select tds_gl_code,glcode,tds_type from fa_tds_gl where tds_type='" & Lookup.Fields(0) & "' ", db, adOpenStatic
                TDSrs.Open "select tds_gl_code,glcode,tds_type from fa_tds_gl where tds_type='" & LookUp.Fields(0) & "' and org_type='" & rsorg1(0).value & "' ", DB, adOpenStatic
                
                
                If TDSrs.RecordCount > 0 Then
                
                    Set TDSPerRs = New Recordset
                    TDSPerRs.Open " select tds_per,edu_cess_per,hs_cess_per,sc_per from fa_tds_tax_pert where tds_gl_code ='" & TDSrs("tds_gl_code") & "' ", DB, adOpenStatic
                                       
                    If TDSPerRs.RecordCount > 0 Then
                        TdsFrame.Visible = True
                        TdsFrame.ZOrder
                        
                        txttdsamt.Text = debit
                        
                        
                        Text9.Text = TDSPerRs("tds_per")
                        Text10.Text = TDSPerRs("edu_cess_per")
                        Text11.Text = TDSPerRs("hs_cess_per")
                        Text12.Text = TDSPerRs("sc_per")
                        TdsCmd.SetFocus
                        Exit Sub
                    End If
                End If
            End If
    
    
    
'    Else
'
'          Call Matching_routine
'    End If
'
'        Exit Sub
'    End If
'
'





'tds end
   
    
' 'service tax being
'

ElseIf Option1.value = True Then

'If Option5.Value = True Then
        sType = ""
        Screen.MousePointer = 0
        LookUp.clear = True
        qrl = "select S_TYPE,S_DESC,GLCODE from FA_STAXTYPE"
        LookUp.query = qrl
        LookUp.Caption = "Service tax Type Listing"
        LookUp.DefCol = "S_desc"
        LookUp.ALIGN = "1500,3900"
        LookUp.Show vbModal
        'End If

    'On Error Resume Next

            If LookUp.Cancel = False Then
                  If LookUp.Fields(0) = "" Then
                         MsgBox "No Transaction Codes found", vbInformation, head
                         Exit Sub
                     Else
                     
                           Set RsJv1 = New Recordset
                           RsJv1.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and  credit>0", DB, adOpenStatic

                     
                         Set staxperrs = New Recordset
                         staxperrs.Open "select * from fa_service_taxt where GLCODE ='" & LookUp.Fields(2) & "'", DB, adOpenStatic
                         
                  If RsJv1("credit").value >= staxperrs("exempt_limit").value Then
                         sType = LookUp.Fields(0)
                          If staxperrs.RecordCount > 0 Then
                                staxframe.Visible = True
                                staxframe.Left = 4300
                                staxframe.ZOrder
                                Text5.Text = staxperrs("ASS_VAL_PER")
                                Text6.Text = staxperrs("SERV_TAX_per")
                                Text7.Text = staxperrs("edu_cess_per")
                                Text8.Text = staxperrs("hs_cess_per")
                                STAXCMD.SetFocus
                             Exit Sub
                          End If
                    Else
                        Call Matching_routine
                    End If '750 exempt
                                              
                          
                   End If
             End If

''         Else
''          Call Matching_routine
''        End If
'    ''End If

    Else
          Call Matching_routine
      
          
    End If






    'Else   'msgbox ok
    ' Call cancl(BUTTON, 4)
    ' End If 'msgbox ok
        
        intTc = txtFields(1).Text
        Call BUTTON_Click(0)
        

        'qry
        If cnt = 0 Then
         Exit Sub
        End If



    Exit Sub 'TDS
    End If   'TDS
     '' 'service tax end
    

    
    
    On Error Resume Next
    
    
   If Opt = "mod" Then
   
   
   

        Dim rsmod1 As Recordset
        Set rsmod1 = New Recordset
        rsmod1.Open "select * from fa_tcmas where tc=" & txtFields(1).Text & "", DB, adOpenStatic
       
   
   
            If txtFields(5).Text <> "" Then
                Set Rs = New Recordset
                Rs.Open "Select count(*) from FA_JVHEAD where Vocno='" & txtFields(2).Text & "' AND TC='" & txtFields(1).Text & "' and vocno<>" & oldDocNo & "", DB, adOpenStatic
            If Rs(0) > 0 Then
                MsgBox "This DocumentNo Already Defined", vbInformation, head
                txtFields(5).Text = ""
                Cancel = True
                Screen.MousePointer = 0
                Exit Sub
            End If
        End If
        
        If Frame2.Visible = True Then
            MsgBox "Select a Record for Modification", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        tmp = Opt
        Opt = ""
        adoSecondaryRS.MoveFirst
        debit.Text = 0
        credit.Text = 0
        Do While Not adoSecondaryRS.EOF
            debit.Text = debit.Text + IIf(IsNull(adoSecondaryRS(9).value) = True Or adoSecondaryRS(9).value = "", 0, adoSecondaryRS(9).value)
            credit.Text = credit.Text + IIf(IsNull(adoSecondaryRS(10).value) = True Or adoSecondaryRS(10).value = "", 0, adoSecondaryRS(10).value)
            adoSecondaryRS.MoveNext
        Loop
        adoSecondaryRS.MoveFirst
        Opt = tmp
       If Not val(credit.Text) = val(debit.Text) Then
            MsgBox " Both credit and debit totals should tally", vbCritical, head
            Call setf
            Screen.MousePointer = 0
            Exit Sub
        End If
        Set getd = New Recordset
        getd.Open "SELECT GETDATE() AS GETDATE", DB, adOpenStatic, adLockBatchOptimistic
        adoprimaryrs("MODUSRID") = uid
        adoprimaryrs("DOCNO") = val(txtFields(5).Text)
        adoprimaryrs("vOCNO") = val(txtFields(2).Text)
        adoprimaryrs("MODDATE") = Format(getd("GETDATE"), "YYYY-MM-DD hh:mm:ss.m")
        
        
        
        '10/02/10
        Set Rscur = New Recordset
        Rscur.Open "select currcode from fa_param", DB

        If Rscur.RecordCount > 0 Then
            If Rscur(0) <> IIf(Combo1.Text = "", "IDR", Combo1.Text) Then        'Foreign Currency
            
                DB.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.Text, "YYYY-MM-DD") & "',tdsrefno='" & Trim(tdsrefno) & "',tdsdate='" & Format(DTPicker2.value, "YYYY-MM-DD") & "',currcode='" & Trim(txtFields(4).Text) & "', convrate=" & val(txtFields(3).Text) & "  WHERE Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & txtFields(2).Text & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'"
            
                'adoprimaryrs(5) = txtfields(4).Text
                'adoprimaryrs(6) = Val(txtfields(3).Text)
            Else
            
                DB.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.Text, "YYYY-MM-DD") & "',tdsrefno='" & Trim(tdsrefno) & "',tdsdate='" & Format(DTPicker2.value, "YYYY-MM-DD") & "',currcode='" & Trim(Combo1.Text) & "', convrate=1  WHERE Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & txtFields(2).Text & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'"
            
                'adoprimaryrs(5) = Combo1.Text
                'adoprimaryrs(6) = 1
            End If
        End If
        
        
        
        
        
        '''adoPrimaryRS("Ref_No") = txtRefNo.text
        '''adoPrimaryRS("Ref_Date") = MaskRefDate.text
        
        ''DB.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.text, "YYYY-MM-DD") & "' WHERE Divcode = '" & Divcode & "' AND Tc = " & txtfields(1).text & " AND Vocno = " & txtfields(2).text & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'"
        
        
        
        
        
        'db.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.Text, "YYYY-MM-DD") & "',tdsrefno='" & Trim(tdsrefno) & "',tdsdate='" & Format(DTPicker2.value, "YYYY-MM-DD") & "'   WHERE Divcode = '" & divcode & "' AND Tc = " & txtfields(1).Text & " AND Vocno = " & txtfields(2).Text & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'"
        
        
        DB.Execute "UPDATE Fa_tds SET adjamt = " & val(debit.Text) & "  WHERE Divcode = '" & Divcode & "' AND Vocno = " & Trim(tdsrefno.Text) & " AND Vocdt = '" & Format(DTPicker2.value, "YYYY-MM-DD") & "'"
        
        
        
    '    adoPrimaryRS.UpdateBatch adAffectAllChapters
                
        
        gflag = 1
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
'           mODIFIED BY HEMALATHA
            If IsNull(adoSecondaryRS(5)) = True Or adoSecondaryRS(5) = "" Then
                adoSecondaryRS.Delete
            Else
                If Trim(adoSecondaryRS("vocSno")) = "" Then
                    vocsno = vocsno + 1
                    adoSecondaryRS("vocSno") = vocsno
                Else
                    vocsno = adoSecondaryRS("vocSno")
                End If
            End If
                       
            'test
            '
            If rsmod1("flg") = "Y" Then
                       If adoSecondaryRS("vocSno") > 2 Then
                         adoSecondaryRS.Delete
                       End If
            End If
                                   
             '
                      
            
            gflag = 1
            adoSecondaryRS.MoveNext
        Loop
        gflag = 1
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            If (IsNull(adoSecondaryRS(9)) Or Trim(adoSecondaryRS(9)) = "" Or adoSecondaryRS(9) = 0) And (IsNull(adoSecondaryRS(10)) Or Trim(adoSecondaryRS(10)) = "" Or adoSecondaryRS(10) = 0) And Not (IsNull(adoSecondaryRS(5)) = True) Then
                MsgBox "Debit or Credit amount should be entered", vbCritical, head
                grdDataGrid.Col = 9
                grdDataGrid.SetFocus
                Opt = "mod"
                Screen.MousePointer = 0
                Exit Sub
            ElseIf IsNull(adoSecondaryRS(6)) And Not (IsNull(adoSecondaryRS(5)) = True) Then
                MsgBox "Narration should not be empty", vbCritical, head
                grdDataGrid.Col = 6
                grdDataGrid.SetFocus
                Opt = "mod"
                Screen.MousePointer = 0
                Exit Sub
            End If
            gflag = 1
            adoSecondaryRS("DOCNO") = val(txtFields(5).Text)
            adoSecondaryRS("vOCNO") = val(txtFields(2).Text)
            adoSecondaryRS.MoveNext
        Loop
 
        ' Foreign Currency Conversion and Validation
        Set Rs = New Recordset
        Rs.Open "select currcode from fa_param", DB
        If Rs.RecordCount > 0 Then
            'If Rs(0) <> IIf(IsNull(Combo1.Text), "IDR", Combo1.Text) Then          'Foreign Currency
            If Rs(0) <> IIf(Combo1.Text = "", "IDR", Combo1.Text) Then        'Foreign Currency
                adoprimaryrs(5) = txtFields(4).Text
                adoprimaryrs(6) = val(txtFields(3).Text)
                adoSecondaryRS.MoveFirst
                Do While Not adoSecondaryRS.EOF
                                                           
                    If adoSecondaryRS(9) <> "" Then
                        adoSecondaryRS(12) = adoSecondaryRS(9).value
                        adoSecondaryRS(9) = adoSecondaryRS(9) * val(txtFields(3).Text)
                    Else
                        If adoSecondaryRS(10) <> "" Then
                            adoSecondaryRS(13) = adoSecondaryRS(10).value
                            adoSecondaryRS(10) = adoSecondaryRS(10) * val(txtFields(3).Text)
                        End If
                    End If
                    adoSecondaryRS.MoveNext
                Loop
            Else  'Local Currency
                adoprimaryrs(5) = Combo1.Text
                adoprimaryrs(6) = 1
                adoSecondaryRS.MoveFirst
                Do While Not adoSecondaryRS.EOF
                    If adoSecondaryRS(9) <> "" Then
                        adoSecondaryRS(12) = Null
                    Else
                        If adoSecondaryRS(10) <> "" Then
                            adoSecondaryRS(13) = Null
                        End If
                    End If
                    
                    
                      '13/12/10
                        adoSecondaryRS(12) = adoSecondaryRS(9).value
                        adoSecondaryRS(13) = adoSecondaryRS(10).value
                  
                    
                    Set getd = New Recordset
                    getd.Open "select getdate() as GETDATE ", DB, adOpenStatic, adLockBatchOptimistic
                    Set Rs = New Recordset
                    Rs.Open "select * FROM FA_JVLINE WHERE  DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND VOCNO = " & val(adoprimaryrs("VOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("VOCDT"), "YYYY-MM-DD") & "'and accode='" & adoSecondaryRS(5).value & "' and vocsno = " & val(adoSecondaryRS(4).value) & "", DB, adOpenStatic, adLockBatchOptimistic
                    Set rs1 = New Recordset
                    rs1.Open "select * FROM FA_JVHEAD WHERE DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND VOCNO = " & val(adoprimaryrs("VOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    
                    If Rs.EOF = False Then
                       DB.Execute ("insert into fa_moddellog  values('" & Rs(0) & "','" & Rs(5) & "','" & Format(Rs(3), "yyyy/mm/dd") & "','JV','" & Rs(1) & "','" & Rs(2) & "','" & Rs(4) & "','" & IIf(IsNull(Rs(6)) = True, 0, Rs(6)) & "','" & IIf(IsNull(Rs(7)) = True, 0, Rs(7)) & "','" & IIf(IsNull(Rs(8)) = True, 0, Rs(8)) & "','" & IIf(IsNull(Rs(9)) = True, 0, Rs(9)) & "',Null,Null,'" & IIf(IsNull(Rs(10)) = True, 0, Rs(10)) & "',Null,'" & IIf(IsNull(Rs(17)) = True, 0, Rs(17)) & "','" & IIf(IsNull(Rs(18)) = True, 0, Rs(18)) & "','M','" & Format(getd(0), "yyyy-mm-dd hh:mm:ss.m") & "','" & uid & "')")
                    Else
                '  MODIFIED BY HEMALATHA
                       DB.Execute ("insert into fa_moddellog  values('" & adoSecondaryRS("DIVCODE") & "','" & adoSecondaryRS("AC Code") & "','" & Format(adoSecondaryRS("VOCDT"), "yyyy/mm/dd") & "','JV','" & adoSecondaryRS("tc") & "','" & adoSecondaryRS("VOCNO") & "','" & adoSecondaryRS("VOCSNO") & "','" & IIf(IsNull(adoSecondaryRS("Narration1")) = True, 0, adoSecondaryRS("Narration1")) & "','" & IIf(IsNull(adoSecondaryRS("Narration2")) = True, 0, adoSecondaryRS("Narration2")) & "','" & IIf(IsNull(adoSecondaryRS("Debit")) = True, 0, adoSecondaryRS("Debit")) & "','" & IIf(IsNull(adoSecondaryRS("Credit")) = True, 0, adoSecondaryRS("Credit")) & "',Null,Null,'" & IIf(IsNull(adoSecondaryRS("C.C")) = True, 0, adoSecondaryRS("C.C")) & "',Null,'" & IIf(IsNull(adoSecondaryRS("FDEBIT")) = True, 0, adoSecondaryRS("FDEBIT")) & "','" & IIf(IsNull(adoSecondaryRS("FCREDIT")) = True, 0, adoSecondaryRS("FCREDIT")) & "','M','" & Format(getd(0), "yyyy-mm-dd hh:mm:ss.m") & "','" & uid & "')")
                    End If
                   ''  db.Execute ("DELETE FROM FA_JVLINE WHERE  DIVCODE = '" & adoPrimaryRS("DIVCODE") & "' AND TC = " & Val(adoPrimaryRS("TC")) & " AND vOCNO = " & Val(adoPrimaryRS("vOCNO")) & " AND vocdt = '" & Format(adoPrimaryRS("VOCDT"), "YYYY-MM-DD") & "'and accode='" & adoSecondaryRS(5).Value & "' and vocsno = " & adoSecondaryRS(4).Value & ""), a
                    adoSecondaryRS.MoveNext
                Loop
            End If
        End If
        
        'adoPrimaryRS.UpdateBatch adAffectAllChapters
        'db.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.text, "YYYY-MM-DD") & "' WHERE Divcode = '" & divcode & "' AND Tc = " & tc & " AND Vocno = " & vocNo & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'"
        
        adoSecondaryRS.MoveFirst
        
        J = 1
        
        Do While Not adoSecondaryRS.EOF
            adoSecondaryRS(0).value = Divcode
            adoSecondaryRS(1).value = txtFields(1).Text
            adoSecondaryRS(3).value = MaskEdBox1(0).Text
            adoSecondaryRS(4).value = J
            adoSecondaryRS(2).value = val(val(txtFields(2).Text))
            adoSecondaryRS("docno").value = val(val(txtFields(5).Text))  'Val(TXTFIELDS(5).Text)
            adoSecondaryRS(3).value = Format(adoprimaryrs("vocdt"), "dd-mmm-yyyy")
            
            
            'adoSecondaryRS(6).Value = StrConv(adoSecondaryRS(6).Value, vbProperCase)
            'adoSecondaryRS(7).Value = StrConv(adoSecondaryRS(7).Value, vbProperCase)
            
            adoSecondaryRS(6).value = adoSecondaryRS(6).value
            adoSecondaryRS(7).value = adoSecondaryRS(7).value
            
            
            
            'adoSecondaryRS(12) = 0
            Select Case (Mid(adoSecondaryRS(5), 1, 1))
            Case "C"
                adoSecondaryRS(11) = "C"
            Case "D"
                adoSecondaryRS(11) = "D"
            Case "O"
                adoSecondaryRS(11) = "O"
            Case Else
                adoSecondaryRS(11) = Null
            End Select
            If Not (IsNull(grdDataGrid.Columns(9)) Or grdDataGrid.Columns(9) = "") Then
                '13/12/10
                'If CDbl(grddatagrid.Columns(9)) > 0 Then adoSecondaryRS(12).value = CDbl(grddatagrid.Columns(9)) '13
            ElseIf CDbl(grdDataGrid.Columns(10)) > 0 Then
                'adoSecondaryRS(13) = CDbl(grddatagrid.Columns(10))
            End If
            
            
            
            adoSecondaryRS.MoveNext
            J = J + 1
        Loop
        
        adoprimaryrs.UpdateBatch adAffectAllChapters
        
        adoSecondaryRS.UpdateBatch adAffectAllChapters
       
        TC = adoprimaryrs("tc")
        vocno = adoprimaryrs("VocNo")
        
        'db.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.text, "YYYY-MM-DD") & "' WHERE Divcode = '" & divcode & "' AND Tc = " & tc & " AND Vocno = " & vocNo & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'"
              
        DB.CommitTrans
        
        
        
        

    
        
        
        
        
        
        
        
'test mod

        Dim RsMod As Recordset
        Set RsMod = New Recordset
        RsMod.Open "select * from fa_tcmas where tc=" & txtFields(1).Text & "", DB, adOpenStatic
        
        
        
    If RsMod("flg") = "Y" Then
        
        If (val(Text18.Text) > 0 And val(tdsrefno.Text) > 0) Then
        
            LookUp.clear = True
            qrl = "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE"
            LookUp.query = qrl
            LookUp.Caption = "TDS Type Listing"
            LookUp.DefCol = "TDShead"
            LookUp.ALIGN = "1500,3900"
            LookUp.Show vbModal
         
            If LookUp.Cancel = False Then
                
                If LookUp.Fields(0) = "" Then
                    MsgBox "No Transaction Codes found", vbInformation, head
                    Exit Sub
                End If
                
                  Text4.Text = LookUp.Fields(0)
                  
                  Set rsorg = New Recordset
                  rsorg.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & txtFields(2).Text & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", DB, adOpenDynamic, adLockOptimistic
                  
                  Set rsorg1 = New Recordset
                  rsorg1.Open "select ORG_TYPE from fa_SLMAS where SLCODE = '" & rsorg("ACCODE") & "'", DB, adOpenDynamic, adLockOptimistic
                
                  Set TDSrs = New Recordset
                  TDSrs.Open "select tds_gl_code,glcode,tds_type from fa_tds_gl where tds_type='" & LookUp.Fields(0) & "' and org_type='" & rsorg1(0).value & "' ", DB, adOpenStatic
                                  
                    Set TDSPerRs = New Recordset
                    TDSPerRs.Open " select * from fa_tds where  divcode='" & Divcode & "' and vocno= " & Trim(tdsrefno.Text) & " AND Vocdt = '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' AND SLCODE='" & rsorg("ACCODE") & "'", DB, adOpenDynamic
                                                                                                  
                                                           
                    If TDSPerRs.RecordCount > 0 Then
                        tdsframe2.Top = TdsFrame.Top
                        tdsframe2.Visible = True
                        tdsframe2.ZOrder
                        Text13.Text = IIf(IsNull(TDSPerRs("amount")), 0, TDSPerRs("amount"))
                        Text15.Text = IIf(IsNull(TDSPerRs("tds_rate")), 0, TDSPerRs("tds_rate"))
                        Text14.Text = IIf(IsNull(TDSPerRs("sc_per")), 0, TDSPerRs("sc_per"))
                        Text16.Text = IIf(IsNull(TDSPerRs("edu_cess_per")), 0, TDSPerRs("edu_cess_per"))
                        Text17.Text = IIf(IsNull(TDSPerRs("hs_cess_per")), 0, TDSPerRs("hs_cess_per"))
                        Command2.SetFocus
                        Exit Sub
                    End If
                    
                End If
            End If
            Else
             Call Matching_routine
      End If
      
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
                        
        
     
    If RsMod("flg") = "Y" Then
    '10/10/09
          BUTTON(9).Enabled = False
'TDS
'====
            LookUp.clear = True
            qrl = "select TDS_TYPE,TDS_DESC as TDSHEAD from FA_TDS_TYPE"
            LookUp.query = qrl
            LookUp.Caption = "TDS Type Listing"
            LookUp.DefCol = "TDShead"
            LookUp.ALIGN = "1500,3900"
            LookUp.Show vbModal
         
           If LookUp.Cancel = False Then
                
                If LookUp.Fields(0) = "" Then
                    MsgBox "No Transaction Codes found", vbInformation, head
                    Exit Sub
                End If
                
                  Text4.Text = LookUp.Fields(0)
                
                  Set rsorg = New Recordset
                  ''rsorg.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtfields(1).text & " AND Vocno = " & vocNo & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", DB, adOpenDynamic, adLockOptimistic

                    rsorg.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%') and credit>0", DB, adOpenDynamic, adLockOptimistic
                    
                    Set rsorg1 = New Recordset
                    rsorg1.Open "select ORG_TYPE from fa_SLMAS where SLCODE = '" & rsorg("ACCODE") & "'", DB, adOpenDynamic, adLockOptimistic
                
                    Set TDSrs = New Recordset
                    TDSrs.Open "select tds_gl_code,glcode,tds_type from fa_tds_gl where tds_type='" & LookUp.Fields(0) & "' and org_type='" & rsorg1(0).value & "' ", DB, adOpenStatic
                                
                If TDSrs.RecordCount > 0 Then
                        Set TDSPerRs = New Recordset
                        TDSPerRs.Open " select tds_per,edu_cess_per,hs_cess_per,sc_per from fa_tds_tax_pert where tds_gl_code ='" & TDSrs("tds_gl_code") & "' ", DB, adOpenStatic
                                       
                    If TDSPerRs.RecordCount > 0 Then
                        TdsFrame.Visible = True
                        TdsFrame.ZOrder
                        
                        '10/10/09
                        txttdsamt.Text = debit
                        
                        '''txttdsamt.text = IIf(IsNull(rsorg("credit")), 0, rsorg("credit"))
                                                
                        Text9.Text = TDSPerRs("tds_per")
                        Text10.Text = TDSPerRs("edu_cess_per")
                        Text11.Text = TDSPerRs("hs_cess_per")
                        Text12.Text = TDSPerRs("sc_per")
                        
                        TdsCmd.SetFocus
                        Exit Sub
                    End If
                End If
            End If
            
            
            
     End If
             
        
        MsgBox "Records saved", vbInformation, head
        Screen.MousePointer = 0
        Opt = " "
        Call BUTTON_Click(10)
        Exit Sub
    End If
    
    '-------- Deletion
    If Opt = "del" Then
        If Frame2.Visible = True Then
            MsgBox "Select a Record for Deletion", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        'Cascade deletion: Deletes records both from the master and
        'detail
        If deltype = "1" Then
            okflg = MsgBox("Are you sure ? ", vbYesNo, head)
            If okflg = vbYes Then
                adoSecondaryRS.MoveFirst
                Do While Not adoSecondaryRS.EOF = True
                    Set getd = New Recordset
                    getd.Open "select getdate() as GETDATE ", DB, adOpenStatic, adLockBatchOptimistic
                    Set Rs = New Recordset
                    Rs.Open "select * FROM FA_JVLINE WHERE  DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND VOCNO = " & val(adoprimaryrs("VOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("VOCDT"), "YYYY-MM-DD") & "'and accode='" & adoSecondaryRS(5).value & "' and vocsno = " & adoSecondaryRS(4).value & "", DB, adOpenStatic, adLockBatchOptimistic
                    Set rs1 = New Recordset
                    rs1.Open "select * FROM FA_JVHEAD WHERE DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND VOCNO = " & val(adoprimaryrs("VOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    DB.Execute ("insert into fa_moddellog  values('" & Rs(0) & "','" & Rs(5) & "','" & Format(Rs(3), "yyyy/mm/dd") & "','JV','" & Rs(1) & "','" & Rs(2) & "','" & Rs(4) & "','" & IIf(IsNull(Rs(6)) = True, 0, Rs(6)) & "','" & IIf(IsNull(Rs(7)) = True, 0, Rs(7)) & "','" & IIf(IsNull(Rs(8)) = True, 0, Rs(8)) & "','" & IIf(IsNull(Rs(9)) = True, 0, Rs(9)) & "',Null,Null,'" & IIf(IsNull(Rs(10)) = True, 0, Rs(10)) & "',Null,'" & IIf(IsNull(Rs(17)) = True, 0, Rs(17)) & "','" & IIf(IsNull(Rs(18)) = True, 0, Rs(18)) & "','D','" & Format(getd(0), "yyyy-mm-dd hh:mm:ss.m") & "','" & uid & "')")
                    DB.Execute ("DELETE FROM FA_JVLINE WHERE  DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND vOCNO = " & val(adoprimaryrs("vOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("VOCDT"), "YYYY-MM-DD") & "'and accode='" & adoSecondaryRS(5).value & "' and vocsno = " & adoSecondaryRS(4).value & ""), a
                    adoSecondaryRS.MoveNext
                Loop
                
                DB.Execute ("DELETE FROM FA_JVHEAD WHERE DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND vOCNO = " & val(adoprimaryrs("vOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' "), a
                DB.Execute ("DELETE FROM FA_TDS WHERE DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND  vOCNO = " & val(adoprimaryrs("vOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' ") ', a
                DB.Execute ("DELETE FROM FA_service_tax WHERE DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND  vOCNO = " & val(adoprimaryrs("vOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' ") ', a
                
                
                
                DB.CommitTrans
                MsgBox "Record(s) Deleted Successfully", vbOKOnly, head
                Screen.MousePointer = 0
                Opt = " "
                Call BUTTON_Click(10)
                Exit Sub
            Else
                Call BUTTON_Click(10)
            End If
        Else
            'Line deletion
            If Not val(credit.Text) = val(debit.Text) Then
                MsgBox " Both debit total and credit total should tally", vbCritical, head
                Call setf
                Screen.MousePointer = 0
                Exit Sub
            End If
            DB.CommitTrans
            MsgBox " Transaction complete", vbInformation, head
        End If
    End If
    DataCombo1.Visible = False
    delmodoklabel.Visible = False
    delmodok.Visible = False
    Call TXTCLR
    Call txtclear1
    Call NEWFORM3(BUTTON, GSNO)
    Call disablcontls
            
Case 10

    SSTab2.Visible = False
   'CANCEL
    gflg = 0
    intTc = 0
'    lblctrl.Visible = True
    Timer1.Enabled = True
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
        Opt = ""
    Case "add"
        'To undo addition
        On Error Resume Next
        txtFields(1).Text = ""
        MaskEdBox1(0).Text = "__/__/____"
        TCN = ""
        adoSecondaryRS.Requery
        stbar.Panels(2).Text = ""
        grdDataGrid.Columns(0).Visible = False
        grdDataGrid.Columns(1).Visible = False
        grdDataGrid.Columns(2).Visible = False
        grdDataGrid.Columns(3).Visible = False
        grdDataGrid.Columns(4).Visible = False
        grdDataGrid.Columns(12).Visible = False
        grdDataGrid.Columns(13).Visible = False
        DB.RollbackTrans
        MaskEdBox1(0).Enabled = False
        DTPicker1.Enabled = False
        BUTTON(4).Enabled = True
        Screen.MousePointer = 0
        debit.Text = ""
        credit.Text = ""
        Opt = ""
    Case "del"
        'To undo deletion
        DB.RollbackTrans
        Opt = " "
   End Select
    Opt = " "
    'To return default settings - i.e query mode
    Call TXTCLR
    Call txtclear1
    
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",c.cchead ""Description"",t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t,FA_CCMAS C where c.cccode =* t.cccode AND 1 = 2 Order by t.vocsno", DB
    Set grdDataGrid.DataSource = adoSecondaryRS
    grdDataGrid.Columns(0).Visible = False
    grdDataGrid.Columns(1).Visible = False
    grdDataGrid.Columns(2).Visible = False
    grdDataGrid.Columns(3).Visible = False
    grdDataGrid.Columns(4).Visible = False
    grdDataGrid.Columns(6).Width = 2325
    grdDataGrid.Columns(7).Width = 2055.118
    
    grdDataGrid.Columns(8).Width = 540.2835
    
    grdDataGrid.Columns(8).Visible = False
    
    grdDataGrid.Columns(9).Width = 1305.071
    grdDataGrid.Columns(9).Visible = False
    grdDataGrid.Columns(10).Width = 1305.071
    grdDataGrid.Columns(12).Visible = False
    grdDataGrid.Columns(13).Visible = False
    grdDataGrid.Columns(14).Visible = False
    grdDataGrid.Columns(15).Visible = False
    grdDataGrid.Columns(0).Width = 0
    grdDataGrid.Columns(9).Alignment = dbgRight
    grdDataGrid.Columns(10).Alignment = dbgRight
    grdDataGrid.Columns(10).NumberFormat = "#0.00"
    grdDataGrid.Columns(11).NumberFormat = "#0.00"
    grdDataGrid.ScrollBars = dbgAutomatic
    Call Show_Rec1("L")
    
    credit.Visible = False
    debit.Visible = False
    DataCombo1.Visible = False
    delmodoklabel.Visible = False
    delmodok.Visible = False
    Label4.Visible = False
    DataGrid1.Visible = False
    Frame2.Visible = False
    Frame1.Visible = True
    Frame1.ZOrder
    Frame3.Visible = False
    grdDataGrid.Visible = True
    'calling cancl procedure from module
    Screen.MousePointer = 0
    Opt = " "
    Call cancl(BUTTON, GSNO)
    Call disablcontls

Case 11
   'EXIT
    Unload Me
Case 12
    Repindex = 20
    repform2.Show
End Select
Exit Sub
er1:
If Err = -2147467259 Then
   If Mid$(Err.Description, InStr(Err.Description, "ORA-") + 4, 5) = "00054" Then
      Opt = "add"
      Screen.MousePointer = 0
      MsgBox "Some other user is saving record for this TC!" & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head
    End If
Else
   MsgBox Err.Description
End If
Opt = tmp

   On Error GoTo 0
   Exit Sub

BUTTON_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form JURNL"
End Sub

Private Sub Combo1_Click()
'   by hemalatha
If Opt = "add" Or Opt = "mod" Then
    If Combo1.ListIndex > 0 Then
        Label5.Visible = True
        txtFields(3).Visible = True
        Set Rs = New Recordset
        Rs.Open "select convrate from fa_currate where currcode = '" & Combo1.Text & "' and currdate = '" & Format(pdate, "yyyy-mm-dd") & "'", DB
        txtFields(4).Text = Combo1.Text  ' Currency Code
        txtFields(3).Text = Rs(0)        ' Currency Rate
    Else
        txtFields(4).Text = Combo1.Text
        Label5.Visible = False
        txtFields(3).Visible = False
        txtFields(3).Text = ""
    End If
End If
End Sub
Private Sub Command1_Click()
grdDataGrid.Columns(8).Text = ""
grdDataGrid.Col = 9
grdDataGrid.SetFocus
Command1.Visible = False
Frame3.Visible = False
End Sub

Private Sub Command2_Click()
tdsframe2.Visible = False
Call FAupdatetds
End Sub

Private Sub Command3_Click()
Dim Rs As Recordset
Dim prty As String
Select Case Ksldesc1.listfield1

Case "PRTYTYP"
    txtgl.Visible = False
    Ksldesc1.conn = connectstring
    If GL = "Y" Then
        'Label3.Caption = "General Ledger Listing"
        'Ksldesc1.table = "fa_glmas where  glcode not in (select glcode from fa_prty) and glcode not in (select glcode from fa_tcmas where tc between " & fcash & " and " & tcash & " or tc between " & fbank & " and " & tbank & ")"
        'ksldesc1.table = "fa_glmas where  glcode not in (select ISNULL(glcode,0) from fa_prty) and glcode not in (select glcode from fa_tcmas where tc between " & fcash & " and " & tcash & ")"
        'ksldesc1.listfield1 = "glcode"
        'ksldesc1.listfield2 = "glhead"
        'ksldesc1.listfield1 = "glcode"
        'ksldesc1.listfield2 = "glhead"
        'Frame3.Visible = True
        'ksldesc1.ZOrder
        'Frame3.ZOrder
        'ksldesc1.SetFocus
        
        LookUp.clear = True
        LookUp.Caption = "General Ledger Listing"
        LookUp.clear = True
        LookUp.query = "select glcode,glhead from fa_glmas where  glcode not in (select glcode from fa_prty) and glcode not in (select glcode from fa_tcmas where tc between " & fcash & " and " & tcash & " or tc between " & fbank & " and " & tbank & ")"
        LookUp.ALIGN = "1500,3500"
        LookUp.DefCol = "glhead"
        LookUp.Show vbModal
        'MsgBox Lookup.Fields(1)
        If LookUp.Cancel = False Then
                'Cancel = True
                'KeyAscii = 0
                grdDataGrid.Refresh
                grdDataGrid.Columns(5).Text = ""
                grdDataGrid.Columns(5).Text = LookUp.Fields(0)
                
                'grddatagrid.Columns(6).text = ""
                
                
                If Opt = "add" Or Opt = "mod" Then
                    Set Rs = New Recordset
                    Rs.Open "select c.cccode,c.cchead from FA_CCGLMAS G,FA_CCMAS C WHERE G.GLCODE = '" & grdDataGrid.Columns(5) & "' AND G.CCCODE = C.CCCODE ", DB
                    If Rs.RecordCount <= 0 Then
                        grdDataGrid.Columns(8).Text = ""
                    End If
                    
                    
                    
                    grdDataGrid.Columns(0) = Divcode
                    grdDataGrid.Columns(1).value = adoprimaryrs("tc").value
                    grdDataGrid.Columns(3).value = Format(MaskEdBox1(0).Text, "dd-mmm-yyyy")
                    If Ksldesc1.listfield1 = "slcode" Then grdDataGrid.Columns(11).Text = Mid$(grdDataGrid.Columns(5).Text, 1, 1)
                    
                    If adoSecondaryRS.AbsolutePosition > 1 Then
                        grdDataGrid.Columns(5).Text = LookUp.Fields(0)
                        'grddatagrid.Columns(6).text = ""
                        grdDataGrid.Col = 6
                    Else
                       ' grdDataGrid.Columns(5).text = ""
                       ' grdDataGrid.Columns(5).text = Lookup.Fields(0)
                       
                       
                       ' grddatagrid.Columns(6).text = ""
                       
                        grdDataGrid.Col = 6
                    End If
                    'Lookup.clear = True
                    grdDataGrid.SetFocus
                    
                ElseIf Opt = "mod" Then
                    If Ksldesc1.listfield1 = "slcode" Then
                        grdDataGrid.Columns(11).Text = Mid$(grdDataGrid.Columns(5).Text, 1, 1)
                        Set Rs = New Recordset
                        Rs.Open "update FA_JVLINE set crdrflg = '" & grdDataGrid.Columns(11).Text & "',accode = '" & grdDataGrid.Columns(5).Text & "'  where divcode = '" & adoprimaryrs("divcode") & "' and tc = " & val(adoprimaryrs("tc")) & " and vocno = " & val(adoprimaryrs("vocno")) & " and vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' and vocsno = " & val(grdDataGrid.Columns(4).value), DB, adOpenStatic, adLockBatchOptimistic
                    Else
                        Set Rs = New Recordset
                        Rs.Open "update FA_JVLINE set crdrflg = null,accode = '" & grdDataGrid.Columns(5).Text & "'  where divcode = '" & adoprimaryrs("divcode") & "' and tc = " & val(adoprimaryrs("tc")) & " and vocno = " & val(adoprimaryrs("vocno")) & " and vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' and vocsno = " & val(grdDataGrid.Columns(4).value), DB, adOpenStatic, adLockBatchOptimistic
                    End If
                End If
                
                If Ksldesc1.listfield1 = "slcode" Then
                    Dim rscity As Recordset
                    Set rscity = New Recordset
                    rscity.Open "select city from fa_slmas where slcode='" & Trim(LookUp.Fields(0)) & "'", DB
                    If rscity.RecordCount <> 0 Then
                        stbar.Panels(2).Text = LookUp.Fields(1) & "," & rscity(0)
                    Else
                        stbar.Panels(2).Text = LookUp.Fields(1)
                    End If
                Else
                    stbar.Panels(2).Text = LookUp.Fields(1)
                End If
        
        Else
                LookUp.clear = True
                'grdDataGrid.Columns(5).text = ""
                grdDataGrid.Col = 5
                grdDataGrid.SetFocus
                Exit Sub
        End If
        grdDataGrid.Columns(8).Text = ""
        'stbar.Panels(2).text = "Please Select a GLcode"
    Else
        Label3.Caption = "Sub Ledger Listing"
        prty = Ksldesc1.Code
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "FA_SLMAS where prtytyp = '" & prty & "'"
        Ksldesc1.listfield1 = "slcode"
        Ksldesc1.listfield2 = "slname"
        Ksldesc1.conn = connectstring
        Ksldesc1.listfield1 = "slcode"
        Ksldesc1.listfield2 = "slname"
        stbar.Panels(2).Text = "Please Select a Vendor"
    End If
    Exit Sub
    
Case "slcode", "glcode"
    grdDataGrid.Columns(5).Text = Ksldesc1.Code
    ' by hemalatha
    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "select c.cccode,c.cchead from FA_CCGLMAS G,FA_CCMAS C WHERE G.GLCODE = '" & grdDataGrid.Columns(5) & "' AND G.CCCODE = C.CCCODE ", DB
        If Rs.RecordCount <= 0 Then
            grdDataGrid.Columns(8).Text = ""
        End If
        grdDataGrid.Columns(0) = Divcode
        grdDataGrid.Columns(1).value = adoprimaryrs("tc").value
        grdDataGrid.Columns(3).value = Format(MaskEdBox1(0).Text, "dd-mmm-yyyy")
        If Ksldesc1.listfield1 = "slcode" Then grdDataGrid.Columns(11).Text = Mid$(grdDataGrid.Columns(5).Text, 1, 1)
        If adoSecondaryRS.AbsolutePosition > 1 Then
            grdDataGrid.Columns(5).Text = Ksldesc1.Code
            grdDataGrid.Col = 6
        Else
            grdDataGrid.Col = 6
        End If
        grdDataGrid.SetFocus
        
    ElseIf Opt = "mod" Then
        If Ksldesc1.listfield1 = "slcode" Then
            grdDataGrid.Columns(11).Text = Mid$(grdDataGrid.Columns(5).Text, 1, 1)
            Set Rs = New Recordset
            Rs.Open "update FA_JVLINE set crdrflg = '" & grdDataGrid.Columns(11).Text & "',accode = '" & grdDataGrid.Columns(5).Text & "'  where divcode = '" & adoprimaryrs("divcode") & "' and tc = " & val(adoprimaryrs("tc")) & " and vocno = " & val(adoprimaryrs("vocno")) & " and vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' and vocsno = " & val(grdDataGrid.Columns(4).value), DB, adOpenStatic, adLockBatchOptimistic
        Else
            Set Rs = New Recordset
            Rs.Open "update FA_JVLINE set crdrflg = null,accode = '" & grdDataGrid.Columns(5).Text & "'  where divcode = '" & adoprimaryrs("divcode") & "' and tc = " & val(adoprimaryrs("tc")) & " and vocno = " & val(adoprimaryrs("vocno")) & " and vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' and vocsno = " & val(grdDataGrid.Columns(4).value), DB, adOpenStatic, adLockBatchOptimistic
        End If
    End If
    
    If Ksldesc1.listfield1 = "slcode" Then
'        Dim rscity As Recordset
        Set rscity = New Recordset
        rscity.Open "select city from fa_slmas where slcode='" & Trim(Ksldesc1.Code) & "'", DB
        If rscity.RecordCount <> 0 Then
            stbar.Panels(2).Text = Ksldesc1.Description & "," & rscity(0)
        Else
            stbar.Panels(2).Text = Ksldesc1.Description
        End If
    Else
        stbar.Panels(2).Text = Ksldesc1.Description
    End If



Case "C.CCCODE"
    Command1.Visible = False
    grdDataGrid.Columns(8).Text = Ksldesc1.Code
    f$ = Ksldesc1.Code
    Dim rscc As New Recordset
    Set rscc = New Recordset
    rscc.Open "SELECT cccode,cchead FROM fa_ccmas WHERE cccode ='" & f$ & "'", DB
    stbar.Panels(2).Text = Ksldesc1.Code & " - " & Ksldesc1.Description
    If Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "update FA_JVLINE set cccode = '" & grdDataGrid.Columns(8).Text & "' where divcode = '" & adoprimaryrs("divcode") & "' and tc = " & val(adoprimaryrs("tc")) & " and vocno = " & val(adoprimaryrs("vocno")) & " and vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' and vocsno = " & val(grdDataGrid.Columns(4).value), DB, adOpenStatic, adLockBatchOptimistic
    End If
    grdDataGrid.Col = 9
    grdDataGrid.SetFocus
    grdDataGrid.EditActive = True
    
    
    

Case "cast(tc as varchar)"
    If Ksldesc1.Code = "" Then
        MsgBox "No Transaction Codes found", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    End If
    TC = Ksldesc1.Code
    txtFields(1).Text = CInt(TC)
    adoprimaryrs(1) = CInt(TC)
    TCN.Text = Ksldesc1.Description
    Call ENABLCONTLS
    txtFields(2).Locked = True
    vocno = newVocNo(adoprimaryrs(1).value, MaskEdBox1(0).Text)
    docNo = newdocno(adoprimaryrs(1).value, MaskEdBox1(0).Text)
    txtFields(5).Text = val(docNo)
    txtFields(2).Text = val(vocno)
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    stbar.Panels(2).Text = "Please select a date"
    
    'MaskEdBox1(0).SetFocus
    
    Set Rs = New Recordset
    Rs.Open "select drnote,crnote from fa_param", DB

Case "cast(TC as varchar)"
    Frame3.Visible = False
    Text1.Text = Ksldesc1.Code
    Text2.Text = Ksldesc1.Description
End Select
Frame3.Visible = False
End Sub

Private Sub Command4_Click()
Select Case Label3.Caption
Case "Cost Centre Listing"
    grdDataGrid.Col = grdDataGrid.Col + 1
    grdDataGrid.EditActive = True
    grdDataGrid.SetFocus
    Command1.Visible = False
    Frame3.Visible = False
    Exit Sub

Case "TC Listing"
    If Trim(TCN) = "" Then
        Call BUTTON_Click(10)
'        On Error Resume Next
'        TCN.SetFocus
    Else
        On Error Resume Next
        TCN.SetFocus
    End If

Case "General Ledger Listing"
    grdDataGrid.Col = 5
    grdDataGrid.SetFocus
    grdDataGrid.EditActive = True

Case "Sub Ledger Listing"
    Frame3.Visible = True
    Frame3.ZOrder
    GL = "N"
    Label3.Caption = "Party Type Listing"
    Ksldesc1.conn = connectstring
    Ksldesc1.Table = "FA_PRTY"
    Ksldesc1.listfield1 = "PRTYTYP"
    Ksldesc1.listfield2 = "PRTYHEAD"
    txtgl.Visible = True
    txtgl.Text = "GL ACCOUNT"
    Ksldesc1.SetFocus
    Command3.Default = True
    Exit Sub

Case "Party Type Listing"
    grdDataGrid.Col = 5
    grdDataGrid.SetFocus
    grdDataGrid.EditActive = True

Case "TC  Listing "
    txtqry.SetFocus
End Select
Frame3.Visible = False
End Sub

Private Sub credit_GotFocus()


   On Error GoTo credit_GotFocus_Error

'MaskEdBox1(0).SetFocus

   On Error GoTo 0
   Exit Sub

credit_GotFocus_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure credit_GotFocus of Form JURNL"
End Sub

Private Sub DataGrid1_DblClick()
Dim c As String
If Opt = "mod" Or Opt = "del" Then
    a = DataGrid1.Columns(2).Text
    B = DataGrid1.Columns(1)
    
    
          'Call EntryLocking(CStr(CDate(Trim(DataGrid1.Columns(4).Text))))

            If fa_flag = "Y" Then
                Call BUTTON_Click(10)
                Screen.MousePointer = 0
                Exit Sub
            End If

    
    
    Call delmodproc(val(a), val(B))
    Frame2.Visible = False
End If
End Sub

Private Sub delmodok_Click()
On Error Resume Next
If Not DataCombo1.Text = "" Then
  a = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "          ") - 1)
  B = Mid(Mid$(DataCombo1.Text, InStr(DataCombo1.Text, "          ") + 10), 1, 9)
  
  
  
          Call EntryLocking(CStr(Right(Trim(DataCombo1.Text), 10)))

            If fa_flag = "Y" Then
                Call BUTTON_Click(10)
                Screen.MousePointer = 0
                Exit Sub
            End If
    
  Call delmodproc(val(B), val(a))
  
End If
End Sub
Private Sub DTPicker1_CloseUp()


   On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1(0).Text = DTPicker1.value
If CDate(MaskEdBox1(0).Text) > pdate Then
    MsgBox ("Journal date should not be greater than processing date"), vbInformation, head
    DTPicker1.maxdate = pdate
    DTPicker1.MinDate = mfdate
    
    'MaskEdBox1(0).SetFocus
    
    MaskEdBox1(0).Text = pdate
End If

   On Error GoTo 0
   Exit Sub

DTPicker1_CloseUp_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form JURNL", vbInformation, head

End Sub
Private Sub DTPicker1_LostFocus()



   On Error GoTo DTPicker1_LostFocus_Error

If MaskEdBox1(0).Enabled Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > Date Then
        MsgBox ("Journal Date should not be greater than processing date"), vbInformation, head
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) < mfdate Then
        MsgBox "Voucher date should fall within Processing Month!", vbCritical, head
        MaskEdBox1(0).SetFocus
    End If
End If


          Call EntryLocking(CStr(IsDate(MaskEdBox1(0).Text)))
          
            If fa_flag = "Y" Then
                'Call BUTTON_Click(10)
                MaskEdBox1(0).Text = pdate
                MaskEdBox1(0).SetFocus
                Screen.MousePointer = 0
                'Exit Sub
            End If





   On Error GoTo 0
   Exit Sub

DTPicker1_LostFocus_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_LostFocus of Form JURNL", vbInformation, head

End Sub

Private Sub FooterCmd_Click()
On Error GoTo Errh

    repFoot = userFooter.SelectedStr
    Call BUTTON_Click(4)
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : FooterCmd_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: Requisition"


End Sub

Private Sub FooterNo_Click()
On Error GoTo Errh

    UserFooterFrame.Visible = False
    repFoot = ""
    BUTTON_Click (4)
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : FooterNo_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: Requisition"


End Sub

Private Sub FooterYes_Click()
On Error GoTo Errh

    UserFooterFrame.Visible = True
    UserFooterFrame.Visible = True
    UserFooterFrame.ZOrder
    userFooter.Load ("P")
      
    Exit Sub
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : FooterYes_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: Requisition"

End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)

   On Error GoTo Form_KeyUp_Error

    Call Save(KeyCode, Shift)

   On Error GoTo 0
   Exit Sub

Form_KeyUp_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyUp of Form JURNL", vbInformation, head
End Sub







Private Sub Form_Load()

   On Error GoTo Form_Load_Error

    desc.Caption = "Query"
    DATLAB.Caption = pdate
    
    stbar.Panels(1).Text = sbmsg
    Opt = "qry"
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
    credit.Visible = False
    debit.Visible = False
    delmodok.Visible = False
    delmodoklabel.Visible = False
    DataCombo1.Visible = False
    DTPicker1.Enabled = False
    MaskEdBox1(0).Enabled = False
    credit.DataField = "credit"
    debit.DataField = "debit"
    DATLAB.Caption = pdate
    Dim MON1 As Integer
    Dim DATEA As String
    MON1 = DateDiff("M", yfdate, yldate) + 1
    DATEA = yfdate
    For i = 1 To MON1
        List1.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
        DATEA = DateAdd("M", 1, DATEA)
    Next i
    Call TXTCLR
    Call txtclear1
    Call NEWFORM3(BUTTON, GSNO)
    Call qrymode(BUTTON, False)
    
    gflg = 0
    
    
    TabStrip1.Tabs.clear
    grdDataGrid.Caption = "Journal"
    
    
    
    
    
    
    
    Set adoSecondaryRS = New Recordset
'
'    If Repindex = 201 Then
'        '''adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",c.cchead ""Description"",t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t LEFT OUTER JOIN FA_CCMAS C on  c.cccode = t.cccode AND T.TC=(SELECT DRNOTE FROM FA_PARAM) AND 1 = 2 Order by t.vocsno", DB, adOpenStatic, adLockBatchOptimistic
'        adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",(CASE WHEN CCCODE IS NOT NULL THEN (SELECT CCHEAD FROM FA_CCMAS WHERE CCCODE=CCCODE) Else NULL END) Description,t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t WHERE T.TC=(SELECT DRNOTE FROM FA_PARAM) AND 1 = 2 Order by t.vocsno", DB, adOpenStatic, adLockBatchOptimistic
'    Else
'        '''adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",c.cchead ""Description"",t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t LEFT OUTER JOIN FA_CCMAS C on  c.cccode = t.cccode AND T.TC=(SELECT CRNOTE FROM FA_PARAM) AND 1 = 2 Order by t.vocsno", DB, adOpenStatic, adLockBatchOptimistic
'        adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",(CASE WHEN CCCODE IS NOT NULL THEN (SELECT CCHEAD FROM FA_CCMAS WHERE CCCODE=CCCODE) Else NULL END) Description,t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t WHERE T.TC=(SELECT CRNOTE FROM FA_PARAM) AND 1 = 2 Order by t.vocsno", DB, adOpenStatic, adLockBatchOptimistic
'    End If
    
     adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",(CASE WHEN CCCODE IS NOT NULL THEN (SELECT CCHEAD FROM FA_CCMAS WHERE CCCODE=CCCODE) Else NULL END) Description,t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t WHERE (T.TC=(SELECT DRNOTE FROM FA_PARAM) OR T.TC=(SELECT CRNOTE FROM FA_PARAM))  AND 1 = 2 Order by t.vocsno", DB, adOpenStatic, adLockBatchOptimistic
    
    
    
    
    Set grdDataGrid.DataSource = adoSecondaryRS
    grdDataGrid.Columns(0).Visible = False
    grdDataGrid.Columns(1).Visible = False
    grdDataGrid.Columns(2).Visible = False
    grdDataGrid.Columns(3).Visible = False
    grdDataGrid.Columns(4).Visible = False
    grdDataGrid.Columns(6).Width = 2325
    
    
    grdDataGrid.Columns(7).Width = 2055.118
    
    grdDataGrid.Columns(8).Width = 540.2835
    
    grdDataGrid.Columns(8).Visible = False
    
    grdDataGrid.Columns(9).Width = 1305.071
    grdDataGrid.Columns(9).Visible = False
    grdDataGrid.Columns(10).Width = 1305.071
    grdDataGrid.Columns(12).Visible = False
    grdDataGrid.Columns(13).Visible = False
    grdDataGrid.Columns(14).Visible = False
    grdDataGrid.Columns(15).Visible = False
    grdDataGrid.Columns(0).Width = 0
    grdDataGrid.Columns(9).Alignment = dbgRight
    grdDataGrid.Columns(10).Alignment = dbgRight
    grdDataGrid.Columns(10).NumberFormat = "#0.00"
    grdDataGrid.Columns(11).NumberFormat = "#0.00"
    grdDataGrid.ScrollBars = dbgAutomatic
    Call disablcontls
    If QryStat Then
        Call Find_lookupFA(val(QSLCode), val(QSLCode2), CDate(QSLCode3))
        For i = 0 To 12
         If i <> 11 Then BUTTON(i).Enabled = False
        Next i
    Else
        Set RsNav = New Recordset
        '''RsNav.Open "SELECT * FROM Fa_JvHead where appdt  is null  and divcode='" & Divcode & "'  and vocdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'  order by entdate ", db, adOpenDynamic, adLockOptimistic
        
        'If Repindex = 201 Then
         '   RsNav.Open "SELECT * FROM Fa_JvHead where  divcode='" & Divcode & "'  and vocdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' AND TC=(SELECT DRNOTE FROM FA_PARAM) order by entdate ", DB, adOpenDynamic, adLockOptimistic
          ' Else
           ' RsNav.Open "SELECT * FROM Fa_JvHead where  divcode='" & Divcode & "'  and vocdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' AND TC=(SELECT CRNOTE FROM FA_PARAM) order by entdate ", DB, adOpenDynamic, adLockOptimistic
        'End If
        
        RsNav.Open "SELECT * FROM Fa_JvHead where  divcode='" & Divcode & "'  and vocdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' AND (TC=(SELECT DRNOTE FROM FA_PARAM)  OR TC=(SELECT CRNOTE FROM FA_PARAM)) order by entdate ", DB, adOpenDynamic, adLockOptimistic
        
        Call Show_Rec1("L")
        If RsNav.RecordCount > 0 Then RsNav.MoveLast
    End If

   On Error GoTo 0
   Exit Sub

Form_Load_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form JURNL", vbInformation, head
End Sub
Private Sub Form_Unload(Cancel As Integer)

   On Error GoTo Form_Unload_Error

    Screen.MousePointer = vbDefault

   On Error GoTo 0
   Exit Sub

Form_Unload_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form JURNL", vbInformation, head
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)


   On Error GoTo adoPrimaryRS_MoveComplete_Error

If Opt = " " Or Opt = "qry" Then
    If Not (adoprimaryrs.BOF Or adoprimaryrs.EOF) Then
        TCN.Text = adoprimaryrs("tchead")
        stbar.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
    End If
End If
If Opt = " " Or Opt = "" Or Opt = "qry" Then
    Set Rs = New Recordset
    Rs.Open "select currcode from fa_param", DB
    If Rs.RecordCount > 0 And Not (adoprimaryrs.EOF) And Not (adoprimaryrs.BOF) Then
        If Rs(0) = adoprimaryrs("currcode") Then
            Combo1.Visible = False
            txtFields(4).Visible = True
            Label5.Visible = False
            txtFields(3).Visible = False
        Else
            Combo1.Visible = False
            txtFields(4).Visible = True
            txtFields(3).Visible = True
            Label5.Visible = True
        End If
        On Error Resume Next
        debit.Text = adoprimaryrs("debit")
        credit.Text = adoprimaryrs("credit")
    End If
End If

   On Error GoTo 0
   Exit Sub

adoPrimaryRS_MoveComplete_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form JURNL", vbInformation, head
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)


On Error GoTo grdDataGrid_AfterColEdit_Error

If ColIndex = 10 Or ColIndex = 9 Then
    
    Topt = Opt
    Opt = ""
    
    rMark = adoSecondaryRS.AbsolutePosition
    adoSecondaryRS.MoveFirst
    debit.Text = 0
    credit.Text = 0
    
    Do While Not adoSecondaryRS.EOF
        debit.Text = debit.Text + IIf(IsNull(adoSecondaryRS(9).value) = True Or adoSecondaryRS(9).value = "", 0, adoSecondaryRS(9).value)
        credit.Text = credit.Text + IIf(IsNull(adoSecondaryRS(10).value) = True Or adoSecondaryRS(10).value = "", 0, adoSecondaryRS(10).value)
        adoSecondaryRS.MoveNext
    Loop
    
    adoSecondaryRS.AbsolutePosition = rMark
    Opt = Topt
End If

Dim Rs As Recordset

If (ColIndex = 6 Or ColIndex = 7 Or ColIndex = 8) And (Opt = "add" Or Opt = "mod") Then
    grdDataGrid.Columns(ColIndex).Text = grdDataGrid.Columns(ColIndex).Text 'UCase(grdDataGrid.Columns(ColIndex).text)
End If


If (ColIndex = 6) And (Opt = "add" Or Opt = "mod") Then
     'grdDataGrid.Columns(ColIndex).text = UCase(grdDataGrid.Columns(ColIndex).text)

   If grdDataGrid.Row = 0 Then
        grdDataGrid.Columns(ColIndex).Text = grdDataGrid.Columns(ColIndex).Text 'UCase(grddatagrid.Columns(ColIndex).text)
        narr1 = grdDataGrid.Columns(ColIndex).Text
        
    ElseIf grdDataGrid.Row > 0 Then
        'grddatagrid.Columns(ColIndex).text = narr1
         grdDataGrid.Columns(ColIndex).Text = IIf(grdDataGrid.Columns(ColIndex).Text = "", narr1, grdDataGrid.Columns(ColIndex).Text)
         End If

End If


If (ColIndex = 7 Or ColIndex = 8) And (Opt = "add" Or Opt = "mod") Then
   '' 'grdDataGrid.Columns(ColIndex).text = UCase(grdDataGrid.Columns(ColIndex).text)
   
'    grdDataGrid.Columns(7).text = UCase(grdDataGrid.Columns(7).text)
   
   
   If grdDataGrid.Row = 0 Then
        grdDataGrid.Columns(7).Text = grdDataGrid.Columns(7).Text 'UCase(grddatagrid.Columns(7).text)
        narr2 = grdDataGrid.Columns(7).Text
    ElseIf grdDataGrid.Row > 0 Then
    
        If grdDataGrid.Columns(7).Text = "" Then
            grdDataGrid.Columns(7).Text = narr2
        End If
        
        
   End If
    
End If



If (ColIndex = 9 Or ColIndex = 10) And (Opt = "add" Or Opt = "mod" Or Opt = "del") Then

'tds
'---------

'    If ColIndex = 9 Then
'        If grddatagrid.Row = 0 Then
'           tds1 = grddatagrid.Columns(ColIndex).text
'        ElseIf grddatagrid.Row > 0 Then
'           Set rstds1 = New Recordset
'           rstds1.Open "select EFF_DATE,TDS_GL_CODE,TDS_PER,EDU_CESS_PER,HS_CESS_PER  from FA_TDS_TAX_PERT  where TDS_GL_CODE =(select TDS_GL_CODE from fa_TDS_GL  WHERE  glcode = ('" & grddatagrid.Columns(5).text & "'))", db
'               If Not rstds1.EOF Then
'                 grddatagrid.Columns(ColIndex + 1).text = (tds1 * (rstds1(2).Value / 100))
'                 'grddatagrid.Columns(ColIndex + 1).text = (tds1 * 2)
'               End If
'        End If
'     End If
'---------
          

    If val(grdDataGrid.Columns(ColIndex).Text) < 0 Then
        MsgBox "Amount cannot be negative ", vbCritical, head
        Exit Sub
    Else
        Call GrdDatagrid_KeyDown(9, 0)
    End If
End If




'180190

If ColIndex = 5 Then

        Set check = New Recordset
        Set Check1 = New Recordset
        Dim yy
        Dim bal
        
        
        
        check.Open "select slcode,SLNAME from fa_slmas where slcode in('" & grdDataGrid.Columns(5).Text & "')", DB
                
        
        Check1.Open "select glcode,glhead from fa_glmas where  glcode = ('" & grdDataGrid.Columns(5).Text & "') and glcode not in (select glcode from fa_prty) and glcode <> (select glcode from fa_tcmas where fa_tcmas.tc = " & txtFields(0).Text & ")  AND glcode NOT IN (SELECT DISTINCT glcode FROM fa_tcmas WHERE ISNULL(divcode,'" & Divcode & "') <> '" & Divcode & "')", DB
        
        
         If check.RecordCount = 0 And Check1.RecordCount = 0 Then
         
            Set rss1 = New Recordset
            rss1.Open "select count(*) from fa_prty ", DB, adOpenStatic, adLockBatchOptimistic
                
              Set rss2 = New Recordset
              If rss1(0) = 1 Then
                    rss2.Open "select prtytyp,prtyhead,crdrflg,glcode from fa_prty  order by prtytyp", DB
                    Screen.MousePointer = 0
              Else
                    
                 Screen.MousePointer = 0
              End If
              
          Else
                  If check.RecordCount = 0 Then
                        
'                        yy = Check1(0)
'                        bal = CURBAL(yy)
'                        If bal >= 0 Then
'                            yyy = INF(Abs(bal), 2) & " Dr."
'                        Else
'                            yyy = INF(Abs(bal), 2) & " Cr."
'                        End If
'
                        
                        stbar.Panels(2).Text = Padr(Check1(1), 30, " ") & Space(10) & yyy
                  Else
                        
'                        yy = check(0)
'                        bal = CURBAL(yy)
'                        If bal >= 0 Then
'                            yyy = INF(Abs(bal), 2) & " Dr."
'                        Else
'                            yyy = INF(Abs(bal), 2) & " Cr."
'                        End If
'
                        stbar.Panels(2).Text = Padr(check(1), 30, " ") & Space(10) & yyy
                   End If
            End If
                       
End If
'--
If Opt = "mod" Or Opt = "del" Then
    Set Rs = New Recordset
    Select Case ColIndex
    Case 6
        Rs.Open "update FA_JVLINE SET NARRATION1 = '" & Replace(grdDataGrid.Columns(6).Text, "'", "''") & "' WHERE DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND VOCNO = " & val(adoprimaryrs("VOCNO")) & "  AND VOCDT = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND VOCSNO = " & val(grdDataGrid.Columns(4).Text) & " AND ACCODE = '" & grdDataGrid.Columns(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    Case 7
        Rs.Open "update FA_JVLINE SET NARRATION2 = '" & grdDataGrid.Columns(7).Text & "' WHERE DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND VOCNO = " & val(adoprimaryrs("VOCNO")) & "  AND VOCDT = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND VOCSNO = " & val(grdDataGrid.Columns(4).value) & " AND ACCODE = '" & grdDataGrid.Columns(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    Case 10
        If grdDataGrid.Columns(10).Text = "" Then grdDataGrid.Columns(10).Text = 0
        If grdDataGrid.Columns(10).Text = 0 Then grdDataGrid.Columns(10).Text = ""
    End Select
End If

If Opt = "mod" Then
    If grdDataGrid.Row = 0 And grdDataGrid.Col = 9 And grdDataGrid.Columns(10).Text = "" And Opt = "add" Then
        gflag = 1
        On Error GoTo er1:
        grdDataGrid.Row = grdDataGrid.Row + 1
        adoSecondaryRS.AddNew
        grdDataGrid.Col = 5
        grdDataGrid.SetFocus
    End If
End If
If Opt = "add" Then
    If (grdDataGrid.Col = 9 Or grdDataGrid.Col = 10) And Opt = "add" Then
        If Trim(grdDataGrid.Text <> "") Then
            grdDataGrid.Text = Trim(grdDataGrid.Text)
        End If
    End If
End If
er1:

   On Error GoTo 0
   Exit Sub

grdDataGrid_AfterColEdit_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColEdit of Form JURNL", vbInformation, head
End Sub
Private Sub GrdDatagrid_AfterColUpdate(ByVal ColIndex As Integer)
er1:
End Sub
Private Sub grdDataGrid_BeforeColEdit(ByVal ColIndex As Integer, ByVal KeyAscii As Integer, Cancel As Integer)

   On Error GoTo grdDataGrid_BeforeColEdit_Error

    NVAL = val(grdDataGrid.Columns(9).Text)
    Nval1 = val(grdDataGrid.Columns(10).Text)
    
'    Narr1 = grdDataGrid.Columns(6).text
'    Narr2 = grdDataGrid.Columns(7).text

   On Error GoTo 0
   Exit Sub

grdDataGrid_BeforeColEdit_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_BeforeColEdit of Form JURNL", vbInformation, head
    
End Sub
Private Sub grddatagrid_Click()
''On Error Resume Next



   On Error GoTo grddatagrid_Click_Error

    If grdDataGrid.Col = 9 Or grdDataGrid.Col = 10 Then
        If grdDataGrid.Columns(9).Text = "" And grdDataGrid.Columns(10).Text = "" Then
            te = True
        End If
    End If
    
    
    '  If Opt = "qry" Then
    
    
        If grdDataGrid.Row >= 0 Then
            If IsNumeric(Mid$(grdDataGrid.Columns(0), 1, 2)) = True Then
                    Set Rs = New Recordset
                    Rs.Open "select glhead,glcode from fa_glmas where  glcode='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic
                    If Rs.RecordCount Then
                       stbar.Panels(2).Text = Padr(Rs(0), 30, " ") '& Space(10) & yyy
                    End If
            Else
            
                  Set Rs = New Recordset
                  Set rs1 = New Recordset
                  
                  
             
                  
                  
                    Rs.Open "Select prtyhead from fa_prty where prtytyp= '" & Trim(Mid$(grdDataGrid.Columns(0), 1, 2)) & "'", DB, adOpenStatic

                    If Not Rs.EOF Then
                        z = Rs(0)

                        rs1.Open "select slname,slcode from fa_slmas where  slcode='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic
                        If Not rs1.EOF Then
                            stbar.Panels(2).Text = Padr(rs1(0), 30, " ") '& Space(10) & yyy
                        End If
                    End If
                                 
                    
                    
                    
            End If
     End If
     
     
     
     'End If 'option - qry

    
    
    
      If Opt = "mod" Then
        If grdDataGrid.Row >= 0 Then
            If IsNumeric(Mid$(grdDataGrid.Columns(5), 1, 2)) = True Then
                    Set Rs = New Recordset
                    Rs.Open "select glhead,glcode from fa_glmas where  glcode='" & grdDataGrid.Columns(5).Text & "'", DB, adOpenStatic
                    If Rs.RecordCount Then
                       stbar.Panels(2).Text = Padr(Rs(0), 30, " ") '& Space(10) & yyy
                    End If
            Else
                    Set Rs = New Recordset
                    Set rs1 = New Recordset
                    Rs.Open "Select prtyhead from fa_prty where prtytyp= '" & Trim(Mid$(grdDataGrid.Columns(5), 1, 2)) & "'", DB, adOpenStatic
                    If Not Rs.EOF Then
                        z = Rs(0)
                        rs1.Open "select slname,slcode from fa_slmas where  slcode='" & grdDataGrid.Columns(5).Text & "'", DB, adOpenStatic
                        If Not rs1.EOF Then
                            stbar.Panels(2).Text = Padr(rs1(0), 30, " ") '& Space(10) & yyy
                        End If
                    End If
            End If
     End If
    End If 'option - mod

   On Error GoTo 0
   Exit Sub

grddatagrid_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Click of Form JURNL", vbInformation, head
End Sub
Private Sub grddatagrid_DblClick()


   On Error GoTo grddatagrid_DblClick_Error

    If Opt = "del" Then
        Dim totl As Double
        Dim rs1 As Recordset
        If deltype = "2" Then
            If MsgBox("Do you want to delete this record?", vbYesNo, head + "Deletion Warning ") = vbYes Then
                If Not (grdDataGrid.ApproxCount = 2) Then
                    If Not grdDataGrid.Columns(9).Text = "" Then debit.Text = val(debit.Text) - val(grdDataGrid.Columns(9).value)
                    If Not grdDataGrid.Columns(10).Text = "" Then credit.Text = val(debit.Text) - val(grdDataGrid.Columns(10).value)
                    DB.Execute ("DELETE FROM FA_JVLINE WHERE DIVCODE = '" & adoprimaryrs("DIVCODE") & "' AND TC = " & val(adoprimaryrs("TC")) & " AND VOCNO = " & val(adoprimaryrs("VOCNO")) & " AND vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' and VOCSNO = " & val(grdDataGrid.Columns(4).value) & " and accode = '" & grdDataGrid.Columns(5) & "'")
                    adoprimaryrs.UpdateBatch adAffectAllChapters
                    Set Rs = New Recordset
                    Rs.Open "select DIVCODE,TC,VOCNO,VOCDT,VOCSNO,ACCODE ""AC Code"",narration1 ""Narration1"",narration2 ""Narration2"",cccode ""C.C"",debit ""Debit"",credit ""Credit"",crdrflg,FDEBIT,FCREDIT from FA_JVLINE WHERE divcode = '" & adoprimaryrs("divcode") & "' and vocno = " & val(adoprimaryrs("vocno")) & " and tc = " & val(adoprimaryrs("tc")) & " and vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = Rs
                    grdDataGrid.Columns(0).Visible = False
                    grdDataGrid.Columns(1).Visible = False
                    grdDataGrid.Columns(2).Visible = False
                    grdDataGrid.Columns(3).Visible = False
                    grdDataGrid.Columns(4).Visible = False
                    grdDataGrid.Columns(11).Visible = False
                    grdDataGrid.Columns(12).Visible = False
                    grdDataGrid.Columns(13).Visible = False
                    grdDataGrid.Columns(0).Width = 0
                    
                    grdDataGrid.Columns(8).Locked = True
                    
                    
                    grdDataGrid.Columns(8).Width = 0
                    grdDataGrid.AllowUpdate = True
                    grdDataGrid.Columns(5).Locked = True
                    grdDataGrid.Columns(6).Locked = True
                    grdDataGrid.Columns(7).Locked = True
                    
                    grdDataGrid.Columns(8).Locked = True
                    
                    
                    MsgBox "Record(s) Deleted Successfully", vbOKOnly, head
               Else
                    'To deny deletion when detail contains only one record
                    MsgBox "You cannot delete this record - Detail should have atleast one debit and one credit record", vbCritical, head + "Deletion Warning"
                    BUTTON(10).Enabled = True
                End If
            End If
        Else
            'when deletion type is cascade
            MsgBox "Line deletion not possible now", vbOKOnly, head
        End If
    End If

   On Error GoTo 0
   Exit Sub

grddatagrid_DblClick_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_DblClick of Form JURNL", vbInformation, head
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
    Response = 0
End Sub
Public Sub bindcontls()


    Dim oText As TextBox
    'Bind the text boxes to the recordset
   On Error GoTo bindcontls_Error

    For Each oText In Me.txtFields
        Set oText.DataSource = adoprimaryrs
    Next
    On Error Resume Next
    Set MaskEdBox1(0).DataSource = adoprimaryrs

   On Error GoTo 0
   Exit Sub

bindcontls_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form JURNL", vbInformation, head
End Sub
Public Sub disablcontls()


    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
   On Error GoTo disablcontls_Error

    For Each oText In Me.txtFields
        oText.Locked = True
    Next
    Frame1.Enabled = False
    grdDataGrid.Enabled = True
    MaskEdBox1(0).Enabled = False
    grdDataGrid.AllowAddNew = False
    grdDataGrid.AllowUpdate = False

   On Error GoTo 0
   Exit Sub

disablcontls_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form JURNL", vbInformation, head
End Sub
Public Sub ENABLCONTLS()


    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
   On Error GoTo ENABLCONTLS_Error

    For Each oText In Me.txtFields
        oText.Locked = False
    Next
    txtFields(1).Locked = True
    
    MaskEdBox1(0).Enabled = False 'True
    
    
    DTPicker1.Enabled = True
    If Opt = "add" Then
        MaskEdBox1(0).Text = pdate
        DTPicker1.maxdate = pdate
        DTPicker1.MinDate = mfdate
        DTPicker1.value = MaskEdBox1(0).Text
    End If
    grdDataGrid.AllowUpdate = True
    Frame1.Enabled = True
    grdDataGrid.Enabled = True

   On Error GoTo 0
   Exit Sub

ENABLCONTLS_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form JURNL", vbInformation, head
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)


    
   On Error GoTo GrdDatagrid_KeyDown_Error

    If Opt = "add" Or Opt = "mod" Then
        If KeyCode = 9 Then
            If grdDataGrid.Col = 9 And grdDataGrid.Columns(10).Text = "" And grdDataGrid.Columns(9).Text <> "" Then
                If adoSecondaryRS.AbsolutePosition = adoSecondaryRS.RecordCount Then
                
                    If gflg <> 1 Then
                        adoSecondaryRS.AddNew
                    End If
                    
                        'adoSecondaryRS.AddNew
                        
                        
                Else
                    adoSecondaryRS.MoveLast
                End If
                grdDataGrid.Col = 4
                grdDataGrid.SetFocus
                Exit Sub
            End If


            If grdDataGrid.Col = 10 Then
                ''' by hemalatha

                If (Opt = "add" Or Opt = "mod") And grdDataGrid.Columns(9) = "" And grdDataGrid.Columns(10).Text <> "" Then
                    If adoSecondaryRS.AbsolutePosition = adoSecondaryRS.RecordCount Then
                    
                        If gflg <> 1 Then
                            adoSecondaryRS.AddNew
                        End If
                        
                        ' adoSecondaryRS.AddNew
                        
                        
                    Else
                        adoSecondaryRS.MoveLast
                    End If


                    grdDataGrid.Col = 4
                    grdDataGrid.SetFocus
                    Exit Sub
                End If
            End If
        End If
    End If

   On Error GoTo 0
   Exit Sub

GrdDatagrid_KeyDown_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form JURNL", vbInformation, head
End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)



On Error GoTo GrdDatagrid_KeyPress_Error


Select Case grdDataGrid.Col

Case 5
    If KeyAscii <> 9 Then
            ToAlphanum grdDataGrid, 7, KeyAscii   '6
    End If
    
    If KeyAscii = 9 Then
        If Trim(grdDataGrid.Text) <> "" Then
            grdDataGrid.Text = UCase(Trim(grdDataGrid.Text))
        End If
        
        Dim check As Recordset
        Dim CKECK1 As Recordset
        Set check = New Recordset
        Set Check1 = New Recordset
        
        
        check.Open "select slcode,slname,city from fa_slmas where slcode in('" & grdDataGrid.Columns(5).Text & "')", DB
        
        Check1.Open "select glcode,glhead from fa_glmas where  glcode = ('" & grdDataGrid.Columns(5).Text & "') and glcode not in (select glcode from fa_prty) and glcode not in (select glcode from fa_tcmas where tc between " & fcash & " and " & tcash & " or tc between " & fbank & " and " & tbank & ")", DB
        
        
        If check.RecordCount = 0 And Check1.RecordCount = 0 Then
        
            Dim rss1  As Recordset
            
            Set rss1 = New Recordset
            rss1.Open "select count(*) from FA_PRTY ", DB, adOpenStatic, adLockBatchOptimistic
            
            Set rss2 = New Recordset
            
            If rss1(0) = 1 Then
                rss2.Open "select prtytyp,prtyhead,crdrflg,glcode from FA_PRTY  order by prtytyp", DB
                txtFields(1).Locked = True
                Frame2.Visible = True
                Frame2.ZOrder
            Else
                If IsNumeric(Mid$(grdDataGrid.Columns(5).Text, 1, 2)) Then
                
                    'GL = "Y"
                    'Call txtgl_Click
                    
                             'Screen.MousePointer = 0
                             
                            LookUp.clear = True
                            'qrl = "Select glcode as Code,glhead as Description from fa_glmas where  glcode not in (select ISNULL(glcode,0) from fa_prty) and glcode <> (select glcode from fa_tcmas where fa_tcmas.tc = " & txtFields(0).text & ")"
                            'change'20/05/08
                            qrl = "Select glcode as Code,glhead as Description from fa_glmas where  glcode not in (select ISNULL(glcode,0) from fa_prty) and glcode not in (select isnull(glcode,0) from fa_tcmas where fa_tcmas.tc between " & fcash & " and " & tcash & " or fa_tcmas.tc between " & fbank & " and " & tbank & ")"
                            'glcode not in (select glcode from fa_tcmas where tc between " & fcash & " and " & tcash & " or tc between " & fbank & " and " & tbank & ")", db
                            LookUp.query = qrl
                            LookUp.Caption = "General Ledger Listing"
                            LookUp.DefCol = "Description"
                            LookUp.ALIGN = "1500,5000"
                            LookUp.Show vbModal
                                                        
                            If LookUp.Cancel = False Then
                                grdDataGrid.Enabled = True
                                'St = ""
                                'st1 = ""
                                
                                'grddatagrid.Columns(5).text = ""
                                                                                               
                                grdDataGrid.Columns(5).Text = IIf(Trim(LookUp.Fields(0)) = "", " ", LookUp.Fields(0))
                                
                                
                                
                               ' St = IIf(Trim(Lookup.Fields(0)) = "", " ", Lookup.Fields(0))
                                'grddatagrid.Columns(5).text = St
                                
                                '''acd = Lookup.Fields(0)
                                
                                stbar.Panels(2).Text = LookUp.Fields(1)
                                'st1 = Lookup.Fields(1)
                                
                                
                    
                    If adoSecondaryRS.AbsolutePosition > 1 Then
                        grdDataGrid.Col = 6
                     Else
                        grdDataGrid.Col = 6
                     End If
                     
                     'grddatagrid.SetFocus
                                
                                
                                
                                
                                
                                'Lookup.clear = True                                '
                                                               
                    
                    
                                '''grddatagrid.Columns(6).Locked = True
                                
                                '''grddatagrid.Columns(5).text = St
                                '''stbar.Panels(2).text = st1
                                
                                grdDataGrid.Col = 4 '4  '5
                                                                
                                grdDataGrid.SetFocus
                                '''grddatagrid.Columns(6).Locked = False

                                
                                Exit Sub
                            Else
                                grdDataGrid.Col = 5
                                grdDataGrid.SetFocus
                                Exit Sub
                            End If
                    
                    gflag = 1
                    'grddatagrid.Col = 5 '4
                    
                    
                    
                    'grddatagrid.Columns(6).text = ""
                    grdDataGrid.Col = 6
                    grdDataGrid.SetFocus
                    
                    
                    'grddatagrid.Columns(6).text = ""
                    Screen.MousePointer = 0
                    
                    
                    
                    'Cancel = True
                    'KeyAscii = 0
                    
                    '''grdDataGrid.Col = 6 '5' ALREADY COMMENTED
                    
                    
                    '''grddatagrid.Col = 6 '5' ALREADY COMMENTED
                    
                    'grddatagrid.SetFocus
                    
                    Exit Sub
                End If
            End If
            



       LookUp.clear = True
       
   Set rss2 = New Recordset
   rss2.Open "select * from fa_param", DB




If rss2("flag") = "Y" Then
              
       qrl = "select PRTYTYP as [Party Type],PRTYHEAD as [Description] from FA_PRTY "
       LookUp.query = qrl
       GL = "N"
       LookUp.Caption = "Party Type Listing"
       LookUp.DefCol = "Party Type"
       LookUp.ALIGN = "1500,3900"
       LookUp.Show vbModal
       
       
       If LookUp.Cancel = False Then
       
                 If Opt = "add" Or Opt = "mod" Then
                 
                                    If LookUp.Fields(0) = "" Then 'ksldesc1.CODE = "" Then
                                        MsgBox "No Party Type Codes found", vbInformation, head
                                        Exit Sub
                                    End If
                                    
                                    KeyAscii = 0
                                    
                                    prt1 = LookUp.Fields(0)
                                    Screen.MousePointer = 0
                                    LookUp.clear = True
                
                
                                    grdDataGrid.Columns(5).Text = ""
                                    qrl = "Select slcode AS Code,slname as Name,isnull(city,'') as City from FA_SLMAS where left(slcode,2) = '" & prt1 & "' "
                                    LookUp.query = qrl
                                    LookUp.Caption = "Party Listing"
                                    LookUp.DefCol = "Name"
                                    LookUp.ALIGN = "1500,5000"
                                    LookUp.Show vbModal
                                    
                
                            If LookUp.Cancel = False Then
                                    grdDataGrid.Enabled = True
                                    grdDataGrid.Columns(5).Text = ""
                                    grdDataGrid.Columns(5).Text = IIf(Trim(LookUp.Fields(0)) = "", " ", LookUp.Fields(0))
                                            '''acd = Lookup.Fields(1)
                                    stbar.Panels(2).Text = LookUp.Fields(1)
                     
                                    If adoSecondaryRS.AbsolutePosition > 1 Then
                                         grdDataGrid.Col = 6
                                    Else
                                        grdDataGrid.Col = 6
                                    End If
                                    
                                    grdDataGrid.SetFocus
                                    LookUp.clear = True
                     
                     
                     
                                    Dim RS11 As New Recordset
                                    Dim rs12 As New Recordset
                   
                                    Set RS11 = New Recordset
                                    RS11.Open "select * from fa_tcmas where tc=" & txtFields(1).Text & "", DB, adOpenStatic
                                    

                                        If RS11("FLG") = "Y" Then
                  
                    ''                      Set rs12 = New Recordset
                    ''                      rs12.Open "select MAX(VOCDT) from fa_JVLINE where tc=" & txtfields(1).text & " AND MONTH(VOCDT)=" & Month(pdate) & " AND ACCODE='" & grddatagrid.Columns(5).text & "'", db, adOpenStatic
                    ''
                    ''                      'If Not rs12.EOF Then
                    ''                      If Not IsNull(rs12(0)) Then
                    ''                       'MsgBox "Already Enter the TDS Deduction for the Previous Date : " & rs12(0).Value
                    ''                       'MsgBox "Already TDS Entry done on : " & rs12(0).Value
                    ''                      End If
                       
                                            Set rs12 = New Recordset
                                            rs12.Open "select vocno,vocdt from fa_JVLINE where tc=" & txtFields(1).Text & " AND MONTH(VOCDT)=" & MONTH(pdate) & " AND ACCODE='" & grdDataGrid.Columns(5).Text & "' and credit>0", DB, adOpenStatic
                       
                       
                       
                                            If Not rs12.EOF Then
                        
                                                    SSTab2.Visible = True
                                                    SSTab2.Enabled = True
                                                
                                                    Set readDataGrid.DataSource = rs12
                                                    readDataGrid.Columns(0).Width = 800
                                                    readDataGrid.Columns(1).Width = 4710.047
                                                    readDataGrid.ScrollBars = dbgAutomatic
                                                    readDataGrid.Enabled = True
    
                                                    For i = 0 To 1
                                                        readDataGrid.Columns(i).Locked = True
                                                    Next
                                            End If
                                            
                                        End If
                                End If
                                '''Call party_lookupFA
                  End If
          
          
          
      
       Else
       
            MsgBox "Enter valid Transaction Code", vbInformation, head
            LookUp.clear = True
            Cancel = True
            txtFields(1).SetFocus
            
            '131108
            'grddatagrid.Columns(5).text = " "
            '
            
            grdDataGrid.Col = 5
            grdDataGrid.SetFocus
            Exit Sub
        End If
        
        
    Else
'only slname display

                grdDataGrid.Columns(5).Text = ""
                qrl = "Select slcode AS Code,slname as Name,isnull(city,'') as City from FA_SLMAS"
                LookUp.query = qrl
                LookUp.Caption = "Party Listing"
                LookUp.DefCol = "Name"
                LookUp.ALIGN = "1500,5000"
                LookUp.Show vbModal

                If LookUp.Cancel = False Then
                     grdDataGrid.Enabled = True
                     grdDataGrid.Columns(5).Text = ""
                     grdDataGrid.Columns(5).Text = IIf(Trim(LookUp.Fields(0)) = "", " ", LookUp.Fields(0))
                     stbar.Panels(2).Text = LookUp.Fields(1)

                            If adoSecondaryRS.AbsolutePosition > 1 Then
                                grdDataGrid.Col = 6
                             Else
                                grdDataGrid.Col = 6
                            End If
                                 grdDataGrid.Col = 4
                                grdDataGrid.SetFocus
                                LookUp.clear = True



                   'Dim rs11 As New Recordset
                   'Dim rs12 As New Recordset

                            Set RS11 = New Recordset
                            RS11.Open "select * from fa_tcmas where tc=" & txtFields(1).Text & "", DB, adOpenStatic

                                    If RS11("FLG") = "Y" Then
                                            Set rs12 = New Recordset
                                            rs12.Open "select vocno,vocdt from fa_JVLINE where tc=" & txtFields(1).Text & " AND MONTH(VOCDT)=" & MONTH(pdate) & " AND ACCODE='" & grdDataGrid.Columns(5).Text & "' and credit>0", DB, adOpenStatic
                                            
                                            If Not rs12.EOF Then
                                                SSTab2.Visible = True
                                                SSTab2.Enabled = True

                                                Set readDataGrid.DataSource = rs12
                                                readDataGrid.Columns(0).Width = 800
                                                    readDataGrid.Columns(1).Width = 4710.047
                                                    readDataGrid.ScrollBars = dbgAutomatic
                                                    readDataGrid.Enabled = True
                                                For i = 0 To 1
                                                    readDataGrid.Columns(i).Locked = True
                                                Next
                                            End If

                                    End If
              End If
       End If
           '- end slname only

        
        
        
        
        
        
        
        
        
        
        
        
        

            ''stbar.Panels(2).text = "Please Select A GLcode or Vendor type"
            txtgl.Visible = True
            txtgl.Text = "GL ACCOUNT"
            txtgl.ZOrder
            
            'grdDataGrid.Col = 4 ''CODED BY ASLAM
            'grdDataGrid.Columns(6).text = "" '' CODED BY ASLAM
            'grdDataGrid.SetFocus ''ASLAM
        Else
        
            If check.RecordCount = 0 Then
                stbar.Panels(2).Text = Check1(1)
            Else
                stbar.Panels(2).Text = check(1) & "," & check(2)
                grdDataGrid.Columns(11).Text = Mid$(grdDataGrid.Columns(5).Text, 1, 1)
            End If
            
            If Opt = "add" Then
                Set Rs = New Recordset
                Rs.Open "select c.cccode,c.cchead from FA_CCGLMAS G,FA_CCMAS C WHERE G.GLCODE = '" & grdDataGrid.Columns(5) & "' AND G.CCCODE = C.CCCODE ", DB
                
                If Rs.RecordCount <= 0 Then
                    grdDataGrid.Columns(8).Text = ""
                End If
                
                
                If grdDataGrid.Col = 5 Then
               'tds1
                    If adoSecondaryRS.AbsolutePosition > 1 Then
                        grdDataGrid.Columns(6).Text = narr1
                        grdDataGrid.Columns(7).Text = narr2
                        
''                   Set rstds1 = New Recordset
''                   rstds1.Open "select EFF_DATE,TDS_GL_CODE,TDS_PER,EDU_CESS_PER,HS_CESS_PER  from FA_TDS_TAX_PERT  where TDS_GL_CODE =(select TDS_GL_CODE from fa_TDS_GL  WHERE  glcode = ('" & grddatagrid.Columns(5).text & "'))", db
''                        If Not rs.EOF Then
''                            grddatagrid.Columns(10).text = (tds1 * (rstds1(2).Value / 100))
''                            'grddatagrid.Columns(ColIndex + 1).text = tds1 * 2
''                       End If
                    End If
                End If 'tds1
            End If 'add
            
            
        End If
    End If
    
    
    

Case 6, 7
    If KeyAscii <> 9 Then
        'ToAlphanum grdDataGrid, 50, KeyAscii
        
        If grdDataGrid.Col = 6 Then grdDataGrid.Columns(6).Width = 7680
        If grdDataGrid.Col = 7 Then grdDataGrid.Columns(7).Width = 7680
        If (grdDataGrid.Col = 6) Then
            ToAlpha1 grdDataGrid, 150, KeyAscii   '75 '50
        End If
        If (grdDataGrid.Col = 7) Then
            ToAlpha1 grdDataGrid, 50, KeyAscii
        End If
        
    ElseIf grdDataGrid.Col = 7 And (Opt = "add" Or Opt = "mod") Then
        grdDataGrid.Columns(7).Text = Trim(grdDataGrid.Text)
        If IsNumeric(Mid(grdDataGrid.Columns(5).Text, 1, 1)) = True Then
            Dim rscc As Recordset
            If Label3.Caption <> "Sub Ledger Listing" And IsNumeric(Mid(grdDataGrid.Columns(5).Text, 1, 2)) = True Then
                If (Opt = "add") Or (Opt = "mod" And grdDataGrid.Columns(8).Text = "") Then
                
                    Label3.Caption = "Cost Centre Listing"
                    stbar.Panels(2).Text = "Please Select a Cost Center"
                    
                    Ksldesc1.Visible = True
                    
                    
                    Ksldesc1.conn = connectstring
                    Ksldesc1.Table = "FA_CCGLMAS G,FA_CCMAS C WHERE G.GLCODE = '" & grdDataGrid.Columns(5) & "' AND G.CCCODE = C.CCCODE "
                    Ksldesc1.listfield1 = "C.CCCODE"
                    Ksldesc1.listfield2 = "C.CCHEAD"
                    
                    
                    Set Rs = New Recordset
                    Rs.Open "select c.cccode,c.cchead from FA_CCGLMAS G,FA_CCMAS C WHERE G.GLCODE = '" & grdDataGrid.Columns(5) & "' AND G.CCCODE = C.CCCODE ", DB
                    If Not (Rs.RecordCount = 0) Then
                        Frame3.ZOrder
                        Frame3.Visible = True
                        Ksldesc1.SetFocus
                        Command3.Default = True
                        If grdDataGrid.Columns(8).Text <> "" Then
                            Command1.Visible = True
                        End If
                    Else
                        grdDataGrid.Columns(8).Text = ""
                        stbar.Panels(2).Text = "There is No cost center for this GLcode"
                        Frame3.Visible = False
                        grdDataGrid.Col = 8
                        grdDataGrid.SetFocus
                        Exit Sub
                    End If
                End If
            End If
        Else
            grdDataGrid.Columns(8).Text = ""
        End If
    End If
  
Case 9, 10

    If KeyAscii <> 13 Then
        If KeyAscii <> 9 Then
            maxlen = 10
            ToNumber1 grdDataGrid, 10, KeyAscii
            If grdDataGrid.Columns(9).Text <> "" And keyascci <> 8 And grdDataGrid.Col = 10 Then
                KeyAscii = 0
            End If
        Else
            If grdDataGrid.Columns(9).Text = "" And grdDataGrid.Col = 10 Then
                grdDataGrid.Columns(10).Text = Trim(grdDataGrid.Text)
                If grdDataGrid.Columns(10).Text = "" Then
                    KeyAscii = 0
                End If
            End If
        End If
    Else
    
        'If KeyAscii = 13 And (grddatagrid.Col = 10 Or grddatagrid.Col = 9) And opt = "add" Then
        
        If KeyAscii = 13 And (grdDataGrid.Col = 10 Or grdDataGrid.Col = 9) And (Opt = "add" Or Opt = "mod") Then
        
           gflg = 1
            
        '180109
            BUTTON(9).Enabled = True
         'end
            BUTTON(10).Enabled = True
            gflag = 1
        Else
            gflag = 0
            
            gflg = 0
            
        End If
    End If
End Select

   On Error GoTo 0
   Exit Sub

GrdDatagrid_KeyPress_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_KeyPress of Form JURNL", vbInformation, head
End Sub
Private Sub grdDataGrid_KeyUp(KeyCode As Integer, Shift As Integer)
    Call Save(KeyCode, Shift)
    On Error Resume Next
    'ksldesc1.SetFocus
End Sub
Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error Resume Next
If st = "C" Then
    grdDataGrid.Row = adoSecondaryRS.RecordCount
    st = ""
End If

If gflag = 0 Then
    If grdDataGrid.Col = 8 Then
        grdDataGrid.Columns(6).Width = 2324.977
        grdDataGrid.Columns(7).Width = 2055.118
    End If
    
    If Opt = "add" And te = True Then
        If grdDataGrid.Row <> 0 Then
            grdDataGrid.Row = grdDataGrid.Row - 1
        End If
        grdDataGrid.Col = 9
        grdDataGrid.SetFocus
        te = False
    End If
    
    If (Opt = "add" Or Opt = "mod" Or Opt = "del") And Not (grdDataGrid.Row = -1) Then
        If st1 = "A" And Opt = "add" Then
            grdDataGrid.Col = 5
            st1 = "B"
        End If
        
        If grdDataGrid.Col = 5 And (Opt = "add" Or Opt = "mod") Then
            grdDataGrid.Columns(5).Locked = False
            grdDataGrid.SetFocus
        End If
        
        If grdDataGrid.Col = 6 And grdDataGrid.Columns(5).Text = "" Or Len(grdDataGrid.Columns(5).Text) < 6 Then
            stbar.Panels(2).Text = "A/C code cannot be empty /Invalid"
            grdDataGrid.Col = 5
            Exit Sub
        End If
        
        
        
        
        
        If Opt = "add" Then
            If adoSecondaryRS.RecordCount = 1 Then
                
                narr1 = grdDataGrid.Columns(6).Text
                
                narr2 = grdDataGrid.Columns(7).Text
                
                
                '''  tds1 = grddatagrid.Columns(9).Value
                
            Else
            
                If grdDataGrid.Columns(5).Text = "" Then
                    grdDataGrid.Columns(6).Text = ""
                    grdDataGrid.Columns(7).Text = ""
                    
                Else
                 'grddatagrid.Columns(6).text = narr1
                 'grddatagrid.Columns(6).text = ""
                 
                 grdDataGrid.Columns(6).Text = IIf(grdDataGrid.Columns(6).Text = narr1, narr1, grdDataGrid.Columns(6).Text)
                 grdDataGrid.Columns(7).Text = narr2
                 
                 
'                Set rstds1 = New Recordset
'                rstds1.Open "select EFF_DATE,TDS_GL_CODE,TDS_PER,EDU_CESS_PER,HS_CESS_PER  from FA_TDS_TAX_PERT  where TDS_GL_CODE =(select TDS_GL_CODE from fa_TDS_GL  WHERE  glcode = ('" & grddatagrid.Columns(5).text & "'))", db
'                    If Not rstds1.EOF Then
'                       grddatagrid.Columns(10).text = (tds1 * (rstds1(2).Value / 100))
'                        'grddatagrid.Columns(ColIndex + 1).text = (tds1 * 2)
'                    End If
'
            
                 'grddatagrid.Columns(10).text = tds1
                 
                 
                End If
            End If
        End If
        
                      
        
                 If Opt = "" Or Opt = "add" Or Opt = "mod" Then
                    If grdDataGrid.Col = 6 And Not IsNull(grdDataGrid.Columns(5)) Then
                        Dim rslbl1, rslbl2 As Recordset
                        Set rslbl = New Recordset
                        Set rslbl2 = New Recordset
                        'rslbl.Open "select crdrflg from FA_PAYLINE", db
                        
                                                
                           If IsNumeric(Mid$(grdDataGrid.Columns(5).Text, 1, 2)) = True Then
                                    Set rslbl2 = New Recordset
                                    rslbl2.Open "select glhead from FA_GLMAS where glcode='" & grdDataGrid.Columns(5).Text & "'", DB
                            
                                    If Not rslbl2.EOF Then
                                        stbar.Panels(2).Text = rslbl2(0)
                                    End If
                                Else
                                        Set rslbl2 = New Recordset
                                        rslbl2.Open "select slname from FA_SLMAS where slcode='" & grdDataGrid.Columns(5).Text & "'", DB
                                    If Not rslbl2.EOF Then
                                        stbar.Panels(2).Text = rslbl2(0)
                                    End If
                           End If
                      End If
                 End If
        
 
 
        
        If (grdDataGrid.Col = 8 Or grdDataGrid.Col = 6) And (Opt = "add" Or Opt = "mod") Then
            If IsNumeric(Mid(grdDataGrid.Columns(5).Text, 1, 1)) = True Then
            Else
                If grdDataGrid.Col <> 6 Then
                    grdDataGrid.Col = 9
                    grdDataGrid.EditActive = True
                    grdDataGrid.SetFocus
                    stbar.Panels(2).Text = "Please Enter the Debit Amount"
                    Exit Sub
                End If
            End If
        End If
        
        If (grdDataGrid.Col = 7 Or grdDataGrid.Col = 8 Or grdDataGrid.Col = 9 Or grdDataGrid.Col = 10) Then
            If grdDataGrid.Columns(5).Text = "" Then
                stbar.Panels(2).Text = "A/C code cannot be empty "
                grdDataGrid.Col = 5
                Exit Sub
            End If
            
            
            
        '21/11/09
        Set rssl1 = New Recordset
        rssl1.Open "select * from fa_tcmas where tc=" & txtFields(1).Text & "", DB, adOpenStatic
        
            If rssl1("flg") = "Y" And IsNumeric(Mid(grdDataGrid.Columns(5).Text, 1, 1)) = False Then
                Set rssl2 = New Recordset
                rssl2.Open "select org_type from fa_slmas where slcode='" & Trim(grdDataGrid.Columns(5).Text) & "'", DB, adOpenStatic
                If IsNull(rssl2("org_type")) Then
                    ''stbar.Panels(2).text = "Organization type  cannot be empty "
                    
                    MsgBox "Organization type  cannot be empty ", vbInformation, head
                    
                    grdDataGrid.Col = 5
                    grdDataGrid.SetFocus
                    Exit Sub
                End If
            End If
            
            
            
            
            
            
            
            
            
            
            If grdDataGrid.Columns(6).Text = "" Then
                stbar.Panels(2).Text = "Narration1 cannot be empty "
                grdDataGrid.Col = 6
                Exit Sub
            End If
        End If
        
        
        
        
        
        If grdDataGrid.Col = 9 And Not grdDataGrid.Columns(10).Text = "" Then
            grdDataGrid.Columns(9).Locked = True
        Else
            If grdDataGrid.Col = 9 Then
                stbar.Panels(2).Text = "Please Enter the Debit Amount"
                grdDataGrid.Columns(9).Locked = False
            End If
        End If
        If grdDataGrid.Col = 10 And Not grdDataGrid.Columns(9).Text = "" Then
        Else
            If grdDataGrid.Col = 10 And stbar.Panels(2).Text <> "Debit and Credit Amount Cannot be Null" Then
                stbar.Panels(2).Text = "Please Enter the Credit Amount"
            End If
            grdDataGrid.Columns(10).Locked = False
        End If
    End If
Else
    gflag = 0
End If
End Sub

Private Sub List1_Click()
    If txtqry.Visible = True Then
        txtqry.SetFocus
    End If
End Sub
Private Sub MaskEdBox1_LostFocus(Index As Integer)

   On Error GoTo MaskEdBox1_LostFocus_Error

If Index = 0 And (MaskEdBox1(0).Enabled) Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox ("invalid date")
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > Date Then
        MsgBox ("Journal date should not be greater than processing date"), vbInformation, head
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) < mfdate Then
        MsgBox "Journal date should not be less than Month first date", vbCritical, head
        MaskEdBox1(0).SetFocus
    End If
End If

   On Error GoTo 0
   Exit Sub

MaskEdBox1_LostFocus_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form JURNL", vbInformation, head

End Sub

Private Sub MaskRefDate_LostFocus()


 On Error GoTo MaskRefDate_LostFocus_Error

    If Not (IsDate(MaskRefDate.Text)) Then
        MsgBox ("invalid date")
        MaskRefDate.SetFocus
        
    ElseIf CDate(MaskRefDate.Text) > Date Then
        MsgBox ("Journal date should not be greater than processing date"), vbInformation, head
        MaskRefDate.SetFocus
        
'    ElseIf CDate(MaskEdBox1(0).text) < mfdate Then
 '       MsgBox "Journal date should not be less than Month first date", vbCritical, head
  '      MaskEdBox1(0).SetFocus
    
    End If




   On Error GoTo 0
   Exit Sub

MaskRefDate_LostFocus_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskRefDate_LostFocus of Form JURNL"

End Sub

Private Sub MaskRefDate_Validate(Cancel As Boolean)


   On Error GoTo MaskRefDate_Validate_Error

    If Trim(MaskRefDate.Text) = "__/__/____" Then
        MaskRefDate.Text = pdate
    End If
    If IsDate(MaskRefDate.Text) = False Then MaskRefDate.Text = pdate
    On Error Resume Next
    
    grdDataGrid.Enabled = True
    grdDataGrid.SetFocus

   On Error GoTo 0
   Exit Sub

MaskRefDate_Validate_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskRefDate_Validate of Form JURNL", vbInformation, head
End Sub

Private Sub Option1_Click()

   On Error GoTo Option1_Click_Error

Frame5.Enabled = True
Option3.Enabled = True
Option4.Enabled = True

   On Error GoTo 0
   Exit Sub

Option1_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option1_Click of Form JURNL", vbInformation, head
End Sub

Private Sub Option2_Click()

   On Error GoTo Option2_Click_Error

Frame5.Enabled = False
Option3.Enabled = False
Option4.Enabled = False

   On Error GoTo 0
   Exit Sub

Option2_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option2_Click of Form JURNL", vbInformation, head
End Sub

Private Sub qrycan_Click()

   On Error GoTo qrycan_Click_Error

    Frame7.Visible = False
    txtqry = ""

   On Error GoTo 0
   Exit Sub

qrycan_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qrycan_Click of Form JURNL", vbInformation, head
End Sub
Private Sub qryok_Click()


   On Error GoTo qryok_Click_Error

    Call disablcontls
    Dim qrdt As String
    qrdt = UCase(Mid(List1.Text, 1, 3)) & " %% " & Right(List1.Text, 4) & "%"
    
    Set adoprimaryrs = New Recordset
    
  '  adoPrimaryRS.Open "SHAPE {select DISTINCT th.DIVCODE,th.TC,th.VOCNO,th.VOCDT,tc.tchead,TH.CURRCODE,TH.CONVRATE,(case when convrate is null then isnull(sum(credit),0) else isnull(sum(fcredit),0)  end) CREDIT,(case when convrate is null then isnull(sum(debit),0) else isnull(sum(fdebit),0)  end) DEBIT,TH.DOCNO from FA_JVHEAD th,FA_TCMAS tc,FA_JVLINE L where th.tc = l.tc and th.divcode = '" & Divcode & "' and th.divcode = l.divcode AND " & _
                      "TH.DOCNO > = " & txtqry.text & " AND TH.TC= " & Text1.text & " and th.vocno = l.vocno and th.vocdt = l.vocdt and  th.tc = tc.tc and th.vocdt like '" & qrdt & "' group by th.DIVCODE,TH.DOCNO,th.TC,th.VOCNO,th.VOCDT,tc.tchead,TH.CURRCODE,TH.CONVRATE Order by th.VOCNO} AS ParentCMD APPEND ({select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",(case when isnull(t.fdebit,0) > 0 then t.fdebit else t.debit end ) ""Debit"",(case when isnull(t.fcredit,0) > 0 then t.fcredit else t.credit end) ""Credit"",t.crdrflg,T.FDEBIT,T.FCREDIT from FA_JVLINE t order by t.vocsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,TC TO TC,VOCNO TO VOCNO,VOCDT TO VOCDT) AS ChildCMD", db, adOpenStatic, adLockOptimistic
    
    
    adoprimaryrs.Open "SHAPE {select DISTINCT th.DIVCODE,th.TC,th.VOCNO,th.VOCDT,TH.CURRCODE,TH.CONVRATE,(case when convrate is null then isnull(sum(credit),0) else isnull(sum(fcredit),0)  end) CREDIT,(case when convrate is null then isnull(sum(debit),0) else isnull(sum(fdebit),0)  end) DEBIT,TH.DOCNO from FA_JVHEAD th,FA_TCMAS tc,FA_JVLINE L where th.tc = l.tc and th.divcode = '" & Divcode & "' and th.divcode = l.divcode AND " & _
                      "TH.DOCNO > = " & txtqry.Text & " AND TH.TC= " & Text1.Text & " and th.vocno = l.vocno and th.vocdt = l.vocdt and  th.tc = tc.tc and th.vocdt like '" & qrdt & "' group by th.DIVCODE,TH.DOCNO,th.TC,th.VOCNO,th.VOCDT,tc.tchead,TH.CURRCODE,TH.CONVRATE Order by th.VOCNO} AS ParentCMD APPEND ({select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",(case when isnull(t.fdebit,0) > 0 then t.fdebit else t.debit end ) ""Debit"",(case when isnull(t.fcredit,0) > 0 then t.fcredit else t.credit end) ""Credit"",t.crdrflg,T.FDEBIT,T.FCREDIT from FA_JVLINE t order by t.vocsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,TC TO TC,VOCNO TO VOCNO,VOCDT TO VOCDT) AS ChildCMD", DB, adOpenStatic, adLockOptimistic
        
    
    
    If Not (adoprimaryrs.EOF Or adoprimaryrs.BOF) Then
        Call bindcontls
        'Bind the text boxes to the recordset
        If Not (adoprimaryrs.RecordCount = 0) Then
            Set MaskEdBox1(0).DataSource = adoprimaryrs
        Else
            txttcname.Text = " "
        End If
        Call disablcontls
        txtFields(0).Locked = True
        stbar.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
        Set grdDataGrid.DataSource = adoprimaryrs("ChildCMD").UnderlyingValue
        Opt = " "
        grdDataGrid.Refresh
        grdDataGrid.Columns(0).Visible = False
        grdDataGrid.Columns(1).Visible = False
        grdDataGrid.Columns(2).Visible = False
        grdDataGrid.Columns(3).Visible = False
        grdDataGrid.Columns(4).Visible = False
        grdDataGrid.Columns(6).Width = 2450
        grdDataGrid.Columns(7).Width = 2055.118
        
        grdDataGrid.Columns(8).Width = 540.2835
        grdDataGrid.Columns(8).Visible = False
        
        grdDataGrid.Columns(9).Width = 1305.071
        grdDataGrid.Columns(10).Width = 1100
        grdDataGrid.Columns(11).Visible = False
        grdDataGrid.Columns(12).Visible = False
        grdDataGrid.Columns(13).Visible = False
        grdDataGrid.Columns(10).Alignment = dbgRight
        grdDataGrid.Columns(11).Alignment = dbgRight
        grdDataGrid.Columns(10).NumberFormat = "#0.00"
        grdDataGrid.Columns(11).NumberFormat = "#0.00"
        Call qrymode(BUTTON, True)
        BUTTON(5).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(8).Enabled = True
    Else
        stbar.Panels(2).Text = "No Records found for this month"  ', vbInformation, head
        txtqry.Text = ""
        txtqry.SetFocus
        Exit Sub
    End If
    txtqry = ""
    Frame7.Visible = False

   On Error GoTo 0
   Exit Sub

qryok_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qryok_Click of Form JURNL", vbInformation, head
End Sub
Private Sub Find_lookupFA(ltc As Integer, lvocno As Integer, lvocdt As Date)

   On Error GoTo Find_lookupFA_Error

    Call disablcontls
    Dim qrdt As String
    Set adoprimaryrs = New Recordset
    
    adoprimaryrs.Open "SHAPE {select DISTINCT th.DIVCODE,th.TC,th.VOCNO,th.VOCDT,tc.tchead,TH.CURRCODE,TH.CONVRATE,(case when convrate is null then isnull(sum(credit),0) else isnull(sum(fcredit),0)  end) CREDIT,(case when convrate is null then isnull(sum(debit),0) else isnull(sum(fdebit),0)  end) DEBIT,TH.DOCNO from FA_JVHEAD th,FA_TCMAS tc,FA_JVLINE L where th.tc = l.tc and th.divcode = '" & Divcode & "' and th.divcode = l.divcode AND " & _
                      " th.vocno=" & lvocno & " and TH.TC= " & ltc & " and th.vocno = l.vocno and th.vocdt = l.vocdt and  th.tc = tc.tc and th.vocdt = '" & Format(lvocdt, "yyyy-MM-dd") & "' group by th.DIVCODE,TH.DOCNO,th.TC,th.VOCNO,th.VOCDT,tc.tchead,TH.CURRCODE,TH.CONVRATE Order by th.VOCNO} AS ParentCMD APPEND ({select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",(case when isnull(t.fdebit,0) > 0 then t.fdebit else t.debit end ) ""Debit"",(case when isnull(t.fcredit,0) > 0 then t.fcredit else t.credit end) ""Credit"",t.crdrflg,T.FDEBIT,T.FCREDIT from FA_JVLINE t order by t.vocsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,TC TO TC,VOCNO TO VOCNO,VOCDT TO VOCDT) AS ChildCMD", DB, adOpenStatic, adLockOptimistic
    
    If Not (adoprimaryrs.EOF Or adoprimaryrs.BOF) Then
        Call bindcontls
        'Bind the text boxes to the recordset
        If Not (adoprimaryrs.RecordCount = 0) Then
            Set MaskEdBox1(0).DataSource = adoprimaryrs
        Else
            txttcname.Text = " "
        End If
        Call disablcontls
        txtFields(0).Locked = True
        stbar.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
        Set grdDataGrid.DataSource = adoprimaryrs("ChildCMD").UnderlyingValue
        Opt = " "
        grdDataGrid.Refresh
        sumdbt = 0
        sumcrd = 0
        grdDataGrid.Columns(0).Visible = False
        grdDataGrid.Columns(1).Visible = False
        grdDataGrid.Columns(2).Visible = False
        grdDataGrid.Columns(3).Visible = False
        grdDataGrid.Columns(4).Visible = False
        grdDataGrid.Columns(6).Width = 2450
        grdDataGrid.Columns(7).Width = 2055.118
        
        grdDataGrid.Columns(8).Width = 540.2835
        grdDataGrid.Columns(8).Visible = False
        
        grdDataGrid.Columns(9).Width = 1305.071
        grdDataGrid.Columns(10).Width = 1100
        grdDataGrid.Columns(11).Visible = False
        grdDataGrid.Columns(12).Visible = False
        grdDataGrid.Columns(13).Visible = False
        grdDataGrid.Columns(10).Alignment = dbgRight
        grdDataGrid.Columns(11).Alignment = dbgRight
        grdDataGrid.Columns(10).NumberFormat = "#0.00"
        grdDataGrid.Columns(11).NumberFormat = "#0.00"
        Call qrymode(BUTTON, True)
        BUTTON(5).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(8).Enabled = True
    Else
        stbar.Panels(2).Text = "No Records found for this month"  ', vbInformation, head
        txtqry.Text = ""
        txtqry.SetFocus
        Exit Sub
    End If
    txtqry = ""
    Frame7.Visible = False

   On Error GoTo 0
   Exit Sub

Find_lookupFA_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Find_lookupFA of Form JURNL", vbInformation, head
End Sub

Private Sub RefDate_Change()
  On Error GoTo RefDate_Change_Error

    MaskRefDate.Text = RefDate.value

   On Error GoTo 0
   Exit Sub

RefDate_Change_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RefDate_Change of Form JURNL", vbInformation, head
End Sub

Private Sub RefDate_Click()

   On Error GoTo RefDate_Click_Error

    MaskRefDate.Text = RefDate.value

   On Error GoTo 0
   Exit Sub

RefDate_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RefDate_Click of Form JURNL", vbInformation, head
End Sub

Private Sub STAXCMD_Click()


Dim acd As String

'not tds 48 tc

   On Error GoTo STAXCMD_Click_Error

    staxframe.Visible = False
    
    If Option3.value = True Then
        c = "GLACCOUNT"
         LookUp.clear = True
         qrl = "Select glcode as Code,glhead as Description from fa_glmas where  glcode not in (select ISNULL(glcode,0) from fa_prty) and glcode <> (select glcode from fa_tcmas where fa_tcmas.tc = " & txtFields(1).Text & ")"
                           
          LookUp.query = qrl
          LookUp.Caption = "General Ledger Listing"
          LookUp.DefCol = "Description"
          LookUp.ALIGN = "1500,5000"
          LookUp.Show vbModal
                            
                           
                If LookUp.Cancel = False Then
                'grddatagrid.Enabled = True
                    'Text17.text = IIf(Trim(Lookup.Fields(0)) = "", " ", Lookup.Fields(0))
                    
                    'acd = Lookup.Fields(0)
                    
                    acd = IIf(Trim(LookUp.Fields(0)) = "", staxperrs("glcode").value, LookUp.Fields(0))   'Lookup.Fields(0)
                    
                    
                    '  stbar.Panels(2).text = Lookup.Fields(1)
                      LookUp.clear = True
                      
                 Else
                    acd = IIf(Trim(LookUp.Fields(0)) = "", staxperrs("glcode").value, LookUp.Fields(0))   'Lookup.Fields(0)
                      
                  End If
               
            Call staxupdate1(acd, staxperrs("glcode").value, sType, val(Text5.Text), val(Text6.Text), val(Text7.Text), val(Text8.Text), staxperrs("edu_gl").value, staxperrs("hs_gl").value)
       Else
            Call staxupdate1(RsJv1("accode").value, staxperrs("glcode").value, sType, val(Text5.Text), val(Text6.Text), val(Text7.Text), val(Text8.Text), staxperrs("edu_gl").value, staxperrs("hs_gl").value)
       End If
       
 
  
  '  Call Matching_routine '-290508
    
    
    

   On Error GoTo 0
   Exit Sub

STAXCMD_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure STAXCMD_Click of Form JURNL", vbInformation, head

End Sub

'Private Sub STAXCMD_Click()
''    Call staxupdate(adoSecondaryRS(5).Value, staxperrs("glcode"), stype, Val(Text13.text), Val(Text14.text), Val(Text15.text), Val(Text16.text), staxperrs("edu_gl"), staxperrs("hs_gl"))
''    Call staxlookupFA
''    Call Matching_routine '-290508
''    staxframe.Visible = False
'
'
' staxframe.Visible = False
'Call STAXupdate
'Call Matching_routine
'
'End Sub

Private Sub TCN_GotFocus()
    If Opt = "add" Then stbar.Panels(2).Text = "Please click in A/c code column to select a Glcode or Vendor"
End Sub

Private Sub TdsCmd_Click()
TdsFrame.Visible = False
Call FAupdate
'Call Matching_routine
End Sub

Private Sub Text1_DblClick()

   On Error GoTo Text1_DblClick_Error

     Frame3.Visible = True
     Frame3.ZOrder
     Label1.Caption = "TC  Listing "
     Ksldesc1.conn = connectstring
     Ksldesc1.Table = "FA_TCMAS where (TC BETWEEN " & fjv & " AND " & tjv & ") "
     Ksldesc1.listfield1 = "TC"
     Ksldesc1.listfield2 = "tchead"
     Ksldesc1.SetFocus

   On Error GoTo 0
   Exit Sub

Text1_DblClick_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_DblClick of Form JURNL", vbInformation, head
End Sub
Private Sub Text1_KeyPress(KeyAscii As Integer)
    If Len(Text1.Text) = 2 And KeyAscii <> 8 And KeyAscii <> 9 Then KeyAscii = 0
End Sub
Private Sub Text1_LostFocus()

Dim CHECKTC As Recordset
   On Error GoTo Text1_LostFocus_Error

Set CHECKTC = New Recordset
CHECKTC.Open "SELECT TC,TCHEAD FROM FA_TCMAS WHERE ((TC BETWEEN " & fjv & " AND " & tjv & "))", DB
If CHECKTC.RecordCount = 1 Then
     Text2.Text = CHECKTC(1)
     stbar.Panels(2).Text = ""
Else
     ch = True
     Frame3.Visible = True
     Frame3.ZOrder
     Label1.Caption = "TC  Listing "
     Ksldesc1.conn = connectstring
     Ksldesc1.Table = "FA_TCMAS where (TC BETWEEN " & fjv & " AND " & tjv & ") "
     Ksldesc1.listfield1 = "cast(TC as varchar)"
     Ksldesc1.listfield2 = "tchead"
     Ksldesc1.SetFocus
End If

   On Error GoTo 0
   Exit Sub

Text1_LostFocus_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_LostFocus of Form JURNL", vbInformation, head
End Sub

Private Sub text10_KeyPress(KeyAscii As Integer)
Call ToNumber1(Text10, 2, KeyAscii)
End Sub

Private Sub text11_KeyPress(KeyAscii As Integer)
Call ToNumber1(Text11, 2, KeyAscii)
End Sub
Private Sub text12_KeyPress(KeyAscii As Integer)
Call ToNumber1(Text12, 2, KeyAscii)
End Sub

Private Sub Text18_Change()

        Set RS2 = New Recordset
        RS2.Open "select tc,tchead from fa_tcmas Where tc=" & val(Text18.Text) & " order by tc", DB
        If Not RS2.EOF Then
            Text19.Text = RS2(1)
        Else
            Text19.Text = ""
        End If



End Sub

Private Sub Text18_Validate(Cancel As Boolean)
            Screen.MousePointer = 0
            Call TcLookup

End Sub

Private Sub Text9_KeyPress(KeyAscii As Integer)
Call ToNumber1(Text9, 2, KeyAscii)
End Sub

Private Sub txtfields_Change(Index As Integer)
 Select Case Index
    Case 1
        Dim RS2 As New ADODB.Recordset
        Set RS2 = New Recordset
        RS2.Open "select tc,tchead from fa_tcmas Where tc=" & val(txtFields(Index).Text) & " order by tc", DB
        If Not RS2.EOF Then
            TCN.Text = RS2(1)
        Else
            TCN.Text = ""
        End If
    End Select
End Sub

Private Sub txtfields_Click(Index As Integer)

    Call txtFields_GotFocus(Index)
    
End Sub
Private Sub txtFields_GotFocus(Index As Integer)

Select Case Index
Case 1
    'To determine No. of transaction codes for  JOURNALS
    
'    Lookup.clear = True
'         qrl = "select tc,tchead from FA_TCMAS,FA_PARAM where tc between fromjvtc and tojvtc OR TC BETWEEN FROMSALESTC AND TOSALESTC"
'         Lookup.QUERY = qrl
'         Lookup.Caption = "TC Listing"
'         Lookup.DefCol = "tchead"
'         Lookup.ALIGN = "1500,3900"
'         Lookup.Show vbModal
'
'       If Lookup.Cancel = False Then
'
'       If OPT = "add" Or OPT = "mod" Then
'                        If Lookup.Fields(0) = "" Then 'ksldesc1.CODE = "" Then
'                            MsgBox "No Transaction Codes found", vbInformation, head
'                            Exit Sub
'                        End If
'      txtfields(1).text = Lookup.Fields(0)  'ksldesc1.CODE
'      TCN.text = Lookup.Fields(1) 'ksldesc1.description
'      Call ENABLCONTLS
'      txtfields(2).Locked = True
'      vocNo = newVocNo(adoPrimaryRS(1).Value, MaskEdBox1(0).text)
'      DocNo = newDocNo(adoPrimaryRS(1).Value, MaskEdBox1(0).text)
'      txtfields(5).text = Val(DocNo)
'      txtfields(2).text = Val(vocNo)
'      BUTTON(9).Enabled = True
'      BUTTON(10).Enabled = True
'      stbar.Panels(2).text = "Please select a date"
'      MaskEdBox1(0).SetFocus
'      End If
'        Else
'            MsgBox "Enter valid Transaction Code", vbInformation, head
'            txtfields(1).SetFocus
'        End If
    
    'If OPT = "add" Then
    '    Set rs1 = New Recordset
    '    rs1.Open "select count(*) from FA_TCMAS,FA_PARAM where tc between fromjvtc and tojvtc OR TC BETWEEN FROMSALESTC AND TOSALESTC ", db
    '    Set rs2 = New Recordset
    '    If rs1(0) = 1 Then
    '    Else
    '        'If more than one transaction codes are available for receipt returns, then allow for user selection
    '        If Frame3.Visible = False And Frame7.Visible = False Then
    '            Frame3.Visible = True
    '            Frame3.ZOrder
    '            Label3.Caption = "TC Listing"
    '            ksldesc1.conn = connectstring
    '            ksldesc1.table = "FA_TCMAS,FA_PARAM where tc between fromjvtc and tojvtc OR TC BETWEEN FROMSALESTC AND TOSALESTC"
    '            ksldesc1.listfield1 = "cast(tc as varchar)"
    '            ksldesc1.listfield2 = "tchead"
    '            ksldesc1.SetFocus
    '        End If
    '    End If
    'End If

Case 4
    If Opt = "mod" Then
        Combo1.Visible = False 'True
        Combo1.clear
        Set Rs = New Recordset
        Rs.Open "select currcode from fa_param", DB
        If Rs.RecordCount = 0 Then
            Combo1.List(0) = "RS"
        Else
            Combo1.List(0) = Rs(0)
        End If
        Set Rs = New Recordset
        Rs.Open "select currcode,convrate from fa_currate where currdate = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "'", DB
        If Rs.RecordCount > 0 Then
            Rs.MoveFirst
            Do While Not (Rs.EOF)
                Combo1.AddItem (Rs(0))
                Rs.MoveNext
            Loop
        End If
        Combo1.ListIndex = 0
    End If
End Select
End Sub
Private Sub txtfields_LostFocus(Index As Integer)

   On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    If Not (txtFields(Index).Text = "") Then
        txtFields(Index).Text = UCase(txtFields(Index).Text)
    End If
End If

   On Error GoTo 0
   Exit Sub

txtfields_LostFocus_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_LostFocus of Form JURNL", vbInformation, head
End Sub
Public Sub Query_mode()

   On Error GoTo query_mode_Error

    If Not Opt = "  " Then
        On Error GoTo er1
        If Opt = "add" Or Opt = "mod" Then
            Call disablcontls
        End If
        
        intTc = 0
        cnt = 0
        
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "SHAPE {select DISTINCT th.DIVCODE,th.TC,th.VOCNO,th.VOCDT,tc.tchead,TH.CURRCODE,TH.CONVRATE,SUM(ISNULL(L.CREDIT,0)) CREDIT,SUM(ISNULL(L.DEBIT,0)) DEBIT  from FA_JVHEAD th,FA_TCMAS tc,FA_JVLINE L where  th.divcode ='" & Divcode & "'  and th.tc = l.tc and th.divcode = l.divcode and th.vocno = l.vocno and th.vocdt = l.vocdt and  th.tc = tc.tc and th.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' group by th.DIVCODE,th.TC,th.VOCNO,th.VOCDT,tc.tchead,TH.CURRCODE,TH.CONVRATE Order by th.VOCNO} AS ParentCMD APPEND ({select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",c.cchead ""Description"",t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT from FA_JVLINE t,FA_CCMAS C where c.cccode =* t.cccode Order by t.vocsno } AS ChildCMD RELATE DIVCODE TO DIVCODE,TC TO TC,VOCNO TO VOCNO,VOCDT TO VOCDT) AS ChildCMD", DB, adOpenStatic, adLockOptimistic
        
        
        stbar.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
        Call bindcontls
        Call ENABLCONTLS
        delmodok.Visible = False
        delmodoklabel.Visible = False
        DataCombo1.Visible = False
        DTPicker1.Enabled = False
        MaskEdBox1(0).Enabled = False
        credit.DataField = "credit"
        debit.DataField = "debit"
        Set credit.DataSource = adoprimaryrs
        Set debit.DataSource = adoprimaryrs
        If Not (adoprimaryrs.EOF Or adoprimaryrs.BOF) Then
            Set grdDataGrid.DataSource = adoprimaryrs("ChildCMD").UnderlyingValue
            TCN.Text = adoprimaryrs("tchead")
            DataCombo1.Visible = False 'For modification & deletion
            delmodok.Visible = False 'For modification & deletion
            delmodoklabel.Visible = False
            grdDataGrid.Columns(0).Visible = False
            grdDataGrid.Columns(1).Visible = False
            grdDataGrid.Columns(2).Visible = False
            grdDataGrid.Columns(3).Visible = False
            grdDataGrid.Columns(4).Visible = False
            grdDataGrid.Columns(6).Width = 2325
            grdDataGrid.Columns(7).Width = 2055.118
            
            grdDataGrid.Columns(8).Width = 540.2835
             grdDataGrid.Columns(8).Visible = False
            
            grdDataGrid.Columns(9).Width = 1305.071
            grdDataGrid.Columns(10).Width = 1305.071
            grdDataGrid.Columns(12).Visible = False
            grdDataGrid.Columns(13).Visible = False
            grdDataGrid.Columns(14).Visible = False
            grdDataGrid.Columns(0).Width = 0
            grdDataGrid.Columns(9).Alignment = dbgRight
            grdDataGrid.Columns(10).Alignment = dbgRight
            grdDataGrid.Columns(10).NumberFormat = "#0.00"
            grdDataGrid.Columns(11).NumberFormat = "#0.00"
            grdDataGrid.ScrollBars = dbgAutomatic
        Else
            MsgBox "No records exist", vbInformation, head
            Call TXTCLR
            Set grdDataGrid.DataSource = Nothing
        End If
        desc.Caption = "Query"
        GLOBDATE = Date 'This variable is declared as global to show the date
        DATLAB.Caption = GLOBDATE
        Opt = "  "
    End If
    'Calling newform procedure from Module to disable buttons
    Call NEWFORM3(BUTTON, GSNO)
    Screen.MousePointer = 0
    Exit Sub
er1:
    If Err = -2147467259 Then
        MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
    End If
    Screen.MousePointer = 0

   On Error GoTo 0
   Exit Sub

query_mode_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure query_mode of Form JURNL", vbInformation, head
End Sub
Public Sub delmodproc(a As Long, B As Long)


    Dim Rs As Recordset
   On Error GoTo delmodproc_Error

    RW = 100
    If Opt = "mod" Then
        Call ENABLCONTLS
    Else
        Call disablcontls
    End If
    BUTTON(9).Enabled = True
    On Error GoTo ER
    credit.Visible = True
    debit.Visible = True
    Set adoprimaryrs = New Recordset
    Set adoSecondaryRS = New Recordset
    
    adoprimaryrs.Open "select th.DIVCODE,th.TC,th.VOCNO,th.VOCDT,tc.tchead,TH.CURRCODE,TH.CONVRATE,TH.ENTUSRID,TH.ENTDATE,TH.MODUSRID,TH.MODDATE,th.docno,th.ref_no,th.ref_date,th.tdsrefno,th.tdsdate from FA_JVHEAD th,FA_TCMAS tc where th.divcode = '" & Divcode & "' and  TH.tc = " & a & " and TH.Vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and TH.Vocno = " & B & " AND  th.tc = tc.tc ", DB, adOpenStatic, adLockBatchOptimistic
    adoSecondaryRS.Open "select DIVCODE,TC,VOCNO,VOCDT,VOCSNO,ACCODE ""AC Code"",narration1 ""Narration1"",narration2 ""Narration2"",cccode ""C.C"",debit ""Debit"",credit ""Credit"",CRDRFLG,FDEBIT,FCREDIT,docno  from FA_JVLINE  where divcode = '" & Divcode & "' and tc = " & a & " and Vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and Vocno = " & B & " ORDER BY VOCSNO  ", DB, adOpenStatic, adLockBatchOptimistic
    
    oldDocNo = B
    Call bindcontls
    Call TXTCLR
    Set Rs = New Recordset
    Rs.Open "SELECT SUM(ISNULL(CREDIT,0)),SUM(ISNULL(DEBIT,0)) FROM FA_JVLINE WHERE DIVCODE = '" & Divcode & "' AND VOCNO = " & val(adoprimaryrs("VOCNO")) & " AND TC = " & val(adoprimaryrs("TC")) & " AND VOCDT = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
    
    credit.Text = IIf(IsNull(Rs(0)), 0, Rs(0))
    debit.Text = IIf(IsNull(Rs(1)), 0, Rs(1))
    
    adoSecondaryRS.MoveFirst
    
    sumdbt = 0
    sumcrd = 0
    
'    For i = 1 To adoSecondaryRS.RecordCount
'        If Not (IsNull(adoSecondaryRS(12))) Then
'            sumdbt = sumdbt + adoSecondaryRS(12).Value
'
'            DB_V = sumdbt
'        Else
'            If Not adoSecondaryRS(9) = Empty Then
'                sumdbt = sumdbt + adoSecondaryRS(9).Value
'                DB_V = sumdbt
'                dr(adoSecondaryRS.AbsolutePosition) = adoSecondaryRS(9).Value
'            End If
'        End If
'        If Not (IsNull(adoSecondaryRS(13))) Then
'            sumcrd = sumcrd + adoSecondaryRS(13).Value
'            CR_V = sumcrd
'        Else
'            If Not adoSecondaryRS(10) = Empty Then
'                sumcrd = sumcrd + adoSecondaryRS(10).Value
'                CR_V = sumcrd
'                cr(adoSecondaryRS.AbsolutePosition) = adoSecondaryRS(10).Value
'            End If
'        End If
'        adoSecondaryRS.MoveNext
'    Next
'
'
'    If adoSecondaryRS.RecordCount > 0 Then
'        adoSecondaryRS.MoveFirst
'        Do While Not adoSecondaryRS.EOF
'            If Not (IsNull(adoSecondaryRS(12))) Then
'                adoSecondaryRS(9) = adoSecondaryRS(12).Value
'            End If
'            If Not (IsNull(adoSecondaryRS(13))) Then
'                adoSecondaryRS(10) = adoSecondaryRS(13).Value
'            End If
'            adoSecondaryRS.MoveNext
'        Loop
'    End If

    
    Set Rs = New Recordset
    Rs.Open "select currcode from fa_param", DB
    If Rs(0) = adoprimaryrs("currcode") Then
        Label5.Visible = False
        txtFields(3).Visible = False
        txtFields(4).Visible = True
    Else
        Label5.Visible = True
        txtFields(4).Visible = True
        txtFields(3).Visible = True
        txtFields(3).Locked = False 'True
    End If
    
    Combo1.Visible = False
    adoSecondaryRS.MoveFirst

'change 160508
'    debit.text = sumdbt
'    credit.text = sumcrd
    
        
    
    '******************************************************
    Set grdDataGrid.DataSource = adoSecondaryRS
    Set Rs = New Recordset
    Rs.Open "select drnote,crnote from fa_param", DB
    If val(txtFields(1).Text) = Rs(0) Then
        grdDataGrid.Columns(10).Visible = False
    ElseIf val(txtFields(1).Text) = Rs(1) Then
        grdDataGrid.Columns(9).Visible = False
    End If
    Frame1.Visible = True
    Frame1.ZOrder
    Frame2.Visible = False
    Set Rs = New Recordset
    Rs.Open "select tchead from FA_TCMAS where tc = " & val(adoprimaryrs("tc")), DB, adOpenStatic, adLockBatchOptimistic
    TCN.Text = Rs(0)
    grdDataGrid.Visible = True
    grdDataGrid.AllowAddNew = True
    grdDataGrid.AllowUpdate = True
    txtFields(2).Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False
    grdDataGrid.Columns(0).Visible = False
    grdDataGrid.Columns(1).Visible = False
    grdDataGrid.Columns(2).Visible = False
    grdDataGrid.Columns(3).Visible = False
    grdDataGrid.Columns(4).Visible = False
    grdDataGrid.Columns(11).Visible = False
    grdDataGrid.Columns(12).Visible = False
    grdDataGrid.Columns(13).Visible = False
    grdDataGrid.Columns(14).Visible = False
    grdDataGrid.Columns(9).Alignment = dbgRight
    grdDataGrid.Columns(10).Alignment = dbgRight
    grdDataGrid.Columns(9).NumberFormat = "#0.00"
    grdDataGrid.Columns(10).NumberFormat = "#0.00"
    grdDataGrid.Columns(0).Width = 0
    grdDataGrid.Columns(5).Locked = True
    grdDataGrid.Columns(10).Visible = True
    grdDataGrid.Columns(9).Visible = True
    
    grdDataGrid.Columns(8).Width = 1080
    
    grdDataGrid.Columns(8).Visible = False
    
    DataCombo1.Visible = False
    Label4.Visible = False
    delmodok.value = False
    delmodoklabel.Visible = False
    delmodok.Visible = False
    DataGrid1.Visible = False
    txtFields(5).Locked = True
    grdDataGrid.AllowAddNew = True
    grdDataGrid.AllowUpdate = True
    
    If Opt = "del" Then
        deltype = 1
    End If
Dim TmpRs As Recordset
Set TmpRs = New Recordset
'MsgBox vocNo & "  " & MaskEdBox1(0).Text
TmpRs.Open "SELECT ISNULL(Ref_no,0),ISNULL(Ref_Date,0),ISNULL(tdsrefno,0) FROM Fa_JvHEad WHERE Tc = '" & a & "' AND Divcode = '" & Divcode & "' AND Vocno = " & B & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'", DB, adOpenStatic
If TmpRs.RecordCount > 0 Then
    txtRefNo = TmpRs(0)
    MaskRefDate.Text = TmpRs(1)
    tdsrefno = TmpRs(2)
    
End If
    
    Exit Sub
ER:
    MsgBox "Select a valid value from the list", vbOKOnly, head + "Selection warning"
    BUTTON(9).Enabled = False

   On Error GoTo 0
   Exit Sub

delmodproc_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form JURNL", vbInformation, head
End Sub
Public Sub delmodclick()

    
   On Error GoTo delmodclick_Error

    credit.Visible = False
    debit.Visible = False
    
    Set adoprimaryrs = New Recordset
    '''''adoPrimaryRS.Open "SELECT cast(t.VOCNO as varchar)+'          '+cast(t.TC as varchar) DELMOD,t.vocno  ""Document No."",t.tc ""TC"",tc.tchead ""Description"",t.vocdt from FA_JVHEAD t,FA_TCMAS TC WHERE t.TC = TC.TC and t.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and T.divcode = '" & Divcode & "' ORDER BY t.VOCNO", db
    
    ''adoprimaryrs.Open "SELECT cast(t.VOCNO as varchar)+'          '+cast(t.TC as varchar)+'          '+convert(varchar,Vocdt,103) DELMOD,t.vocno  ""Document No."",t.tc ""TC"",tc.tchead ""Description"",t.vocdt from FA_JVHEAD t,FA_TCMAS TC WHERE  t.appdt is null and t.TC = TC.TC and t.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and T.divcode = '" & divcode & "' ORDER BY t.VOCNO", Db
'
'    If Repindex = 201 Then
'        adoprimaryrs.Open "SELECT cast(t.VOCNO as varchar)+'          '+cast(t.TC as varchar)+'          '+convert(varchar,Vocdt,103) DELMOD,t.vocno  ""Document No."",t.tc ""TC"",tc.tchead ""Description"",t.vocdt from FA_JVHEAD t,FA_TCMAS TC WHERE  t.appdt is null and t.TC = TC.TC and t.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and T.divcode = '" & Divcode & "' AND T.TC=(SELECT DRNOTE FROM FA_PARAM) ORDER BY t.VOCNO", DB
'    Else
'        adoprimaryrs.Open "SELECT cast(t.VOCNO as varchar)+'          '+cast(t.TC as varchar)+'          '+convert(varchar,Vocdt,103) DELMOD,t.vocno  ""Document No."",t.tc ""TC"",tc.tchead ""Description"",t.vocdt from FA_JVHEAD t,FA_TCMAS TC WHERE  t.appdt is null and t.TC = TC.TC and t.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and T.divcode = '" & Divcode & "' AND T.TC=(SELECT CRNOTE FROM FA_PARAM) ORDER BY t.VOCNO", DB
'    End If



    adoprimaryrs.Open "SELECT cast(t.VOCNO as varchar)+'          '+cast(t.TC as varchar)+'          '+convert(varchar,Vocdt,103) DELMOD,t.vocno  ""Document No."",t.tc ""TC"",tc.tchead ""Description"",t.vocdt from FA_JVHEAD t,FA_TCMAS TC WHERE  t.appdt is null and t.TC = TC.TC and t.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and T.divcode = '" & Divcode & "' AND (T.TC=(SELECT DRNOTE FROM FA_PARAM) OR T.TC=(SELECT CRNOTE FROM FA_PARAM))  ORDER BY t.VOCNO", DB
        
    If adoprimaryrs.RecordCount <= 0 Then
        MsgBox "No records found", vbInformation, head
        DB.BeginTrans
        Call BUTTON_Click(10)
        Exit Sub
    End If
    
    stbar.Panels(2).Text = "                                                                                                          "
    DataCombo1.Text = ""
    Set DataCombo1.RowSource = adoprimaryrs
    DataCombo1.ListField = "DELMOD" 'Delmod is the concatinated field
    DataCombo1.Visible = True
    Set DataGrid1.DataSource = adoprimaryrs
    DataGrid1.Columns(0).Visible = False
    Frame2.Visible = True
    Frame2.ZOrder
    If adoprimaryrs.RecordCount > 0 Then
        DataCombo1.Text = IIf(IsNull(adoprimaryrs(0)), 0, adoprimaryrs(0))
    End If
    DataCombo1.ZOrder
    Label4.ZOrder
    DataGrid1.Visible = True
    DataGrid1.Columns(1).Width = 1205
    DataGrid1.Columns(2).Width = 1310
    DataGrid1.Columns(3).Width = 2500
    Label4.Visible = True
    DataGrid1.ToolTipText = ""
    delmodok.Visible = True
    delmodok.ZOrder
    delmodoklabel.Visible = True
    grdDataGrid.AllowAddNew = True
    grdDataGrid.AllowDelete = True
    grdDataGrid.AllowUpdate = True
    Frame1.Visible = False
    grdDataGrid.Visible = False
    
    'DB.BeginTrans
    'Call adddelmod(BUTTON)
    
    '03/01/12 - internal CR
    If DB.State = 1 Then
    Else
     DB.BeginTrans
    End If
    
    Call adddelmod(BUTTON)
    
    
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True

   On Error GoTo 0
   Exit Sub

delmodclick_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodclick of Form JURNL", vbInformation, head
End Sub
Public Function newVocNo(TC As Integer, dt As String)
    Dim v_year  As String
    Dim Rs As Recordset
    Dim tcrs As Recordset
    Set tcrs = New Recordset
    v_stdate = Format(fnmfdate(dt), "dd-mmm-yyyy")
    v_endate = Format(fnmldate(dt), "dd-mmm-yyyy")
    Set Rs = New Recordset
    'RAVI
    Rs.Open "select max(vocno) from FA_JVHEAD where tc = " & TC & " and  divcode = '" & Divcode & "' and vocdt >= '" & Format(yfdate, "YYYY-MM-DD") & "' and Vocdt <= '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then
        newVocNo = Rs(0) + 1
    Else
        newVocNo = 1
    End If
End Function

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)


   On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 5
        If txtFields(5).Text = "" Then
        MsgBox "Document No cannot be empty", vbInformation, head
        Cancel = True
        Exit Sub
        End If
        If Opt = "add" Then
        If txtFields(5).Text <> "" Then
            Set Rs = New Recordset
            Rs.Open "Select count(*) from FA_JVHEAD where vocno='" & txtFields(5).Text & "' AND TC='" & txtFields(1).Text & "'", DB, adOpenStatic
            If Rs(0) > 0 Then
                MsgBox "This DocumentNo Already Defined", vbInformation, head
                txtFields(5).Text = ""
                Cancel = True
                Screen.MousePointer = 0
                Exit Sub
            End If
        End If
        End If
        If Opt = "mod" Then
        If txtFields(5).Text <> "" Then
            Set Rs = New Recordset
            Rs.Open "Select count(*) from FA_JVHEAD where Vocno='" & val(txtFields(5).Text) & "' AND TC='" & txtFields(1).Text & "' and Vocno<>" & oldDocNo & "", DB, adOpenStatic
            If Rs(0) > 0 Then
                MsgBox "This DocumentNo Already Defined", vbInformation, head
                txtFields(5).Text = ""
                txtFields(5).Text = oldDocNo
                Cancel = True
                Screen.MousePointer = 0
                Exit Sub
            End If
        End If
        End If
        
        
   Case 1
        LookUp.clear = True
        '''qrl = "select tc,tchead from FA_TCMAS,FA_PARAM where tc between fromjvtc and tojvtc OR TC BETWEEN FROMSALESTC AND TOSALESTC"
        '''qrl1 = "select tc,tchead,flg from FA_TCMAS,FA_PARAM where tc between fromjvtc and tojvtc"
        
        
        'qrl = "select tc,tchead from FA_TCMAS,FA_PARAM where tc between fromjvtc and tojvtc"
        
'
'        If Repindex = 201 Then
'            qrl = "select tc,tchead from FA_TCMAS,FA_PARAM where tc between DRNOTE and DRNOTE"
'        Else
'            qrl = "select tc,tchead from FA_TCMAS,FA_PARAM where tc between CRNOTE and CRNOTE"
'        End If
         
         
         qrl = "select tc,tchead from FA_TCMAS,FA_PARAM where tc between DRNOTE and CRNOTE"
         
         
        LookUp.query = qrl
        LookUp.Caption = "TC Listing"
        LookUp.DefCol = "tchead"
        LookUp.ALIGN = "1500,3900"
        LookUp.Show vbModal
         
        If LookUp.Cancel = False Then
        
            If Opt = "add" Or Opt = "mod" Then
                If LookUp.Fields(0) = "" Then 'ksldesc1.COD
                    MsgBox "No Transaction Codes found", vbInformation, head
                    Exit Sub
                End If
                txtFields(1).Text = LookUp.Fields(0)  'ksldesc1.CODE
                TCN.Text = LookUp.Fields(1) 'ksldesc1.description
      
                Set Rs = New Recordset
                Rs.Open "select tc,tchead,flg from FA_TCMAS where tc ='" & txtFields(1).Text & "'", DB, adOpenStatic
                If Not Rs.EOF Then
                    Text3.Text = IIf(IsNull(Rs("flg")), "", Rs("flg"))
                End If
      
                Call ENABLCONTLS
                txtFields(2).Locked = True
                vocno = newVocNo(adoprimaryrs(1).value, MaskEdBox1(0).Text)
                docNo = newdocno(adoprimaryrs(1).value, MaskEdBox1(0).Text)
                txtFields(5).Text = val(docNo)
                txtFields(2).Text = val(vocno)
                BUTTON(9).Enabled = True
                BUTTON(10).Enabled = True
                stbar.Panels(2).Text = "Please select a date"
                MaskEdBox1(0).TabStop = False
                
                MaskEdBox1(0).Enabled = False 'True
                
                
                MaskEdBox1(0).SetFocus
                txtFields(2).Enabled = True
                txtFields(2).SetFocus
            End If
        Else
                Call BUTTON_Click(10)
                Exit Sub
        End If
        
End Select
End If

   On Error GoTo 0
   Exit Sub

txtfields_Validate_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form JURNL", vbInformation, head
End Sub
Private Sub txtgl_Click()

   On Error GoTo txtgl_Click_Error

    txtgl.SelStart = 0
    txtgl.SelLength = Len(txtgl.Text)
    GL = "Y"
    Ksldesc1.listfield1 = "PRTYTYP"
    Call Command3_Click

   On Error GoTo 0
   Exit Sub

txtgl_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtgl_Click of Form JURNL", vbInformation, head
End Sub
Public Sub TXTCLR()

   On Error GoTo TXTCLR_Error

    credit.DataField = ""
    debit.DataField = ""
    Set credit.DataSource = Nothing
    Set debit.DataSource = Nothing
    credit.Text = ""
    debit.Text = ""
    txtRefNo = ""

tdsrefno = ""

   On Error GoTo 0
   Exit Sub

TXTCLR_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TXTCLR of Form JURNL", vbInformation, head
End Sub
Public Sub setf()

   On Error GoTo setf_Error

    grdDataGrid.Col = 9
    grdDataGrid.SetFocus
    grdDataGrid.EditActive = True

   On Error GoTo 0
   Exit Sub

setf_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure setf of Form JURNL", vbInformation, head
End Sub
Private Sub txtqry_Change()

   On Error GoTo txtqry_Change_Error

    If Len(txtqry) <> 0 Then
        qryok.Enabled = True
        qryok.Default = True
    Else
        qryok.Enabled = False
    End If

   On Error GoTo 0
   Exit Sub

txtqry_Change_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtqry_Change of Form JURNL", vbInformation, head
End Sub
Private Sub txtqry_KeyPress(KeyAscii As Integer)

   On Error GoTo txtqry_KeyPress_Error

    If KeyAscii <> 27 Then
       tonumle1 txtqry, 10, KeyAscii
    Else
       Frame7.Visible = False
    End If

   On Error GoTo 0
   Exit Sub

txtqry_KeyPress_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtqry_KeyPress of Form JURNL", vbInformation, head
End Sub
Public Sub txtclear1()

    On Error Resume Next
    MaskEdBox1(0).Text = "__/__/____"
    TCN.Text = ""
    Set grdDataGrid.DataSource = Nothing
    Dim oText As TextBox
    For Each oText In Me.txtFields
        oText.Text = ""
    Next
    For Each oText In Me.txtFields
        Set oText.DataSource = Nothing
    Next
End Sub
Sub Save(KeyCode As Integer, Shift As Integer)

   On Error GoTo Save_Error

    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        If Shift = 2 And KeyCode = 83 And BUTTON(9).Enabled = True Then
            Call BUTTON_Click(9)
            Exit Sub
        End If
        
        
        'Cancel
            If Shift = 2 And KeyCode = 90 And BUTTON(10).Enabled = True Then
            Call BUTTON_Click(10)
            Exit Sub
            End If
    End If
    
    If Opt = "add" Then
        If Shift = 0 And KeyCode = 112 Then
            'Dim f As gledmas
            madd = True
            'gledmas.Show
            Exit Sub
        ElseIf Shift = 0 And KeyCode = 113 Then
            madd = True
            'slmaster.Show
'           ''' ksldesc1.SetFocus
        End If
    End If
    
    ' Addition ^A
    
'    If Shift = 2 And KeyCode = 107 And BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)
'        Exit Sub
'    End If
    
    If Shift = 2 And KeyCode = 65 And BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
        Exit Sub
    End If
    ' Modification ^M
    If Shift = 2 And KeyCode = 77 And BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
        Exit Sub
    End If
    ' Deletion ^-
'    If Shift = 2 And KeyCode = 109 And BUTTON(2).Enabled = True Then
'        Call BUTTON_Click(2)
'        Exit Sub
'    End If
    If Shift = 2 And KeyCode = 68 And BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
        Exit Sub
    End If
    'Exit
    If Shift = 2 And (KeyCode = 17 Or KeyCode = 81) And BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
        Exit Sub
    End If
    
    'Cancel
    
    If Shift = 2 And KeyCode = 90 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
        Exit Sub
    End If

If Opt <> "add" Or Opt <> "mod" Or Opt <> "del" Then
    'List ^T  (84,68)
    If Shift = 2 And (KeyCode = 84 Or KeyCode = 68) Then
        Call BUTTON_Click(12)
        Exit Sub
    End If
    
     'First ^F
    If Shift = 2 And (KeyCode = 70) And BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
        Exit Sub
    End If
    
    'Next ^N
    If Shift = 2 And KeyCode = 78 And BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
        Exit Sub
    End If
    
    'Print   ^P
    If Shift = 2 And KeyCode = 80 And BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
        Exit Sub
    End If
    
    '^O Previous
    If Shift = 2 And KeyCode = 79 And BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
        Exit Sub
    End If
    
    'Last ^L
    If Shift = 2 And KeyCode = 76 And BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
        Exit Sub
    End If
    
'   Find ^R
    If Shift = 2 And KeyCode = 82 And BUTTON(4).Enabled = True Then
        Call BUTTON_Click(3)
        Exit Sub
    End If
      
    
    
End If

   On Error GoTo 0
   Exit Sub

Save_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Save of Form JURNL", vbInformation, head
    
End Sub
Public Function newdocno(TC As Integer, dt As String)
    Dim v_year  As String
    Dim Rs As Recordset
    Dim tcrs As Recordset
    Set tcrs = New Recordset
    v_stdate = Format(fnmfdate(dt), "dd-mmm-yyyy")
    v_endate = Format(fnmldate(dt), "dd-mmm-yyyy")
    Set Rs = New Recordset
    Rs.Open "select max(docno) from FA_JVHEAD where tc = " & TC & " and divcode = '" & Divcode & "' and vocdt >= '" & Format(yfdate, "YYYY-MM-DD") & "' and Vocdt <= '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then
        newdocno = Rs(0) + 1
    Else
        newdocno = 1
    End If
End Function

Private Sub Show_Rec(N As String)

Dim RsJv As Recordset

    Select Case N
        Case "F"
                RsNav.MoveFirst
                txtFields(1) = RsNav("TC")
                txtFields(2) = RsNav("Vocno")
                MaskEdBox1(0).Text = RsNav("Vocdt")
                txtRefNo = IIf(IsNull(RsNav("Ref_no")), 0, RsNav("Ref_no"))
                MaskRefDate.Text = IIf(IsNull(RsNav("ref_date")), Date, RsNav("ref_date"))
                
                tdsrefno = IIf(IsNull(RsNav("tdsrefno")), 0, RsNav("tdsRefno"))
                DTPicker2.value = IIf(IsNull(RsNav("tdsdate")), Date, RsNav("tdsdate"))
        
        Case "P"
                RsNav.MovePrevious
                If RsNav.BOF Then RsNav.MoveFirst
                txtFields(1) = RsNav("TC")
                txtFields(2) = RsNav("Vocno")
                MaskEdBox1(0).Text = RsNav("Vocdt")
                txtRefNo = IIf(IsNull(RsNav("Ref_no")), 0, RsNav("Ref_no"))
                MaskRefDate.Text = IIf(IsNull(RsNav("ref_date")), Date, RsNav("ref_date"))
                
                tdsrefno = IIf(IsNull(RsNav("tdsrefno")), 0, RsNav("tdsRefno"))
                DTPicker2.value = IIf(IsNull(RsNav("tdsdate")), Date, RsNav("tdsdate"))

        
        Case "N"
        
                RsNav.MoveNext
                If RsNav.EOF Then RsNav.MoveLast
                txtFields(1) = RsNav("TC")
                txtFields(2) = RsNav("Vocno")
                MaskEdBox1(0).Text = RsNav("Vocdt")
                txtRefNo = IIf(IsNull(RsNav("Ref_no")), 0, RsNav("Ref_no"))
                MaskRefDate.Text = IIf(IsNull(RsNav("ref_date")), Date, RsNav("ref_date"))
                
                tdsrefno = IIf(IsNull(RsNav("tdsrefno")), 0, RsNav("tdsRefno"))
                DTPicker2.value = IIf(IsNull(RsNav("tdsdate")), Date, RsNav("tdsdate"))

        
        Case "L"
                RsNav.MoveLast
                txtFields(1) = RsNav("TC")
                txtFields(2) = RsNav("Vocno")
                MaskEdBox1(0).Text = RsNav("Vocdt")
                txtRefNo = IIf(IsNull(RsNav("Ref_no")), 0, RsNav("Ref_no"))
                MaskRefDate.Text = IIf(IsNull(RsNav("ref_date")), Date, RsNav("ref_date"))
                
                tdsrefno = IIf(IsNull(RsNav("tdsrefno")), 0, RsNav("tdsRefno"))
                DTPicker2.value = IIf(IsNull(RsNav("tdsdate")), Date, RsNav("tdsdate"))
    
            
    
    End Select

               Set RsJv = New Recordset
               RsJv.Open "SELECT TcHead FROM Fa_Tcmas WHERE Tc = '" & txtFields(1) & "'", DB, adOpenStatic
               TCN = RsJv(0)

               Set RsJv = New Recordset
               RsJv.Open "SELECT Accode, Narration1, Narration2, Debit, Credit FROM Fa_Jvline WHERE Divcode = '" & Divcode & "' AND Vocno = '" & txtFields(2) & "' AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND Tc = '" & txtFields(1) & "' order by vocsno", DB, adOpenStatic
               Set grdDataGrid.DataSource = RsJv
            
               stbar.Panels(2).Text = "Record " & RsNav.AbsolutePosition & " of " & RsNav.RecordCount
               
End Sub
Public Sub party_lookupFA()
    txtgl.Visible = False
    If GL = "Y" Then
       Label3.Caption = "General Ledger Listing"
       LookUp.clear = True
       qrl = "select glcode,glhead from fa_glmas where  glcode not in (select ISNULL(glcode,0) from fa_prty) and glcode not in (select glcode from fa_tcmas where tc between " & fcash & " and " & tcash & ")"
       LookUp.query = qrl
       LookUp.Caption = "General Ledger Listing"
       LookUp.DefCol = "glhead"
       LookUp.ALIGN = "1500,3900"
       LookUp.Show vbModal
       MsgBox LookUp.Fields(1)
       If LookUp.Cancel = False Then

       If Opt = "add" Or Opt = "mod" Then
                        If LookUp.Fields(0) = "" Then 'ksldesc1.CODE = "" Then
                            MsgBox "No General Ledger Codes found", vbInformation, head
                            Exit Sub
                        End If
      Call party_lookupFA1
      End If
        Else
            'MsgBox "Enter valid Transaction Code", vbInformation, Head
            'txtFields(1).SetFocus
            MsgBox "Enter Valid Account Code", vbInformation, head
                                   
            
            grdDataGrid.Col = 5
            grdDataGrid.SetFocus
            
            '131108
            Exit Sub
            
            
        End If
        stbar.Panels(2).Text = "Please Select a GLcode"
        
    Else
        Label3.Caption = "Sub Ledger Listing"

       prty = LookUp.Fields(0)
       LookUp.clear = True
       ''qrl = "select slcode,slname from FA_SLMAS where prtytyp = '" & prty & "'"
       'qrl = "select slcode,slname+','+isnull(city,'') AS SLNAME from FA_SLMAS where prtytyp = '" & prty & "'"
       
       qrl = "select slcode,slname AS SLNAME,isnull(city,'') as city from FA_SLMAS where prtytyp = '" & prty & "'"
       
       LookUp.query = qrl
       LookUp.Caption = "Sub Ledger Listing"
       LookUp.DefCol = "slname"
       LookUp.ALIGN = "1500,3900"
       LookUp.Show vbModal

       If LookUp.Cancel = False Then

            If Opt = "add" Or Opt = "mod" Then
            If LookUp.Fields(0) = "" Then 'ksldesc1.CODE = "" Then
                MsgBox "No General Ledger Codes found", vbInformation, head
                Exit Sub
            End If
            Call party_lookupFA1
      End If
        Else
            'MsgBox "Enter valid Transaction Code", vbInformation, Head
            'txtFields(1).SetFocus
            MsgBox "Enter Valid Account Code", vbInformation, head
            
                        
            
            grdDataGrid.Col = 5
            grdDataGrid.SetFocus
            
            '
            Exit Sub
            
            
            
        End If
                
        'stbar.Panels(2).text = "Please Select a Vendor"
    End If
    Exit Sub
End Sub

Public Sub party_lookupFA1()
    grdDataGrid.Columns(5).Text = LookUp.Fields(0)
    If Opt = "add" Or Opt = "mod" Then
        Set Rs = New Recordset
        Rs.Open "select c.cccode,c.cchead from FA_CCGLMAS G,FA_CCMAS C WHERE G.GLCODE = '" & grdDataGrid.Columns(5) & "' AND G.CCCODE = C.CCCODE ", DB
        If Rs.RecordCount <= 0 Then
            grdDataGrid.Columns(8).Text = ""
        End If
        grdDataGrid.Columns(0) = Divcode
        grdDataGrid.Columns(1).value = adoprimaryrs("tc").value
        grdDataGrid.Columns(3).value = Format(MaskEdBox1(0).Text, "dd-mmm-yyyy")
      If LookUp.Fields(0) = "slcode" Then grdDataGrid.Columns(11).Text = Mid$(grdDataGrid.Columns(5).Text, 1, 1)
        If adoSecondaryRS.AbsolutePosition > 1 Then
            grdDataGrid.Columns(5).Text = LookUp.Fields(0)
            grdDataGrid.Columns(6).Text = "" ' narr1  '15/09/2009
            grdDataGrid.Col = 6
        Else
            grdDataGrid.Columns(6).Text = ""
            grdDataGrid.Col = 6
        End If
        grdDataGrid.SetFocus
        
    ElseIf Opt = "mod" Then
        If LookUp.Fields(0) = "slcode" Then
            grdDataGrid.Columns(11).Text = Mid$(grdDataGrid.Columns(5).Text, 1, 1)
            Set Rs = New Recordset
            Rs.Open "update FA_JVLINE set crdrflg = '" & grdDataGrid.Columns(11).Text & "',accode = '" & grdDataGrid.Columns(5).Text & "'  where divcode = '" & adoprimaryrs("divcode") & "' and tc = " & val(adoprimaryrs("tc")) & " and vocno = " & val(adoprimaryrs("vocno")) & " and vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' and vocsno = " & val(grdDataGrid.Columns(4).value), DB, adOpenStatic, adLockBatchOptimistic
        Else
            Set Rs = New Recordset
            Rs.Open "update FA_JVLINE set crdrflg = null,accode = '" & grdDataGrid.Columns(5).Text & "'  where divcode = '" & adoprimaryrs("divcode") & "' and tc = " & val(adoprimaryrs("tc")) & " and vocno = " & val(adoprimaryrs("vocno")) & " and vocdt = '" & Format(adoprimaryrs("vocdt"), "yyyy-mm-dd") & "' and vocsno = " & val(grdDataGrid.Columns(4).value), DB, adOpenStatic, adLockBatchOptimistic
        End If
    End If
    
    'If Lookup.Fields(0) = "slcode" Then
    If LookUp.grid.Columns(0).Caption = "slcode" Then
        Dim rscity As Recordset
        Set rscity = New Recordset
        rscity.Open "select city from fa_slmas where slcode='" & Trim(LookUp.Fields(0)) & "'", DB
        If rscity.RecordCount <> 0 Then
            stbar.Panels(2).Text = LookUp.Fields(1) & "," & rscity(0)
        Else
            stbar.Panels(2).Text = LookUp.Fields(1)
        End If
    Else
        stbar.Panels(2).Text = LookUp.Fields(1)
    End If
    LookUp.clear = True
End Sub

'Public Sub FAupdate()
'Dim i As Integer, Value As Double
'Dim bval As Double, GL As String, GNAME As String
'Dim db1 As Connection
''Select Case OPT
''Case "add"
'
'    '----------------------------------------- FOR FA UPDATION ----------------------------------------------------'
'
'
'    Set db = New Connection
'    db.CursorLocation = adUseClient
'    db.Open "PROVIDER=MSDataShape;" + connectstring
'
'
'    Set rstds2 = New Recordset
'    rstds2.Open "Select * from fa_jvline where accode=(select glcode from fa_tds_gl where tds_gl_code=1) and Divcode = '" & divcode & "' AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'", db, adOpenDynamic, adLockOptimistic
'
'     'MsgBox "Connect"
'
'
'     If Not rstds2.EOF Then
'      db.Execute "insert into FA_TDS(divcode,vocno,VOCDT,SLCODE," & _
'        "TDS_AMOUNT) values('" & tstds2("divcode") & "','" & rstds2("VOCNO") & "','" & rstds2("VOCDT") & "','" & rstds2("ACCODE") & "'," & _
'        rstds2("CREDIT") & ")"
'    End If
'
'
'
'
'
'    'Do While Not GRPrs.EOF
'
'        'db.Execute "insert into FA_TDS(divcode,vocno,VOCDT,SLCODE,TDS_AMOUNT,TDS_RATE,TDS_TYPE,TDS_PAID,BANK_CODE,CHALLAN_NO,CHALLAN_DT,AMOUNT," & _
'        "TDS_GL_CODE) values('" & divcode & "','" & GRPRS("VOCNO") & "','" & GRPRS("VOCDT") & "','" & GRPRS("SLCODE") & "'," & _
'        GRPRS("CREDIT") & "," & adoPrimaryRS("pjvocno") & ",'" & _
'        Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & "','" & adoPrimaryRS("billno") & _
'        "','" & Format(adoPrimaryRS("billdt"), "YYYY-MM-DD") & "'," & Value & ",0,'" & _
'        Format(DateAdd("d", rs1(0), PRLrs("docdt")), "yyyy-mm-dd") & "')"
'
'
'
'
''    'PURDT INSERTION
''    i = 0
''    Value = 0
''    GRPrs.MoveFirst
''    Do While Not GRPrs.EOF
''        i = i + 1
''        Value = GRPrs(0)
''        Set rs6 = New Recordset
''        rs6.Open "SELECT GRPNAME,a.GLCODE FROM IN_GRP a,FA_GLMAS b WHERE A.GLCODE = B.GLCODE " & _
''                 "AND GRPCODE = '" & GRPrs("GRPCODE") & "'", db
''        If rs6.RecordCount > 0 Then
''            GL = rs6(1)
''            GNAME = rs6(0)
''        Else
''            Set rs6 = New Recordset
''            rs6.Open "SELECT GLCODE FROM FA_TCMAS WHERE TC = " & adoPrimaryRS("FATC") & "", db
''            GL = rs6(0)
''            GNAME = ""
''        End If
''        If GRPrs.AbsolutePosition = GRPrs.RecordCount Then
''            Value = Value + NVAL
''        End If
''        db.Execute "insert into FA_PURDT(divcode,tc,pjvno,pjvdt,pjvsno,glcode,narration1," & _
''                   "amount) values('" & divcode & "'," & adoPrimaryRS("fatc") & "," & _
''                   adoPrimaryRS("pjvocno") & ",'" & Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & _
''                   "'," & i & ", '" & GL & "' ,'Purchase Bill for " & Mid$(GNAME, 1, 130) & _
''                   "'," & Value & ")"
''        GRPrs.MoveNext
''    Loop
''
''    'Debit Note to be raised if difference is > GIVEN AMOUNT
''    If IsNull(adoPrimaryRS("DBNO")) = False Then
''         Set tcrs = New Recordset
''         tcrs.Open "select drnote  from FA_PARAM", db
''
''         db.Execute "insert into FA_JVHEAD(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc) " & _
''                    "values('" & divcode & "'," & tcrs(0) & "," & adoPrimaryRS("dbno") & ",'" & _
''                    Format(adoPrimaryRS("dbdt"), "YYYY-MM-DD") & "','" & adoPrimaryRS("billno") & _
''                    "','" & Format(adoPrimaryRS("billdt"), "YYYY-MM-DD") & "'," & _
''                    adoPrimaryRS("tc") & ")"
''         'debit party code
''         db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1," & _
''                    "debit,crdrflg,amtdue) values('" & divcode & "'," & tcrs(0) & "," & _
''                    adoPrimaryRS("dbno") & ",'" & Format(adoPrimaryRS("dbdt"), "YYYY-MM-DD") & _
''                    "',1,'" & adoPrimaryRS("slcode") & "','" & adoPrimaryRS("dbnar") & "'," & _
''                    adoPrimaryRS("dbamt") & ",'" & Mid$(adoPrimaryRS("slcode"), 1, 1) & _
''                    "'," & adoPrimaryRS("dbamt") & ")"
''
''         'credit tc's gl
''         GRPrs.MoveFirst
''         i = 1
''         Do While Not GRPrs.EOF
''            If GRPrs("diffval").Value > 0 Then
''                i = i + 1
''                Set rs6 = New Recordset
''                rs6.Open "SELECT GRPNAME,a.GLCODE FROM IN_GRP a,FA_GLMAS b WHERE " & _
''                         "A.GLCODE = B.GLCODE AND GRPCODE = '" & GRPrs("GRPCODE") & "'", db
''                If rs6.RecordCount > 0 Then
''                    GL = rs6(1)
''                    GNAME = rs6(0)
''                Else
''                    Set rs6 = New Recordset
''                    rs6.Open "SELECT GLCODE FROM FA_TCMAS WHERE TC = " & adoPrimaryRS("FATC") & "", db
''                    GL = rs6(0)
''                    GNAME = ""
''                End If
''                db.Execute "Insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode, " & _
''                           "narration1,credit) values('" & divcode & "'," & tcrs(0) & "," & _
''                           adoPrimaryRS("dbno") & ",'" & Format(adoPrimaryRS("dbdt"), "YYYY-MM-DD") & _
''                           "'," & i & ",'" & GL & "','" & adoPrimaryRS("dbnar") & "'," & _
''                           GRPrs("diffval") & ")"
''            End If
''            GRPrs.MoveNext
''         Loop
''    End If
''
''    '----------------------------------------- FOR FA UPDATION END ----------------------------------------------------'
''
''Case "mod"
''
''    'FA_PURDT DELETION
''    Set rs = New Recordset
''    rs.Open "SELECT SUM(bquantity*brate) as BIVALUE,SUBSTRING(ITEMCODE,1, " & GrpLen & ") as GRPCODE, " & _
''            "SUM((bquantity*brate)-bdisamt+bexamt+btaxamt+bscamt+bothchgs) as BVALUE FROM " & _
''            "IN_PJL where DIVCODE = '" & divcode & "' and FATC = " & adoPrimaryRS("FATC") & _
''            " and PJVOCNO = " & adoPrimaryRS("PJVOCNO") & " and PJVOCDT = '" & _
''            Format(adoPrimaryRS("PJVOCDT"), "YYYY-MM-DD") & "' group by " & _
''            "SUBSTRING(ITEMCODE,1, " & GrpLen & ") order by SUBSTRING(ITEMCODE,1, " & GrpLen & ")", db, adOpenStatic, adLockBatchOptimistic
''    rs.MoveFirst
''    i = 0
''    Do While Not rs.EOF
''        i = i + 1
''        db.Execute "delete from FA_PURDT where divcode = '" & divcode & "' and  tc = " & _
''                   adoPrimaryRS("FATC") & " and pjvno= " & adoPrimaryRS("pjvocno") & _
''                   " and pjvdt = '" & Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & _
''                   "' and PJVSNO = " & i
''        rs.MoveNext
''    Loop
''
''    'FA_PURHD DELETION
''    db.Execute "delete from FA_PURHD where divcode= '" & divcode & "' and slcode= '" & _
''               adoPrimaryRS("slcode") & "' and tc= " & adoPrimaryRS("fatc") & _
''               " and pjvno = " & adoPrimaryRS("pjvocno") & " and pjvdt = '" & _
''               Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & "'"
''
''    Set rs2 = New Recordset
''    If Option1.Value = False Then
''        rs2.Open "select CCHG = isnull(INSURANCE,0)+isnull(PKGFWDCHG,0)+isnull(FREIGHT,0) " & _
''            "from IN_PJH where DIVCODE = '" & divcode & "' and FATC = " & adoPrimaryRS("fatc") & _
''            " and PJVOCNO = " & adoPrimaryRS("pjvocno") & " and PJVOCDT = '" & _
''            Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & "'", db
''    Else
''        rs2.Open "select CCHG = isnull(INSURANCE,0)+isnull(PKGFWDCHG,0) from IN_PJH where " & _
''            "DIVCODE = '" & divcode & "' and FATC = " & adoPrimaryRS("fatc") & _
''            " and PJVOCNO = " & adoPrimaryRS("pjvocno") & " and PJVOCDT = '" & _
''            Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & "'", db
''    End If
''
''    PRLrs.MoveLast
''    Set rs = New Recordset
''    rs.Open "SELECT SUM(ISNULL(BVALUE,0)) FROM IN_PJL WHERE DIVCODE = '" & divcode & _
''            "' and FATC = " & adoPrimaryRS("FATC") & " and PJVOCNO = " & _
''            adoPrimaryRS("PJVOCNO") & " and PJVOCDT = '" & Format(adoPrimaryRS("PJVOCDT"), "YYYY-MM-DD") & "'", db
''    If Val(Text5.text) <> rs(0).Value Then
''        NVAL = (Val(Text5.text)) - rs(0).Value
''        db.Execute "UPDATE IN_PJL SET BVALUE = BVALUE + " & NVAL & " where DIVCODE = '" & _
''            divcode & "' and FATC = " & adoPrimaryRS("FATC") & " and PJVOCNO = " & _
''            adoPrimaryRS("PJVOCNO") & " and PJVOCDT = '" & Format(adoPrimaryRS("PJVOCDT"), "YYYY-MM-DD") & _
''            "' and PORDNO = '" & PRLrs("PORDNO") & "' and PORDDT = '" & _
''            Format(PRLrs("PORDDT"), "YYYY-MM-DD") & "' and POGRP = '" & PRLrs("POGRP") & _
''            "' and TC = " & PRLrs("TC") & " and DOCNO = '" & PRLrs("DOCNO") & _
''            "' and DOCDT = '" & Format(PRLrs("DOCDT"), "YYYY-MM-DD") & "' and ITEMCODE = '" & _
''            PRLrs("ITEMCODE") & "'"
''    End If
''
''    Set GRPrs = New Recordset
''    GRPrs.Open "SELECT SUM(ISNULL(BVALUE,0)) as bvalue,SUBSTRING(ITEMCODE,1, " & GrpLen & ") as GRPCODE, " & _
''            "SUM(ISNULL(BVALUE,0)-ISNULL(VALUE,0)) as diffamt FROM IN_PJL where DIVCODE = '" & _
''            divcode & "' and FATC = " & adoPrimaryRS("FATC") & " and PJVOCNO = " & _
''            adoPrimaryRS("PJVOCNO") & " and PJVOCDT = '" & Format(adoPrimaryRS("PJVOCDT"), "YYYY-MM-DD") & _
''            "' group by SUBSTRING(ITEMCODE,1, " & GrpLen & ") order by SUBSTRING(ITEMCODE,1, " & GrpLen & ")", db, adOpenStatic, adLockBatchOptimistic
''    GRPrs.MoveFirst
''    Value = 0
''    Do While Not GRPrs.EOF
''        Value = Value + GRPrs(0)
''        GRPrs.MoveNext
''    Loop
''
''    NVAL = 0
''    If Val(Value) <> Text5.text Then
''        NVAL = Val(Text5.text) - Value
''        Value = Value + NVAL
''    End If
''
''    'PURHD INSERTION
''    PRLrs.MoveFirst
''    Set rs1 = New Recordset
''    rs1.Open "select isnull(crddays,0) from fa_slmas where slcode = '" & _
''             adoPrimaryRS("slcode") & "'", db
''    db.Execute "insert into FA_PURHD(divcode,slcode,tc,pjvno,pjvdt,billno,billdt,billamt," & _
''               "taxamt,duedt) values('" & divcode & "','" & adoPrimaryRS("SLCODE") & "'," & _
''               adoPrimaryRS("fatc") & "," & adoPrimaryRS("pjvocno") & ",'" & _
''               Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & "','" & _
''               adoPrimaryRS("billno") & "','" & Format(adoPrimaryRS("billdt"), "YYYY-MM-DD") & _
''               "'," & Value & ",0,'" & _
''               Format(DateAdd("d", rs1(0), PRLrs("docdt")), "yyyy-mm-dd") & "')"
''
''    'PURDT INSERTION
''    i = 0
''    Value = 0
''    GRPrs.MoveFirst
''    Do While Not GRPrs.EOF
''        i = i + 1
''        Value = GRPrs(0)
''        Set rs6 = New Recordset
''        rs6.Open "SELECT GRPNAME,a.GLCODE FROM IN_GRP a,FA_GLMAS b WHERE A.GLCODE = B.GLCODE " & _
''                 "AND GRPCODE = '" & GRPrs("GRPCODE") & "'", db
''        If rs6.RecordCount > 0 Then
''            GL = rs6(1)
''            GNAME = rs6(0)
''        Else
''            Set rs6 = New Recordset
''            rs6.Open "SELECT GLCODE FROM FA_TCMAS WHERE TC = " & adoPrimaryRS("FATC") & "", db
''            GL = rs6(0)
''            GNAME = ""
''        End If
''        If GRPrs.AbsolutePosition = GRPrs.RecordCount Then
''            Value = Value + NVAL
''        End If
''        db.Execute "insert into FA_PURDT(divcode,tc,pjvno,pjvdt,pjvsno,glcode,narration1, " & _
''                   "amount) values('" & divcode & "'," & adoPrimaryRS("fatc") & "," & _
''                   adoPrimaryRS("pjvocno") & ",'" & Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & _
''                   "'," & i & ", '" & GL & "' ,'Purchase Bill for " & Mid$(GNAME, 1, 130) & _
''                   "'," & Value & ")"
''        GRPrs.MoveNext
''    Loop
''
''    'Debit Note to be raised if difference is > GIVEN AMOUNT
''    If IsNull(adoPrimaryRS("DBNO")) = False Then
''         Set tcrs = New Recordset
''         tcrs.Open "select drnote  from FA_PARAM", db
''         db.Execute "insert into FA_JVHEAD(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc) " & _
''                    "values('" & divcode & "'," & tcrs(0) & "," & adoPrimaryRS("dbno") & ",'" & _
''                    Format(adoPrimaryRS("dbdt"), "YYYY-MM-DD") & "','" & adoPrimaryRS("billno") & _
''                    "','" & Format(adoPrimaryRS("billdt"), "YYYY-MM-DD") & "'," & _
''                    adoPrimaryRS("tc") & ")"
''
''         'debit party code
''         db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1," & _
''                    "debit,crdrflg,amtdue) values('" & divcode & "'," & tcrs(0) & "," & _
''                    adoPrimaryRS("dbno") & ",'" & Format(adoPrimaryRS("dbdt"), "YYYY-MM-DD") & _
''                    "',1,'" & adoPrimaryRS("slcode") & "','" & adoPrimaryRS("dbnar") & "'," & _
''                    adoPrimaryRS("dbamt") & ",'" & Mid$(adoPrimaryRS("slcode"), 1, 1) & "'," & _
''                    adoPrimaryRS("dbamt") & ")"
''
''         'credit tc's gl
''         GRPrs.MoveFirst
''         i = 1
''         Do While Not GRPrs.EOF
''            If GRPrs("diffamt").Value > 0 Then
''                i = i + 1
''                Set rs6 = New Recordset
''                rs6.Open "SELECT GRPNAME,a.GLCODE FROM IN_GRP a,FA_GLMAS b WHERE " & _
''                         "A.GLCODE = B.GLCODE AND GRPCODE = '" & GRPrs("GRPCODE") & "'", db
''                If rs6.RecordCount > 0 Then
''                    GL = rs6(1)
''                    GNAME = rs6(0)
''                Else
''                    Set rs6 = New Recordset
''                    rs6.Open "SELECT GLCODE FROM FA_TCMAS WHERE TC = " & adoPrimaryRS("FATC") & "", db
''                    GL = rs6(0)
''                    GNAME = ""
''                End If
''                db.Execute "Insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode," & _
''                           "narration1,credit) values('" & divcode & "'," & tcrs(0) & "," & _
''                           adoPrimaryRS("dbno") & ",'" & Format(adoPrimaryRS("dbdt"), "YYYY-MM-DD") & _
''                           "'," & i & ",'" & GL & "','" & adoPrimaryRS("dbnar") & "'," & _
''                           GRPrs("diffamt") & ")"
''            End If
''            GRPrs.MoveNext
''         Loop
''    End If
''
''Case "del"
''
''    'FA_PURDT DELETION
'''    Set rs = New Recordset
'''    rs.Open "SELECT SUM(isnull(bquantity,0)*isnull(brate,0)) as BIVALUE,SUBSTRING(ITEMCODE,1, " & grplen & ") as GRPCODE,SUM((bquantity*brate)-bdisamt+bexamt+btaxamt+bscamt+bothchgs) as BVALUE FROM IN_PJL where DIVCODE = '" & divcode & "' and FATC = " & adoprimaryrs("FATC") & " and PJVOCNO = " & adoprimaryrs("PJVOCNO") & " and PJVOCDT = '" & Format(adoprimaryrs("PJVOCDT"), "YYYY-MM-DD") & "' group by SUBSTRING(ITEMCODE,1, " & grplen & ") order by SUBSTRING(ITEMCODE,1, " & grplen & ")", DB, adOpenStatic, adLockBatchOptimistic
'''    rs.MoveFirst
'''    I = 0
'''    Do While Not rs.EOF
'''        I = I + 1
'''        DB.Execute "delete from FA_PURDT where divcode = '" & divcode & "' and  tc = " & adoprimaryrs("FATC") & " and pjvno= " & adoprimaryrs("pjvocno") & " and pjvdt = '" & Format(adoprimaryrs("pjvocdt"), "YYYY-MM-DD") & "' and PJVSNO = " & I
'''        rs.MoveNext
'''    Loop
'''
'''    'FA_PURHD DELETION
'''    DB.Execute "delete from FA_PURHD where divcode= '" & divcode & "' and slcode= '" & adoprimaryrs("slcode") & "' and tc= " & adoprimaryrs("fatc") & " and pjvno = " & adoprimaryrs("pjvocno") & " and pjvdt = '" & Format(adoprimaryrs("pjvocdt"), "YYYY-MM-DD") & "'"
'''
'''    'FA_JVLINE DELETION
'''    Set rs1 = New Recordset
'''    rs1.Open "select  glcode  from FA_TCMAS where tc= " & adoprimaryrs("fatc"), DB
'''    If IsNull(adoprimaryrs("dbamt")) = False Or adoprimaryrs("dbamt") = 0 Then
'''        Set tcrs = New Recordset
'''        tcrs.Open "select drnote from FA_PARAM", DB
'''        Set rs = New Recordset
'''        rs.Open "select divcode,tc,vocno,vocdt,vocsno from fa_jvline where divcode = '" & adoprimaryrs("divcode") & "' and tc= " & tcrs(0) & " and vocno= " & adoprimaryrs("dbno") & " and vocdt= '" & Format(adoprimaryrs("dbdt"), "yyyy-mm-dd") & "'", DB
'''        rs.MoveFirst
'''        Do While Not rs.EOF
'''            DB.Execute "delete from FA_JVLINE where divcode = '" & adoprimaryrs("divcode") & "' and tc= " & tcrs(0) & " and vocno= " & adoprimaryrs("dbno") & " and vocdt= '" & Format(adoprimaryrs("dbdt"), "yyyy-mm-dd") & "' and vocsno = " & rs("vocsno")
'''            rs.MoveNext
'''        Loop
'''        DB.Execute "delete from FA_JVHEAD where divcode= '" & adoprimaryrs("divcode") & "' and tc= " & tcrs(0) & " and vocno= " & adoprimaryrs("dbno") & " and vocdt= '" & Format(adoprimaryrs("dbdt"), "yyyy-mm-dd") & "'"
'''    End If
''
''End Select
''
'''----- Auto Matching of Bill and Debit Note
''
''If OPT = "add" Or OPT = "mod" Then
''    If IsNull(adoPrimaryRS("DBNO")) = False Then
''        On Error GoTo Cannot_Insert_APDBTL
''        Set tcrs = New Recordset
''        tcrs.Open "select drnote  from FA_PARAM", db
''        db.Execute "Insert into fa_apdbtl (divcode,slcode,tc,vocno,vocdt,vocsno,amount,reftc," & _
''                   "refvocno,refvocdt,refvocsno,TRNTYPE,REFTRNTYPE,REFDIVCODE) values ('" & _
''                   divcode & "','" & adoPrimaryRS("SLCODE") & "'," & tcrs(0) & "," & _
''                   adoPrimaryRS("DBNO") & ",'" & Format(adoPrimaryRS("DBDT"), "yyyy-mm-dd") & _
''                   "',1," & adoPrimaryRS("DBAMT") & "," & adoPrimaryRS("FATC") & "," & _
''                   adoPrimaryRS("PJVOCNO") & ",'" & Format(adoPrimaryRS("PJVOCDT"), "yyyy-mm-dd") & _
''                   "',1,'JV','PU','" & divcode & "')"
''    End If
''End If
''Exit Sub
''
''Cannot_Insert_APDBTL:
'
'End Sub


Public Sub FAupdateOLD()
Dim i As Integer, value As Double
Dim bval As Double, GL As String, GNAME As String
Dim db1 As Connection
Dim rstds1 As Recordset
Dim rstds2 As Recordset
Dim rstds3 As Recordset
Dim rstds4 As Recordset
Dim CR
Dim crtot

'Select Case OPT
'Case "add"
'----------------------------------------- FOR FA UPDATION ----------------------------------------------------'


   On Error GoTo FAupdate_Error

    Set db1 = New Connection
    db1.CursorLocation = adUseClient
    db1.Open "PROVIDER=MSDataShape;" + connectstring



    Set rstds2 = New Recordset
    rstds2.Open "select * from fa_tds_gl where tds_type='" & Text4.Text & "'", db1, adOpenDynamic, adLockOptimistic
    
    Set rstds3 = New Recordset
    rstds3.Open "select * from fa_tds_tax_pert where tds_gl_code=(select tds_gl_Code from fa_tds_gl where tds_type='" & Text4.Text & "')", db1, adOpenDynamic, adLockOptimistic
                
    Set rstds4 = New Recordset
    'rstds4.Open "select ACCODE,CREDIT,docno from fa_jvline where Divcode = '" & divcode & "' AND Tc = " & txtfields(1).text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", db
    rstds4.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", db1, adOpenDynamic, adLockOptimistic
        
     CR = (rstds4(1).value * (val(Text9.Text) / 100))
     crtot = CR + (CR * (val(Text10.Text) / 100)) + (CR * (val(Text11.Text) / 100))
        
     
  ' 'db.Execute "UPDATE Fa_JvHead SET Ref_no = '" & Trim(txtRefNo) & "',Ref_Date = '" & Format(MaskRefDate.text, "YYYY-MM-DD") & "' WHERE Divcode = '" & divcode & "' AND Tc = " & tc & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'"
  '  'vocdt='2008-01-02' and vocno=2 and tc=48 and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')
    
 ' ' rstds2.Open "Select * from fa_jvline where accode=(select glcode from fa_tds_gl where tds_gl_code=1) and Divcode = '" & divcode & "' AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'", db, adOpenDynamic, adLockOptimistic
 ' ' db.Execute "delete from FA_PURHD where divcode= '" & divcode & "' and slcode= '" & adoPrimaryRS("slcode") & "' and tc= " & adoPrimaryRS("fatc") & " and pjvno = " & adoPrimaryRS("pjvocno") & " and pjvdt = '" & Format(adoPrimaryRS("pjvocdt"), "YYYY-MM-DD") & "'"
        
                
    db1.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,credit,amtdue,docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "',3,'" & rstds2("glcode").value & "','" & rstds4("narration1").value & "'," & crtot & "," & crtot & "," & rstds4("docno").value & ")"
    
    db1.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,debit,amtdue," & _
     "docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "',4,'" & rstds4("accode").value & "','" & rstds4("narration1").value & "'," & crtot & "," & crtot & "," & rstds4("docno").value & ")"
                     
   db1.Execute "insert into FA_TDS(divcode,vocno,VOCDT,SLCODE,TDS_AMOUNT,tds_rate,tds_type,amount,tds_gl_code,EDU_CESS_PER,HS_CESS_PER,TC) values ('" & Divcode & "'," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "','" & rstds4("ACCODE") & "'," & crtot & "," & val(Text9.Text) & ",'" & rstds2("tds_type") & "'," & rstds4("CREDIT") & "," & rstds2("tds_gl_code") & "," & val(Text10.Text) & "," & val(Text11.Text) & "," & val(txtFields(1).Text) & ")"

        
   Exit Sub

FAupdate_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FAupdate of Form JURNL"

End Sub

Private Sub Show_Rec1(N As String)

    Dim rsnav1 As Recordset
    Dim RsJv As Recordset

'    intTc = 0
    cnt = 0

    Set rsnav1 = New Recordset
    
    ''''rsnav1.Open "SELECT * FROM Fa_JvHead WHERE appdt is null and  ENTDATE=(SELECT MAX(ENTDATE) FROM FA_JVHEAD where divcode='" & Divcode & "')", db, adOpenDynamic, adLockOptimistic
    
    ''rsnav1.Open "SELECT * FROM Fa_JvHead WHERE  ENTDATE=(SELECT MAX(ENTDATE) FROM FA_JVHEAD where divcode='" & divcode & "')", Db, adOpenDynamic, adLockOptimistic
        
'    If Repindex = 201 Then
'        'rsnav1.Open "SELECT * FROM Fa_JvHead WHERE  ENTDATE=(SELECT MAX(ENTDATE) FROM FA_JVHEAD where divcode='" & divcode & "' AND TC=(SELECT DRNOTE FROM FA_PARAM) )", DB, adOpenDynamic, adLockOptimistic
'        rsnav1.Open "SELECT * FROM Fa_JvHead WHERE  ENTDATE=(SELECT MAX(ENTDATE) FROM FA_JVHEAD where divcode='" & Divcode & "' AND VOCDT>='" & Format(yfdate, "YYYY-MM-DD") & "' AND VOCDT<='" & Format(yldate, "YYYY-MM-DD") & "'  AND TC=(SELECT DRNOTE FROM FA_PARAM) )", DB, adOpenDynamic, adLockOptimistic
'    Else
'        'rsnav1.Open "SELECT * FROM Fa_JvHead WHERE  ENTDATE=(SELECT MAX(ENTDATE) FROM FA_JVHEAD where divcode='" & divcode & "' AND TC=(SELECT CRNOTE FROM FA_PARAM))", DB, adOpenDynamic, adLockOptimistic
'        rsnav1.Open "SELECT * FROM Fa_JvHead WHERE  ENTDATE=(SELECT MAX(ENTDATE) FROM FA_JVHEAD where divcode='" & Divcode & "' AND VOCDT>='" & Format(yfdate, "YYYY-MM-DD") & "' AND VOCDT<='" & Format(yldate, "YYYY-MM-DD") & "'  AND TC=(SELECT CRNOTE FROM FA_PARAM))", DB, adOpenDynamic, adLockOptimistic
'    End If
    
    rsnav1.Open "SELECT * FROM Fa_JvHead WHERE  ENTDATE=(SELECT MAX(ENTDATE) FROM FA_JVHEAD where divcode='" & Divcode & "' AND VOCDT>='" & Format(yfdate, "YYYY-MM-DD") & "' AND VOCDT<='" & Format(yldate, "YYYY-MM-DD") & "'  AND (TC=(SELECT DRNOTE FROM FA_PARAM) OR TC=(SELECT CRNOTE FROM FA_PARAM)))", DB, adOpenDynamic, adLockOptimistic
    
    If TCN = "" Then txtFields(1).Text = ""
Select Case N
        Case "L"
            If rsnav1.RecordCount > 0 Then
                rsnav1.MoveLast
                txtFields(1) = rsnav1("TC")
                txtFields(2) = rsnav1("Vocno")
                MaskEdBox1(0).Text = rsnav1("Vocdt")
                txtRefNo = IIf(IsNull(rsnav1("Ref_no")), 0, rsnav1("Ref_no"))
                MaskRefDate.Text = IIf(IsNull(rsnav1("ref_date")), Date, rsnav1("ref_date"))
                
                tdsrefno = IIf(IsNull(rsnav1("tdsrefno")), 0, rsnav1("tdsRefno"))
                DTPicker2.value = IIf(IsNull(rsnav1("tdsdate")), Date, rsnav1("tdsdate"))
            End If
                    
End Select
If rsnav1.RecordCount > 0 Then
               Set RsJv = New Recordset
               RsJv.Open "SELECT TcHead FROM Fa_Tcmas WHERE Tc = '" & txtFields(1) & "'", DB, adOpenStatic
               If RsJv.RecordCount > 0 Then TCN = RsJv(0)
               Set RsJv = New Recordset
               RsJv.Open "SELECT Accode, Narration1, Narration2, Debit, Credit FROM Fa_Jvline WHERE Divcode = '" & Divcode & "' AND Vocno = '" & txtFields(2) & "' AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND Tc = '" & txtFields(1) & "' order by vocsno", DB, adOpenStatic
               Set grdDataGrid.DataSource = RsJv
               stbar.Panels(2).Text = "Record " & RsNav.AbsolutePosition & " of " & RsNav.RecordCount
 End If
               
               
               
End Sub

Public Sub Matching_routine()

   On Error GoTo Matching_routine_Error

    trn_debit = 0
        trn_credit = 0
        DB.BeginTrans
        adoSecondaryRS.MoveFirst
        Do While Not (adoSecondaryRS.EOF)
            If ((Mid(adoSecondaryRS("AC Code"), 1, 1) = "C") Or (Mid(adoSecondaryRS("AC Code"), 1, 1)) = "D") Then
                trn_type = "JV"
                trn_divcode = adoSecondaryRS("divcode")
                trn_vocdt = adoSecondaryRS("vocdt")
                trn_tc = adoSecondaryRS("TC")
                trn_vocno = adoSecondaryRS("vocno")
                trn_vocsno = adoSecondaryRS("vocsno")
                trn_accode = adoSecondaryRS("AC Code")
                trn_debit = IIf(((IsNull(adoSecondaryRS(9))) Or (adoSecondaryRS(9) = "")), 0, adoSecondaryRS(9))
                trn_credit = IIf(((IsNull(adoSecondaryRS(10))) Or (adoSecondaryRS(10) = "")), 0, adoSecondaryRS(10))
                'Call arapupd
            End If
            adoSecondaryRS.MoveNext
        Loop
        '*********************************************
        
        
        MsgBox "Document No. for your transaction is " & txtFields(2).Text, vbInformation, head
        gflag = 0
        DB.CommitTrans
        Screen.MousePointer = 0
        Opt = "add"
        
        DataCombo1.Visible = False
        delmodoklabel.Visible = False
        delmodok.Visible = False
        tcval = txtFields(1).Text
        
''        Call TXTCLR
''        Call txtclear1
''        Call NEWFORM3(BUTTON, GSNO)
''        Call disablcontls
''        txtfields(1).text = tcval
''        Set glrec = New Recordset
''        glrec.Open "select tc,tchead from FA_TCMAS,FA_PARAM  where tc = '" & txtfields(1).text & "'", DB, adOpenStatic, adLockBatchOptimistic
''        tc = glrec(0)
''        TCN.text = glrec(1)
''        MaskEdBox1(0).text = pdate
''        txtfields(2).Locked = False
''        Call ENABLCONTLS
''        txtfields(2).Locked = True
''        BUTTON(9).Enabled = True
''        BUTTON(10).Enabled = True
        
'        Call BUTTON_Click(0)

''        If Len(txtFields(1).text) > 0 Then
''            Set glrec = New Recordset
''            glrec.Open "select ISNULL(max(vocno),0)+1 from fa_jvhead where tc='" & txtFields(1).text & "' AND Divcode = '" & divcode & "' AND Vocdt >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND Vocdt <= '" & Format(yldate, "YYYY-MM-DD") & "'", db, adOpenStatic, adLockBatchOptimistic
''            If Not glrec.EOF Then
''                t_glno = glrec(0)
''                txtFields(5).text = t_glno
''                txtFields(2).text = t_glno
''                txtFields(2).Locked = True
''            End If
''        End If


'09/11/09
        intTc = txtFields(1).Text
        Call BUTTON_Click(0)



   On Error GoTo 0
   Exit Sub

Matching_routine_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Matching_routine of Form JURNL", vbInformation, head
End Sub

Public Sub FAupdate()
Dim i As Integer, value As Double
Dim bval As Double, GL As String, GNAME As String
Dim db1 As Connection
Dim rstds1 As Recordset
Dim rstds2 As Recordset
Dim rstds3 As Recordset
Dim rstds4 As Recordset
Dim ars As Recordset

Dim CR
Dim CR1
Dim crtot



Dim Narr As String
Dim cl1
Dim cl2
Dim cl3
Dim cl4
Dim partycode1 As String

'Select Case OPT
'Case "add"
'----------------------------------------- FOR FA UPDATION ----------------------------------------------------'


   On Error GoTo FAupdate_Error



    Set db1 = New Connection
    db1.CursorLocation = adUseClient
    db1.Open "PROVIDER=MSDataShape;" + connectstring
                
                
    Set rstds4 = New Recordset
    
    If Opt = "add" Then
        rstds4.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%') ", db1, adOpenDynamic, adLockOptimistic
    Else
        rstds4.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%') and credit>0 ", db1, adOpenDynamic, adLockOptimistic
    End If
    
    
    
    Set rstds2 = New Recordset
    rstds2.Open "select * from fa_tds_gl where tds_type='" & Text4.Text & "' AND ORG_TYPE=(SELECT ORG_TYPE FROM FA_SLMAS WHERE SLCODE='" & rstds4("accode").value & "')", db1, adOpenDynamic, adLockOptimistic
    
    Set rstds3 = New Recordset
    rstds3.Open "select * from fa_tds_tax_pert where tds_gl_code=(select tds_gl_Code from fa_tds_gl where tds_gl_code=" & rstds2("TDS_GL_CODE") & ")", db1, adOpenDynamic, adLockOptimistic
    
    
        
     'cr = (rstds4(1).Value * (rstds3(2).Value / 100))
     'crtot = cr + (cr * (rstds3(3).Value / 100)) + (cr * (rstds3(4).Value / 100) + (cr * (rstds3(5).Value / 100)))
                
                
    'CR1 = rstds4(1).Value * (Val(Text9.text) / 100)
    
    CR1 = val(txttdsamt.Text) * (val(Text9.Text) / 100)
    
    CR = CR1 + CR1 * (val(Text12.Text) / 100)
          
    crtot = Round(CR + (CR * (val(Text10.Text) / 100)) + (CR * (val(Text11.Text) / 100)), 0)
    
    
    
    
    
    
    
    
    
  If crtot > 0 Then
               
    totline = adoSecondaryRS.RecordCount + 1
    
    
    
    
    
    
    
    
    
    
    cl1 = val(Text9.Text) + (val(Text9.Text) * (val(Text12.Text) / 100))
    cl2 = cl1 * (val(Text10.Text) / 100)
    cl3 = cl1 * (val(Text11.Text) / 100)
    
    
    cl4 = cl1 + cl2 + cl3
    
    
    Set ars = Nothing
    Set ars = New Recordset
    ars.Open "select slname from fa_slmas where slcode='" & rstds4("ACCODE") & "'", DB, adOpenKeyset, adLockReadOnly
    If ars.EOF = False Then
    partycode1 = ars!Slname
    Else
        Set ars = Nothing
        Set ars = New Recordset
        ars.Open "select glname from fa_glmas where glcode='" & rstds4("ACCODE") & "'", DB, adOpenKeyset, adLockReadOnly
            If ars.EOF = False Then
            partycode1 = ars!glname
            Else
            partycode1 = rstds4("ACCODE")
            End If
    End If
    
    
      Narr = "TDS ON Rs. " & CStr(val(txttdsamt.Text)) + " @ " + CStr(cl4) + " - " + partycode1
    
    
     
       
    
       
    ''db1.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,credit,amtdue,docno) values ('" & divcode & "'," & txtfields(1).text & "," & vocNo & ",'" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "',3,'" & rstds2("glcode").Value & "','" & rstds4("narration1").Value & "'," & crtot & "," & crtot & "," & rstds4("docno").Value & ")"
    
    'db1.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,credit,amtdue,docno) values ('" & Divcode & "'," & txtfields(1).text & "," & vocNo & ",'" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "'," & totline & ",'" & rstds2("glcode").Value & "','" & rstds4("narration1").Value & "'," & crtot & "," & crtot & "," & rstds4("docno").Value & ")"
    
    
    db1.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,credit,amtdue,docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & rstds2("glcode").value & "','" & Narr & "'," & crtot & "," & crtot & "," & rstds4("docno").value & ")"
    
    
    mglcode1 = rstds2("glcode").value
    totline = totline + 1

    db1.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,debit,amtdue," & _
     "docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & rstds4("accode").value & "','" & Narr & "'," & crtot & "," & crtot & "," & rstds4("docno").value & ")"
    mglcode2 = rstds4("accode").value

    'db1.Execute "insert into FA_TDS(divcode,vocno,VOCDT,SLCODE,TDS_AMOUNT,tds_rate,tds_type,amount,tds_gl_code,edu_cess_per,hs_cess_per,sc_per,tc) values ('" & Divcode & "'," & vocNo & ",'" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "','" & rstds4("ACCODE") & "'," & crtot & "," & Val(Text9.text) & ",'" & rstds2("tds_type") & "'," & rstds4("CREDIT") & "," & rstds2("tds_gl_code") & "," & Val(Text10.text) & "," & Val(Text11.text) & "," & Val(Text12.text) & "," & Val(txtfields(1).text) & ")"
    
    If Opt = "mod" Then
        db1.Execute "delete from fA_TDS where divcode='" & Divcode & "' and vocno=" & vocno & " and vocdt='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and tc= " & val(txtFields(1).Text) & ""
    End If
    
    db1.Execute "insert into FA_TDS(divcode,vocno,VOCDT,SLCODE,TDS_AMOUNT,tds_rate,tds_type,amount,tds_gl_code,edu_cess_per,hs_cess_per,sc_per,tc) values ('" & Divcode & "'," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "','" & rstds4("ACCODE") & "'," & crtot & "," & val(Text9.Text) & ",'" & rstds2("tds_type") & "'," & val(txttdsamt.Text) & "," & rstds2("tds_gl_code") & "," & val(Text10.Text) & "," & val(Text11.Text) & "," & val(Text12.Text) & "," & val(txtFields(1).Text) & ")"
    
  
  
    Call UpdateCgtrnjventry_tds(txtFields(1).Text, val(vocno), MaskEdBox1(0).Text, CStr(mglcode1), CStr(mglcode2), val(crtot))
      
  End If
      
      
   '''servictax begin
  
  If Option1.value = True Then
        sType = ""
        Screen.MousePointer = 0
        LookUp.clear = True
        qrl = "select S_TYPE,S_DESC,GLCODE from FA_STAXTYPE"
        LookUp.query = qrl
        LookUp.Caption = "Service tax Type Listing"
        LookUp.DefCol = "S_desc"
        LookUp.ALIGN = "1500,3900"
        LookUp.Show vbModal
        

    On Error Resume Next

            If LookUp.Cancel = False Then
                 If LookUp.Fields(0) = "" Then
                          MsgBox "No Transaction Codes found", vbInformation, head
                          Exit Sub
                  Else
                           Set RsJv1 = New Recordset
                           RsJv1.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and  credit>0 and vocsno=1", DB, adOpenStatic
                           
                             If RsJv1.EOF Then
                                Set RsJv1 = New Recordset
                                RsJv1.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and  credit>0 and vocsno=2", DB, adOpenStatic
                             End If
                           
                           Set staxperrs = New Recordset
                           staxperrs.Open "select * from fa_service_taxt where GLCODE ='" & LookUp.Fields(2) & "'", DB, adOpenStatic
                         
                        If RsJv1("credit").value >= staxperrs("exempt_limit").value Then
                             sType = LookUp.Fields(0)
                              If staxperrs.RecordCount > 0 Then
                                    staxframe.Visible = True
                                    staxframe.Left = 4300
                                    staxframe.ZOrder
                                    Text5.Text = staxperrs("ASS_VAL_PER")
                                    Text6.Text = staxperrs("SERV_TAX_per")
                                    Text7.Text = staxperrs("edu_cess_per")
                                    Text8.Text = staxperrs("hs_cess_per")
                                    STAXCMD.SetFocus
                                    Exit Sub
                              End If
                        Else
                            Call Matching_routine
                        End If '750 exempt
                    End If
             End If 'on error
    Else
    
       Call Matching_routine
     
    End If

    'Exit Sub 'TDS
    'End If   'TDS

      
    'service tax end
      
      
      
      
      
'09/11/09
        intTc = txtFields(1).Text
        Call BUTTON_Click(0)
      
      
      
''End If

   On Error GoTo 0
   Exit Sub

FAupdate_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FAupdate of Form JURNL"

End Sub


Public Sub staxupdate1(slcode As String, Glcode As String, s_Type As String, AsPer As Double, SPer As Double, EduPer As Double, HsPer As Double, edugl As String, hsgl As String)
Dim i As Integer, value As Double
Dim bval As Double, GL As String, GNAME As String
Dim db1 As Connection
Dim TotValue As Double
Dim partycode As String
Dim db2 As Connection
Dim tottax As Double


On Error Resume Next

Set db2 = New Connection
db2.CursorLocation = adUseClient
db2.Open "PROVIDER=MSDataShape;" + connectstring

    Set rstds4 = New Recordset
    If IsNumeric(Mid$(slcode, 1, 2)) <> True Then
        '''''rstds4.Open "select ACCODE,debit,docno,narration1 from fa_jvline where Divcode = '" & divcode & "' AND Tc = " & adoPrimaryRS(1) & " AND Vocno = " & vocNo & " AND Vocdt = '" & Format(MaskEdBox1.text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", db1, adOpenDynamic, adLockOptimistic
        'rstds4.Open "select ACCODE,credit,docno,narration1 from fa_jvline where Divcode = '" & divcode & "' AND Tc = " & Val(txtFields(1).text) & " AND Vocno = " & vocNo & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", db2, adOpenDynamic, adLockOptimistic
        rstds4.Open "select ACCODE,credit,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & val(txtFields(1).Text) & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and credit>0 and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')", db2, adOpenDynamic, adLockOptimistic
    Else
        'rstds4.Open "select ACCODE,credit,docno,narration1 from fa_JVline where Divcode = '" & divcode & "' AND Tc = " & Val(txtFields(1).text) & " AND Vocno = " & vocNo & " AND Vocdt = '" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "' AND CREDIT>0 and (accode not like 'C%' OR accode not like 'D%' OR accode not like 'O%')", db2, adOpenDynamic, adLockOptimistic
        rstds4.Open "select ACCODE,debit,docno,narration1 from fa_JVline where Divcode = '" & Divcode & "' AND Tc = " & val(txtFields(1).Text) & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND debit>0 and (accode not like 'C%' and accode not like 'D%' and accode not like 'O%')", db2, adOpenDynamic, adLockOptimistic
    End If
        
'
'    Cr1 = Round((rstds4(1).Value * (AsPer / 100)), 0)
'
'    staxst = Round((Cr1 * (SPer / 100)), 0)  'stax
'
'    etaxst = (staxst * (EduPer / 100)) 'etax
'        If (etaxst > 0 And etaxst < 0.5) Then
'            etaxst = 1
'        Else
'            etaxst = Round(etaxst, 0)
'        End If
'
'
'
'    ''''htaxst = Round((staxst * (HsPer / 100)), 0) 'htax
'        htaxst = (staxst * (HsPer / 100)) 'htax
'        If (htaxst > 0 And htaxst < 0.5) Then
'            htaxst = 1
'        Else
'            htaxst = Round(htaxst, 0)
'        End If
    
    
    
    
    'cr1 = Round((rstds4(1).Value * (Val(Text5.text) / 100)), 0)

    'staxst = Round((cr1 * (Val(Text6.text) / 100)), 0)  'stax

    CR1 = (rstds4(1).value * (val(Text5.Text) / 100))

    staxst = (CR1 * (val(Text6.Text) / 100))  'stax




    etaxst = (staxst * (val(Text7.Text) / 100)) 'etax
        If (etaxst > 0 And etaxst < 0.5) Then
            etaxst = 1
        Else
            etaxst = Round(etaxst, 0)
        End If



    ''''htaxst = Round((staxst * (HsPer / 100)), 0) 'htax
    
        htaxst = (staxst * (val(Text8.Text) / 100)) 'htax
        If (htaxst > 0 And htaxst < 0.5) Then
            htaxst = 1
        Else
            htaxst = Round(htaxst, 0)
        End If
    
    
    
    
    tottax = staxst + etaxst + htaxst
    
If tottax > 0 Then
    
    If Option3.value = True Then
    
    
        totline = adoSecondaryRS.RecordCount + 1
    
        db2.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,NARRATION1,credit,AMTDUE,DOCNO) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & Glcode & "','" & rstds4("narration1") & "'," & staxst & "," & staxst & "," & rstds4("docno").value & ")"
        totline = totline + 1
        db2.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,credit,amtdue,docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & edugl & "','" & rstds4("narration1").value & "'," & etaxst & "," & etaxst & "," & rstds4("docno").value & ")"
        totline = totline + 1
        db2.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,credit,amtdue,docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & hsgl & "','" & rstds4("narration1").value & "'," & htaxst & "," & htaxst & "," & rstds4("docno").value & ")"
        totline = totline + 1
        db2.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,debit,amtdue,docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & slcode & "','" & rstds4("narration1").value & "'," & tottax & "," & tottax & "," & rstds4("docno").value & ")"
        
        
    
    
    
    
        db2.Execute "insert into FA_service_tax(divcode,vocno,VOCDT,SLCODE,stax_rate,stax_amount,edu_cess_rate,edu_cess_amount,hs_cess_rate,hs_CESS_amount,ass_value,taxable_amount,stype,tc,flag) " & _
                " values ('" & Divcode & "'," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "','" & RsJv1("accode") & "'," & SPer & " ," & staxst & "," & EduPer & "," & etaxst & "," & HsPer & "," & htaxst & "," & CR1 & "," & rstds4("debit") & "," & sType & "," & val(txtFields(1).Text) & ",'Y')"
                
                
                
                

    Else
        
        totline = adoSecondaryRS.RecordCount + 1
    
        db2.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,NARRATION1,credit,AMTDUE,DOCNO) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & Glcode & "','" & rstds4("narration1") & "'," & staxst & "," & staxst & "," & rstds4("docno").value & ")"
        totline = totline + 1
        db2.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,credit,amtdue,docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & edugl & "','" & rstds4("narration1").value & "'," & etaxst & "," & etaxst & "," & rstds4("docno").value & ")"
        totline = totline + 1
        db2.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,credit,amtdue,docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & hsgl & "','" & rstds4("narration1").value & "'," & htaxst & "," & htaxst & "," & rstds4("docno").value & ")"
        totline = totline + 1
        db2.Execute "insert into fa_jvline(divcode,tc,vocno,vocdt,vocsno,accode,Narration1,debit,amtdue,docno) values ('" & Divcode & "'," & txtFields(1).Text & "," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "'," & totline & ",'" & slcode & "','" & rstds4("narration1").value & "'," & tottax & "," & tottax & "," & rstds4("docno").value & ")"
        
        
        db2.Execute "insert into FA_service_tax(divcode,vocno,VOCDT,SLCODE,stax_rate,stax_amount,edu_cess_rate,edu_cess_amount,hs_cess_rate,hs_CESS_amount,ass_value,taxable_amount,stype,tc,flag) " & _
                " values ('" & Divcode & "'," & vocno & ",'" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "','" & RsJv1("accode") & "'," & SPer & " ," & staxst & "," & EduPer & "," & etaxst & "," & HsPer & "," & htaxst & "," & CR1 & "," & rstds4("CREDIT") & "," & sType & "," & val(txtFields(1).Text) & ",'N')"
                                
        Call UpdateCgtrnjventry_Service(txtFields(1).Text, val(vocno), MaskEdBox1(0).Text, CStr(Glcode), CStr(edugl), CStr(hsgl), CStr(slcode), totline)
       End If
       
   End If
       
       
            
            
            
       '09/11/09
        intTc = txtFields(1).Text
        Call BUTTON_Click(0)
      
    
            
            
'         'change
'          'txtcd(2).text = Val(txtcd(2).text) + staxst + etaxst + htaxst
'
''Text8.text = ""

   

End Sub

'Public Sub Matching_routineMOD()
'trn_debit = 0
'        trn_credit = 0
'        db.BeginTrans
'        adoSecondaryRS.MoveFirst
'        Do While Not (adoSecondaryRS.EOF)
'            If ((Mid(adoSecondaryRS("AC Code"), 1, 1) = "C") Or (Mid(adoSecondaryRS("AC Code"), 1, 1)) = "D") Then
'                trn_type = "JV"
'                trn_divcode = adoSecondaryRS("divcode")
'                trn_vocdt = adoSecondaryRS("vocdt")
'                trn_tc = adoSecondaryRS("TC")
'                trn_vocno = adoSecondaryRS("vocno")
'                trn_vocsno = adoSecondaryRS("vocsno")
'                trn_accode = adoSecondaryRS("AC Code")
'                trn_debit = IIf(((IsNull(adoSecondaryRS(9))) Or (adoSecondaryRS(9) = "")), 0, adoSecondaryRS(9))
'                trn_credit = IIf(((IsNull(adoSecondaryRS(10))) Or (adoSecondaryRS(10) = "")), 0, adoSecondaryRS(10))
'                Call arapupd
'            End If
'            adoSecondaryRS.MoveNext
'        Loop
'        '*********************************************
'
'
'        MsgBox "Document No. for your transaction is " & txtFields(2).text, vbInformation, Head
'        gflag = 0
'        db.CommitTrans
'        Screen.MousePointer = 0
'        Opt = "add"
'        DataCombo1.Visible = False
'        delmodoklabel.Visible = False
'        delmodok.Visible = False
'        tcval = txtFields(1).text
'        Call TXTCLR
'        Call txtclear1
'        Call NEWFORM3(BUTTON, 6)
'        Call disablcontls
'        txtFields(1).text = tcval
'        Set glrec = New Recordset
'        glrec.Open "select tc,tchead from FA_TCMAS,FA_PARAM  where tc = '" & txtFields(1).text & "'", db, adOpenStatic, adLockBatchOptimistic
'        tc = glrec(0)
'        TCN.text = glrec(1)
'        MaskEdBox1(0).text = pdate
'        txtFields(2).Locked = False
'        Call ENABLCONTLS
'        txtFields(2).Locked = True
'        BUTTON(9).Enabled = True
'        BUTTON(10).Enabled = True
'        Call BUTTON_Click(0)
'
'
'End Sub
'




Private Sub canclear1()
   'CANCEL
'    lblctrl.Visible = True
    Timer1.Enabled = True
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
        Opt = ""
    Case "add"
        'To undo addition
        On Error Resume Next
        txtFields(1).Text = ""
        MaskEdBox1(0).Text = "__/__/____"
        TCN = ""
        adoSecondaryRS.Requery
        stbar.Panels(2).Text = ""
        grdDataGrid.Columns(0).Visible = False
        grdDataGrid.Columns(1).Visible = False
        grdDataGrid.Columns(2).Visible = False
        grdDataGrid.Columns(3).Visible = False
        grdDataGrid.Columns(4).Visible = False
        grdDataGrid.Columns(12).Visible = False
        grdDataGrid.Columns(13).Visible = False
        DB.RollbackTrans
        MaskEdBox1(0).Enabled = False
        DTPicker1.Enabled = False
        Screen.MousePointer = 0
        debit.Text = ""
        credit.Text = ""
        Opt = ""
    Case "del"
        'To undo deletion
        DB.RollbackTrans
        Opt = " "
   End Select
    Opt = " "
    'To return default settings - i.e query mode
    Call TXTCLR
    Call txtclear1
    
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select t.DIVCODE,t.TC,t.VOCNO,t.VOCSNO,t.VOCDT,t.ACCODE ""AC Code"",t.narration1 ""Narration1"",t.narration2 ""Narration2"",t.cccode ""C.C"",c.cchead ""Description"",t.debit ""Debit"",t.credit ""Credit"",t.crdrflg,T.FDEBIT,FCREDIT,docno from FA_JVLINE t,FA_CCMAS C where c.cccode =* t.cccode AND 1 = 2 Order by t.vocsno", DB
    Set grdDataGrid.DataSource = adoSecondaryRS
    grdDataGrid.Columns(0).Visible = False
    grdDataGrid.Columns(1).Visible = False
    grdDataGrid.Columns(2).Visible = False
    grdDataGrid.Columns(3).Visible = False
    grdDataGrid.Columns(4).Visible = False
    grdDataGrid.Columns(6).Width = 2325
    grdDataGrid.Columns(7).Width = 2055.118
    'grddatagrid.Columns(8).Width = 540.2835
    
    grdDataGrid.Columns(8).Visible = False
    
    
    
    grdDataGrid.Columns(9).Width = 1305.071
    grdDataGrid.Columns(9).Visible = False
    grdDataGrid.Columns(10).Width = 1305.071
    grdDataGrid.Columns(12).Visible = False
    grdDataGrid.Columns(13).Visible = False
    grdDataGrid.Columns(14).Visible = False
    grdDataGrid.Columns(15).Visible = False
    grdDataGrid.Columns(0).Width = 0
    grdDataGrid.Columns(9).Alignment = dbgRight
    grdDataGrid.Columns(10).Alignment = dbgRight
    grdDataGrid.Columns(10).NumberFormat = "#0.00"
    grdDataGrid.Columns(11).NumberFormat = "#0.00"
    grdDataGrid.ScrollBars = dbgAutomatic
    Call Show_Rec1("L")
    
    credit.Visible = False
    debit.Visible = False
    DataCombo1.Visible = False
    delmodoklabel.Visible = False
    delmodok.Visible = False
    Label4.Visible = False
    DataGrid1.Visible = False
    Frame2.Visible = False
    Frame1.Visible = True
    Frame1.ZOrder
    Frame3.Visible = False
    grdDataGrid.Visible = True
    'calling cancl procedure from module
    Screen.MousePointer = 0
    Opt = " "
    Call cancl(BUTTON, GSNO)
    Call disablcontls



End Sub

Public Sub UpdateCgtrnjventry(mtc As Integer, mvocno As Integer, mvocdt As Date)
Dim RSJvdt As Recordset
Dim RSCsdet As Recordset
Dim RSCsg As Recordset
Dim mcredit
Dim mdebit
Dim mjvcount
'RSJvdt.Open "Select count(*) from fa_jvline where divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", db, adOpenForwardOnly, adLockPessimistic
'mcredit = IIf(IsNull(RSJvdt(0)), 0, RSJvdt(0))
'RSJvdt.Close

Set RSJvdt = New Recordset
RSJvdt.Open "Select count(*) from fa_jvline where  isnull(credit,0) >0  and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenForwardOnly, adLockPessimistic
mcredit = IIf(IsNull(RSJvdt(0)), 0, RSJvdt(0))
RSJvdt.Close
Set RSJvdt = New Recordset
RSJvdt.Open "Select count(*) from fa_jvline where isnull(debit,0) >0  and  divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenForwardOnly, adLockPessimistic
mdebit = IIf(IsNull(RSJvdt(0)), 0, RSJvdt(0))
RSJvdt.Close

If mcredit = 1 And mdebit >= 1 Then
   Set RSJvdt = New Recordset
   RSJvdt.Open "Select accode from fa_jvline where  isnull(credit,0) >0  and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenForwardOnly, adLockPessimistic
    
   Set RSCsg = New Recordset
   If IsNumeric(RSJvdt!accode) Then
        RSCsg.Open "Select glhead from fa_glmas where  glcode ='" & RSJvdt!accode & "'", DB, adOpenKeyset, adLockReadOnly
    Else
        RSCsg.Open "Select slname from fa_slmas where  slcode ='" & RSJvdt!accode & "'", DB, adOpenKeyset, adLockReadOnly
    End If
    mglhead = RSCsg(0)
    RSJvdt.Close
    Set RSJvdt = New Recordset
    RSJvdt.Open "Select *  from fa_jvline where  isnull(debit,0) >0  and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenForwardOnly, adLockPessimistic
    maxm = 0
    Do While Not RSJvdt.EOF
    If maxm < RSJvdt!debit Then maxm = RSJvdt!debit
    
   Set RSCsg = New Recordset
    If IsNumeric(RSJvdt!accode) Then
        RSCsg.Open "Select * from fa_cgtrn where glcode='" & RSJvdt!accode & "' and vocsno='" & RSJvdt!vocsno & "' and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockPessimistic
    Else
        RSCsg.Open "Select * from fa_cstrn where slcode='" & RSJvdt!accode & "' and vocsno='" & RSJvdt!vocsno & "' and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockPessimistic
    End If
        If Not RSCsg.EOF Then
            RSCsg!narration3 = mglhead
            RSCsg.Update
        End If
    
    RSJvdt.MoveNext
    Loop
    Set RSJvdt = New Recordset
    RSJvdt.Open "Select top 1 *  from fa_jvline where isnull(debit,0)=" & maxm & " and isnull(debit,0) >0  and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "' order by vocsno", DB, adOpenForwardOnly, adLockPessimistic
   Set RSCsg = New Recordset
    If IsNumeric(RSJvdt!accode) Then
        RSCsg.Open "Select glhead from fa_glmas where  glcode ='" & RSJvdt!accode & "'", DB, adOpenKeyset, adLockReadOnly
    Else
        RSCsg.Open "Select slname from fa_slmas where  slcode ='" & RSJvdt!accode & "'", DB, adOpenKeyset, adLockReadOnly
    End If
    mglhead = RSCsg(0)
    RSJvdt.Close
    Set RSJvdt = New Recordset
    RSJvdt.Open "Select  *  from fa_jvline where isnull(credit,0)>0 and  divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "' order by vocsno", DB, adOpenForwardOnly, adLockPessimistic
    Do While Not RSJvdt.EOF
   Set RSCsg = New Recordset
        If IsNumeric(RSJvdt!accode) Then
            RSCsg.Open "Select * from fa_cgtrn where  glcode='" & RSJvdt!accode & "' and vocsno='" & RSJvdt!vocsno & "' and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockPessimistic
        Else
            RSCsg.Open "Select * from fa_cstrn where slcode='" & RSJvdt!accode & "' and vocsno='" & RSJvdt!vocsno & "' and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockPessimistic
        End If
            If Not RSCsg.EOF Then
                RSCsg!narration3 = mglhead
                RSCsg.Update
            End If
        
        RSJvdt.MoveNext
    Loop
ElseIf mcredit > 1 And mdebit = 1 Then
    Set RSJvdt = New Recordset
   RSJvdt.Open "Select accode from fa_jvline where  isnull(debit,0) >0  and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenForwardOnly, adLockPessimistic
   Set RSCsg = New Recordset
   If IsNumeric(RSJvdt!accode) Then
        RSCsg.Open "Select glhead from fa_glmas where  glcode ='" & RSJvdt!accode & "'", DB, adOpenKeyset, adLockReadOnly
    Else
        RSCsg.Open "Select slname from fa_slmas where  slcode ='" & RSJvdt!accode & "'", DB, adOpenKeyset, adLockReadOnly
    End If
    mglhead = RSCsg(0)
    RSJvdt.Close
    Set RSJvdt = New Recordset
    RSJvdt.Open "Select *  from fa_jvline where  isnull(credit,0) >0  and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenForwardOnly, adLockPessimistic
    maxm = 0
    Do While Not RSJvdt.EOF
    If maxm < RSJvdt!credit Then maxm = RSJvdt!credit
    
   Set RSCsg = New Recordset
    If IsNumeric(RSJvdt!accode) Then
        RSCsg.Open "Select * from fa_cgtrn where glcode='" & RSJvdt!accode & "' and vocsno='" & RSJvdt!vocsno & "' and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockPessimistic
    Else
        RSCsg.Open "Select * from fa_cstrn where slcode='" & RSJvdt!accode & "' and vocsno='" & RSJvdt!vocsno & "' and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockPessimistic
    End If
        If Not RSCsg.EOF Then
            RSCsg!narration3 = mglhead
            RSCsg.Update
        End If
    
    RSJvdt.MoveNext
    Loop
    Set RSJvdt = New Recordset
    RSJvdt.Open "Select top 1 *  from fa_jvline where isnull(credit,0)=" & maxm & " and isnull(debit,0) >0  and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "' order by vocsno", DB, adOpenForwardOnly, adLockPessimistic
   Set RSCsg = New Recordset
    If IsNumeric(RSJvdt!accode) Then
        RSCsg.Open "Select glhead from fa_glmas where  glcode ='" & RSJvdt!accode & "'", DB, adOpenKeyset, adLockReadOnly
    Else
        RSCsg.Open "Select slname from fa_slmas where  slcode ='" & RSJvdt!accode & "'", DB, adOpenKeyset, adLockReadOnly
    End If
    mglhead = RSCsg(0)
    RSJvdt.Close
    Set RSJvdt = New Recordset
    RSJvdt.Open "Select  *  from fa_jvline where isnull(debit,0)>0 and  divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "' order by vocsno", DB, adOpenForwardOnly, adLockPessimistic
    Do While Not RSJvdt.EOF
   Set RSCsg = New Recordset
        If IsNumeric(RSJvdt!accode) Then
            RSCsg.Open "Select * from fa_cgtrn where  glcode='" & RSJvdt!accode & "' and vocsno='" & RSJvdt!vocsno & "' and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockPessimistic
        Else
            RSCsg.Open "Select * from fa_cstrn where slcode='" & RSJvdt!accode & "' and vocsno='" & RSJvdt!vocsno & "' and divcode ='" & Divcode & "' and vocno= " & mvocno & " and vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenDynamic, adLockPessimistic
        End If
            If Not RSCsg.EOF Then
                RSCsg!narration3 = mglhead
                RSCsg.Update
            End If
        
        RSJvdt.MoveNext
    Loop
End If

End Sub
Public Sub UpdateCgtrnjventry_Service(mtc As Integer, mvocno As Integer, mvocdt As Date, mGlcode As String, medugl As String, mhsgl As String, mSLCode As String, msno As Integer)
    Dim RSJvdt As Recordset
    Dim RSCsg As Recordset
    Set RSCsg = New Recordset
    RSCsg.Open "Select glhead from fa_glmas where  glcode ='" & mGlcode & "'", DB, adOpenKeyset, adLockReadOnly
        mglhead1 = RSCsg(0)
    RSCsg.Close
    RSCsg.Open "Select slname from fa_slmas where  slcode ='" & mSLCode & "'", DB, adOpenKeyset, adLockReadOnly
        mglhead2 = RSCsg(0)
    RSCsg.Close
    Set RSJvdt = New Recordset
    DB.Execute "Update fa_cstrn set narration3='" & mglhead1 & "' where slcode ='" & mSLCode & "' and vocsno=" & msno & " and divcode ='" & Divcode & "' and  vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'"
    DB.Execute "Update fa_cgtrn set narration3='" & mglhead2 & "' where glcode ='" & mGlcode & "' and  vocsno=" & val(msno - 3) & " and divcode ='" & Divcode & "' and  vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'"
    DB.Execute "Update fa_cgtrn set narration3='" & mglhead2 & "' where glcode ='" & medugl & "' and  vocsno=" & val(msno - 2) & " and divcode ='" & Divcode & "' and  vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'"
    DB.Execute "Update fa_cgtrn set narration3='" & mglhead2 & "' where glcode ='" & mhsgl & "' and  vocsno=" & val(msno - 1) & " and divcode ='" & Divcode & "' and  vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'"
End Sub
Public Sub UpdateCgtrnjventry_tds(mtc As Integer, mvocno As Integer, mvocdt As Date, mglcode1 As String, mglcode2 As String, mtdsamt As Double)
Dim RSJvdt As Recordset
Dim RSCsg As Recordset
Set RSCsg = New Recordset
     RSCsg.Open "Select glhead from fa_glmas where  glcode ='" & mglcode1 & "'", DB, adOpenKeyset, adLockReadOnly
    mglhead = RSCsg(0)
    RSCsg.Close
    Set RSJvdt = New Recordset
    RSJvdt.Open "Select *  from fa_cstrn where slcode='" & mglcode2 & "' and isnull(debit,0) = " & mtdsamt & "  and divcode ='" & Divcode & "' and  vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenForwardOnly, adLockPessimistic
        If Not RSJvdt.EOF Then
            RSJvdt!narration3 = mglhead
            RSJvdt.Update
        End If
   RSJvdt.Close
   Set RSCsg = New Recordset
    RSCsg.Open "Select slname from fa_slmas where  slcode ='" & mglcode2 & "'", DB, adOpenKeyset, adLockReadOnly
    mglhead = RSCsg(0)
    RSCsg.Close
    Set RSJvdt = New Recordset
    RSJvdt.Open "Select *  from fa_cgtrn where glcode='" & mglcode1 & "' and isnull(credit,0) = " & mtdsamt & "  and divcode ='" & Divcode & "' and  vocdt ='" & Format(mvocdt, "yyyy-MM-dd") & "'", DB, adOpenForwardOnly, adLockPessimistic
    If Not RSJvdt.EOF Then
        RSJvdt!narration3 = mglhead
        RSJvdt.Update
    End If
End Sub

Private Sub txtRefNo_KeyPress(KeyAscii As Integer)

On Error GoTo txtRefNo_KeyPress_Error

ToAlphanum txtRefNo, 25, KeyAscii

   On Error GoTo 0
   Exit Sub

txtRefNo_KeyPress_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtRefNo_KeyPress of Form JURNL"

End Sub



Public Sub FAupdatetds()

Dim i As Integer, value As Double
Dim bval As Double, GL As String, GNAME As String
Dim db1 As Connection
Dim rstds1 As Recordset
Dim rstds2 As Recordset
Dim rstds3 As Recordset
Dim rstds4 As Recordset
Dim CR
Dim CR1
Dim crtot

'Select Case OPT
'Case "add"
'----------------------------------------- FOR FA UPDATION ----------------------------------------------------'


   On Error GoTo FAupdatetds_Error



    Set db1 = New Connection
    db1.CursorLocation = adUseClient
    db1.Open "PROVIDER=MSDataShape;" + connectstring
                
                
    Set rstds4 = New Recordset
    
    If Opt = "add" Then
        rstds4.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%') ", db1, adOpenDynamic, adLockOptimistic
    Else
        rstds4.Open "select ACCODE,CREDIT,docno,narration1 from fa_jvline where Divcode = '" & Divcode & "' AND Tc = " & txtFields(1).Text & " AND Vocno = " & vocno & " AND Vocdt = '" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' and (accode like 'C%' OR accode like 'D%' OR accode like 'O%')  ", db1, adOpenDynamic, adLockOptimistic
    End If
    
    
    
    Set rstds2 = New Recordset
    rstds2.Open "select * from fa_tds_gl where tds_type='" & Text4.Text & "' AND ORG_TYPE=(SELECT ORG_TYPE FROM FA_SLMAS WHERE SLCODE='" & rstds4("accode").value & "')", db1, adOpenDynamic, adLockOptimistic
    
    Set rstds3 = New Recordset
    rstds3.Open "select * from fa_tds_tax_pert where tds_gl_code=(select tds_gl_Code from fa_tds_gl where tds_gl_code=" & rstds2("TDS_GL_CODE") & ")", db1, adOpenDynamic, adLockOptimistic
       
    
    CR1 = val(Text13.Text) * (val(Text15.Text) / 100)
    
    CR = CR1 + CR1 * (val(Text14.Text) / 100)
          
    crtot = Round(CR + (CR * (val(Text16.Text) / 100)) + (CR * (val(Text17.Text) / 100)), 0)
    

    
    'If Opt = "mod" Then
     '   db1.Execute "delete from fA_TDS where divcode='" & Divcode & "' and vocno=" & vocNo & " and vocdt='" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "' and tc= " & Val(txtfields(1).text) & ""
    'End If
    
    'db1.Execute "insert into FA_TDS(divcode,vocno,VOCDT,SLCODE,TDS_AMOUNT,tds_rate,tds_type,amount,tds_gl_code,edu_cess_per,hs_cess_per,sc_per,tc) values ('" & Divcode & "'," & vocNo & ",'" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "','" & rstds4("ACCODE") & "'," & crtot & "," & Val(Text15.text) & ",'" & rstds2("tds_type") & "'," & Val(Text13.text) & "," & rstds2("tds_gl_code") & "," & Val(Text16.text) & "," & Val(Text17.text) & "," & Val(Text14.text) & "," & Val(txtfields(1).text) & ")"



        'db1.Execute "update FA_TDS SET divcode='" & Divcode & "',vocno=" & vocNo & ",VOCDT='" & Format(MaskEdBox1(0).text, "YYYY-MM-DD") & "',SLCODE='" & rstds4("ACCODE") & "',ADJAMT=" & crtot & ",tds_rate=" & Val(Text15.text) & ",tds_type='" & rstds2("tds_type") & "',amount=" & Val(Text13.text) & ",tds_gl_code=" & rstds2("tds_gl_code") & ",edu_cess_per=" & Val(Text16.text) & ",hs_cess_per=" & Val(Text17.text) & ",sc_per=" & Val(Text14.text) & ",tc=" & Val(txtfields(1).text) & " WHERE divcode='" & Divcode & "' AND Vocno = " & Trim(tdsrefno.text) & " AND Vocdt = '" & Format(DTPicker2.Value, "YYYY-MM-DD") & "' and slcode='" & rstds4("accode") & "'"
        
        db1.Execute "update FA_TDS SET ADJAMT=" & crtot & ",tds_rate=" & val(Text15.Text) & ",tds_type='" & rstds2("tds_type") & "',amount=" & val(Text13.Text) & ",tds_gl_code=" & rstds2("tds_gl_code") & ",edu_cess_per=" & val(Text16.Text) & ",hs_cess_per=" & val(Text17.Text) & ",sc_per=" & val(Text14.Text) & " WHERE divcode='" & Divcode & "' AND Vocno = " & Trim(tdsrefno.Text) & " AND Vocdt = '" & Format(DTPicker2.value, "YYYY-MM-DD") & "'  and slcode='" & rstds4("accode") & "'"
                                        


        intTc = txtFields(1).Text
        Call BUTTON_Click(0)
      
      
      
''End If

   On Error GoTo 0
   Exit Sub

FAupdatetds_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FAupdatetds of Form JURNL"



End Sub


Sub TcLookup()
   'On Error GoTo TcLookup_Error

        Screen.MousePointer = 0
        
intTc = 0
    If intTc = 0 Then
        LookUp.clear = True
        
        'qrl = "Select TC [Code],tchead  as [Head] from fa_tcmas,fa_param where ((tc between " & fbank & " and " & tbank & ") or (tc between " & fcash & " and " & tcash & ")        )"
        
        qrl = "select Tc,Tchead from FA_TCMAS,FA_PARAM where tc between fromcashtc and tojvtc"
        
        LookUp.query = qrl
        LookUp.Caption = "Transaction Listing"
        LookUp.DefCol = "Head"
        LookUp.ALIGN = "1500,5000"
        LookUp.Show vbModal
        
            If LookUp.Cancel = False Then
               intTc = LookUp.Fields(0)
            Else
               intTc = 0
            End If
    End If
    
       If intTc <> 0 Then
        
            If Opt = "add" Then
                If IsNull(intTc) Then
                     MsgBox "No Transaction Codes found", vbInformation, head
                    Exit Sub
                 End If
            
                TC = intTc
    
                Text18.Text = CInt(TC)
            End If
        End If
        
        

End Sub


'
'Public Sub JvPrint() 'tc As String, test1 As String, test2 As String, qyear As String, QMon As String)
'
'
'Dim rs1 As Recordset
'Dim result As Recordset
'Dim result1 As Recordset
'Dim cnn As Connection
'Dim ca As String
'Dim FDt As String
'Dim TDt As String
'Dim RPTV As Report.ReportView
'Dim Cr_Total As Double
'Dim Dr_Total As Double
'Dim Voc_No As String
'Dim Voc_Dt As String
'Dim tot1, tot2, tot3 As Integer
'Dim PgBr As Integer
'
'Set db = New Connection
'db.Provider = "msdatashape"
'db.Open connectstring
'
'Set trs = New Recordset
'trs.Open "select divname,isnull(add1,''),isnull(add2,''),isnull(city,''),isnull(pincode,''),isnull(phone1,''),isnull(phone2,'') from pp_divmas WHERE divcode = '" & divcode & "'", db
'Set cm1 = New Command
'cm1.ActiveConnection = db
'Dim l As Integer
'l = Len(tc)
'Set cm1 = New Command
'cm1.ActiveConnection = db
'
'
'Dim cda As Double
'
'If Table_Exists("numw") Then db.Execute "drop table numw"
'
'
'Set rs1 = New Recordset
'cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150))"
'cm1.Execute
'
' rs1.Open "SELECT VOCNO, VOCDT,SUM(isnull(debit,0)) from fa_jvline where divcode = '" & divcode & "' and tc = " & txtfields(1).Text & "  and vocno = " & txtfields(2).Text & " and vocdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'  GROUP BY vocno,vocdt ", cn1
'
'If Not (rs1.EOF Or rs1.BOF) Then
'     rs1.MoveFirst
'End If
'PgBr = 0
'
'Do While Not (rs1.EOF)
'   wor = Num_To_Word(CDbl(rs1(2)))
'   cn1.Execute ("insert into numw(vocno,vocdt,amt,wamt) values (" & rs1(0) & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & wor & "')")
'   rs1.MoveNext
'Loop
'
'       If Table_Exists("VW_FA_JVPrint") Then cn1.Execute "drop view VW_FA_JVPrint"
'
'       cn1.Execute "create view VW_FA_JVPrint as SELECT h.divcode,r.accode, (case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) ach, h.VOCNO,h.VOCDT,wamt, narration1,narration2, debit , credit  from fa_jvline r,fa_jvhead h, numw n where   h.vocno = n.vocno and h.vocdt = n.vocdt and h.tc=r.tc and h.vocno=r.vocno and h.vocdt=r.vocdt and h.divcode = r.divcode  and h.divcode = '" & divcode & "' and h.tc = " & txtfields(1).Text & "  and h.vocno = " & txtfields(2).Text & " and vocdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'"
'
'
'
'
'''Format(Combo7.text, "dd/mmm/yyyy")
'
'
'
''       Set cnn1 = New Connection
''       cnn1.Provider = "MSDATASHAPE"
''       cnn1.Open KslCompanySelection3.SelConnectStr
''       connectstring = KslCompanySelection3.SelConnectStr
''       divname = KslCompanySelection3.SelDivision
''       divcode = KslCompanySelection3.SelDivCode
''       KslCompanySelection3.ConnStr = connectstring
'
'
'       'CR1.ReportFileName = KALFOLDERREPORT & "JVPrinting.rpt"
'       'CR1.Connect = KslCompanySelection3.SelConnectStr
'       'CR1.RetrieveDataFiles
'
'
'       CR1.WindowParentHandle = frmMain.hwnd
'       CR1.Formulas(2) = "AmtWord='" & wor & "'"
'
'       CR1.ReportTitle = divname
'       CR1.WindowState = 2
'       CR1.WindowShowPrintSetupBtn = True
'       CR1.WindowShowSearchBtn = True
'       CR1.action = 1
'       db.Execute "drop table numw"
'
'
'
'
'
'
'End Sub
'


Private Sub JVPRINT()  'Journal_Printing_Crystal(tc As String, test1 As String, test2 As String, qyear As String, QMon As String)


Dim rs1 As Recordset
Dim RESULT As Recordset
Dim result1 As Recordset
Dim Cnn As Connection
Dim CA As String
Dim fdt As String
Dim Tdt As String
Dim rptv As Report.ReportView
Dim Cr_Total As Double
Dim Dr_Total As Double
Dim Voc_No As String
Dim Voc_Dt As String
Dim tot1, tot2, tot3 As Integer
Dim PgBr As Integer

Set DB = New Connection
DB.Provider = "msdatashape"
DB.Open connectstring

Set trs = New Recordset
trs.Open "select divname,isnull(add1,''),isnull(add2,''),isnull(city,''),isnull(pincode,''),isnull(phone1,''),isnull(phone2,'') from pp_divmas WHERE divcode = '" & Divcode & "'", DB
Set cm1 = New Command
cm1.ActiveConnection = DB
Dim l As Integer
l = Len(TC)
Set cm1 = New Command
cm1.ActiveConnection = DB


Dim cda As Double

If Table_Exists("numw") Then DB.Execute "drop table numw"



Set rs1 = New Recordset
cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150))"

cm1.Execute
' rs1.Open "SELECT VOCNO, VOCDT,SUM(isnull(debit,0)) from fa_jvline where divcode = '" & divcode & "' and tc=cast(" & Mid(tc, 1, 2) & " as numeric)  and vocno between " & test1 & " and " & test2 & " and year(vocdt) = " & qyear & " and month(vocdt) = " & QMon & "  GROUP BY vocno,vocdt order by vocdt,vocno", db

 rs1.Open "SELECT VOCNO, VOCDT,SUM(isnull(debit,0)) from fa_jvline where divcode = '" & Divcode & "' and tc = " & txtFields(1).Text & "   and vocno = " & txtFields(2).Text & "  and vocdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'  GROUP BY vocno,vocdt ", DB
 

If Not (rs1.EOF Or rs1.BOF) Then
     rs1.MoveFirst
End If
PgBr = 0
Do While Not (rs1.EOF)
   wor = Num_To_Word(CDbl(rs1(2)))
   DB.Execute ("insert into numw(vocno,vocdt,amt,wamt) values (" & rs1(0) & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & rs1(2) & ",'" & wor & "')")
   rs1.MoveNext
Loop



       If Table_Exists("VW_FA_JVPrint") Then DB.Execute "drop view VW_FA_JVPrint"
          
       DB.Execute "create view VW_FA_JVPrint as SELECT h.divcode,r.accode, (case when substring(accode,1,1) = 'C' or substring(accode,1,1) = 'D' or substring(accode,1,1) = 'O' Then (select slname from fa_slmas where slcode = accode) else (select glhead from fa_glmas where glcode = accode) end) ach, h.VOCNO,h.VOCDT,wamt, narration1,narration2, debit , credit  from fa_jvline r,fa_jvhead h, numw n where   h.vocno = n.vocno and h.vocdt = n.vocdt and h.tc=r.tc and h.vocno=r.vocno and h.vocdt=r.vocdt and h.divcode = r.divcode  and h.divcode = '" & Divcode & "' and h.tc = " & txtFields(1).Text & "  and h.vocno = " & txtFields(2).Text & " and H.vocdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' "
             
       
       
       
'       Set cnn1 = New Connection
 '      cnn1.Open ConnectionString


        
      ' CR2.Reset
      ' CR2.Connect = ConnectionString
              
       'CR2.ReportFileName = KALFOLDERREPORT & "JVPrinting.rpt"
       
      ' CR2.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\JVPrinting.rpt"
      
      
      
          Dim clsCryRpt1 As New clsCrystal
          Set clsCryRpt1.cryRept = Jv_print
          clsCryRpt1.CrystalPrint
                
          CR2.Reset
          CR2.Connect = connectstring
          CR2.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       'CR2.WindowParentHandle = frmMain.hWnd
       CR2.Formulas(2) = "AmtWord='" & wor & "'"
       CR2.Formulas(3) = "tchead='" & TCN & "'"
       
       
       CR2.ReportTitle = divname
       CR2.WindowState = 2
       CR2.WindowShowPrintSetupBtn = True
       CR2.WindowShowSearchBtn = True
       CR2.Action = 2
       DB.Execute "drop table numw"

       
       
       
       
       
End Sub



         
Public Sub cancl(tol As Object, no As Integer)

    On Error Resume Next

    If Opt = 0 Then
    
        Dim DB As New Connection
        DB.Open cnstr
        
        Dim Rs As New Recordset
        Rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Divcode & "' AND MODULE = " & ModuleNo & "  AND ULEVEL = " & ulevel & "  AND SNO = " & no, DB
        
        If Rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
        If Rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
        If Rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False
        
        tol(3).Enabled = True  'LIST
        tol(5).Enabled = True  'FIRST
        tol(6).Enabled = True  'NEXT
        tol(7).Enabled = True  'PREVIOUS
        tol(8).Enabled = True  'LAST
        tol(9).Enabled = False 'SAVE
        tol(10).Enabled = True 'CANCEL
        tol(11).Enabled = True 'EXIT
    Else
        tol(0).Enabled = True 'add
        tol(1).Enabled = True  'mod
        tol(2).Enabled = True  'del
        tol(3).Enabled = True  'LIST
        tol(5).Enabled = True  'FIRST
        tol(6).Enabled = True  'NEXT
        tol(7).Enabled = True  'PREVIOUS
        tol(8).Enabled = True  'LAST
        tol(9).Enabled = False 'SAVE
        tol(10).Enabled = True 'CANCEL
        tol(11).Enabled = True 'EXIT
    End If

End Sub
         

Public Sub EntryLocking(edate As String)

       Dim DB As New Connection
       DB.Open cnstr

fa_flag = "N"

DB.Execute "delete from fA_param where LASTLISCH is null"

Set rsa = New Recordset
'''rsa.Open "select pentry_lock from pp_passwd WHERE DIVCODE='" & Divcode & "' AND alevel='" & ulevel & "' and module='" & ModuleNo & "' and user_name='" & user_name & "'  ", db, adOpenStatic

'rsa.Open "select pentry_lock,sdate,edate from pp_passwd WHERE DIVCODE='" & Divcode & "' AND alevel='" & ulevel & "' and module='1' and user_name='" & user_name & "'  ", db, adOpenStatic

''rsa.Open "select sdate,edate from fa_param", db, adOpenStatic

rsa.Open "select sdate,edate from pp_date where divcode='" & Divcode & "'", DB, adOpenStatic

Set Rs = New Recordset
Rs.Open " SELECT GETDATE() as CDate,dateadd(d,-1,getdate()) as Pre_Date ", DB, adOpenStatic

If rsa.RecordCount > 0 Then
    'If rsa("Pentry_lock") = "Y" Then
            ''   'If Format(Edate, "yyyy-mm-dd") < Format(RS("Pre_Date"), "yyyy-mm-dd") Then
        
        If (Format(edate, "yyyy-mm-dd") < Format(rsa("sdate"), "yyyy-mm-dd")) Or (Format(edate, "yyyy-mm-dd") > Format(rsa("edate"), "yyyy-mm-dd")) Then
        
        'If (Format(edate, "yyyy-mm-dd") >= Format(rsa("sdate"), "yyyy-mm-dd")) And (Format(edate, "yyyy-mm-dd") <= Format(rsa("edate"), "yyyy-mm-dd")) Then
    
          'MsgBox "Entry is Locked ", vbInformation, head
            MsgBox "Please Select Date in Current Accounting Period Only", vbInformation, head
          
            fa_flag = "Y"
            Exit Sub
        End If
    'End If
End If
End Sub

