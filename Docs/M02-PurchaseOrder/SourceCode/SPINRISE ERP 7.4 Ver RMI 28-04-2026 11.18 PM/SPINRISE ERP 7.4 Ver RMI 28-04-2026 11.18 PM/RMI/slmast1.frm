VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Begin VB.Form slmaster1 
   ClientHeight    =   6345
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8475
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6345
   ScaleWidth      =   8475
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   5085
      Left            =   240
      TabIndex        =   15
      Top             =   960
      Width           =   9000
      _ExtentX        =   15875
      _ExtentY        =   8969
      _Version        =   393216
      Tab             =   1
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
      TabCaption(0)   =   "Address"
      TabPicture(0)   =   "slmast1.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Frame4"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Details"
      TabPicture(1)   =   "slmast1.frx":001C
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Frame5"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame7"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "Balances"
      TabPicture(2)   =   "slmast1.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame8"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "Frame9"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).ControlCount=   2
      Begin VB.Frame Frame8 
         Height          =   660
         Left            =   -74880
         TabIndex        =   100
         Top             =   360
         Width           =   8775
         Begin VB.TextBox pname 
            DataField       =   "slname"
            Height          =   330
            Left            =   3060
            TabIndex        =   112
            Top             =   225
            Width           =   5550
         End
         Begin VB.TextBox party 
            DataField       =   "slcode"
            Height          =   330
            Left            =   1875
            TabIndex        =   111
            Top             =   225
            Width           =   1100
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Code"
            Height          =   240
            Left            =   360
            TabIndex        =   101
            Top             =   300
            Width           =   495
         End
      End
      Begin VB.Frame Frame9 
         Height          =   3975
         Left            =   -74880
         TabIndex        =   102
         Top             =   990
         Visible         =   0   'False
         Width           =   8775
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   4
            Left            =   1170
            TabIndex        =   148
            Top             =   1350
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   4
            Left            =   2625
            TabIndex        =   147
            Top             =   1350
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   5
            Left            =   1170
            TabIndex        =   146
            Top             =   1710
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   5
            Left            =   2625
            TabIndex        =   145
            Top             =   1710
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   6
            Left            =   1170
            TabIndex        =   144
            Top             =   2070
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   6
            Left            =   2625
            TabIndex        =   143
            Top             =   2070
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   7
            Left            =   1170
            TabIndex        =   142
            Top             =   2430
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   7
            Left            =   2625
            TabIndex        =   141
            Top             =   2430
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   8
            Left            =   1170
            TabIndex        =   140
            Top             =   2790
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   8
            Left            =   2625
            TabIndex        =   139
            Top             =   2790
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   9
            Left            =   1170
            TabIndex        =   138
            Top             =   3150
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
            Height          =   330
            Index           =   9
            Left            =   2625
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   137
            Top             =   3150
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   10
            Left            =   5340
            TabIndex        =   136
            Top             =   1350
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   11
            Left            =   5340
            TabIndex        =   135
            Top             =   1710
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   1
            Left            =   5340
            TabIndex        =   134
            Top             =   2430
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   2
            Left            =   5340
            TabIndex        =   133
            Top             =   2790
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   3
            Left            =   5340
            TabIndex        =   132
            Top             =   3150
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
            Height          =   330
            Index           =   10
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   131
            Top             =   1350
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
            Height          =   330
            Index           =   11
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   130
            Top             =   1710
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
            Height          =   330
            Index           =   12
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   129
            Top             =   2070
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
            Height          =   330
            Index           =   1
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   128
            Top             =   2430
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
            Height          =   330
            Index           =   2
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   127
            Top             =   2790
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
            Height          =   330
            Index           =   3
            Left            =   6810
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   126
            Top             =   3150
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   12
            Left            =   5340
            TabIndex        =   125
            Top             =   2070
            Width           =   1455
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   240
            Left            =   7560
            TabIndex        =   164
            Top             =   1125
            Width           =   525
         End
         Begin VB.Label Label29 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   240
            Left            =   3240
            TabIndex        =   163
            Top             =   1110
            Width           =   645
         End
         Begin VB.Label Label28 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   240
            Left            =   2040
            TabIndex        =   162
            Top             =   1110
            Width           =   480
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "September"
            Height          =   240
            Left            =   360
            TabIndex        =   161
            Top             =   3225
            Width           =   1005
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "August"
            Height          =   240
            Left            =   360
            TabIndex        =   160
            Top             =   2865
            Width           =   615
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "July"
            Height          =   240
            Left            =   360
            TabIndex        =   159
            Top             =   2505
            Width           =   360
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "June"
            Height          =   240
            Left            =   360
            TabIndex        =   158
            Top             =   2145
            Width           =   435
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "May"
            Height          =   240
            Left            =   360
            TabIndex        =   157
            Top             =   1785
            Width           =   390
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "April"
            Height          =   240
            Left            =   360
            TabIndex        =   156
            Top             =   1425
            Width           =   405
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   240
            Left            =   6120
            TabIndex        =   155
            Top             =   1125
            Width           =   480
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "October"
            Height          =   240
            Index           =   0
            Left            =   4350
            TabIndex        =   154
            Top             =   1425
            Width           =   720
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "November"
            Height          =   240
            Index           =   1
            Left            =   4350
            TabIndex        =   153
            Top             =   1785
            Width           =   960
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "December"
            Height          =   240
            Index           =   2
            Left            =   4350
            TabIndex        =   152
            Top             =   2145
            Width           =   960
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "January"
            Height          =   240
            Index           =   3
            Left            =   4350
            TabIndex        =   151
            Top             =   2505
            Width           =   720
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "February"
            Height          =   240
            Index           =   4
            Left            =   4350
            TabIndex        =   150
            Top             =   2865
            Width           =   810
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "March"
            Height          =   240
            Index           =   5
            Left            =   4350
            TabIndex        =   149
            Top             =   3225
            Width           =   555
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   240
            Left            =   4440
            TabIndex        =   110
            Top             =   165
            Width           =   480
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   240
            Left            =   6000
            TabIndex        =   109
            Top             =   165
            Width           =   525
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Current Balance"
            Height          =   240
            Left            =   2085
            TabIndex        =   108
            Top             =   765
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
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   3585
            TabIndex        =   107
            Top             =   735
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
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   5040
            TabIndex        =   106
            Top             =   735
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
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   5040
            TabIndex        =   105
            Top             =   375
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
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   3585
            TabIndex        =   104
            Top             =   375
            Width           =   1455
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Opening Balance"
            Height          =   240
            Left            =   2085
            TabIndex        =   103
            Top             =   405
            Width           =   1560
         End
      End
      Begin VB.Frame Frame4 
         Height          =   4605
         Left            =   -74880
         TabIndex        =   56
         Top             =   360
         Width           =   8775
         Begin VB.TextBox prtyTXT 
            DataField       =   "prtyhead"
            Height          =   330
            Left            =   3270
            Locked          =   -1  'True
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   705
            Width           =   5370
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD2"
            Height          =   330
            Index           =   4
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   17
            Top             =   1545
            Width           =   7125
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD1"
            Height          =   330
            Index           =   3
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   16
            Top             =   1215
            Width           =   7125
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SLCODE"
            Enabled         =   0   'False
            Height          =   330
            Index           =   0
            Left            =   1500
            TabIndex        =   11
            Top             =   375
            Width           =   1100
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CITY"
            Height          =   330
            Index           =   5
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   19
            Top             =   2205
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "STATE"
            Height          =   330
            Index           =   6
            Left            =   1500
            MaxLength       =   25
            TabIndex        =   21
            Top             =   2535
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "COUNTRY"
            Height          =   330
            Index           =   7
            Left            =   5655
            MaxLength       =   30
            TabIndex        =   22
            Top             =   2535
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PIN"
            Height          =   330
            Index           =   8
            Left            =   5655
            MaxLength       =   6
            TabIndex        =   20
            Top             =   2205
            Width           =   915
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PHONE1"
            Height          =   330
            Index           =   9
            Left            =   1500
            MaxLength       =   20
            TabIndex        =   23
            Top             =   2865
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PHONE2"
            Height          =   330
            Index           =   10
            Left            =   5655
            MaxLength       =   20
            TabIndex        =   24
            Top             =   2865
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "FAX"
            Height          =   330
            Index           =   11
            Left            =   5655
            MaxLength       =   20
            TabIndex        =   26
            Top             =   3195
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "EMAIL"
            Height          =   330
            Index           =   12
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   27
            Top             =   3525
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "WEBADDR"
            Height          =   330
            Index           =   13
            Left            =   5655
            MaxLength       =   40
            TabIndex        =   28
            Top             =   3525
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ABBR"
            Height          =   330
            Index           =   1
            Left            =   1500
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   13
            Top             =   705
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "telegram"
            Height          =   330
            Index           =   32
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   25
            Top             =   3195
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD3"
            Height          =   330
            Index           =   34
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   18
            Top             =   1875
            Width           =   7125
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SLNAME"
            Height          =   330
            Index           =   2
            Left            =   3270
            TabIndex        =   12
            Top             =   375
            Width           =   5370
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contphone"
            Height          =   330
            Index           =   20
            Left            =   7230
            MaxLength       =   30
            TabIndex        =   31
            Top             =   4020
            Width           =   1365
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contdesg"
            Height          =   330
            Index           =   21
            Left            =   4260
            MaxLength       =   30
            TabIndex        =   30
            Top             =   4020
            Width           =   1815
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contper"
            Height          =   330
            Index           =   22
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   29
            Top             =   4020
            Width           =   1800
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Code"
            Height          =   240
            Left            =   360
            TabIndex        =   73
            Top             =   450
            Width           =   495
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Name"
            Height          =   240
            Left            =   2745
            TabIndex        =   72
            Top             =   405
            Width           =   555
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Abbr"
            Height          =   240
            Left            =   360
            TabIndex        =   71
            Top             =   780
            Width           =   435
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Address"
            Height          =   240
            Left            =   360
            TabIndex        =   70
            Top             =   1290
            Width           =   765
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "City"
            Height          =   240
            Index           =   0
            Left            =   360
            TabIndex        =   69
            Top             =   2280
            Width           =   330
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "State"
            Height          =   240
            Left            =   360
            TabIndex        =   68
            Top             =   2610
            Width           =   465
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Country"
            Height          =   240
            Left            =   4920
            TabIndex        =   67
            Top             =   2610
            Width           =   675
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "PIN"
            Height          =   240
            Left            =   4920
            TabIndex        =   66
            Top             =   2280
            Width           =   330
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Phone"
            Height          =   240
            Left            =   360
            TabIndex        =   65
            Top             =   2940
            Width           =   585
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Fax"
            Height          =   240
            Left            =   4920
            TabIndex        =   64
            Top             =   3270
            Width           =   330
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "E-Mail"
            Height          =   240
            Left            =   360
            TabIndex        =   63
            Top             =   3600
            Width           =   570
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Web site"
            Height          =   240
            Left            =   4800
            TabIndex        =   62
            Top             =   3600
            Width           =   915
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Telegram"
            Height          =   240
            Index           =   19
            Left            =   360
            TabIndex        =   61
            Top             =   3270
            Width           =   885
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            Caption         =   "Phone"
            Height          =   240
            Left            =   4920
            TabIndex        =   60
            Top             =   2940
            Width           =   585
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Phone No."
            Height          =   240
            Index           =   9
            Left            =   6330
            TabIndex        =   59
            Top             =   4095
            Width           =   945
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Contact Person"
            Height          =   240
            Index           =   7
            Left            =   120
            TabIndex        =   58
            Top             =   4095
            Width           =   1605
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Desig."
            Height          =   240
            Index           =   8
            Left            =   3570
            TabIndex        =   57
            Top             =   4095
            Width           =   585
         End
      End
      Begin VB.Frame Frame7 
         Height          =   3975
         Left            =   120
         TabIndex        =   77
         Top             =   990
         Width           =   8775
         Begin VB.TextBox tax 
            Enabled         =   0   'False
            Height          =   330
            Left            =   2340
            Locked          =   -1  'True
            TabIndex        =   124
            Top             =   3480
            Width           =   2145
         End
         Begin VB.TextBox TXTFIELDS 
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
            Enabled         =   0   'False
            Height          =   330
            Index           =   33
            Left            =   5970
            MaxLength       =   8
            TabIndex        =   123
            Top             =   3480
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   29
            Left            =   1830
            TabIndex        =   122
            Top             =   3480
            Width           =   495
         End
         Begin VB.TextBox area 
            Enabled         =   0   'False
            Height          =   330
            Left            =   2340
            Locked          =   -1  'True
            TabIndex        =   121
            Top             =   3150
            Width           =   2145
         End
         Begin VB.TextBox bank1 
            Enabled         =   0   'False
            Height          =   330
            Left            =   2340
            Locked          =   -1  'True
            TabIndex        =   120
            Top             =   2820
            Width           =   2145
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   30
            Left            =   1830
            TabIndex        =   119
            Top             =   2820
            Width           =   495
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CRDDAYS"
            Height          =   330
            Index           =   27
            Left            =   1830
            MaxLength       =   3
            TabIndex        =   118
            Top             =   2490
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PAY_TERMS"
            Height          =   330
            Index           =   26
            Left            =   1830
            MultiLine       =   -1  'True
            TabIndex        =   117
            Top             =   2160
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   24
            Left            =   1830
            TabIndex        =   116
            Top             =   3150
            Width           =   495
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ECC"
            Height          =   330
            Index           =   18
            Left            =   1830
            MaxLength       =   20
            TabIndex        =   115
            Top             =   1830
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CGST"
            Height          =   330
            Index           =   15
            Left            =   1830
            MaxLength       =   30
            TabIndex        =   114
            Top             =   1500
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "TNGST"
            Height          =   330
            Index           =   14
            Left            =   1830
            MaxLength       =   30
            MultiLine       =   -1  'True
            TabIndex        =   113
            Top             =   1170
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "TNGSTDT"
            Height          =   330
            Index           =   16
            Left            =   5970
            TabIndex        =   35
            Top             =   1155
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CGSTDT"
            Height          =   330
            Index           =   17
            Left            =   5970
            TabIndex        =   36
            Top             =   1485
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
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
            Left            =   5970
            MaxLength       =   20
            TabIndex        =   37
            Top             =   1815
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   25
            Left            =   5970
            TabIndex        =   40
            Top             =   3150
            Width           =   495
         End
         Begin VB.TextBox TXTFIELDS 
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
            Height          =   330
            Index           =   28
            Left            =   5970
            MaxLength       =   20
            TabIndex        =   38
            Top             =   2490
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   31
            Left            =   5970
            TabIndex        =   39
            Top             =   2820
            Width           =   495
         End
         Begin VB.TextBox bank2 
            Enabled         =   0   'False
            Height          =   330
            Left            =   6480
            Locked          =   -1  'True
            TabIndex        =   80
            Top             =   2820
            Width           =   2145
         End
         Begin VB.TextBox carrier 
            Enabled         =   0   'False
            Height          =   330
            Left            =   6480
            Locked          =   -1  'True
            TabIndex        =   79
            Top             =   3150
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
            Height          =   330
            Left            =   1830
            TabIndex        =   32
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
            Height          =   330
            Left            =   4485
            TabIndex        =   33
            Top             =   172
            Width           =   1800
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "BRCODE"
            Height          =   330
            Index           =   23
            Left            =   1830
            Locked          =   -1  'True
            TabIndex        =   34
            Top             =   840
            Width           =   1305
         End
         Begin VB.TextBox dbname 
            DataField       =   "dbname"
            Height          =   330
            Left            =   3150
            Locked          =   -1  'True
            TabIndex        =   78
            Top             =   840
            Width           =   2760
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "GST No."
            Height          =   240
            Index           =   1
            Left            =   360
            TabIndex        =   99
            Top             =   1245
            Width           =   780
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "CST No."
            Height          =   240
            Index           =   2
            Left            =   360
            TabIndex        =   98
            Top             =   1575
            Width           =   765
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   240
            Index           =   3
            Left            =   5040
            TabIndex        =   97
            Top             =   1230
            Width           =   435
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   240
            Index           =   4
            Left            =   5040
            TabIndex        =   96
            Top             =   1560
            Width           =   435
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "ECC No."
            Height          =   240
            Index           =   5
            Left            =   360
            TabIndex        =   95
            Top             =   1905
            Width           =   765
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "PAN No."
            Height          =   240
            Index           =   6
            Left            =   5040
            TabIndex        =   94
            Top             =   1890
            Width           =   780
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Area"
            Enabled         =   0   'False
            Height          =   240
            Index           =   11
            Left            =   360
            TabIndex        =   93
            Top             =   3225
            Width           =   435
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Carrier"
            Enabled         =   0   'False
            Height          =   240
            Index           =   12
            Left            =   5040
            TabIndex        =   92
            Top             =   3225
            Width           =   600
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Payment Terms"
            Height          =   240
            Index           =   13
            Left            =   360
            TabIndex        =   91
            Top             =   2235
            Width           =   1425
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Credit Days"
            Height          =   240
            Index           =   14
            Left            =   360
            TabIndex        =   90
            Top             =   2565
            Width           =   1050
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Credit Limit"
            Height          =   240
            Index           =   15
            Left            =   4800
            TabIndex        =   89
            Top             =   2565
            Width           =   1215
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Bank1"
            Enabled         =   0   'False
            Height          =   240
            Index           =   17
            Left            =   360
            TabIndex        =   88
            Top             =   2895
            Width           =   570
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Bank2"
            Enabled         =   0   'False
            Height          =   240
            Index           =   18
            Left            =   5040
            TabIndex        =   87
            Top             =   2895
            Width           =   570
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Tax"
            Enabled         =   0   'False
            Height          =   240
            Index           =   10
            Left            =   360
            TabIndex        =   86
            Top             =   3555
            Width           =   345
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Insurance  %"
            Enabled         =   0   'False
            Height          =   240
            Index           =   20
            Left            =   5040
            TabIndex        =   85
            Top             =   3555
            Width           =   1140
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Opening Balance"
            Height          =   240
            Left            =   360
            TabIndex        =   84
            Top             =   255
            Width           =   1560
         End
         Begin VB.Label lbldr 
            AutoSize        =   -1  'True
            Caption         =   "(Debit)"
            Height          =   240
            Left            =   3690
            TabIndex        =   83
            Top             =   240
            Visible         =   0   'False
            Width           =   600
         End
         Begin VB.Label lblcr 
            AutoSize        =   -1  'True
            Caption         =   "(Credit)"
            Height          =   240
            Left            =   6330
            TabIndex        =   82
            Top             =   240
            Visible         =   0   'False
            Width           =   645
         End
         Begin VB.Label DISTRIB 
            AutoSize        =   -1  'True
            Caption         =   "Broker"
            Height          =   240
            Left            =   360
            TabIndex        =   81
            Top             =   915
            Width           =   600
         End
      End
      Begin VB.Frame Frame5 
         Height          =   660
         Left            =   120
         TabIndex        =   74
         Top             =   360
         Width           =   8775
         Begin VB.TextBox TXname 
            DataField       =   "slname"
            Enabled         =   0   'False
            Height          =   330
            Left            =   3060
            MaxLength       =   60
            TabIndex        =   167
            Top             =   225
            Width           =   5550
         End
         Begin VB.TextBox vendor 
            DataField       =   "slcode"
            Enabled         =   0   'False
            Height          =   330
            Left            =   1875
            MaxLength       =   6
            TabIndex        =   75
            Top             =   225
            Width           =   1100
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Code"
            Height          =   240
            Left            =   360
            TabIndex        =   76
            Top             =   300
            Width           =   495
         End
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -30
      TabIndex        =   171
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   30
         Picture         =   "slmast1.frx":0054
         Style           =   1  'Graphical
         TabIndex        =   175
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":03EB
         Height          =   510
         Index           =   4
         Left            =   555
         Picture         =   "slmast1.frx":06F5
         Style           =   1  'Graphical
         TabIndex        =   174
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":0A8A
         Height          =   510
         Index           =   8
         Left            =   2655
         Picture         =   "slmast1.frx":0ED4
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "slmast1.frx":1236
         Height          =   510
         Index           =   10
         Left            =   3705
         Picture         =   "slmast1.frx":1540
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":18BC
         Height          =   510
         Index           =   9
         Left            =   3180
         Picture         =   "slmast1.frx":1BC6
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":1F68
         Height          =   510
         Index           =   11
         Left            =   4230
         Picture         =   "slmast1.frx":23B2
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":2747
         Height          =   510
         Index           =   7
         Left            =   2145
         Picture         =   "slmast1.frx":2B91
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "slmast1.frx":2EE1
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   870
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":3278
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "slmast1.frx":3582
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":38FC
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
         Left            =   0
         Picture         =   "slmast1.frx":3C06
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":3FA2
         Height          =   510
         Index           =   5
         Left            =   1110
         Picture         =   "slmast1.frx":43EC
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":4751
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "slmast1.frx":4A5B
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "slmast1.frx":4DEE
         Height          =   510
         Index           =   6
         Left            =   1635
         Picture         =   "slmast1.frx":5238
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
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
         Left            =   6750
         TabIndex        =   173
         Top             =   255
         Width           =   840
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
         Left            =   8235
         TabIndex        =   172
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   166
      Top             =   6045
      Width           =   8475
      _ExtentX        =   14949
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "04/02/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "15:42"
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
   Begin VB.Frame Frame3 
      Height          =   3390
      Left            =   1815
      TabIndex        =   46
      Top             =   1560
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
         TabIndex        =   51
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
         TabIndex        =   50
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
         TabIndex        =   49
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
         TabIndex        =   48
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
         TabIndex        =   47
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
         Left            =   30
         TabIndex        =   52
         Top             =   150
         Width           =   5670
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H80000002&
         BorderWidth     =   2
         Height          =   2745
         Left            =   60
         Top             =   600
         Width           =   5595
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
      Height          =   5115
      Left            =   240
      TabIndex        =   42
      Top             =   930
      Visible         =   0   'False
      Width           =   9060
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
         Left            =   4455
         TabIndex        =   45
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
         Left            =   3015
         TabIndex        =   44
         Top             =   4245
         Width           =   1095
      End
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3255
         Left            =   900
         TabIndex        =   165
         Top             =   720
         Width           =   7095
         _ExtentX        =   12515
         _ExtentY        =   5741
         ForeColor       =   -2147483635
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
         Left            =   30
         TabIndex        =   43
         Top             =   90
         Width           =   8985
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H80000002&
         Height          =   4980
         Left            =   30
         Top             =   90
         Width           =   8985
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   930
      TabIndex        =   53
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
         TabIndex        =   170
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
         TabIndex        =   169
         Top             =   1680
         Width           =   975
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   1380
         TabIndex        =   55
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
         TabIndex        =   168
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
         TabIndex        =   54
         Top             =   1005
         Width           =   570
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
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   240
      TabIndex        =   41
      Top             =   600
      Width           =   1095
   End
