VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Begin VB.Form FrmOpenkey 
   Caption         =   "Open/Key Loan Details"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   4680
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame5 
      Caption         =   "Frame5"
      Height          =   135
      Left            =   0
      TabIndex        =   54
      Top             =   0
      Width           =   15
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   53
      Top             =   2940
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   2187
            MinWidth        =   2187
            Text            =   "Kalsoft"
            TextSave        =   "Kalsoft"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   9242
            MinWidth        =   9242
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Text            =   "Date"
            TextSave        =   "30/01/2021"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   2893
            MinWidth        =   2893
            TextSave        =   "5:32 PM"
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame7 
      Height          =   645
      Left            =   0
      TabIndex        =   14
      Top             =   -105
      Width           =   5520
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIOpenkey.frx":0000
         Height          =   510
         Index           =   11
         Left            =   2040
         Picture         =   "RMIOpenkey.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   66
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIOpenkey.frx":07DF
         Height          =   510
         Index           =   9
         Left            =   535
         Picture         =   "RMIOpenkey.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   65
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1535
         Picture         =   "RMIOpenkey.frx":0E8B
         Style           =   1  'Graphical
         TabIndex        =   62
         ToolTipText     =   "List (Ctrl L)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIOpenkey.frx":1222
         Height          =   510
         Index           =   10
         Left            =   1030
         Picture         =   "RMIOpenkey.frx":152C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Cancel (Ctrl Z)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIOpenkey.frx":18A8
         Height          =   510
         Index           =   1
         Left            =   0
         Picture         =   "RMIOpenkey.frx":1BB2
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   105
         Width           =   520
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
         Left            =   4275
         TabIndex        =   16
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
         Left            =   2700
         TabIndex        =   15
         Top             =   255
         Width           =   600
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5490
      Left            =   225
      TabIndex        =   17
      Top             =   930
      Width           =   9150
      _ExtentX        =   16140
      _ExtentY        =   9684
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   -2147483636
      ForeColor       =   8388608
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "&Open /Key Loan Detail              "
      TabPicture(0)   =   "RMIOpenkey.frx":1F2C
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "&Lodgement Details"
      TabPicture(1)   =   "RMIOpenkey.frx":1F48
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame4"
      Tab(1).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2595
         Left            =   120
         TabIndex        =   19
         Top             =   345
         Width           =   8880
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   15
            Left            =   1080
            TabIndex        =   39
            Top             =   1815
            Width           =   4095
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   10
            Left            =   7230
            TabIndex        =   50
            Top             =   2205
            Width           =   1455
         End
         Begin VB.TextBox txtfields 
            Height          =   330
            Index           =   6
            Left            =   7200
            TabIndex        =   49
            Top             =   1440
            Width           =   1455
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   4
            Left            =   1800
            TabIndex        =   48
            Top             =   1080
            Width           =   6835
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   14
            Left            =   1080
            TabIndex        =   3
            Top             =   360
            Width           =   675
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   2
            Left            =   7590
            TabIndex        =   42
            Top             =   720
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            Height          =   330
            Index           =   1
            Left            =   4080
            TabIndex        =   41
            Top             =   720
            Width           =   1095
         End
         Begin VB.TextBox txtfields 
            Height          =   330
            Index           =   8
            Left            =   6180
            TabIndex        =   40
            Top             =   720
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   11
            Left            =   7590
            TabIndex        =   7
            Top             =   360
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   12
            Left            =   6180
            TabIndex        =   6
            Top             =   360
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   13
            Left            =   4080
            TabIndex        =   5
            Top             =   360
            Width           =   1095
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   5
            Left            =   1080
            TabIndex        =   38
            Top             =   1440
            Width           =   4095
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   9
            Left            =   4110
            TabIndex        =   37
            Top             =   2205
            Width           =   1095
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   7
            Left            =   1110
            TabIndex        =   36
            Top             =   2205
            Width           =   675
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   3
            Left            =   1080
            TabIndex        =   35
            Top             =   1080
            Width           =   675
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   0
            Left            =   1080
            TabIndex        =   34
            Top             =   720
            Width           =   675
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   2280
            TabIndex        =   4
            Top             =   360
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   582
            _Version        =   393216
            Format          =   130482177
            CurrentDate     =   37601
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Color"
            Height          =   195
            Left            =   210
            TabIndex        =   64
            Top             =   1890
            Width           =   360
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Ldg.No."
            Height          =   195
            Left            =   210
            TabIndex        =   43
            Top             =   428
            Width           =   570
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            Height          =   195
            Left            =   3600
            TabIndex        =   33
            Top             =   435
            Width           =   405
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   1800
            TabIndex        =   32
            Top             =   435
            Width           =   345
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "75% value"
            Height          =   315
            Left            =   5400
            TabIndex        =   31
            Top             =   368
            Width           =   735
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Bank"
            Height          =   195
            Left            =   7200
            TabIndex        =   30
            Top             =   428
            Width           =   375
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Party LotNo."
            Height          =   195
            Left            =   5280
            TabIndex        =   29
            Top             =   795
            Width           =   885
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            Height          =   195
            Left            =   6420
            TabIndex        =   28
            Top             =   2280
            Width           =   405
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Net Weight"
            Height          =   195
            Left            =   3180
            TabIndex        =   27
            Top             =   2280
            Width           =   810
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Left            =   210
            TabIndex        =   26
            Top             =   758
            Width           =   630
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Lot No"
            Height          =   195
            Left            =   3570
            TabIndex        =   25
            Top             =   795
            Width           =   480
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Left            =   210
            TabIndex        =   24
            Top             =   1133
            Width           =   570
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Count"
            Height          =   195
            Left            =   6360
            TabIndex        =   23
            Top             =   1508
            Width           =   420
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Left            =   210
            TabIndex        =   22
            Top             =   1508
            Width           =   480
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   7200
            TabIndex        =   21
            Top             =   795
            Width           =   345
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   240
            TabIndex        =   20
            Top             =   2280
            Width           =   585
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2505
         Left            =   135
         TabIndex        =   18
         Top             =   2865
         Width           =   8895
         Begin MSDataGridLib.DataGrid DataGrid2 
            Height          =   2175
            Left            =   120
            TabIndex        =   8
            Top             =   240
            Width           =   8655
            _ExtentX        =   15266
            _ExtentY        =   3836
            _Version        =   393216
            ForeColor       =   -2147483635
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
      Begin VB.Frame Frame4 
         Height          =   3735
         Left            =   -74880
         TabIndex        =   51
         Top             =   540
         Width           =   8535
         Begin MSDataGridLib.DataGrid DataGrid3 
            Height          =   3270
            Left            =   300
            TabIndex        =   52
            Top             =   210
            Visible         =   0   'False
            Width           =   8085
            _ExtentX        =   14261
            _ExtentY        =   5768
            _Version        =   393216
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
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   1845
      Left            =   2100
      TabIndex        =   57
      Top             =   2100
      Width           =   5055
   End
   Begin VB.Frame Frame8 
      Height          =   1545
      Left            =   2220
      TabIndex        =   58
      Top             =   2190
      Width           =   4575
      Begin VB.OptionButton Option2 
         Caption         =   "Release"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   2790
         TabIndex        =   60
         Top             =   660
         Width           =   1275
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Lodgement"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   660
         TabIndex        =   59
         Top             =   660
         Width           =   1455
      End
   End
   Begin VB.Frame Frame9 
      Caption         =   "Frame9"
      Height          =   4605
      Left            =   390
      TabIndex        =   55
      Top             =   1440
      Width           =   8775
      Begin MSDataGridLib.DataGrid DataGrid4 
         Height          =   2865
         Left            =   150
         TabIndex        =   56
         Top             =   240
         Width           =   8385
         _ExtentX        =   14790
         _ExtentY        =   5054
         _Version        =   393216
         AllowUpdate     =   -1  'True
         ForeColor       =   -2147483635
         HeadLines       =   2
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
      Height          =   3675
      Left            =   900
      TabIndex        =   9
      Top             =   1950
      Visible         =   0   'False
      Width           =   7725
      Begin VB.CommandButton Command4 
         Caption         =   "Cancel"
         Height          =   390
         Left            =   3900
         TabIndex        =   13
         Top             =   3175
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "OK"
         Height          =   390
         Left            =   2820
         TabIndex        =   12
         Top             =   3175
         Width           =   975
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   2430
         Left            =   120
         TabIndex        =   10
         Top             =   600
         Visible         =   0   'False
         Width           =   7485
         _ExtentX        =   13203
         _ExtentY        =   4286
         _Version        =   393216
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
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Select  Lot  Number"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   2895
         TabIndex        =   11
         Top             =   240
         Width           =   2040
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4830
      Left            =   570
      TabIndex        =   44
      Top             =   930
      Visible         =   0   'False
      Width           =   8505
      Begin KSLDESCOCX.Ksldesc KSLlist1 
         Height          =   3255
         Left            =   720
         TabIndex        =   63
         Top             =   720
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIOpenkey.frx":1F64
         Height          =   615
         Left            =   4740
         Picture         =   "RMIOpenkey.frx":2346
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   4095
         Width           =   1185
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "RMIOpenkey.frx":2719
         Height          =   615
         Left            =   3000
         Picture         =   "RMIOpenkey.frx":2AFF
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   4110
         Width           =   1185
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   47
         Top             =   120
         Width           =   8475
      End
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      Caption         =   "Release"
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
      Height          =   285
      Left            =   3480
      TabIndex        =   61
      Top             =   600
      Width           =   2115
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Open/Key  Loan Details"
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
      Left            =   210
      TabIndex        =   0
      Top             =   570
      Width           =   3075
   End
