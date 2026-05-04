VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form QryVar 
   Caption         =   "QryVar"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame7 
      Height          =   700
      Left            =   0
      TabIndex        =   17
      Top             =   -120
      Visible         =   0   'False
      Width           =   4920
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   11
         Left            =   570
         Picture         =   "QryVar.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Exit"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "QryVar.frx":044A
         Height          =   550
         Index           =   10
         Left            =   45
         Picture         =   "QryVar.frx":0754
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Cancel "
         Top             =   135
         Width           =   525
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
         Left            =   3555
         TabIndex        =   20
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4335
      Left            =   1200
      TabIndex        =   0
      Top             =   1200
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "QryVar.frx":0AD0
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1(0)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Command1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Command2"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      Begin VB.CommandButton Command2 
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
         Height          =   435
         Left            =   3720
         TabIndex        =   38
         Top             =   3600
         Width           =   1155
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&O.K"
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
         Left            =   2310
         TabIndex        =   37
         Top             =   3600
         Width           =   1155
      End
      Begin VB.Frame Frame1 
         Height          =   3360
         Index           =   0
         Left            =   240
         TabIndex        =   1
         Top             =   120
         Width           =   6615
         Begin MSDataListLib.DataCombo DataCombo7 
            Height          =   360
            Left            =   1680
            TabIndex        =   2
            Top             =   2400
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo6 
            Height          =   360
            Left            =   4860
            TabIndex        =   3
            Top             =   2880
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo4 
            Height          =   360
            Left            =   4920
            TabIndex        =   4
            Top             =   1050
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo1 
            Height          =   360
            Left            =   1680
            TabIndex        =   5
            Top             =   1080
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo2 
            Height          =   360
            Left            =   1680
            TabIndex        =   6
            Top             =   600
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            ForeColor       =   -2147483646
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo3 
            Height          =   360
            Left            =   4920
            TabIndex        =   7
            Top             =   600
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            ForeColor       =   -2147483646
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo5 
            Height          =   360
            Left            =   1680
            TabIndex        =   8
            Top             =   2850
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo8 
            Height          =   360
            Left            =   1680
            TabIndex        =   39
            Top             =   1530
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo9 
            Height          =   360
            Left            =   4920
            TabIndex        =   40
            Top             =   1500
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo10 
            Height          =   360
            Left            =   1680
            TabIndex        =   43
            Top             =   1950
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   635
            _Version        =   393216
            Style           =   2
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Strength"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   4
            Left            =   150
            TabIndex        =   44
            Top             =   2033
            Width           =   735
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "M.Coefficient"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   2
            Left            =   3600
            TabIndex        =   42
            Top             =   1590
            Width           =   1140
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Stap Length 50%"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   3
            Left            =   150
            TabIndex        =   41
            Top             =   1613
            Width           =   1455
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Trash"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   3600
            TabIndex        =   16
            Top             =   1140
            Width           =   495
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Parameterwise Rate"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000009&
            Height          =   315
            Index           =   0
            Left            =   45
            TabIndex        =   15
            Top             =   120
            Width           =   6525
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Unifo.Ratio"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   3600
            TabIndex        =   14
            Top             =   690
            Width           =   975
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Stap Length 2.5%"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   150
            TabIndex        =   13
            Top             =   683
            Width           =   1515
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Micronaire"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   150
            TabIndex        =   12
            Top             =   1163
            Width           =   900
         End
         Begin VB.Label Label7 
            Caption         =   "To Date"
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
            Index           =   0
            Left            =   3720
            TabIndex        =   11
            Top             =   2940
            Width           =   735
         End
         Begin VB.Label Label8 
            Caption         =   "Count"
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
            Index           =   0
            Left            =   210
            TabIndex        =   10
            Top             =   2430
            Width           =   735
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "From Date"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   210
            TabIndex        =   9
            Top             =   2940
            Width           =   885
         End
      End
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   5325
      Left            =   840
      TabIndex        =   21
      Top             =   1080
      Visible         =   0   'False
      Width           =   7905
      _ExtentX        =   13944
      _ExtentY        =   9393
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "                      "
      TabPicture(0)   =   "QryVar.frx":0AEC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1(1)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Height          =   1500
         Index           =   1
         Left            =   240
         TabIndex        =   24
         Top             =   240
         Visible         =   0   'False
         Width           =   7410
         Begin VB.TextBox txtfields 
            DataField       =   " "
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
            Index           =   1
            Left            =   2940
            TabIndex        =   35
            Top             =   990
            Width           =   4365
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   " "
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
            Index           =   0
            Left            =   1800
            TabIndex        =   33
            Top             =   240
            Width           =   1125
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   " "
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
            Index           =   2
            Left            =   4665
            TabIndex        =   31
            Top             =   225
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
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
            Index           =   7
            Left            =   1800
            TabIndex        =   27
            Top             =   990
            Width           =   1125
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   " "
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
            Index           =   4
            Left            =   4665
            TabIndex        =   26
            Top             =   620
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   " "
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
            Index           =   8
            Left            =   1800
            TabIndex        =   25
            Top             =   630
            Width           =   1125
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Stap Length"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Left            =   465
            TabIndex        =   34
            Top             =   300
            Width           =   1050
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Unif.Ratio"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   1
            Left            =   3540
            TabIndex        =   32
            Top             =   300
            Width           =   870
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Count"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   1
            Left            =   465
            TabIndex        =   30
            Top             =   1058
            Width           =   510
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Trash"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Index           =   1
            Left            =   3540
            TabIndex        =   29
            Top             =   680
            Width           =   495
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Micronaire"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000006&
            Height          =   195
            Left            =   465
            TabIndex        =   28
            Top             =   680
            Width           =   900
         End
      End
      Begin VB.Frame Frame2 
         Height          =   3210
         Left            =   240
         TabIndex        =   22
         Top             =   1785
         Visible         =   0   'False
         Width           =   7410
         Begin MSDataGridLib.DataGrid DataGrid2 
            Height          =   2805
            Left            =   120
            TabIndex        =   23
            Top             =   240
            Width           =   7155
            _ExtentX        =   12621
            _ExtentY        =   4948
            _Version        =   393216
            ForeColor       =   -2147483646
            HeadLines       =   1
            RowHeight       =   15
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
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Parameterwise Rate"
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
      Index           =   2
      Left            =   870
      TabIndex        =   36
      Top             =   630
      Width           =   2565
   End
