VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form FrmSlmaster 
   BackColor       =   &H00C0C0C0&
   Caption         =   "Supplier"
   ClientHeight    =   8625
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11265
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8625
   ScaleWidth      =   11265
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   13
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":0000
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "RMISlmast.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":0797
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMISlmast.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":0E34
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "RMISlmast.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":15E3
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
         Picture         =   "RMISlmast.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":1C89
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMISlmast.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "RMISlmast.frx":230D
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":26A4
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "RMISlmast.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":2E3E
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "RMISlmast.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":361D
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "RMISlmast.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":3CC9
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "RMISlmast.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISlmast.frx":434F
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "RMISlmast.frx":4799
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   7965
         TabIndex        =   15
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
         Left            =   6195
         TabIndex        =   14
         Top             =   255
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar statusbar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   12
      Top             =   8325
      Width           =   11265
      _ExtentX        =   19870
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
            Alignment       =   1
            TextSave        =   "16/03/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "11:06 AM"
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
      Height          =   4800
      Left            =   510
      TabIndex        =   21
      Top             =   1155
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   8467
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      BackColor       =   12632256
      ForeColor       =   -2147483640
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Address"
      TabPicture(0)   =   "RMISlmast.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Details"
      TabPicture(1)   =   "RMISlmast.frx":4B17
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame3"
      Tab(1).ControlCount=   1
      Begin VB.Frame Frame2 
         Height          =   4260
         Left            =   135
         TabIndex        =   43
         Top             =   390
         Width           =   7965
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PHONE1"
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
            Index           =   9
            Left            =   1155
            MaxLength       =   20
            TabIndex        =   59
            Top             =   3105
            Width           =   2310
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "telegram"
            Height          =   330
            Index           =   32
            Left            =   5715
            TabIndex        =   58
            Top             =   3105
            Width           =   2055
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ABBR"
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
            Index           =   1
            Left            =   1155
            Locked          =   -1  'True
            TabIndex        =   57
            Top             =   585
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "WEBADDR"
            Height          =   330
            Index           =   13
            Left            =   5715
            TabIndex        =   56
            Top             =   3855
            Width           =   2055
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "EMAIL"
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
            Index           =   12
            Left            =   1155
            TabIndex        =   55
            Top             =   3855
            Width           =   2295
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "FAX"
            Height          =   330
            Index           =   11
            Left            =   5715
            MaxLength       =   20
            TabIndex        =   54
            Top             =   3480
            Width           =   2055
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PHONE2"
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
            Index           =   10
            Left            =   1155
            MaxLength       =   20
            TabIndex        =   53
            Top             =   3480
            Width           =   2295
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PIN"
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
            Index           =   8
            Left            =   6195
            TabIndex        =   52
            Top             =   1905
            Width           =   1575
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "COUNTRY"
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
            Index           =   7
            Left            =   1155
            MaxLength       =   30
            TabIndex        =   51
            Top             =   2610
            Width           =   3960
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "STATE"
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
            Index           =   6
            Left            =   1155
            TabIndex        =   50
            Top             =   2235
            Width           =   3960
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CITY"
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
            Left            =   1155
            MaxLength       =   30
            TabIndex        =   49
            Top             =   1875
            Width           =   3975
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SLCODE"
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
            Index           =   0
            Left            =   1155
            TabIndex        =   48
            Top             =   225
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD1"
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
            Index           =   3
            Left            =   1155
            MaxLength       =   30
            TabIndex        =   47
            Top             =   1125
            Width           =   6615
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD2"
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
            Left            =   1155
            MaxLength       =   30
            TabIndex        =   46
            Top             =   1485
            Width           =   6615
         End
         Begin VB.TextBox prtyTXT 
            DataField       =   "prtyhead"
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
            Left            =   3675
            Locked          =   -1  'True
            TabIndex        =   45
            TabStop         =   0   'False
            Top             =   585
            Width           =   4095
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SLNAME"
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
            Index           =   2
            Left            =   3675
            MaxLength       =   40
            TabIndex        =   44
            Top             =   225
            Width           =   4095
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Telegram"
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
            Left            =   4635
            TabIndex        =   72
            Top             =   3180
            Width           =   885
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Web site "
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
            Left            =   4635
            TabIndex        =   71
            Top             =   3930
            Width           =   840
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "E-Mail "
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
            Left            =   225
            TabIndex        =   70
            Top             =   3930
            Width           =   615
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Fax"
            Height          =   195
            Left            =   4635
            TabIndex        =   69
            Top             =   3555
            Width           =   255
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Phone"
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
            Left            =   225
            TabIndex        =   68
            Top             =   3180
            Width           =   585
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Pin Code"
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
            Left            =   5235
            TabIndex        =   67
            Top             =   1980
            Width           =   825
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Country"
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
            Left            =   225
            TabIndex        =   66
            Top             =   2670
            Width           =   675
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "State"
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
            Left            =   225
            TabIndex        =   65
            Top             =   2310
            Width           =   465
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "City"
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
            Left            =   225
            TabIndex        =   64
            Top             =   1950
            Width           =   330
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Address"
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
            Left            =   225
            TabIndex        =   63
            Top             =   1200
            Width           =   765
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Abbr"
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
            Left            =   225
            TabIndex        =   62
            Top             =   660
            Width           =   435
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Name"
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
            Left            =   2955
            TabIndex        =   61
            Top             =   300
            Width           =   555
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Code"
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
            Left            =   195
            TabIndex        =   60
            Top             =   300
            Width           =   495
         End
      End
      Begin VB.Frame Frame3 
         Height          =   4230
         Left            =   -74775
         TabIndex        =   22
         Top             =   435
         Width           =   7860
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contphone"
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
            Height          =   330
            Index           =   20
            Left            =   6210
            MaxLength       =   30
            TabIndex        =   32
            Top             =   1755
            Width           =   1455
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contdesg"
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
            Height          =   330
            Index           =   21
            Left            =   1650
            TabIndex        =   31
            Top             =   1770
            Width           =   3135
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contper"
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
            Height          =   330
            Index           =   22
            Left            =   1650
            TabIndex        =   30
            Top             =   1395
            Width           =   4455
         End
         Begin VB.TextBox TXname 
            DataField       =   "slname"
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
            Height          =   330
            Left            =   1650
            TabIndex        =   29
            Top             =   1005
            Width           =   6015
         End
         Begin VB.TextBox vendor 
            DataField       =   "slcode"
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
            Height          =   330
            Left            =   1650
            TabIndex        =   28
            Top             =   630
            Width           =   1215
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CRLIMIT"
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
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   28
            Left            =   6210
            TabIndex        =   27
            Top             =   2130
            Width           =   1455
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CRDDAYS"
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
            Height          =   330
            Index           =   27
            Left            =   1650
            TabIndex        =   26
            Top             =   2145
            Width           =   975
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PAY_TERMS"
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
            Height          =   330
            Index           =   26
            Left            =   1650
            MultiLine       =   -1  'True
            TabIndex        =   25
            Top             =   2520
            Width           =   4695
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PAN"
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
            Height          =   330
            Index           =   19
            Left            =   1650
            TabIndex        =   24
            Top             =   3285
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ECC"
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
            Height          =   330
            Index           =   18
            Left            =   1650
            TabIndex        =   23
            Top             =   2910
            Width           =   2655
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Phone No."
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
            Left            =   5130
            TabIndex        =   42
            Top             =   1830
            Width           =   945
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Contact Person"
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
            Left            =   210
            TabIndex        =   41
            Top             =   1455
            Width           =   1365
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Designation"
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
            Left            =   210
            TabIndex        =   40
            Top             =   1830
            Width           =   1080
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Code"
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
            Left            =   210
            TabIndex        =   39
            Top             =   705
            Width           =   495
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Name"
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
            Left            =   210
            TabIndex        =   38
            Top             =   1080
            Width           =   555
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Credit Limit"
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
            Index           =   15
            Left            =   5130
            TabIndex        =   37
            Top             =   2205
            Width           =   975
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Credit Days"
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
            Left            =   210
            TabIndex        =   36
            Top             =   2220
            Width           =   1050
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Payment Terms"
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
            Left            =   210
            TabIndex        =   35
            Top             =   2595
            Width           =   1425
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "PAN No."
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
            Index           =   6
            Left            =   210
            TabIndex        =   34
            Top             =   3360
            Width           =   780
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "ECC"
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
            Left            =   210
            TabIndex        =   33
            Top             =   2970
            Width           =   405
         End
      End
   End
   Begin VB.Frame Frame1 
      Height          =   5100
      Left            =   510
      TabIndex        =   16
      Top             =   1005
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMISlmast.frx":4B33
         Height          =   615
         Left            =   3000
         Picture         =   "RMISlmast.frx":4F19
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMISlmast.frx":52DF
         Height          =   615
         Left            =   4740
         Picture         =   "RMISlmast.frx":56C1
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   19
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.Label DISTRIB 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Supplier Listing"
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
         TabIndex        =   20
         Top             =   120
         Visible         =   0   'False
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Supplier"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   345
      Left            =   510
      TabIndex        =   11
      Top             =   600
      Width           =   1095
   End