End
Attribute VB_Name = "slmaster1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim rsP As Recordset
Dim repo As Report.ReportView
Dim DB As Connection
Dim Opt As String
Dim sl As Integer
Dim prty As String
Dim found1, found2, found3 As Boolean
Dim cb, cb1, cg As Variant
Dim dbs, crs, db1 As Variant
Dim PT As Recordset
Private Sub BUTTON_Click(Index As Integer)

Select Case Index
Case 0
    Opt = "add"
    choi(0).value = True
    desc.Caption = "Addition"
    heading.Visible = True
    DATLAB.Caption = pdate
    SSTab1.TabEnabled(2) = False
    Label18.Visible = True
    SSTab1.Visible = False
    ypcr.Visible = True
    ypdr.Visible = True
    lblcr.Visible = True
    lbldr.Visible = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select SLCODE,SLNAME,ABBR,ADD1,ADD2,ADD3,CITY,PIN,STATE,COUNTRY,PHONE1,PHONE2,EMAIL,WEBADDR,FAX,BANKADD1,BANKADD2,TNGST,CGST,TNGSTDT,CGSTDT,ECC,PAN,CONTPER,CONTDESG,CONTPHONE,PAY_TERMS,CRDDAYS,CRLIMIT,AREACODE,CARCODE,TELEGRAM,TRN_DEBT,PRTYTYP,BRCODE,TAX_CODE,INSPER from FA_SLMAS  where 1 = 2 ", DB, adOpenStatic, adLockBatchOptimistic
    'Bind the text boxes,check boxes and option buttons  to the data source
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.AddNew
    DB.BeginTrans
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
    Buttonframe.Enabled = False
    BUTTON(4).Enabled = False
    Set ypdr.DataSource = Nothing
    'Set yopbcr.DataSource = Nothing
    ypcr.Text = ""
    ypdr.Text = ""