End
Attribute VB_Name = "QryVar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Cnn As Connection
Dim Rs As Recordset
Dim q1, q2, q3, q4 As Double
Dim cc As String


Private Sub BUTTON_Click(Index As Integer)
On erro GoTo BUTTON_Click_Error
intervalMinutes = -1
    Select Case Index
      Case 10
        SSTab1.Visible = True
        SSTab1.ZOrder
        Frame1(0).Visible = True
        SSTab2.Visible = False
        Frame1(1).Visible = False
        Frame2.Visible = False
        DataGrid2.Visible = False
      Case 11
        Unload Me
    End Select
intervalMinutes = -1
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click", vbInformation, head
End Sub

Private Sub Command1_Click()
intervalMinutes = -1
On Error Resume Next
    q1 = DataCombo2.Text
    q2 = DataCombo3.Text
    q3 = DataCombo1.Text
    q4 = DataCombo4.Text
    D1 = DataCombo5.Text
    D2 = DataCombo6.Text
    cc = DataCombo7.Text
    
    Set Rs = New Recordset
    Rs.Open "SELECT LOTNO as ' Lot No.',LOTDT AS '   Lot Date  ',a.VARCODE AS 'Variety Code',b.varname as 'Variety Name', RATEKG AS '              Rate/Kg' FROM RM_LOT a,rm_var b WHERE STAPLEN='" & q1 & "' AND uniratio='" & q2 & "' AND mICRONAIRE='" & DataCombo1.Text & "' AND TRASH_PER='" & q4 & "' and staplen50 ='" & DataCombo8.Text & "'  and mcoeff='" & DataCombo9.Text & "' and strength='" & DataCombo10.Text & "' AND CNTCODE= '" & cc & "' AND LOTDT BETWEEN '" & Format(D1, "YYYY/MM/DD") & "' AND '" & Format(D2, "YYYY/MM/DD") & "' and a.varcode=b.varcode", Cnn, adOpenStatic
    
    If Rs.EOF Then
       MsgBox "No Record found for these Parameters", vbInformation, head
       Exit Sub
    End If
    Set rs1 = New Recordset
    rs1.Open "select isnull(cntname,'') from rm_count where cntcd='" & DataCombo7.Text & "'", Cnn, adOpenStatic
    If Not rs1.EOF Then
        txtFields(1).Text = rs1(0)
    End If
    
    SSTab1.Visible = False
    Frame1(0).Visible = False
    SSTab2.Visible = True
    SSTab2.ZOrder
    Frame1(1).Visible = True
    Frame2.Visible = True
    DataGrid2.Visible = True
    BUTTON(10).Enabled = True
    
    Set DataGrid2.DataSource = Rs
    DataGrid2.Columns(0).Width = 705.2599
    DataGrid2.Columns(1).Width = 1049.953
    DataGrid2.Columns(2).Width = 1110.047
    DataGrid2.Columns(3).Width = 1649.764
    DataGrid2.Columns(4).Width = 1995.024
    DataGrid2.Columns(4).Alignment = dbgRight
    DataGrid2.Columns(0).Alignment = dbgRight
    DataGrid2.Columns(1).Alignment = dbgCenter
    DataGrid2.Columns(4).NumberFormat = "###.00 "
    DataGrid2.AllowUpdate = False
    txtFields(0).Text = q1
    txtFields(2).Text = q2
    txtFields(8).Text = q3
    txtFields(4).Text = q4
    txtFields(7).Text = cc
        intervalMinutes = -1
    