End
Attribute VB_Name = "FrmSlmaster"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim DB As Connection
Dim Opt As String
Dim sl As Integer
Dim prty As String
Dim BK As Integer
Dim found1, found2, found3 As Boolean
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 0
        'add
        Set rs1 = New Recordset
        rs1.Open "select count(*) from FA_PRTY where prtytyp like 'C%'", DB
        If Not rs1(0) = 0 Then
        Opt = "add"
        desc.Caption = "Addition"
        StatusBar1.Panels(2).Text = "Addition"
        Buttonframe.Enabled = False
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select SLCODE,SLNAME,ABBR,ADD1,ADD2,CITY,PIN,STATE,COUNTRY,PHONE1,PHONE2,EMAIL,WEBADDR,FAX,CRLIMIT,BANKADD1,BANKADD2,TNGST,CGST,TNGSTDT,CGSTDT,ECC,PAN,CONTPER,CONTDESG,CONTPHONE,PRTYTYP,PAY_TERMS,CRDDAYS,CRLIMIT,AREACODE,CARCODE,TELEGRAM,TRN_DEBT,PRTYTYP,brcode,tax_code,INSPER from FA_SLMAS  where 1 = 2  ", DB, adOpenStatic, adLockBatchOptimistic
        'Bind the text boxes,check boxes and option buttons  to the data source
        Call ENABLCONTLS
        Call bindcontls
        adoPrimaryRS.AddNew
        DB.BeginTrans
        'abbr.Text = ""
        TXname.Text = ""
        vendor.Text = ""
        'bank1.Text = ""
        'bank2.Text = ""
        'carrier.Text = ""
        'area.Text = ""
        prtyTXT.Text = ""
        'tax.Text = ""
        'Check1.Value = 0
        'Calling adddelmod procedure
        StatusBar1.Panels(2).Text = "Select a Party type from the list"
        Call adddelmod(BUTTON)
        Frame1.Visible = True
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "FA_PRTY where prtytyp like 'C%'"
        KSLLIST1.listfield1 = "prtytyp"
        KSLLIST1.listfield2 = "prtyhead"
        Txtfields(0).Locked = True
        S = ""
        SSTab1.Tab = 0
        BK = 0
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 1
        'Modification
        Set rs1 = New Recordset
        rs1.Open "select count(*) from FA_PRTY where prtytyp like 'C%'", DB
    If Not rs1(0) = 0 Then
        Opt = "mod"
        desc.Caption = "Modification"
        StatusBar1.Panels(2).Text = "Select a Party type from the list for modification"
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "FA_PRTY where prtytyp like 'C%'"
        KSLLIST1.listfield1 = "prtytyp"
        KSLLIST1.listfield2 = "prtyhead"
        Frame1.Visible = True
        Frame1.ZOrder
        Command6.SetFocus
        DB.BeginTrans
        SSTab1.Tab = 0
        Dim TX As TextBox
    For Each TX In Me.Txtfields
        TX.Locked = False
    Next
        Txtfields(0).Locked = True
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
    Else
        MsgBox "No Record FOund", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        Set rs1 = New Recordset
        rs1.Open "select count(*) from FA_PRTY where prtytyp like 'C%'", DB
    If Not rs1(0) = 0 Then
        Opt = "del"
        desc.Caption = "Deletion"
        StatusBar1.Panels(2).Text = "Deletion"
    For Each TX In Me.Txtfields
        TX.Locked = True
    Next
        SSTab1.Tab = 0
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "FA_PRTY where prtytyp like 'C%'"
        KSLLIST1.listfield1 = "prtytyp"
        KSLLIST1.listfield2 = "prtyhead"
        Frame1.Visible = True
        Command6.SetFocus
        Frame1.ZOrder
        DB.BeginTrans
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
    Else
        MsgBox "No record Found", vbInformation, head
        Exit Sub
    End If

