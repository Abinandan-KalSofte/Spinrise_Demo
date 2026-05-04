VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form BrokerMaster 
   Caption         =   "Agent"
   ClientHeight    =   7605
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10920
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7605
   ScaleWidth      =   10920
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   13
      Left            =   5820
      Picture         =   "BrokerMaster.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   200
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   600
   End
   Begin Crystal.CrystalReport CR 
      Left            =   135
      Top             =   3420
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5760
      Left            =   900
      TabIndex        =   89
      Top             =   1305
      Width           =   9000
      _ExtentX        =   15875
      _ExtentY        =   10160
      _Version        =   393216
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   12632256
      ForeColor       =   -2147483630
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Address"
      TabPicture(0)   =   "BrokerMaster.frx":0442
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame4"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Details"
      TabPicture(1)   =   "BrokerMaster.frx":045E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame7"
      Tab(1).Control(1)=   "Frame5"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "Balances"
      TabPicture(2)   =   "BrokerMaster.frx":047A
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label31"
      Tab(2).Control(1)=   "Frame8"
      Tab(2).Control(2)=   "Frame9"
      Tab(2).ControlCount=   3
      Begin VB.Frame Frame7 
         Height          =   3615
         Left            =   -74880
         TabIndex        =   132
         Top             =   1080
         Width           =   8775
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
            Locked          =   -1  'True
            TabIndex        =   24
            Top             =   172
            Width           =   1800
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
            Locked          =   -1  'True
            TabIndex        =   23
            Top             =   172
            Width           =   1800
         End
         Begin VB.TextBox carrier 
            BackColor       =   &H00E0E0E0&
            Enabled         =   0   'False
            Height          =   330
            Left            =   6480
            Locked          =   -1  'True
            TabIndex        =   57
            TabStop         =   0   'False
            Top             =   2790
            Width           =   2145
         End
         Begin VB.TextBox bank2 
            BackColor       =   &H00E0E0E0&
            Enabled         =   0   'False
            Height          =   330
            Left            =   6480
            Locked          =   -1  'True
            TabIndex        =   55
            TabStop         =   0   'False
            Top             =   2460
            Width           =   2145
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   31
            Left            =   5970
            TabIndex        =   54
            Top             =   2460
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
            MaxLength       =   9
            TabIndex        =   34
            Top             =   2130
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   25
            Left            =   5970
            TabIndex        =   56
            Top             =   2790
            Width           =   495
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PAN"
            Height          =   330
            Index           =   19
            Left            =   5970
            MaxLength       =   20
            TabIndex        =   30
            Top             =   1455
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CGSTDT"
            Height          =   330
            Index           =   17
            Left            =   5970
            MaxLength       =   10
            TabIndex        =   28
            Top             =   1125
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "TNGSTDT"
            Height          =   330
            Index           =   16
            Left            =   5970
            MaxLength       =   10
            TabIndex        =   26
            Top             =   795
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "TNGST"
            Height          =   330
            Index           =   14
            Left            =   1830
            MaxLength       =   30
            MultiLine       =   -1  'True
            TabIndex        =   25
            Top             =   810
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CGST"
            Height          =   330
            Index           =   15
            Left            =   1830
            MaxLength       =   30
            TabIndex        =   27
            Top             =   1140
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ECC"
            Height          =   330
            Index           =   18
            Left            =   1830
            MaxLength       =   20
            TabIndex        =   29
            Top             =   1470
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   24
            Left            =   1830
            TabIndex        =   50
            Top             =   2790
            Width           =   495
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PAY_TERMS"
            Height          =   330
            Index           =   26
            Left            =   1830
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   31
            Top             =   1800
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CRDDAYS"
            Height          =   330
            Index           =   27
            Left            =   1830
            MaxLength       =   3
            TabIndex        =   33
            Top             =   2130
            Width           =   2655
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   30
            Left            =   1830
            TabIndex        =   48
            Top             =   2460
            Width           =   495
         End
         Begin VB.TextBox bank1 
            BackColor       =   &H00E0E0E0&
            Enabled         =   0   'False
            Height          =   330
            Left            =   2340
            Locked          =   -1  'True
            TabIndex        =   49
            TabStop         =   0   'False
            Top             =   2460
            Width           =   2145
         End
         Begin VB.TextBox area 
            BackColor       =   &H00E0E0E0&
            Enabled         =   0   'False
            Height          =   330
            Left            =   2340
            Locked          =   -1  'True
            TabIndex        =   51
            TabStop         =   0   'False
            Top             =   2790
            Width           =   2145
         End
         Begin VB.TextBox TXTFIELDS 
            Enabled         =   0   'False
            Height          =   330
            Index           =   29
            Left            =   1830
            TabIndex        =   52
            Top             =   3120
            Width           =   495
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
            TabIndex        =   58
            Top             =   3120
            Width           =   1095
         End
         Begin VB.TextBox tax 
            BackColor       =   &H00E0E0E0&
            Enabled         =   0   'False
            Height          =   330
            Left            =   2340
            Locked          =   -1  'True
            TabIndex        =   53
            TabStop         =   0   'False
            Top             =   3120
            Width           =   2145
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "tinno"
            Height          =   330
            Index           =   36
            Left            =   5970
            MaxLength       =   20
            TabIndex        =   32
            Top             =   1800
            Width           =   2655
         End
         Begin VB.Label lblcr 
            AutoSize        =   -1  'True
            Caption         =   "(Credit)"
            Height          =   195
            Left            =   6330
            TabIndex        =   151
            Top             =   240
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.Label lbldr 
            AutoSize        =   -1  'True
            Caption         =   "(Debit)"
            Height          =   195
            Left            =   3690
            TabIndex        =   150
            Top             =   240
            Visible         =   0   'False
            Width           =   465
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Opening Balance"
            Height          =   195
            Left            =   360
            TabIndex        =   149
            Top             =   248
            Width           =   1230
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Insurance  %"
            Enabled         =   0   'False
            Height          =   195
            Index           =   20
            Left            =   5040
            TabIndex        =   148
            Top             =   3195
            Width           =   915
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Tax"
            Enabled         =   0   'False
            Height          =   195
            Index           =   10
            Left            =   360
            TabIndex        =   147
            Top             =   3195
            Width           =   270
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Bank2"
            Enabled         =   0   'False
            Height          =   195
            Index           =   18
            Left            =   5040
            TabIndex        =   146
            Top             =   2535
            Width           =   465
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Bank1"
            Enabled         =   0   'False
            Height          =   195
            Index           =   17
            Left            =   360
            TabIndex        =   145
            Top             =   2535
            Width           =   465
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Credit Limit"
            Height          =   195
            Index           =   15
            Left            =   5040
            TabIndex        =   144
            Top             =   2205
            Width           =   765
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Credit Days"
            Height          =   195
            Index           =   14
            Left            =   360
            TabIndex        =   143
            Top             =   2205
            Width           =   810
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Payment Terms"
            Height          =   195
            Index           =   13
            Left            =   360
            TabIndex        =   142
            Top             =   1875
            Width           =   1095
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Carrier"
            Enabled         =   0   'False
            Height          =   195
            Index           =   12
            Left            =   5040
            TabIndex        =   141
            Top             =   2865
            Width           =   450
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Area"
            Enabled         =   0   'False
            Height          =   195
            Index           =   11
            Left            =   360
            TabIndex        =   140
            Top             =   2865
            Width           =   330
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "PAN No."
            Height          =   195
            Index           =   6
            Left            =   5040
            TabIndex        =   139
            Top             =   1530
            Width           =   630
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "ECC No."
            Height          =   195
            Index           =   5
            Left            =   360
            TabIndex        =   138
            Top             =   1545
            Width           =   615
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Index           =   4
            Left            =   5040
            TabIndex        =   137
            Top             =   1200
            Width           =   345
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Index           =   3
            Left            =   5040
            TabIndex        =   136
            Top             =   870
            Width           =   345
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "CST No."
            Height          =   195
            Index           =   2
            Left            =   360
            TabIndex        =   135
            Top             =   1215
            Width           =   615
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "ST Regn No."
            Height          =   195
            Index           =   1
            Left            =   360
            TabIndex        =   134
            Top             =   885
            Width           =   945
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "TIN No."
            Height          =   195
            Index           =   16
            Left            =   5040
            TabIndex        =   133
            Top             =   1875
            Width           =   570
         End
      End
      Begin VB.Frame Frame4 
         Height          =   5295
         Left            =   120
         TabIndex        =   115
         Top             =   360
         Width           =   8775
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
            Left            =   7320
            TabIndex        =   201
            Top             =   600
            Width           =   1335
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "gststatecode"
            Enabled         =   0   'False
            Height          =   360
            Index           =   45
            Left            =   1500
            TabIndex        =   199
            Top             =   2835
            Width           =   3000
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "gstinno"
            Height          =   360
            Index           =   46
            Left            =   5640
            MaxLength       =   15
            TabIndex        =   9
            Top             =   2835
            Width           =   2955
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CITY"
            Height          =   330
            Index           =   5
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   8
            Top             =   2085
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD2"
            Height          =   330
            Index           =   4
            Left            =   1500
            MaxLength       =   50
            TabIndex        =   6
            Top             =   1341
            Width           =   7125
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contper"
            Height          =   330
            Index           =   22
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   16
            Top             =   4350
            Width           =   1800
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contdesg"
            Height          =   330
            Index           =   21
            Left            =   4260
            MaxLength       =   30
            TabIndex        =   17
            Top             =   4350
            Width           =   1815
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "contphone"
            Height          =   330
            Index           =   20
            Left            =   7230
            MaxLength       =   30
            TabIndex        =   18
            Top             =   4350
            Width           =   1365
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SLNAME"
            Height          =   330
            Index           =   2
            Left            =   3270
            MaxLength       =   75
            TabIndex        =   2
            Top             =   225
            Width           =   5370
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD3"
            Height          =   330
            Index           =   34
            Left            =   1500
            MaxLength       =   50
            TabIndex        =   7
            Top             =   1713
            Width           =   7125
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "telegram"
            Height          =   330
            Index           =   32
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   12
            Top             =   3600
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ABBR"
            Height          =   330
            Index           =   1
            Left            =   1500
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   3
            Top             =   597
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "WEBADDR"
            Height          =   330
            Index           =   13
            Left            =   5655
            MaxLength       =   40
            TabIndex        =   15
            Top             =   3975
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "EMAIL"
            Height          =   330
            Index           =   12
            Left            =   1500
            MaxLength       =   40
            TabIndex        =   14
            Top             =   3975
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "FAX"
            Height          =   330
            Index           =   11
            Left            =   5655
            MaxLength       =   20
            TabIndex        =   13
            Top             =   3600
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PHONE2"
            Height          =   330
            Index           =   10
            Left            =   5655
            MaxLength       =   30
            TabIndex        =   11
            Top             =   3240
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PHONE1"
            Height          =   330
            Index           =   9
            Left            =   1500
            MaxLength       =   30
            TabIndex        =   10
            Top             =   3240
            Width           =   3015
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PIN"
            Height          =   330
            Index           =   8
            Left            =   5655
            MaxLength       =   7
            TabIndex        =   19
            Top             =   2085
            Width           =   915
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "COUNTRY"
            Height          =   330
            Index           =   7
            Left            =   5655
            MaxLength       =   30
            TabIndex        =   22
            Top             =   2457
            Width           =   2940
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "STATE"
            Height          =   330
            Index           =   6
            Left            =   2340
            Locked          =   -1  'True
            MaxLength       =   35
            TabIndex        =   21
            TabStop         =   0   'False
            Top             =   2457
            Width           =   2175
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "SLCODE"
            Enabled         =   0   'False
            Height          =   330
            Index           =   0
            Left            =   1500
            MaxLength       =   7
            TabIndex        =   1
            TabStop         =   0   'False
            Top             =   225
            Width           =   1100
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD1"
            Height          =   330
            Index           =   3
            Left            =   1500
            MaxLength       =   50
            TabIndex        =   5
            Top             =   969
            Width           =   7125
         End
         Begin VB.TextBox prtyTXT 
            BackColor       =   &H00E0E0E0&
            DataField       =   "prtyhead"
            Height          =   330
            Left            =   3270
            Locked          =   -1  'True
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   597
            Width           =   3930
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "STATE_code"
            Height          =   330
            Index           =   35
            Left            =   1500
            MaxLength       =   10
            TabIndex        =   20
            Top             =   2457
            Width           =   855
         End
         Begin VB.Label Label1 
            Caption         =   "GST State Code"
            ForeColor       =   &H00FF0000&
            Height          =   435
            Index           =   3
            Left            =   360
            TabIndex        =   198
            Top             =   2835
            Width           =   990
         End
         Begin VB.Label Label1 
            Caption         =   "GST Number"
            ForeColor       =   &H00FF0000&
            Height          =   375
            Index           =   4
            Left            =   4755
            TabIndex        =   197
            Top             =   2820
            Width           =   660
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Area/Place"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   360
            TabIndex        =   196
            Top             =   2160
            Width           =   810
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "Line 2"
            Height          =   195
            Left            =   975
            TabIndex        =   195
            Top             =   1409
            Width           =   435
         End
         Begin VB.Label Label41 
            AutoSize        =   -1  'True
            Caption         =   "Line 3"
            Height          =   195
            Left            =   975
            TabIndex        =   194
            Top             =   1781
            Width           =   435
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Desig."
            Height          =   195
            Index           =   8
            Left            =   3570
            TabIndex        =   131
            Top             =   4425
            Width           =   450
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Contact Person"
            Height          =   195
            Index           =   7
            Left            =   360
            TabIndex        =   130
            Top             =   4425
            Width           =   1095
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Phone No."
            Height          =   195
            Index           =   9
            Left            =   6330
            TabIndex        =   129
            Top             =   4425
            Width           =   765
         End
         Begin VB.Label Label37 
            AutoSize        =   -1  'True
            Caption         =   "Phone 2"
            Height          =   195
            Left            =   4740
            TabIndex        =   128
            Top             =   3300
            Width           =   600
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Telegram"
            Height          =   195
            Index           =   19
            Left            =   360
            TabIndex        =   127
            Top             =   3675
            Width           =   660
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Web site"
            Height          =   195
            Left            =   4740
            TabIndex        =   126
            Top             =   4050
            Width           =   630
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "e-Mail"
            Height          =   195
            Left            =   360
            TabIndex        =   125
            Top             =   4050
            Width           =   420
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Fax"
            Height          =   195
            Left            =   4740
            TabIndex        =   124
            Top             =   3675
            Width           =   255
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Phone 1"
            Height          =   195
            Left            =   360
            TabIndex        =   123
            Top             =   3300
            Width           =   600
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Pincode"
            Height          =   195
            Left            =   4740
            TabIndex        =   122
            Top             =   2160
            Width           =   585
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Country"
            Height          =   195
            Left            =   4740
            TabIndex        =   121
            Top             =   2520
            Width           =   540
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "State"
            Height          =   195
            Left            =   360
            TabIndex        =   120
            Top             =   2525
            Width           =   375
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Address Line 1"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   360
            TabIndex        =   119
            Top             =   1035
            Width           =   1050
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Abbreviation"
            Height          =   195
            Left            =   360
            TabIndex        =   118
            Top             =   660
            Width           =   885
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Name"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   2745
            TabIndex        =   117
            Top             =   293
            Width           =   420
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Code"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   360
            TabIndex        =   116
            Top             =   293
            Width           =   375
         End
      End
      Begin VB.Frame Frame5 
         Height          =   660
         Left            =   -74880
         TabIndex        =   113
         Top             =   360
         Width           =   8775
         Begin VB.TextBox vendor 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slcode"
            Enabled         =   0   'False
            Height          =   330
            Left            =   1875
            Locked          =   -1  'True
            MaxLength       =   7
            TabIndex        =   46
            TabStop         =   0   'False
            Top             =   225
            Width           =   1100
         End
         Begin VB.TextBox TXname 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slname"
            Enabled         =   0   'False
            Height          =   330
            Left            =   3060
            Locked          =   -1  'True
            MaxLength       =   60
            TabIndex        =   47
            TabStop         =   0   'False
            Top             =   225
            Width           =   5550
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Code"
            Height          =   195
            Left            =   360
            TabIndex        =   114
            Top             =   300
            Width           =   375
         End
      End
      Begin VB.Frame Frame9 
         Height          =   3615
         Left            =   -74880
         TabIndex        =   92
         Top             =   1110
         Visible         =   0   'False
         Width           =   8775
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   12
            Left            =   5340
            TabIndex        =   81
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
            Index           =   3
            Left            =   6810
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   88
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
            Index           =   2
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   86
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
            Index           =   1
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   84
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
            Index           =   12
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   82
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
            Index           =   11
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   80
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
            Index           =   10
            Left            =   6795
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   78
            Top             =   1350
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   3
            Left            =   5340
            TabIndex        =   87
            Top             =   3150
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   2
            Left            =   5340
            TabIndex        =   85
            Top             =   2790
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   1
            Left            =   5340
            TabIndex        =   83
            Top             =   2430
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   11
            Left            =   5340
            TabIndex        =   79
            Top             =   1710
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   10
            Left            =   5340
            TabIndex        =   77
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
            Index           =   9
            Left            =   2625
            MaxLength       =   12
            MultiLine       =   -1  'True
            TabIndex        =   76
            Top             =   3150
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   9
            Left            =   1170
            TabIndex        =   75
            Top             =   3150
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   8
            Left            =   2625
            TabIndex        =   74
            Top             =   2790
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   8
            Left            =   1170
            TabIndex        =   73
            Top             =   2790
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   7
            Left            =   2625
            TabIndex        =   72
            Top             =   2430
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   7
            Left            =   1170
            TabIndex        =   71
            Top             =   2430
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   6
            Left            =   2625
            TabIndex        =   70
            Top             =   2070
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   6
            Left            =   1170
            TabIndex        =   69
            Top             =   2070
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   5
            Left            =   2625
            TabIndex        =   68
            Top             =   1710
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   5
            Left            =   1170
            TabIndex        =   67
            Top             =   1710
            Width           =   1455
         End
         Begin VB.TextBox txtcr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   4
            Left            =   2625
            TabIndex        =   66
            Top             =   1350
            Width           =   1455
         End
         Begin VB.TextBox txtdr 
            Alignment       =   1  'Right Justify
            Height          =   330
            Index           =   4
            Left            =   1170
            TabIndex        =   65
            Top             =   1350
            Width           =   1455
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Opening Balance"
            Height          =   195
            Left            =   2085
            TabIndex        =   112
            Top             =   405
            Width           =   1230
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
            TabIndex        =   61
            Top             =   375
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
            TabIndex        =   62
            Top             =   375
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
            TabIndex        =   64
            Top             =   735
            Width           =   1455
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
            TabIndex        =   63
            Top             =   735
            Width           =   1455
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Current Balance"
            Height          =   195
            Left            =   2085
            TabIndex        =   111
            Top             =   765
            Width           =   1140
         End
         Begin VB.Label Label27 
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   195
            Left            =   6090
            TabIndex        =   110
            Top             =   165
            Width           =   405
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   195
            Left            =   4665
            TabIndex        =   109
            Top             =   165
            Width           =   375
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "March"
            Height          =   195
            Index           =   5
            Left            =   4350
            TabIndex        =   108
            Top             =   3218
            Width           =   450
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "February"
            Height          =   195
            Index           =   4
            Left            =   4350
            TabIndex        =   107
            Top             =   2858
            Width           =   615
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "January"
            Height          =   195
            Index           =   3
            Left            =   4350
            TabIndex        =   106
            Top             =   2498
            Width           =   555
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "December"
            Height          =   195
            Index           =   2
            Left            =   4350
            TabIndex        =   105
            Top             =   2138
            Width           =   735
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "November"
            Height          =   195
            Index           =   1
            Left            =   4350
            TabIndex        =   104
            Top             =   1778
            Width           =   735
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000A&
            Caption         =   "October"
            Height          =   195
            Index           =   0
            Left            =   4350
            TabIndex        =   103
            Top             =   1418
            Width           =   570
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   195
            Left            =   6420
            TabIndex        =   102
            Top             =   1125
            Width           =   375
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "April"
            Height          =   195
            Left            =   360
            TabIndex        =   101
            Top             =   1418
            Width           =   300
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "May"
            Height          =   195
            Left            =   360
            TabIndex        =   100
            Top             =   1778
            Width           =   300
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "June"
            Height          =   195
            Left            =   360
            TabIndex        =   99
            Top             =   2138
            Width           =   345
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "July"
            Height          =   195
            Left            =   360
            TabIndex        =   98
            Top             =   2498
            Width           =   270
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "August"
            Height          =   195
            Left            =   360
            TabIndex        =   97
            Top             =   2858
            Width           =   495
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "September"
            Height          =   195
            Left            =   360
            TabIndex        =   96
            Top             =   3218
            Width           =   765
         End
         Begin VB.Label Label28 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Debit"
            Height          =   195
            Left            =   2250
            TabIndex        =   95
            Top             =   1110
            Width           =   375
         End
         Begin VB.Label Label29 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   195
            Left            =   3675
            TabIndex        =   94
            Top             =   1110
            Width           =   405
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Credit"
            Height          =   195
            Left            =   7845
            TabIndex        =   93
            Top             =   1125
            Width           =   405
         End
      End
      Begin VB.Frame Frame8 
         Height          =   660
         Left            =   -74880
         TabIndex        =   90
         Top             =   360
         Width           =   8775
         Begin VB.TextBox party 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slcode"
            Height          =   330
            Left            =   1875
            Locked          =   -1  'True
            TabIndex        =   59
            TabStop         =   0   'False
            Top             =   225
            Width           =   1100
         End
         Begin VB.TextBox pname 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slname"
            Height          =   330
            Left            =   3060
            Locked          =   -1  'True
            TabIndex        =   60
            TabStop         =   0   'False
            Top             =   225
            Width           =   5550
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Code"
            Height          =   195
            Left            =   360
            TabIndex        =   91
            Top             =   300
            Width           =   375
         End
      End
      Begin VB.Label Label31 
         Caption         =   "Label31"
         Height          =   255
         Left            =   -68280
         TabIndex        =   152
         Top             =   2400
         Visible         =   0   'False
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2055
      Left            =   3390
      TabIndex        =   183
      Top             =   2640
      Visible         =   0   'False
      Width           =   5505
      Begin TabDlg.SSTab SSTab2 
         Height          =   1515
         Left            =   30
         TabIndex        =   184
         Top             =   510
         Width           =   5445
         _ExtentX        =   9604
         _ExtentY        =   2672
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         TabCaption(0)   =   " "
         TabPicture(0)   =   "BrokerMaster.frx":0496
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Command2"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Command1"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "Option2"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).Control(3)=   "Option1"
         Tab(0).Control(3).Enabled=   0   'False
         Tab(0).ControlCount=   4
         Begin VB.OptionButton Option1 
            Caption         =   "Code List"
            Height          =   240
            Left            =   1230
            TabIndex        =   188
            Top             =   360
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
            Left            =   1560
            TabIndex        =   186
            Top             =   1080
            Width           =   1155
         End
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
            TabIndex        =   185
            Top             =   1050
            Width           =   1155
         End
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Broker Listing"
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
         TabIndex        =   189
         Top             =   150
         Width           =   5445
      End
   End
   Begin VB.Frame Frame1 
      Height          =   4815
      Left            =   3660
      TabIndex        =   163
      Top             =   1530
      Visible         =   0   'False
      Width           =   7680
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
         TabIndex        =   165
         Top             =   4245
         Width           =   1095
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
         TabIndex        =   164
         Top             =   4245
         Width           =   1095
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3345
         Left            =   240
         TabIndex        =   166
         Top             =   780
         Width           =   7905
         _ExtentX        =   13944
         _ExtentY        =   5900
         caption         =   ""
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
         TabIndex        =   167
         Top             =   120
         Width           =   7605
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H80000002&
         Height          =   4440
         Left            =   30
         Top             =   510
         Width           =   7605
      End
   End
   Begin VB.Frame Frame3 
      Height          =   3390
      Left            =   3900
      TabIndex        =   156
      Top             =   1320
      Visible         =   0   'False
      Width           =   5715
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
         TabIndex        =   161
         Top             =   1770
         Width           =   2385
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
         TabIndex        =   160
         Top             =   1335
         Width           =   1890
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
         TabIndex        =   159
         Top             =   900
         Value           =   -1  'True
         Width           =   2055
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
         TabIndex        =   158
         Top             =   2535
         Width           =   1110
      End
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
         TabIndex        =   157
         Top             =   2550
         Width           =   1110
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H80000002&
         BorderWidth     =   2
         Height          =   2655
         Left            =   30
         Top             =   690
         Width           =   5655
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
         TabIndex        =   162
         Top             =   90
         Width           =   5670
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   153
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":04B2
         Height          =   510
         Index           =   6
         Left            =   3195
         Picture         =   "BrokerMaster.frx":08FC
         Style           =   1  'Graphical
         TabIndex        =   40
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":0C49
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "BrokerMaster.frx":0F53
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":12E6
         Height          =   510
         Index           =   5
         Left            =   2670
         Picture         =   "BrokerMaster.frx":1730
         Style           =   1  'Graphical
         TabIndex        =   39
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":1A95
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
         Picture         =   "BrokerMaster.frx":1D9F
         Style           =   1  'Graphical
         TabIndex        =   36
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":213B
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "BrokerMaster.frx":2445
         Style           =   1  'Graphical
         TabIndex        =   35
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":27BF
         Height          =   510
         Index           =   7
         Left            =   3720
         Picture         =   "BrokerMaster.frx":2C09
         Style           =   1  'Graphical
         TabIndex        =   41
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":2F59
         Height          =   510
         Index           =   11
         Left            =   6420
         Picture         =   "BrokerMaster.frx":33A3
         Style           =   1  'Graphical
         TabIndex        =   45
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":3738
         Height          =   510
         Index           =   9
         Left            =   4770
         Picture         =   "BrokerMaster.frx":3A42
         Style           =   1  'Graphical
         TabIndex        =   43
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":3DE4
         Height          =   510
         Index           =   10
         Left            =   5295
         Picture         =   "BrokerMaster.frx":40EE
         Style           =   1  'Graphical
         TabIndex        =   44
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":446A
         Height          =   510
         Index           =   8
         Left            =   4245
         Picture         =   "BrokerMaster.frx":48B4
         Style           =   1  'Graphical
         TabIndex        =   42
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BrokerMaster.frx":4C16
         Height          =   510
         Index           =   4
         Left            =   2145
         Picture         =   "BrokerMaster.frx":4F20
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "BrokerMaster.frx":52B5
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "List (Ctrl L)"
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
         Left            =   9480
         TabIndex        =   155
         Top             =   255
         Width           =   630
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
         Left            =   7080
         TabIndex        =   154
         Top             =   255
         Width           =   615
      End
   End
   Begin VB.TextBox dbname 
      BackColor       =   &H00E0E0E0&
      DataField       =   "dbname"
      Height          =   330
      Left            =   6240
      Locked          =   -1  'True
      TabIndex        =   192
      TabStop         =   0   'False
      Top             =   2760
      Visible         =   0   'False
      Width           =   2760
   End
   Begin VB.TextBox TXTFIELDS 
      DataField       =   "BRCODE"
      Height          =   330
      Index           =   23
      Left            =   7440
      Locked          =   -1  'True
      MaxLength       =   7
      TabIndex        =   191
      Top             =   2400
      Visible         =   0   'False
      Width           =   1305
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   960
      TabIndex        =   168
      Top             =   2820
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton qrycan 
         Caption         =   "&Cancel"
         Height          =   375
         Left            =   4020
         TabIndex        =   170
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton qryok 
         Caption         =   "&OK"
         Height          =   375
         Left            =   2580
         TabIndex        =   169
         Top             =   1680
         Width           =   975
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   1380
         TabIndex        =   171
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
      Begin VB.Label Label39 
         AutoSize        =   -1  'True
         Caption         =   "Supplier"
         Height          =   195
         Left            =   210
         TabIndex        =   173
         Top             =   1005
         Width           =   570
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
         TabIndex        =   172
         Top             =   120
         Width           =   7545
      End
   End
   Begin VB.Frame FNDFRME 
      Height          =   5175
      Left            =   930
      TabIndex        =   174
      Top             =   1470
      Visible         =   0   'False
      Width           =   9015
      Begin VB.CommandButton Canvelok 
         Caption         =   "&Ok"
         Height          =   495
         Left            =   3360
         TabIndex        =   179
         Top             =   4560
         Width           =   855
      End
      Begin VB.CommandButton cancelFind 
         Caption         =   "Cancel"
         Height          =   495
         Left            =   4440
         TabIndex        =   178
         Top             =   4560
         Width           =   855
      End
      Begin VB.TextBox txtFind 
         Height          =   375
         Left            =   2040
         TabIndex        =   177
         Top             =   960
         Width           =   5055
      End
      Begin VB.OptionButton optionFind 
         Caption         =   "NameWise"
         Height          =   375
         Index           =   1
         Left            =   4440
         TabIndex        =   176
         Top             =   480
         Value           =   -1  'True
         Width           =   1335
      End
      Begin VB.OptionButton optionFind 
         Caption         =   "CodeWise"
         Height          =   375
         Index           =   0
         Left            =   2520
         TabIndex        =   175
         Top             =   480
         Width           =   1335
      End
      Begin MSDataGridLib.DataGrid grdFind 
         Height          =   3015
         Left            =   120
         TabIndex        =   180
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
      Begin VB.Label Label36 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Broker"
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
         Left            =   900
         TabIndex        =   182
         Top             =   960
         Width           =   705
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
         TabIndex        =   181
         Top             =   120
         Width           =   9015
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   202
      Top             =   7305
      Width           =   10920
      _ExtentX        =   19262
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
            TextSave        =   "23/06/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:40 PM"
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
   Begin VB.Label DISTRIB 
      AutoSize        =   -1  'True
      Caption         =   "Broker"
      Height          =   195
      Left            =   8040
      TabIndex        =   193
      Top             =   3915
      Visible         =   0   'False
      Width           =   465
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Agent"
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
      Left            =   960
      TabIndex        =   190
      Top             =   930
      Width           =   735
   End