End
Attribute VB_Name = "FrmOpenkey"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim adoSecondaryRS1 As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype  As String
Dim RW  As Double
Dim FLGREPET As Boolean
Dim GRP As String
Dim rpt As String
Dim Fnd  As String
Dim oldsecno As Integer
Dim oldsecval As Double
Dim st1 As String, st2 As String
Dim ITARY() As String
Dim Rs As Recordset
Dim taxc As String
Dim tax  As Double, EXC As Double, SED As Double, sur As Double, dis  As Double, modvat  As Double

Private Sub BUTTON_Click(Index As Integer)
intervalMinutes = -1
Select Case Index
Case 1
        On Error Resume Next
        StatusBar1.Panels(2).Text = " Select  Lodgement / Release"
       
        Command1.Visible = True
        Frame8.Visible = True
        Frame8.ZOrder
    
    'Frame8.ZOrder 1
    
        Option1.value = False
        Option2.value = False
        Exit Sub
         Opt = "updat"
         Screen.MousePointer = 11
         desc.Caption = "Updation"
'         Call clearval
'         Call query_mode
         BUTTON(1).Enabled = False
         BUTTON(9).Enabled = True
         BUTTON(10).Enabled = True
         DataGrid1.Enabled = True
         DataGrid2.Columns(4).Locked = False
         
         txtfields(14).Text = ""
         txtfields(13).Text = ""
         txtfields(12).Text = ""
         txtfields(11).Text = ""
         
         txtfields(14).Locked = False
         txtfields(13).Locked = False
         txtfields(12).Locked = False
          txtfields(11).Locked = False
         Set Rs = New Recordset
         Rs.Open "select isnull(max(lodgno),0) from rm_bale", DB, adOpenStatic
         txtfields(14).Text = Rs(0) + 1
         txtfields(14).Locked = True
         
         
         'DataGrid2.Col = 4
         'DataGrid2.SetFocus
         'vasanth 11/12
         Set adoSecondaryRS1 = New Recordset
         adoSecondaryRS1.Open "select count(isnull(a.baleno,0)) qty,sum(isnull(a.netwt,0)) netwt,sum(isnull(a.netwt,0) * b.ratekg) value from rm_bale a,rm_lot b where a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.lottype = b.lottype and a.lottype = '" & DataGrid1.Columns(3).Text & "' and (isnull(a.netwt,0)-isnull(a.isqty,0)) > 0 and a.catcd = '" & txtfields(0).Text & "' and a.lotno = '" & txtfields(1).Text & "' and a.lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and b.catcd = '" & txtfields(0).Text & "' and b.lotno = '" & txtfields(1).Text & "' and b.lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and (a.openkey not like 'Y' or a.openkey is null) group by a.catcd,a.lotno,a.lotdt", DB, adOpenStatic, adLockBatchOptimistic
         If Not adoSecondaryRS1.BOF Then
           BUTTON(1).Enabled = True
           DataGrid1.Enabled = False
            If adoSecondaryRS1(0).value = "" Then
                 txtfields(7).Text = ""
            Else
                 txtfields(7).Text = adoSecondaryRS1(0)
            End If
            If adoSecondaryRS1(1).value = "" Then
                 txtfields(9).Text = ""
            Else
                 txtfields(9).Text = Format(adoSecondaryRS1(1), "#0.000")
            End If
            If adoSecondaryRS1(2).value = "" Then
                 txtfields(10).Text = ""
            Else
                 txtfields(10).Text = Format(adoSecondaryRS1(2), "#0.00")
            End If
         Else
               MsgBox "No Records Found", vbInformation, head
                Exit Sub
         End If
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select baleno  ""Bale No"" ,grwt ""Gross Weight"",tarewt ""Tare Weight"" ,netwt ""Net Weight"",openkey ""O.K"" from rm_bale where divcode='" & Divcode & "' and isnull(netwt,0)-isnull(isqty,0) > 0 and catcd = '" & txtfields(0).Text & "' and lotno = '" & txtfields(1).Text & "' and lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and lottype = '" & DataGrid1.Columns(3).Text & "' and (openkey not like 'Y' or openkey is null) order by baleno", DB, adOpenStatic, adLockBatchOptimistic
            'db.BeginTrans
            Set DataGrid2.DataSource = adoPrimaryRS
            If adoPrimaryRS.BOF Then
                MsgBox " No Records Found", vbInformation, head
            End If
           DataGrid2.Columns(0).Width = 1000.095
           DataGrid2.Columns(1).Width = 2000.095
           DataGrid2.Columns(1).NumberFormat = "#0.000"
           DataGrid2.Columns(2).NumberFormat = "#0.000"
           DataGrid2.Columns(3).NumberFormat = "#0.000"
           DataGrid2.Columns(2).Width = 2000.095
           DataGrid2.Columns(3).Width = 2000.095
           DataGrid2.Columns(1).Alignment = dbgRight
           DataGrid2.Columns(2).Alignment = dbgRight
           DataGrid2.Columns(3).Alignment = dbgRight
           DataGrid2.Columns(4).Width = 1100.095
           Frame6.Visible = False
           Frame1.Visible = True
           Frame2.Visible = True
           BUTTON(10).Enabled = True
           BUTTON(1).Enabled = False
           Frame2.Enabled = True
           DataGrid1.Enabled = True
         If Opt = "updat" Or Opt = " " Then
           Call disabletxt
           DataGrid2.Columns(4).Locked = False
           DataGrid2.Col = 4
           DataGrid2.SetFocus
        End If
           DTPicker1.SetFocus
           Screen.MousePointer = 0
            SSTab1.TabEnabled(1) = False