Case 3
        'list
        desc.Caption = "Listing"
        Dim f As New list
        Repindex = 21
        f.Show
Case 4
        'Query
        Opt = "query"
        desc.Caption = "Query"
        'calling query procedure from module
        Call Query(BUTTON)
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        'calling fir procedure from module
        Call navi(BUTTON)
        Call FIR(BUTTON)
        StatusBar1.Panels(2).Text = "First Record"
        Exit Sub
GoFirstError:
    If Err = 3021 Then
        MsgBox " No Records Found", vbInformation, head
    End If
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
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
        'Call NEX(BUTTON)
        'moved off the end so go back
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
    End If
        'show the current record
        Call navi(BUTTON)
        Exit Sub
GoNextError:
    If Err = 3021 Then
        MsgBox " No Records Found", vbInformation, head
    End If
Case 7
        'Previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
    If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
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
        StatusBar1.Panels(2).Text = "First Record"
    End If
        'show the current record
        Call navi(BUTTON)
        Exit Sub

GoPrevError:
    If Err = 3021 Then
        MsgBox " No Records Found", vbInformation, head
    End If
Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        'calling las procedure from module
        Call navi(BUTTON)
        Call las(BUTTON)
        StatusBar1.Panels(2).Text = "Last Record"
        Exit Sub