End
Attribute VB_Name = "BrokerMaster"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs, TrnLog As Recordset
Dim DB As Connection
Dim Opt As String
Dim sl As Integer
Dim prty As String
Dim found1, found2, found3 As Boolean
Dim cb, cb1, cg As Variant
Dim dbs, crs, db1 As Variant
Dim a As Integer
Dim pgn As Integer
Dim yrmon  As String, lopt As String
Dim dbsum  As Double, crsum As Double, cur As Double, dby As Double, crb As Double
Dim I As Integer, lno As Integer
Dim rptv As New Report.ReportView
Dim s As String, CHOICE_FIND As String
'---------------------------------------------------------------------------------------
' Procedure : area_GotFocus
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub area_GotFocus()
On Error GoTo area_GotFocus_Error

area.BackColor = "&HC0FFC0" 'green

Exit Sub
area_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure area_GotFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : area_LostFocus
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub area_LostFocus()
On Error GoTo area_LostFocus_Error

area.BackColor = " &H80000005"   'white

Exit Sub
area_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure area_LostFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : bank1_GotFocus
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub bank1_GotFocus()
On Error GoTo bank1_GotFocus_Error

bank1.BackColor = "&HC0FFC0" 'green

Exit Sub
bank1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bank1_GotFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : bank1_LostFocus
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub bank1_LostFocus()
On Error GoTo bank1_LostFocus_Error