Case 9
        'Save
        Screen.MousePointer = 11
        If Option2.value = False Then
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
       ' On Error GoTo er1
        If Trim(txtfields(13).Text) = "" Then
            MsgBox "Enter the Value", vbInformation, head
            txtfields(13).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
       If Trim(txtfields(11).Text) = "" Then
            MsgBox "Enter the Godown", vbInformation, head
            txtfields(11).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        If Opt = "updat" Or Opt = " " Then
            Set Rs = New Recordset
            Rs.Open "select OPENKEY  from rm_bale", DB, adOpenStatic, adLockBatchOptimistic
            
            'vasanth 11/12
            Dim I             As Integer
            Dim j             As Double
            I = 0
            j = 0
            adoPrimaryRS.MoveFirst
            Do While Not adoPrimaryRS.EOF
                If DataGrid2.Columns(4).Text = "Y" Then I = I + 1
                adoPrimaryRS.MoveNext
            Loop
            If I > 0 Then
               j = val(txtfields(13).Text) / I
            Else
                j = val(txtfields(13).Text)
            End If
            
            adoPrimaryRS.MoveFirst
            Do While Not adoPrimaryRS.EOF
              'VASANTH 11/12
              If DataGrid2.Columns(4).Text = "Y" Then
                DB.Execute ("update rm_bale set openkey = '" & DataGrid2.Columns(4).Text & "',LODGNO = '" & txtfields(14).Text & "',LODGDATE = '" & Format(DTPicker1.value, "YYYY/MM/DD") & "',LODGVALUE = '" & j & "',BANK = '" & txtfields(11).Text & "' where  catcd = '" & txtfields(0).Text & "' and lotno = '" & txtfields(1).Text & "' and lottype = '" & DataGrid1.Columns(3).Text & "' and  baleno = '" & DataGrid2.Columns(0).Text & "'")
              End If
              adoPrimaryRS.MoveNext
            Loop
               DB.CommitTrans
               StatusBar1.Panels(2).Text = "Saved "
               MsgBox "Data Saved Successfully", vbInformation, head
               StatusBar1.Panels(2).Text = " "
               Frame9.Visible = False
               Label18.Visible = False
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = False
            SSTab1.Visible = False
            Frame6.Visible = True
             
        End If
        SSTab1.TabEnabled(1) = True
        Else
       
            
            Rs.MoveFirst
            Do While Not Rs.EOF
              If (Trim(DataGrid4.Columns(9).Text) = "" Or IsDate(DataGrid4.Columns(9).Text) = False) And DataGrid4.Columns(7).Text = "N" Then
                    MsgBox "Release Date Cannot Be Empty", vbInformation, head
                    DataGrid4.Col = 9
                    DataGrid4.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
               Else
                  If DataGrid4.Columns(8).Text = "N" Then
                    DB.Execute ("update rm_bale set openkey = '" & DataGrid4.Columns(8).Text & "' ,RELVALUE=" & val(DataGrid4.Columns(5).Text) & ",relno = " & val(DataGrid4.Columns(7).Text) & ",RELDATE = '" & IIf(IsDate(DataGrid4.Columns(9).Text), Format(DataGrid4.Columns(9).Text, "YYYY/MM/DD"), Null) & "' where   lotno = " & val(DataGrid4.Columns(2).Text) & " and  baleno = " & val(DataGrid4.Columns(3).Text) & " and divcode='" & Divcode & "'")
                  Else
                    Rs.Delete
                  End If
               End If
              Rs.MoveNext
            Loop
                SSTab1.Enabled = True
                DB.CommitTrans
                Screen.MousePointer = 0
                StatusBar1.Panels(2).Text = " Released"
                MsgBox "Information Saved", vbInformation, head
                StatusBar1.Panels(2).Text = ""
                Frame9.Visible = False
                SSTab1.Visible = False
                Frame6.Visible = True
                BUTTON(9).Enabled = False
                BUTTON(1).Enabled = False
                Command1.Visible = False
                Frame8.Visible = False
                Label18.Visible = False
                Exit Sub
        End If
