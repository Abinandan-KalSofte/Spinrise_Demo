VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form slmaster 
   Caption         =   "Supplier"
   ClientHeight    =   7305
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11145
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7305
   ScaleWidth      =   11145
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CR 
      Left            =   11700
      Top             =   6000
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   7500
      Left            =   15
      TabIndex        =   69
      Top             =   960
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   13229
      _Version        =   393216
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   12632256
      ForeColor       =   -2147483630
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "&Address"
      TabPicture(0)   =   "slmast.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame4"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "&Details"
      TabPicture(1)   =   "slmast.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame7"
      Tab(1).Control(1)=   "Frame5"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "&Balances"
      TabPicture(2)   =   "slmast.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label31"
      Tab(2).Control(1)=   "Frame9"
      Tab(2).Control(2)=   "Frame8"
      Tab(2).ControlCount=   3
      Begin VB.Frame Frame8 
         Height          =   660
         Left            =   -74880
         TabIndex        =   152
         Top             =   360
         Width           =   11655
         Begin VB.TextBox pname 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slname"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   2580
            Locked          =   -1  'True
            TabIndex        =   160
            TabStop         =   0   'False
            Top             =   225
            Width           =   8850
         End
         Begin VB.TextBox party 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slcode"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   1395
            Locked          =   -1  'True
            TabIndex        =   159
            TabStop         =   0   'False
            Top             =   225
            Width           =   1100
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Code"
            Height          =   240
            Left            =   360
            TabIndex        =   153
            Top             =   300
            Width           =   495
         End
      End
      Begin VB.Frame Frame9 
         Height          =   6345
         Left            =   -74880
         TabIndex        =   154
         Top             =   990
         Visible         =   0   'False
         Width           =   11655
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   1890
            TabIndex        =   74
            Top             =   1830
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   3345
            TabIndex        =   75
            Top             =   1830
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   5
            Left            =   1890
            TabIndex        =   76
            Top             =   2598
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   5
            Left            =   3345
            TabIndex        =   77
            Top             =   2598
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   6
            Left            =   1890
            TabIndex        =   78
            Top             =   3366
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   6
            Left            =   3345
            TabIndex        =   79
            Top             =   3366
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   7
            Left            =   1890
            TabIndex        =   80
            Top             =   4134
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   7
            Left            =   3345
            TabIndex        =   81
            Top             =   4134
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   8
            Left            =   1890
            TabIndex        =   82
            Top             =   4902
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   8
            Left            =   3345
            TabIndex        =   83
            Top             =   4902
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   1890
            TabIndex        =   84
            Top             =   5670
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   3345
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   85
            Top             =   5670
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   10
            Left            =   7020
            TabIndex        =   86
            Top             =   1830
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   11
            Left            =   7020
            TabIndex        =   88
            Top             =   2598
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   7020
            TabIndex        =   93
            Top             =   4134
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   7020
            TabIndex        =   95
            Top             =   4902
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   3
            Left            =   7020
            TabIndex        =   97
            Top             =   5670
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   10
            Left            =   8490
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   87
            Top             =   1830
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   11
            Left            =   8490
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   89
            Top             =   2598
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   12
            Left            =   8490
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   92
            Top             =   3366
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   8490
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   94
            Top             =   4134
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   8490
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   96
            Top             =   4902
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   3
            Left            =   8490
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   98
            Top             =   5670
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   12
            Left            =   7020
            TabIndex        =   91
            Top             =   3366
            Width           =   1455
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   240
            Left            =   8925
            TabIndex        =   176
            Top             =   1485
            Width           =   525
         End
         Begin VB.Label Label29 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   240
            Left            =   3795
            TabIndex        =   175
            Top             =   1470
            Width           =   525
         End
         Begin VB.Label Label28 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   240
            Left            =   2385
            TabIndex        =   174
            Top             =   1470
            Width           =   480
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "September"
            Height          =   240
            Left            =   840
            TabIndex        =   173
            Top             =   5715
            Width           =   1005
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "August"
            Height          =   240
            Left            =   840
            TabIndex        =   172
            Top             =   4950
            Width           =   615
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "July"
            Height          =   240
            Left            =   840
            TabIndex        =   171
            Top             =   4185
            Width           =   360
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "June"
            Height          =   240
            Left            =   840
            TabIndex        =   170
            Top             =   3435
            Width           =   435
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "May"
            Height          =   240
            Left            =   840
            TabIndex        =   169
            Top             =   2640
            Width           =   390
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "April"
            Height          =   240
            Left            =   840
            TabIndex        =   168
            Top             =   1875
            Width           =   405
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   240
            Left            =   7500
            TabIndex        =   167
            Top             =   1485
            Width           =   480
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "October"
            Height          =   240
            Index           =   0
            Left            =   5910
            TabIndex        =   166
            Top             =   1875
            Width           =   720
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "November"
            Height          =   240
            Index           =   1
            Left            =   5910
            TabIndex        =   165
            Top             =   2640
            Width           =   960
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "December"
            Height          =   240
            Index           =   2
            Left            =   5910
            TabIndex        =   164
            Top             =   3405
            Width           =   960
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "January"
            Height          =   240
            Index           =   3
            Left            =   5910
            TabIndex        =   163
            Top             =   4185
            Width           =   720
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "February"
            Height          =   240
            Index           =   4
            Left            =   5910
            TabIndex        =   162
            Top             =   4950
            Width           =   810
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "March"
            Height          =   240
            Index           =   5
            Left            =   5910
            TabIndex        =   161
            Top             =   5715
            Width           =   555
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   240
            Left            =   4785
            TabIndex        =   158
            Top             =   240
            Width           =   480
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   240
            Left            =   6090
            TabIndex        =   157
            Top             =   240
            Width           =   525
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Current Balance"
            Height          =   240
            Left            =   2445
            TabIndex        =   156
            Top             =   900
            Width           =   1425
         End
         Begin VB.Label cbdr 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000009&
            BorderStyle     =   1  'Fixed Single
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#######0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   4185
            TabIndex        =   72
            Top             =   855
            Width           =   1455
         End
         Begin VB.Label cbcr 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000009&
            BorderStyle     =   1  'Fixed Single
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#########0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   5640
            TabIndex        =   73
            Top             =   855
            Width           =   1455
         End
         Begin VB.Label ypcr1 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000009&
            BorderStyle     =   1  'Fixed Single
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "########0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   5640
            TabIndex        =   71
            Top             =   495
            Width           =   1455
         End
         Begin VB.Label ypdr1 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000009&
            BorderStyle     =   1  'Fixed Single
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "########0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   4200
            TabIndex        =   70
            Top             =   495
            Width           =   1455
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Opening Balance"
            Height          =   240
            Left            =   2445
            TabIndex        =   155
            Top             =   540
            Width           =   1560
         End
      End
      Begin VB.Frame Frame5 
         Height          =   660
         Left            =   -74880
         TabIndex        =   131
         Top             =   360
         Width           =   11655
         Begin VB.TextBox TXname 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slname"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   3060
            Locked          =   -1  'True
            MaxLength       =   60
            TabIndex        =   27
            TabStop         =   0   'False
            Top             =   210
            Width           =   8250
         End
         Begin VB.TextBox vendor 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slcode"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   1860
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   225
            Width           =   1100
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Code"
            Height          =   240
            Left            =   360
            TabIndex        =   132
            Top             =   300
            Width           =   495
         End
      End
      Begin VB.Frame Frame4 
         Height          =   7020
         Left            =   90
         TabIndex        =   55
         Top             =   360
         Width           =   11655
         Begin VB.TextBox txtfields 
            DataField       =   "PAN"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   19
            Left            =   1860
            MaxLength       =   10
            TabIndex        =   14
            Top             =   4024
            Width           =   3375
         End
         Begin VB.CheckBox Chk_ActiveFlag 
            Caption         =   "Is Active"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   10080
            TabIndex        =   218
            Top             =   285
            Width           =   1335
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "scanfilename"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   66
            Left            =   4995
            MaxLength       =   30
            TabIndex        =   217
            TabStop         =   0   'False
            Top             =   5916
            Width           =   6390
         End
         Begin VB.TextBox txt_filename 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   1
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
            Left            =   1860
            Locked          =   -1  'True
            TabIndex        =   214
            Top             =   6390
            Visible         =   0   'False
            Width           =   8415
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
            Left            =   10410
            Style           =   1  'Graphical
            TabIndex        =   213
            Top             =   6360
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.ComboBox Combo2 
            DataField       =   "supptype"
            Height          =   360
            ItemData        =   "slmast.frx":0054
            Left            =   8445
            List            =   "slmast.frx":005E
            TabIndex        =   13
            Text            =   "R-Registered"
            Top             =   3536
            Width           =   1575
         End
         Begin VB.TextBox txtfields 
            DataField       =   "gststatecode"
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   70
            Left            =   1860
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   209
            Top             =   3551
            Width           =   3375
         End
         Begin VB.TextBox txtfields 
            DataField       =   "gstinno"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   69
            Left            =   8445
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   15
            Top             =   4024
            Width           =   2940
         End
         Begin VB.TextBox txtfields 
            DataField       =   "OLDSLCODE"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   40
            Left            =   1860
            MaxLength       =   10
            TabIndex        =   25
            Top             =   5916
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "STATE_code"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   35
            Left            =   1860
            MaxLength       =   5
            TabIndex        =   10
            TabStop         =   0   'False
            Top             =   3078
            Width           =   1095
         End
         Begin VB.TextBox prtyTXT 
            BackColor       =   &H00E0E0E0&
            DataField       =   "prtyhead"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   3990
            Locked          =   -1  'True
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   607
            Width           =   5970
         End
         Begin VB.TextBox txtfields 
            DataField       =   "ADD2"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   1860
            MaxLength       =   50
            TabIndex        =   6
            Top             =   1659
            Width           =   9525
         End
         Begin VB.TextBox txtfields 
            DataField       =   "ADD1"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   3
            Left            =   1860
            MaxLength       =   50
            TabIndex        =   5
            Top             =   1186
            Width           =   9525
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "SLCODE"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   1860
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   1
            TabStop         =   0   'False
            Top             =   240
            Width           =   1100
         End
         Begin VB.TextBox txtfields 
            DataField       =   "CITY"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   5
            Left            =   1860
            MaxLength       =   30
            TabIndex        =   8
            Top             =   2605
            Width           =   3375
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "STATE"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   6
            Left            =   3060
            Locked          =   -1  'True
            MaxLength       =   35
            TabIndex        =   11
            TabStop         =   0   'False
            Top             =   3078
            Width           =   2175
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "COUNTRY"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   7
            Left            =   8445
            MaxLength       =   30
            TabIndex        =   12
            TabStop         =   0   'False
            Top             =   3078
            Width           =   2940
         End
         Begin VB.TextBox txtfields 
            DataField       =   "PIN"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   8
            Left            =   8445
            MaxLength       =   7
            TabIndex        =   9
            Top             =   2605
            Width           =   2940
         End
         Begin VB.TextBox txtfields 
            DataField       =   "PHONE1"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   1860
            MaxLength       =   30
            TabIndex        =   16
            Top             =   4497
            Width           =   3375
         End
         Begin VB.TextBox txtfields 
            DataField       =   "PHONE2"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   10
            Left            =   8445
            MaxLength       =   30
            TabIndex        =   17
            Top             =   4497
            Width           =   2940
         End
         Begin VB.TextBox txtfields 
            DataField       =   "FAX"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   11
            Left            =   1500
            MaxLength       =   20
            TabIndex        =   19
            Top             =   8430
            Width           =   3060
         End
         Begin VB.TextBox txtfields 
            DataField       =   "EMAIL"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   12
            Left            =   1860
            MaxLength       =   50
            TabIndex        =   20
            Top             =   4970
            Width           =   3375
         End
         Begin VB.TextBox txtfields 
            DataField       =   "WEBADDR"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   13
            Left            =   8445
            MaxLength       =   40
            TabIndex        =   21
            Top             =   4970
            Width           =   2940
         End
         Begin VB.TextBox txtfields 
            DataField       =   "ABBR"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   1860
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   3
            Top             =   713
            Width           =   1095
         End
         Begin VB.TextBox txtfields 
            DataField       =   "telegram"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   32
            Left            =   5460
            MaxLength       =   30
            TabIndex        =   18
            Top             =   8475
            Visible         =   0   'False
            Width           =   3015
         End
         Begin VB.TextBox txtfields 
            DataField       =   "ADD3"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   34
            Left            =   1860
            MaxLength       =   50
            TabIndex        =   7
            Top             =   2132
            Width           =   9525
         End
         Begin VB.TextBox txtfields 
            DataField       =   "SLNAME"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   3990
            MaxLength       =   75
            TabIndex        =   2
            Top             =   225
            Width           =   5970
         End
         Begin VB.TextBox txtfields 
            DataField       =   "contphone"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   20
            Left            =   8445
            MaxLength       =   30
            TabIndex        =   24
            Top             =   5443
            Width           =   2940
         End
         Begin VB.TextBox txtfields 
            DataField       =   "contdesg"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   21
            Left            =   4995
            MaxLength       =   30
            TabIndex        =   23
            Top             =   5443
            Width           =   1695
         End
         Begin VB.TextBox txtfields 
            DataField       =   "contper"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   22
            Left            =   1860
            MaxLength       =   30
            TabIndex        =   22
            Top             =   5443
            Width           =   1800
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "PAN No."
            Height          =   240
            Index           =   6
            Left            =   120
            TabIndex        =   220
            Top             =   4069
            Width           =   780
         End
         Begin VB.Label Label93 
            Caption         =   "Scan Copy"
            Height          =   255
            Left            =   120
            TabIndex        =   216
            Top             =   6480
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.Label Label59 
            Caption         =   "File Name"
            Height          =   255
            Left            =   3930
            TabIndex        =   215
            Top             =   5955
            Width           =   975
         End
         Begin VB.Label Label75 
            Caption         =   "GST Status *"
            ForeColor       =   &H00FF0000&
            Height          =   255
            Left            =   7250
            TabIndex        =   212
            Top             =   3585
            Width           =   1455
         End
         Begin VB.Label Label99 
            AutoSize        =   -1  'True
            Caption         =   "GST State Code*"
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
            Height          =   240
            Index           =   0
            Left            =   120
            TabIndex        =   211
            Top             =   3596
            Width           =   1980
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label1 
            Caption         =   "GST No. *"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C00000&
            Height          =   195
            Index           =   3
            Left            =   7250
            TabIndex        =   210
            Top             =   4095
            Width           =   945
         End
         Begin VB.Label Label6 
            Caption         =   "Existing Supplier Code"
            Height          =   465
            Index           =   25
            Left            =   120
            TabIndex        =   208
            Top             =   5849
            Width           =   1455
         End
         Begin VB.Label Label42 
            Caption         =   "Abbreviation"
            Height          =   255
            Left            =   120
            TabIndex        =   207
            Top             =   751
            Width           =   1185
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Line 3"
            Height          =   240
            Left            =   120
            TabIndex        =   202
            Top             =   2177
            Width           =   525
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "Line 2"
            Height          =   240
            Left            =   120
            TabIndex        =   201
            Top             =   1704
            Width           =   525
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "SL ID *"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   0
            Left            =   120
            TabIndex        =   130
            Top             =   285
            Width           =   600
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Name *"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Left            =   3225
            TabIndex        =   129
            Top             =   300
            Width           =   675
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Abbreviation"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   14400
            TabIndex        =   128
            Top             =   675
            Visible         =   0   'False
            Width           =   885
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Address Line 1 *"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Left            =   120
            TabIndex        =   127
            Top             =   1230
            Width           =   1455
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "City *"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   0
            Left            =   120
            TabIndex        =   126
            Top             =   2655
            Width           =   450
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "State"
            Height          =   240
            Left            =   120
            TabIndex        =   125
            Top             =   3123
            Width           =   465
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Country"
            Height          =   240
            Left            =   7250
            TabIndex        =   124
            Top             =   3120
            Width           =   675
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Pincode"
            Height          =   240
            Left            =   7250
            TabIndex        =   123
            Top             =   2655
            Width           =   750
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Phone 1"
            Height          =   240
            Left            =   120
            TabIndex        =   122
            Top             =   4542
            Width           =   735
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Fax"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   360
            TabIndex        =   121
            Top             =   8520
            Width           =   255
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "E-Mail"
            Height          =   240
            Left            =   120
            TabIndex        =   120
            Top             =   5015
            Width           =   570
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Web site"
            Height          =   240
            Left            =   7250
            TabIndex        =   119
            Top             =   5010
            Width           =   795
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Telegram"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   19
            Left            =   4290
            TabIndex        =   118
            Top             =   8460
            Visible         =   0   'False
            Width           =   660
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            Caption         =   "Phone 2"
            Height          =   240
            Left            =   7250
            TabIndex        =   117
            Top             =   4545
            Width           =   735
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Phone No. *"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   9
            Left            =   7250
            TabIndex        =   116
            Top             =   5490
            Width           =   1065
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Contact Person *"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   7
            Left            =   120
            TabIndex        =   115
            Top             =   5490
            Width           =   1485
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Desig. *"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   8
            Left            =   3930
            TabIndex        =   114
            Top             =   5490
            Width           =   705
         End
      End
      Begin VB.Frame Frame7 
         Height          =   6315
         Left            =   -74880
         TabIndex        =   133
         Top             =   1020
         Width           =   11655
         Begin VB.TextBox txtfields 
            DataField       =   "CourierThrough"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   39
            Left            =   1830
            MaxLength       =   50
            MultiLine       =   -1  'True
            TabIndex        =   51
            Top             =   5352
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "IFSCCode"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   38
            Left            =   8640
            MaxLength       =   25
            MultiLine       =   -1  'True
            TabIndex        =   46
            Top             =   4316
            Width           =   2655
         End
         Begin VB.TextBox txtfields 
            DataField       =   "BankAcNo"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   37
            Left            =   1830
            MaxLength       =   25
            MultiLine       =   -1  'True
            TabIndex        =   45
            Top             =   4316
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "tinno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   36
            Left            =   8640
            MaxLength       =   20
            TabIndex        =   38
            Top             =   2762
            Width           =   2655
         End
         Begin VB.TextBox tax 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   9150
            Locked          =   -1  'True
            TabIndex        =   53
            Top             =   5352
            Width           =   2145
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "insper"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   33
            Left            =   1830
            MaxLength       =   8
            TabIndex        =   54
            Top             =   5880
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "TAX_CODE"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   29
            Left            =   8640
            TabIndex        =   52
            Top             =   5352
            Width           =   495
         End
         Begin VB.TextBox area 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   3750
            Locked          =   -1  'True
            TabIndex        =   48
            Top             =   4834
            Width           =   2175
         End
         Begin VB.TextBox bank1 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   3750
            Locked          =   -1  'True
            TabIndex        =   42
            Top             =   3798
            Width           =   2145
         End
         Begin VB.TextBox txtfields 
            DataField       =   "BANKADD1"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   30
            Left            =   1830
            MaxLength       =   4
            TabIndex        =   41
            Top             =   3798
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "CRDDAYS"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   27
            Left            =   1830
            MaxLength       =   3
            TabIndex        =   39
            Top             =   3280
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "PAY_TERMS"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   26
            Left            =   1830
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   37
            Top             =   2762
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "AREACODE"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   24
            Left            =   1830
            MaxLength       =   4
            TabIndex        =   47
            Top             =   4834
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "ECC"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   18
            Left            =   1830
            MaxLength       =   20
            TabIndex        =   36
            Top             =   2244
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "CGST"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   15
            Left            =   1830
            MaxLength       =   30
            TabIndex        =   34
            Top             =   1726
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "TNGST"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   14
            Left            =   1830
            MaxLength       =   30
            MultiLine       =   -1  'True
            TabIndex        =   32
            Top             =   1208
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "TNGSTDT"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   16
            Left            =   8640
            MaxLength       =   10
            TabIndex        =   33
            Top             =   1208
            Width           =   2655
         End
         Begin VB.TextBox txtfields 
            DataField       =   "CGSTDT"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   17
            Left            =   8640
            MaxLength       =   10
            TabIndex        =   35
            Top             =   1726
            Width           =   2655
         End
         Begin VB.TextBox txtfields 
            DataField       =   "CARCODE"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   25
            Left            =   8640
            MaxLength       =   4
            TabIndex        =   49
            Top             =   4834
            Width           =   495
         End
         Begin VB.TextBox txtfields 
            DataField       =   "CRLIMIT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   28
            Left            =   8640
            MaxLength       =   9
            TabIndex        =   40
            Top             =   3280
            Width           =   2655
         End
         Begin VB.TextBox txtfields 
            DataField       =   "BANKADD2"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   31
            Left            =   8640
            MaxLength       =   4
            TabIndex        =   43
            Top             =   3798
            Width           =   495
         End
         Begin VB.TextBox bank2 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   9150
            Locked          =   -1  'True
            TabIndex        =   44
            Top             =   3798
            Width           =   2145
         End
         Begin VB.TextBox carrier 
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   9150
            Locked          =   -1  'True
            TabIndex        =   50
            Top             =   4834
            Width           =   2145
         End
         Begin VB.TextBox ypdr 
            Alignment       =   1  'Right Justify
            DataField       =   "yopbdr"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   1830
            Locked          =   -1  'True
            TabIndex        =   28
            Top             =   172
            Width           =   1800
         End
         Begin VB.TextBox ypcr 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "yopbcr"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "##,##,##,#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   4485
            Locked          =   -1  'True
            TabIndex        =   29
            Top             =   172
            Width           =   1800
         End
         Begin VB.TextBox txtfields 
            DataField       =   "BRCODE"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   23
            Left            =   1830
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   30
            Top             =   690
            Width           =   1800
         End
         Begin VB.TextBox dbname 
            BackColor       =   &H00E0E0E0&
            DataField       =   "dbname"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   3750
            Locked          =   -1  'True
            TabIndex        =   31
            TabStop         =   0   'False
            Top             =   690
            Width           =   7530
         End
         Begin VB.Label Label6 
            Caption         =   "Courier Through"
            Height          =   255
            Index           =   24
            Left            =   120
            TabIndex        =   206
            Top             =   5385
            Width           =   1380
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "IFSC Code"
            Height          =   240
            Index           =   23
            Left            =   7350
            TabIndex        =   205
            Top             =   4365
            Width           =   975
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "BanK Account No."
            Height          =   240
            Index           =   21
            Left            =   120
            TabIndex        =   203
            Top             =   4365
            Width           =   1605
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "TIN No."
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   16
            Left            =   7335
            TabIndex        =   200
            Top             =   2805
            Width           =   690
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "ST Regn. No."
            Height          =   240
            Index           =   1
            Left            =   120
            TabIndex        =   151
            Top             =   1260
            Width           =   1215
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "CST No."
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   2
            Left            =   120
            TabIndex        =   150
            Top             =   1770
            Width           =   765
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   240
            Index           =   3
            Left            =   7335
            TabIndex        =   149
            Top             =   1260
            Width           =   435
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            ForeColor       =   &H00FF0000&
            Height          =   240
            Index           =   4
            Left            =   7335
            TabIndex        =   148
            Top             =   1770
            Width           =   435
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "ECC No."
            Height          =   240
            Index           =   5
            Left            =   120
            TabIndex        =   147
            Top             =   2295
            Width           =   765
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Area"
            Height          =   240
            Index           =   11
            Left            =   120
            TabIndex        =   146
            Top             =   4875
            Width           =   435
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Carrier"
            Height          =   240
            Index           =   12
            Left            =   7335
            TabIndex        =   145
            Top             =   4875
            Width           =   600
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Payment Terms"
            Height          =   240
            Index           =   13
            Left            =   120
            TabIndex        =   144
            Top             =   2805
            Width           =   1425
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Credit Days"
            Height          =   240
            Index           =   14
            Left            =   120
            TabIndex        =   143
            Top             =   3330
            Width           =   1050
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Credit Limit"
            Height          =   240
            Index           =   15
            Left            =   7335
            TabIndex        =   142
            Top             =   3330
            Width           =   975
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Bank - 1"
            Height          =   240
            Index           =   17
            Left            =   120
            TabIndex        =   141
            Top             =   3840
            Width           =   720
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Bank - 2"
            Height          =   240
            Index           =   18
            Left            =   7350
            TabIndex        =   140
            Top             =   3840
            Width           =   720
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Tax"
            Height          =   240
            Index           =   10
            Left            =   7350
            TabIndex        =   139
            Top             =   5400
            Width           =   345
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Insurance  %"
            Height          =   240
            Index           =   20
            Left            =   120
            TabIndex        =   138
            Top             =   5925
            Width           =   1140
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Opening Balance"
            Height          =   240
            Left            =   120
            TabIndex        =   137
            Top             =   210
            Width           =   1560
         End
         Begin VB.Label lbldr 
            AutoSize        =   -1  'True
            Caption         =   "(Debit)"
            Height          =   240
            Left            =   3690
            TabIndex        =   136
            Top             =   217
            Visible         =   0   'False
            Width           =   600
         End
         Begin VB.Label lblcr 
            AutoSize        =   -1  'True
            Caption         =   "(Credit)"
            Height          =   240
            Left            =   6330
            TabIndex        =   135
            Top             =   217
            Visible         =   0   'False
            Width           =   645
         End
         Begin VB.Label DISTRIB 
            AutoSize        =   -1  'True
            Caption         =   "Agent"
            Height          =   240
            Left            =   120
            TabIndex        =   134
            Top             =   735
            Width           =   525
         End
      End
      Begin VB.Label Label31 
         Caption         =   "Label31"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -68280
         TabIndex        =   103
         Top             =   2400
         Visible         =   0   'False
         Width           =   975
      End
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4815
      Left            =   1170
      TabIndex        =   99
      Top             =   1740
      Visible         =   0   'False
      Width           =   7680
      Begin listacx.codelist ksldesc1 
         Height          =   3345
         Left            =   210
         TabIndex        =   183
         Top             =   750
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5900
         caption         =   ""
      End
      Begin VB.CommandButton Lovcancel 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3795
         TabIndex        =   102
         Top             =   4245
         Width           =   1095
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&Ok"
         Default         =   -1  'True
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2355
         TabIndex        =   101
         Top             =   4245
         Width           =   1095
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Party Type Listing"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   330
         Left            =   0
         TabIndex        =   100
         Top             =   120
         Width           =   7605
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H80000002&
         Height          =   4440
         Left            =   330
         Top             =   870
         Width           =   7605
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2055
      Left            =   2160
      TabIndex        =   184
      Top             =   1800
      Visible         =   0   'False
      Width           =   5505
      Begin TabDlg.SSTab SSTab2 
         Height          =   1515
         Left            =   30
         TabIndex        =   185
         Top             =   510
         Width           =   5445
         _ExtentX        =   9604
         _ExtentY        =   2672
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         TabCaption(0)   =   " "
         TabPicture(0)   =   "slmast.frx":0080
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Option1"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Option2"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "Command1"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).Control(3)=   "Command2"
         Tab(0).Control(3).Enabled=   0   'False
         Tab(0).ControlCount=   4
         Begin VB.CommandButton Command2 
            Caption         =   "Cancel"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   3060
            TabIndex        =   189
            Top             =   1050
            Width           =   1155
         End
         Begin VB.CommandButton Command1 
            Caption         =   "List"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   1320
            TabIndex        =   188
            Top             =   1050
            Width           =   1155
         End
         Begin VB.OptionButton Option2 
            Caption         =   "Detailed List"
            Height          =   240
            Left            =   2790
            TabIndex        =   187
            Top             =   360
            Width           =   1425
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Code List"
            Height          =   240
            Left            =   1230
            TabIndex        =   186
            Top             =   360
            Width           =   1155
         End
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Supplier Listing"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   375
         Left            =   0
         TabIndex        =   190
         Top             =   150
         Width           =   5445
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   180
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":009C
         Height          =   510
         Index           =   14
         Left            =   6240
         Picture         =   "slmast.frx":04E6
         Style           =   1  'Graphical
         TabIndex        =   67
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5730
         Picture         =   "slmast.frx":0B2F
         Style           =   1  'Graphical
         TabIndex        =   66
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1560
         Picture         =   "slmast.frx":0F71
         Style           =   1  'Graphical
         TabIndex        =   58
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":1308
         Height          =   510
         Index           =   4
         Left            =   2055
         Picture         =   "slmast.frx":1612
         Style           =   1  'Graphical
         TabIndex        =   59
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":19A7
         Height          =   510
         Index           =   8
         Left            =   4155
         Picture         =   "slmast.frx":1DF1
         Style           =   1  'Graphical
         TabIndex        =   63
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":2153
         Height          =   510
         Index           =   10
         Left            =   5205
         Picture         =   "slmast.frx":245D
         Style           =   1  'Graphical
         TabIndex        =   65
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":27D9
         Height          =   510
         Index           =   9
         Left            =   4680
         Picture         =   "slmast.frx":2AE3
         Style           =   1  'Graphical
         TabIndex        =   64
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":2E85
         Height          =   510
         Index           =   11
         Left            =   6720
         Picture         =   "slmast.frx":32CF
         Style           =   1  'Graphical
         TabIndex        =   68
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":3664
         Height          =   510
         Index           =   7
         Left            =   3630
         Picture         =   "slmast.frx":3AAE
         Style           =   1  'Graphical
         TabIndex        =   62
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":3DFE
         Height          =   510
         Index           =   1
         Left            =   510
         Picture         =   "slmast.frx":4108
         Style           =   1  'Graphical
         TabIndex        =   56
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":4482
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
         Left            =   1035
         Picture         =   "slmast.frx":478C
         Style           =   1  'Graphical
         TabIndex        =   57
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":4B28
         Height          =   510
         Index           =   5
         Left            =   2580
         Picture         =   "slmast.frx":4F72
         Style           =   1  'Graphical
         TabIndex        =   60
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":52D7
         Height          =   510
         Index           =   0
         Left            =   0
         Picture         =   "slmast.frx":55E1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast.frx":5974
         Height          =   510
         Index           =   6
         Left            =   3105
         Picture         =   "slmast.frx":5DBE
         Style           =   1  'Graphical
         TabIndex        =   61
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   7680
         TabIndex        =   182
         Top             =   240
         Width           =   615
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
         Left            =   9480
         TabIndex        =   181
         Top             =   255
         Width           =   630
      End
   End
   Begin VB.Frame Frame3 
      Height          =   3390
      Left            =   1410
      TabIndex        =   104
      Top             =   1440
      Visible         =   0   'False
      Width           =   5715
      Begin VB.CommandButton optok 
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   2325
         TabIndex        =   109
         Top             =   2550
         Width           =   1110
      End
      Begin VB.CommandButton optcan 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   3855
         TabIndex        =   108
         Top             =   2535
         Width           =   1110
      End
      Begin VB.OptionButton choi 
         Caption         =   "Creditors"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   0
         Left            =   2325
         TabIndex        =   107
         Top             =   900
         Value           =   -1  'True
         Width           =   2055
      End
      Begin VB.OptionButton choi 
         Caption         =   "Debtors"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   1
         Left            =   2325
         TabIndex        =   106
         Top             =   1335
         Width           =   1890
      End
      Begin VB.OptionButton choi 
         Caption         =   "Others"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   2
         Left            =   2325
         TabIndex        =   105
         Top             =   1770
         Width           =   2385
      End
      Begin VB.Label Label35 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Party Type"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   480
         Left            =   90
         TabIndex        =   110
         Top             =   420
         Width           =   5670
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H80000002&
         BorderWidth     =   2
         Height          =   2655
         Left            =   30
         Top             =   690
         Width           =   5655
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   930
      TabIndex        =   111
      Top             =   2347
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton qryok 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2580
         TabIndex        =   179
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton qrycan 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4020
         TabIndex        =   178
         Top             =   1680
         Width           =   975
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   1380
         TabIndex        =   113
         Top             =   960
         Width           =   6045
         _ExtentX        =   10663
         _ExtentY        =   556
         _Version        =   393216
         Style           =   2
         Text            =   "DataCombo1"
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
      Begin VB.Label Label38 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Find"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   30
         TabIndex        =   177
         Top             =   120
         Width           =   7545
      End
      Begin VB.Label Label39 
         AutoSize        =   -1  'True
         Caption         =   "Supplier"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   210
         TabIndex        =   112
         Top             =   1005
         Width           =   570
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   0
      Top             =   1080
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   219
      Top             =   7005
      Width           =   11145
      _ExtentX        =   19659
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   1
            Object.Width           =   14729
            MinWidth        =   14729
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "25/11/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "05:23 PM"
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
   Begin VB.Frame FNDFRME 
      Height          =   5175
      Left            =   1080
      TabIndex        =   191
      Top             =   1680
      Width           =   9015
      Begin VB.OptionButton optionFind 
         Caption         =   "CodeWise"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   2520
         TabIndex        =   197
         Top             =   480
         Width           =   1335
      End
      Begin VB.OptionButton optionFind 
         Caption         =   "NameWise"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   4440
         TabIndex        =   196
         Top             =   480
         Value           =   -1  'True
         Width           =   1335
      End
      Begin VB.TextBox txtFind 
         Height          =   375
         Left            =   2040
         TabIndex        =   195
         Top             =   960
         Width           =   5055
      End
      Begin VB.CommandButton cancelFind 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4440
         TabIndex        =   193
         Top             =   4560
         Width           =   855
      End
      Begin VB.CommandButton Canvelok 
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3360
         TabIndex        =   192
         Top             =   4560
         Width           =   855
      End
      Begin MSDataGridLib.DataGrid grdFind 
         Height          =   3015
         Left            =   120
         TabIndex        =   194
         Top             =   1440
         Width           =   8775
         _ExtentX        =   15478
         _ExtentY        =   5318
         _Version        =   393216
         BackColor       =   16777152
         ForeColor       =   16711680
         HeadLines       =   1
         RowHeight       =   19
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
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
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "FIND"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   330
         Left            =   0
         TabIndex        =   199
         Top             =   120
         Width           =   9015
      End
      Begin VB.Label Label36 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Supplier"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   720
         TabIndex        =   198
         Top             =   960
         Width           =   885
      End
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Payment Terms"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   22
      Left            =   4950
      TabIndex        =   204
      Top             =   5355
      Width           =   1095
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
      ForeColor       =   &H00FF0000&
      Height          =   345
      Left            =   210
      TabIndex        =   90
      Top             =   600
      Width           =   1095
   End