bank1.BackColor = "&H80000005"  'white

Exit Sub
bank1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bank1_LostFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : bank2_GotFocus
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub bank2_GotFocus()
On Error GoTo bank2_GotFocus_Error

 bank2.BackColor = "&HC0FFC0"   'green

Exit Sub
bank2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bank2_GotFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : bank2_LostFocus
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub bank2_LostFocus()
On Error GoTo bank2_LostFocus_Error

 bank2.BackColor = "&H80000005"    'white

Exit Sub
bank2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bank2_LostFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
'        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Pallavaa Division", vbInformation, head
'                Call BUTTON_Click(10)
'            Exit Sub
'            End If
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
    'adoPrimaryRS.Open "select SLCODE,SLNAME,ABBR,ADD1,ADD2,ADD3,CITY,PIN,STATE,COUNTRY,PHONE1,PHONE2,EMAIL,WEBADDR,FAX,BANKADD1,BANKADD2,TNGST,CGST,TNGSTDT,CGSTDT,ECC,PAN,CONTPER,CONTDESG,CONTPHONE,PAY_TERMS,CRDDAYS,CRLIMIT,AREACODE,CARCODE,TELEGRAM,TRN_DEBT,PRTYTYP,BRCODE,TAX_CODE,INSPER,State_code,Tinno from FA_SLMAS  where 1 = 2 ", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open "select SLCODE,SLNAME,ABBR,ADD1,ADD2,ADD3,CITY,PIN,STATE,COUNTRY,PHONE1,PHONE2,EMAIL,WEBADDR,FAX,BANKADD1,BANKADD2,TNGST,CGST,TNGSTDT,CGSTDT,ECC,PAN,CONTPER,CONTDESG,CONTPHONE,PAY_TERMS,CRDDAYS,CRLIMIT,AREACODE,CARCODE,TELEGRAM,TRN_DEBT,PRTYTYP,BRCODE,TAX_CODE,INSPER,State_code,Tinno,gststatecode,gstinno,isactive from FA_SLMAS  where 1 = 2 ", DB, adOpenStatic, adLockBatchOptimistic
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
    
    Set ypdr.DataSource = Nothing
    ypcr.Text = ""
    ypdr.Text = ""
    'Calling adddelmod procedure
    Call adddelmod(BUTTON)
   ' Frame3.Visible = True
   
    Txtfields(0).Locked = True
    s = ""
    SSTab1.Tab = 0
    'choi(0).value = True
    dbname.Text = ""
    Call PartyLookup
    'BK = 0

Case 1
'MODIFICATION
'   If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Pallavaa Division", vbInformation, head
'                Call BUTTON_Click(10)
'            Exit Sub
'            End If
'
'    End If
    Opt = "mod"
    choi(0).value = True
    Frame3.Visible = True
    Frame3.ZOrder
    desc.Caption = "Modification"
    
    

    
    ypcr.Locked = True 'False
    ypdr.Locked = True ' False
    SSTab1.TabEnabled(2) = False
    
   ' Frame1.ZOrder
    Call ENABLCONTLS
    Txtfields(0).Locked = True
    Txtfields(1).Locked = False
    dbname.Text = ""
    Txtfields(2).Locked = True
    prtyTXT.Locked = True
'    abbr.Locked = True
    Call bindcontls
    
    SSTab1.Tab = 0
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    Call PartyLookup
Case 2
'Deletion
'   If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Pallavaa Division", vbInformation, head
'                Call BUTTON_Click(10)
'            Exit Sub
'            End If
'
'    End If
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

''Case 3
''    desc.Caption = "Listing"
   