GoLastError:
    If Err = 3021 Then
        MsgBox " No Records Found", vbInformation, head
    End If
Case 9
        'Save
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    If Opt = "add" Then
        adoPrimaryRS("PRTYTYP") = prty
        If Txtfields(2).Text = "" Then
            MsgBox "Name cannot be empty", vbInformation, head
            Txtfields(2).SetFocus
            Exit Sub
        ElseIf Txtfields(3).Text = "" Then
            MsgBox "Address cannot be empty", vbInformation, head
            Txtfields(3).SetFocus
            Exit Sub
        ElseIf Txtfields(5).Text = "" Then
            MsgBox " City Cannot be empty", vbInformation, head
            Txtfields(5).SetFocus
            Exit Sub
        ElseIf Txtfields(9).Text = "" Then
             MsgBox " Phone Cannot be empty", vbInformation, head
             Txtfields(9).SetFocus
             Exit Sub
        Else
'        If adoPrimaryRS(3) = "" Then
'            MsgBox "Address cannot be empty", vbCritical, head
'            TXTFIELDS(3).SetFocus
'            Exit Sub
'        ElseIf adoPrimaryRS(6) = "" Then
'            MsgBox " City Cannot be empty", vbCritical, head
'            TXTFIELDS(5).SetFocus
'            Exit Sub
'        End If
''        If Check1.Value = 1 Then
  '          adoPrimaryRS("TRN_DEBT") = "Y"
   '     Else
     '       adoPrimaryRS("TRN_DEBT") = "N"
      '  End If
        
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
        End If
     End If
     If Opt = "mod" Then
        If IsNull(adoPrimaryRS("ADD1")) Then
            MsgBox "Address cannot be empty", vbInformation, head
            Txtfields(3).SetFocus
            Exit Sub
        ElseIf IsNull(adoPrimaryRS("city")) Then
            MsgBox " City Cannot be empty", vbInformation, head
            Txtfields(5).SetFocus
            Exit Sub
        End If
'        If Check1.Value = 1 Then
 '           adoPrimaryRS("TRN_DEBT") = "Y"
  '      Else
   '         adoPrimaryRS("TRN_DEBT") = "N"
    '    End If
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
     End If
     If Opt = "del" Then
        On Error GoTo deler
      If MsgBox("You want to Delete", vbYesNo, head) = vbYes Then
        DB.Execute ("delete from FA_SLMAS where SLCODE=" & "'" & Txtfields(0).Text & "'")
        DB.CommitTrans
      Else
        Call BUTTON_Click(10)
        Exit Sub
      End If
   End If
'Return to query mode
Call QUERY_MODE
'calling newform_cancel procedure from module (also for save)
Call NEWFORM1(BUTTON, GSNO)
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
Case 10
    desc.Caption = "Query"
    
    'CANCEL
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Call QUERY_MODE
    'calling cancl procedure from module
    Call cancl(BUTTON)

Case 11
    'EXIT
    Unload Me
End Select
SendKeys ("{esc}")
Exit Sub
deler:
If Err = -2147217900 Or 438 Then
        MsgBox "This Supplier cannot be deleted as dependencies exist", vbInformation, head
        Screen.MousePointer = 0
End If
SendKeys ("{esc}")

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click", vbInformation, head
End Sub

Private Sub Command5_Click()
    Buttonframe.Enabled = True
    Frame1.Visible = False
End Sub