End
Attribute VB_Name = "slmaster"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim DB As Connection
Dim Opt As String
Dim sl As Integer
Dim prty As String
Dim found1, found2, found3 As Boolean
Dim cb, cb1, cg As Variant
Dim dbs, crs, db1 As Variant
Dim a As Integer
Dim pgn As Integer
Dim CHOICE_FIND As String
Dim STATEFLAG As String
Dim Myxl As Excel.Application
Private Sub area_GotFocus()
On Error GoTo area_GotFocus_Error

area.BackColor = "&HC0FFC0" 'green

Exit Sub
area_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure area_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub area_LostFocus()
On Error GoTo area_LostFocus_Error

area.BackColor = " &H80000005"   'white

Exit Sub
area_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure area_LostFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub bank1_GotFocus()
On Error GoTo bank1_GotFocus_Error

bank1.BackColor = "&HC0FFC0" 'green

Exit Sub
bank1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bank1_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub bank1_LostFocus()
On Error GoTo bank1_LostFocus_Error

bank1.BackColor = "&H80000005"  'white

Exit Sub
bank1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bank1_LostFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub bank2_GotFocus()
On Error GoTo bank2_GotFocus_Error

 bank2.BackColor = "&HC0FFC0"   'green

Exit Sub
bank2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bank2_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub bank2_LostFocus()
On Error GoTo bank2_LostFocus_Error

 bank2.BackColor = "&H80000005"    'white

Exit Sub
bank2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bank2_LostFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub btnBrowse_Click()
On Error GoTo openconnection_Error

    If Opt = "add" Or Opt = "mod" Then
        Dim strNewFile As String
        strNewFile = ""
        Dim fso As New FileSystemObject
        
        If Not (fso.FolderExists(App.Path & "\Supplier_Bank" & "")) Then
            fso.CreateFolder (App.Path & "\Supplier_Bank" & "")
        End If
        
        CommonDialog1.ShowOpen
        strNewFile = CommonDialog1.FileTitle
        txt_filename.Text = CommonDialog1.FileName
        txtfields(66).Text = strNewFile
        Dim sFilePath As String
        Set fso = New FileSystemObject
       ' sFilePath = App.Path & "\SupplierBank" & CustId & "\SupplierBank-" & CustId & "-" & txtfields(0).Text
        sFilePath = App.Path & "\Supplier_Bank" & "\" & txtfields(0).Text & "-" & Left(txtfields(2).Text, 10) & "--" & strNewFile
      '  SupplierBank '+@Cust_id+'\\SupplierBank-'+lower(@Cust_id)+'-'+@slcode
        
        If fso.FileExists(sFilePath) Then
            If MsgBox("Already Exists!!! Do you want to override?", vbYesNo, head) = vbNo Then Exit Sub
        End If
        
        If strNewFile <> "" Then
            Dim myPath As String
            myPath = strNewFile
           ' FileCopy strNewFile, App.Path & "\SupplierBank" & CustId & "\SupplierBank-" & CustId & "-" & TXTFIELDS(0).Text
            FileCopy strNewFile, sFilePath ' App.Path & "\Supplier_Bank" & "\" & txtfields(0).Text & "-" & Left(txtfields(2).Text, 10) & "--" & strNewFile
        End If
    End If
    
    Exit Sub
    
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"

End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 14
        intervalMinutes = 0
        tmpFile = "S"
        tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
        
        Set Myxl = New Excel.Application
        
        Set XLBook = Myxl.Workbooks.ADD
        Set XLSheet = XLBook.Worksheets(1)
        Myxl.Worksheets(1).Name = "Supplier List"
        excelrecdate
        intervalMinutes = 0
Case 13
' If UCase(CustID) <> "ASM" Then
'    Set rs3 = New Recordset
'    rs3.Open "select * from pp_divmas", DB, adOpenDynamic, adLockOptimistic
'    With CR
'    .Reset
'    CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\SupplierMaster.rpt"
'    CR.Formulas(0) = "divname = '" & divname & "'"
'    CR.WindowState = crptMaximized
'    SendKeys "{enter}"
'    CR.Action = True
'    CR.PrinterCopies = 1
'    End With
'
'
'
'  Else
    
    Dim Ptype As String
    Ptype = Left(txtfields(0).Text, 2)
    
     Dim clsCryRpt As New clsCrystal
            Set clsCryRpt.cryRept = Cry_ASM_SupplierMaster
            clsCryRpt.CrystalPrint
                          
            CR.Reset
            CR.Connect = connectstring
            CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            CR.ParameterFields(0) = "@divcode;" & Divcode & ""
            CR.ParameterFields(0) = "@ptype;" & Ptype & ""
            
            CR.WindowShowPrintSetupBtn = True
            CR.WindowShowSearchBtn = True
            CR.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CR.Action = 1
            CR.PrinterCopies = 1
            Screen.MousePointer = 0