'    Check1.Value = 0
    'Calling adddelmod procedure
    Call adddelmod(BUTTON)
    Frame3.Visible = True
    txtFields(0).Locked = True
    S = ""
    SSTab1.Tab = 0
    'BK = 0

Case 1
'MODIFICATION
    Opt = "mod"
    choi(0).value = True
    Frame3.Visible = True
    Frame3.ZOrder
    desc.Caption = "Modification"
    
    heading.Visible = True
'    ksldesc1.conn = connectstring
'    Label5.Caption = "PARTY TYPE LISTING"
'    ksldesc1.table = "FA_PRTY"
'    ksldesc1.listfield1 = "prtytyp"
'    ksldesc1.listfield2 = "prtyhead"
'    Frame1.Visible = True
    ypcr.Locked = False
    ypdr.Locked = False
    SSTab1.TabEnabled(2) = False
    SSTab1.Visible = False
   ' Frame1.ZOrder
    Call ENABLCONTLS
    txtFields(0).Locked = True
    txtFields(1).Locked = True
    
    txtFields(2).Locked = True
    prtyTXT.Locked = True
'    abbr.Locked = True
    Call bindcontls
    DB.BeginTrans
    SSTab1.Tab = 0
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    
Case 2
'Deletion
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
    
    SSTab1.Visible = False
    SSTab1.Tab = 0