Case 2
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    If Opt = "updat" Then
    DB.RollbackTrans
    End If
    Screen.MousePointer = 0
    Opt = " "
    Call QUERY_MODE
    BUTTON(0).Enabled = True
    BUTTON(1).Enabled = True
    BUTTON(2).Enabled = False
    BUTTON(3).Enabled = True
    
   Case 10
gocancel:
Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
End Select
    'BUTTON(4).Enabled = True
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Opt = " "
'    Call query_mode
    SSTab1.Visible = False
    Frame6.Visible = True
    Frame9.Visible = False
    Frame8.Visible = False
    Command1.Visible = False
    Frame8.Visible = False
    On Error Resume Next
    If adoPrimaryRS.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If
    BUTTON(1).Enabled = False
    SSTab1.TabEnabled(1) = True
    Screen.MousePointer = 0
 
Case 11
    'EXIT
    Unload Me
End Select
Exit Sub
'er1:
'If Err = -2147467259 Then
'     MsgBox Err.description, vbInformation, head
'Else
'     MsgBox Err.description, vbInformation, head
'End If
End Sub
Private Sub Command2_Click()
Frame2.Visible = False
End Sub
Private Sub QUERY_MODE()
intervalMinutes = -1
StatusBar1.Panels(2).Text = "Select a Lot Number"
 If Opt = "updat" Or Opt = " " Then
 SSTab1.TabEnabled(0) = True
 Label8.Visible = False
 Label18.Visible = False
Command1.Visible = False
Frame8.Visible = False
    Frame6.Visible = True
     Frame4.Visible = False
    Frame1.Visible = False
   Frame2.Visible = False
    DataGrid1.Visible = True
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select catcd ""Category"",lotno ""LotNo"",lotdt ""Date"",lottype ""LotType""  from rm_lot AS A inner join RM_GOD as b on a.GODOWN=b.GCODE  where  ISNULL(b.OpenLoankeyflg,'N')='Y' and a.divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and  '" & Format(yldate, "yyyy/mm/dd") & "' AND (ISNULL(NETWT,0)-ISNULL(ISSWT,0)) >0 AND (ISNULL(BALES,0)-ISNULL(ISSBAL,0)) >0 ORDER BY CATCD,LOTDT,LOTNO", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open "select distinct a.catcd ""Category"",a.lotno ""LotNo"",a.lotdt ""Date"",a.lottype ""LotType"" from rm_lot AS A inner join RM_GOD as b on a.GODOWN=b.GCODE inner join rm_bale as rm on  a.LOTNO=rm.lotno and a.LOTDT=rm.lotdt and a.LOTTYPE=rm.lottype and a.ARRDT=rm.arrdt and a.ARRNO=rm.arrno   where  ISNULL(A.ins_flg,'N')='Y' AND isnull(OPENKEY,'N')='N' and ISNULL(rm.issued,'N')='N'   AND  ISNULL(b.OpenLoankeyflg,'N')='Y'  and   a.divcode='" & Divcode & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and  '" & Format(yldate, "yyyy/mm/dd") & "'  AND (ISNULL(a.NETWT,0)-ISNULL(ISSWT,0)) >0 AND (ISNULL(BALES,0)-ISNULL(ISSBAL,0)) >0  or isnull(OPENKEY,'N')='Y'  ORDER BY a.CATCD,a.LOTDT,a.LOTNO", DB, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.BOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    Else
       Set DataGrid1.DataSource = adoPrimaryRS
       DataGrid1.Columns(0).Text = adoPrimaryRS(0)
       DataGrid1.Columns(1).Text = adoPrimaryRS(1)
       DataGrid1.Columns(2).Text = adoPrimaryRS(2)
       DataGrid1.Columns(3).Width = 2294.929
       DataGrid1.Columns(2).Width = 1920.189
       DataGrid1.Columns(1).Width = 1514.835
       DataGrid1.Columns(0).Width = 1200.189
       
       
    End If
    DataGrid1.AllowUpdate = False
    Frame6.ZOrder
'    If opt = "updat" Or opt = " " Then
'      Db.BeginTrans
'    End If
 End If
 intervalMinutes = -1
    End Sub