Private Sub Command6_Click()
Dim Rs As Recordset
Buttonframe.Enabled = True
Select Case KSLLIST1.listfield1
Case "SLCODE"
        Txtfields(0).Text = KSLLIST1.Code
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PRTYTYP,s.PAY_TERMS,s.CRDDAYS,s.CRLIMIT,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.brcode,S.TAX_CODE,S.INSPER from FA_SLMAS s WHERE  S.SLCODE= '" & KSLLIST1.Code & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Set Rs = New Recordset
        Rs.Open "SELECT prtytyp,PRTYHEAD FROM FA_PRTY WHERE PRTYTYP = '" & adoPrimaryRS("PRTYTYP") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
            Txtfields(1).Text = Rs(0)
            prtyTXT.Text = Rs(1)
        End If
        Set Rs = New Recordset
        Rs.Open "SELECT S.SLCODE,b1.bank_desc BANK_DESC1,b2.bank_desc BANK_DESC2,c.carname,a.areaname,S1.SLNAME DBNAME,S.brcode,t.tax_desc FROM FA_SLMAS S,IG_AREA A,IG_BANK B1,IG_BANK B2 ,PO_CAR C,FA_SLMAS S1,IG_TAX T WHERE S.tax_code *= T.TAX_CODE AND   S.brcode *= S1.SLCODE  AND S.BANKADD1 *= B1.BANK_CODE AND S.BANKADD2 *= B2.BANK_CODE AND S.CARCODE *= C.CARCODE AND S.AREACODE *= A.areacode AND  S.SLCODE = '" & adoPrimaryRS("SLCODE") & "'", DB, adOpenStatic, adLockBatchOptimistic
'        Set bank1.DataSource = RS
'        Set bank2.DataSource = RS
'        Set area.DataSource = RS
'        Set carrier.DataSource = RS
'        Set dbname.DataSource = RS
        SSTab1.Tab = 0
        vendor.Text = Txtfields(0).Text
'        abbr.Text = txtFields(1).Text
        TXname.Text = Txtfields(2).Text
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
Case "d.slcode"
    DISTRIB.Visible = False
    Txtfields(23).Text = KSLLIST1.Code
    dbname.Text = KSLLIST1.description
    Txtfields(1).SetFocus
Case "prtytyp"
If Opt = "add" Then
    prty = KSLLIST1.Code
    Txtfields(2).SetFocus
    prtyTXT = KSLLIST1.description
'    If prty = "D2" Then
'        DISTRIB.Visible = False
'        ksllist1.conn = connectstring
'        ksllist1.table = "FA_SLMAS d where d.prtytyp = 'D1'"
'        ksllist1.listfield1 = "d.slcode"
'        ksllist1.listfield2 = "d.slname"
'        Exit Sub
'    End If
Else
        Set rs1 = New Recordset
        rs1.Open "select count(*) from FA_SLMAS WHERE substring(SLCODE,1,2) = '" & KSLLIST1.Code & "'", DB
    If Not rs1(0) = 0 Then
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "FA_SLMAS WHERE substring(SLCODE,1,2) = '" & KSLLIST1.Code & "'"
        KSLLIST1.listfield1 = "SLCODE"
        KSLLIST1.listfield2 = "SLNAME"
        Exit Sub
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
End If
'Case "tax_code"
'    SSTab1.Tab = 1
'    If Opt = "mod" Then
'        Set tax.DataSource = Nothing
'    End If
'    txtFields(29).Text = KslList1.Code
'    tax.Text = KslList1.description
'    tax.SetFocus
Case "carcode"
    SSTab1.Tab = 1
    If Opt = "mod" Then
        Set carrier.DataSource = Nothing
    End If
    Txtfields(25).Text = KSLLIST1.Code
    carrier.Text = KSLLIST1.description
    carrier.SetFocus
Case "areacode"
    SSTab1.Tab = 1
    If Opt = "mod" Then
        Set area.DataSource = Nothing
    End If
    Txtfields(24).Text = KSLLIST1.Code
    area.Text = KSLLIST1.description
    area.SetFocus
Case "bank_code"
    SSTab1.Tab = 1
    If BK = 1 Then
        If Opt = "mod" Then
            Set bank1.DataSource = Nothing
        End If
        Txtfields(30).Text = KSLLIST1.Code
        bank1.Text = KSLLIST1.description
        bank1.SetFocus
    Else
        If Opt = "mod" Then
            Set bank2.DataSource = Nothing
        End If
        Txtfields(31).Text = KSLLIST1.Code
        bank2.Text = KSLLIST1.description
        bank2.SetFocus
    End If