'    ksldesc1.conn = connectstring
'    Label5.Caption = "PARTY TYPE LISTING"
'    ksldesc1.table = "FA_PRTY"
'    ksldesc1.listfield1 = "prtytyp"
'    ksldesc1.listfield2 = "prtyhead"
'    Frame1.Visible = True
    Label18.Visible = True
    ypcr.Visible = True
    ypdr.Visible = True
    lblcr.Visible = True
    lbldr.Visible = True
    ypcr.Locked = True
    ypdr.Locked = True
'    Label5.Caption = "PARTY TYPE LISTING"
    SSTab1.TabEnabled(2) = False
    Frame1.ZOrder
    DB.BeginTrans
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False

Case 12
      '"Listing"
        Set repo = New Report.ReportView
        desc.Caption = "Listing"
        Set rs1 = New Recordset
        rs1.Open "select slcode,slname from fa_slmas where slcode like 'C1%' order by slcode ", DB, adOpenStatic
        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Exit Sub
        End If
        Pg = 1
        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA & "\red.txt" For Output As #1
            Print #1,
            Print #1,
            Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 56, " "); "F"; Chr(27)
            Print #1,
            Print #1, Space(5); "Supplier Listing" & Space(2); Space(10) & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg:" & Pg
            Print #1, Space(5) & String(50, "-")
            Print #1, Space(5) & "Code" & Space(6) & "Name "
            Print #1, Space(5) & String(50, "-")
              Co = 8
        Do While Not rs1.EOF
            Print #1, Space(5) & Padr(rs1(0), 8, " ") & Space(2) & Padr(rs1(1), 40, " ")
              Co = Co + 1
            rs1.MoveNext
         If Co >= PageLen Then
                Print #1, Space(5); String(50, "-")
                Print #1, Chr(12)
                Co = 0
                Pg = Pg + 1
            Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 56, " "); "F"; Chr(27)
            Print #1,
            Print #1, Space(5); "Supplier Listing" & Space(2); Space(10) & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg:" & Pg
            Print #1, Space(5) & String(50, "-")
                Print #1, Space(5) & "Code" & Space(9) & "Name "
                Print #1, Space(5) & String(50, "-")
              Co = Co + 5
         End If
        Loop
            Print #1, Space(5) & String(50, "-")
            Print #1, Chr(12)
         Close #1
        Call KALBATPROCESS("red")
'         Open "C:\red.bat" For Output As #1
'            Print #1, "cd\"
'            Print #1, "C:"
'            Print #1, "cd\"
'            Print #1, "type red.txt>prn"
'              repo.txtfile = "C:\red.txt"
'              repo.Batfile = "C:\red.bat"
'         Close #1
   
   
   
Case 4
    'Query
    If Record_Exists("fa_slmas") = False Then Exit Sub
    Frame6.Visible = True
    Buttonframe.Enabled = False
    Set Rs = New Recordset
    'RS.Open "select slcode +' - '+ slname itm from fa_slmas where slcode like 'c%' order by slcode", DB, adOpenStatic, adLockBatchOptimistic
    Rs.Open "SELECT isnull(SLNAME,'--') + SPACE(41-LEN(SLNAME)) + '- ' + SLCODE itm FROM FA_SLMAS ORDER BY slcode", DB, adOpenStatic, adLockBatchOptimistic
    If Not Rs.BOF Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "itm"
    DataCombo1.Text = IIf(IsNull(Rs(0)), "--", Rs(0))
    Else
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
 End If
    '------
    Rs.MoveFirst
    DataCombo1.Text = IIf(IsNull(Rs(0)), " ", Rs(0))
    DataCombo1.SetFocus
    qryok.Default = True
    Frame6.ZOrder
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
     
     If Opt = "add" Or Opt = "mod" Then
        If Trim(txtFields(2).Text) = "" Then
            MsgBox " Name cannot be empty", vbInformation, head
            txtFields(2).Text = ""
            txtFields(2).SetFocus
            Exit Sub
        ElseIf adoPrimaryRS(3) = "" Then
            MsgBox "Address cannot be empty", vbInformation, head
            txtFields(3).SetFocus
            Exit Sub
        ElseIf adoPrimaryRS(6) = "" Then
            MsgBox " City Cannot be empty", vbInformation, head
            txtFields(5).SetFocus
            Exit Sub
        End If
     End If
     If Opt = "add" Then
        adoPrimaryRS("PRTYTYP") = prty