Case 4
    'Query
    
    Frame6.Visible = False
     Opt = "fnd"
    desc.Caption = "Finding"
    
    Canvelok.Default = True
    ypcr.Locked = True 'False
    ypdr.Locked = True 'False
    SSTab1.TabEnabled(2) = False
    SSTab1.Visible = False
    Call adddelmod(BUTTON)
    Set Rs = New Recordset
    Rs.Open "SELECT slcode as Code,slname as Name FROM fa_slmas where slcode like '" & PartyBroker & "%'", DB, adOpenStatic, adLockBatchOptimistic
    If Not Rs.BOF Then
        Set grdFind.DataSource = Rs
    Else
        Set grdFind.DataSource = Nothing
        'MsgBox "No Records Found", vbInformation, head
        Buttonframe.Enabled = True
        Call BUTTON_Click(10)
        Exit Sub
    End If
    grdFind.Columns(0).Width = 1000
    grdFind.Columns(1).Width = 6000
    
    FNDFRME.Visible = True
    FNDFRME.Enabled = True
    CHOICE_FIND = "N"
   
    Call ENABLCONTLS
    Txtfields(0).Locked = True
    Txtfields(1).Locked = False
    txtFind.Text = ""
    Txtfields(2).Locked = False
    prtyTXT.Locked = True

    Call bindcontls
    Canvelok.Default = True
    SSTab1.Tab = 0
    txtFind.SetFocus

    

    
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
     
     If Opt = "add" Or Opt = "mod" Then
        If Txtfields(2).Text = "" Then
            MsgBox " Name cannot be empty", vbInformation, head
            Txtfields(2).SetFocus
            Exit Sub
        ElseIf adoPrimaryRS(3) = "" Then
            MsgBox "Address cannot be empty", vbInformation, head
            Txtfields(3).SetFocus
            Exit Sub
        ElseIf adoPrimaryRS(6) = "" Then
            MsgBox " Area/Place Cannot be empty", vbInformation, head
            Txtfields(5).SetFocus
            Exit Sub
        End If
        
        If Txtfields(46).Text = "" Then
            MsgBox "Please Enter the GSTNo...!"
            Txtfields(46).SetFocus
            Exit Sub
        End If
     
     
        If Txtfields(45).Text = "" Then
            MsgBox "The state code should not be empty"
            Exit Sub
        End If
     
     If UCase(CustID) <> "SKY" Then
        If Len(Txtfields(46)) <> 15 Then
            MsgBox "The GST No. Length should be 15 character...!"
            Txtfields(46).SetFocus
            Exit Sub
        End If
     
        If Left(Txtfields(46), 2) <> Txtfields(45).Text Then
            MsgBox "The first Two digit of GST No. Should be state code...!"
            Txtfields(46).SetFocus
            Exit Sub
        End If
     End If
        
        
        
        If Opt = "add" Then
        Dim rsin As Recordset
        Set rsin = New Recordset
        'rsin.Open "select slcode from FA_SLMAS where slname = '" & UCase(Trim(txtfields(2).Text)) & "'", DB, adOpenStatic
        rsin.Open "select slcode from FA_SLMAS where slcode = '" & UCase(Trim(Txtfields(0).Text)) & "'", DB, adOpenStatic
        If rsin.RecordCount > 0 Then
              MsgBox "A Sub Ledger Code for this party already exists", vbInformation, head
'              txtfields(0).Text = ""
              Txtfields(2).SetFocus
              Exit Sub
        Else
'           abbr.Text = txtfields(1).Text
           TXname.Text = Txtfields(2).Text
           vendor.Text = Txtfields(0).Text
        End If
        End If
     End If
     If Opt = "add" Then
        DB.BeginTrans
        adoPrimaryRS("PRTYTYP") = prty
'        If Check1.Value = 1 Then
'            adoPrimaryRS("TRN_DEBT") = "Y"
'        Else
'            adoPrimaryRS("TRN_DEBT") = "N"
'        End If
        adoPrimaryRS("state_code") = Txtfields(35).Text
        adoPrimaryRS("state") = Txtfields(6).Text
        adoPrimaryRS("tinno") = Txtfields(36).Text
        '22.06
         adoPrimaryRS("gstinno") = Txtfields(46).Text
        
        '31.05
         adoPrimaryRS("gststatecode") = Txtfields(45).Text
        If Chk_ActiveFlag.value = 1 Then
            adoPrimaryRS("isactive") = "Y"
        Else
            adoPrimaryRS("isactive") = "N"
        End If
        
        Set TrnLog = New Recordset
         TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
         TrnLog.AddNew
         TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Agent"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("slcode") = UCase(Trim(Txtfields(0).Text))

                    TrnLog.UpdateBatch adAffectAllChapters
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
            Txtfields(3).SetFocus
            Exit Sub
        ElseIf IsNull(adoPrimaryRS("city")) Then
            'MsgBox " City Cannot be empty", vbInformation, head
'            txtFields(5).SetFocus
           ' Exit Sub
        End If
        DB.BeginTrans
        a = a
        adoPrimaryRS("state_code") = Txtfields(35).Text
        adoPrimaryRS("state") = Txtfields(6).Text
        adoPrimaryRS("tinno") = Txtfields(36).Text
        
        '22.06
         adoPrimaryRS("gstinno") = Txtfields(46).Text
        
        '31.05
         adoPrimaryRS("gststatecode") = Txtfields(45).Text
        If Chk_ActiveFlag.value = 1 Then
            adoPrimaryRS("isactive") = "Y"
        Else
            adoPrimaryRS("isactive") = "N"
        End If
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
        Set TrnLog = New Recordset
         TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
         TrnLog.AddNew
         TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Agent"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("slcode") = UCase(Trim(Txtfields(0).Text))

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
        On Error GoTo deler
        DB.BeginTrans
        DB.Execute ("delete from FA_SLBAL where SLCODE=" & "'" & Txtfields(0).Text & "'")
        DB.Execute ("delete from FA_SLMAS where SLCODE=" & "'" & Txtfields(0).Text & "'")
        Set TrnLog = New Recordset
         TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
         TrnLog.AddNew
         TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Agent"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("slcode") = UCase(Trim(Txtfields(0).Text))

                    TrnLog.UpdateBatch adAffectAllChapters
        
        DB.CommitTrans
        MsgBox "Sucessfully deleted", vbOKOnly, head + "Deletion Message"
   End If
   'Return to query mode
   Call query_mode
   'calling newform_cancel procedure from module (also for save)
   Call NEWFORM(BUTTON)
   Call NEWFORM1(BUTTON, GSNO)
   BUTTON(0).SetFocus
    
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
    BUTTON(0).SetFocus ''''''''''
    'calling cancl procedure from module
    
    
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
Case 3, 13
    desc.Caption = "Listing"
    Frame2.Visible = True
    SSTab1.Visible = False
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
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form BrokerMaster"
End Sub



'---------------------------------------------------------------------------------------
' Procedure : carrier_GotFocus
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub carrier_GotFocus()
On Error GoTo carrier_GotFocus_Error

 carrier.BackColor = "&HC0FFC0"  'green

Exit Sub
carrier_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure carrier_GotFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : carrier_LostFocus
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub carrier_LostFocus()
On Error GoTo carrier_LostFocus_Error

 carrier.BackColor = " &H80000005"   'white

Exit Sub
carrier_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure carrier_LostFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Command2_Click
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Frame2.Visible = False
Call BUTTON_Click(10)

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : dbname_GotFocus
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub dbname_GotFocus()
On Error GoTo dbname_GotFocus_Error

dbname.BackColor = " &HC0FFC0"  'green

Exit Sub
dbname_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure dbname_GotFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : dbname_LostFocus
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub dbname_LostFocus()
On Error GoTo dbname_LostFocus_Error

dbname.BackColor = " &H80000005"  'white
Txtfields(14).SetFocus

Exit Sub
dbname_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure dbname_LostFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
On Error GoTo Form_KeyDown_Error
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
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form BrokerMaster"
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
  stbar.Panels(1).Text = head
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "Provider=MSDATASHAPE;" & connectstring
  Opt = "qry"
  Frame3.Visible = False
  Call bindcontls
  
  Call query_mode
  SSTab1.TabEnabled(2) = False
  Set Rs = New Recordset
  Rs.Open "Select ptypebroker from masterlen", DB, adOpenStatic
  'PartyType = "C1"
  PartyBroker = Rs("ptypebroker")
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form BrokerMaster"
  End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Unload
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form BrokerMaster", vbInformation, head
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
     Set party.DataSource = adoPrimaryRS
     Set pname.DataSource = adoPrimaryRS
     Set vendor.DataSource = adoPrimaryRS
     Set TXname.DataSource = adoPrimaryRS
     If IIf(IsNull(adoPrimaryRS("isactive")), "N", adoPrimaryRS("isactive")) = "N" Then
        Chk_ActiveFlag.value = 0
     Else
         Chk_ActiveFlag.value = 1
     End If
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
  intervalMinutes = -1
'  If adoPrimaryRS("TRN_DEBT") = "Y" Then
'    Check1.Value = 1
'  Else
'    Check1.Value = 0
'  End If
  'End If
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form BrokerMaster"
End Sub

Public Sub bindcontls()
  Dim oText As TextBox
  'Binding  the text boxes to the data source
On Error GoTo bindcontls_Error
  For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
  Next
Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form BrokerMaster"
End Sub

Public Sub ENABLCONTLS()
Dim tb As TextBox
On Error GoTo ENABLCONTLS_Error
For Each tb In Me.Txtfields
    tb.Locked = False
Next
'Check1.Enabled = True
Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form BrokerMaster"
End Sub
Public Sub disablcontls()
Dim tb As TextBox
On Error GoTo disablcontls_Error
For Each tb In Me.Txtfields
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form BrokerMaster"
End Sub



Private Sub lovcancel_Click()
'SSTab1.Tab = 1
On Error GoTo lovcancel_Click_Error
If SSTab1.Visible = True Then
Frame1.Visible = False
Select Case ksldesc1.listfield1
Case "SLCODE"
    If Label5.Caption = "AGENT LISTING" Then
        Txtfields(3).SetFocus
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
    Txtfields(33).SetFocus
End Select
End If 'for sstab1.visible = true
If SSTab1.Visible = False Then
Frame3.Visible = True
Frame1.Visible = False
End If
Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form BrokerMaster"
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error
SSTab1.Visible = True
Dim Rs As Recordset
Select Case ksldesc1.listfield1
Case "SLCODE"
  
    If Label5.Caption = "AGENT LISTING" Then
        Txtfields(23).Text = ksldesc1.code
        dbname.Text = ksldesc1.Description
        Txtfields(3).SetFocus
    Else
        If Opt = "del" Then
            Dim rsdel As Recordset
            Set rsdel = New Recordset
            rsdel.Open "select sum(isnull(debit,0)-isnull(credit,0)) from FA_SLBAL WHERE SLCODE='" & ksldesc1.code & "' and DivCode '" & Divcode & "'", DB
            'rsdel.Open "select sum(isnull(debit,0)-isnull(credit,0)) from FA_SLBAL WHERE SLCODE=" & ksldesc1.code & " AND substring(YEARMONTH,5,2) <> '00' ",db
            If Not (rsdel(0) = 0) Then
                 MsgBox " Balance Amount for this customer is not zero, Cannot be deleted !! ", vbInformation, head
                 Frame1.Visible = False
                 Call BUTTON_Click(10)
                 Exit Sub
            End If
        End If
        Txtfields(0).Text = ksldesc1.code
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        
        Set adoPrimaryRS = New Recordset
        'suresh
        'adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,S.LADD1,S.LADD2,S.LADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER from FA_SLMAS s WHERE  S.SLCODE= '" & ksldesc1.code & "'  Order by slcode", db, adOpenStatic, adLockOptimistic
        'adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,State_code,Tinno from FA_SLMAS s WHERE  S.SLCODE= '" & ksldesc1.Code & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,State_code,Tinno,s.gststatecode,s.gstinno,s.isactive from FA_SLMAS s WHERE  S.SLCODE= '" & ksldesc1.code & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
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
         rsb.Open "select isnull(DEBIT,0),isnull(CREDIT,0) FROM FA_SLBAL WHERE SLCODE='" & adoPrimaryRS("SLCODE") & "' AND substring(YEARMONTH,5,2)='00' AND substring(YEARMONTH,1,4)= year('" & Format(yfdate, "yyyy-mm-dd") & "') and DivCode '" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
        If Not (rsb.RecordCount = 0) Then
            ypdr.Text = rsb(0)
            ypcr.Text = rsb(1)
        Else
            ypdr.Text = "0.00"
            ypcr.Text = "0.00"
        End If
        SSTab1.Tab = 0
        vendor.Text = Txtfields(0).Text
'        abbr.Text = txtfields(1).Text
        TXname.Text = Txtfields(2).Text
        BUTTON(9).Enabled = True
        Set dbname.DataSource = Rs
    End If
Case "d.slcode"
    DISTRIB.Visible = False
    Txtfields(23).Text = ksldesc1.code
    dbname.Text = ksldesc1.Description
    Txtfields(1).SetFocus
Case "a.prtytyp"
Label5.Caption = "Sub Ledger Listing "
If Opt = "add" Then
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True
    prty = ksldesc1.code
    Txtfields(2).SetFocus
    prtyTXT = ksldesc1.Description
    If prty = "D2" Then
        DISTRIB.Visible = False
        Frame3.ZOrder
        ksldesc1.conn = connectstring
        ksldesc1.table = "FA_SLMAS d where d.prtytyp = 'D1'"
        ksldesc1.listfield1 = "d.slcode"
        ksldesc1.listfield2 = "d.slname"
        ksldesc1.SetFocus
        Exit Sub
    End If
Else
    SSTab1.Visible = False
    Frame3.ZOrder
    ksldesc1.conn = connectstring
    ksldesc1.table = "FA_SLMAS WHERE substring(SLCODE,1,2) = '" & ksldesc1.code & "'"
    ksldesc1.listfield1 = "SLCODE"
    ksldesc1.listfield2 = "SLNAME"
    Exit Sub
End If
Case "tax_code"
    Txtfields(29).Text = ksldesc1.code
    tax.Text = ksldesc1.Description
    Txtfields(33).SetFocus
Case "carcode"
    Txtfields(25).Text = ksldesc1.code
    carrier.Text = ksldesc1.Description
    carrier.SetFocus
Case "AREACODE"
    Txtfields(24).Text = ksldesc1.code
    area.Text = ksldesc1.Description
    area.SetFocus
Case "bank_code"

    If Label5.Caption = "BANK1 LISTING" Then
        Txtfields(30).Text = ksldesc1.code
        bank1.Text = ksldesc1.Description
        bank1.SetFocus
    Else
        Txtfields(31).Text = ksldesc1.code
        bank2.Text = ksldesc1.Description
        bank2.SetFocus
    End If
End Select
stbar.Panels(2).Text = "Please Enter the SLname"
Frame1.Visible = False
Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form BrokerMaster"
End Sub

Private Sub optcan_Click()
On Error GoTo optcan_Click_Error
Frame3.Visible = False
DB.RollbackTrans
SSTab1.Visible = True
SSTab1.Visible = True
Call query_mode
Exit Sub
optcan_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure optcan_Click of Form BrokerMaster"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure optok_Click of Form BrokerMaster"
End Sub


'---------------------------------------------------------------------------------------
' Procedure : prtyTXT_LostFocus
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub prtyTXT_LostFocus()
On Error GoTo prtyTXT_LostFocus_Error

Txtfields(2).SetFocus

Exit Sub
prtyTXT_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prtyTXT_LostFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : qrycan_Click
' DateTime  : 07/12/2008 14:27
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub qrycan_Click()
On Error GoTo qrycan_Click_Error

Buttonframe.Enabled = True
Frame6.Visible = False

Exit Sub
qrycan_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qrycan_Click of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub qryok_Click()
On Error GoTo qryok_Click_Error
Buttonframe.Enabled = True
Set adoPrimaryRS = New Recordset
    Screen.MousePointer = 11
'  On Error GoTo ER1
  '*=
  'adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,S.TAX_CODE,s.INSPER , P.GLCOD,s.State_code,s.Tinno from FA_SLMAS S,FA_PRTY P,FA_SLMAS S1 WHERE S.slcode = '" & Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1)) & "' and S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode Order by s1.SLCODE ", db, adOpenStatic, adLockBatchOptimistic
  'adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,S.TAX_CODE,s.INSPER , P.GLCOD,s.State_code,s.Tinno from FA_SLMAS S left join FA_PRTY P on S.PRTYTYP = P.PRTYTYP left join FA_SLMAS S1 on s.BRCODE = s1.slcode WHERE S.slcode = '" & Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1)) & "'  Order by s1.SLCODE ", DB, adOpenStatic, adLockBatchOptimistic
  adoPrimaryRS.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.BANKADD1,S.BANKADD2,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.AREACODE,S.CARCODE,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,S.TAX_CODE,s.INSPER , P.GLCOD,s.State_code,s.Tinno,s.gststatecode,s.gstinno ,s.isactive from FA_SLMAS S left join FA_PRTY P on S.PRTYTYP = P.PRTYTYP left join FA_SLMAS S1 on s.BRCODE = s1.slcode WHERE S.slcode = '" & Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1)) & "'  Order by s1.SLCODE ", DB, adOpenStatic, adLockBatchOptimistic
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qryok_Click of Form BrokerMaster"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_Click of Form BrokerMaster"
End Sub


'---------------------------------------------------------------------------------------
' Procedure : tax_GotFocus
' DateTime  : 07/12/2008 14:28
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub tax_GotFocus()
On Error GoTo tax_GotFocus_Error

 tax.BackColor = "&HC0FFC0"    'green

Exit Sub
tax_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure tax_GotFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : tax_LostFocus
' DateTime  : 07/12/2008 14:28
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub tax_LostFocus()
On Error GoTo tax_LostFocus_Error

 tax.BackColor = "&H80000005"   'white

Exit Sub
tax_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure tax_LostFocus of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtcr_GotFocus of Form BrokerMaster"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtdr_GotFocus of Form BrokerMaster"

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
Dim oText As TextBox
On Error GoTo txtFields_GotFocus_Error
For Each oText In Me.Txtfields
oText.BackColor = "&H80000005"     'white
Next
Txtfields(Index).BackColor = "&HC0FFC0"  'green
Txtfields(6).BackColor = "&H00E0E0E0" '''' Light Ash Color
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
    Case 23