End Sub


Private Sub Command2_Click()
intervalMinutes = -1
    Unload Me
End Sub

Private Sub Command2_LostFocus()
DataCombo2.SetFocus
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
    On Error Resume Next
    Set Cnn = New Connection
    Cnn.Open connectstring
    DATLAB.Caption = pdate
    BUTTON(10).Enabled = False
    'Filling the comboboxes  with records  from the table
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT STAPLEN AS SL FROM RM_LOT where divcode='" & Divcode & "' ORDER BY STAPLEN ", Cnn, adOpenStatic
    Set DataCombo2.RowSource = Rs
    DataCombo2.ListField = "SL"
    DataCombo2.Text = Rs(0)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT isnull(uniratio,0) AS SF FROM RM_LOT where divcode='" & Divcode & "'", Cnn, adOpenStatic
    Set DataCombo3.RowSource = Rs
    DataCombo3.ListField = "SF"
    DataCombo3.Text = Rs(0)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT MICRONAIRE AS MR FROM RM_LOT where divcode='" & Divcode & "' ORDER BY MICRONAIRE ", Cnn, adOpenStatic
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "MR"
    DataCombo1.Text = Rs(0)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT TRASH_PER  AS TP FROM RM_LOT where divcode='" & Divcode & "' ORDER BY TRASH_PER", Cnn, adOpenStatic
    Set DataCombo4.RowSource = Rs
    DataCombo4.ListField = "TP"
    DataCombo4.Text = Rs(0)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT CNTCODE AS CC FROM RM_LOT where divcode='" & Divcode & "' ORDER BY CNTCODE ", Cnn, adOpenStatic
    Set DataCombo7.RowSource = Rs
    DataCombo7.ListField = "CC"
    Rs.MoveLast
    DataCombo7.Text = Rs(0)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT LOTDT AS DT FROM RM_LOT where divcode='" & Divcode & "' ORDER BY LOTDT", Cnn, adOpenStatic
    Rs.MoveFirst
    Set DataCombo5.RowSource = Rs
    DataCombo5.ListField = Format("DT", "DD/MM/YYYY")
    DataCombo5.Text = Rs(0)
    'rs.MoveLast
    Set DataCombo6.RowSource = Rs
    DataCombo6.ListField = Format("DT", "DD/MM/YYYY")
    DataCombo6.Text = Rs(0)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT isnull(staplen50,0) AS CC FROM RM_LOT where divcode='" & Divcode & "'", Cnn, adOpenStatic
    Set DataCombo8.RowSource = Rs
    DataCombo8.ListField = "CC"
    DataCombo8.Text = Rs(0)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT isnull(mcoeff,0) AS CC FROM RM_LOT where divcode='" & Divcode & "' ", Cnn, adOpenStatic
    Set DataCombo9.RowSource = Rs
    DataCombo9.ListField = "CC"
    DataCombo9.Text = Rs(0)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT isnull(strength,0) AS CC FROM RM_LOT where divcode='" & Divcode & "'  ", Cnn, adOpenStatic
    Set DataCombo10.RowSource = Rs
    DataCombo10.ListField = "CC"
    DataCombo10.Text = Rs(0)
    
    DataCombo2.tabIndex = 0
    DataCombo3.tabIndex = 1
    DataCombo1.tabIndex = 2
    DataCombo4.tabIndex = 3
    DataCombo8.tabIndex = 4
    DataCombo9.tabIndex = 5
    DataCombo10.tabIndex = 6
    DataCombo7.tabIndex = 7
    DataCombo5.tabIndex = 8
    DataCombo6.tabIndex = 9
    Command1.tabIndex = 10
    Command2.tabIndex = 11
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub
