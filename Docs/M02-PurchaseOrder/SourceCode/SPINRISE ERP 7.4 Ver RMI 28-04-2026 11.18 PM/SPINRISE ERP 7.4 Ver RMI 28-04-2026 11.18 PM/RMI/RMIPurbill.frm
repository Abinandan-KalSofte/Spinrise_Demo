VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form FrmPurbill 
   Caption         =   "Purchase Bills Entry"
   ClientHeight    =   6780
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9195
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6780
   ScaleWidth      =   9195
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   645
      Left            =   0
      TabIndex        =   57
      Top             =   -120
      Width           =   6000
      Begin VB.CommandButton BUTTON 
         Height          =   480
         Index           =   11
         Left            =   2130
         Picture         =   "RMIPurbill.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   480
         Index           =   9
         Left            =   1080
         MaskColor       =   &H80000004&
         Picture         =   "RMIPurbill.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIPurbill.frx":0754
         Height          =   480
         Index           =   0
         Left            =   15
         Picture         =   "RMIPurbill.frx":0A5E
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIPurbill.frx":0DF1
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Index           =   2
         Left            =   555
         Picture         =   "RMIPurbill.frx":10FB
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIPurbill.frx":1497
         Height          =   480
         Index           =   10
         Left            =   1605
         Picture         =   "RMIPurbill.frx":17A1
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Cancel (Ctrl Z)"
         Top             =   135
         Width           =   520
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   3180
         TabIndex        =   59
         Top             =   255
         Width           =   615
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
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
         Left            =   4755
         TabIndex        =   58
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5745
      Left            =   210
      TabIndex        =   60
      Top             =   870
      Width           =   11265
      _ExtentX        =   19870
      _ExtentY        =   10134
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "            "
      TabPicture(0)   =   "RMIPurbill.frx":1B1D
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SSTab2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame7 
         Height          =   2385
         Left            =   150
         TabIndex        =   61
         Top             =   90
         Width           =   10740
         Begin VB.TextBox Txtfields 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   3
            Left            =   1920
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   109
            TabStop         =   0   'False
            Top             =   1590
            Width           =   2850
         End
         Begin VB.ComboBox Combo1 
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
            ItemData        =   "RMIPurbill.frx":1B39
            Left            =   7590
            List            =   "RMIPurbill.frx":1B46
            Style           =   2  'Dropdown List
            TabIndex        =   17
            Top             =   1590
            Width           =   1065
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "bales"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   22
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   1950
            Width           =   660
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "cntcode"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   30
            Left            =   5940
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   1597
            Width           =   1035
         End
         Begin VB.TextBox Text3 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   1920
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   14
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1230
            Width           =   6765
         End
         Begin VB.TextBox Text2 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Left            =   1920
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   12
            TabStop         =   0   'False
            Text            =   " "
            Top             =   900
            Width           =   6765
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
            Height          =   300
            Left            =   1920
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   10
            TabStop         =   0   'False
            Text            =   " "
            Top             =   570
            Width           =   6765
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "tarewt"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   24
            Left            =   5370
            Locked          =   -1  'True
            MaxLength       =   9
            TabIndex        =   20
            TabStop         =   0   'False
            Top             =   1950
            Width           =   900
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "areacd"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   28
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   1230
            Width           =   915
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "brkcd"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   27
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   11
            TabStop         =   0   'False
            Top             =   900
            Width           =   915
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "supcd"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   26
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   9
            TabStop         =   0   'False
            Top             =   570
            Width           =   915
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "LOTNO"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   2
            Left            =   2340
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   6
            TabStop         =   0   'False
            Top             =   210
            Width           =   780
         End
         Begin VB.TextBox Txtfields 
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
            Height          =   300
            Index           =   29
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   1597
            Width           =   915
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "netwt"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   25
            Left            =   7590
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   21
            TabStop         =   0   'False
            Top             =   1950
            Width           =   1065
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "grswgt"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   23
            Left            =   3030
            Locked          =   -1  'True
            MaxLength       =   11
            TabIndex        =   19
            TabStop         =   0   'False
            Top             =   1950
            Width           =   1065
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "CATCD"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   0
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   5
            TabStop         =   0   'False
            Top             =   210
            Width           =   450
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "arrno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   1
            Left            =   6120
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   8
            TabStop         =   0   'False
            Top             =   210
            Width           =   780
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   300
            Index           =   0
            Left            =   7560
            TabIndex        =   47
            Top             =   210
            Width           =   1110
            _ExtentX        =   1958
            _ExtentY        =   529
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
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
            DataField       =   "lotdt"
            Height          =   300
            Index           =   1
            Left            =   4020
            TabIndex        =   7
            TabStop         =   0   'False
            Top             =   210
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   529
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
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
            Left            =   7110
            TabIndex        =   78
            Top             =   1650
            Width           =   345
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Arrival No."
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
            Left            =   5220
            TabIndex        =   75
            Top             =   270
            Width           =   1050
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker "
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
            Left            =   150
            TabIndex        =   74
            Top             =   960
            Width           =   645
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Area "
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
            Left            =   150
            TabIndex        =   73
            Top             =   1290
            Width           =   480
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
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
            Left            =   150
            TabIndex        =   72
            Top             =   630
            Width           =   750
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Lot No."
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
            Left            =   1740
            TabIndex        =   71
            Top             =   270
            Width           =   630
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
            Left            =   150
            TabIndex        =   70
            Top             =   1650
            Width           =   630
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
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
            Left            =   1740
            TabIndex        =   69
            Top             =   2010
            Width           =   1455
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Nett Weight"
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
            Left            =   6330
            TabIndex        =   68
            Top             =   2010
            Width           =   1275
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
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
            Left            =   4260
            TabIndex        =   67
            Top             =   2010
            Width           =   1230
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
            Left            =   150
            TabIndex        =   66
            Top             =   2010
            Width           =   720
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
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
            Left            =   4920
            TabIndex        =   65
            Top             =   1620
            Width           =   1125
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
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
            Left            =   3210
            TabIndex        =   64
            Top             =   270
            Width           =   870
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Date"
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
            Left            =   7110
            TabIndex        =   63
            Top             =   270
            Width           =   435
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
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
            Left            =   30
            TabIndex        =   62
            Top             =   270
            Width           =   945
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   2745
         Left            =   0
         TabIndex        =   79
         Top             =   2520
         Width           =   10905
         _ExtentX        =   19235
         _ExtentY        =   4842
         _Version        =   393216
         Tabs            =   2
         TabsPerRow      =   2
         TabHeight       =   520
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "Purchase Bill Details"
         TabPicture(0)   =   "RMIPurbill.frx":1B5A
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame8"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "More Details"
         TabPicture(1)   =   "RMIPurbill.frx":1B76
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame2"
         Tab(1).ControlCount=   1
         Begin VB.Frame Frame2 
            Height          =   2235
            Left            =   -74850
            TabIndex        =   90
            Top             =   360
            Width           =   10140
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "ratekg"
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
               Left            =   4320
               MaxLength       =   10
               TabIndex        =   46
               Top             =   1800
               Width           =   1020
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "totlandcost"
               Height          =   300
               Index           =   32
               Left            =   1500
               MaxLength       =   12
               TabIndex        =   45
               Top             =   1800
               Width           =   1200
            End
            Begin VB.TextBox Txtfields 
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
               Index           =   31
               Left            =   8520
               Locked          =   -1  'True
               MaxLength       =   9
               TabIndex        =   91
               Top             =   1830
               Visible         =   0   'False
               Width           =   150
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "aedamt"
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
               Left            =   4320
               MaxLength       =   9
               TabIndex        =   34
               Top             =   240
               Width           =   1020
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "freght"
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
               Index           =   19
               Left            =   1500
               MaxLength       =   9
               TabIndex        =   36
               Top             =   630
               Width           =   1200
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "ldgulg"
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
               Index           =   15
               Left            =   7680
               MaxLength       =   9
               TabIndex        =   38
               Top             =   630
               Width           =   990
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "dnamt2"
               Height          =   300
               Index           =   18
               Left            =   7680
               MaxLength       =   9
               TabIndex        =   44
               Top             =   1410
               Width           =   990
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "brkcom"
               Height          =   300
               Index           =   20
               Left            =   7680
               MaxLength       =   10
               TabIndex        =   41
               Top             =   1020
               Width           =   990
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "insamt"
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
               Index           =   16
               Left            =   1500
               MaxLength       =   9
               TabIndex        =   39
               Top             =   1020
               Width           =   1200
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "spotexp"
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
               Left            =   4320
               MaxLength       =   9
               TabIndex        =   40
               Top             =   1020
               Width           =   1020
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "dnamt1"
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
               Index           =   17
               Left            =   4320
               MaxLength       =   9
               TabIndex        =   43
               Top             =   1410
               Width           =   1020
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "rlyfrt"
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
               Index           =   14
               Left            =   4320
               MaxLength       =   9
               TabIndex        =   37
               Top             =   630
               Width           =   1020
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "odint"
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
               Index           =   12
               Left            =   1500
               MaxLength       =   10
               TabIndex        =   42
               Top             =   1410
               Width           =   1200
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "bedamt"
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
               Index           =   11
               Left            =   1500
               MaxLength       =   9
               TabIndex        =   33
               Top             =   240
               Width           =   1200
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "taxamt"
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
               Left            =   7680
               MaxLength       =   9
               TabIndex        =   35
               Top             =   240
               Width           =   990
            End
            Begin VB.Label Label37 
               AutoSize        =   -1  'True
               Caption         =   "Landing Cost"
               Height          =   195
               Left            =   150
               TabIndex        =   105
               Top             =   1860
               Width           =   930
            End
            Begin VB.Label Label35 
               AutoSize        =   -1  'True
               Caption         =   "Debit Amount 2"
               Height          =   195
               Left            =   5640
               TabIndex        =   104
               Top             =   1470
               Width           =   1095
            End
            Begin VB.Label Label34 
               AutoSize        =   -1  'True
               Caption         =   "Loading/Unloading Charges"
               Height          =   195
               Left            =   5640
               TabIndex        =   103
               Top             =   690
               Width           =   1995
            End
            Begin VB.Label Label33 
               AutoSize        =   -1  'True
               Caption         =   "Lorry Freight"
               Height          =   195
               Left            =   150
               TabIndex        =   102
               Top             =   690
               Width           =   870
            End
            Begin VB.Label Label32 
               AutoSize        =   -1  'True
               Caption         =   "A.E.D. Amount"
               Height          =   195
               Left            =   3000
               TabIndex        =   101
               Top             =   300
               Width           =   1050
            End
            Begin VB.Label Label30 
               AutoSize        =   -1  'True
               Caption         =   "Broker Commission %"
               Height          =   195
               Left            =   5640
               TabIndex        =   100
               Top             =   1080
               Width           =   1500
            End
            Begin VB.Label Label29 
               AutoSize        =   -1  'True
               Caption         =   "Rate/Kg."
               Height          =   195
               Left            =   3000
               TabIndex        =   99
               Top             =   1860
               Width           =   660
            End
            Begin VB.Label Label22 
               AutoSize        =   -1  'True
               Caption         =   "Insurance Amount"
               Height          =   195
               Left            =   150
               TabIndex        =   98
               Top             =   1080
               Width           =   1290
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               Caption         =   "Other Tax Amount"
               Height          =   195
               Left            =   5640
               TabIndex        =   97
               Top             =   300
               Width           =   1290
            End
            Begin VB.Label Label21 
               AutoSize        =   -1  'True
               Caption         =   "VAT Amount"
               Height          =   195
               Left            =   150
               TabIndex        =   96
               Top             =   300
               Width           =   900
            End
            Begin VB.Label Label23 
               AutoSize        =   -1  'True
               Caption         =   "Over Due Interest"
               Height          =   195
               Left            =   150
               TabIndex        =   95
               Top             =   1470
               Width           =   1260
            End
            Begin VB.Label Label24 
               AutoSize        =   -1  'True
               Caption         =   "Railway Freight"
               Height          =   195
               Left            =   3000
               TabIndex        =   94
               Top             =   690
               Width           =   1080
            End
            Begin VB.Label Label25 
               AutoSize        =   -1  'True
               Caption         =   "Debit Amount 1"
               Height          =   195
               Left            =   3000
               TabIndex        =   93
               Top             =   1470
               Width           =   1095
            End
            Begin VB.Label Label26 
               AutoSize        =   -1  'True
               Caption         =   "Spot Expenses"
               Height          =   195
               Left            =   3000
               TabIndex        =   92
               Top             =   1080
               Width           =   1065
            End
         End
         Begin VB.Frame Frame8 
            Height          =   2235
            Left            =   120
            TabIndex        =   80
            Top             =   360
            Width           =   10605
            Begin VB.ComboBox Combo2 
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
               ItemData        =   "RMIPurbill.frx":1B92
               Left            =   7650
               List            =   "RMIPurbill.frx":1B9C
               TabIndex        =   108
               Top             =   1050
               Width           =   1005
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "PTYWGT"
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
               Height          =   300
               Index           =   9
               Left            =   1500
               MaxLength       =   11
               TabIndex        =   30
               Top             =   1770
               Width           =   1065
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "sampwt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
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
               Height          =   300
               Index           =   8
               Left            =   4410
               MaxLength       =   10
               TabIndex        =   31
               TabStop         =   0   'False
               Top             =   1770
               Width           =   900
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "PJAMT"
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
               Height          =   300
               Index           =   7
               Left            =   6960
               MaxLength       =   12
               TabIndex        =   32
               Top             =   1770
               Width           =   1200
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "billno"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   6
               Left            =   1500
               MaxLength       =   20
               TabIndex        =   28
               Top             =   1350
               Width           =   2610
            End
            Begin VB.TextBox Txtfields 
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   303
               Left            =   2040
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   25
               TabStop         =   0   'False
               Top             =   570
               Width           =   6630
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "ptype"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   302
               Left            =   1500
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   24
               Top             =   570
               Width           =   510
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "pjno"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   304
               Left            =   1500
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   26
               Top             =   990
               Width           =   810
            End
            Begin VB.TextBox Txtfields 
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   301
               Left            =   2040
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   23
               TabStop         =   0   'False
               Top             =   210
               Width           =   6630
            End
            Begin VB.TextBox Txtfields 
               DataField       =   "pjtc"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   300
               Index           =   300
               Left            =   1500
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   22
               Top             =   210
               Width           =   510
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "pjdt"
               Height          =   300
               Index           =   3
               Left            =   5370
               TabIndex        =   27
               Top             =   990
               Width           =   1125
               _ExtentX        =   1984
               _ExtentY        =   529
               _Version        =   393216
               MaxLength       =   10
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "BILLDT"
               Height          =   300
               Index           =   2
               Left            =   5370
               TabIndex        =   29
               Top             =   1350
               Width           =   1125
               _ExtentX        =   1984
               _ExtentY        =   529
               _Version        =   393216
               MaxLength       =   10
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "RG23A"
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
               Left            =   6990
               TabIndex        =   107
               Top             =   1110
               Width           =   645
            End
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               Caption         =   "Sample Weight"
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
               Left            =   3240
               TabIndex        =   89
               Top             =   1830
               Width           =   1380
            End
            Begin VB.Label Label19 
               AutoSize        =   -1  'True
               Caption         =   "Billed Weight"
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
               Left            =   150
               TabIndex        =   88
               Top             =   1830
               Width           =   1185
            End
            Begin VB.Label Label31 
               AutoSize        =   -1  'True
               Caption         =   "Bill Amount"
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
               Left            =   6000
               TabIndex        =   87
               Top             =   1830
               Width           =   990
            End
            Begin VB.Label Label36 
               AutoSize        =   -1  'True
               Caption         =   "Bill Date"
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
               Left            =   4410
               TabIndex        =   86
               Top             =   1410
               Width           =   750
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   "Bill Number"
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
               Left            =   150
               TabIndex        =   85
               Top             =   1410
               Width           =   1035
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Purchase Type"
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
               Index           =   4
               Left            =   30
               TabIndex        =   84
               Top             =   630
               Width           =   1500
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Date"
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
               Left            =   4290
               TabIndex        =   83
               Top             =   1050
               Width           =   1110
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. No."
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
               Index           =   3
               Left            =   150
               TabIndex        =   82
               Top             =   1050
               Width           =   870
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Transaction Type"
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
               Index           =   2
               Left            =   30
               TabIndex        =   81
               Top             =   270
               Width           =   1710
            End
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   270
      TabIndex        =   49
      Top             =   810
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIPurbill.frx":1BA9
         Height          =   615
         Left            =   3000
         Picture         =   "RMIPurbill.frx":1F8F
         Style           =   1  'Graphical
         TabIndex        =   77
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIPurbill.frx":2355
         Height          =   615
         Left            =   4740
         Picture         =   "RMIPurbill.frx":2737
         Style           =   1  'Graphical
         TabIndex        =   76
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   56
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Label1"
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
         TabIndex        =   55
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Frame Frame9 
      Height          =   4785
      Left            =   420
      TabIndex        =   50
      Top             =   1020
      Visible         =   0   'False
      Width           =   8475
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3210
         Left            =   270
         TabIndex        =   54
         Top             =   720
         Width           =   7890
         _ExtentX        =   13917
         _ExtentY        =   5662
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   18
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
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         Height          =   375
         Left            =   4680
         TabIndex        =   53
         Top             =   4095
         Width           =   1140
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2580
         TabIndex        =   52
         Top             =   4080
         Width           =   1140
      End
      Begin VB.Label Label39 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Issue Details"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Left            =   3525
         TabIndex        =   51
         Top             =   225
         Width           =   1380
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   106
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
            TextSave        =   "07/12/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "11:19 AM"
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
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Bills Entry"
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
      Left            =   225
      TabIndex        =   48
      Top             =   525
      Width           =   2640
   End
End
Attribute VB_Name = "FrmPurbill"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldarrno As Integer
Dim oldarrdt As Date
Dim GG As Integer
Dim GT As Integer
Dim qty As Integer
Dim oldgrs As Double
Dim oldtare As Double
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure openconnection of Form Purchase Bill"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 0
    If Record_Exists("rm_purtype", "Please Define Purchase Type") = False Then Exit Sub
    Opt = "add"
    desc.Caption = "Addition"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    BUTTON(10).Enabled = False
    Set adoPrimaryRS = New Recordset
    'adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE divcode='" & divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and issbal is null and isswt is null", DB, adOpenStatic, adLockOptimistic
    'rAVI adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and (issbal =0 or issbal is null) and (isswt=0 or isswt is null)", DB, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,freght FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
    If adoPrimaryRS.RecordCount <> 0 Then
   LookUp.clear = True
   LookUp.Query = "select LotNo,lotdt""Date"",slname""Supplier"" from rm_lot a,fa_slmas b where a.supcd=b.slcode and pjno is null and pjtc is null and opflg='N'"
   LookUp.DefCol = "LotNo"
   LookUp.Caption = "Lot Listing"
   LookUp.ALIGN = "1000,1500,4000"
  LookUp.Show vbModal
   If LookUp.Cancel = False Then
   Set adoPrimaryRS = New Recordset
   'RaVI adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and (issbal=0 or issbal is null) and (isswt=0 or isswt is null)", DB, adOpenStatic, adLockOptimistic
   adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,OTHTAXAMT,VATAMT,TAXAMT,ODINT,LRFRTAMT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,freght FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and lotno=" & Trim(LookUp.Fields(0)) & " ", DB, adOpenStatic, adLockOptimistic
   If adoPrimaryRS.RecordCount > 0 Then
 
    Call ENABLCONTLS
    Call bindcontls
    DB.BeginTrans
    TXTFIELDS(25).Locked = True
    TXTFIELDS(0).Locked = True
    TXTFIELDS(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    TXTFIELDS(2).Locked = True
    TXTFIELDS(10).Text = IIf(IsNull(adoPrimaryRS("OTHTAXAMT")), 0, adoPrimaryRS("OTHTAXAMT"))
    TXTFIELDS(11).Text = IIf(IsNull(adoPrimaryRS("VATAMT")), 0, adoPrimaryRS("VATAMT"))
    TXTFIELDS(19).Text = IIf(IsNull(adoPrimaryRS("LRFRTAMT")), 0, adoPrimaryRS("LRFRTAMT"))
    TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
    TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
    TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
    TXTFIELDS(32).Text = Format(TXTFIELDS(32).Text, "#0.00")
    TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
    TXTFIELDS(20).Text = Format(TXTFIELDS(20).Text, "#0.00")
    TXTFIELDS(23).Locked = False
    TXTFIELDS(24).Locked = False
    TXTFIELDS(25).Locked = False
    TXTFIELDS(23).SetFocus
    'Frame7.Enabled = False
    If adoPrimaryRS("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoPrimaryRS("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoPrimaryRS("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        TXTFIELDS(3).Text = Rs("VARNAME")
    Else
        TXTFIELDS(3).Text = ""
    End If
    
 Else
 MsgBox "The Record Cannot be Add or Delete Beacuse the Bale is already Issued", vbInformation, head
 Frame3.Visible = False
 BUTTON(9).Enabled = False
 BUTTON(10).Enabled = False
 BUTTON(0).Enabled = True
 BUTTON(2).Enabled = True
 End If
 Else
 Exit Sub
 End If
 LookUp.clear = True
'''        Label15.Caption = "Lot Details"
'''        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
'''        KslList1.conn = connectstring
'''        'RaviKslList1.table = "rm_lot where (issbal=0 or issbal is null) and (isswt=0 or isswt is null)"
'''        KslList1.table = "rm_lot"
'''        KslList1.listfield1 = "cast(lotno as varchar)"
'''        KslList1.listfield2 = "convert(varchar,lotdt,103)"
'''        Frame3.Visible = True
'''        Frame3.ZOrder
        
   Else
        MsgBox "All Lots are used.Bill Entry not allowed!", vbInformation, head
        Exit Sub
   End If
    
Case 2
    'Deletion
    Opt = "del"
    desc.Caption = "Deletion"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and issbal is null and isswt is null", DB, adOpenStatic, adLockOptimistic
    If adoPrimaryRS.RecordCount <> 0 Then
        Set adoPrimaryRS = New Recordset
'RaVI adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and (issbal=0 or issbal is null) and (isswt=0 or isswt is null)", DB, adOpenStatic, adLockOptimistic
 adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,OTHTAXAMT,VATAMT,TAXAMT,ODINT,LRFRTAMT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " ", DB, adOpenStatic, adLockOptimistic
 If adoPrimaryRS.RecordCount > 0 Then
    LookUp.clear = True
    LookUp.Query = "select LotNo,lotdt""Date"" from rm_lot"
    LookUp.DefCol = "LotNo"
    LookUp.Caption = "LotNo Listing"
    LookUp.ALIGN = "1000,2000"
    Call ENABLCONTLS
    Call bindcontls
    DB.BeginTrans
    TXTFIELDS(25).Locked = True
    TXTFIELDS(0).Locked = True
    TXTFIELDS(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    TXTFIELDS(2).Locked = True
    TXTFIELDS(10).Text = IIf(IsNull(adoPrimaryRS("OTHTAXAMT")), 0, adoPrimaryRS("OTHTAXAMT"))
    TXTFIELDS(11).Text = adoPrimaryRS("VATAMT")
    TXTFIELDS(19).Text = adoPrimaryRS("LRFRTAMT")
    TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
    TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
    TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
    TXTFIELDS(32).Text = Format(TXTFIELDS(32).Text, "#0.00")
    TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
    TXTFIELDS(20).Text = Format(TXTFIELDS(20).Text, "#0.00")
    TXTFIELDS(23).Locked = False
    TXTFIELDS(24).Locked = False
    TXTFIELDS(25).Locked = False
    TXTFIELDS(23).SetFocus
    'Frame7.Enabled = False
    If adoPrimaryRS("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoPrimaryRS("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoPrimaryRS("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        TXTFIELDS(3).Text = Rs("VARNAME")
    Else
        TXTFIELDS(3).Text = ""
    End If
    
 Else
 MsgBox "The Record Cannot be Add or Delete Beacuse the Bale is already Issued", vbInformation, head
 Frame3.Visible = False
 BUTTON(9).Enabled = False
 BUTTON(10).Enabled = False
 BUTTON(0).Enabled = True
 BUTTON(2).Enabled = True
 End If
   Else
        MsgBox "All Lots are used.Deletion not allowed!", vbInformation, head
        Exit Sub
   End If


Case 9                               'Save

   If Opt = "add" Then
       Set rs1 = New Recordset
        rs1.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        TXTFIELDS(304).Text = rs1(0)
       adoPrimaryRS("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
       adoPrimaryRS("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
       If MaskEdBox1(2).Text = "__/__/____" Then
            adoPrimaryRS("billdt") = Null
       Else
            adoPrimaryRS("billdt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
       End If
       If MaskEdBox1(3).Text = "__/__/____" Then
            adoPrimaryRS("PJdt") = Format(pdate, "yyyy-mm-dd")
       Else
            adoPrimaryRS("PJDT") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
       End If
'       If Option1.Value = True Then
'       adoprimaryrs("bblflg") = "B"
'       ElseIf Option2.Value = True Then
'       adoprimaryrs("bblflg") = "R"
'       End If
If Combo1.Text = "Bale" Then
            adoPrimaryRS("BBLflG") = "B"
        Else
            adoPrimaryRS("BBLflG") = "R"
        End If
       'adoprimaryrs("PTYWGT") = Txtfields(5).Text
       If Trim(TXTFIELDS(300).Text) = "" Or IsNull(TXTFIELDS(300).Text) = True Then
                    adoPrimaryRS("pjtc") = Null
       Else
           adoPrimaryRS("pjtc") = val(TXTFIELDS(300).Text)
       End If
       If Trim(TXTFIELDS(302).Text) = "" Or IsNull(TXTFIELDS(302).Text) = True Then
                    adoPrimaryRS("ptype") = Null
       Else
                    adoPrimaryRS("ptype") = TXTFIELDS(302).Text
       End If
        
       'adoprimaryrs("aedamt") = txtfields(21).Text
       If Trim(TXTFIELDS(21).Text) = "" Then
            adoPrimaryRS("aedamt") = 0
       Else
            adoPrimaryRS("aedamt") = Trim(TXTFIELDS(21).Text)
       End If
       adoPrimaryRS("pjno") = val(rs1(0))
       adoPrimaryRS("freght") = IIf(TXTFIELDS(19).Text = "", 0, TXTFIELDS(19).Text)
        If Combo2.Text = "Yes" Then
            adoPrimaryRS("rg23a") = "Y"
        ElseIf Combo2.Text = "No" Then
             adoPrimaryRS("rg23a") = "N"
        End If

       adoPrimaryRS.UpdateBatch adAffectAllChapters
             
'*****************   FOR VALUE ENTRY ADDITION MODE     ******************

'*****************    IDENTIFY THE CORRECT FATC FROM RM_CAT****************
Dim thistc As Integer
    Dim thisgl As String
    Dim thispjno As Integer
    thistc = 0
    thisgl = ""
    Set Rs = New Recordset
    Rs.Open "SELECT FATC FROM RM_CAT WHERE CATCD = '" & TXTFIELDS(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Trim(TXTFIELDS(300).Text) = "" Or IsNull(TXTFIELDS(300).Text) = True Then
        thistc = 0
    Else
        thistc = val(TXTFIELDS(300).Text)
    End If
'    Set rs1 = New Recordset
'    rs1.Open "SELECT a.glcode FROM fa_tcmas a,fa_glmas b WHERE a.glcode=b.glcode and tc = " & thistc & "", db, adOpenStatic
'    thisgl = rs1(0)

'****************** PURCHASE JOURNAL NUMBER GENERATION *********************
    Set frs = New Recordset
    frs.Open "select fainstal from rm_param", DB
    If frs(0) = "Y" Then
        Set rs1 = New Recordset
        rs1.Open "SELECT a.glcode FROM fa_tcmas a,fa_glmas b WHERE a.glcode=b.glcode and tc = " & thistc & "", DB, adOpenStatic
        If Not rs1.EOF Then thisgl = rs1(0)
    End If
    thispjno = 0
    Dim prs As Recordset
    Set prs = New Recordset
    'prs.Open "SELECT MAX(PJNO) FROM RM_LOT WHERE DIVCODE = '" & Divcode & "' AND PJDT >= '" & Format(yfdate, "yyyy-mm-dd") & "' AND PJDT <='" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic
   ' If prs(0) <> 0 Then
        thispjno = adoPrimaryRS("pjno")
    'Else
    'Set prs = New Recordset
    '    prs.Open "select ldocno FROM fa_tcmas WHERE tc = " & thistc & "", db, adOpenStatic
    '    thispjno = IIf(IsNull(prs(0)), 0, prs(0))
    'End If
    'thispjno = thispjno + 1
        If frs(0) = "Y" Then
        If Not Trim(TXTFIELDS(300).Text) = "" Then DB.Execute ("INSERT INTO FA_PURHD(DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT) VALUES ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(adoPrimaryRS("PJDT"), "yyyy-mm-dd") & "','" & adoPrimaryRS("supcd") & "','" & adoPrimaryRS("billno") & "','" & Format(adoPrimaryRS("billdt"), "yyyy-mm-dd") & "'," & IIf(IsNull(adoPrimaryRS("taxamt")), 0, adoPrimaryRS("taxamt")) & "," & IIf(IsNull(adoPrimaryRS("totlandcost")), 0, adoPrimaryRS("totlandcost")) & ")")
        'If Not Trim(txtfields(300).Text) = "" Then DB.Execute ("INSERT INTO FA_PURHD(DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT) VALUES ('" & Divcode & "'," & thistc & " ," & thispjno & ",'" & Format(adoprimaryrs("PJDT"), "yyyy-mm-dd") & "','" & adoprimaryrs("supcd") & "','" & adoprimaryrs("billno") & "','" & Format(adoprimaryrs("billdt"), "yyyy-mm-dd") & "'," & IIf(IsNull(adoprimaryrs("taxamt")), 0, adoprimaryrs("taxamt")) & "," & IIf(IsNull(adoprimaryrs("totlandcost")), 0, adoprimaryrs("totlandcost")) & ")")
        If Not Trim(TXTFIELDS(300).Text) = "" Then DB.Execute ("INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT)VALUES('" & Divcode & "'," & thistc & "," & thispjno & " ,'" & Format(adoPrimaryRS("PJDT"), "yyyy-mm-dd") & "',1,'" & thisgl & "','Purchase Bill as per Lot No. " & adoPrimaryRS("lotno") & " Dated " & Format(adoPrimaryRS("LOTDT"), "yyyy-mm-dd") & "' ," & adoPrimaryRS("netwt") & "," & IIf(IsNull(adoPrimaryRS("totlandcost")), 0, adoPrimaryRS("totlandcost")) & "/" & adoPrimaryRS("netwt") & "," & IIf(IsNull(adoPrimaryRS("totlandcost")), 0, adoPrimaryRS("totlandcost")) & ")")
        End If
        If Not (Trim(TXTFIELDS(300).Text) = "" Or IsNull(TXTFIELDS(300).Text) = True) Then
                DB.Execute ("UPDATE rm_lot SET pjtc = '" & thistc & "', pjno = " & thispjno & ", pjdt = '" & Format(adoPrimaryRS("pjdt"), "yyyy-mm-dd") & "' WHERE divcode ='" & Divcode & "' And catcd = '" & adoPrimaryRS("catcd") & "' And lotno = " & adoPrimaryRS("lotno") & " And lotdt = '" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'")
        End If
    '************************************************** For Rg23a ***********************
        If Combo2.Text = "Yes" Then
                Call Rg23A
        End If
        
    '************************************************** For Rg23a ***********************
            
    DB.CommitTrans
    
    MsgBox "Lot Details Modified!", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(2).Enabled = True
       BUTTON(10).Enabled = False
End If

 If Opt = "del" Then
    Set frs = New Recordset
    frs.Open "select fainstal from rm_param", DB
    If frs(0) = "Y" Then
       DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and pjvno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and pjvdt = '" & Format(adoPrimaryRS("pjdt"), "yyyy-mm-dd") & "'")
       DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("pjtc")), 0, adoPrimaryRS("pjtc")) & "' and pjvno = " & IIf(IsNull(adoPrimaryRS("pjno")), 0, adoPrimaryRS("pjno")) & " and pjvdt = '" & Format(adoPrimaryRS("pjdt"), "yyyy-mm-dd") & "'")
    End If
       DB.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL WHERE divcode = '" & Divcode & "'  And catcd = '" & adoPrimaryRS("catcd") & "' And lotno = " & adoPrimaryRS("lotno") & " And lotdt = '" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'")
       '***********************Deletion********************
       Call delrg23c
       '***********************Deletion********************
       DB.CommitTrans
       MsgBox "Record(s) Deleted!", vbInformation, head
    
       Opt = ""
 End If
   
    'Return to query mode
     Call query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
      
    Exit Sub
GOPRIMERROR:
 If err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
  'GoTo gocancel
   End If
del:
If err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    ' GoTo gocancel
    Exit Sub
End If
Case 10
    BUTTON(10).Enabled = False
    If Opt = "add" Or Opt = "del" Then
        On Error Resume Next
        DB.RollbackTrans
    End If
    Opt = ""
    Call query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    BUTTON(2).Enabled = True
    Exit Sub
Case 11
    'EXIT
    Unload Me
End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure BUTTON_Click", vbInformation, head

End Sub
Private Sub Combo2_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub Command5_Click()    'ACTIVEX CANCEL
StatusBar1.Panels(2).Text = ""
Frame3.Visible = False
'TabStrip1.Visible = True
SSTab1.Visible = True
'Frame5.Visible = True
Frame7.Visible = True
Frame8.Visible = True
BUTTON(0).Enabled = True
BUTTON(2).Enabled = True
End Sub

Private Sub Command6_Click()    'ACTIVEX OKAY
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
StatusBar1.Panels(2).Text = ""
Select Case KslList1.listfield1
Case "cast(lotno as varchar)"
 Set adoPrimaryRS = New Recordset
'RaVI adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and (issbal=0 or issbal is null) and (isswt=0 or isswt is null)", DB, adOpenStatic, adLockOptimistic
 adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,OTHTAXAMT,VATAMT,TAXAMT,ODINT,LRFRTAMT,BEDAMT,PJAMT,PJDT,PJNO,PJTC,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " ", DB, adOpenStatic, adLockOptimistic
 If adoPrimaryRS.RecordCount > 0 Then
 
    Call ENABLCONTLS
    Call bindcontls
    DB.BeginTrans
    TXTFIELDS(25).Locked = True
    TXTFIELDS(0).Locked = True
    TXTFIELDS(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    TXTFIELDS(2).Locked = True
    TXTFIELDS(10).Text = IIf(IsNull(adoPrimaryRS("OTHTAXAMT")), 0, adoPrimaryRS("OTHTAXAMT"))
    TXTFIELDS(11).Text = adoPrimaryRS("VATAMT")
    TXTFIELDS(19).Text = adoPrimaryRS("LRFRTAMT")
    TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
    TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
    TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
    TXTFIELDS(32).Text = Format(TXTFIELDS(32).Text, "#0.00")
    TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
    TXTFIELDS(20).Text = Format(TXTFIELDS(20).Text, "#0.00")
    TXTFIELDS(23).Locked = False
    TXTFIELDS(24).Locked = False
    TXTFIELDS(25).Locked = False
    TXTFIELDS(23).SetFocus
    'Frame7.Enabled = False
    If adoPrimaryRS("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoPrimaryRS("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoPrimaryRS("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        TXTFIELDS(3).Text = Rs("VARNAME")
    Else
        TXTFIELDS(3).Text = ""
    End If
    
 Else
 MsgBox "The Record Cannot be Add or Delete Beacuse the Bale is already Issued", vbInformation, head
 Frame3.Visible = False
 BUTTON(9).Enabled = False
 BUTTON(10).Enabled = False
 BUTTON(0).Enabled = True
 BUTTON(2).Enabled = True
 End If
Case "cast(a.tc as varchar)"
SSTab1.Visible = True
TXTFIELDS(300).Text = KslList1.Code
TXTFIELDS(301).Text = KslList1.description
TXTFIELDS(302).SetFocus
Case "purtype"
SSTab1.Visible = True
TXTFIELDS(302).Text = KslList1.Code
TXTFIELDS(303).Text = KslList1.description
TXTFIELDS(304).SetFocus
End Select
Frame3.Visible = False
End Sub

Private Sub DTPicker2_CloseUp()
MaskEdBox1(1).Text = DTPicker2.Value
End Sub

Private Sub Form_Load()
  Call openconnection
  Opt = ""
  Set Rs = New Recordset
  Rs.Open "select count(*) from fa_param", DB, adOpenStatic, adLockBatchOptimistic
  If Rs(0) = 0 Then
  DB.Execute "insert into fa_param values(20,30,31,42,40,52,54,53,55,56,100107,null,null,0,7,14,21,28,35,42,30,45,60,75,90,120,null,null,10,29,1,9,30,39,55,79,40,54,null,null,null,null,null,null,50,150,51,31,32,null,2,200304,18,null,null,200356,33,34,null)"
  End If
  DATLAB.Caption = pdate
'  TabStrip1.Tabs.Clear
 StatusBar1.Panels(1).Text = STBARmsg
  Call query_mode
  BUTTON(9).Enabled = False
  BUTTON(10).Enabled = False
End Sub
Private Sub Form_Unload(Cancel As Integer)
  Opt = ""
  Screen.MousePointer = vbDefault
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  'statusbar1.panels(2).text= "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
On Error Resume Next
If Opt = "" Or Opt = "query" Then
If adoPrimaryRS("bblflg") = "B" Then
      Combo1.Text = "Bale"
   '   txtfields(6).SetFocus
    ElseIf adoPrimaryRS("bblflg") = "R" Then
       Combo1.Text = "Borah"
    Else
    Combo1.Text = " "
   '    txtfields(6).SetFocus
    End If
    Set Rs = New Recordset
    Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoPrimaryRS("VARCODE") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        TXTFIELDS(3).Text = Rs("VARNAME")
    Else
        TXTFIELDS(3).Text = ""
    End If
End If

End Sub
'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoPrimaryRS
Next
MaskEdBox1(0).DataField = "arrdt"
MaskEdBox1(1).DataField = "lotdt"
MaskEdBox1(2).DataField = "billdt"
DTPicker2.MaxDate = pdate
DTPicker2.MinDate = yfdate
If IsNull(adoPrimaryRS("arrdt")) = False Or adoPrimaryRS("arrdt") = "" Then
    MaskEdBox1(0).Text = Format(adoPrimaryRS("arrdt"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("lotdt")) = False Or adoPrimaryRS("lotdt") = "" Then
    MaskEdBox1(1).Text = Format(adoPrimaryRS("lotdt"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("billdt")) = False Then
    MaskEdBox1(2).Text = Format(adoPrimaryRS("billdt"), "dd/mm/yyyy")
Else
    MaskEdBox1(2).Text = "__/__/____"
End If
If IsNull(adoPrimaryRS("pjdt")) = False Then
    MaskEdBox1(3).Text = Format(adoPrimaryRS("pjdt"), "dd/mm/yyyy")
Else
    MaskEdBox1(3).Text = "__/__/____"
End If
Option1.Enabled = False
Option2.Enabled = False
End Sub
Public Sub ENABLCONTLS()
On Error Resume Next
Dim i As Integer
For i = 3 To 21
    TXTFIELDS(i).Locked = False
Next
MaskEdBox1(2).Enabled = True
MaskEdBox1(3).Enabled = True
End Sub
Public Sub disablcontls()
On Error Resume Next
Dim i As Integer
For i = 0 To 30
TXTFIELDS(i).Locked = True
Next
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
MaskEdBox1(3).Enabled = False
Option1.Enabled = False
Option2.Enabled = False
DTPicker2.Enabled = False
Combo1.Enabled = False
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
Select Case Index
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(2).Text = pdate
        MaskEdBox1(2).SetFocus
        ElseIf Not (CDate(MaskEdBox1(2).Text) >= yfdate And CDate(MaskEdBox1(2).Text) <= pdate) Then
    'ElseIf CDate(MaskEdBox1(2).Text) > pdate Then
        MsgBox "Bill Date should fall with in the  processing Date", vbInformation, head
        MaskEdBox1(2).Text = pdate
    End If
End If
Case 3
    If (MaskEdBox1(3).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
        If Not (IsDate(MaskEdBox1(3).Text)) Then
            MsgBox ("invalid date"), vbInformation, head
            MaskEdBox1(3).Text = pdate
            MaskEdBox1(3).SetFocus
        Else
            MaskEdBox1(3).Text = pdate
'        ElseIf CDate(MaskEdBox1(3).Text) > pdate Then
'            MsgBox "Accpt. Date should be less than processing Date", vbInformation, head
'            MaskEdBox1(3).Text = pdate
'        ElseIf CDate(MaskEdBox1(3).Text) > CDate(MaskEdBox1(2).Text) Then
'            MsgBox "Accpt.Date should be less than Bill Date", vbInformation, head
'            'MaskEdBox1(3).Text = MaskEdBox1(2).Text
'            MaskEdBox1(3).Text = "__/__/____"
'            MaskEdBox1(3).SetFocus
        End If
    End If
End Select
End Sub

Private Sub Txtfields_Change(Index As Integer)
If Opt = "add" Or Opt = "" Or Opt = " " Or Opt = "del" Then
Select Case Index
Case 300
   Set Rs = New Recordset
   Rs.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc = " & val(TXTFIELDS(300).Text) & " and a.tc between b.frompurtc and b.topurtc", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     TXTFIELDS(300).Text = Rs(0)
     TXTFIELDS(301).Text = Rs(1)
   Else
        TXTFIELDS(300).Text = ""
        TXTFIELDS(301).Text = ""
   End If
   'rs.Close
Case 302
   Set Rs = New Recordset
   Rs.Open "select purtype,purdesc from rm_purtype where purtype = '" & TXTFIELDS(302).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     TXTFIELDS(302).Text = Rs(0)
     TXTFIELDS(303).Text = Rs(1)
   Else
     TXTFIELDS(302).Text = ""
     TXTFIELDS(303).Text = ""
   End If
   Rs.Close
   
Case 26
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(26).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1.Text = Rs(0)
   End If
   Rs.Close
Case 27
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & TXTFIELDS(27).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text2.Text = Rs(0)
   End If
   Rs.Close
Case 28
   Set Rs = New Recordset
   Rs.Open "select areaname from rm_area where areacode = '" & TXTFIELDS(28).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text3.Text = Rs(0)
   End If
   Rs.Close
 End Select
End If
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Then
If Index = 300 Then
SSTab1.Visible = False
        Frame3.Visible = True
        Label15.Caption = "TC Listing"
        KslList1.conn = connectstring
        KslList1.Table = "fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
        KslList1.listfield1 = "cast(a.tc as varchar)"
        KslList1.listfield2 = "a.tchead"
        Frame3.Visible = True
        Frame3.ZOrder
        KslList1.SetFocus
End If
If Index = 302 Then
SSTab1.Visible = False
     
        Frame3.Visible = True
        Label15.Caption = "Purchase Type Listing"
        KslList1.conn = connectstring
        KslList1.Table = "rm_purtype"
        KslList1.listfield1 = "purtype"
        KslList1.listfield2 = "purdesc"
        Frame3.Visible = True
     
        Frame3.ZOrder
        KslList1.SetFocus
End If
If Index = 304 Then
Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(MAX(pjno),0)+1 FROM rm_lot WHERE lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        TXTFIELDS(304).Text = Rs(0)
End If
End If
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 5
    If KeyAscii = 45 Then KeyAscii = 0
    tonum1 TXTFIELDS(Index), 7, KeyAscii, 0
Case 4
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii

Case 6
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 9, KeyAscii
Case 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 19
If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii

Case 33, 32, 25
    KeyAscii = 0
End Select
End If
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
'Case 9
'If Val(txtfields(9).Text) = 0 Then
'MsgBox "Bill weight Should be greater than 0", vbInformation, head
'txtfields(9).Text = 0#
'txtfields(9).SetFocus
'Exit Sub
'End If



Case 32
      TXTFIELDS(32).Text = IIf(IsNull(val(TXTFIELDS(7))), 0, val(TXTFIELDS(7))) + IIf(IsNull(val(TXTFIELDS(10))), 0, val(TXTFIELDS(10))) + IIf(IsNull(val(TXTFIELDS(11))), 0, val(TXTFIELDS(11))) + IIf(IsNull(val(TXTFIELDS(21))), 0, val(TXTFIELDS(21))) + IIf(IsNull(val(TXTFIELDS(19))), 0, val(TXTFIELDS(19))) + IIf(IsNull(val(TXTFIELDS(14))), 0, val(TXTFIELDS(14))) + IIf(IsNull(val(TXTFIELDS(15))), 0, val(TXTFIELDS(15))) + IIf(IsNull(val(TXTFIELDS(12))), 0, val(TXTFIELDS(12))) + IIf(IsNull(val(TXTFIELDS(13))), 0, val(TXTFIELDS(13))) + IIf(IsNull(val(TXTFIELDS(16))), 0, val(TXTFIELDS(16))) + IIf(IsNull(val(TXTFIELDS(17))), 0, val(TXTFIELDS(17))) + IIf(IsNull(val(TXTFIELDS(18))), 0, val(TXTFIELDS(18))) + IIf(IsNull(val(TXTFIELDS(20))), 0, val(TXTFIELDS(20)))
      TXTFIELDS(32) = Format(TXTFIELDS(32).Text, "#0.00")
Case 33
      TXTFIELDS(33).Text = val(TXTFIELDS(32)) / val(TXTFIELDS(25))
 Case 20
 TXTFIELDS(20) = Format(TXTFIELDS(20).Text, "#0.00")
 Case 18
 TXTFIELDS(18) = Format(TXTFIELDS(18).Text, "#0.00")
End Select
End If
End Sub
Public Sub query_mode()
BUTTON(0).Enabled = True
BUTTON(9).Enabled = False
If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
Frame8.Visible = True
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,OTHTAXAMT,VATAMT,TAXAMT,ODINT,LRFRTAMT,BEDAMT,AEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PTYPE,PJNO,PJDT,PJTC FROM RM_LOT A  " & _
                    "WHERE A.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' Order by A.lotNO", DB, adOpenStatic, adLockBatchOptimistic
    If Not adoPrimaryRS.EOF Then
     'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     Call disablcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
    Call disablcontls
    TXTFIELDS(10).Text = IIf(IsNull(adoPrimaryRS("OTHTAXAMT")), 0, adoPrimaryRS("OTHTAXAMT"))
    TXTFIELDS(11).Text = IIf(IsNull(adoPrimaryRS("VATAMT")), 0, adoPrimaryRS("VATAMT"))
    TXTFIELDS(19).Text = IIf(IsNull(adoPrimaryRS("LRFRTAMT")), 0, adoPrimaryRS("LRFRTAMT"))
    TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
    TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
    TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
    TXTFIELDS(32).Text = Format(TXTFIELDS(32).Text, "#0.00")
    TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
    TXTFIELDS(20).Text = Format(TXTFIELDS(20).Text, "#0.00")
    Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
  
  End If
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


Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Then
Select Case Index
Case 9
If val(TXTFIELDS(9).Text) = 0 Then
MsgBox "Bill weight Should be greater than 0", vbInformation, head
TXTFIELDS(9).Text = 0#
Cancel = True
Exit Sub
End If

Case 7
If val(TXTFIELDS(7).Text) = 0 Then
MsgBox "Bill Amount Should be greater than 0", vbInformation, head
TXTFIELDS(7).Text = 0#
Cancel = True
Exit Sub
End If


If val(TXTFIELDS(7).Text) > 0 Then
If SSTab2.Tab = 0 Then

SSTab2.Tab = 1
TXTFIELDS(11).SetFocus
End If
End If

End Select
End If
End Sub


Public Sub Rg23A()
'************************************************************************
        'THIS  PROCEDURE IS USED FOR RG23A -RMI
'************************************************************************
If Combo2.Text = "Yes" Then
Set Rs = New Recordset
Rs.Open "Select * from rm_lot where divcode='" & Divcode & "' and lotno='" & TXTFIELDS(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & TXTFIELDS(0).Text & "' and dutydocno is  not Null", DB, adOpenStatic
If Rs.RecordCount = 0 Then
    If Table_Exists("ig_dutytrn") = False Then Exit Sub
    
    Set Rs = New Recordset
    Rs.Open "Select count(*) from rm_param a,ig_dutytype b where a.duty_code=b.duty_code", DB, adOpenStatic
    If Rs(0) > 0 Then
    Dim doc_no As String
    Set Rs = New Recordset
    Rs.Open "SELECT YEAR_CODE FROM IG_TRANYEAR WHERE '" & Format(pdate, "yyyy-mm-dd") & "' BETWEEN START_DATE AND END_DATE", DB, adOpenStatic
    Dim ls As New Recordset
    ls.Open "Select duty_code from rm_param ", DB, adOpenStatic
    Set rs1 = New Recordset
    rs1.Open "select isnull(max(LAST_NO),0)+1 from ig_doccontrol where doc_type='D' and divcode='" & Divcode & "' and DOC_REF='" & ls(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
    doc_no = Rs(0) & Padl(CStr(rs1(0)), 6, "0")
    Set rs3 = New Recordset   'For Dutycode
    rs3.Open "Select duty_code from rm_param", DB, adOpenStatic
    DB.Execute "Insert into ig_dutytrn (divcode,duty_code,doc_no,date,tran_type,reference,bank_sl,bed_amt,aed_amt,ref_dt) values " & _
    " ('" & Divcode & "','" & rs3(0) & "','" & doc_no & "','" & Format(pdate, "yyyy-mm-dd") & "','O','" & TXTFIELDS(6).Text & "','" & TXTFIELDS(26).Text & "', " & val(TXTFIELDS(11).Text) & "," & val(TXTFIELDS(21).Text) & ",'" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "')"
    DB.Execute "Update rm_lot set dutydocno='" & doc_no & "' where divcode='" & Divcode & "' and lotno='" & TXTFIELDS(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & TXTFIELDS(0).Text & "'"
    Set Rs = New Recordset
    Rs.Open "Select duty_code from rm_param", DB, adOpenStatic
    DB.Execute "Update ig_doccontrol set last_no ='" & rs1(0) & "' where doc_type='D' and doc_ref='" & Rs(0) & "'and divcode='" & Divcode & "'"
End If
End If
End If
End Sub

Public Function Table_Exists(Table_Name As String) As Boolean
    On Error GoTo Err1
    Table_Name = UCase(Table_Name)
    Dim TDb As New Connection
    Dim trs As New Recordset
    TDb.CursorLocation = adUseClient
    TDb.Open connectstring
    trs.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = '" & Table_Name & "'", TDb, adOpenStatic, adLockReadOnly
    If trs.RecordCount > 0 Then
        trs.Close
        TDb.Close
        Table_Exists = True
        Exit Function
    End If
    trs.Close
    TDb.Close
    Table_Exists = False
    Exit Function
    
Err1:
    MsgBox "Unable To Test Existence Of Table", vbInformation, head
    'Exit Sub
End Function

Public Sub delrg23c()
'                ******************************************** Deletion in Duty Trn********************************************

Set Rs = New Recordset
    Rs.Open "select a.duty_code from rm_param a,ig_dutytype b where a.duty_code=b.duty_code", DB, adOpenStatic
    If (Rs.RecordCount > 0) And Not (Trim(adoPrimaryRS("dutydocno")) = "") Then
        DB.Execute "Delete from ig_dutytrn where divcode='" & Divcode & "' and duty_code='" & Rs(0) & "' and DOC_NO='" & adoPrimaryRS("dutydocno") & "'"
        DB.Execute "Update rm_lot set dutydocno=Null,rg23a=Null where divcode='" & Divcode & "' and lotno='" & TXTFIELDS(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & TXTFIELDS(0).Text & "'"
    End If
End Sub