'        Frame1.Visible = True
'        Frame1.ZOrder
'        'SSTab1.Tab = 0
'        KSLDESC1.conn = connectstring
'        KSLDESC1.Table = "FA_SLMAS"
'        KSLDESC1.listfield1 = "SLCODE"
'        KSLDESC1.listfield2 = "SLNAME"
'        KSLDESC1.SetFocus
        
    Case 24
        Frame1.Visible = True
        Label5.Caption = "AREA LISTING"
        'SSTab1.Tab = 0
        ksldesc1.conn = connectstring
        ksldesc1.table = "IG_AREA"
        ksldesc1.listfield1 = "AREACODE"
        ksldesc1.listfield2 = "AREANAME"
        ksldesc1.SetFocus
    Case 25
        Frame1.Visible = True
        Label5.Caption = "CARRIER LISTING"
        'SSTab1.Tab = 0
        ksldesc1.conn = connectstring
        ksldesc1.table = "PO_CAR"
        ksldesc1.listfield1 = "carcode"
        ksldesc1.listfield2 = "carname"
        ksldesc1.SetFocus
    Case 29
        Frame1.Visible = True
        Label5.Caption = "TAX LISTING"
        'SSTab1.Tab = 0
        ksldesc1.conn = connectstring
        ksldesc1.table = "IG_TAX"
        ksldesc1.listfield1 = "tax_code"
        ksldesc1.listfield2 = "tax_desc"
        ksldesc1.SetFocus
    Case 30
        Frame1.Visible = True
        Label5.Caption = "BANK1 LISTING"
        'SSTab1.Tab = 0
        'BK = 1
        ksldesc1.conn = connectstring
        ksldesc1.table = "IG_BANK"
        ksldesc1.listfield1 = "bank_code"
        ksldesc1.listfield2 = "bank_desc"
        ksldesc1.SetFocus
    Case 31
        Frame1.Visible = True
        Label5.Caption = "BANK2 LISTING"
        'SSTab1.Tab = 0
        'BK = 2
        ksldesc1.conn = connectstring
        ksldesc1.table = "IG_BANK"
        ksldesc1.listfield1 = "bank_code"
        ksldesc1.listfield2 = "bank_desc"
        ksldesc1.SetFocus
    End Select
End If
ypdr.Text = ypdr.Text
'If Opt = "add" Then
'   a = "Please Enter the "
'Else
'   a = ""
'End If
If Index < 14 Or Index = 34 Or Index = 32 Then
   If Index = 1 Then
      stbar.Panels(2).Text = a & " Abbrevation of SLname"
      ElseIf Index = 2 Then stbar.Panels(2).Text = a & " SLname"
      ElseIf Index = 3 Or Index = 4 Or Index = 34 Then stbar.Panels(2).Text = a & " Address of " & Txtfields(2).Text
      ElseIf Index = 5 Then stbar.Panels(2).Text = a & " City of" & Txtfields(2).Text
      ElseIf Index = 6 Then stbar.Panels(2).Text = a & " State of" & Txtfields(2).Text
      ElseIf Index = 7 Then stbar.Panels(2).Text = a & " Country of" & Txtfields(2).Text
      ElseIf Index = 8 Then stbar.Panels(2).Text = a & " PostalCode of" & Txtfields(5).Text
      ElseIf Index = 9 Then stbar.Panels(2).Text = a & " Phone number of " & Txtfields(2).Text
      ElseIf Index = 10 Then stbar.Panels(2).Text = a & "n Phone number of " & Txtfields(2).Text
      ElseIf Index = 11 Then stbar.Panels(2).Text = a & " FAX number of " & Txtfields(2).Text
      ElseIf Index = 12 Then stbar.Panels(2).Text = a & " E-mail Addres of " & Txtfields(2).Text
      ElseIf Index = 13 Then stbar.Panels(2).Text = a & " Website Address of " & Txtfields(2).Text
      ElseIf Index = 32 Then stbar.Panels(2).Text = a & " Grams of " & Txtfields(2).Text
   End If
End If 'for Index < 14 Or Index = 34
If Index < 34 And Index <> 23 And Index <> 34 And Index <> 32 Then
   If Index = 14 Then
   stbar.Panels(2).Text = a & " TNGST No. of " & Txtfields(2).Text
      ElseIf Index = 16 Then stbar.Panels(2).Text = a & " TNGST No. Date of " & Txtfields(2).Text
      ElseIf Index = 15 Then stbar.Panels(2).Text = a & " CST No. of " & Txtfields(2).Text
      ElseIf Index = 17 Then stbar.Panels(2).Text = a & " CST No. Date of " & Txtfields(2).Text
      ElseIf Index = 18 Then stbar.Panels(2).Text = a & " ECC No of " & Txtfields(2).Text
      ElseIf Index = 19 Then stbar.Panels(2).Text = a & " PAN No. of " & Txtfields(2).Text
      ElseIf Index = 20 Then stbar.Panels(2).Text = a & " Phone number of " & Txtfields(22).Text
      ElseIf Index = 21 Then stbar.Panels(2).Text = a & " Designation of " & Txtfields(22).Text
      ElseIf Index = 22 Then stbar.Panels(2).Text = a & " Contact Person of " & Txtfields(2).Text
      ElseIf Index = 24 Then stbar.Panels(2).Text = a & " Area of " & Txtfields(2).Text
      ElseIf Index = 25 Then stbar.Panels(2).Text = a & " Carrier of " & Txtfields(2).Text
      ElseIf Index = 26 Then stbar.Panels(2).Text = a & " Payment Terms of " & Txtfields(2).Text
      ElseIf Index = 27 Then stbar.Panels(2).Text = a & " Credit Days"
      ElseIf Index = 28 Then stbar.Panels(2).Text = a & " Credit Limit"
      ElseIf Index = 29 Then stbar.Panels(2).Text = a & " Tax of " & Txtfields(2).Text
      ElseIf Index = 33 Then stbar.Panels(2).Text = a & " Insurance"
  End If