'        If Check1.Value = 1 Then
'            adoPrimaryRS("TRN_DEBT") = "Y"
'        Else
'            adoPrimaryRS("TRN_DEBT") = "N"
'        End If

        txtFields(23).Text = "C2A0007"

        adoPrimaryRS("brcode") = CStr(txtFields(23).Text)
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
        If val(ypdr.Text) = 0 Then
            If val(ypcr.Text) = 0 Then
               'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year(" & yfdate & ")as varchar) + '00','','','' )")
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
            txtFields(3).SetFocus
            Exit Sub
'        ElseIf IsNull(adoprimaryrs("city")) Then
'            MsgBox " City Cannot be empty", vbInformation, head
'            txtfields(5).SetFocus
'            Exit Sub
        End If
'        If Check1.Value = 1 Then
'            adoPrimaryRS("TRN_DEBT") = "Y"
'        Else
'            adoPrimaryRS("TRN_DEBT") = "N"
'        End If
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        Dim rsl As Recordset
        Set rsl = New Recordset
        rsl.Open ("select count(*) from fa_slbal where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'"), DB, adOpenStatic
        If val(ypdr.Text) = 0 Then
            If val(ypcr.Text) = 0 Then
                If rsl(0) = 0 Then
                    'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , TO_CHAR('" & Format(yfdate, "yyyy-mm-dd") & "','YYYY') + '00','','','' )")
                     DB.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00',null,null,null)")
                Else
                    'db.Execute ("UPDATE FA_SLBAL SET DEBIT='',CREDIT='' where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                    DB.Execute ("UPDATE FA_SLBAL SET DEBIT=null,CREDIT=null where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                End If
            Else
                If rsl(0) = 0 Then
                    'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , TO_CHAR('" & Format(yfdate, "yyyy-mm-dd") & "','YYYY') + '00','', " & Format(ypcr.Text, "############0.00") & ",'' )")
                     DB.Execute ("INSERT INTO  FA_SLBAL  VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00',null," & Format(ypcr.Text, "############0.00") & ",null )")
                Else
                    'db.Execute ("UPDATE FA_SLBAL SET DEBIT='',CREDIT=" & Format(ypcr.Text, "###########0.00") & " where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                    DB.Execute ("UPDATE FA_SLBAL SET DEBIT=null,CREDIT=" & Format(ypcr.Text, "###########0.00") & " where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                End If
            End If
         Else
            If val(ypcr.Text) = 0 Then
                If rsl(0) = 0 Then
                    'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , TO_CHAR('" & Format(yfdate, "yyyy-mm-dd") & "','YYYY') + '00', " & Format(ypdr.Text, "############0.00") & " ,'','' )")
                    DB.Execute ("INSERT INTO  FA_SLBAL  VALUES ('" & Divcode & "' , '" & adoPrimaryRS(0) & "' , cast(year('" & yfdate & "')as varchar) + '00', " & Format(ypdr.Text, "############0.00") & ",null,null )")
                Else
                    'db.Execute ("UPDATE FA_SLBAL SET DEBIT=" & Format(ypdr.Text, "###########0.00") & " ,CREDIT='' where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                    DB.Execute ("UPDATE FA_SLBAL SET DEBIT=" & Format(ypdr.Text, "###########0.00") & " ,CREDIT=null where SLCODE = '" & adoPrimaryRS("SLCODE") & "' and DIVCODE='" & Divcode & "' and YEARMONTH='" & Year(yfdate) & "00'")
                End If
            Else
                If rsl(0) = 0 Then
                    'db.Execute ("INSERT INTO  FA_SLBAL VALUES ('" & divcode & "' , '" & adoPrimaryRS(0) & "' , TO_CHAR('" & Format(yfdate, "yyyy-mm-dd") & "','YYYY') + '00', " & Format(ypdr.Text, "############0.00") & " , " & Format(ypcr.Text, "############0") & ",'' )")
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
        On Error GoTo deler
        DB.Execute ("delete from FA_SLBAL where SLCODE=" & "'" & txtFields(0).Text & "'")
        DB.Execute ("delete from FA_SLMAS where SLCODE=" & "'" & txtFields(0).Text & "'")
        DB.CommitTrans
        MsgBox "Record Sucessfully deleted", vbOKOnly, head + "Deletion Message"
   End If
   'Return to query mode
   Call QUERY_MODE
   'calling newform_cancel procedure from module (also for save)
   Call NEWFORM1(BUTTON, GSNO)
   BUTTON(4).Enabled = True

    
Case 10
    desc.Caption = "Query"
    'CANCEL
    Frame3.Visible = False
    SSTab1.Visible = True
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
    Call QUERY_MODE
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(4).Enabled = True
    'calling cancl procedure from module
    
    
Case 11
    'EXIT
    Unload Me
End Select
Exit Sub
deler:
If Err = -2147217900 Or 438 Then
        MsgBox "This Sub Ledger code  cannot be deleted as dependencies exist", vbInformation, head
        DB.RollbackTrans
        Opt = ""
        Call BUTTON_Click(10)
        Screen.MousePointer = 0
End If
End Sub



Private Sub Form_Load()
stbar.Panels(1).Text = sbmsg
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "Provider=MSDATASHAPE;" & connectstring
  Opt = "qry"
  Frame3.Visible = False
  Call bindcontls
  Call QUERY_MODE
  End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  If Opt <> "add" Then
     stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
   'to retrieve the opening and month balances.
  If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        Set Rs = New Recordset
        Rs.Open "Select slname from fa_slmas where brcode='" & adoPrimaryRS("brcode") & "'", DB, adOpenStatic
        If Not Rs.EOF Then
              dbname.Text = Rs("slname")
        Else
              dbname.Text = ""
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
         For i = 1 To 12
              txtcr(i).Text = ""
              txtdr(i).Text = ""
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
End Sub

Public Sub bindcontls()
  Dim oText As TextBox
  'Binding  the text boxes to the data source
  For Each oText In Me.txtFields
    Set oText.DataSource = adoPrimaryRS
  Next
End Sub

Public Sub ENABLCONTLS()
Dim tb As TextBox
For Each tb In Me.txtFields
    tb.Locked = False
Next
'Check1.Enabled = True
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.txtFields
    tb.Locked = True
Next
For Each tb In Me.txtcr
    tb.Locked = True
Next
For Each tb In Me.txtdr
    tb.Locked = True
Next
'Check1.Enabled = False
End Sub




Private Sub Lovcancel_Click()
'SSTab1.Tab = 1
If SSTab1.Visible = True Then
Frame1.Visible = False
Select Case KslDesc1.listfield1
Case "SLCODE"
    If Label5.Caption = "BROKER LISTING" Then
        txtFields(3).SetFocus
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
Case "AREACODE"
    area.SetFocus
Case "carcode"
    carrier.SetFocus
Case "tax_code"
    txtFields(33).SetFocus
End Select
End If 'for sstab1.visible = true
If SSTab1.Visible = False Then
Frame3.Visible = True
Frame1.Visible = False
End If
End Sub