'End If
Case 0
'        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Pallavaa Division", vbInformation, head
'                Call BUTTON_Click(10)
'            Exit Sub
'            End If
'
'        End If
        


    Opt = "add"
    choi(0).value = True
    desc.Caption = "Addition"
    DATLAB.Caption = pdate
    SSTab1.TabEnabled(2) = False
    Label18.Visible = True
    SSTab1.Visible = False
    ypcr.Visible = True
    ypdr.Visible = True
    lblcr.Visible = True
    lbldr.Visible = True
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select SLCODE,SLNAME,ABBR,ADD1,ADD2,ADD3,CITY,PIN,STATE,COUNTRY,PHONE1,PHONE2,EMAIL,WEBADDR,FAX,BANKADD1,BANKADD2,TNGST,CGST,TNGSTDT,CGSTDT,ECC,PAN,CONTPER,CONTDESG,CONTPHONE,PAY_TERMS,CRDDAYS,CRLIMIT,AREACODE,CARCODE,TELEGRAM,TRN_DEBT,PRTYTYP,BRCODE,TAX_CODE,INSPER,State_code,Tinno,BankAcNo,CourierThrough,IFSCCode,OLDSLCODE from FA_SLMAS  where 1=2 ", db, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open "select SLCODE,SLNAME,ABBR,ADD1,ADD2,ADD3,CITY,PIN,STATE,COUNTRY,PHONE1,PHONE2,EMAIL,WEBADDR,FAX,BANKADD1,BANKADD2,TNGST,CGST,TNGSTDT,CGSTDT,ECC,PAN,CONTPER,CONTDESG,CONTPHONE,PAY_TERMS,CRDDAYS,CRLIMIT,AREACODE,CARCODE,TELEGRAM,TRN_DEBT,PRTYTYP,BRCODE,TAX_CODE,INSPER,State_code,Tinno,BankAcNo,CourierThrough,IFSCCode,OLDSLCODE,gststatecode,gstinno,supptype,scanfilename,isactive from FA_SLMAS  where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    'Bind the text boxes,check boxes and option buttons  to the data source
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.AddNew
    Chk_ActiveFlag.value = 1
    TXname.Text = ""
    vendor.Text = ""
    bank1.Text = ""
    bank2.Text = ""
    carrier.Text = ""
    area.Text = ""
    prtyTXT.Text = ""
    tax.Text = ""
    party.Text = ""
    pname.Text = ""
    Combo2.Text = "R-Registered"
    Set ypdr.DataSource = Nothing
    ypcr.Text = ""
    ypdr.Text = ""
    'Calling adddelmod procedure
    Call adddelmod(BUTTON)
   ' Frame3.Visible = True
   
    txtfields(0).Locked = True
    s = ""
    SSTab1.Tab = 0
    'choi(0).value = True
    dbname.Text = ""
    Call PartyLookup
    'BK = 0
    btnBrowse.Visible = True
    txt_filename.Visible = True
    Label93.Visible = True

Case 1
'MODIFICATION
'        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Pallavaa Division", vbInformation, head
'                Call BUTTON_Click(10)
'            Exit Sub
'            End If
'        End If
    Opt = "mod"
    choi(0).value = True
    Frame3.Visible = True
    Frame3.ZOrder
    desc.Caption = "Modification"
    
    

    
    ypcr.Locked = True 'False
    ypdr.Locked = True 'False
    SSTab1.TabEnabled(2) = False
    
   ' Frame1.ZOrder
    Call ENABLCONTLS
    txtfields(0).Locked = True
    txtfields(1).Locked = False
    dbname.Text = ""
    txtfields(2).Locked = True
    prtyTXT.Locked = True
'    abbr.Locked = True
    Call bindcontls
    
    SSTab1.Tab = 0
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    Call PartyLookup
    btnBrowse.Visible = True
    txt_filename.Visible = True
    Label93.Visible = True
    
Case 2
'Deletion

'        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Pallavaa Division", vbInformation, head
'                Call BUTTON_Click(10)
'            Exit Sub
'            End If
'        End If
    Opt = "del"
    choi(0).value = True
    Frame3.Visible = True
    desc.Caption = "Deletion"
    Call disablcontls
    party.Locked = True
    pname.Locked = True
    prtyTXT.Locked = True
'    abbr.Locked = True
    vendor.Locked = True
    TXname.Locked = True
    tax.Locked = True
    bank1.Locked = True
    bank2.Locked = True
    area.Locked = True
    carrier.Locked = True
    dbname.Locked = True
    
    
    SSTab1.Tab = 0
    
    Label18.Visible = True
    ypcr.Visible = True
    ypdr.Visible = True
    lblcr.Visible = True
    lbldr.Visible = True
    ypcr.Locked = True
    ypdr.Locked = True
    SSTab1.TabEnabled(2) = False
    Frame1.ZOrder
    
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    Call PartyLookup
    

Case 3
    desc.Caption = "Listing"
    Frame2.Visible = True
    SSTab1.Visible = False
    Label6(22).Visible = False
Case 4
    'Query
    
    Frame6.Visible = False
     Opt = "fnd"
    desc.Caption = "Finding"

    choi(0).value = True
    Frame3.Visible = True
    Frame3.ZOrder

    
    

    
    ypcr.Locked = True 'False
    ypdr.Locked = True 'False
    SSTab1.TabEnabled(2) = False
    
   ' Frame1.ZOrder
    Call ENABLCONTLS
    txtfields(0).Locked = True
    txtfields(1).Locked = False
    dbname.Text = ""
    txtfields(2).Locked = True
    prtyTXT.Locked = True
'    abbr.Locked = True
    Call bindcontls
    
    SSTab1.Tab = 0
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    Call PartyLookup
  
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = True
'    Canvelok.Default = True
'    ypcr.Locked = True 'False
'    ypdr.Locked = True 'False
'    SSTab1.TabEnabled(2) = False
'    SSTab1.Visible = False
'    Call adddelmod(BUTTON)
'    Set Rs = New Recordset
'    Rs.Open "SELECT slcode as Code,slname as Name FROM fa_slmas where slcode like '" & PartyType & "%'", DB, adOpenStatic, adLockBatchOptimistic
'    If Not Rs.BOF Then
'        Set grdFind.DataSource = Rs
'    Else
'        Set grdFind.DataSource = Nothing
'        MsgBox "No Records Found", vbInformation, head
'        Buttonframe.Enabled = True
'        Exit Sub
'    End If
'    grdFind.Columns(0).Width = 1000
'    grdFind.Columns(1).Width = 6000
'
'    FNDFRME.Visible = True
'    FNDFRME.Enabled = True
'    CHOICE_FIND = "N"
'
'    Call ENABLCONTLS
'    TXTFIELDS(0).Locked = True
'    TXTFIELDS(1).Locked = False
'    txtFind.Text = ""
'    TXTFIELDS(2).Locked = False
'    prtyTXT.Locked = True
'
'    Call bindcontls
'    Canvelok.Default = True
'    SSTab1.Tab = 0
'    txtFind.SetFocus

    

    
''''    If Record_Exists("fa_slmas") = False Then Exit Sub
''''    Frame6.Visible = True
''''    Set rs = New Recordset
''''    'RS.Open "select slcode +' - '+ slname itm from fa_slmas where slcode like 'c%' order by slcode", DB, adOpenStatic, adLockBatchOptimistic
''''    'rs.Open "SELECT SLNAME + SPACE(41-LEN(SLNAME)) + '- ' + SLCODE itm FROM FA_SLMAS ORDER BY 1", DB, adOpenStatic, adLockBatchOptimistic
''''    'rs.Open "SELECT SLNAME + SPACE(41-LEN(SLNAME)) + '- ' + SLCODE itm FROM FA_SLMAS where slcode like 'C%'ORDER BY 1", db, adOpenStatic, adLockBatchOptimistic
''''    'rs.Open "SELECT SLNAME + SPACE(41-LEN(SLNAME)) + '- ' +SPACE(10)+ SLCODE itm FROM FA_SLMAS where slcode like 'C1%'ORDER BY 1", db, adOpenStatic, adLockBatchOptimistic
''''    rs.Open "SELECT SLCODE+'   - ' +SPACE(3)+ SLNAME itm FROM FA_SLMAS where slcode like 'C2%'ORDER BY 1", db, adOpenStatic, adLockBatchOptimistic
''''    If Not rs.BOF Then
''''    Set DataCombo1.RowSource = rs
''''    DataCombo1.ListField = "itm"
''''    DataCombo1.Text = rs(0)
''''    Else
''''       MsgBox "No Records Found", vbInformation, head
''''       Exit Sub
'''' End If
''''    '------
'''''    rs.MoveFirst
'''''    DataCombo1.Text = rs(0)
'''''    DataCombo1.SetFocus
''''    qryok.Default = True
''''    Frame6.ZOrder
Case 5
'first
     desc.Caption = "Query"
     If Record_Exists("fa_slmas") = False Then Exit Sub
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     stbar.Panels(2).Text = "First Record"
     'calling fir procedure from module
     Call navi(BUTTON)
     Call FIR(BUTTON)
     Exit Sub
GoFirstError:
    
Case 6
'next
      desc.Caption = "Query"
      If Record_Exists("fa_slmas") = False Then Exit Sub
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
      End If
      'show the current record
      Call navi(BUTTON)
      Exit Sub
GoNextError:
Case 7
'Previous
     desc.Caption = "Query"
     If Record_Exists("fa_slmas") = False Then Exit Sub
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
     End If
     'show the current record
     Call navi(BUTTON)
     Exit Sub

GoPrevError:
Case 8
'last
     desc.Caption = "Query"
     If Record_Exists("fa_slmas") = False Then Exit Sub
     On Error GoTo GoLastError
     adoPrimaryRS.MoveLast
     stbar.Panels(2).Text = "Last Record"
     'calling las procedure from module
     Call navi(BUTTON)
     Call las(BUTTON)
     Exit Sub

GoLastError:
Case 9
     'Save
     desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
     
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(b.STATE_FLAG,'') STATE_FLAG FROM  IG_STATE AS b  WHERE b.STATE_CODE='" & Trim(txtfields(35).Text) & "'", DB
    If Not Rs.EOF Then
            
            STATEFLAG = Rs(0)
                    
    End If
     
     
     If Opt = "add" Or Opt = "mod" Then
        If Trim(Combo2.Text) = "" Then
            MsgBox "Please select the Supplier Type...!"
            Combo2.SetFocus
            Exit Sub
        End If
     
     
     
        If txtfields(2).Text = "" Then
            MsgBox " Name cannot be empty", vbInformation, head
            txtfields(2).SetFocus
            Exit Sub
        ElseIf adoPrimaryRS(3) = "" Then
            MsgBox "Address cannot be empty", vbInformation, head
            txtfields(3).SetFocus
            Exit Sub
        ElseIf Trim(txtfields(5).Text) = "" Then
            MsgBox " City Cannot be empty", vbInformation, head
            txtfields(5).SetFocus
            Exit Sub
        End If
     '15.6
       '12.06
        If STATEFLAG <> "F" And Left(Combo2.Text, 1) = "R" Then
        If txtfields(22).Text = "" Then
            MsgBox "Please Enter Contact Person", vbCritical, head
            SSTab1.Tab = 0
            txtfields(22).SetFocus
            
        Exit Sub
        End If
        If txtfields(21).Text = "" Then
            MsgBox "Please Enter Designation", vbCritical, head
            SSTab1.Tab = 0
            txtfields(21).SetFocus
            Exit Sub
        End If
        If txtfields(20).Text = "" Then
            MsgBox "Please Enter Phone No.", vbCritical, head
            SSTab1.Tab = 0
            txtfields(20).SetFocus
            Exit Sub
        End If
         
             '30.05
        If Trim(txtfields(70).Text) = "" Then
            MsgBox "Please enter GST StateCode", vbCritical
            Exit Sub
        End If
            
             '30.05
        If Trim(txtfields(69).Text) = "" Then
            MsgBox "Please enter GST Number", vbCritical
            SSTab1.Tab = 0
            txtfields(69).SetFocus
            Exit Sub
        End If
           
     
        If Len(txtfields(69)) <> 15 Then
            MsgBox "The GST No. Length should be 15 characters...!"
            SSTab1.Tab = 0
            txtfields(69).SetFocus
            Exit Sub
        End If
     
        If Left(txtfields(69), 2) <> txtfields(70).Text Then
            MsgBox "The first Two digit of GST No. Should be state code...!"
            SSTab1.Tab = 0
            txtfields(69).SetFocus
            Exit Sub
        End If
      End If
        
     End If
     If Opt = "add" Then
        Set rsin = New Recordset
        rsin.Open "select slcode from FA_SLMAS where slcode = '" & UCase(Trim(txtfields(0).Text)) & "'", DB, adOpenStatic
        If rsin.RecordCount > 0 Then
              MsgBox "A Sub Ledger Code for this party already exists", vbInformation, head
'              txtfields(0).Text = ""
              txtfields(2).SetFocus
              Exit Sub
        Else
           TXname.Text = txtfields(2).Text
           vendor.Text = txtfields(0).Text
        End If
        
        Set rsin = New Recordset
        rsin.Open "select slname from FA_SLMAS where slname = '" & UCase(Trim(txtfields(2).Text)) & "'", DB, adOpenStatic
        If rsin.RecordCount > 0 Then
              MsgBox "Sub Ledger Name already exists", vbInformation, head
              txtfields(2).SetFocus
              Cancel = True
        End If
        
        DB.BeginTrans
        adoPrimaryRS("PRTYTYP") = prty
'        If Check1.Value = 1 Then
'            adoPrimaryRS("TRN_DEBT") = "Y"
'        Else
'            adoPrimaryRS("TRN_DEBT") = "N"
'        End If
        adoPrimaryRS("supptype") = Left(Combo2.Text, 1)
        adoPrimaryRS("state_code") = txtfields(35).Text
        adoPrimaryRS("state") = txtfields(6).Text
        adoPrimaryRS("tinno") = txtfields(36).Text
         If Chk_ActiveFlag.value = 1 Then
            adoPrimaryRS("isactive") = "Y"
        Else
            adoPrimaryRS("isactive") = "N"
        End If
        'adoPrimaryRS("SLCODE") = txtfields(0).Text
        'adoPrimaryRS("SLNAME") = txtfields(2).Text
'        adoPrimaryRS("ABBR") = txtfields(1).Text
'        adoPrimaryRS("ADD1") = txtfields(3).Text
'        adoPrimaryRS("ADD2") = txtfields(4).Text
'        adoPrimaryRS("ADD3") = txtfields(34).Text
'        adoPrimaryRS("City") = txtfields(5).Text
'        adoPrimaryRS("pin") = txtfields(8).Text
'        adoPrimaryRS("COUNTRY") = txtfields(7).Text
'        adoPrimaryRS("PHONE1") = txtfields(9).Text
'        adoPrimaryRS("PHONE2") = txtfields(10).Text
'        adoPrimaryRS("EMAIL") = txtfields(12).Text
'        adoPrimaryRS("WEBADDR") = txtfields(13).Text
'        adoPrimaryRS("FAX") = txtfields(11).Text
        adoPrimaryRS("BANKADD1") = txtfields(30).Text
        adoPrimaryRS("BANKADD2") = txtfields(31).Text
'        adoPrimaryRS("TNGST") = txtfields(14).Text
'        adoPrimaryRS("CGST") = txtfields(15).Text
'        adoPrimaryRS("TNGSTDT") = txtfields(16).Text
'        adoPrimaryRS("CGSTDT") = txtfields(17).Text
'        adoPrimaryRS("ECC") = txtfields(18).Text
'        adoPrimaryRS("PAN") = txtfields(19).Text
'        adoPrimaryRS("CONTPER") = txtfields(22).Text
'        adoPrimaryRS("CONTDESG") = txtfields(21).Text
'        adoPrimaryRS("CONTPHONE") = txtfields(20).Text
'        adoPrimaryRS("PAY_TERMS") = txtfields(26).Text
'        adoPrimaryRS("CRDDAYS") = txtfields(27).Text
'        adoPrimaryRS("CRLIMIT") = txtfields(28).Text
        adoPrimaryRS("AREACODE") = txtfields(24).Text
        adoPrimaryRS("CARCODE") = txtfields(25).Text
'        adoPrimaryRS("TELEGRAM") = txtfields(32).Text
        'TRN_DEBT , PRTYTYP, BRCODE, TAX_CODE, INSPER
        adoPrimaryRS("AREACODE") = txtfields(24).Text
        adoPrimaryRS("CARCODE") = txtfields(25).Text
        adoPrimaryRS("scanfilename") = Trim(txtfields(66).Text)
        '21.06
        adoPrimaryRS("gststatecode") = txtfields(70).Text
        adoPrimaryRS("gstinno") = txtfields(69).Text
        
        
        
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
         Set TrnLog = New Recordset
         TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
         TrnLog.AddNew
         TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Supplier"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("slcode") = UCase(Trim(txtfields(0).Text))

                    TrnLog.UpdateBatch adAffectAllChapters
        
        
        
        If val(ypdr.Text) = 0 Then
            If val(ypcr.Text) = 0 Then
               'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year(" & yfdate & ")as varchar) + '00','','','' )")
               SqlStr = "INSERT INTO  FA_SLBAL VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00',null,null,null)"
               DB.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00',null,null,null)")
               
            Else
               'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , TO_CHAR('" & Format(yfdate, "yyyy-mm-dd") & "','YYYY') + '00','', " & Format(ypcr.Text, "############0") & ",'' )")
               DB.Execute ("INSERT INTO  FA_SLBAL  VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00',null," & Format(ypcr.Text, "############0") & ",null )")
            End If
         Else
            If val(ypcr.Text) = 0 Then
               'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , TO_CHAR('" & Format(yfdate, "yyyy-mm-dd") & "','YYYY') + '00', " & Format(ypdr.Text, "############0") & " ,'','' )")
               DB.Execute ("INSERT INTO  FA_SLBAL  VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00', " & Format(ypdr.Text, "############0") & ",null,null )")
            Else
               'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , TO_CHAR('" & Format(yfdate, "yyyy-mm-dd") & "','YYYY') + '00', " & Format(ypdr.Text, "############0") & " , " & Format(ypcr.Text, "############0") & ",'' )")
               DB.Execute ("INSERT INTO  FA_SLBAL  VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00', " & Format(ypdr.Text, "############0") & " , " & Format(ypcr.Text, "############0") & ",null )")
            End If
         End If
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
     End If
     If Opt = "mod" Then
        If IsNull(adoPrimaryRS("ADD1")) Then
            MsgBox "Address cannot be empty", vbInformation, head
            txtfields(3).SetFocus
            Exit Sub
        ElseIf IsNull(adoPrimaryRS("city")) Then
            'MsgBox " City Cannot be empty", vbInformation, head