End If ' IfIndex < 34 And Index <> 23 And Index <> 34 And Index <> 32

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form BrokerMaster"
      
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error
If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 2
        If Trim(Txtfields(Index)) = "" Then
            Call ToAlphaOnly(Txtfields(Index), KeyAscii)
        Else
            Call ToAlphaNumberName(Txtfields(Index), 50, KeyAscii)
        End If
    Case 27
        Call ToNumber(Txtfields(Index), KeyAscii)
    Case 8
        Call ToNumber(Txtfields(Index), KeyAscii)
        If Len(Txtfields(8).Text) = 3 Then
            If KeyAscii <> 8 Then KeyAscii = 32
        End If
    Case 9, 10, 20, 11
        Call ToNumPhone(Txtfields(Index), KeyAscii)
    Case 13
        Call ToAlphaNumberWeb(Txtfields(Index), 25, KeyAscii)
    Case 12
        Call ToAlphaNumberEmail(Txtfields(Index), 25, KeyAscii)
    Case 14, 15, 18, 19, 36, 37, 38
        Call ToAlphaNumber(Txtfields(Index), 25, KeyAscii)
    Case 16, 17
        Call ToDateNumber(Txtfields(Index), KeyAscii)
    Case 33
        Call ToNumberAssign(Txtfields(Index), 3, KeyAscii, 3, 2)
    '31.05
    Case 46
        If (Len(Txtfields(Index))) < 2 Then
        If Not (KeyAscii >= 48 And KeyAscii <= 57) Then
        If KeyAscii <> 8 Then
            MsgBox "First two characters of GST Number should be numeric", vbInformation, head
            KeyAscii = 0
        End If
        End If
        End If
    
    
        If (Len(Txtfields(Index))) >= 2 And (Len(Txtfields(Index))) < 7 Then
        If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
        If KeyAscii <> 8 Then
            MsgBox "Third character to Seventh character of GST Number should be Alphabet", vbInformation, head
            KeyAscii = 0
        End If
        End If
        End If
    
        If (Len(Txtfields(Index))) >= 7 And (Len(Txtfields(Index))) < 11 Then
        If Not ((KeyAscii >= 48 And KeyAscii <= 57)) Then
        If KeyAscii <> 8 Then
            MsgBox "Eigth character to Eleventh character of GST Number should be Numeric", vbInformation, head
            KeyAscii = 0
        End If
        End If
        End If
        
        If (Len(Txtfields(Index).Text)) >= 11 And (Len(Txtfields(Index).Text)) < 15 Then
        Call ToAlphaNumber(Txtfields(Index), 5, KeyAscii)
        'If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
        'If KeyAscii <> 8 Then
         '   MsgBox "Twelth to Fifteenth character of GST Number should be Alphabet", vbInformation, head
         '   KeyAscii = 0
        'End If
       ' End If
        End If
        
        
End Select
End If
Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form BrokerMaster"
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
Dim oText As TextBox
On Error GoTo txtfields_LostFocus_Error
Dim rsa As New Recordset
For Each oText In Me.Txtfields
oText.BackColor = "&H80000005"     'white
Next
If Index = 35 Then
    Txtfields(6).BackColor = "&H00E0E0E0"
End If
Dim Rs As Recordset
Dim s As String
Dim t As String
If Opt = "add" Or Opt = "mod" Then

'    If Index = 46 Then
'        If Len(Trim(txtfields(46).Text)) <> 15 Then
'            MsgBox "GST Number Should be 15 Characters!", vbCritical
'            txtfields(46).SetFocus
'        End If
'    End If


    If Index = 5 Then Call CityLookup
    If Index = 23 Then
            Set rsa = New Recordset
            rsa.Open "select Slcode,Slname from fa_slmas where slcode='" & Txtfields(23).Text & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                Call BrokerLookup
            End If
    
    End If


    If Index = 20 Then
      SSTab1.Tab = 1
       ypdr.SetFocus
       'txtfields(22).SetFocus
    End If
    Dim B As Integer
    If Index = 12 Then
        a = InStr(1, Txtfields(Index), "@")
        B = InStr(1, Txtfields(Index), ".")
        If Trim(Txtfields(Index).Text) <> "" Then
            If a <= 0 Or B <= 0 Then
                MsgBox "Please enter the valid e-Mail", vbInformation, head
                Txtfields(Index).SetFocus
                Exit Sub
            End If
            Txtfields(13).Text = "www."
            Txtfields(13).SelStart = 5
        End If
    End If

End If
If Opt = "add" Or Opt = "mod" Then
    If Not (Txtfields(Index).Text = "") And Index <> 12 Then
        If Index <> 13 Then Txtfields(Index).Text = UCase(Txtfields(Index).Text)
    End If
If Index = 16 Or Index = 17 Then
    If Trim(Txtfields(Index).Text) <> "" Then
        If Not (IsDate(Txtfields(Index)) Or Txtfields(Index).Text = "") Then
            MsgBox " Invalid date" & Chr(13) & " Enter date in this format - '15/08/1947'", vbInformation, head
            Txtfields(Index).Text = ""
            Txtfields(Index).SetFocus
            Exit Sub
        ElseIf Txtfields(Index).Text > pdate Then
            MsgBox "Date Should Not Be Greater than Processing Date", vbInformation, head
            Txtfields(Index).Text = ""
            Txtfields(Index).SetFocus
            Exit Sub
        End If
    End If
End If
End If
Select Case Index
Case 1
    'abbr.Text = txtfields(1).Text
    
         stbar.Panels(2).Text = "Enter the Address of Supplier"
    Txtfields(3).SetFocus
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
    If Not (Trim(Txtfields(Index).Text) = "") Then
    If Not (IsNumeric(Txtfields(Index).Text)) Or Not (Len(Txtfields(Index).Text) <= 3) Then
        MsgBox "Credit Days can be a maximum of 3 numbers", vbInformation, head
        Txtfields(Index).SetFocus
        Exit Sub
    End If
    End If
Case 28
'    If Not (IsNumeric(txtfields(Index).Text)) Or (Len(txtfields(Index).Text) > 15) Then
'        MsgBox "Credit Limit cannot exceed 15 numeric characters ", vbCritical, head
'        txtfields(28).SetFocus
'        Exit Sub
'    End If
BUTTON(9).SetFocus
Case 33
    If Not (IsNumeric(Txtfields(Index).Text)) Or Not (Len(Txtfields(Index).Text) < 7) Then
'        MsgBox "Insurance Percentage cannot exceed 7 numeric characters ", vbCritical, head
'        txtfields(33).SetFocus
'        Exit Sub
    Else
        BUTTON(9).SetFocus
    End If

End Select
Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form BrokerMaster"

End Sub

Public Sub query_mode()
On Error GoTo query_mode_Error
Opt = "qry"
If Not Opt = " " Then
  Opt = " "
 
  Set adoPrimaryRS = New Recordset
  'adoprimaryrs.Open "select S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE from FA_SLMAS S,FA_PRTY P, FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode and s.slcode like 'c%' Order by s.SLCODE ", db, adOpenStatic, adLockBatchOptimistic
'*=
'  adoPrimaryRS.Open "select top 1 S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE,s.State_code,s.Tinno from FA_SLMAS S,FA_PRTY P, FA_SLMAS S1 WHERE S.PRTYTYP *= P.PRTYTYP and s.BRCODE *= s1.slcode and s.slcode like '" & PartyBroker & "%' Order by s.SLCODE ", db, adOpenStatic, adLockBatchOptimistic
  'adoPrimaryRS.Open "select top 1 S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE,s.State_code,s.Tinno from FA_SLMAS S left join FA_PRTY P on S.PRTYTYP = P.PRTYTYP left join FA_SLMAS S1 on s.BRCODE = s1.slcode WHERE s.slcode like '" & PartyBroker & "%' Order by s.SLCODE ", DB, adOpenStatic, adLockBatchOptimistic
  adoPrimaryRS.Open "select top 30 S.SLCODE,S.SLNAME,S.ABBR,S.ADD1,S.ADD2,S.ADD3,S.CITY,S.PIN,S.STATE,S.COUNTRY,S.PHONE1,S.PHONE2,S.EMAIL,S.WEBADDR,S.FAX,S.CRLIMIT,S.TNGST,S.CGST,S.TNGSTDT,S.CGSTDT,S.ECC,S.PAN,S.CONTPER,S.CONTDESG,S.CONTPHONE,S.PRTYTYP,S.PAY_TERMS,S.CRDDAYS,S.CRLIMIT,S.TELEGRAM,S.TRN_DEBT,P.PRTYHEAD,S.BRCODE,S1.SLNAME DBNAME,s.INSPER , P.GLCODE,s.State_code,s.Tinno,s.gststatecode,s.gstinno,s.isactive from FA_SLMAS S left join FA_PRTY P on S.PRTYTYP = P.PRTYTYP left join FA_SLMAS S1 on s.BRCODE = s1.slcode WHERE s.slcode like '" & PartyBroker & "%' Order by s.SLCODE ", DB, adOpenStatic, adLockBatchOptimistic
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form BrokerMaster"
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error
Dim s As String
If Opt = "add" Or Opt = "mod" Then
If Index = 3 Then
    If Trim(Txtfields(3).Text) = "" Then
    MsgBox "Address can't be Empty", vbInformation, head
    Cancel = True
    Txtfields(3).SetFocus
    End If
End If

If UCase(CustID) <> "SKY" Then
    If Index = 46 Then
        
        If Len(Trim(Txtfields(46).Text)) <> 15 Then
            MsgBox "GST Number Should be 15 Characters!", vbCritical
            'txtfields(46).SetFocus
        End If
    
    
    If Left(Txtfields(46), 2) <> Txtfields(45).Text Then
        MsgBox "The first Two digit of GST No. Should be state code...!"
       ' txtfields(46).SetFocus
       ' Exit Sub
     End If
     End If
End If
    
'If Opt = "add" Or Opt = "mod" Then
'Select Case Index
'Case 6
'            LookUp.clear = True
'            LookUp.query = "select a.NAME as [Area Name],b.NAME as [State Name],b.STATE_CODE as [State Code],isnull(gststatecode,0) [GST State Code] from IG_AREA a,IG_STATE b where a.STATE_CODE=b.STATE_CODE"
'            LookUp.DefCol = "Area Name"
'            LookUp.ALIGN = "3300,3300"
'            LookUp.Caption = "Area Name Listing"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                txtfields(5).Text = LookUp.Fields(0)
'                If LookUp.Fields(2) <> 0 Then
'                    txtfields(45).Text = LookUp.Fields(3)
'                    txtfields(46).Text = LookUp.Fields(3) 'GST No's first two digit no is statecode'
'                Else
'                    MsgBox "The Statecode is not mapped for this place...!"
'                    txtfields(45).Text = ""
'                    txtfields(46).Text = ""
'                    txtfields(35).Text = ""
'                    txtfields(6).Text = ""
'                    txtfields(5).SetFocus
'                    Exit Sub
'
'                End If
'                txtfields(6).Text = LookUp.Fields(1)
'                txtfields(35).Text = LookUp.Fields(2)
'
'                LookUp.clear = True
'            Else
'                txtfields(5).Text = ""
'            End If
' End Select
' End If
'

'If Index = 5 Then
'    If Trim(txtFields(5).Text) = "" Then
'    MsgBox "City can't be Empty", vbInformation, head
''    Cancel = True
' '   txtFields(5).SetFocus
'    End If
'End If
If Index = 2 And Opt = "add" Then
If Txtfields(2).Text = "" Then
        MsgBox " Name cannot be empty", vbInformation, head
        Cancel = True
        'Txtfields(2).SetFocus
        Exit Sub
    End If
    If Trim(Txtfields(0).Text) = "" And Not Txtfields(2).Text = "" Or Trim(Txtfields(0).Text) <> "" Then
        Set Rs = New Recordset
        s = Mid$(Txtfields(2).Text, 1, 1)
        s = prty & s
        
        Rs.Open "select isnull(max(CAST(substring(slcode,4," & Suplen & ") AS NUMERIC)),0) as slcode from FA_SLMAS where slcode like '" & s & "%' ", DB, adOpenStatic, adLockBatchOptimistic
        If Not (Rs.BOF Or IsNull(Rs(0))) Then
            If Suplen = 7 Then
                Txtfields(0).Text = s & Padl(val(Rs(0) + 1), 4, "0")
            Else
                Txtfields(0).Text = s & Padl(val(Rs(0) + 1), 3, "0")
            End If
        Else
            If Suplen = 7 Then
                Txtfields(0).Text = s & Padl(1, 4, "0")
            Else
                Txtfields(0).Text = s & Padl(1, 3, "0")
            End If
        End If