End Select
Frame1.Visible = False
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
StatusBar1.Panels(1).Text = STBARmsg
  'Short cut keys
Select Case KeyCode
  Case vbKeyF1
     If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Addition
        Exit Sub
     End If
  Case vbKeyF2
     If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'Modification
        Exit Sub
     End If
  Case vbKeyF3
     If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) 'Deletion
        Exit Sub
     End If
  Case vbKeyF4
     If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) 'Listing (or) Find
        Exit Sub
     End If
  Case vbKeyF5
     If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First Record
        Exit Sub
     End If
  Case vbKeyF6
     If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'Next Record
        Exit Sub
     End If
  Case vbKeyF7
     If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'Previous record
        Exit Sub
     End If
  Case vbKeyF8
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'Last record
        Exit Sub
     End If
  Case vbKeyF9
     If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
        Exit Sub
     End If
  Case vbKeyF10
     If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
        SendKeys ("{esc}")
        Exit Sub
     End If
  Case vbKeyF11
     If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'Exit
        Exit Sub
     End If
End Select
End Sub
Private Sub Form_Load()
    StatusBar1.Panels(1).Text = STBARmsg
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open connectstring
  Call QUERY_MODE
    'BUTTON(0).Enabled = False
    'BUTTON(1).Enabled = False
    'BUTTON(2).Enabled = False
  End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
    StatusBar1.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
    On Error Resume Next
  If adoPrimaryRS("TRN_DEBT") = "Y" Then
    Check1.value = 1
  Else
    Check1.value = 0
  End If
End Sub

Public Sub bindcontls()
  Dim oText As TextBox
  'Binding  the text boxes to the data source
  For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
  Next
End Sub

Public Sub ENABLCONTLS()
Dim tb As TextBox
For Each tb In Me.Txtfields
    tb.Locked = False
Next
'Check1.Enabled = True
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.Txtfields
    tb.Locked = True
Next
'Check1.Enabled = False
End Sub

Private Sub KslList1_GotFocus()
Command6.Default = True
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    Case 24
        Frame1.Visible = True
        SSTab1.Tab = 0
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "IG_AREA"
        KSLLIST1.listfield1 = "areacode"
        KSLLIST1.listfield2 = "areaname"
    Case 25
        Frame1.Visible = True
        SSTab1.Tab = 0
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "PO_CAR"
        KSLLIST1.listfield1 = "carcode"
        KSLLIST1.listfield2 = "carname"
    Case 29
        Frame1.Visible = True
        SSTab1.Tab = 0
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "IG_TAX"
        KSLLIST1.listfield1 = "tax_code"
        KSLLIST1.listfield2 = "tax_desc"
    Case 30
        Frame1.Visible = True
        SSTab1.Tab = 0
        BK = 1
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "IG_BANK"
        KSLLIST1.listfield1 = "bank_code"
        KSLLIST1.listfield2 = "bank_desc"
    Case 31
        Frame1.Visible = True
        SSTab1.Tab = 0
        BK = 2
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "IG_BANK"
        KSLLIST1.listfield1 = "bank_code"
        KSLLIST1.listfield2 = "bank_desc"
    End Select
End If
If Opt = "add" Or Opt = "mod" Then
     Select Case Index
          Case 2
               StatusBar1.Panels(2).Text = "Enter Name"
          Case 1
               StatusBar1.Panels(2).Text = "Enter Abbriviation"
          Case 3
               StatusBar1.Panels(2).Text = "Enter Address1"
          Case 4
               StatusBar1.Panels(2).Text = "Enter Address2"
          Case 5
               StatusBar1.Panels(2).Text = "Enter City Name"
          Case 6
               StatusBar1.Panels(2).Text = "Enter State Name"
          Case 7
               StatusBar1.Panels(2).Text = "Enter Country Name"
          Case 9
               StatusBar1.Panels(2).Text = "Enter Phone Number1"
          Case 10
               StatusBar1.Panels(2).Text = "Enter Phone Number2"
          Case 12
               StatusBar1.Panels(2).Text = "Enter Email Address"
          Case 8
               StatusBar1.Panels(2).Text = "Enter Pin Code"
          Case 32
               StatusBar1.Panels(2).Text = "Enter Telegram Number"
          Case 13
               StatusBar1.Panels(2).Text = "Enter Web site address"
          Case 11
               StatusBar1.Panels(2).Text = "Enter Fax Number"
          Case 21
               StatusBar1.Panels(2).Text = "Enter Designation"
          Case 27
               StatusBar1.Panels(2).Text = "Enter Credit Days"
          Case 26
               StatusBar1.Panels(2).Text = "Enter Payment"
          Case 18
               StatusBar1.Panels(2).Text = "Enter ECC"
          Case 19
               StatusBar1.Panels(2).Text = "Enter PAN Number"
          Case 28
               StatusBar1.Panels(2).Text = "Enter Credit Limit"