Private Sub lovok_Click()
Buttonframe.Enabled = True
SSTab1.Visible = True
Dim Rs As Recordset
Select Case KslDesc1.listfield1
Case "SLCODE"
  
    If Label5.Caption = "BROKER LISTING" Then
        txtFields(23).Text = KslDesc1.Code
        dbname.Text = KslDesc1.description
        txtFields(3).SetFocus
    Else
        If Opt = "del" Then
            Dim rsdel As Recordset
            Set rsdel = New Recordset
            rsdel.Open "select sum(isnull(debit,0)-isnull(credit,0)) from FA_SLBAL WHERE SLCODE='" & KslDesc1.Code & "'", DB
            'rsdel.Open "select sum(isnull(debit,0)-isnull(credit,0)) from FA_SLBAL WHERE SLCODE=" & ksldesc1.code & " AND substring(YEARMONTH,5,2) <> '00' ",db
            If Not (rsdel(0) = 0) Then
                 MsgBox " Balance Amount for this customer is not zero, Cannot be deleted !! ", vbInformation, head
                 Frame1.Visible = False
                 Call BUTTON_Click(10)
                 Exit Sub
            End If
        End If
        txtFields(0).Text = KslDesc1.Code
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        heading.Visible = True
        Set adoPrimaryRS = New Recordset
        'suresh
        'adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,S.LADD1,S.LADD2,S.LADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER from FA_SLMAS s WHERE  S.SLCODE= '" & ksldesc1.code & "'  Order by slcode", db, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select s.SLCODE,s.brcode,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER from FA_SLMAS s WHERE  S.SLCODE= '" & KslDesc1.Code & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
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
        vendor.Text = txtFields(0).Text
'        abbr.Text = txtfields(1).Text
        TXname.Text = txtFields(2).Text
        BUTTON(9).Enabled = True
        Set dbname.DataSource = Rs
    End If
Case "d.slcode"
    DISTRIB.Visible = False
    txtFields(23).Text = KslDesc1.Code
    dbname.Text = KslDesc1.description
    txtFields(1).SetFocus
Case "a.prtytyp"
Label5.Caption = "Sub Ledger Listing "
If Opt = "add" Then
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    prty = KslDesc1.Code
    txtFields(2).SetFocus
    prtyTXT = KslDesc1.description
    If prty = "D2" Then
        DISTRIB.Visible = False
        Frame3.ZOrder
        KslDesc1.conn = connectstring
        KslDesc1.Table = "FA_SLMAS d where d.prtytyp = 'D1'"
        KslDesc1.listfield1 = "d.slcode"
        KslDesc1.listfield2 = "d.slname"
        KslDesc1.SetFocus
        Exit Sub
    End If
Else
    SSTab1.Visible = False
    Frame3.ZOrder
    KslDesc1.conn = connectstring
    KslDesc1.Table = "FA_SLMAS WHERE substring(SLCODE,1,2) = '" & KslDesc1.Code & "'"
    KslDesc1.listfield1 = "SLCODE"
    KslDesc1.listfield2 = "SLNAME"
    Exit Sub
End If
Case "tax_code"
    txtFields(29).Text = KslDesc1.Code
    tax.Text = KslDesc1.description
    txtFields(33).SetFocus
Case "carcode"
    txtFields(25).Text = KslDesc1.Code
    carrier.Text = KslDesc1.description
    carrier.SetFocus
Case "AREACODE"
    txtFields(24).Text = KslDesc1.Code
    area.Text = KslDesc1.description
    area.SetFocus
Case "bank_code"

    If Label5.Caption = "BANK1 LISTING" Then
        txtFields(30).Text = KslDesc1.Code
        bank1.Text = KslDesc1.description
        bank1.SetFocus
    Else
        txtFields(31).Text = KslDesc1.Code
        bank2.Text = KslDesc1.description
        bank2.SetFocus
    End If
End Select
stbar.Panels(2).Text = "Please Enter the Name"
Frame1.Visible = False
End Sub

Private Sub optcan_Click()
Call NEWFORM1(BUTTON, GSNO)
BUTTON(4).Enabled = True
Buttonframe.Enabled = True
Frame3.Visible = False
DB.RollbackTrans
SSTab1.Visible = True
Call QUERY_MODE
End Sub

Private Sub optok_Click()
Frame3.Visible = False
stbar.Panels(2).Text = "Please Select a Party type"
If Opt = "add" Then
   If choi(0).value = True Then
   LookUp.clear = True
   LookUp.Query = "select prtytyp""Type"",prtyhead""Description"" from FA_PRTY a where substring(a.prtytyp,1,1)='C'"
   LookUp.Caption = "Supplier Type Listing"
   LookUp.DefCol = "Description"
   LookUp.ALIGN = "1000,2500"
   LookUp.Show vbModal
   If LookUp.Cancel = False Then
   
   If Opt = "add" Then
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    prty = LookUp.Fields(0)
    
    prtyTXT = LookUp.Fields(1)
    If prty = "D2" Then
        DISTRIB.Visible = False
        Frame3.ZOrder
        KslDesc1.conn = connectstring
        KslDesc1.Table = "FA_SLMAS d where d.prtytyp = 'D1'"
        KslDesc1.listfield1 = "d.slcode"
        KslDesc1.listfield2 = "d.slname"
        KslDesc1.SetFocus
        Exit Sub
    End If
Else
    SSTab1.Visible = True
    LookUp.clear = True
    LookUp.Query = "select slcode""Code"",slname""Name"" from FA_SLMAS WHERE substring(SLCODE,1,2) = '" & LookUp.Fields(0) & "'"
    KslDesc1.Table = "FA_SLMAS WHERE substring(SLCODE,1,2) = '" & LookUp.Fields(0) & "'"
    KslDesc1.listfield1 = "SLCODE"
    KslDesc1.listfield2 = "SLNAME"
    Exit Sub
End If
Else
Exit Sub
End If
   