Private Sub Command3_Click()
'If opt = "add" o Then
On Error Resume Next
intervalMinutes = -1
StatusBar1.Panels(2).Text = "Modify"
SSTab1.Visible = True
If Opt = "updat" Or Opt = " " Then
         Call ENABLCONTLS
         Set Rs = New Recordset
         Rs.Open "select Sum(lodgvalue),lodgdate,lodgno,bank from rm_bale where divcode='" & Divcode & "' and lotno='" & DataGrid1.Columns(1).Text & "' and openkey='Y' group by lodgdate,bank,lodgno", DB, adOpenStatic
         If Rs.EOF Then
            txtfields(14).Text = ""
            txtfields(13).Text = ""
            txtfields(12).Text = ""
            txtfields(11).Text = ""
         Else
            txtfields(14).Text = Rs(2)
            txtfields(13).Text = Format(Rs(0), "0.00")
            txtfields(12).Text = Format(Rs(0) * 0.75, "0.00")
            txtfields(11).Text = Rs(3)
            DTPicker1.value = Rs(1)
         End If
         txtfields(14).Locked = True
         txtfields(13).Locked = True
         txtfields(12).Locked = True
         txtfields(11).Locked = True
         txtfields(0).Text = DataGrid1.Columns(0).Text
         txtfields(1).Text = DataGrid1.Columns(1).Text
         txtfields(2).Text = DataGrid1.Columns(2).Text
         Set adoSecondaryRS = New Recordset
         'ADOSECONDARYRS.Open "select b.varname,c.cntname,d.slcode,d.slname from rm_var b,rm_cont c,fa_slmas d where substr(b.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "' and substr(c.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "' and substr(d.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "'", Db, adOpenStatic, adLockBatchOptimistic
         'Ravi ADOSECONDARYRS.Open "select a.supcd,b.varname,c.cntname,d.slname from rm_arrival a,rm_var b,rm_count c,fa_slmas d where a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.lottype  = '" & DataGrid1.Columns(3).Text & "' and substring(a.catcd,1,1) = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode", DB, adOpenStatic, adLockBatchOptimistic
         'ADOSECONDARYRS.Open "select a.supcd,b.varname,c.mixgrpname,d.slname from rm_arrival a,rm_var b,rm_mixgrp c,fa_slmas d where a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.lottype  = '" & DataGrid1.Columns(3).Text & "' and substring(a.catcd,1,1) = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.mixgrpcd and a.supcd = d.slcode", DB, adOpenStatic, adLockBatchOptimistic
         adoSecondaryRS.Open "SELECT A.SUPCD,Z.VARNAME,A.CNTCODE,F.SLNAME,isnull(a.plotno,'') as plotno,c.colorname From RM_LOT A inner join RM_VAR Z on A.VARCODE=Z.VARCODE inner join FA_SLMAS F on  A.SUPCD=F.SLCODE left outer join rm_color c on   a.colorcode=c.colorcode  WHERE a.divcode='" & Divcode & "'  AND  a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.lottype  = '" & DataGrid1.Columns(3).Text & "' and substring(a.catcd,1,1) = '" & DataGrid1.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If adoSecondaryRS(0).value = "" Then
                 txtfields(3).Text = ""
            Else
                 txtfields(3).Text = adoSecondaryRS(0)
            End If
            If adoSecondaryRS("plotno").value = "" Then
                 txtfields(8).Text = ""
            Else
                 txtfields(8).Text = adoSecondaryRS("plotno")
            End If
            
            If adoSecondaryRS(1).value = "" Then
                 txtfields(5).Text = ""
            Else
                 txtfields(5).Text = adoSecondaryRS(1)
            End If
            
            If adoSecondaryRS("colorname").value = "" Then
                 txtfields(15).Text = ""
            Else
                 txtfields(15).Text = adoSecondaryRS("colorname")
            End If
            If adoSecondaryRS(2).value = "" Then
                 txtfields(6).Text = ""
            Else
                 txtfields(6).Text = adoSecondaryRS(2)
            End If
            If adoSecondaryRS(3).value = "" Then
                 txtfields(4).Text = ""
            Else
                 txtfields(4).Text = adoSecondaryRS(3)
            End If
'         End If
           Set adoSecondaryRS1 = New Recordset
           adoSecondaryRS1.Open "select count(isnull(a.baleno,0)) qty,sum(isnull(a.netwt,0)) netwt,sum(isnull(a.netwt,0) * b.ratekg) value from rm_bale a,rm_lot b where a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.lottype = b.lottype and a.lottype = '" & DataGrid1.Columns(3).Text & "' and (isnull(a.netwt,0)-isnull(a.isqty,0)) > 0 and a.catcd = '" & txtfields(0).Text & "' and a.lotno = '" & txtfields(1).Text & "' and a.lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and b.catcd = '" & txtfields(0).Text & "' and b.lotno = '" & txtfields(1).Text & "' and b.lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' group by a.catcd,a.lotno,a.lotdt", DB, adOpenStatic, adLockBatchOptimistic
         If Not adoSecondaryRS1.BOF Then
           BUTTON(1).Enabled = True
           DataGrid1.Enabled = False
            If adoSecondaryRS1(0).value = "" Then
                 txtfields(7).Text = ""
            Else
                 txtfields(7).Text = adoSecondaryRS1(0)
            End If
            If adoSecondaryRS1(1).value = "" Then
                 txtfields(9).Text = ""
            Else
                 txtfields(9).Text = Format(adoSecondaryRS1(1), "#0.000")
            End If
            If adoSecondaryRS1(2).value = "" Then
                 txtfields(10).Text = ""
            Else
                 txtfields(10).Text = Format(adoSecondaryRS1(2), "#0.00")
            End If
         Else
               MsgBox "No Records Found", vbInformation, head
                Exit Sub
         End If
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select baleno  ""Bale No"" ,grwt ""Gross Weight"",tarewt ""Tare Weight"" ,netwt ""Net Weight"",openkey ""O.K"" from rm_bale where divcode='" & Divcode & "' and isnull(netwt,0)-isnull(isqty,0) > 0 and catcd = '" & txtfields(0).Text & "' and lotno = '" & txtfields(1).Text & "' and lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and lottype = '" & DataGrid1.Columns(3).Text & "'  order by baleno", DB, adOpenStatic, adLockBatchOptimistic
            DB.BeginTrans
            Set DataGrid2.DataSource = adoPrimaryRS
            If adoPrimaryRS.BOF Then
                MsgBox " No Records Found", vbInformation, head
            End If
           DataGrid2.Columns(0).Width = 1000.095
           DataGrid2.Columns(1).Width = 2000.095
           DataGrid2.Columns(1).NumberFormat = "#0.000"
           DataGrid2.Columns(2).NumberFormat = "#0.000"
           DataGrid2.Columns(3).NumberFormat = "#0.000"
           DataGrid2.Columns(2).Width = 2000.095
           DataGrid2.Columns(3).Width = 2000.095
           DataGrid2.Columns(1).Alignment = dbgRight
           DataGrid2.Columns(2).Alignment = dbgRight
           DataGrid2.Columns(3).Alignment = dbgRight
           DataGrid2.Columns(4).Width = 1100.095
           Frame6.Visible = False
           Frame1.Visible = True
           Frame2.Visible = True
           BUTTON(10).Enabled = True
           Frame2.Enabled = True
           DataGrid1.Enabled = True
         If Opt = "updat" Or Opt = " " Then
             Call disabletxt
            ' txtfields(7).Locked = False
             DataGrid2.Col = 4
           DataGrid2.SetFocus
         End If
End If
End Sub
Private Sub Command4_Click()
Unload Me
End Sub

Private Sub Command5_Click()
If Opt = " " Or Opt = "updat" Then
    Call QUERY_MODE
    'SSTab1.Visible = True
    'Frame6.Visible = True
    Frame3.Visible = False
    SSTab1.ZOrder
End If
End Sub

Private Sub Command6_Click()
If Opt = " " Or Opt = "updat" Then
    txtfields(11).Text = KslList1.Code
    Frame3.Visible = False
    SSTab1.Visible = True
    Frame6.Visible = True
    SSTab1.ZOrder
    DataGrid2.Col = 4
    DataGrid2.SetFocus
    StatusBar1.Panels(2).Text = "Press Y/N & Save "
End If
End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub DataGrid2_GotFocus()
intervalMinutes = -1
StatusBar1.Panels(2).Text = "Enter 'Y' For Lodgement the Bale"
End Sub

Private Sub DataGrid2_KeyDown(KeyCode As Integer, Shift As Integer)
 'If KeyCode = 40 Then
 '  adoPrimaryRS.MoveNext
 '  DataGrid2.Col = 3
 '  DataGrid2.SetFocus
StatusBar1.Panels(2).Text = "Enter 'Y' For Lodgement the Bale"
' If KeyCode = 9 Or KeyCode = 13 Then
'   'adoPrimaryRs.MoveNext
'   DataGrid2.Row = DataGrid2.Row + 1
'   DataGrid2.Col = 4
'   DataGrid2.SetFocus
' End If
'
End Sub

Private Sub DataGrid2_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
 If DataGrid2.Col = 4 Then
    StatusBar1.Panels(2).Text = "Enter 'Y' For Lodgement the Bale"
    If DataGrid2.Col = 4 And KeyAscii = 13 And Opt = "updat" Then
    If Trim(DataGrid2.Text) <> "" Then
        If adoPrimaryRS.RecordCount > adoPrimaryRS.AbsolutePosition Then
            DataGrid2.Row = DataGrid2.Row + 1
            DataGrid2.Col = 4
            DataGrid2.EditActive = True
            DataGrid2.SetFocus
            Exit Sub
        End If
    Else
        KeyAscii = 0
        Exit Sub
    End If
End If

  
    
    If (KeyAscii = 121 Or KeyAscii = 89 Or KeyAscii = 78 Or KeyAscii = 110 Or KeyAscii = 8) And Not (KeyAscii = 9) Then
'        KeyAscii = 0
Call ToAlphaNumber(DataGrid2, 1, KeyAscii)
Else
KeyAscii = 0
    End If
 End If
 Call ToUpCase(DataGrid2, KeyAscii)

 
End Sub

Private Sub DataGrid4_KeyPress(KeyAscii As Integer)
If DataGrid4.Col = 8 Then
Call ToUpCase(DataGrid4, KeyAscii)
'Call ToAlphaNumber(DataGrid4, 1, KeyAscii)
 If DataGrid4.Col = 8 Then
    StatusBar1.Panels(2).Text = "Enter 'Y' For Lodgement the Bale"
    If DataGrid4.Col = 8 And KeyAscii = 13 And Len(Opt) = 1 Then
    If Trim(DataGrid4.Text) <> "" Then
        If adoPrimaryRS.RecordCount > adoPrimaryRS.AbsolutePosition Then
            DataGrid4.Row = DataGrid4.Row + 1
            DataGrid4.Col = 8
            DataGrid4.EditActive = True
            DataGrid4.SetFocus
            Exit Sub
        End If
    Else
        KeyAscii = 0
        Exit Sub
    End If
End If
End If
End If

End Sub

Private Sub DataGrid4_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
If LastCol = 8 Then
   ' DataGrid4.Col = 9
    'DataGrid4.SetFocus
    
End If
End Sub

Private Sub Form_Load()
  Opt = " "
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
'  TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
   Call QUERY_MODE
   Call NEWFORM1(BUTTON, 21)
  'Frame1.Visible = True
  'Frame5.Visible = True
  BUTTON(1).Enabled = False
  BUTTON(9).Enabled = False
  BUTTON(10).Enabled = False
  SSTab1.Tab = 0
  intervalMinutes = -1
  End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  Set adoPrimaryRS = Nothing
  intervalMinutes = -1
  Reset
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
Public Sub clearval()
For I = 0 To 7
  txtfields(I).Text = ""
Next
For I = 9 To 10
  txtfields(I).Text = ""
Next

End Sub
Public Sub disabletxt()
For I = 0 To 7
  txtfields(I).Locked = True
Next
For I = 9 To 10
  txtfields(I).Locked = True
Next
DataGrid2.Columns(0).Locked = True
DataGrid2.Columns(1).Locked = True
DataGrid2.Columns(2).Locked = True
DataGrid2.Columns(3).Locked = True
DataGrid2.Columns(4).Locked = True
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.txtfields
        oText.Locked = True
    Next

End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.txtfields
        oText.Locked = False
    Next
End Sub


Private Sub Text1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub
Private Sub Text2_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub
Private Sub Text3_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub


Private Sub Option1_Click()
StatusBar1.Panels(2).Text = "Entere the Date"
Frame6.Visible = True
SSTab1.Visible = True

Frame8.Visible = False
Command1.Visible = False

Label18.Visible = True
Label18.Caption = "Lodgement"
 Opt = "updat"
 On Error Resume Next
         Screen.MousePointer = 11
         desc.Caption = "Updation"
         DTPicker1.value = pdate
'         Call clearval
'         Call query_mode
         BUTTON(1).Enabled = False
         BUTTON(9).Enabled = True
         BUTTON(10).Enabled = True
         DataGrid1.Enabled = True
         DataGrid2.Columns(4).Locked = False
         
         txtfields(14).Text = ""
         txtfields(13).Text = ""
         txtfields(12).Text = ""
         txtfields(11).Text = ""
         
         txtfields(14).Locked = False
         txtfields(13).Locked = False
         txtfields(12).Locked = False
          txtfields(11).Locked = False
         Set Rs = New Recordset
         Rs.Open "select isnull(max(lodgno),0) from rm_bale", DB, adOpenStatic
         txtfields(14).Text = Rs(0) + 1
         txtfields(14).Locked = True
         
         
         'DataGrid2.Col = 4
         'DataGrid2.SetFocus
         'vasanth 11/12
         Set adoSecondaryRS1 = New Recordset
         adoSecondaryRS1.Open "select count(isnull(a.baleno,0)) qty,sum(isnull(a.netwt,0)) netwt,sum(isnull(a.netwt,0) * b.ratekg) value from rm_bale a,rm_lot b where isnull(a.issued,'N')<>'Y' and  a.divcode=b.divcode and a.divcode='" & Divcode & "' and a.lottype = b.lottype and a.lottype = '" & DataGrid1.Columns(3).Text & "' and (isnull(a.netwt,0)-isnull(a.isqty,0)) > 0 and a.catcd = '" & txtfields(0).Text & "' and a.lotno = '" & txtfields(1).Text & "' and a.lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and b.catcd = '" & txtfields(0).Text & "' and b.lotno = '" & txtfields(1).Text & "' and b.lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and (a.openkey not like 'Y' or a.openkey is null) group by a.catcd,a.lotno,a.lotdt", DB, adOpenStatic, adLockBatchOptimistic
         If Not adoSecondaryRS1.BOF Then
           BUTTON(1).Enabled = True
           DataGrid1.Enabled = False
            If adoSecondaryRS1(0).value = "" Then
                 txtfields(7).Text = ""
            Else
                 txtfields(7).Text = adoSecondaryRS1(0)
            End If
            If adoSecondaryRS1(1).value = "" Then
                 txtfields(9).Text = ""
            Else
                 txtfields(9).Text = Format(adoSecondaryRS1(1), "#0.000")
            End If
            If adoSecondaryRS1(2).value = "" Then
                 txtfields(10).Text = ""
            Else
                 txtfields(10).Text = Format(adoSecondaryRS1(2), "#0.00")
            End If
         Else
               MsgBox "No Records Found", vbInformation, head
                Exit Sub
         End If
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select baleno  ""Bale No"" ,grwt ""Gross Weight"",tarewt ""Tare Weight"" ,netwt ""Net Weight"",openkey ""O.K"" from rm_bale where divcode='" & Divcode & "' and isnull(netwt,0)-isnull(isqty,0) > 0 and catcd = '" & txtfields(0).Text & "' and lotno = '" & txtfields(1).Text & "' and lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and lottype = '" & DataGrid1.Columns(3).Text & "' and (openkey not like 'Y' or openkey is null) order by baleno", DB, adOpenStatic, adLockBatchOptimistic
            'db.BeginTrans
            Set DataGrid2.DataSource = adoPrimaryRS
            If adoPrimaryRS.BOF Then
                MsgBox " No Records Found", vbInformation, head
            End If
           DataGrid2.Columns(0).Width = 1000.095
           DataGrid2.Columns(1).Width = 2000.095
           DataGrid2.Columns(1).NumberFormat = "#0.000"
           DataGrid2.Columns(2).NumberFormat = "#0.000"
           DataGrid2.Columns(3).NumberFormat = "#0.000"
           DataGrid2.Columns(2).Width = 2000.095
           DataGrid2.Columns(3).Width = 2000.095
           DataGrid2.Columns(1).Alignment = dbgRight
           DataGrid2.Columns(2).Alignment = dbgRight
           DataGrid2.Columns(3).Alignment = dbgRight
           DataGrid2.Columns(4).Width = 1100.095
           Frame6.Visible = False
           Frame1.Visible = True
           Frame2.Visible = True
           BUTTON(10).Enabled = True
           BUTTON(1).Enabled = False
           Frame2.Enabled = True
           DataGrid1.Enabled = True
         If Opt = "updat" Or Opt = " " Then
           Call disabletxt
           DataGrid2.Columns(4).Locked = False
           DataGrid2.Col = 4
           'DataGrid2.SetFocus
        End If
'           DTPicker1.SetFocus
           Screen.MousePointer = 0
            SSTab1.TabEnabled(1) = False
            SSTab1.Enabled = True
            
            DTPicker1.SetFocus
End Sub

Private Sub Option2_Click()
StatusBar1.Panels(2).Text = "Press  N  and Enter  Release Date"
SSTab1.Enabled = False

BUTTON(1).Enabled = False
Command1.Visible = False
Label18.Visible = True
Label18.Caption = "Release"
Frame9.Visible = True
Frame9.ZOrder

Set Rs = New Recordset
Rs.Open "select Lodgno 'Lodge no', Lodgdate 'Lodge Date',Lotno,BALEno  'Bales' ,sum(NETWT) 'Netwt', sum(LODGVALUE)'Lodge value',b.gname 'Bank',Relno,openkey,Reldate,RelValue from rm_bale a,rm_god b where a.divcode='" & Divcode & "' and OPENKEY ='Y' and lodgno is not null and a.bank = b.gcode group by LODGNO,LODGDATE,LOTNO,b.gname,baleno, RELNO,openkey,RELDATE,RELVALUE  ", DB, adOpenStatic, adLockBatchOptimistic

Set rs1 = New Recordset
    rs1.Open "Select isnull(max(RELNO),0)+1 from rm_bale ", DB, adOpenStatic
    If Not rs1.EOF Then
    a = rs1(0)
    End If
    Set DataGrid4.DataSource = Rs
    
    Do While Not Rs.EOF
        DataGrid4.Columns(7).Text = rs1(0)
        Rs.MoveNext
    Loop
Frame9.Caption = ""

 
Call gr4

BUTTON(9).Enabled = True
On Error Resume Next
DataGrid4.Columns(0).Locked = True
DataGrid4.Columns(1).Locked = True
DataGrid4.Columns(2).Locked = True
DataGrid4.Columns(3).Locked = True
DataGrid4.Columns(4).Locked = True
DataGrid4.Columns(5).Locked = True
DataGrid4.Columns(6).Locked = True
DataGrid4.Columns(7).Locked = True
DataGrid4.Columns(8).Locked = False
DataGrid4.Columns(9).Locked = False
DataGrid4.Row = 0
DataGrid4.Col = 8
DataGrid4.SetFocus
SendKeys ("{a}")
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
'If BUTTON(1).Enabled = False And BUTTON(9).Enabled = True Then
'SSTab1.TabEnabled(1) = False
'Exit Sub
'End If
If SSTab1.Tab = 1 Or Option1 = True Then

Command1.Visible = False
Frame4.Visible = True

Frame8.Visible = False
Frame1.Visible = False
Frame2.Visible = False

Frame9.Visible = False
DataGrid1.Visible = False
DataGrid2.Visible = False
DataGrid3.Visible = True
KslList1.Visible = False
Frame6.Visible = False


Set Rs = New Recordset
Rs.Open "select Lodgno 'lodge no', Lodgdate 'Lodge Date',Lotno,BALEno  'Bales' ,sum(NETWT) 'Netwt', sum(LODGVALUE)'Lodge value',b.gname 'Bank' from rm_bale a,rm_god b where a.divcode='" & Divcode & "' and OPENKEY ='y' and lodgno is not null and a.bank = b.gcode group by LODGNO,LODGDATE,LOTNO,b.gname,baleno  ", DB, adOpenStatic, adLockBatchOptimistic
If Not Rs.EOF Then
    Rs.MoveFirst
    Set DataGrid3.DataSource = Rs
End If
Call gr3align

Else
Frame6.Visible = False


Frame1.Visible = False
Frame2.Visible = False
Frame4.Visible = False
DataGrid1.Visible = True
DataGrid2.Visible = True
DataGrid3.Visible = False
KslList1.Visible = True
Frame6.Visible = True
Frame6.ZOrder 0
End If
End Sub


Private Sub SSTab1_DblClick()
If SSTab1.Tab = 0 Then
Frame1.Visible = True
Frame2.Visible = True



Frame6.Visible = False
Frame4.Visible = True
DataGrid1.Visible = True
DataGrid2.Visible = True
DataGrid3.Visible = False

'KslList1.Visible = False

End If

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
StatusBar1.Panels(2).Text = ""
If Index = 13 Then
StatusBar1.Panels(2).Text = " Enter the Value"
End If
If Index = 11 Then
StatusBar1.Panels(2).Text = "Select a Bank"
End If
End Sub

'End Select


Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
If Index = 13 Then
Call tonum(txtfields(13), 8, KeyAscii, 13)

End If
'If Index = 12 Then
'ToNumber txtfields(12), KeyAscii
'If Len(txtfields(12)) = 10 Then KeyAscii = 0
'End If
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
'VASANTH
On Error Resume Next
If Opt = "updat" Or Opt = " " Then
Select Case Index
Case 13
    txtfields(12).Text = val(txtfields(13)) * 0.75
    txtfields(11).SetFocus
Case 11
    If txtfields(11).Text <> "" Then
        Set Rs = New Recordset
        Rs.Open "sELECT COUNT(*) FROM RM_GOD WHERE GCODE='" & txtfields(11).Text & "'", DB, adOpenStatic
        If Rs(0) = 0 Then
'                SSTab1.Visible = False
'                Frame6.Visible = False
'                Frame3.Visible = True
'                Frame3.ZOrder
'                Label17.Caption = "Godown Details"
'                KSLlist1.conn = connectstring
'                KSLlist1.Table = "rm_god"
'                KSLlist1.listfield1 = "GCODE"
'                KSLlist1.listfield2 = "GNAME"
'                KSLlist1.SetFocus

            LookUp.Clear = True
            LookUp.query = "SELECT gcode""Godown Code"",gname""Godown Name"" from rm_god WHERE DIVCODE='" & Divcode & "'"
            LookUp.DefCol = "Godown Name"
            LookUp.Caption = "Godown Listing"
            LookUp.ALIGN = "1500,3500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                gCode = LookUp.Fields(0)
                 txtfields(11).Text = LookUp.Fields(0)
                 DataGrid2.Col = 4
                 DataGrid2.SetFocus
                 StatusBar1.Panels(2).Text = "Press Y/N & Save "
                LookUp.Clear = True
            Else
                txtfields(11).SetFocus
                LookUp.Clear = True
            End If

        End If
    End If
End Select
End If
End Sub

Public Sub gr3align()
On Error Resume Next
'Frame4.Left = 320
'Frame4.Top = 650
DataGrid3.Top = 300
DataGrid3.Left = 350

DataGrid3.Columns(0).Width = 854.9292
DataGrid3.Columns(1).Width = 1140.095
DataGrid3.Columns(2).Width = 615.1182
DataGrid3.Columns(3).Width = 675.2126

DataGrid3.Columns(4).Width = 929.7639
DataGrid3.Columns(5).Width = 1184.882
DataGrid3.Columns(6).Width = 2129.953
DataGrid3.Columns(1).Alignment = dbgCenter
DataGrid3.Columns(2).Alignment = dbgRight
DataGrid3.Columns(3).Alignment = dbgRight
DataGrid3.Columns(4).Alignment = dbgRight
DataGrid3.Columns(5).Alignment = dbgGeneral
DataGrid3.Columns(4).NumberFormat = "#0.00"
DataGrid3.Columns(5).NumberFormat = "#0.00"
End Sub

Public Sub gr4()
On Error Resume Next
'Frame4.Left = 320
'Frame4.Top = 650
'DataGrid3.Top = 300
'DataGrid3.Left = 350

Frame9.Top = 1020
Frame9.Left = 350
Frame9.Height = 4605
DataGrid4.Height = 4300
DataGrid4.Columns(0).Width = 599.811
DataGrid4.Columns(1).Width = 1140.095
DataGrid4.Columns(2).Width = 615.1182
DataGrid4.Columns(3).Width = 675.2126

DataGrid4.Columns(4).Width = 929.7639
DataGrid4.Columns(5).Width = 824.882
DataGrid4.Columns(6).Width = 2129.953
DataGrid4.Columns(7).Width = 569.7638
DataGrid4.Columns(8).Width = 554.9764
DataGrid4.Columns(10).Visible = False
DataGrid4.Columns(1).Alignment = dbgCenter
DataGrid4.Columns(2).Alignment = dbgRight
DataGrid4.Columns(3).Alignment = dbgRight
DataGrid4.Columns(4).Alignment = dbgRight
DataGrid4.Columns(5).Alignment = dbgRight
DataGrid4.Columns(4).NumberFormat = "#0.00"
DataGrid4.Columns(5).NumberFormat = "#0.00"

DataGrid4.Columns(0).Caption = "Lodge   No"
DataGrid4.Columns(5).Caption = "Lodge    Value"
DataGrid4.Columns(8).Caption = "Open    Key"

End Sub