End Select
End If
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
Case 1
     ToAlphaNumber Txtfields(1), 5, KeyAscii
Case 8
     ToNumber Txtfields(8), KeyAscii
     ToNumb Txtfields(8), 6, KeyAscii
Case 9, 10
     ToNumber Txtfields(Index), KeyAscii
Case 20
     ToNumber Txtfields(Index), KeyAscii
Case 27
     ToNumber Txtfields(Index), KeyAscii
     ToNumb Txtfields(Index), 5, KeyAscii
End Select
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
StatusBar1.Panels(2).Text = ""
'Dim RS As Recordset
'Dim s As String
'Dim t As String
'
'If Index = 13 Then
'    SSTab1.Tab = 1
'    TXTFIELDS(22).SetFocus
'End If
'If OPT = "add" Or OPT = "mod" Then
'If Not (TXTFIELDS(Index).Text = "") Then
'    TXTFIELDS(Index).Text = UCase(TXTFIELDS(Index).Text)
'End If
'If Index = 16 Or Index = 17 Then
'   If Not (IsDate(TXTFIELDS(Index)) Or TXTFIELDS(Index).Text = "") Then
'        MsgBox " Invalid date" & Chr(13) & " Enter date in this format - '10/08/1986'", vbCritical, head
'        TXTFIELDS(Index).Text = ""
'        TXTFIELDS(Index).SetFocus
'        Exit Sub
'   End If
'End If
'Select Case Index
'Case 2
'    If TXTFIELDS(2).Text = "" Then
'        MsgBox " Name cannot be empty", vbCritical, head
'        TXTFIELDS(2).SetFocus
'        Exit Sub
'    End If
'    If TXTFIELDS(0).Text = "" And Not TXTFIELDS(2).Text = "" Then
'        Set RS = New Recordset
'        s = Mid$(TXTFIELDS(2).Text, 1, 1)
'        s = prty & s
'        RS.Open "select max(cast(substring(slcode,4,6)as integer)) from FA_SLMAS where slcode like '" & s & "%' ", db, adOpenStatic, adLockBatchOptimistic
'        If Not (RS.BOF Or IsNull(RS(0))) Then
'            If Val(RS(0)) < 9 Then
'                TXTFIELDS(0).Text = s & "00" & Val(RS(0)) + 1
'            ElseIf Val(RS(0)) < 99 Then
'                TXTFIELDS(0).Text = s & "0" & Val(RS(0)) + 1
'            Else
'                TXTFIELDS(0).Text = s & Val(RS(0)) + 1
'            End If
'        Else
'            TXTFIELDS(0).Text = s & "001"
'        End If
''        abbr.Text = txtFields(1).Text
'        TXname.Text = TXTFIELDS(2).Text
'        vendor.Text = TXTFIELDS(0).Text
'    End If
'End Select
'End If
End Sub
Public Sub QUERY_MODE()
    Set adoPrimaryRS = New Recordset
    On Error GoTo ER1
    'adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,B1.BANK_DESC BANK_DESC1 ,B2.BANK_DESC BANK_DESC2 ,C.CARNAME,A.areaname,S.brcode,S1.SLNAME DBNAME,S.TAX_CODE,S.INSPER from FA_SLMAS S,FA_PRTY P,IG_AREA A,IG_BANK B1,IG_BANK B2,PO_CAR C,FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP  AND S.BANKADD1 *= B1.BANK_CODE AND S.BANKADD2 *= B2.BANK_CODE AND S.CARCODE *= C.CARCODE  AND S.AREACODE *= A.areacode   and s.brcode *= s1.slcode AND S.SLCODE LIKE 'C%' Order by s.SLCODE", db, adOpenKeyset, adLockReadOnly
    'adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,C.CARNAME,A.name,S.brcode,S1.SLNAME DBNAME,S.TAX_CODE,S.INSPER from FA_SLMAS S,FA_PRTY P,IG_AREA A,PO_CAR C,FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP  AND S.CARCODE *= C.CARCODE  AND S.AREACODE *= A.area_code   and s.brcode *= s1.slcode AND S.SLCODE LIKE 'C%' Order by s.SLCODE", db, adOpenKeyset, adLockReadOnly
    adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,C.CARNAME,A.AREAname,S.brcode,S1.SLNAME DBNAME,S.TAX_CODE,S.INSPER from FA_SLMAS S,FA_PRTY P,IG_AREA A,PO_CAR C,FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP  AND S.CARCODE *= C.CARCODE  AND S.AREACODE *= A.areacode   and s.brcode *= s1.slcode AND S.SLCODE LIKE 'C%' Order by s.SLCODE", DB, adOpenKeyset, adLockReadOnly
    'Bind the text boxes,check boxes and option buttons to the data source
    Call bindcontls
    Set prtyTXT.DataSource = adoPrimaryRS
    'Set abbr.DataSource = adoPrimaryRS
    Set vendor.DataSource = adoPrimaryRS
    Set TXname.DataSource = adoPrimaryRS
    'Set bank1.DataSource = adoPrimaryRS
    'Set bank2.DataSource = adoPrimaryRS
    'Set area.DataSource = adoPrimaryRS
    'Set carrier.DataSource = adoPrimaryRS
    'Set dbname.DataSource = adoPrimaryRS
    Opt = "  "
    'If adoPrimaryRS("TRN_DEBT") = "Y" Then
    'Check1.Value = 1
    'Else
    'Check1.Value = 0
    'End If
    SSTab1.Tab = 0
    Call disablcontls
    desc.Caption = "Query"