'''        Label5.Caption = "PARTY TYPE LISTING"
'''        ksldesc1.conn = connectstring
'''        ksldesc1.table = "FA_PRTY a where substring(a.prtytyp,1,1)='C'"
'''        ksldesc1.listfield1 = "a.prtytyp"
'''        ksldesc1.listfield2 = "a.prtyhead"
   ElseIf choi(1).value = True Then
        Label5.Caption = "PARTY TYPE LISTING"
        KslDesc1.conn = connectstring
        KslDesc1.Table = "FA_PRTY a where substring(a.prtytyp,1,1)='D'"
        KslDesc1.listfield1 = "a.prtytyp"
        KslDesc1.listfield2 = "a.prtyhead"
    ElseIf choi(2).value = True Then
        Label5.Caption = "PARTY TYPE LISTING"
        KslDesc1.conn = connectstring
        KslDesc1.Table = "FA_PRTY a where substring(a.prtytyp,1,1)='O'"
        KslDesc1.listfield1 = "a.prtytyp"
        KslDesc1.listfield2 = "a.prtyhead"
    End If
End If



If Opt = "mod" Or Opt = "del" Then
   If choi(0).value = True Then
        Label5.Caption = "PARTY TYPE LISTING"
        KslDesc1.conn = connectstring
        KslDesc1.Table = "FA_PRTY a,FA_SLMAS b where substring(a.prtytyp,1,1)='C' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)"
        KslDesc1.listfield1 = "a.prtytyp"
        KslDesc1.listfield2 = "a.prtyhead"
   ElseIf choi(1).value = True Then
        Label5.Caption = "PARTY TYPE LISTING"
        KslDesc1.conn = connectstring
        KslDesc1.Table = "FA_PRTY a,FA_SLMAS b where substring(a.prtytyp,1,1)='D' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)"
        KslDesc1.listfield1 = "a.prtytyp"
        KslDesc1.listfield2 = "a.prtyhead"
    ElseIf choi(2).value = True Then
        Label5.Caption = "PARTY TYPE LISTING"
        KslDesc1.conn = connectstring
        KslDesc1.Table = "FA_PRTY a,FA_SLMAS b where substring(a.prtytyp,1,1)='O' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)"
        KslDesc1.listfield1 = "a.prtytyp"
        KslDesc1.listfield2 = "a.prtyhead"
    End If
End If 'for add mode

'If ksldesc1.Code = "" Then
'    Frame3.Visible = True
'    Select Case Opt
'    Case "add"
'        MsgBox "Party Type not Defined ", vbInformation, head
'    Case "mod", "del"
'        MsgBox "No Records found for the selected option", vbInformation, head
'    End Select
'    Frame1.Visible = False
'Else
    Frame1.Visible = True
    SSTab1.Visible = True
    LookUp.clear = True
    txtFields(2).SetFocus
'End If

End Sub


Private Sub qrycan_Click()
Buttonframe.Enabled = True
Frame6.Visible = False
End Sub

Private Sub qryok_Click()
Buttonframe.Enabled = True
Set adoPrimaryRS = New Recordset
    Screen.MousePointer = 11
'  On Error GoTo ER1
  adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,S.TAX_CODE,s.INSPER , P.GLCODE from FA_SLMAS S,FA_PRTY P,FA_SLMAS S1 WHERE S.slcode = '" & Mid$(DataCombo1.Text, 44, 6) & "' and S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode Order by s1.SLCODE ", DB, adOpenStatic, adLockBatchOptimistic
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
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
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
         For i = 1 To 12
              txtcr(i).Text = ""
              txtdr(i).Text = ""
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
End Sub



Private Sub txtcr_GotFocus(Index As Integer)
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
End Sub

Private Sub txtdr_GotFocus(Index As Integer)
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

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If val(ypdr.Text) <> 0 Then
    ypdr.Text = Format(ypdr.Text, "##,##,##,#0.00")
End If
If val(ypcr.Text) <> 0 Then
    ypcr.Text = Format(ypcr.Text, "##,##,##,#0.00")
End If

If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    Case 23
        Frame1.Visible = True
        Frame1.ZOrder
        stbar.Panels(2).Text = "Please Select a Broker else press Cancel Button "
        Label5.Caption = "BROKER LISTING"
        'SSTab1.Tab = 0
        KslDesc1.conn = connectstring
        KslDesc1.Table = "FA_SLMAS"
        KslDesc1.listfield1 = "SLCODE"
        KslDesc1.listfield2 = "SLNAME"
        KslDesc1.SetFocus
    Case 24
        Frame1.Visible = True
        Label5.Caption = "AREA LISTING"
        'SSTab1.Tab = 0
        KslDesc1.conn = connectstring
        KslDesc1.Table = "IG_AREA"
        KslDesc1.listfield1 = "AREACODE"
        KslDesc1.listfield2 = "AREANAME"
        KslDesc1.SetFocus
    Case 25
        Frame1.Visible = True
        Label5.Caption = "CARRIER LISTING"
        'SSTab1.Tab = 0
        KslDesc1.conn = connectstring
        KslDesc1.Table = "PO_CAR"
        KslDesc1.listfield1 = "carcode"
        KslDesc1.listfield2 = "carname"
        KslDesc1.SetFocus
    Case 29
        Frame1.Visible = True
        Label5.Caption = "TAX LISTING"
        'SSTab1.Tab = 0
        KslDesc1.conn = connectstring
        KslDesc1.Table = "IG_TAX"
        KslDesc1.listfield1 = "tax_code"
        KslDesc1.listfield2 = "tax_desc"
        KslDesc1.SetFocus
    Case 30
        Frame1.Visible = True
        Label5.Caption = "BANK1 LISTING"
        'SSTab1.Tab = 0
        'BK = 1
        KslDesc1.conn = connectstring
        KslDesc1.Table = "IG_BANK"
        KslDesc1.listfield1 = "bank_code"
        KslDesc1.listfield2 = "bank_desc"
        KslDesc1.SetFocus
    Case 31
        Frame1.Visible = True
        Label5.Caption = "BANK2 LISTING"
        'SSTab1.Tab = 0
        'BK = 2
        KslDesc1.conn = connectstring
        KslDesc1.Table = "IG_BANK"
        KslDesc1.listfield1 = "bank_code"
        KslDesc1.listfield2 = "bank_desc"
        KslDesc1.SetFocus
    End Select
End If
ypdr.Text = ypdr.Text
If Opt = "add" Then
   a = "Please Enter the "
Else
   a = ""
End If
If Index < 14 Or Index = 34 Or Index = 32 Then
   If Index = 1 Then
      stbar.Panels(2).Text = a & " Abbrevation of SLname"
      ElseIf Index = 2 Then stbar.Panels(2).Text = a & " SLname"
      ElseIf Index = 3 Or Index = 4 Or Index = 34 Then stbar.Panels(2).Text = a & " Address of " & txtFields(2).Text
      ElseIf Index = 5 Then stbar.Panels(2).Text = a & " City of" & txtFields(2).Text
      ElseIf Index = 6 Then stbar.Panels(2).Text = a & " State of" & txtFields(2).Text
      ElseIf Index = 7 Then stbar.Panels(2).Text = a & " Country of" & txtFields(2).Text
      ElseIf Index = 8 Then stbar.Panels(2).Text = a & " PostalCode of" & txtFields(5).Text
      ElseIf Index = 9 Then stbar.Panels(2).Text = a & " Phone number of " & txtFields(2).Text
      ElseIf Index = 10 Then stbar.Panels(2).Text = a & "n Phone number of " & txtFields(2).Text
      ElseIf Index = 11 Then stbar.Panels(2).Text = a & " FAX number of " & txtFields(2).Text
      ElseIf Index = 12 Then stbar.Panels(2).Text = a & " E-mail Addres of " & txtFields(2).Text
      ElseIf Index = 13 Then stbar.Panels(2).Text = a & " Website Address of " & txtFields(2).Text
      ElseIf Index = 32 Then stbar.Panels(2).Text = a & " Grams of " & txtFields(2).Text
   End If
End If 'for Index < 14 Or Index = 34
If Index < 34 And Index <> 23 And Index <> 34 And Index <> 32 Then
   If Index = 14 Then
   stbar.Panels(2).Text = a & " TNGST No. of " & txtFields(2).Text
      ElseIf Index = 16 Then stbar.Panels(2).Text = a & " TNGST No. Date of " & txtFields(2).Text
      ElseIf Index = 15 Then stbar.Panels(2).Text = a & " CST No. of " & txtFields(2).Text
      ElseIf Index = 17 Then stbar.Panels(2).Text = a & " CST No. Date of " & txtFields(2).Text
      ElseIf Index = 18 Then stbar.Panels(2).Text = a & " ECC No of " & txtFields(2).Text
      ElseIf Index = 19 Then stbar.Panels(2).Text = a & " PAN No. of " & txtFields(2).Text
      ElseIf Index = 20 Then stbar.Panels(2).Text = a & " Phone number of " & txtFields(22).Text
      ElseIf Index = 21 Then stbar.Panels(2).Text = a & " Designation of " & txtFields(22).Text
      ElseIf Index = 22 Then stbar.Panels(2).Text = a & " Contact Person of " & txtFields(2).Text
      ElseIf Index = 24 Then stbar.Panels(2).Text = a & " Area of " & txtFields(2).Text
      ElseIf Index = 25 Then stbar.Panels(2).Text = a & " Carrier of " & txtFields(2).Text
      ElseIf Index = 26 Then stbar.Panels(2).Text = a & " Payment Terms of " & txtFields(2).Text
      ElseIf Index = 27 Then stbar.Panels(2).Text = a & " Credit Days"
      ElseIf Index = 28 Then stbar.Panels(2).Text = a & " Credit Limit"
      ElseIf Index = 29 Then stbar.Panels(2).Text = a & " Tax of " & txtFields(2).Text
      ElseIf Index = 33 Then stbar.Panels(2).Text = a & " Insurance"
  End If
End If ' IfIndex < 34 And Index <> 23 And Index <> 34 And Index <> 32

      
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
'If Index = 9 Or Index = 10 Then tonum TXTFIELDS(Index), KeyAscii
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
Dim Rs As Recordset
Dim S As String
Dim t As String
If Opt = "add" Or Opt = "mod" Then

If Index = 20 Then
  SSTab1.Tab = 1
   ypdr.SetFocus
   'txtfields(22).SetFocus
End If
End If
If Opt = "add" Or Opt = "mod" Then
If Not (txtFields(Index).Text = "") Then
    txtFields(Index).Text = UCase(txtFields(Index).Text)
End If
If Index = 16 Or Index = 17 Then
   If Not (IsDate(txtFields(Index)) Or txtFields(Index).Text = "") Then
        MsgBox " Invalid date" & Chr(13) & " Enter date in this format - '15/08/1947'", vbInformation, head
        txtFields(Index).Text = ""
        txtFields(Index).SetFocus
        Exit Sub
   End If
End If
Select Case Index
Case 1
    'abbr.Text = txtfields(1).Text
    
    stbar.Panels(2).Text = "Please Click here to Select a Broker else Press TAB"
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
'        Dim rsins As Recordset
'        Set rsins = New Recordset
'        rsins.Open "select slcode from FA_SLMAS where slname = '" & UCase(Trim(Txtfields(2).Text)) & "'", db
'        If rsins.RecordCount > 0 Then
'              MsgBox "A Sub Ledger Code for this party already exists", vbCritical, head
'              Txtfields(0).Text = ""
'              Txtfields(2).SetFocus
'              Exit Sub
'        Else
''           abbr.Text = txtfields(1).Text
'           TXname.Text = Txtfields(2).Text
'           vendor.Text = Txtfields(0).Text
'        End If
'    End If
Case 27
    If Not (Trim(txtFields(Index).Text) = "") Then
    If Not (IsNumeric(txtFields(Index).Text)) Or Not (Len(txtFields(Index).Text) <= 3) Then
        MsgBox "Credit Days should not exceed 3 numeric characters ", vbInformation, head
        txtFields(Index).SetFocus
        Exit Sub
    End If
    End If
Case 28
'    If Not (IsNumeric(txtfields(Index).Text)) Or (Len(txtfields(Index).Text) > 15) Then
'        MsgBox "Credit Limit should not exceed 15 numeric characters ", vbCritical, head
'        txtfields(28).SetFocus
'        Exit Sub
'    End If
Case 33
    If Not (IsNumeric(txtFields(Index).Text)) Or Not (Len(txtFields(Index).Text) < 7) Then
'        MsgBox "Insurance Percentage should not exceed 7 numeric characters ", vbCritical, head
'        txtfields(33).SetFocus
'        Exit Sub
    Else
        BUTTON(9).SetFocus
    End If
End Select
End If
End Sub

Public Sub QUERY_MODE()
Opt = "qry"
If Not Opt = " " Then
  Opt = " "
  
  Set PT = New Recordset
  PT.Open "select pt_cotton from pp_divmas where divcode='" & Divcode & "'", DB, adOpenStatic
  
  
  
   Set adoPrimaryRS = New Recordset
  'adoprimaryrs.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE from FA_SLMAS S,FA_PRTY P, FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode and s.slcode like 'c%' Order by s.SLCODE ", DB, adOpenStatic, adLockBatchOptimistic
  adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE from FA_SLMAS S,FA_PRTY P, FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode and S.prtytyp = ltrim(' " & PT(0) & " ')  Order by s.SLCODE ", DB, adOpenStatic, adLockBatchOptimistic
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
  stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
 ' If adoPrimaryRS("TRN_DEBT") = "Y" Then
 '      Check1.Value = 1
 ' Else
 '       Check1.Value = 0
 ' End If
  Call disablcontls
  SSTab1.TabEnabled(2) = False
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
  If adoPrimaryRS.BOF Then
    MsgBox "No Records Found", vbInformation, head
    DATLAB.Caption = pdate
    stbar.Panels(2).Text = "No Records Found"
  End If
  DATLAB.Caption = pdate 'This variable is declared as global to show the date
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM1(BUTTON, GSNO)
'  BUTTON(6).SetFocus
  
End If
Exit Sub
ER1:
   If Err = 3021 Then
    MsgBox "No records exist", vbInformation, head
   End If
   If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head + "Connection Message"
    Screen.MousePointer = 0
   End If
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
On Error Resume Next
If Index = 2 Then
If Trim(txtFields(2).Text) = "" Then
        MsgBox " Name cannot be empty", vbInformation, head
        txtFields(2).Text = ""
        Cancel = True
        'Txtfields(2).SetFocus
        Exit Sub
    End If
    If txtFields(0).Text = "" And Not txtFields(2).Text = "" Then
        Set Rs = New Recordset
        S = Mid$(txtFields(2).Text, 1, 1)
        S = prty & S
        Rs.Open "select max(CAST(substring(slcode,4,6) AS NUMERIC)) from FA_SLMAS where slcode like '" & S & "%' ", DB, adOpenStatic, adLockBatchOptimistic
        If Not (Rs.BOF Or IsNull(Rs(0))) Then
            If val(Rs(0)) < 9 Then
                txtFields(0).Text = UCase(S & "00" & val(Rs(0)) + 1)
            ElseIf val(Rs(0)) < 99 Then
                txtFields(0).Text = UCase(S & "0" & val(Rs(0)) + 1)
            Else
                txtFields(0).Text = UCase(S & val(Rs(0)) + 1)
            End If
        Else
            txtFields(0).Text = UCase(S & "001")
        End If
        Dim rsins As Recordset
        Set rsins = New Recordset
        rsins.Open "select slcode from FA_SLMAS where slname = '" & UCase(Trim(txtFields(2).Text)) & "'", DB
        If rsins.RecordCount > 0 Then
              MsgBox "A Sub Ledger Code for this party already exists", vbInformation, head
              txtFields(0).Text = ""
              txtFields(2).SetFocus
              Exit Sub
        Else
'           abbr.Text = txtfields(1).Text
           TXname.Text = txtFields(2).Text
           vendor.Text = txtFields(0).Text
        End If
    End If
End If
End Sub

Private Sub ypcr_DblClick()
If val(ypcr.Text) <> 0 Then
ypcr.SelStart = Len(ypcr.Text)
Else
ypcr.Text = ""
End If
ypcr.Locked = False
ypdr.Text = "0.00"
ypcr.SetFocus
End Sub

Private Sub ypcr_GotFocus()
If ypdr.Text = "0.00" And val(ypcr.Text) = 0 Then
    ypcr.Locked = False
    ypdr.Text = "0.00"
    ypcr.Text = ""
End If
End Sub

Private Sub ypcr_LostFocus()
If val(ypcr.Text) <> 0 Then
    ypcr.Text = Format(ypcr.Text, "##,##,##,#0.00")
    ypdr.Locked = True
    ypcr.Locked = True
Else
    ypcr.Text = "0.00"
End If
End Sub

Private Sub ypdr_DblClick()
If val(ypdr.Text) <> 0 Then
ypdr.SelStart = Len(ypdr.Text)
Else
    ypdr.Text = ""
End If
ypdr.Locked = False
ypcr.Text = "0.00"
ypdr.SetFocus
End Sub

Private Sub ypdr_GotFocus()
If ypcr.Text = "0.00" And val(ypdr.Text) = 0 Then
    ypdr.Locked = False
    ypcr.Text = "0.00"
    ypdr.Text = ""
End If
End Sub

Private Sub ypdr_LostFocus()
If val(ypdr.Text) <> 0 Then
    ypdr.Text = Format(ypdr.Text, "##,##,##,#0.00")
    ypcr.Locked = True
    ypdr.Locked = True
    txtFields(22).SetFocus
    Exit Sub
Else
    ypdr.Text = "0.00"
    ypcr.SetFocus
End If
End Sub