'''        Else
'''            rs.Open "select max(CAST(substring(slcode,3," & SupLen & ") AS NUMERIC)) from FA_SLMAS where slcode like '" & s & "%' ", db, adOpenStatic, adLockBatchOptimistic
'''            If Not (rs.BOF Or IsNull(rs(0))) Then
'''                If val(rs(0)) < 9 Then
'''                    txtFields(0).Text = s & "00" & val(rs(0)) + 1
'''                ElseIf val(rs(0)) < 99 Then
'''                    txtFields(0).Text = s & "0" & val(rs(0)) + 1
'''                End If
'''            Else
'''                txtFields(0).Text = s & "0001"
'''            End If
            Txtfields(0).Text = UCase(Txtfields(0).Text)
        Dim rsin As Recordset
        Set rsin = New Recordset
        'rsin.Open "select slcode from FA_SLMAS where slname = '" & UCase(Trim(txtfields(2).Text)) & "'", DB, adOpenStatic
        rsin.Open "select slcode from FA_SLMAS where slcode = '" & UCase(Trim(Txtfields(0).Text)) & "'", DB, adOpenStatic
        If rsin.RecordCount > 0 Then
              MsgBox "A Sub Ledger Code for this party already exists", vbInformation, head
              'txtfields(0).Text = ""
              Txtfields(2).SetFocus
              Exit Sub
        Else
'           abbr.Text = txtfields(1).Text
           TXname.Text = Txtfields(2).Text
           vendor.Text = Txtfields(0).Text
        End If
    End If
End If
End If
Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form BrokerMaster"
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
ypcr.SetFocus
Exit Sub
ypcr_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypcr_DblClick of Form BrokerMaster"
End Sub

Private Sub ypcr_GotFocus()
On Error GoTo ypcr_GotFocus_Error
ypcr.BackColor = "&HC0FFC0" 'green
If ypdr.Text = "0.00" And val(ypcr.Text) = 0 Then
    ypcr.Locked = True 'False
    ypdr.Text = "0.00"
    ypcr.Text = ""
End If
Exit Sub
ypcr_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypcr_GotFocus of Form BrokerMaster"
End Sub

Private Sub ypcr_KeyPress(KeyAscii As Integer)
On Error GoTo ypcr_KeyPress_Error
If Opt = "add" Or Opt = "mod" Then
    Call tonum(ypcr, 13, KeyAscii, 0)
End If
Exit Sub
ypcr_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypcr_KeyPress of Form BrokerMaster"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypcr_LostFocus of Form BrokerMaster"
End Sub

Private Sub ypdr_DblClick()
On Error GoTo ypdr_DblClick_Error
If val(ypdr.Text) <> 0 Then
ypdr.SelStart = Len(ypdr.Text)
Else
    ypdr.Text = ""
End If
ypdr.Locked = True 'False
ypcr.Text = "0.00"
ypdr.SetFocus
Exit Sub
ypdr_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypdr_DblClick of Form BrokerMaster"
End Sub

Private Sub ypdr_GotFocus()
On Error GoTo ypdr_GotFocus_Error
 ypdr.BackColor = "&HC0FFC0"  'green
If ypcr.Text = "0.00" And val(ypdr.Text) = 0 Then
    ypdr.Locked = True 'False
    ypcr.Text = "0.00"
    ypdr.Text = ""
End If
Exit Sub
ypdr_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypdr_GotFocus of Form BrokerMaster"
End Sub

Private Sub ypdr_KeyPress(KeyAscii As Integer)
On Error GoTo ypdr_KeyPress_Error
If Opt = "add" Or Opt = "mod" Then
    Call tonum(ypdr, 13, KeyAscii, 0)
End If
Exit Sub
ypdr_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypdr_KeyPress of Form BrokerMaster"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ypdr_LostFocus of Form BrokerMaster"
End Sub



Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
If Option1.value = True Then lopt = "CODE"
If Option2.value = True Then lopt = "DETAIL"
    If lopt = "CODE" Then
     Dim clsCryR As New clsCrystal
            Set clsCryR.cryRept = Cry_Agent_Code
            clsCryR.CrystalPrint
                          
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
    
    
    
        'Set RPTV = New Report.ReportView
        'pgn = 1
        'lno = 7
        'a = FreeFile
        'Close
        'Open KALFOLDERDATA & "\splis.txt" For Output As #a
        'Call hdsplist
        'Set Rs = New Recordset
        'Rs.Open "Select Distinct slcode,slname from fa_slmas WHERE SLCODE LIKE '" & PartyBroker & "%'", DB, adOpenStatic, adLockReadOnly
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
        'a = FreeFile
        'Call KALBATPROCESS("splis")
       
'        Open "c:\splis.bat" For Output As #A
'        Print #A, "c:"
'        Print #A, "cd\"
'        Print #A, "type splis.txt>prn"
'        RPTV.txtfile = "c:\splis.txt"
'        RPTV.Batfile = "c:\splis.bat"
'        Close #A
         
    End If
    If lopt = "DETAIL" Then
     Dim clsCry As New clsCrystal
            Set clsCry.cryRept = Cry_Agent_DetailCode
            clsCry.CrystalPrint
                          
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
    
    
        ' Set RPTV = New Report.ReportView
        ' pgn = 1
        ' lno = 7
        ' a = FreeFile
        ' Close
        ' Open KALFOLDERDATA & "\splis.txt" For Output As #a
        ' Call hdsplistdt
        ' Set Rs = New Recordset
        'Rs.Open "Select slcode,slname,isnull(add1,'') as add1,isnull(add2,'') as add2,isnull(add3,'') as add3,isnull(city,'') as city,isnull(pin,' ')as pin,state,country,isnull(isnull(phone1,'') + '  ' +isnull(phone2,''),' ') as phone,email,tngst,tngstdt,cgstdt,cgst,ecc from fa_slmas WHERE SLCODE LIKE '" & PartyBroker & "%'", DB, adOpenStatic, adLockReadOnly
        ' Do While Not Rs.EOF
        ' Print #a, Chr(15) + Space(2) + Padr(Rs("slcode"), 7, " ") + Space(1) + Padr(Rs("slname"), 30, " ") + Space(2) + Padr(Rs("phone"), 30, " ") + Space(2) + Padr(Rs("email"), 20, " ") + Space(2) + Padr(Rs("tngst"), 20, " ") + Space(2) + Padr(Rs("cgst"), 20, " ") + Space(2) + Padr(Rs("ECC"), 15, " ")
        ' lno = lno + 1
        '
        ' If lno > 60 Then
        ' lno = 0
        ' Print #a, Space(2) & String(153, "-")
        ' Print #a, Chr(12)
        ' pgn = pgn + 1
        ' Call hdsplistdt
        ' End If
        '
        ' If Not Trim(Rs("add1")) = "" Then
        '     Print #a, Space(2) + Chr(15) + Space(8) + Rs("add1")
        '     lno = lno + 1
        '     Call pbsplistdt
        ' End If
        ' If Not Trim(Rs("add2")) = "" Then
        '     Print #a, Space(2) + Chr(15) + Space(8) + Rs("add2")
        '     lno = lno + 1
        '     Call pbsplistdt
        ' End If
        ' If Not Trim(Rs("add3")) = "" Then
        '     Print #a, Space(2) + Chr(15) + Space(8) + Rs("add3")
        '            lno = lno + 1
        '            Call pbsplistdt
        ' End If
        '
        ' If Not Trim(Rs("pin")) = "" Then
        '     Print #a, Space(2) + Chr(15) + Space(8) + Rs("city");
        '     Print #a, " - " + Rs("pin")
        '     lno = lno + 2
        '     Call pbsplistdt
        ' Else
        '     Print #a, Space(2) + Chr(15) + Space(8) + Rs("city")
        '     lno = lno + 1
        '     Call pbsplistdt
        '
        ' End If
        ' Print #a, Space(2)
        ' Call pbsplistdt
        ' Rs.MoveNext
        ' Loop
        ' Print #a, Space(2) & String(153, "-")
        ' Print #a, Chr(12)
        ' 'Print #a, Space(2) + Chr(15) + String(153, "-")
        ' Close #a
        '  a = FreeFile
        ' Call KALBATPROCESS("prs")
        '
        
        
        
        'Call KALBATPROCESS("splis")
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form BrokerMaster"
End Sub

Public Sub hdsplist()
On Error GoTo hdsplist_Error
Print #a, Space(10) + Chr(27) + "E" + CENTRE(divname, 70, " ") + Chr(27) + "F"
Print #a,
Print #a, Space(10) + Padr("Agent Listing", 44, " ") + Padr("Dt.:", 5, " ") + Padr(Format(pdate, "dd/mm/yy"), 12, " ") + Padr("Pg.No:", 6, " ") + Padl(pgn, 3, " ")
Print #a, Space(10) + String(70, "-")
Print #a, Space(10) + Padr("Code", 6, " ") + Space(10) + Padr("Agent Name", 40, " ")
Print #a, Space(10) + String(70, "-")
Exit Sub
hdsplist_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure hdsplist of Form BrokerMaster"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pbsplist of Form BrokerMaster"
End Sub

Public Sub hdsplistdt()
On Error GoTo hdsplistdt_Error
Print #a, Space(2) + Chr(18) + Chr(27) + "E" + CENTRE(divname, 70, " ") + Chr(27) + "F"
Print #a,
Print #a, Chr(15) + Space(2) + Chr(18); Padr("Agent Listing", 63, " ") + Padr("Dt.:", 5, " ") + Padr(Format(pdate, "dd/mm/yyyy"), 12, " ") + Padr("Pg.No:", 6, " ") + Padl(pgn, 3, " ")
Print #a, Chr(15) + Space(2) + Chr(15) + String(153, "-")
Print #a, Space(2) + Chr(15) + Padr("Code", 6, " ") + Space(2) + Padr("Agent Name", 30, " ") + Space(2); Padr("Phone", 30, " ") + Space(2) + Padr("e-mail", 20, " ") + Space(2) + Padr("TIN No.", 20, " ") + Space(2) + Padr("CGST", 20, " ") + Space(2) + Padr("ECC", 15, " ")
Print #a, Space(2) + Chr(15) + String(153, "-")
Exit Sub
hdsplistdt_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure hdsplistdt of Form BrokerMaster"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pbsplistdt of Form BrokerMaster"
End Sub

Sub PartyLookup()
On Error GoTo PartyLookup_Error
Dim rsa As New Recordset
    Frame3.Visible = False
    stbar.Panels(2).Text = "Please Select a Party type"
    LookUp.Clear = True
    If Opt = "add" Then
        Set rsa = New Recordset
        rsa.Open "select prtytyp as Code,prtyhead as Supplier from FA_PRTY a where a.prtytyp like '" & PartyBroker & "%' and substring(a.prtytyp,1,1)='C'", DB, adOpenStatic
    ElseIf Opt = "mod" Or Opt = "del" Then
        Set rsa = New Recordset
        rsa.Open "select  distinct a.prtytyp as Code,prtyhead as Supplier from FA_PRTY a,FA_SLMAS b where a.prtytyp like '" & PartyBroker & "%' and substring(a.prtytyp,1,1)='C' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2)", DB, adOpenStatic
    End If

        If rsa.RecordCount = 0 Then
                Screen.MousePointer = 0
                If Opt = "add" Then
                    LookUp.query = "select prtytyp as Code,prtyhead as Supplier from FA_PRTY a where a.prtytyp like '" & PartyBroker & "%' and substring(a.prtytyp,1,1)='C'"
                End If
                If Opt = "mod" Or Opt = "del" Then
                    LookUp.query = "select  distinct a.prtytyp as Code,prtyhead as Supplier from FA_PRTY a,FA_SLMAS b where a.prtytyp like '" & PartyBroker & "%' and substring(a.prtytyp,1,1)='C' and substring(a.prtytyp,1,2)=substring(b.slcode,1,2) "
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
                        Txtfields(2).SetFocus
                        prtyTXT = LookUp.Fields(1)
                        If prty = "D2" Then
                            DISTRIB.Visible = False
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
            Txtfields(2).SetFocus
            prtyTXT = rsa(1)
            If Opt <> "add" Then
                DISTRIB.Visible = False
                Call SupLookup(CStr(rsa(0)))
                Exit Sub
            End If
        
        
    End If
Exit Sub
PartyLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PartyLookup of Form BrokerMaster"
End Sub

Sub SupLookup(PartyBroker As String)
On Error GoTo SupLookup_Error
    Frame3.Visible = False
    stbar.Panels(2).Text = "Please Select a Supplier type"
    LookUp.Clear = True
   
    LookUp.query = "select Slcode""Code"",Slname as Agent from Fa_Slmas where LEFT(SLCODE,2) = '" & PartyBroker & "'"
     LookUp.Caption = "Agent Listing"
    LookUp.DefCol = "Agent"
    LookUp.ALIGN = "1500,5500"
    
    LookUp.Show vbModal
    Screen.MousePointer = 0
    If LookUp.Cancel = False Then
            If Label5.Caption = "AGENT LISTING" Then
                Txtfields(23).Text = LookUp.Fields(0)
                dbname.Text = LookUp.Fields(1)
                LookUp.Clear = True
                Txtfields(3).SetFocus
            Else
                If Opt = "del" Then
                    Dim rsdel As Recordset
                    Set rsdel = New Recordset
                    rsdel.Open "select sum(isnull(debit,0)-isnull(credit,0)) from FA_SLBAL WHERE SLCODE='" & LookUp.Fields(0) & "' and DivCode ='" & Divcode & "'", DB
                    If Not (rsdel(0) = 0) Then
                         MsgBox " Balance Amount for this customer is not zero, Cannot be deleted !! ", vbInformation, head
                         Frame1.Visible = False
                         Call BUTTON_Click(10)
                         Exit Sub
                    End If
                End If
                Txtfields(0).Text = LookUp.Fields(0)
                BUTTON(9).Enabled = True
                BUTTON(10).Enabled = True
                
                Set adoPrimaryRS = New Recordset
                'adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,State_code,Tinno from FA_SLMAS s WHERE  S.SLCODE= '" & LookUp.Fields(0) & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
                adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,State_code,Tinno,s.gststatecode,s.gstinno,s.isactive from FA_SLMAS s WHERE  S.SLCODE= '" & LookUp.Fields(0) & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
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
                 rsb.Open "select isnull(DEBIT,0),isnull(CREDIT,0) FROM FA_SLBAL WHERE SLCODE='" & adoPrimaryRS("SLCODE") & "' AND substring(YEARMONTH,5,2)='00' AND substring(YEARMONTH,1,4)= year('" & Format(yfdate, "yyyy-mm-dd") & "') and DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                If Not (rsb.RecordCount = 0) Then
                    ypdr.Text = rsb(0)
                    ypcr.Text = rsb(1)
                Else
                    ypdr.Text = "0.00"
                    ypcr.Text = "0.00"
                End If
                SSTab1.Tab = 0
                vendor.Text = Txtfields(0).Text
                
               ' Frame3.Visible = True
               
                Buttonframe.Enabled = True
                TXname.Text = Txtfields(2).Text
                BUTTON(9).Enabled = True
                Set dbname.DataSource = Rs
                LookUp.Clear = True
                SSTab1.Visible = True
                Call adddelmod(BUTTON)
                Txtfields(3).SetFocus
            End If

    Else
            query_mode
            Call BUTTON_Click(10)
            Exit Sub
    End If
Exit Sub
SupLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SupLookup of Form BrokerMaster"
End Sub
Sub BrokerLookup()
On Error GoTo BrokerLookup_Error
LookUp.Clear = True
LookUp.query = "select slcode""Code"",Slname""Name"" from fa_slmas where slcode like 'C5%'"
LookUp.Caption = "Agent Listing"
LookUp.DefCol = "Name"
LookUp.ALIGN = "2000,6000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    Txtfields(23).Text = LookUp.Fields(0)
    dbname.Text = LookUp.Fields(1)
    Txtfields(14).SetFocus
    LookUp.Clear = True
Else
   Txtfields(23).Text = ""
   dbname.Text = ""
   Txtfields(14).SetFocus
End If
Exit Sub
BrokerLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BrokerLookup of Form BrokerMaster"
End Sub

Private Sub cancelFind_Click()
On Error GoTo cancelFind_Click_Error
FNDFRME.Visible = False
Buttonframe.Enabled = True
'Frame6.Visible = True
SSTab1.TabEnabled(2) = True
SSTab1.Visible = True
desc.Caption = "Query"
Call query_mode
Exit Sub
cancelFind_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cancelFind_Click of Form BrokerMaster"
End Sub

Private Sub Canvelok_Click()
On Error GoTo Canvelok_Click_Error
Canvelok.Default = False
FNDFRME.Visible = False
SSTab1.TabEnabled(2) = True
SSTab1.Visible = True
desc.Caption = "Find"

        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,S.TINNO,S.STATE_CODE,Tinno from FA_SLMAS s WHERE  S.SLCODE= '" & grdFind.Columns(0).Text & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select s.SLCODE,s.SLNAME,s.ABBR,s.ADD1,s.ADD2,s.ADD3,s.CITY,s.PIN,s.STATE,s.COUNTRY,s.PHONE1,s.PHONE2,s.EMAIL,s.WEBADDR,s.FAX,s.CRLIMIT,s.BANKADD1,s.BANKADD2,s.TNGST,s.CGST,s.TNGSTDT,s.CGSTDT,s.ECC,s.PAN,s.CONTPER,s.CONTDESG,s.CONTPHONE,s.PAY_TERMS,s.CRDDAYS,s.AREACODE,s.CARCODE,s.TELEGRAM,s.TRN_DEBT,s.PRTYTYP,S.BRCODE,S.TAX_CODE,S.INSPER,S.TINNO,S.STATE_CODE,Tinno,s.gststatecode,s.gstinno,s.isactive from FA_SLMAS s WHERE  S.SLCODE= '" & grdFind.Columns(0).Text & "'  Order by slcode", DB, adOpenStatic, adLockOptimistic
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
         rsb.Open "select isnull(DEBIT,0),isnull(CREDIT,0) FROM FA_SLBAL WHERE SLCODE='" & adoPrimaryRS("SLCODE") & "' AND substring(YEARMONTH,5,2)='00' AND substring(YEARMONTH,1,4)= year('" & Format(yfdate, "yyyy-mm-dd") & "') and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not (rsb.RecordCount = 0) Then
            ypdr.Text = rsb(0)
            ypcr.Text = rsb(1)
        Else
            ypdr.Text = "0.00"
            ypcr.Text = "0.00"
        End If
        SSTab1.Tab = 0
        vendor.Text = Txtfields(0).Text

        TXname.Text = Txtfields(2).Text
        BUTTON(9).Enabled = False
        Set dbname.DataSource = Rs
Exit Sub
Canvelok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Canvelok_Click of Form BrokerMaster"
        
End Sub
Private Sub txtFind_Change()
On Error GoTo txtFind_Change_Error
If CHOICE_FIND = "C" Then
Set Rs = New Recordset
Rs.Open "SELECT distinct slcode,slname FROM fa_slmas b ,FA_PRTY a where slname like '" & Trim(txtFind.Text) & "%'  and substring(a.prtytyp,1,2)=substring(b.slcode,1,2) and a.prtytyp like '" & PartyBroker & "%' ", NewCon, adOpenStatic, adLockBatchOptimistic
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
    If optionFind(0).value = True Then
       ' Rs.Open "SELECT slcode,slname  FROM fa_slmas where slcode like '" & Trim(txtFind.Text) & "%'", NewCon, adOpenStatic, adLockBatchOptimistic
       Rs.Open "SELECT distinct slcode,slname FROM fa_slmas b ,FA_PRTY a where slname like '" & Trim(txtFind.Text) & "%'  and substring(a.prtytyp,1,2)=substring(b.slcode,1,2) and a.prtytyp like '" & PartyBroker & "%' ", NewCon, adOpenStatic, adLockBatchOptimistic
    ElseIf optionFind(1).value = True Then
        'Rs.Open "SELECT slcode,slname  FROM fa_slmas where slname like '" & Trim(txtFind.Text) & "%'", NewCon, adOpenStatic, adLockBatchOptimistic
        Rs.Open "SELECT distinct slcode,slname FROM fa_slmas b ,FA_PRTY a where slname like '" & Trim(txtFind.Text) & "%'  and substring(a.prtytyp,1,2)=substring(b.slcode,1,2) and a.prtytyp like '" & PartyBroker & "%' ", NewCon, adOpenStatic, adLockBatchOptimistic
    End If
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFind_Change of Form BrokerMaster"
End Sub
'---------------------------------------------------------------------------------------
' Procedure : txtFind_KeyDown
' DateTime  : 07/12/2008 14:28
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub txtFind_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtFind_KeyDown_Error

If KeyCode = 40 Then
    grdFind.SetFocus
End If

Exit Sub
txtFind_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFind_KeyDown of Form BrokerMaster", vbInformation, head
Screen.MousePointer = 0
End Sub

Sub StateLookup()
On Error GoTo StateLookup_Error
Dim rsa As New Recordset
rsa.Open "select * from ig_state", DB, adOpenStatic

If rsa.RecordCount > 0 Then
        Set rsa = New Recordset
        rsa.Open "select State_code as Code,Name as Name from ig_State where state_code='" & Txtfields(35).Text & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            LookUp.Clear = True
            LookUp.query = "select State_code as Code,Name as Name from ig_State "
            LookUp.Caption = "State Listing"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "2000,6000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(35).Text = LookUp.Fields(0)
                Txtfields(6).Text = LookUp.Fields(1)
                Txtfields(7).SetFocus
                Txtfields(6).Locked = True '''''''''''''
                LookUp.Clear = True
            Else
               Txtfields(6).Text = ""
               Txtfields(35).Text = ""
               Txtfields(35).SetFocus
            End If
        Else
            Txtfields(6).Text = rsa("name")
        End If
Else
    Txtfields(35).Text = ""
    Txtfields(6).Text = ""
End If
Exit Sub
StateLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StateLookup of Form BrokerMaster"
End Sub


Sub CityLookup()
On Error GoTo StateLookup_Error
CITY:
    LookUp.Clear = True
    LookUp.query = "SELECT Area_code ""City Code"", a.NAME""City Name"",B.STATE_CODE as ""State Code"",B.NAME AS State,C.NAME AS Country,isnull(b.gststatecode,'0') [GST State Code] FROM IG_AREA a, IG_STATE B,ig_countRY C WHERE A.STATE_CODE=B.STATE_CODE AND A.COUNTRY_CODE=C.COUNTRY_CODE"
    LookUp.Caption = "State Listing"
    LookUp.DefCol = "Area Name"
    LookUp.ALIGN = "1500,2000,0,2000,2000"
    
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Txtfields(5).Text = LookUp.Fields(1)
        Txtfields(35).Text = LookUp.Fields(2)
        Txtfields(6).Text = LookUp.Fields(3)
        Txtfields(7).Text = LookUp.Fields(4)
        '22.06
        If Trim(LookUp.Fields(5)) <> "0" Then
            Txtfields(45).Text = LookUp.Fields(5)
            Txtfields(46).Text = LookUp.Fields(5)            'GST No's first two digit no is statecode'
            Txtfields(46).SetFocus
        Else
            MsgBox "The Statecode is not mapped for this place...!"
            Txtfields(45).Text = ""
            Txtfields(46).Text = ""
            Txtfields(35).Text = ""
            Txtfields(6).Text = ""
            Txtfields(5).SetFocus
            Exit Sub
                    
        End If
        
            Txtfields(5).Locked = True
            Txtfields(35).Locked = True
            Txtfields(6).Locked = True
            Txtfields(7).Locked = True
            'txtfields(8).SetFocus
            LookUp.Clear = True
        Else
            Txtfields(5).Text = ""
            Txtfields(35).Text = ""
            Txtfields(6).Text = ""
            Txtfields(7).Text = ""
            Txtfields(5).SetFocus
        
        End If


Exit Sub
StateLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StateLookup of Form slmaster", vbInformation, head
End Sub