If adoPrimaryRS.BOF Then
    MsgBox "No Records Found", vbInformation, head
End If
    DATLAB.Caption = pdate 'This variable is declared as global to show the date
    'Calling newform procedure from Module to disable buttons
    Call NEWFORM1(BUTTON, GSNO)
    'BUTTON(0).Enabled = False
    'BUTTON(1).Enabled = False
    'BUTTON(2).Enabled = False
    Exit Sub
ER1:
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
    Dim Rs As Recordset
    Dim S As String
    Dim t As String
If Index = 13 Then
    SSTab1.Tab = 1
    Txtfields(22).SetFocus
End If
If Opt = "add" Or Opt = "mod" Then
    If Not (Txtfields(Index).Text = "") Then
        Txtfields(Index).Text = UCase(Txtfields(Index).Text)
    End If
    If Index = 16 Or Index = 17 Then
        If Not (IsDate(Txtfields(Index)) Or Txtfields(Index).Text = "") Then
            MsgBox " Invalid date" & Chr(13) & " Enter date in this format - '10/08/1986'", vbInformation, head
            Txtfields(Index).Text = ""
            'TXTFIELDS(Index).SetFocus
            Cancel = False
            Exit Sub
        End If
    End If
Select Case Index
Case 2
    If Txtfields(2).Text = "" Then
        MsgBox " Name cannot be empty", vbInformation, head
        'TXTFIELDS(2).SetFocus
        Cancel = True
        Exit Sub
    End If
Case 3
    If Txtfields(3).Text = "" Then
        MsgBox "Address Should not be Empty", vbInformation, head
        Cancel = True
    End If
Case 5
    If Txtfields(5).Text = "" Then
        MsgBox "City Should not be Empty", vbInformation, head
        Cancel = True
    End If
Case 9
    If Txtfields(9).Text = "" Then
        MsgBox "Phone Should not be Empty", vbInformation, head
        Cancel = True
    End If
End Select
    If Txtfields(0).Text = "" And Not Txtfields(2).Text = "" Then
        Set Rs = New Recordset
        S = Mid$(Txtfields(2).Text, 1, 1)
        S = prty & S
        Rs.Open "select max(cast(substring(slcode,4,6)as integer)) from FA_SLMAS where slcode like '" & S & "%' ", DB, adOpenStatic, adLockBatchOptimistic
        If Not (Rs.BOF Or IsNull(Rs(0))) Then
            If val(Rs(0)) < 9 Then
                Txtfields(0).Text = S & "00" & val(Rs(0)) + 1
            ElseIf val(Rs(0)) < 99 Then
                Txtfields(0).Text = S & "0" & val(Rs(0)) + 1
            Else
                Txtfields(0).Text = S & val(Rs(0)) + 1
            End If
        Else
            Txtfields(0).Text = S & "001"
        End If
        'abbr.Text = txtFields(1).Text
        TXname.Text = Txtfields(2).Text
        vendor.Text = Txtfields(0).Text
    End If
End If
End Sub