'            txtFields(5).SetFocus
           ' Exit Sub
        End If
        DB.BeginTrans
        adoPrimaryRS("state_code") = txtfields(35).Text
        adoPrimaryRS("state") = txtfields(6).Text
        adoPrimaryRS("tinno") = txtfields(36).Text
          If Chk_ActiveFlag.value = 1 Then
            adoPrimaryRS("isactive") = "Y"
        Else
            adoPrimaryRS("isactive") = "N"
        End If
        '21.06
        adoPrimaryRS("gststatecode") = txtfields(70).Text
        adoPrimaryRS("gstinno") = txtfields(69).Text
        adoPrimaryRS("supptype") = Left(Combo2.Text, 1)
        adoPrimaryRS("scanfilename") = Trim(txtfields(66).Text)
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
        Set TrnLog = New Recordset
         TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
         TrnLog.AddNew
         TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Supplier"
                    TrnLog("Trans_Mod") = "mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("slcode") = UCase(Trim(txtfields(0).Text))

                    TrnLog.UpdateBatch adAffectAllChapters
        
        Dim rsl As Recordset
        Set rsl = New Recordset
        rsl.Open ("select count(*) from fa_slbal where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'"), DB, adOpenStatic
        If val(ypdr.Text) = 0 Then
            If val(ypcr.Text) = 0 Then
                If rsl(0) = 0 Then
                    DB.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00',null,null,null)")
                Else
                    DB.Execute ("UPDATE FA_SLBAL SET DEBIT=null,CREDIT=null where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                End If
            Else
                If rsl(0) = 0 Then
                     DB.Execute ("INSERT INTO  FA_SLBAL  VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00',null," & Format(ypcr.Text, "############0.00") & ",null )")
                Else
                    DB.Execute ("UPDATE FA_SLBAL SET DEBIT=null,CREDIT=" & Format(ypcr.Text, "###########0.00") & " where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                End If
            End If
         Else
            If val(ypcr.Text) = 0 Then
                If rsl(0) = 0 Then
                    DB.Execute ("INSERT INTO  FA_SLBAL  VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00', " & Format(ypdr.Text, "############0.00") & ",null,null )")
                Else
                    DB.Execute ("UPDATE FA_SLBAL SET DEBIT=" & Format(ypdr.Text, "###########0.00") & " ,CREDIT=null where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                End If
            Else
                If rsl(0) = 0 Then
                    DB.Execute ("INSERT INTO  FA_SLBAL  VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00', " & Format(ypdr.Text, "############0.00") & " , " & Format(ypcr.Text, "############0") & ",null )")
                Else
                    DB.Execute ("UPDATE FA_SLBAL SET DEBIT=" & Format(ypdr.Text, "###########0.00") & " , CREDIT=" & Format(ypcr.Text, "###########0.00") & " where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                End If
            End If
         End If
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
     End If
     If Opt = "del" Then
        If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
        Set RsChk = New Recordset
        RsChk.Open "select supcd from rm_cont where supcd='" & txtfields(0).Text & "'", DB, adOpenStatic
        If Not RsChk.EOF Then
        MsgBox "This Sub Ledger code  cannot be deleted as dependencies exist", vbInformation, head
        Exit Sub
        End If
        Set RsChk = New Recordset
        RsChk.Open "select supcd from rm_lot where supcd='" & txtfields(0).Text & "'", DB, adOpenStatic
        If Not RsChk.EOF Then
        MsgBox "This Sub Ledger code  cannot be deleted as dependencies exist", vbInformation, head
        Exit Sub
        End If
        
        
        On Error GoTo deler
        DB.BeginTrans
        DB.Execute ("delete from FA_SLBAL where SLCODE=" & "'" & txtfields(0).Text & "'")
        DB.Execute ("delete from FA_SLMAS where SLCODE=" & "'" & txtfields(0).Text & "'")
        
                Set TrnLog = New Recordset
                 TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                 TrnLog.AddNew
                 TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Supplier"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("slcode") = UCase(Trim(txtfields(0).Text))

                    TrnLog.UpdateBatch adAffectAllChapters
        
        DB.CommitTrans
        MsgBox "Record(s) Deleted", vbInformation, head
   End If
   'Return to query mode
   Call query_mode
   'calling newform_cancel procedure from module (also for save)
   Call NEWFORM(BUTTON)
   Call NEWFORM1(BUTTON, GSNO)

    
Case 10
'If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    'CANCEL
    Frame3.Visible = False
    SSTab1.Visible = True
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
        Opt = ""
    Case "add"
    
        DB.RollbackTrans
        Opt = ""
    Case "del"
        DB.RollbackTrans
        Opt = ""
    End Select
    SSTab1.Tab = 0
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
'    Call NEWFORM(BUTTON, 1)
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus '''''''''''''
    'calling cancl procedure from module
    
    
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
''Case 12
    
End Select
intervalMinutes = -1
Exit Sub
deler:
If Err = -2147217900 Or 438 Then
        MsgBox "This Sub Ledger code  cannot be deleted as dependencies exist", vbInformation, head
        
        DB.RollbackTrans
        Opt = ""
        Call BUTTON_Click(10)
        Screen.MousePointer = 0
End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form slmaster", vbInformation, head
End Sub



Private Sub carrier_GotFocus()
On Error GoTo carrier_GotFocus_Error

 carrier.BackColor = "&HC0FFC0"  'green

Exit Sub
carrier_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure carrier_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub carrier_LostFocus()
On Error GoTo carrier_LostFocus_Error

 carrier.BackColor = " &H80000005"   'white

Exit Sub
carrier_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure carrier_LostFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_Click()
If Opt = "add" Or Opt = "mod" Then
 If MsgBox("Are Sure! Do you Want Change Party Type ? If you Changed Register to unregister then GSTIN Will be Removed!!", vbInformation + vbYesNo, head) = vbYes Then
    If Left(Combo2.Text, 1) = "R" Then
        txtfields(69).Enabled = True
        
    ElseIf Left(Combo2.Text, 1) = "U" Then
       
       ' If Len(txtfields(70).Text) <> 15 Then
          txtfields(69).Text = ""
       ' End If
   
    End If
 End If
End If
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Frame2.Visible = False
Call BUTTON_Click(10)

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub dbname_GotFocus()
On Error GoTo dbname_GotFocus_Error

dbname.BackColor = " &HC0FFC0"  'green

Exit Sub
dbname_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure dbname_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub dbname_LostFocus()
On Error GoTo dbname_LostFocus_Error

dbname.BackColor = " &H80000005"  'white
txtfields(14).SetFocus

Exit Sub
dbname_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure dbname_LostFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Activate()
'PartyType = "C1"
On Error GoTo Form_Activate_Error
intervalMinutes = -1
Set Rs = New Recordset
Rs.Open "Select ptypecotton,ptypebroker from masterlen", DB, adOpenStatic
'PartyType = "C1"
If Rs.EOF = False Then
    PartyType = Rs("ptypecotton")
    brokertype = Rs("ptypebroker")
End If
intervalMinutes = -1
Exit Sub
Form_Activate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Activate of Form slmaster", vbInformation, head
Screen.MousePointer = 0
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
'    If BUTTON(12).Enabled = True Then
'        Call BUTTON_Click(12)   ''Print Option
'    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
End If
    
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

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
stbar.Panels(1).Text = head
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "Provider=MSDATASHAPE;" & connectstring
  Opt = "qry"
  Frame3.Visible = False
  Call bindcontls
  Set Rs = New Recordset
  Rs.Open "Select ptypecotton,ptypebroker from masterlen", DB, adOpenStatic
  'PartyType = "C1"
  PartyType = Rs("ptypecotton")
  brokertype = Rs("ptypebroker")
  Call query_mode
  SSTab1.TabEnabled(2) = False


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form slmaster", vbInformation, head
  End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault
    intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
    intervalMinutes = -1
  If Opt <> "add" Then
     stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
   'to retrieve the opening and month balances.
  If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
     Set Rs = New Recordset
  Rs.Open "Select Name From ig_bank where Bank_code = '" & adoPrimaryRS!Bankadd1 & "'", DB, adOpenStatic
  If Rs.EOF = False Then
        bank1.Text = Rs(0)
  Else
        bank1.Text = ""
  End If
  
  Set Rs = New Recordset
  Rs.Open "Select Name From ig_bank where Bank_code = '" & adoPrimaryRS!Bankadd2 & "'", DB, adOpenStatic
  If Rs.EOF = False Then
        bank2.Text = Rs(0)
  Else
        bank2.Text = ""
  End If
  
  If adoPrimaryRS("supptype") = "R" Then
        Combo2.Text = "R-Registered"
    ElseIf adoPrimaryRS("supptype") = "U" Then
        Combo2.Text = "U-Unegistered"
  Else
        Combo2.Text = ""
  End If
  
  
  Set Rs = New Recordset
  Rs.Open "Select Name From ig_area where area_code = '" & adoPrimaryRS!AREACODE & "'", DB, adOpenStatic
  If Rs.EOF = False Then
        area.Text = Rs(0)
  Else
        area.Text = ""
  End If
  
  Set Rs = New Recordset
  Rs.Open "Select carName From po_car where carcode = '" & adoPrimaryRS!carcode & "'", DB, adOpenStatic
  If Rs.EOF = False Then
        carrier.Text = Rs(0)
  Else
        carrier.Text = ""
  End If
  
  
  
  Set Rs = New Recordset
  Rs.Open "Select Description From ig_tax where tax_code = '" & adoPrimaryRS!TAX_CODE & "'", DB, adOpenStatic
  If Rs.EOF = False Then
        tax.Text = Rs(0)
  Else
        tax.Text = ""
  End If
    


    If IIf(IsNull(adoPrimaryRS("isactive")), "N", adoPrimaryRS("isactive")) = "Y" Then
           Chk_ActiveFlag.value = 1
        Else
            Chk_ActiveFlag.value = 0
        End If
  

  
  
     Set party.DataSource = adoPrimaryRS
     Set pname.DataSource = adoPrimaryRS
     Set vendor.DataSource = adoPrimaryRS
     Set TXname.DataSource = adoPrimaryRS
'     Set abbr.DataSource = adoPrimaryRS
     Label18.Visible = False
     ypcr.Visible = False
     ypdr.Visible = False
     lblcr.Visible = False
     lbldr.Visible = False
     If SSTab1.Tab = 2 And Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
     'to retrieve the opening and month balances for the party
     Set Rs = New Recordset
     Rs.Open "select substring(yearmonth,5,2),isnull(debit,0),isnull(credit,0) from FA_SLBAL where SLCODE ='" & adoPrimaryRS("SLCODE") & "' and substring(yearmonth,1,4) ='" & Year(yfdate) & "' and substring(yearmonth,5,2) >= 04 and divcode = '" & Divcode & "' Union select substring(yearmonth,5,2),isnull(debit,0),isnull(credit,0) from FA_SLBAL where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and substring(yearmonth,1,4) = '" & Year(yldate) & "' and substring(yearmonth,5,2) <= 03 and divcode ='" & Divcode & "'", DB
     If Not (Rs.RecordCount = 0) Then
     Rs.MoveFirst
     Do While Not Rs.EOF
        yrmon = Rs(0)
        dbs = Rs(1)
        crs = Rs(2)
        
        If yrmon = "03" Then
          txtcr(3).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(3).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "02" Then
          txtcr(2).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(2).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "01" Then
          txtcr(1).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(1).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "12" Then
          txtcr(12).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(12).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "11" Then
          txtcr(11).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(11).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "10" Then
          txtcr(10).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(10).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "09" Then
          txtcr(9).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(9).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "08" Then
          txtcr(8).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(8).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "07" Then
          txtcr(7).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(7).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "06" Then
          txtcr(6).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(6).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "05" Then
          txtcr(5).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(5).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "04" Then
          txtcr(4).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(4).Text = Format(dbs, "##,##,##,##,#0.00")
        End If
        Rs.MoveNext
     Loop
     Rs.Close
     dbsum = 0
     crsum = 0
     dbsum = val(Format(txtdr(1).Text, "#############0")) + val(Format(txtdr(2).Text, "#############0")) + val(Format(txtdr(3).Text, "#############0")) + val(Format(txtdr(4).Text, "#############0")) + val(Format(txtdr(5).Text, "#############0")) + val(Format(txtdr(6).Text, "#############0")) + val(Format(txtdr(7).Text, "#############0")) + val(Format(txtdr(8).Text, "#############0")) + val(Format(txtdr(9).Text, "#############0")) + val(Format(txtdr(10).Text, "#############0")) + val(Format(txtdr(11).Text, "#############0")) + val(Format(txtdr(12).Text, "#############0"))
     crsum = val(Format(txtcr(1).Text, "#############0")) + val(Format(txtcr(2).Text, "#############0")) + val(Format(txtcr(3).Text, "#############0")) + val(Format(txtcr(4).Text, "#############0")) + val(Format(txtcr(5).Text, "#############0")) + val(Format(txtcr(6).Text, "#############0")) + val(Format(txtcr(7).Text, "#############0")) + val(Format(txtcr(8).Text, "#############0")) + val(Format(txtcr(9).Text, "#############0")) + val(Format(txtcr(10).Text, "#############0")) + val(Format(txtcr(11).Text, "#############0")) + val(Format(txtcr(12).Text, "#############0"))
     cur = dbsum - crsum
     Else
         For I = 1 To 12
              txtcr(I).Text = ""
              txtdr(I).Text = ""
         Next
         dbsum = 0
         crsum = 0
         cur = dbsum - crsum
         cbcr.Caption = "0.00"
         cbdr.Caption = "0.00"
         Rs.Close
     End If
     Rs.Open "select isnull(debit,0),isnull(credit,0) from FA_SLBAL where SLCODE ='" & adoPrimaryRS("SLCODE") & "' and substring(yearmonth,1,4) = '" & Year(yfdate) & "' and substring(yearmonth,5,2) = 00 and divcode ='" & Divcode & "'", DB
     If Rs.RecordCount = 0 Then
        ypdr1.Caption = "0.00"
        ypcr1.Caption = "0.00"
        cur = 0
        cur = dbsum - crsum
        If cur < 0 Then
                cbcr.Caption = Format(Abs(cur), "##,##,##,#0.00")
                cbdr.Caption = "0.00"
        ElseIf cur > 0 Then
                cbcr.Caption = "0.00"
                cbdr.Caption = Format(cur, "##,##,##,#0.00")
        ElseIf cur = 0 Then
                cbcr.Caption = "0.00"
                cbcr.Caption = "0.00"
        End If
        Exit Sub
     End If
     dby = 0
     crb = 0
     dby = Rs(0) - Rs(1)
     If dby < 0 Then
        ypcr1.Caption = Format(Abs(dby), "##,##,##,##,#0.00")
        ypdr1.Caption = "0.00"
        crb = 0 - val(dby) + cur
     ElseIf dby > 0 Then
        ypcr1.Caption = "0.00"
        ypdr1.Caption = Format(dby, "##,##,##,##,#0.00")
        crb = val(dby) + cur
     ElseIf dby = 0 Then
        ypcr1.Caption = "0.00"
        ypdr1.Caption = "0.00"
        crb = crb
     End If
     If val(crb) < 0 Then
        cbcr.Caption = Format(Abs(crb), "##,##,##,##,#0.00")
        cbdr.Caption = "0.00"
     ElseIf val(crb) > 0 Then
        cbcr.Caption = "0.00"
        cbdr.Caption = Format(crb, "##,##,##,##,#0.00")
     ElseIf val(crb) = 0 Then
        cbcr.Caption = "0.00"
        cbdr.Caption = "0.00"
     End If
    End If 'sstab1.tab =1
   End If 'adoprimaryrs(eof,bof)
  End If  'opt=add
  On Error Resume Next
'  If adoPrimaryRS("TRN_DEBT") = "Y" Then
'    Check1.Value = 1
'  Else
'    Check1.Value = 0
'  End If
  'End If


Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form slmaster", vbInformation, head
End Sub

Public Sub bindcontls()
  Dim oText As TextBox
  'Binding  the text boxes to the data source
  For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
  Next
End Sub

Public Sub ENABLCONTLS()
Dim tb As TextBox
For Each tb In Me.txtfields
    tb.Locked = False
Next
'Check1.Enabled = True
End Sub
Public Sub disablcontls()
Dim tb As TextBox
On Error GoTo disablcontls_Error

For Each tb In Me.txtfields
    tb.Locked = True
Next
For Each tb In Me.txtcr
    tb.Locked = True
Next
For Each tb In Me.txtdr
    tb.Locked = True
Next
'Check1.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub lovcancel_Click()
'SSTab1.Tab = 1
On Error GoTo lovcancel_Click_Error

On Error GoTo lovcancel_Click_Error

If SSTab1.Visible = True Then
Frame1.Visible = False
Select Case ksldesc1.listfield1
Case "SLCODE"
    If Label5.Caption = "BROKER LISTING" Then
        txtfields(3).SetFocus
    Else
        Call BUTTON_Click(10)
    End If
Case "prtytyp"
    Call BUTTON_Click(10)
Case "bank_code"
    If Label5.Caption = "BANK1 LISTING" Then
        bank1.SetFocus
    Else
        bank2.SetFocus
    End If
Case "AREA_CODE"
    area.SetFocus
Case "carcode"
    carrier.SetFocus
Case "tax_code"
    txtfields(33).SetFocus
End Select
End If 'for sstab1.visible = true
If SSTab1.Visible = False Then
Frame3.Visible = True
Frame1.Visible = False
End If


Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form slmaster", vbInformation, head

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

On Error GoTo lovok_Click_Error

SSTab1.Visible = True
Dim Rs As Recordset
Select Case ksldesc1.listfield1
Case "SLCODE"
  
    If Label5.Caption = "BROKER LISTING" Then
        txtfields(23).Text = ksldesc1.code
        dbname.Text = ksldesc1.Description
        txtfields(3).SetFocus
    Else
        If Opt = "del" Then
            Dim rsdel As Recordset
            Set rsdel = New Recordset
            rsdel.Open "select sum(isnull(debit,0)-isnull(credit,0)) from FA_SLBAL WHERE SLCODE='" & ksldesc1.code & "'", DB
            'rsdel.Open "select sum(isnull(debit,0)-isnull(credit,0)) from FA_SLBAL WHERE SLCODE=" & ksldesc1.code & " AND substring(YEARMONTH,5,2) <> '00' ",db
            If Not (rsdel(0) = 0) Then
                 MsgBox " Balance Amount for this customer is not zero, Cannot be deleted !! ", vbInformation, head
                 Frame1.Visible = False
                 Call BUTTON_Click(10)
                 Exit Sub
            End If
        End If
        txtfields(0).Text = ksldesc1.code
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        
        Set adoPrimaryRS = New Recordset
        'suresh
        'adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,S.LADD1,S.LADD2,S.LADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER from FA_SLMAS s WHERE  S.SLCODE= '" & ksldesc1.code & "'  Order by slcode", db, adOpenStatic, adLockOptimistic
        'adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,State_code,Tinno,BankAcNo,CourierThrough,IFSCCode,S.OLDSLCODE from FA_SLMAS s WHERE  S.SLCODE= '" & ksldesc1.Code & "'  Order by slcode", db, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,State_code,Tinno,BankAcNo,CourierThrough,IFSCCode,S.OLDSLCODE,s.gststatecode,s.gstinno,s.supptype,s.scanfilename ,isactive from FA_SLMAS s WHERE  S.SLCODE= '" & ksldesc1.code & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        'suresh ladd1,2,3
        'Set Text1.DataSource = adoPrimaryRS
        'Set Text2.DataSource = adoPrimaryRS
        'Set Text3.DataSource = adoPrimaryRS
      '  Text1.Locked = False
      '  Text2.Locked = False
      '  Text3.Locked = False
        Set Rs = New Recordset
        Rs.Open "SELECT PRTYHEAD FROM FA_PRTY WHERE PRTYTYP = '" & adoPrimaryRS("PRTYTYP") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
            prtyTXT.Text = Rs(0)
        End If
        Set Rs = New Recordset
        'suresh
        'rs.Open "SELECT S1.SLCODE,b1.bank_desc BANK_DESC1,b2.bank_desc BANK_DESC2,c.carname,a.AREANAME,S1.SLNAME DBNAME,S.BRCODE,t.tax_desc FROM FA_SLMAS S,IG_AREA A,IG_BANK B1,IG_BANK B2 ,PO_CAR C,FA_SLMAS S1,IG_TAX T WHERE S.TAX_CODE = T.TAX_CODE(+) AND  S1.SLCODE = S.BRCODE(+) AND S.BANKADD1 = B1.BANK_CODE(+) AND S.BANKADD2 = B2.BANK_CODE(+) AND S.CARCODE = C.CARCODE(+) AND S.AREACODE = A.AREACODE(+) AND S.SLCODE = '" & adoPrimaryRS("SLCODE") & "'", db, adOpenStatic, adLockBatchOptimistic
      
         'rs.Open "SELECT  S1.SLCODE,b1.bank_desc BANK_DESC1,b2.bank_desc BANK_DESC2,c.carname,a.AREANAME,S1.SLNAME DBNAME,S.BRCODE,t.tax_desc FROM FA_SLMAS S,IG_AREA A,IG_BANK B1,IG_BANK B2 ,PO_CAR C,FA_SLMAS S1,IG_TAX T WHERE S.TAX_CODE *= T.TAX_CODE AND  S1.SLCODE = S.BRCODE AND S.BANKADD1 *= B1.BANK_CODE AND S.BANKADD2 *= B2.BANK_CODE AND S.CARCODE *= C.CARCODE AND S.AREACODE *= A.AREACODE AND S.SLCODE = '" & adoPrimaryRS("SLCODE") & "'", db, adOpenStatic, adLockBatchOptimistic
        'Set bank1.DataSource = rs
        'Set bank2.DataSource = rs
        'Set area.DataSource = rs
        'Set carrier.DataSource = rs
        Set dbname.DataSource = Rs
        'Set tax.DataSource = rs
        Label18.Visible = True
        ypcr.Visible = True
        ypdr.Visible = True
        lblcr.Visible = True
        lbldr.Visible = True
        Dim rsb As Recordset
        Set rsb = New Recordset
        'rsb.Open "select isnull(DEBIT,0),isnull(CREDIT,0) FROM FA_SLBAL WHERE SLCODE='" & adoPrimaryRS("SLCODE") & "' AND substring(YEARMONTH,5,2)='00' AND substring(YEARMONTH,1,4)=TO_CHAR(to_date('" & Format(yfdate, "dd-mmm-yyyy") & "'),'YYYY') ", db, adOpenStatic, adLockBatchOptimistic
         rsb.Open "select isnull(DEBIT,0),isnull(CREDIT,0) FROM FA_SLBAL WHERE SLCODE='" & adoPrimaryRS("SLCODE") & "' AND substring(YEARMONTH,5,2)='00' AND substring(YEARMONTH,1,4)= year('" & Format(yfdate, "yyyy-mm-dd") & "') ", DB, adOpenStatic, adLockBatchOptimistic
        If Not (rsb.RecordCount = 0) Then
            ypdr.Text = rsb(0)
            ypcr.Text = rsb(1)
        Else
            ypdr.Text = "0.00"
            ypcr.Text = "0.00"
        End If
        SSTab1.Tab = 0
        vendor.Text = txtfields(0).Text
'        abbr.Text = txtfields(1).Text
        TXname.Text = txtfields(2).Text
        BUTTON(9).Enabled = True
        Set dbname.DataSource = Rs
    End If
Case "d.slcode"
    DISTRIB.Visible = True
    txtfields(23).Text = ksldesc1.code
    dbname.Text = ksldesc1.Description
    txtfields(1).SetFocus
Case "a.prtytyp"
Label5.Caption = "Sub Ledger Listing "
If Opt = "add" Then
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    prty = ksldesc1.code
    txtfields(2).SetFocus
    prtyTXT = ksldesc1.Description
    If prty = "D2" Then
        DISTRIB.Visible = True
        Frame3.ZOrder
        ksldesc1.conn = connectstring
        ksldesc1.Table = "FA_SLMAS d where d.prtytyp = 'D1'"
        ksldesc1.listfield1 = "d.slcode"
        ksldesc1.listfield2 = "d.slname"
        ksldesc1.SetFocus
        Exit Sub
    End If
Else
    SSTab1.Visible = False
    Frame3.ZOrder
    ksldesc1.conn = connectstring
    ksldesc1.Table = "FA_SLMAS WHERE substring(SLCODE,1,2) = '" & ksldesc1.code & "'"
    ksldesc1.listfield1 = "SLCODE"
    ksldesc1.listfield2 = "SLNAME"
    Exit Sub
End If
Case "tax_code"
    txtfields(29).Text = ksldesc1.code
    tax.Text = ksldesc1.Description
    txtfields(33).SetFocus
Case "carcode"
    txtfields(25).Text = ksldesc1.code
    carrier.Text = ksldesc1.Description
    carrier.SetFocus
Case "AREACODE"
    txtfields(24).Text = ksldesc1.code
    area.Text = ksldesc1.Description
    area.SetFocus
Case "bank_code"

    If Label5.Caption = "BANK1 LISTING" Then
        txtfields(30).Text = ksldesc1.code
        bank1.Text = ksldesc1.Description
        bank1.SetFocus
    Else
        txtfields(31).Text = ksldesc1.code
        bank2.Text = ksldesc1.Description
        bank2.SetFocus
    End If
End Select
'stbar.Panels(2).Text = "Please Enter the SLname"
Frame1.Visible = False
Frame3.Visible = True


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form slmaster", vbInformation, head

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub optcan_Click()
On Error GoTo optcan_Click_Error

On Error Resume Next
Frame3.Visible = False
DB.RollbackTrans
SSTab1.Visible = True
SSTab1.Visible = True
Call query_mode

Exit Sub
optcan_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure optcan_Click of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub optionFind_Click(Index As Integer)
On Error GoTo optionFind_Click_Error

If Index = 0 Then
    CHOICE_FIND = "C"
ElseIf Index = 1 Then
    CHOICE_FIND = "N"
End If

Exit Sub
optionFind_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure optionFind_Click of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub optok_Click()
On Error GoTo optok_Click_Error

Frame3.Visible = False
stbar.Panels(2).Text = "Please Select a Party type"
'If opt = "add" Then
'   If choi(0).VALUE = True Then
'        Label5.Caption = "PARTY TYPE LISTING"
'        KSLDESC1.conn = connectstring
'        KSLDESC1.Table = "FA_PRTY a where substring(a.prtytyp,1,1)='C'"
'        KSLDESC1.listfield1 = "a.prtytyp"
'        KSLDESC1.listfield2 = "a.prtyhead"
'   ElseIf choi(1).VALUE = True Then
'        Label5.Caption = "PARTY TYPE LISTING"
'        KSLDESC1.conn = connectstring
'        KSLDESC1.Table = "FA_PRTY a where substring(a.prtytyp,1,1)='D'"
'        KSLDESC1.listfield1 = "a.prtytyp"
'        KSLDESC1.listfield2 = "a.prtyhead"
'    ElseIf choi(2).VALUE = True Then
'        Label5.Caption = "PARTY TYPE LISTING"
'        KSLDESC1.conn = connectstring
'        KSLDESC1.Table = "FA_PRTY a where substring(a.prtytyp,1,1)='O'"
'        KSLDESC1.listfield1 = "a.prtytyp"
'        KSLDESC1.listfield2 = "a.prtyhead"
'    End If
'End If
'
'
'If opt = "mod" Or opt = "del" Then
'   If choi(0).VALUE = True Then
'        Label5.Caption = "PARTY TYPE LISTING"
'        KSLDESC1.conn = connectstring
'        KSLDESC1.Table = "FA_PRTY a,FA_SLMAS b where substring(a.prtytyp,1,1)='C' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)"
'        KSLDESC1.listfield1 = "a.prtytyp"
'        KSLDESC1.listfield2 = "a.prtyhead"
'   ElseIf choi(1).VALUE = True Then
'        Label5.Caption = "PARTY TYPE LISTING"
'        KSLDESC1.conn = connectstring
'        KSLDESC1.Table = "FA_PRTY a,FA_SLMAS b where substring(a.prtytyp,1,1)='D' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)"
'        KSLDESC1.listfield1 = "a.prtytyp"
'        KSLDESC1.listfield2 = "a.prtyhead"
'    ElseIf choi(2).VALUE = True Then
'        Label5.Caption = "PARTY TYPE LISTING"
'        KSLDESC1.conn = connectstring
'        KSLDESC1.Table = "FA_PRTY a,FA_SLMAS b where substring(a.prtytyp,1,1)='O' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)"
'        KSLDESC1.listfield1 = "a.prtytyp"
'        KSLDESC1.listfield2 = "a.prtyhead"
'    End If
'End If 'for add mode

'If KSLDESC1.code = "" Then
'    Frame3.Visible = True
'    Select Case opt
'    Case "add"
'        MsgBox "Party Type not Defined ", vbInformation, head
'    Case "mod", "del"
'        MsgBox "No Records found for the selected option", vbInformation, head
'    End Select
'    Frame1.Visible = False
'Else
'    Frame1.Visible = True
'    KSLDESC1.SetFocus
'End If
Call PartyLookup


Exit Sub
optok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure optok_Click of Form slmaster", vbInformation, head
End Sub


Private Sub prtyTXT_LostFocus()
On Error GoTo prtyTXT_LostFocus_Error

txtfields(2).SetFocus

Exit Sub
prtyTXT_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prtyTXT_LostFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub qrycan_Click()
On Error GoTo qrycan_Click_Error

Buttonframe.Enabled = True
Frame6.Visible = False

Exit Sub
qrycan_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qrycan_Click of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub qryok_Click()
On Error GoTo qryok_Click_Error

Buttonframe.Enabled = True
Set adoPrimaryRS = New Recordset
    Screen.MousePointer = 11
'  On Error GoTo ER1
 ''*=
 ''adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,S.TAX_CODE,s.INSPER , P.GLCOD,s.State_code,s.Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.OLDSLCODE from FA_SLMAS S,FA_PRTY P,FA_SLMAS S1 WHERE S.slcode = '" & Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1)) & "' and S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode Order by s1.SLCODE ", db, adOpenStatic, adLockBatchOptimistic
  'adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,S.TAX_CODE,s.INSPER , P.GLCOD,s.State_code,s.Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.OLDSLCODE from FA_SLMAS S left join FA_PRTY P on S.PRTYTYP = P.PRTYTYP left join FA_SLMAS S1 on s.BRCODE = s1.slcode WHERE S.slcode = '" & Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1)) & "'  Order by s1.SLCODE ", db, adOpenStatic, adLockBatchOptimistic
  adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,S.TAX_CODE,s.INSPER , P.GLCOD,s.State_code,s.Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.OLDSLCODE,S.gststatecode,S.gstinno,s.supptype,s.scanfilename,s.isactive from FA_SLMAS S left join FA_PRTY P on S.PRTYTYP = P.PRTYTYP left join FA_SLMAS S1 on s.BRCODE = s1.slcode WHERE S.slcode = '" & Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1)) & "'  Order by s1.SLCODE ", DB, adOpenStatic, adLockBatchOptimistic
  'Bind the text boxes,check boxes and option buttons to the data source
  Call bindcontls
  Set party.DataSource = adoPrimaryRS
  Set pname.DataSource = adoPrimaryRS
  Set prtyTXT.DataSource = adoPrimaryRS
  Set vendor.DataSource = adoPrimaryRS
  Set TXname.DataSource = adoPrimaryRS
  Set tax.DataSource = adoPrimaryRS
  Set bank1.DataSource = adoPrimaryRS
  Set bank2.DataSource = adoPrimaryRS
  Set area.DataSource = adoPrimaryRS
  Set carrier.DataSource = adoPrimaryRS
  Set dbname.DataSource = adoPrimaryRS
  SSTab1.Tab = 0
'  SSTab1.TabEnabled(2) = True
  Label18.Visible = False
  ypcr.Visible = False
  ypdr.Visible = False
  lblcr.Visible = False
  lbldr.Visible = False
  Call disablcontls
  party.Locked = True
  pname.Locked = True
  prtyTXT.Locked = True
  vendor.Locked = True
  TXname.Locked = True
  tax.Locked = True
  bank1.Locked = True
  bank2.Locked = True
  area.Locked = True
  carrier.Locked = True
  dbname.Locked = True
  desc.Caption = "Query"
  If adoPrimaryRS.BOF Then
    MsgBox "No Records Found", vbInformation, head
    Call Form_Load
 End If
 
  DATLAB.Caption = pdate
  Screen.MousePointer = 0
 Frame6.Visible = False


Exit Sub
qryok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qryok_Click of Form slmaster", vbInformation, head
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
On Error GoTo SSTab1_Click_Error

If PreviousTab = 1 Then
    'to retrieve the opening and month balances for the party
    If adoPrimaryRS.RecordCount = 0 Then
        Exit Sub
    End If
     Set Rs = New Recordset
     Rs.Open "select substring(yearmonth,5,2),isnull(debit,0),isnull(credit,0) from FA_SLBAL where SLCODE ='" & adoPrimaryRS("SLCODE") & "' and substring(yearmonth,1,4) ='" & Year(yfdate) & "' and substring(yearmonth,5,2) >= 04 and divcode = '" & Divcode & "' Union select substring(yearmonth,5,2),isnull(debit,0),isnull(credit,0) from FA_SLBAL where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and substring(yearmonth,1,4) = '" & Year(yldate) & "' and substring(yearmonth,5,2) <= 03 and divcode ='" & Divcode & "'", DB
     If Not (Rs.RecordCount = 0) Then
     Rs.MoveFirst
     Do While Not Rs.EOF
        yrmon = Rs(0)
        dbs = Rs(1)
        crs = Rs(2)
        
        If yrmon = "03" Then
          txtcr(3).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(3).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "02" Then
          txtcr(2).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(2).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "01" Then
          txtcr(1).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(1).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "12" Then
          txtcr(12).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(12).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "11" Then
          txtcr(11).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(11).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "10" Then
          txtcr(10).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(10).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "09" Then
          txtcr(9).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(9).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "08" Then
          txtcr(8).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(8).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "07" Then
          txtcr(7).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(7).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "06" Then
          txtcr(6).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(6).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "05" Then
          txtcr(5).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(5).Text = Format(dbs, "##,##,##,##,#0.00")
        ElseIf yrmon = "04" Then
          txtcr(4).Text = Format(crs, "##,##,##,##,#0.00")
          txtdr(4).Text = Format(dbs, "##,##,##,##,#0.00")
        End If
        Rs.MoveNext
     Loop
     Rs.Close
     dbsum = 0
     crsum = 0
     dbsum = val(Format(txtdr(1).Text, "#############0")) + val(Format(txtdr(2).Text, "#############0")) + val(Format(txtdr(3).Text, "#############0")) + val(Format(txtdr(4).Text, "#############0")) + val(Format(txtdr(5).Text, "#############0")) + val(Format(txtdr(6).Text, "#############0")) + val(Format(txtdr(7).Text, "#############0")) + val(Format(txtdr(8).Text, "#############0")) + val(Format(txtdr(9).Text, "#############0")) + val(Format(txtdr(10).Text, "#############0")) + val(Format(txtdr(11).Text, "#############0")) + val(Format(txtdr(12).Text, "#############0"))
     crsum = val(Format(txtcr(1).Text, "#############0")) + val(Format(txtcr(2).Text, "#############0")) + val(Format(txtcr(3).Text, "#############0")) + val(Format(txtcr(4).Text, "#############0")) + val(Format(txtcr(5).Text, "#############0")) + val(Format(txtcr(6).Text, "#############0")) + val(Format(txtcr(7).Text, "#############0")) + val(Format(txtcr(8).Text, "#############0")) + val(Format(txtcr(9).Text, "#############0")) + val(Format(txtcr(10).Text, "#############0")) + val(Format(txtcr(11).Text, "#############0")) + val(Format(txtcr(12).Text, "#############0"))
     cur = dbsum - crsum
     Else
         For I = 1 To 12
              txtcr(I).Text = ""
              txtdr(I).Text = ""
         Next
         dbsum = 0
         crsum = 0
         cur = dbsum - crsum
         cbcr.Caption = "0.00"
         cbdr.Caption = "0.00"
         Rs.Close
     End If
     Rs.Open "select isnull(debit,0),isnull(credit,0) from FA_SLBAL where SLCODE ='" & adoPrimaryRS("SLCODE") & "' and substring(yearmonth,1,4) = '" & Year(yfdate) & "' and substring(yearmonth,5,2) = 00 and divcode ='" & Divcode & "'", DB
     If Rs.RecordCount = 0 Then
        ypdr1.Caption = "0.00"
        ypcr1.Caption = "0.00"
        cur = 0
        cur = dbsum - crsum
        If cur < 0 Then
                cbcr.Caption = Format(Abs(cur), "##,##,##,#0.00")
                cbdr.Caption = "0.00"
        ElseIf cur > 0 Then
                cbcr.Caption = "0.00"
                cbdr.Caption = Format(cur, "##,##,##,#0.00")
        ElseIf cur = 0 Then
                cbcr.Caption = "0.00"
                cbcr.Caption = "0.00"
        End If
        Exit Sub
     End If
     dby = 0
     crb = 0
     dby = Rs(0) - Rs(1)
     If dby < 0 Then
        ypcr1.Caption = Format(Abs(dby), "##,##,##,##,#0.00")
        ypdr1.Caption = "0.00"
        crb = 0 - val(dby) + cur
     ElseIf dby > 0 Then
        ypcr1.Caption = "0.00"
        ypdr1.Caption = Format(dby, "##,##,##,##,#0.00")
        crb = val(dby) + cur
     ElseIf dby = 0 Then
        ypcr1.Caption = "0.00"
        ypdr1.Caption = "0.00"
        crb = crb
     End If
     If val(crb) < 0 Then
        cbcr.Caption = Format(Abs(crb), "##,##,##,##,#0.00")
        cbdr.Caption = "0.00"
     ElseIf val(crb) > 0 Then
        cbcr.Caption = "0.00"
        cbdr.Caption = Format(crb, "##,##,##,##,#0.00")
     ElseIf val(crb) = 0 Then
        cbcr.Caption = "0.00"
        cbdr.Caption = "0.00"
     End If
End If


Exit Sub
SSTab1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_Click of Form slmaster", vbInformation, head
End Sub


Private Sub tax_GotFocus()
 tax.BackColor = "&HC0FFC0"    'green
End Sub

Private Sub tax_LostFocus()
 tax.BackColor = "&H80000005"   'white
End Sub

Private Sub txtcr_GotFocus(Index As Integer)
On Error GoTo txtcr_GotFocus_Error

a = "Credit Balance of "
If Index = 1 Then
stbar.Panels(2).Text = a & "January"
ElseIf Index = 2 Then stbar.Panels(2).Text = a & "February"
ElseIf Index = 3 Then stbar.Panels(2).Text = a & "March"
ElseIf Index = 4 Then stbar.Panels(2).Text = a & "April"
ElseIf Index = 5 Then stbar.Panels(2).Text = a & "May"
ElseIf Index = 6 Then stbar.Panels(2).Text = a & "June"
ElseIf Index = 7 Then stbar.Panels(2).Text = a & "July"
ElseIf Index = 8 Then stbar.Panels(2).Text = a & "August"
ElseIf Index = 9 Then stbar.Panels(2).Text = a & "September"
ElseIf Index = 10 Then stbar.Panels(2).Text = a & "October"
ElseIf Index = 11 Then stbar.Panels(2).Text = a & "November"
ElseIf Index = 12 Then stbar.Panels(2).Text = a & "December"
End If

Exit Sub
txtcr_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtcr_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtdr_GotFocus(Index As Integer)
On Error GoTo txtdr_GotFocus_Error

a = "Debit Balance of "
If Index = 1 Then
stbar.Panels(2).Text = a & "January"
ElseIf Index = 2 Then stbar.Panels(2).Text = a & "February"
ElseIf Index = 3 Then stbar.Panels(2).Text = a & "March"
ElseIf Index = 4 Then stbar.Panels(2).Text = a & "April"
ElseIf Index = 5 Then stbar.Panels(2).Text = a & "May"
ElseIf Index = 6 Then stbar.Panels(2).Text = a & "June"
ElseIf Index = 7 Then stbar.Panels(2).Text = a & "July"
ElseIf Index = 8 Then stbar.Panels(2).Text = a & "August"
ElseIf Index = 9 Then stbar.Panels(2).Text = a & "September"
ElseIf Index = 10 Then stbar.Panels(2).Text = a & "October"
ElseIf Index = 11 Then stbar.Panels(2).Text = a & "November"
ElseIf Index = 12 Then stbar.Panels(2).Text = a & "December"
End If

Exit Sub
txtdr_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtdr_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Txtfields_Change(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
    If Index = 19 Then
        If Left(Combo2, 1) = "R" Then
         If Len(txtfields(19).Text) = 10 Then
           ' txtfields(76).text = txtfields(77).text & txtfields(19).text
            txtfields(69).Enabled = True
            'txtfields(76).SetFocus
         End If
        End If
    End If
End If
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
Dim oText As TextBox
On Error GoTo txtFields_GotFocus_Error
'txtfields(Index).BackColor = &HE6D8AD
For Each oText In Me.txtfields
oText.BackColor = "&H80000005"     'white
Next
txtfields(Index).BackColor = "&HC0FFC0"  'green

If val(ypdr.Text) <> 0 Then
    ypdr.Text = Format(ypdr.Text, "##,##,##,#0.00")
End If
If val(ypcr.Text) <> 0 Then
    ypcr.Text = Format(ypcr.Text, "##,##,##,#0.00")
End If

If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    Case 35
        Call StateLookup
    Case 13
        txtfields(Index).SelStart = 5
    End Select
End If
ypdr.Text = ypdr.Text
If Opt = "add" Or Opt = "mod" Then
   p = "Please Enter the "
Else
   p = ""
End If
If Index < 14 Or Index = 34 Or Index = 32 Then
   If Index = 1 Then
      stbar.Panels(2).Text = " Abbrevation of SLname"
      ElseIf Index = 2 Then stbar.Panels(2).Text = p & " SLname"
      ElseIf Index = 3 Or Index = 4 Or Index = 34 Then stbar.Panels(2).Text = a & " Address of " & txtfields(2).Text
      ElseIf Index = 5 Then stbar.Panels(2).Text = p & " City of" & txtfields(2).Text
      ElseIf Index = 6 Then stbar.Panels(2).Text = p & " State of" & txtfields(2).Text
      ElseIf Index = 7 Then stbar.Panels(2).Text = p & " Country of" & txtfields(2).Text
      ElseIf Index = 8 Then stbar.Panels(2).Text = p & " PostalCode of" & txtfields(5).Text
      ElseIf Index = 9 Then stbar.Panels(2).Text = p & " Phone number of " & txtfields(2).Text
      ElseIf Index = 10 Then stbar.Panels(2).Text = p & "n Phone number of " & txtfields(2).Text
      ElseIf Index = 11 Then stbar.Panels(2).Text = p & " FAX number of " & txtfields(2).Text
      ElseIf Index = 12 Then stbar.Panels(2).Text = p & " E-mail Addres of " & txtfields(2).Text
      ElseIf Index = 13 Then stbar.Panels(2).Text = p & " Website Address of " & txtfields(2).Text
      ElseIf Index = 32 Then stbar.Panels(2).Text = p & " Tele Grams of " & txtfields(2).Text
   End If
End If 'for Index < 14 Or Index = 34
If (Index < 34 And Index <> 23 And Index <> 34 And Index <> 32) Then
   If Index = 14 Then
      stbar.Panels(2).Text = a & " TNGST No. of " & txtfields(2).Text
    ElseIf Index = 16 Then stbar.Panels(2).Text = p & " TNGST No. Date of " & txtfields(2).Text
      ElseIf Index = 15 Then stbar.Panels(2).Text = p & " CST No. of " & txtfields(2).Text
      ElseIf Index = 17 Then stbar.Panels(2).Text = p & " CST No. Date of " & txtfields(2).Text
      ElseIf Index = 18 Then stbar.Panels(2).Text = p & " ECC No of " & txtfields(2).Text
      ElseIf Index = 19 Then stbar.Panels(2).Text = p & " PAN No. of " & txtfields(2).Text
      ElseIf Index = 20 Then stbar.Panels(2).Text = p & " Phone number of " & txtfields(22).Text
      ElseIf Index = 21 Then stbar.Panels(2).Text = p & " Designation of " & txtfields(22).Text
      ElseIf Index = 22 Then stbar.Panels(2).Text = p & " Contact Person of " & txtfields(2).Text
      ElseIf Index = 24 Then stbar.Panels(2).Text = p & " Area of " & txtfields(2).Text
      ElseIf Index = 25 Then stbar.Panels(2).Text = p & " Carrier of " & txtfields(2).Text
      ElseIf Index = 26 Then stbar.Panels(2).Text = p & " Payment Terms of " & txtfields(2).Text
      ElseIf Index = 27 Then stbar.Panels(2).Text = p & " Credit Days"
      ElseIf Index = 28 Then stbar.Panels(2).Text = p & " Credit Limit"
      ElseIf Index = 29 Then stbar.Panels(2).Text = p & " Tax of " & txtfields(2).Text
      ElseIf Index = 33 Then stbar.Panels(2).Text = p & " Insurance"
      
  End If
  ElseIf Index = 23 Then stbar.Panels(2).Text = p & " Agent Code"
  ElseIf Index = 40 Then stbar.Panels(2).Text = p & " Existing Supplier Code"
  ElseIf Index = 37 Then stbar.Panels(2).Text = p & " Supplier Bank A/C No"
  ElseIf Index = 39 Then stbar.Panels(2).Text = p & " Courier Through"
  End If ' IfIndex < 34 And Index <> 23 And Index <> 34 And Index <> 32



Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form slmaster", vbInformation, head
      
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If Opt = "add" Or Opt = "mod" Then
        If KeyCode = 13 Then
            SendKeys ("{TAB}")
            Exit Sub
        End If
    End If
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 2
        If Trim(txtfields(Index)) = "" Then
            Call ToAlpha(txtfields(Index), KeyAscii)
        Else
            Call ToAlphaNumberName(txtfields(Index), 50, KeyAscii)
        End If
    Case 27
        Call ToNumber(txtfields(Index), KeyAscii)
    Case 8
        Call ToNumber(txtfields(Index), KeyAscii)
        If Len(txtfields(8).Text) = 3 Then
            If KeyAscii <> 8 Then KeyAscii = 32
        End If
    Case 9, 10, 20, 11
        Call ToNumPhone(txtfields(Index), KeyAscii)
    Case 13
        Call ToAlphaNumberWeb(txtfields(Index), 25, KeyAscii)
    Case 12
        Call ToAlphaNumberEmail(txtfields(Index), 50, KeyAscii)
    Case 14, 15, 18, 36, 37, 38
        Call ToAlphaNumber(txtfields(Index), 25, KeyAscii)
    Case 16, 17
        Call ToDateNumber(txtfields(Index), KeyAscii)
    Case 33
        Call ToNumberAssign(txtfields(Index), 3, KeyAscii, 3, 2)
    Case 19
         Call ToAlphaNumber(txtfields(Index), 10, KeyAscii)
         Call ToUpCase(txtfields(Index), KeyAscii)
        If KeyAscii <> 8 Then
            
            If Len(txtfields(Index)) < 5 Then
                If Not (KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122) Then
                'Code added on 10-04-2021
                MsgBox "First character to Fifth character of PAN Number should be character", vbInformation, head
                 KeyAscii = 0
                End If
            ElseIf Len(txtfields(Index)) >= 5 And Len(txtfields(Index)) < 9 Then
                If Not (KeyAscii >= 48 And KeyAscii <= 57) Then
                'Code added on 10-04-2021
                MsgBox "Sixth character to Ninth character of PAN Number should be Numeric", vbInformation, head
                KeyAscii = 0
                End If
            ElseIf Len(txtfields(Index)) = 9 Then
                If Not (KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122) Then
                'Code added on 10-04-2021
                MsgBox "Tenth character of PAN Number should be character", vbInformation, head
                KeyAscii = 0
                End If
            ElseIf Len(txtfields(Index)) > 10 Then
                ' KeyAscii = 0
                'Comment removed on 10-04-2021
                KeyAscii = 0
            End If
        End If
   
        '08.06
    Case 69
    
    '        If Len(txtfields(Index)) <> 15 Then
    '        If KeyAscii = vbKeyTab Then
    '        MsgBox "GST Number should be of 15 Characters", vbInformation, head
    '        txtfields(Index).SetFocus
    '
    '        Exit Sub
    '        End If
    '        End If
    Call ToUpCase(txtfields(Index), KeyAscii)
        If Left(Combo2, 1) = "R" Then
            If (Len(txtfields(Index).Text)) < 2 Then
            If Not (KeyAscii >= 48 And KeyAscii <= 57) Then
            If KeyAscii <> 8 Then
                MsgBox "First two characters of GST Number should be numeric", vbInformation, head
                KeyAscii = 0
            End If
            End If
            End If
            
            
            If (Len(txtfields(Index).Text)) >= 2 And (Len(txtfields(Index).Text)) < 7 Then
            If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
            If KeyAscii <> 8 Then
                MsgBox "Third character to Seventh character of GST Number should be Alphabet", vbInformation, head
                KeyAscii = 0
            End If
            End If
            End If
            
            If (Len(txtfields(Index).Text)) >= 7 And (Len(txtfields(Index).Text)) < 11 Then
            If Not ((KeyAscii >= 48 And KeyAscii <= 57)) Then
            If KeyAscii <> 8 Then
                MsgBox "Eigth character to Eleventh character of GST Number should be Numeric", vbInformation, head
                KeyAscii = 0
            End If
            End If
            End If
            If (Len(txtfields(Index).Text)) >= 11 And (Len(txtfields(Index).Text)) < 15 Then
              Call ToUpCase(txtfields(Index), KeyAscii)
            End If
    End If
'      If Left(Combo2.Text, 1) = "R" Then
'            If (Len(txtfields(Index).Text)) < 2 Then
'            If Not (KeyAscii >= 48 And KeyAscii <= 57) Then
'            If KeyAscii <> 8 Then
'                MsgBox "First two characters of GST Number should be numeric", vbInformation, head
'                KeyAscii = 0
'            End If
'            End If
'            End If
'
'
'            If (Len(txtfields(Index).Text)) >= 2 And (Len(txtfields(Index).Text)) < 7 Then
'            If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
'            If KeyAscii <> 8 Then
'                MsgBox "Third character to Seventh character of GST Number should be Alphabet", vbInformation, head
'                KeyAscii = 0
'            End If
'            End If
'            End If
'
'            If (Len(txtfields(Index).Text)) >= 7 And (Len(txtfields(Index).Text)) < 11 Then
'            If Not ((KeyAscii >= 48 And KeyAscii <= 57)) Then
'            If KeyAscii <> 8 Then
'                MsgBox "Eigth character to Eleventh character of GST Number should be Numeric", vbInformation, head
'                KeyAscii = 0
'            End If
'            End If
'            End If
'            If (Len(txtfields(Index).Text)) >= 11 And (Len(txtfields(Index).Text)) < 15 Then
'           'If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
'           ' If KeyAscii <> 8 Then
'              '  MsgBox "Twelth to Fifteenth character of GST Number should be Alphabet", vbInformation, head
'               ' KeyAscii = 0
'           ' End If
'              Call ToAlphaNumber(txtfields(Index), 25, KeyAscii)
'            'End If
'            End If
'        End If
End Select
End If

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
Dim oText As TextBox
On Error GoTo txtfields_LostFocus_Error

For Each oText In Me.txtfields
oText.BackColor = "&H80000005"     'white
Next
Dim Rs As Recordset
Dim s As String
Dim t As String
    If Opt = "add" Or Opt = "mod" Then

    If Index = 23 Then
        Set rsa = New Recordset
        rsa.Open "select Slcode,Slname from fa_slmas where slcode='" & txtfields(23).Text & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            Call BrokerLookup
        End If
    End If
    
    If Index = 5 Then
        
    End If
    If Index = 27 Then
'        If val(txtFields(27).Text) > 366 Then
'        MsgBox "Credit Days must be below 366 Days", vbInformation, head
'        txtFields(27).SetFocus
'        End If
    End If

    If Index = 40 Then
      SSTab1.Tab = 1
       ypdr.SetFocus
       'txtfields(22).SetFocus
    End If
    If Index = 12 Then
        a = InStr(1, txtfields(Index), "@")
        B = InStr(1, txtfields(Index), ".")
        If Trim(txtfields(Index).Text) <> "" Then
            If a <= 0 Or B <= 0 Then
                MsgBox "Please enter the valid e-Mail", vbInformation, head
                txtfields(Index).SetFocus
                Exit Sub
            End If
        End If
    End If

End If
If Opt = "add" Or Opt = "mod" Then
    If Not (txtfields(Index).Text = "") And Index <> 12 Then
        If Index <> 13 Then txtfields(Index).Text = UCase(txtfields(Index).Text)
    End If
    If Index = 16 Or Index = 17 Then
        If Trim(txtfields(Index).Text) <> "" Then
            If Not (IsDate(txtfields(Index)) Or txtfields(Index).Text = "") Then
             MsgBox " Invalid date" & Chr(13) & " Enter date in this format - '15/08/1947'", vbInformation, head
             txtfields(Index).Text = ""
             txtfields(Index).SetFocus
             Exit Sub
         ElseIf txtfields(Index).Text > pdate Then
             MsgBox "Date Should Not Be Greater than Processing Date", vbInformation, head
             txtfields(Index).Text = ""
             txtfields(Index).SetFocus
             Exit Sub
        End If
    End If
    
End If

If Index = 12 Then txtfields(13).Text = "www."

Select Case Index
Case 1
    'abbr.Text = txtfields(1).Text
    stbar.Panels(2).Text = "Enter the Address of Supplier"
    txtfields(3).SetFocus
Case 2
'    If Txtfields(2).Text = "" Then
'        MsgBox " Name cannot be empty", vbInformation, head
'        Txtfields(2).SetFocus
'        Exit Sub
'    End If
'    If Txtfields(0).Text = "" And Not Txtfields(2).Text = "" Then
'        Set rs = New Recordset
'        s = Mid$(Txtfields(2).Text, 1, 1)
'        s = prty & s
'        rs.Open "select max(CAST(substring(slcode,4,6) AS NUMERIC)) from FA_SLMAS where slcode like '" & s & "%' ", db, adOpenStatic, adLockBatchOptimistic
'        If Not (rs.BOF Or IsNull(rs(0))) Then
'            If Val(rs(0)) < 9 Then
'                Txtfields(0).Text = s & "00" & Val(rs(0)) + 1
'            ElseIf Val(rs(0)) < 99 Then
'                Txtfields(0).Text = s & "0" & Val(rs(0)) + 1
'            Else
'                Txtfields(0).Text = s & Val(rs(0)) + 1
'            End If
'        Else
'            Txtfields(0).Text = s & "001"
'        End If
''        If Opt = "add" Then
''            Dim rsins As Recordset
''            Set rsins = New Recordset
''            rsins.Open "select slcode from FA_SLMAS where slname = '" & UCase(Trim(txtfields(2).Text)) & "'", db
''            If rsins.RecordCount > 0 Then
''                  MsgBox "A Sub Ledger Code for this party already exists", vbCritical, head
''                  txtfields(0).Text = ""
''                  txtfields(2).Text = ""
''                  txtfields(2).SetFocus
''                  Exit Sub
''            Else
''               TXname.Text = txtfields(2).Text
''               vendor.Text = txtfields(0).Text
''            End If
''        End If
'    End If
Case 27
    If Not (Trim(txtfields(Index).Text) = "") Then
        If Not (IsNumeric(txtfields(Index).Text)) Or Not (Len(txtfields(Index).Text) <= 3) Then
            MsgBox "Credit Days can be a maximum of 3 numbers", vbInformation, head
            txtfields(Index).SetFocus
            Exit Sub
        End If
    End If
Case 28
'        BUTTON(9).SetFocus
Case 33
    If Trim(txtfields(33).Text) > 100 Then
        MsgBox "Please enter Insurance %, Below or Equal to 100", vbInformation, head
        txtfields(33).SetFocus
        Exit Sub
    Else
        BUTTON(9).SetFocus
    End If
'Case 12
'    a = InStr(0, TXTFIELDS(Index), "@")
'    a = a
Case 5
    Call CityLookup
Case 19
        If UCase(CustID) = "SARANYA" Or UCase(CustID) = "SUBAM" Then
   
   Else
        If UCase(CustID) <> UCase("Kumaragiri") Then
            If Len(Trim(txtfields(19).Text)) > 0 And Len(Trim(txtfields(19).Text)) < 10 Then
                MsgBox "Invalid Pan No!", vbCritical, head
                txtfields(19).SetFocus
                Exit Sub
            End If
        End If
        
    End If
   
        If Opt = "mod" Then
            If Len(txtfields(69).Text) = 15 Then
                gstnolastthree = Right(txtfields(69).Text, 3)
            End If
        End If
        
        If Left(Combo2, 1) = "R" Then
         'If Len(txtfields(19).Text) = 10 And Len(txtfields(76).Text) <> 15 Then
         If Len(txtfields(19).Text) = 10 Then
            txtfields(69).Text = txtfields(70).Text & txtfields(19).Text
            
            If Opt = "mod" Then
                txtfields(69).Text = txtfields(69).Text & gstnolastthree
            End If
            txtfields(69).SelStart = Len(txtfields(69).Text) + 1
            txtfields(69).SetFocus
         End If
        End If
  
Case 69
    If Left(Combo2, 1) = "R" Then
        If txtfields(19).Text <> "" Then
            If Len(txtfields(69).Text) < 15 Or Len(txtfields(69).Text) > 15 Then
                MsgBox "The GST No. should be 15 Digit"
               ' txtfields(76).SetFocus
                Exit Sub
            End If
        Else
            MsgBox "PAN No. should not be empty", vbInformation
            txtfields(19).SetFocus
        End If
    End If
End Select
If Index = 8 Then
    If Len(Trim(txtfields(8).Text)) < 7 And Len(Trim(txtfields(8).Text)) <> 0 Then
        MsgBox "Please enter the valid Pincode format", vbInformation, head
        txtfields(Index).SetFocus
        Exit Sub
    
    End If
End If
If Index = 9 Then txtfields(10).SetFocus
End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form slmaster", vbInformation, head
End Sub

Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
Opt = "qry"
btnBrowse.Visible = False
txt_filename.Visible = False
Label93.Visible = False

If Not Opt = " " Then
  Opt = " "
 
  Set adoPrimaryRS = New Recordset
  'adoprimaryrs.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE from FA_SLMAS S,FA_PRTY P, FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode and s.slcode like 'c%' Order by s.SLCODE ", db, adOpenStatic, adLockBatchOptimistic
 '*=
 ''adoPrimaryRS.Open "select Top 1 S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE,s.State_code,s.Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.aREACODE,S.CARCODE,S.BANKADD1,S.BANKADD2,S.TAX_CODE,S.OLDSLCODE from FA_SLMAS S,FA_PRTY P, FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode and s.slcode like '" & PartyType & "%' Order by s.SLCODE  ", db, adOpenStatic, adLockBatchOptimistic
   'adoPrimaryRS.Open "select Top 1 S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE,s.State_code,s.Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.aREACODE,S.CARCODE,S.BANKADD1,S.BANKADD2,S.TAX_CODE,S.OLDSLCODE from FA_SLMAS S left join FA_PRTY P on S.PRTYTYP = P.PRTYTYP left join FA_SLMAS S1 on s.BRCODE = s1.slcode WHERE  s.slcode like '" & PartyType & "%' Order by s.SLCODE  ", db, adOpenStatic, adLockBatchOptimistic
   adoPrimaryRS.Open "select Top 50 S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE,s.State_code,s.Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.aREACODE,S.CARCODE,S.BANKADD1,S.BANKADD2,S.TAX_CODE,S.OLDSLCODE,S.gststatecode,S.gstinno,s.supptype,s.scanfilename,s.isactive from FA_SLMAS S left join FA_PRTY P on S.PRTYTYP = P.PRTYTYP left join FA_SLMAS S1 on s.BRCODE = s1.slcode WHERE left(s.slcode,2) in (select Items from dbo.split('" & PartyType & "',',')) Order by s.SLCODE  ", DB, adOpenStatic, adLockBatchOptimistic
  Call bindcontls
  SSTab1.Tab = 0
  Set party.DataSource = adoPrimaryRS
  Set pname.DataSource = adoPrimaryRS
  Set prtyTXT.DataSource = adoPrimaryRS
'  Set abbr.DataSource = adoPrimaryRS
  Set vendor.DataSource = adoPrimaryRS
  Set TXname.DataSource = adoPrimaryRS
  Set tax.DataSource = adoPrimaryRS
  Set bank1.DataSource = adoPrimaryRS
  Set bank2.DataSource = adoPrimaryRS
  Set area.DataSource = adoPrimaryRS
  Set carrier.DataSource = adoPrimaryRS
  Set dbname.DataSource = adoPrimaryRS
  SSTab1.TabEnabled(2) = True
  Label18.Visible = False
  ypcr.Visible = False
  ypdr.Visible = False
  lblcr.Visible = False
  lbldr.Visible = False
  FNDFRME.Visible = False
  
  
   
  
  
  
  
  
  

  stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
 ' If adoPrimaryRS("TRN_DEBT") = "Y" Then
 '      Check1.Value = 1
 ' Else
 '       Check1.Value = 0
 ' End If
  Call disablcontls
  party.Locked = True
  pname.Locked = True
  prtyTXT.Locked = True
'  abbr.Locked = True
  vendor.Locked = True
  TXname.Locked = True
  tax.Locked = True
  bank1.Locked = True
  bank2.Locked = True
  area.Locked = True
  carrier.Locked = True
  dbname.Locked = True
 ' Text1.Locked = True
 ' Text2.Locked = True
 ' Text3.Locked = True
  desc.Caption = "Query"
  If adoPrimaryRS.BOF And adoPrimaryRS.EOF Then
    MsgBox "No Records Found", vbInformation, head
    DATLAB.Caption = pdate
    stbar.Panels(2).Text = "No Records Found"
  End If
  DATLAB.Caption = pdate 'This variable is declared as global to show the date
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM(BUTTON)
  Call NEWFORM1(BUTTON, GSNO)
'  BUTTON(6).SetFocus
  
End If
Exit Sub
er1:
   If Err = 3021 Then
    MsgBox "No records exist", vbInformation, head
   End If
   If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head + "Connection Message"
    Screen.MousePointer = 0
   End If


Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form slmaster", vbInformation, head
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
On Error Resume Next
If Index = 3 Then
    If Trim(txtfields(3).Text) = "" Then
    MsgBox "Address can't be Empty", vbInformation, head
    Cancel = True
    txtfields(3).SetFocus
    End If
End If

If Index = 19 Then
        Set rsstat = New Recordset
            rsstat.Open "select isnull(STATE_FLAG,'') state_flag from ig_state where state_code = '" & Trim(txtfields(35).Text) & "'  ", DB, adOpenStatic
            
            If rsstat.RecordCount > 0 Then
                St_flg = UCase(rsstat("state_flag"))
            End If
        If Left(Combo2.Text, 1) = "R" Then ' code added on 23-12-2019
            If Trim(txtfields(19).Text) = "" And St_flg <> "F" Then
            MsgBox "Please Enter PAN No.", vbInformation, head
            'SSTab1.Tab = 1
        'Cancel = True
            'txtfields(5).SetFocus
            End If
            
            txtfields(69).SelStart = Len(txtfields(69).Text) + 1
        End If

End If
If Index = 2 And Opt = "add" Then
    If txtfields(2).Text = "" Then
        MsgBox " Name cannot be empty", vbInformation, head
        Cancel = True
        txtfields(2).SetFocus
        Exit Sub
    End If
    If Trim(txtfields(0).Text) = "" And Not txtfields(2).Text = "" Or Trim(txtfields(0).Text) <> "" Then
        Set Rs = New Recordset
        s = Mid$(txtfields(2).Text, 1, 1)
        s = prty & s
        
        Rs.Open "select max(CAST(substring(slcode,4," & Suplen & ") AS NUMERIC)) from FA_SLMAS where slcode like '" & s & "%' ", DB, adOpenStatic, adLockBatchOptimistic
        If Not (Rs.BOF Or IsNull(Rs(0))) Then
            If Suplen = 7 Then
                txtfields(0).Text = s & Padl(val(Rs(0) + 1), 4, "0")
            Else
                txtfields(0).Text = s & Padl(val(Rs(0) + 1), 3, "0")
            End If
        Else
            If Suplen = 7 Then
                txtfields(0).Text = s & Padl(1, 4, "0")
            Else
                txtfields(0).Text = s & Padl(1, 3, "0")
            End If
        End If
        txtfields(0).Text = UCase(txtfields(0).Text)
        
        Dim rsin As Recordset
        
        Set rsin = New Recordset
        rsin.Open "select slcode from FA_SLMAS where slcode = '" & UCase(Trim(txtfields(0).Text)) & "'", DB, adOpenStatic
        If rsin.RecordCount > 0 Then
              MsgBox "A Sub Ledger Code for this party already exists", vbInformation, head
              txtfields(2).SetFocus
              Cancel = True
        Else
           TXname.Text = txtfields(2).Text
           vendor.Text = txtfields(0).Text
        End If
        
        Set rsin = New Recordset
        rsin.Open "select slname from FA_SLMAS where slname = '" & UCase(Trim(txtfields(2).Text)) & "'", DB, adOpenStatic
        If rsin.RecordCount > 0 Then
              MsgBox "Sub Ledger Name already exists", vbInformation, head
              txtfields(2).SetFocus
              Cancel = True
        Else
           TXname.Text = txtfields(2).Text
           vendor.Text = txtfields(0).Text
        End If
        
        
    End If
End If
End If

    If Index = 30 Then
        LookUp.Clear = True
        LookUp.query = "select bank_code ""Bank Code"",name""Bank Name"" from ig_bank "
        LookUp.Caption = "Bank Listing"
        LookUp.DefCol = "Bank Name"
        LookUp.ALIGN = "2000,6000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(30).Text = LookUp.Fields(0)
            bank1.Text = LookUp.Fields(1)
            txtfields(31).SetFocus
        Else
            txtfields(30).Text = ""
            bank1.Text = ""
            txtfields(31).SetFocus
        End If
    
    End If
    
    If Index = 31 Then
        LookUp.Clear = True
        LookUp.query = "select bank_code ""Bank Code"",name""Bank Name"" from ig_bank "
        LookUp.Caption = "Bank Listing"
        LookUp.DefCol = "Bank Name"
        LookUp.ALIGN = "2000,6000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(31).Text = LookUp.Fields(0)
            bank2.Text = LookUp.Fields(1)
            txtfields(24).SetFocus
        Else
            txtfields(31).Text = ""
            bank2.Text = ""
            txtfields(24).SetFocus
        End If
    
    End If
    
    If Index = 24 Then
        LookUp.Clear = True
        LookUp.query = "select Area_code ""Area Code"",name""Area Name"" from ig_Area "
        LookUp.Caption = "Area Listing"
        LookUp.DefCol = "Area Name"
        LookUp.ALIGN = "2000,6000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(24).Text = LookUp.Fields(0)
            area.Text = LookUp.Fields(1)
            txtfields(24).SetFocus
        Else
            txtfields(24).Text = ""
            area.Text = ""
            txtfields(25).SetFocus
        End If
    
    End If
    
    If Index = 25 Then
        LookUp.Clear = True
        LookUp.query = "select carcode ""Carrier Code"",CARname""Carrier Name"" from po_car "
        LookUp.Caption = "Carrier Listing"
        LookUp.DefCol = "Carrier Name"
        LookUp.ALIGN = "2000,6000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(25).Text = LookUp.Fields(0)
            carrier.Text = LookUp.Fields(1)
            txtfields(39).SetFocus
        Else
            txtfields(25).Text = ""
            carrier.Text = ""
            txtfields(39).SetFocus
        End If
    End If
    
    
    If Index = 29 Then
        LookUp.Clear = True
        LookUp.query = "select Tax_code ""Tax Code"",Description from ig_tax "
        LookUp.Caption = "Tax Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "2000,6000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(29).Text = LookUp.Fields(0)
            tax.Text = LookUp.Fields(1)
            txtfields(33).SetFocus
        Else
            txtfields(29).Text = ""
            tax.Text = ""
            txtfields(33).SetFocus
        End If
    
    If Index = 69 Then
      If Left(Combo2.Text, 1) = "R" Then
        If Left(txtfields(69), 2) <> txtfields(70).Text Then
            MsgBox "The first Two digits of GST No. Should be state code...!"
            txtfields(69).SetFocus
            
            Exit Sub
            End If
        End If

        If Index = 69 Then
          If Len(Trim(txtfields(69).Text)) <> 15 Then
            MsgBox "GST Number Should be 15 Characters!", vbCritical
            txtfields(69).SetFocus
            Exit Sub
        End If
        End If
       End If
    
    End If
    
    
Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form slmaster", vbInformation, head

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Validate of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ypcr_DblClick()
On Error GoTo ypcr_DblClick_Error

If val(ypcr.Text) <> 0 Then
ypcr.SelStart = Len(ypcr.Text)
Else
ypcr.Text = ""
End If
ypcr.Locked = True 'False
ypdr.Text = "0.00"
stbar.Panels(2).Text = "Opening Credit Balance "
ypcr.SetFocus

Exit Sub
ypcr_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypcr_DblClick of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ypcr_GotFocus()
On Error GoTo ypcr_GotFocus_Error

ypcr.BackColor = "&HC0FFC0" 'green
If ypdr.Text = "0.00" And val(ypcr.Text) = 0 Then
    ypcr.Locked = True 'False
    ypdr.Text = "0.00"
    stbar.Panels(2).Text = "Opening Credit Balance "
    ypcr.Text = ""
End If

Exit Sub
ypcr_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypcr_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ypcr_KeyPress(KeyAscii As Integer)
On Error GoTo ypcr_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    Call tonum(ypcr, 13, KeyAscii, 0)
End If

Exit Sub
ypcr_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypcr_KeyPress of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ypcr_LostFocus()
On Error GoTo ypcr_LostFocus_Error

ypcr.BackColor = "&H80000005" 'white
If val(ypcr.Text) <> 0 Then
    ypcr.Text = Format(ypcr.Text, "##,##,##,#0.00")
    ypdr.Locked = True
    ypcr.Locked = True
Else
    ypcr.Text = "0.00"
End If

Exit Sub
ypcr_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypcr_LostFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ypdr_DblClick()
On Error GoTo ypdr_DblClick_Error

If val(ypdr.Text) <> 0 Then
ypdr.SelStart = Len(ypdr.Text)
Else
    ypdr.Text = ""
End If
ypdr.Locked = True 'False
stbar.Panels(2).Text = "Opening Debit Balance "
ypcr.Text = "0.00"
ypdr.SetFocus

Exit Sub
ypdr_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypdr_DblClick of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ypdr_GotFocus()
On Error GoTo ypdr_GotFocus_Error

 ypdr.BackColor = "&HC0FFC0"  'green
If ypcr.Text = "0.00" And val(ypdr.Text) = 0 Then
    ypdr.Locked = True 'False
    ypcr.Text = "0.00"
    ypdr.Text = ""
     stbar.Panels(2).Text = "Opening Debit Balance"
End If

Exit Sub
ypdr_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypdr_GotFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ypdr_KeyPress(KeyAscii As Integer)
If Opt = "add" Or Opt = "mod" Then
    Call tonum(ypdr, 13, KeyAscii, 0)
End If
End Sub

Private Sub ypdr_LostFocus()
On Error GoTo ypdr_LostFocus_Error

ypdr.BackColor = "&H80000005" 'white

If val(ypdr.Text) <> 0 Then
    ypdr.Text = Format(ypdr.Text, "##,##,##,#0.00")
    ypcr.Locked = True
    ypdr.Locked = True
    'Txtfields(22).SetFocus
    Exit Sub
Else
    ypdr.Text = "0.00"
    ypcr.SetFocus
End If

Exit Sub
ypdr_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypdr_LostFocus of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

If Option1.value = True Then lopt = "CODE"
If Option2.value = True Then lopt = "DETAIL"
    If lopt = "CODE" Then
    
    
            Dim clsCryRpt As New clsCrystal
            Set clsCryRpt.cryRept = Cry_Supplier_Code
            clsCryRpt.CrystalPrint
                          
            CR.Reset
            CR.Connect = connectstring
            CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            CR.ParameterFields(0) = "@divcode;" & Divcode & ""
            
            CR.WindowShowPrintSetupBtn = True
            CR.WindowShowSearchBtn = True
            CR.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CR.Action = 1
            CR.PrinterCopies = 1
            Screen.MousePointer = 0
            
            
        'DLL REPORT
        '-----------------------------------------------------------
        'Set RPTV = New Report.ReportView
        'pgn = 1
        'lno = 7
        'a = FreeFile
        'Close
        'Open KALFOLDERDATA & "\splis.txt" For Output As #a
        'Call hdsplist
        'Set Rs = New Recordset
        'Rs.Open "Select Distinct slcode,slname from fa_slmas WHERE SLCODE LIKE '" & PartyType & "%'", DB, adOpenStatic, adLockReadOnly
        'Do While Not Rs.EOF
        'Print #a, Space(10) + Padr(Rs("slcode"), 7, " ") + Space(9) + Padr(Rs("slname"), 40, " ")
        'lno = lno + 1
        '
        'If lno > 60 Then
        'lno = 0
        'Print #a, Space(10) & String(70, "-")
        'Print #a, Chr(12)
        'pgn = pgn + 1
        'Call hdsplist
        'End If
        '
        'Rs.MoveNext
        'Loop
        'Print #a, Space(10) & String(70, "-")
        'Print #a, Chr(12)
        'Close #a
        'Call KALBATPROCESS("splis")
        '------------------------------------
'        Open "c:\splis.bat" For Output As #A
'        Print #A, "c:"
'        Print #A, "cd\"
'        Print #A, "type splis.txt>prn"
'        RPTV.txtfile = "c:\splis.txt"
'        RPTV.Batfile = "c:\splis.bat"
'        Close #A
    End If
    If lopt = "DETAIL" Then
      Dim clsCryRp As New clsCrystal
            Set clsCryRp.cryRept = Cry_Supplier_DetailCode
            clsCryRp.CrystalPrint
                          
            CR.Reset
            CR.Connect = connectstring
            CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            CR.ParameterFields(0) = "@divcode;" & Divcode & ""
            
            CR.WindowShowPrintSetupBtn = True
            CR.WindowShowSearchBtn = True
            CR.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CR.Action = 1
            CR.PrinterCopies = 1
            Screen.MousePointer = 0
    
    
    
        'DLL REPORT
        '-----------------------------------------------------------
        'Set RPTV = New Report.ReportView
        'pgn = 1
        'lno = 7
        'a = FreeFile
        'Close
        'Open KALFOLDERDATA & "\splis.txt" For Output As #a
        'Call hdsplistdt
        'Set Rs = New Recordset
        'Rs.Open "Select slcode,slname,isnull(add1,'') as add1,isnull(add2,'') as add2,isnull(add3,'') as add3,isnull(city,'') as city,isnull(pin,' ')as pin,state,country,isnull(isnull(phone1,'') + '  ' +isnull(phone2,''),' ') as phone,email,tngst,tngstdt,cgstdt,cgst,ecc from fa_slmas WHERE SLCODE LIKE '" & PartyType & "%'", DB, adOpenStatic, adLockReadOnly
        'Do While Not Rs.EOF
        'Print #a, Chr(15) + Space(2) + Padr(Rs("slcode"), 7, " ") + Space(1) + Padr(Rs("slname"), 30, " ") + Space(2) + Padr(Rs("phone"), 30, " ") + Space(2) + Padr(Rs("email"), 20, " ") + Space(2) + Padr(Rs("tngst"), 20, " ") + Space(2) + Padr(Rs("cgst"), 20, " ") + Space(2) + Padr(Rs("ECC"), 15, " ")
        'lno = lno + 1
        '
        'If lno > 60 Then
        'lno = 0
        'Print #a, Space(2) & String(153, "-")
        'Print #a, Chr(12)
        'pgn = pgn + 1
        'Call hdsplistdt
        'End If
        '
        'If Not Trim(Rs("add1")) = "" Then
        '    Print #a, Space(2) + Chr(15) + Space(8) + Rs("add1")
        '    lno = lno + 1
        '    Call pbsplistdt
        'End If
        'If Not Trim(Rs("add2")) = "" Then
        '    Print #a, Space(2) + Chr(15) + Space(8) + Rs("add2")
        '    lno = lno + 1
        '    Call pbsplistdt
        'End If
        'If Not Trim(Rs("add3")) = "" Then
        '    Print #a, Space(2) + Chr(15) + Space(8) + Rs("add3")
        '           lno = lno + 1
        '           Call pbsplistdt
        'End If
        '
        'If Not Trim(Rs("pin")) = "" Then
        '    Print #a, Space(2) + Chr(15) + Space(8) + Rs("city");
        '    Print #a, " - " + Rs("pin")
        '    lno = lno + 2
        '    Call pbsplistdt
        'Else
        '    Print #a, Space(2) + Chr(15) + Space(8) + Rs("city")
        '    lno = lno + 1
        '    Call pbsplistdt
        '
        'End If
        'Print #a, Space(2)
        'Call pbsplistdt
        'Rs.MoveNext
        'Loop
        'Print #a, Space(2) & String(153, "-")
        'Print #a, Chr(12)
        ''Print #a, Space(2) + Chr(15) + String(153, "-")
        'Close #a
        'Call KALBATPROCESS("splis")
        '-----------------------------------------------------------
'        Open "c:\splis.bat" For Output As #A
'        Print #A, "c:"
'        Print #A, "cd\"
'        Print #A, "type splis.txt>prn"
'        RPTV.txtfile = "c:\splis.txt"
'        RPTV.Batfile = "c:\splis.bat"
'        Close #A
    End If

Frame2.Visible = False
SSTab1.Visible = True


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form slmaster", vbInformation, head
End Sub

Public Sub hdsplist()
On Error GoTo hdsplist_Error

Print #a, Space(10) + Chr(27) + "E" + CENTRE(divname, 70, " ") + Chr(27) + "F"
Print #a,
Print #a, Space(10) + Padr("Supplier Listing", 44, " ") + Padr("Dt.:", 5, " ") + Padr(Format(pdate, "dd/mm/yyyy"), 12, " ") + Padr("Pg.No:", 6, " ") + Padl(pgn, 3, " ")
Print #a, Space(10) + String(70, "-")
Print #a, Space(10) + Padr("Code", 6, " ") + Space(10) + Padr("Supplier Name", 40, " ")
Print #a, Space(10) + String(70, "-")

Exit Sub
hdsplist_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure hdsplist of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub pbsplist()
On Error GoTo pbsplist_Error

If lno >= 58 Then
Print #a, Space(10) + String(70, "-")
lno = 7
pgn = pgn + 1
Print #a, Chr(12)
Call hdsplist
End If

Exit Sub
pbsplist_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pbsplist of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub hdsplistdt()
On Error GoTo hdsplistdt_Error

Print #a, Space(2) + Chr(18) + Chr(27) + "E" + CENTRE(divname, 70, " ") + Chr(27) + "F"
Print #a,
Print #a, Chr(15) + Space(2) + Chr(18); Padr("Supplier Listing", 63, " ") + Padr("Dt.:", 5, " ") + Padr(Format(pdate, "dd/mm/yyyy"), 12, " ") + Padr("Pg.No:", 6, " ") + Padl(pgn, 3, " ")
Print #a, Chr(15) + Space(2) + Chr(15) + String(153, "-")
Print #a, Space(2) + Chr(15) + Padr("Code", 6, " ") + Space(2) + Padr("Supplier Name", 30, " ") + Space(2); Padr("Phone", 30, " ") + Space(2) + Padr("e-mail", 20, " ") + Space(2) + Padr("TNGST", 20, " ") + Space(2) + Padr("CGST", 20, " ") + Space(2) + Padr("ECC", 15, " ")
Print #a, Space(2) + Chr(15) + String(153, "-")

Exit Sub
hdsplistdt_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure hdsplistdt of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub pbsplistdt()
On Error GoTo pbsplistdt_Error

If lno >= 56 Then
Print #a, Space(2) + Chr(15) + String(153, "-")
lno = 7
pgn = pgn + 1
Print #a, Chr(12)
Call hdsplistdt
End If

Exit Sub
pbsplistdt_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pbsplistdt of Form slmaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Sub PartyLookup()
On Error GoTo PartyLookup_Error

    Frame3.Visible = False
    stbar.Panels(2).Text = "Please Select a Party type"
    LookUp.Clear = True
    If Opt = "add" Then
        Set rsa = New Recordset
        rsa.Open "select prtytyp as Code,prtyhead as Party from FA_PRTY a where  left(a.prtytyp,2) in (select Items from dbo.split('" & PartyType & "',',')) and substring(a.prtytyp,1,1)='C'", DB, adOpenStatic
    ElseIf Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
        Set rsa = New Recordset
        rsa.Open "select  distinct a.prtytyp as Code,prtyhead as Party from FA_PRTY a,FA_SLMAS b where  a.prtytyp in (select Items from dbo.split('" & PartyType & "',',')) and substring(a.prtytyp,1,1)='C' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)", DB, adOpenStatic
    End If

        If rsa.RecordCount = 0 Then
                Screen.MousePointer = 0
                If Opt = "add" Then
                    LookUp.query = "select prtytyp as Code,prtyhead as Supplier from FA_PRTY a where a.prtytyp  in (select Items from dbo.split('" & PartyType & "',',')) and substring(a.prtytyp,1,1)='C'"
                End If
                If Opt = "mod" Or Opt = "del" Then
                    LookUp.query = "select  distinct a.prtytyp as Code,prtyhead as Supplier from FA_PRTY a,FA_SLMAS b where a.prtytyp in (select Items from dbo.split('" & PartyType & "',',')) and substring(a.prtytyp,1,1)='C' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)"
                End If 'for add mode
                LookUp.Caption = "Supplier Type Listing"
                LookUp.DefCol = "Supplier"
                LookUp.ALIGN = "1500,5500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Label5.Caption = "Sub Ledger Listing "
                    If Opt = "add" Then
                        BUTTON(9).Enabled = True
                        BUTTON(10).Enabled = True
                        prty = LookUp.Fields(0)
                        SSTab1.Visible = True
                        txtfields(2).SetFocus
                        prtyTXT = LookUp.Fields(1)
                        If prty = "D2" Then
                            DISTRIB.Visible = True
                            Call SupLookup(LookUp.Fields(0))
                            Exit Sub
                        End If
                    Else
                        SSTab1.Visible = True
                        Call SupLookup(LookUp.Fields(0))
                        Exit Sub
                    End If
                    LookUp.Clear = True
                Else
                    SSTab1.Visible = True
                    Call query_mode
                End If
        Else
            BUTTON(9).Enabled = True
            BUTTON(10).Enabled = True
            prty = rsa(0)
            SSTab1.Visible = True
            txtfields(2).SetFocus
            prtyTXT = rsa(1)
            If Opt <> "add" Then
                DISTRIB.Visible = True
                Call SupLookup(CStr(rsa(0)))
                Exit Sub
            End If
        
        
    End If

 
Exit Sub
PartyLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PartyLookup of Form slmaster", vbInformation, head
End Sub

Sub SupLookup(PartyType As String)
On Error GoTo SupLookup_Error

    Frame3.Visible = False
    stbar.Panels(2).Text = "Please Select a Party type"
    LookUp.Clear = True
    LookUp.query = "select Slcode""Code"",Slname as Supplier from Fa_Slmas where LEFT(SLCODE,2) in (select Items from dbo.split('" & PartyType & "',','))"
    LookUp.Caption = "Supplier  Listing"
    LookUp.DefCol = "Supplier"
    LookUp.ALIGN = "1500,5500"
    LookUp.Show vbModal
    Screen.MousePointer = 0
    If LookUp.Cancel = False Then
            If Label5.Caption = "BROKER LISTING" Then
                txtfields(23).Text = LookUp.Fields(0)
                dbname.Text = LookUp.Fields(1)
                LookUp.Clear = True
                txtfields(3).SetFocus
            Else
                If Opt = "del" Then
                    Dim rsdel As Recordset
                    Set rsdel = New Recordset
                    rsdel.Open "select sum(isnull(debit,0)-isnull(credit,0)) from FA_SLBAL WHERE SLCODE='" & LookUp.Fields(0) & "'", DB
                    If rsdel(0) > 0 Then
                         MsgBox " Balance Amount for this customer is not zero, Cannot be deleted !! ", vbInformation, head
                         Frame1.Visible = False
                         Call BUTTON_Click(10)
                         Exit Sub
                    End If
                End If
                txtfields(0).Text = LookUp.Fields(0)
                BUTTON(9).Enabled = True
                BUTTON(10).Enabled = True
                
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,State_code,Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.OLDSLCODE,S.gststatecode,S.gstinno,s.supptype,s.scanfilename,s.isactive from FA_SLMAS s WHERE  S.SLCODE= '" & LookUp.Fields(0) & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
                Call bindcontls
                
                Set Rs = New Recordset
                Rs.Open "SELECT PRTYHEAD FROM FA_PRTY WHERE PRTYTYP = '" & adoPrimaryRS("PRTYTYP") & "'", DB, adOpenStatic, adLockBatchOptimistic
                If Not Rs.BOF Then
                    prtyTXT.Text = Rs(0)
                End If
                Set Rs = New Recordset
                Set dbname.DataSource = Rs
                Label18.Visible = True
                ypcr.Visible = True
                ypdr.Visible = True
                lblcr.Visible = True
                lbldr.Visible = True
                Dim rsb As Recordset
                Set rsb = New Recordset
                 rsb.Open "select isnull(DEBIT,0),isnull(CREDIT,0) FROM FA_SLBAL WHERE SLCODE='" & adoPrimaryRS("SLCODE") & "' AND substring(YEARMONTH,5,2)='00' AND substring(YEARMONTH,1,4)= year('" & Format(yfdate, "yyyy-mm-dd") & "') ", DB, adOpenStatic, adLockBatchOptimistic
                If Not (rsb.RecordCount = 0) Then
                    ypdr.Text = rsb(0)
                    ypcr.Text = rsb(1)
                Else
                    ypdr.Text = "0.00"
                    ypcr.Text = "0.00"
                End If
                SSTab1.Tab = 0
                vendor.Text = txtfields(0).Text
                
               ' Frame3.Visible = True
               
                Buttonframe.Enabled = True
                TXname.Text = txtfields(2).Text
                If UCase(CustID) = "BALKRISHNA" Then
                    txtfields(2).Locked = False
                End If
                
                BUTTON(9).Enabled = True
                Set dbname.DataSource = Rs
                LookUp.Clear = True
                SSTab1.Visible = True
                Call adddelmod(BUTTON)
                txtfields(3).SetFocus
            End If
    Else
             query_mode
             Call BUTTON_Click(10)
             Exit Sub
    End If


Exit Sub
SupLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SupLookup of Form slmaster", vbInformation, head
End Sub
Sub BrokerLookup()

On Error GoTo BrokerLookup_Error

LookUp.Clear = True
LookUp.query = "select slcode as Code,Slname as Name from fa_slmas where slcode like  '" & brokertype & "%'"
LookUp.Caption = "Agent Listing"
LookUp.DefCol = "Name"
LookUp.ALIGN = "2000,6000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    txtfields(23).Text = LookUp.Fields(0)
    dbname.Text = LookUp.Fields(1)
    txtfields(14).SetFocus
    LookUp.Clear = True
Else
   txtfields(23).Text = ""
   dbname.Text = ""
   txtfields(14).SetFocus
End If


Exit Sub
BrokerLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BrokerLookup of Form slmaster", vbInformation, head
End Sub
'Sub BankLookup()
'
'On Error GoTo BankLookup_Error
'
'LookUp.clear = True
'LookUp.Query = "select Bank_Code""Bank Code"",name""Bank Name"", Branch from IG_BANK where Bank_Code like  '" & Banktype & "%'"
'LookUp.Caption = "Bank Listing"
'LookUp.DefCol = "Bank Name"
'LookUp.ALIGN = "2000,4500,2000"
'LookUp.Show vbModal
'If LookUp.Cancel = False Then
'    TXTFIELDS(30).Text = LookUp.Fields(0)
'    dbname.Text = LookUp.Fields(1)
'    TXTFIELDS(31).SetFocus
'    LookUp.clear = True
'Else
'   TXTFIELDS(23).Text = ""
'   dbname.Text = ""
'   TXTFIELDS(14).SetFocus
'End If
'
'
'Exit Sub
'BankLookup_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure BankLookup of Form slmaster", vbInformation, head
'End Sub
Private Sub cancelFind_Click()
FNDFRME.Visible = False
Buttonframe.Enabled = True
'Frame6.Visible = True
SSTab1.TabEnabled(2) = True
SSTab1.Visible = True
desc.Caption = "Query"
Call query_mode
End Sub

Private Sub Canvelok_Click()
On Error GoTo Canvelok_Click_Error

Canvelok.Default = False
FNDFRME.Visible = False
SSTab1.TabEnabled(2) = True
SSTab1.Visible = True
desc.Caption = "Find"

        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,S.TINNO,S.STATE_CODE,Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.OLDSLCODE from FA_SLMAS s WHERE  S.SLCODE= '" & grdFind.Columns(0).Text & "'  Order by slcode", db, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,S.TINNO,S.STATE_CODE,Tinno,s.BankAcNo,s.CourierThrough,s.IFSCCode,S.OLDSLCODE,S.gststatecode,S.gstinno,s.supptype,s.scanfilename ,s.isactive from FA_SLMAS s WHERE  S.SLCODE= '" & grdFind.Columns(0).Text & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Set Rs = New Recordset
        Rs.Open "SELECT PRTYHEAD FROM FA_PRTY WHERE PRTYTYP = '" & adoPrimaryRS("PRTYTYP") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
            prtyTXT.Text = Rs(0)
        End If
        Set Rs = New Recordset
        Set dbname.DataSource = Rs
        Label18.Visible = True
        ypcr.Visible = True
        ypdr.Visible = True
        lblcr.Visible = True
        lbldr.Visible = True
        Dim rsb As Recordset
        Set rsb = New Recordset
         rsb.Open "select isnull(DEBIT,0),isnull(CREDIT,0) FROM FA_SLBAL WHERE SLCODE='" & adoPrimaryRS("SLCODE") & "' AND substring(YEARMONTH,5,2)='00' AND substring(YEARMONTH,1,4)= year('" & Format(yfdate, "yyyy-mm-dd") & "') ", DB, adOpenStatic, adLockBatchOptimistic
        If Not (rsb.RecordCount = 0) Then
            ypdr.Text = rsb(0)
            ypcr.Text = rsb(1)
        Else
            ypdr.Text = "0.00"
            ypcr.Text = "0.00"
        End If
        SSTab1.Tab = 0
        vendor.Text = txtfields(0).Text

        TXname.Text = txtfields(2).Text
        BUTTON(9).Enabled = False
        Set dbname.DataSource = Rs


Exit Sub
Canvelok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Canvelok_Click of Form slmaster", vbInformation, head
        
End Sub
Private Sub txtFind_Change()
On Error GoTo txtFind_Change_Error

If CHOICE_FIND = "C" Then
Set Rs = New Recordset
Rs.Open "SELECT slcode,slname FROM fa_slmas where left(slcode,2) in (select Items from dbo.split('" & PartyType & "',',')) AND slcode like '" & Trim(txtFind.Text) & "%'", NewCon, adOpenStatic, adLockBatchOptimistic
    If Not Rs.BOF Then
         Set grdFind.DataSource = Rs
         grdFind.Columns(0).Width = 1000
         grdFind.Columns(1).Width = 6000
    Else
        Set grdFind.DataSource = Nothing
        MsgBox "No Records Found", vbInformation, head
        Buttonframe.Enabled = True
        Exit Sub
    End If
Else
    Set Rs = New Recordset
    Rs.Open "SELECT slcode,slname  FROM fa_slmas where left(slcode,2) in (select Items from dbo.split('" & PartyType & "',',')) AND slname like '" & Trim(txtFind.Text) & "%'", NewCon, adOpenStatic, adLockBatchOptimistic
    If Not Rs.BOF Then
        Set grdFind.DataSource = Rs
        grdFind.Columns(0).Width = 1000
         grdFind.Columns(1).Width = 6000

    Else
        Set grdFind.DataSource = Nothing
        MsgBox "No Records Found", vbInformation, head
        Buttonframe.Enabled = True
        Exit Sub
    End If
End If


Exit Sub
txtFind_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFind_Change of Form slmaster", vbInformation, head
End Sub
Private Sub txtFind_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 40 Then
    grdFind.SetFocus
End If
End Sub

Sub StateLookup()
On Error GoTo StateLookup_Error

'Set rsa = New Recordset
'rsa.Open "select * from ig_state", DB, adOpenStatic
'
'If rsa.RecordCount > 0 Then
'        Set rsa = New Recordset
'        rsa.Open "select State_code as Code,Name as Name from ig_State where state_code='" & txtFields(35).Text & "'", DB, adOpenStatic
'        If rsa.RecordCount = 0 Then
'            LookUp.clear = True
'            LookUp.Query = "select State_code as Code,Name as Name from ig_State "
'            LookUp.Caption = "State Listing"
'            LookUp.DefCol = "Name"
'            LookUp.ALIGN = "2000,6000"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                txtFields(35).Text = LookUp.Fields(0)
'                txtFields(6).Text = LookUp.Fields(1)
'                txtFields(6).Locked = True
'                LookUp.clear = True
'            Else
'                txtFields(6).Text = ""
'               txtFields(35).Text = ""
'               txtFields(35).SetFocus
'            End If
'        Else
'            txtFields(6).Text = rsa("name")
'        End If
'Else
'    txtFields(35).Text = ""
'    txtFields(6).Text = ""
'End If


Exit Sub
StateLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StateLookup of Form slmaster", vbInformation, head
End Sub

Sub CityLookup()
On Error GoTo StateLookup_Error
CITY:
    LookUp.Clear = True
    LookUp.query = "SELECT Area_code ""Area Code"", a.NAME""Area Name"",B.STATE_CODE as ""State Code"",B.NAME AS State,C.NAME AS Country,ISNULL(B.GSTSTATECODE,'0') GSTSTATECODE,isnull(b.STATE_FLAG,'') STATE_FLAG  FROM IG_AREA a, IG_STATE B,ig_countRY C WHERE A.STATE_CODE=B.STATE_CODE AND A.COUNTRY_CODE=C.COUNTRY_CODE"
    LookUp.Caption = "State Listing"
    LookUp.DefCol = "Area Name"
    LookUp.ALIGN = "1500,2000,0,2000,2000,1000"
    
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    
   
        STATEFLAG = LookUp.Fields("STATE_FLAG")
      
    
        txtfields(5).Text = LookUp.Fields(1)
        txtfields(35).Text = LookUp.Fields(2)
        txtfields(6).Text = LookUp.Fields(3)
        txtfields(7).Text = LookUp.Fields(4)
        
        If STATEFLAG <> "F" Then
            txtfields(69).Text = LookUp.Fields("GSTSTATECODE")
            txtfields(70).Text = LookUp.Fields("GSTSTATECODE")
        End If
'        txtFields(5).Locked = True
        txtfields(35).Locked = True
        txtfields(6).Locked = True
        txtfields(7).Locked = True
           txtfields(8).SetFocus
        LookUp.Clear = True
    Else
        txtfields(5).Text = ""
        txtfields(35).Text = ""
        txtfields(6).Text = ""
        txtfields(7).Text = ""
        txtfields(5).SetFocus
        
    End If


Exit Sub
StateLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StateLookup of Form slmaster", vbInformation, head
End Sub

Private Sub excelrecdate()

        Set XLSheet = Myxl.ActiveSheet
        
        Myxl.Caption = "Supplier List"
   
        Set rsnew = New Recordset
        rsnew.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB

        XLSheet.Cells(1, 1).value = ""
        XLSheet.Range("A1", "W1").MergeCells = True
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        

        XLSheet.Cells(2, 5).value = "Supplier List"

        XLSheet.Range("A2", "W2").MergeCells = True
        With XLSheet.Range("A2", "W2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With


Set rs1 = New Recordset


    On Error Resume Next
               

        Set Rs = New Recordset
                
        Rs.Open "exec  KSP_EXCELSUPPMSTRMI ", DB, adOpenKeyset, adLockReadOnly
        
        If Not Rs.EOF Then
          co = 3

                XLSheet.Cells(co, 1).value = " S.No. "
                XLSheet.Cells(co, 2).value = " Supplier Code. "
                XLSheet.Cells(co, 3).value = " Supplier Name. "
                XLSheet.Cells(co, 4).value = " Address1. "
                XLSheet.Cells(co, 5).value = " Address2. "
                XLSheet.Cells(co, 6).value = " Address3. "
                XLSheet.Cells(co, 7).value = " City. "
                XLSheet.Cells(co, 8).value = " Pin. "
                XLSheet.Cells(co, 9).value = " State. "
                XLSheet.Cells(co, 10).value = " Country. "
                XLSheet.Cells(co, 11).value = " GSTIN. "
                XLSheet.Cells(co, 12).value = " Statecode. "
                XLSheet.Cells(co, 13).value = " PAN No. "
                XLSheet.Cells(co, 14).value = " UAM No. "
                XLSheet.Cells(co, 15).value = " Phone No. "
                XLSheet.Cells(co, 16).value = " Email. "
                XLSheet.Cells(co, 17).value = " Contact Person. "
                XLSheet.Cells(co, 18).value = " Designation. "
                XLSheet.Cells(co, 19).value = " MSME Registration. "
                XLSheet.Cells(co, 20).value = " Type of Enterprises. "
                XLSheet.Cells(co, 21).value = " Group. "
                XLSheet.Cells(co, 22).value = " Credit Days. "
                XLSheet.Cells(co, 23).value = " Payment terms. "
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "W" & m_ROW

                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                I = 0
                Do While Not Rs.EOF
                'intervalminutes = 0
            m_ROW = XLSheet.UsedRange.Rows.Count
            
            XLSheet.Cells(Max, 1) = Rs.Fields("SNO")
            XLSheet.Cells(Max, 2) = Rs.Fields("slcode")
            XLSheet.Cells(Max, 3) = Trim(Rs.Fields("slname"))
            XLSheet.Cells(Max, 4) = Rs.Fields("add1")
            XLSheet.Cells(Max, 5) = Rs.Fields("add2")
            XLSheet.Cells(Max, 6) = Rs.Fields("add3")
            XLSheet.Cells(Max, 7) = Rs.Fields("city")
            XLSheet.Cells(Max, 8) = Rs.Fields("pin")
            XLSheet.Cells(Max, 9) = Rs.Fields("state")
            XLSheet.Cells(Max, 10) = Rs.Fields("country")
            XLSheet.Cells(Max, 11) = Rs.Fields("GSTINNO")
            XLSheet.Cells(Max, 12) = Rs.Fields("state_code")
            XLSheet.Cells(Max, 13) = Rs.Fields("pan")
            XLSheet.Cells(Max, 14) = Rs.Fields("UAM")
            XLSheet.Cells(Max, 15) = Rs.Fields("phone1")
            XLSheet.Cells(Max, 16) = Rs.Fields("email")
            XLSheet.Cells(Max, 17) = Rs.Fields("contper")
            XLSheet.Cells(Max, 18) = Rs.Fields("contdesg")
            XLSheet.Cells(Max, 19) = Rs.Fields("MSME_Registration")
            XLSheet.Cells(Max, 20) = Rs.Fields("TypeofEnterprise")
            XLSheet.Cells(Max, 21) = Rs.Fields("GROUPCODE")
            XLSheet.Cells(Max, 22) = Rs.Fields("crddays")
            XLSheet.Cells(Max, 23) = Rs.Fields("pay_terms")
            
            
           m = XLSheet.UsedRange.Rows.Count

                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
                Rs.MoveNext
                m_ROW = XLSheet.UsedRange.Rows.Count

                m_ROW = XLSheet.UsedRange.Rows.Count
                m = XLSheet.UsedRange.Rows.Count
              
                lr = "A" & m_ROW
                HR = "W" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = False
                .Size = 9
                .Color = vbBlack
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                
                Max = Max + 1
                I = I + 1
               Loop
                   
                
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit

                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                   
                 lr = "A" & m_ROW
                 HR = "W" & m_ROW
                 
               
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit

                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & 1
                HR = "W" & m_ROW
                
              
                With XLSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                .Font.Size = 9
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With

                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With

                Myxl.Application.Visible = True
            Set rsnew = New Recordset
        rsnew.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB
        XLSheet.Cells(1, 1).value = "                                                                                                                                                                                  " & rsnew(0) & "   "
        XLSheet.Range("A1", "W1").HorizontalAlignment = Excel.xlCenter
        XLSheet.Range("A1", "W1").MergeCells = True
        With XLSheet.Range("A1", "W1").Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        .HorizontalAlignment = Excel.xlCenter
        End With

                Rs.Close
                Set XLSheet = Nothing
                Set Myxl = Nothing

    Else
               MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                 Exit Sub
    End If
    End Sub


