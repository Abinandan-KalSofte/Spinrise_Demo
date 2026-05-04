VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form OpenStockEntry 
   Caption         =   "Open Stock Entry"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11100
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11100
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   49
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":0000
         Height          =   495
         Index           =   8
         Left            =   3200
         Picture         =   "OpenStockEntry.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   111
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":07AC
         Height          =   495
         Index           =   7
         Left            =   2670
         Picture         =   "OpenStockEntry.frx":0BF6
         Style           =   1  'Graphical
         TabIndex        =   110
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":0F46
         Height          =   495
         Index           =   5
         Left            =   1650
         Picture         =   "OpenStockEntry.frx":1390
         Style           =   1  'Graphical
         TabIndex        =   109
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":16F5
         Height          =   495
         Index           =   6
         Left            =   2160
         Picture         =   "OpenStockEntry.frx":1B3F
         Style           =   1  'Graphical
         TabIndex        =   108
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   7680
         Picture         =   "OpenStockEntry.frx":1E8C
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "List "
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":2223
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   2
         Left            =   1110
         Picture         =   "OpenStockEntry.frx":252D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":28C9
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "OpenStockEntry.frx":2BD3
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":2F66
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "OpenStockEntry.frx":3270
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":35EA
         Height          =   510
         Index           =   11
         Left            =   4815
         Picture         =   "OpenStockEntry.frx":3A34
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":3DC9
         Height          =   510
         Index           =   9
         Left            =   3720
         Picture         =   "OpenStockEntry.frx":40D3
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "OpenStockEntry.frx":4475
         Height          =   510
         Index           =   10
         Left            =   4260
         Picture         =   "OpenStockEntry.frx":477F
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   540
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
         Left            =   8400
         TabIndex        =   51
         Top             =   270
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6705
         TabIndex        =   50
         Top             =   270
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   53
      Top             =   8190
      Width           =   11100
      _ExtentX        =   19579
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
            TextSave        =   "08/11/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "04:42 PM"
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
      Height          =   4845
      Left            =   450
      TabIndex        =   46
      Top             =   1185
      Width           =   8595
      _ExtentX        =   15161
      _ExtentY        =   8546
      _Version        =   393216
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
      TabPicture(0)   =   "OpenStockEntry.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Invoice"
      TabPicture(1)   =   "OpenStockEntry.frx":4B17
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame8"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Bales"
      TabPicture(2)   =   "OpenStockEntry.frx":4B33
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label9"
      Tab(2).Control(1)=   "Frame1"
      Tab(2).Control(2)=   "Frame2"
      Tab(2).ControlCount=   3
      Begin VB.Frame Frame2 
         Height          =   630
         Left            =   -73560
         TabIndex        =   92
         Top             =   3975
         Visible         =   0   'False
         Width           =   5880
         Begin VB.TextBox Text7 
            Alignment       =   1  'Right Justify
            Height          =   330
            Left            =   4425
            Locked          =   -1  'True
            TabIndex        =   96
            Top             =   195
            Width           =   1155
         End
         Begin VB.TextBox Text6 
            Alignment       =   1  'Right Justify
            Height          =   330
            Left            =   3050
            Locked          =   -1  'True
            TabIndex        =   95
            Top             =   195
            Width           =   1155
         End
         Begin VB.TextBox Text5 
            Alignment       =   1  'Right Justify
            Height          =   330
            Left            =   1675
            Locked          =   -1  'True
            TabIndex        =   94
            Top             =   195
            Width           =   1155
         End
         Begin VB.TextBox Text4 
            Alignment       =   1  'Right Justify
            Height          =   330
            Left            =   300
            Locked          =   -1  'True
            TabIndex        =   93
            Top             =   195
            Width           =   1155
         End
      End
      Begin VB.Frame Frame8 
         Height          =   3405
         Left            =   -74895
         TabIndex        =   73
         Top             =   660
         Width           =   8295
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
            Index           =   19
            Left            =   6540
            MaxLength       =   10
            TabIndex        =   44
            Top             =   2670
            Width           =   1560
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
            Index           =   10
            Left            =   6540
            MaxLength       =   9
            TabIndex        =   35
            Top             =   1320
            Width           =   1560
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
            Height          =   360
            Index           =   6
            Left            =   3900
            MaxLength       =   12
            TabIndex        =   31
            Top             =   870
            Width           =   1500
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
            Index           =   9
            Left            =   3900
            MaxLength       =   9
            TabIndex        =   34
            Top             =   1320
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "LDGULG"
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
            Height          =   360
            Index           =   12
            Left            =   3900
            MaxLength       =   9
            TabIndex        =   37
            Top             =   1770
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "DNAMT2"
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
            Height          =   360
            Index           =   15
            Left            =   3900
            MaxLength       =   9
            TabIndex        =   40
            Top             =   2220
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "TOTLANDCOST"
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
            Index           =   18
            Left            =   3900
            MaxLength       =   12
            TabIndex        =   43
            Top             =   2670
            Width           =   1500
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
            Index           =   16
            Left            =   6540
            MaxLength       =   9
            TabIndex        =   41
            Top             =   2220
            Width           =   1560
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
            Height          =   360
            Index           =   3
            Left            =   1125
            MaxLength       =   15
            TabIndex        =   27
            Top             =   390
            Width           =   1500
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
            Height          =   360
            Index           =   4
            Left            =   6540
            MaxLength       =   10
            TabIndex        =   29
            Top             =   420
            Width           =   1560
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
            Index           =   13
            Left            =   6540
            MaxLength       =   9
            TabIndex        =   38
            Top             =   1770
            Width           =   1560
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "brkcom"
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
            Height          =   330
            Index           =   17
            Left            =   1125
            MaxLength       =   10
            TabIndex        =   42
            Top             =   2640
            Width           =   1500
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "DNAMT1"
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
            Height          =   360
            Index           =   14
            Left            =   1125
            MaxLength       =   9
            TabIndex        =   39
            Top             =   2190
            Width           =   1500
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
            Index           =   11
            Left            =   1125
            MaxLength       =   9
            TabIndex        =   36
            Top             =   1740
            Width           =   1500
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
            Index           =   8
            Left            =   1125
            MaxLength       =   9
            TabIndex        =   33
            Top             =   1290
            Width           =   1500
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
            Index           =   7
            Left            =   6555
            MaxLength       =   9
            TabIndex        =   32
            Top             =   870
            Width           =   1560
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "PTYWGT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
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
            Height          =   360
            Index           =   5
            Left            =   1125
            MaxLength       =   11
            TabIndex        =   30
            Top             =   840
            Width           =   1500
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "BILLDT"
            Height          =   330
            Index           =   2
            Left            =   3900
            TabIndex        =   28
            Top             =   420
            Width           =   1260
            _ExtentX        =   2223
            _ExtentY        =   582
            _Version        =   393216
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
            Left            =   2700
            TabIndex        =   91
            Top             =   465
            Width           =   750
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Landed Cost"
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
            Left            =   2670
            TabIndex        =   90
            Top             =   2745
            Width           =   1140
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Dr.Amt-2"
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
            Left            =   2700
            TabIndex        =   89
            Top             =   2295
            Width           =   765
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "Load Chg."
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
            Left            =   2700
            TabIndex        =   88
            Top             =   1845
            Width           =   915
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Od.Int"
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
            Left            =   2700
            TabIndex        =   87
            Top             =   1395
            Width           =   510
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Invoice Value"
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
            Left            =   2700
            TabIndex        =   86
            Top             =   915
            Width           =   1215
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Kg."
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
            Left            =   5535
            TabIndex        =   85
            Top             =   2745
            Width           =   780
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Bill No."
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
            Left            =   135
            TabIndex        =   84
            Top             =   465
            Width           =   630
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Sample Wt."
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
            Left            =   5415
            TabIndex        =   83
            Top             =   495
            Width           =   1035
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Insurance"
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
            Left            =   5535
            TabIndex        =   82
            Top             =   2295
            Width           =   870
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Sales Tax"
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
            Left            =   5505
            TabIndex        =   81
            Top             =   945
            Width           =   915
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Invoice Wt."
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
            Left            =   90
            TabIndex        =   80
            Top             =   885
            Width           =   975
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "Lorry frt."
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
            Left            =   5535
            TabIndex        =   79
            Top             =   1395
            Width           =   690
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Ex. Duty"
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
            Left            =   90
            TabIndex        =   78
            Top             =   1365
            Width           =   720
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Railway Frt."
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
            Left            =   75
            TabIndex        =   77
            Top             =   1845
            Width           =   1035
         End
         Begin VB.Label Label24 
            AutoSize        =   -1  'True
            Caption         =   "Dr.Amt-1"
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
            Left            =   90
            TabIndex        =   76
            Top             =   2265
            Width           =   765
         End
         Begin VB.Label Label25 
            AutoSize        =   -1  'True
            Caption         =   "Brk Comm."
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
            Left            =   90
            TabIndex        =   75
            Top             =   2685
            Width           =   975
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Spot Exp."
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
            Left            =   5535
            TabIndex        =   74
            Top             =   1845
            Width           =   855
         End
      End
      Begin VB.Frame Frame7 
         Height          =   4305
         Left            =   120
         TabIndex        =   59
         Top             =   390
         Width           =   8340
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "RATE"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00;(0.00)"
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
            Height          =   330
            Index           =   30
            Left            =   1440
            MaxLength       =   10
            TabIndex        =   25
            Top             =   3735
            Width           =   1545
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "PLOTNO"
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
            Index           =   33
            Left            =   1440
            MaxLength       =   10
            TabIndex        =   10
            Top             =   635
            Width           =   1950
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00C0C0C0&
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
            Index           =   21
            Left            =   2580
            Locked          =   -1  'True
            TabIndex        =   19
            TabStop         =   0   'False
            Top             =   2415
            Width           =   5445
         End
         Begin VB.TextBox Text8 
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
            Left            =   6495
            MaxLength       =   2
            TabIndex        =   45
            Top             =   3780
            Visible         =   0   'False
            Width           =   1590
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "godown"
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
            Index           =   20
            Left            =   4230
            MaxLength       =   3
            TabIndex        =   26
            Top             =   3780
            Width           =   1095
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "grswgt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
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
            Height          =   360
            Index           =   23
            Left            =   1440
            MaxLength       =   11
            TabIndex        =   22
            Top             =   3275
            Width           =   1545
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "netwt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
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
            Height          =   360
            Index           =   25
            Left            =   6495
            MaxLength       =   11
            TabIndex        =   24
            Top             =   3300
            Width           =   1590
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
            Height          =   360
            Index           =   29
            Left            =   1440
            MaxLength       =   100
            TabIndex        =   18
            Top             =   2395
            Width           =   1095
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
            Height          =   360
            Index           =   2
            Left            =   4245
            MaxLength       =   10
            TabIndex        =   8
            Top             =   240
            Width           =   1170
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
            Height          =   360
            Index           =   26
            Left            =   1440
            MaxLength       =   100
            TabIndex        =   12
            Top             =   1075
            Width           =   1065
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
            Height          =   360
            Index           =   27
            Left            =   1440
            MaxLength       =   100
            TabIndex        =   14
            Top             =   1515
            Width           =   1080
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
            Height          =   360
            Index           =   28
            Left            =   1440
            MaxLength       =   100
            TabIndex        =   16
            Top             =   1955
            Width           =   1095
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "CATCD"
            Height          =   330
            Index           =   0
            Left            =   1455
            MaxLength       =   1
            TabIndex        =   7
            Top             =   225
            Width           =   1095
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "tarewt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000;(0.000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
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
            Height          =   360
            Index           =   24
            Left            =   4230
            MaxLength       =   10
            TabIndex        =   23
            Top             =   3315
            Width           =   1065
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00C0C0C0&
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
            Left            =   2565
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   13
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1080
            Width           =   5445
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00C0C0C0&
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
            Left            =   2580
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   15
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1515
            Width           =   5445
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00C0C0C0&
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
            Left            =   2580
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   17
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1965
            Width           =   5445
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
            Height          =   360
            Index           =   22
            Left            =   1440
            MaxLength       =   5
            TabIndex        =   20
            Top             =   2835
            Width           =   1545
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
            ItemData        =   "OpenStockEntry.frx":4B4F
            Left            =   4200
            List            =   "OpenStockEntry.frx":4B5C
            Style           =   2  'Dropdown List
            TabIndex        =   21
            Top             =   2820
            Width           =   1125
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   330
            Index           =   0
            Left            =   6480
            TabIndex        =   11
            Top             =   630
            Width           =   1530
            _ExtentX        =   2699
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
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
            Height          =   360
            Index           =   1
            Left            =   6480
            TabIndex        =   9
            Top             =   210
            Width           =   1230
            _ExtentX        =   2170
            _ExtentY        =   635
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
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
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   360
            Left            =   6495
            TabIndex        =   47
            Top             =   210
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   635
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
            Format          =   159055873
            CurrentDate     =   36831
         End
         Begin VB.Label Label6 
            Caption         =   "Rate"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   135
            TabIndex        =   107
            Top             =   3795
            Width           =   795
         End
         Begin VB.Label Label28 
            Caption         =   "Suppplier Lot No."
            DataField       =   "plotno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   450
            Left            =   135
            TabIndex        =   106
            Top             =   540
            Width           =   1095
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Group"
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
            Left            =   5415
            TabIndex        =   104
            Top             =   3795
            Visible         =   0   'False
            Width           =   555
         End
         Begin VB.Label Label30 
            AutoSize        =   -1  'True
            Caption         =   "Godown"
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
            Left            =   3045
            TabIndex        =   98
            Top             =   3780
            Width           =   750
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
            Left            =   135
            TabIndex        =   72
            Top             =   255
            Width           =   825
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   " Lot Date"
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
            Left            =   5520
            TabIndex        =   71
            Top             =   240
            Width           =   1035
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Entry Date"
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
            Left            =   5520
            TabIndex        =   70
            Top             =   720
            Width           =   1050
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
            Left            =   135
            TabIndex        =   69
            Top             =   2910
            Width           =   780
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
            Left            =   3030
            TabIndex        =   68
            Top             =   3315
            Width           =   1350
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
            Left            =   5385
            TabIndex        =   67
            Top             =   3330
            Width           =   1035
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
            Left            =   135
            TabIndex        =   66
            Top             =   3345
            Width           =   1455
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
            Left            =   135
            TabIndex        =   65
            Top             =   2490
            Width           =   630
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Mill Lot No."
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
            Left            =   3165
            TabIndex        =   64
            Top             =   285
            Width           =   975
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
            Left            =   135
            TabIndex        =   63
            Top             =   1155
            Width           =   750
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
            Left            =   135
            TabIndex        =   62
            Top             =   2055
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker"
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
            Left            =   135
            TabIndex        =   61
            Top             =   1605
            Width           =   600
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
            Left            =   3060
            TabIndex        =   60
            Top             =   2880
            Width           =   345
         End
      End
      Begin VB.Frame Frame1 
         Height          =   3450
         Left            =   -74925
         TabIndex        =   58
         Top             =   480
         Width           =   8400
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   3120
            Left            =   120
            TabIndex        =   48
            Top             =   240
            Width           =   8175
            _ExtentX        =   14420
            _ExtentY        =   5503
            _Version        =   393216
            AllowUpdate     =   -1  'True
            AllowArrows     =   -1  'True
            ForeColor       =   -2147483635
            HeadLines       =   1
            RowHeight       =   19
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
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Caption         =   "Balewise Weighment Details"
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
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Totals"
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
         Left            =   -74685
         TabIndex        =   97
         Top             =   4200
         Visible         =   0   'False
         Width           =   570
      End
   End
   Begin VB.Frame Frame9 
      Height          =   4785
      Left            =   480
      TabIndex        =   99
      Top             =   1200
      Visible         =   0   'False
      Width           =   8505
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         Height          =   375
         Left            =   4440
         TabIndex        =   101
         Top             =   4215
         Width           =   1140
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         Height          =   375
         Left            =   2580
         TabIndex        =   100
         Top             =   4200
         Width           =   1140
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3330
         Left            =   150
         TabIndex        =   102
         Top             =   600
         Width           =   8130
         _ExtentX        =   14340
         _ExtentY        =   5874
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   18
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
      Begin VB.Label Label39 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Lot  Details"
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
         TabIndex        =   103
         Top             =   120
         Width           =   8400
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4830
      Left            =   480
      TabIndex        =   54
      Top             =   1080
      Visible         =   0   'False
      Width           =   8625
      Begin listacx.codelist ksllist1 
         Height          =   3330
         Left            =   810
         TabIndex        =   105
         Top             =   570
         Width           =   7260
         _ExtentX        =   12806
         _ExtentY        =   5874
         caption         =   ""
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "OpenStockEntry.frx":4B70
         Height          =   615
         Left            =   4740
         Picture         =   "OpenStockEntry.frx":4F52
         Style           =   1  'Graphical
         TabIndex        =   56
         Top             =   4095
         Width           =   1185
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "OpenStockEntry.frx":5325
         Height          =   615
         Left            =   3000
         Picture         =   "OpenStockEntry.frx":570B
         Style           =   1  'Graphical
         TabIndex        =   55
         Top             =   4110
         Width           =   1185
      End
      Begin VB.Label Label15 
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
         TabIndex        =   57
         Top             =   120
         Width           =   8595
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Opening Stock Entry - Raw Material"
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
      Left            =   480
      TabIndex        =   52
      Top             =   720
      Width           =   4695
   End
End
Attribute VB_Name = "OpenStockEntry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim rstDatae As Recordset
Dim Rs As Recordset
Dim z As Integer
Dim rs1 As Recordset
Dim a1, A2, a3, FLG As String
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldarrno As Long
Dim oldarrdt As Date
Dim GG As Double
Dim GT As Double
Dim qty As Double
Dim oldgrs As Double
Dim oldtare As Double
Dim FLLG As String
Dim a As Double
Dim B As Double
Dim c As Double
Dim d As Double
Dim W As Double
'Dim Flg As String
''Dim p As Double
''Dim q As Double
''Dim r As Double
''Dim s As Double
Dim wei As Double
Dim t As Double

Private Sub previousDate()
intervalMinutes = -1
Dim dtCurrent As Date
On Error GoTo previousDate_Error

Set rstDatae = New Recordset
rstDatae.Open "Select lotdt From Rm_lot Where (isswt is null or isswt=0)and (issbal is null or issbal=0) and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='Y'", DB, adOpenStatic
If rstDatae.EOF = False Then
    rstDatae.MoveFirst
    dtCurrent = rstDatae!LOTDT
    DTPicker2.value = Format(dtCurrent, "dd/MM/yyyy")
    MaskEdBox1(1).Text = Format(dtCurrent, "dd/MM/yyyy")
    MaskEdBox1(1).Enabled = False
    DTPicker2.Enabled = False
Else
    dtCurrent = Date
    DTPicker2.value = Format(dtCurrent, "dd/MM/yyyy")
    MaskEdBox1(1).Text = Format(dtCurrent, "dd/MM/yyyy")
    MaskEdBox1(1).Enabled = True
    DTPicker2.Enabled = True
End If

Exit Sub
previousDate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure previousDate of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
   DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Opening Stock Entry"
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Tab = 0
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,colorcode,plotno,rate,TRASH_PER,MICRONAIRE,SHORT_FIBRE,STAPLEN,lotyear,rejflg,FAVAOURABLEWGT FROM RM_LOT WHERE 1=2  and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
    Set adoSecondaryRS = New Recordset
    'ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT FROM RM_BALE WHERE 1=2 and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    'ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,divcode FROM RM_BALE WHERE 1=2 and lottype = 'T' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    adoSecondaryRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,divcode,ARRDT,STATUS FROM RM_BALE WHERE 1=2  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoSecondaryRS
    Call gridalign
    'MaskEdBox1(0).Text = "__/__/____"
    TXTFIELDS(26).Text = ""
    TXTFIELDS(27).Text = ""
    TXTFIELDS(28).Text = ""
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    FLLG = "N"
    Frame1.Visible = False
    Frame2.Visible = True
    Label9.Visible = True
    Frame8.Visible = True
    Call ENABLCONTLS
    Call bindcontls
    DB.BeginTrans
    TXTFIELDS(33).Text = ""
    TXTFIELDS(21).Text = ""
    TXTFIELDS(30).Text = ""
    TXTFIELDS(25).Locked = True
    adoSecondaryRS.AddNew
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    Frame8.Enabled = True
    Frame7.Enabled = True
    BUTTON(9).ToolTipText = "Add Record"
''    TXTFIELDS(0).Locked = True
'    MaskEdBox1(1).Text = pdate
    TXTFIELDS(2).Locked = False
    TXTFIELDS(0).SetFocus
    grdDataGrid.Enabled = True 'False
    'BUTTON(4).Enabled = False
    BUTTON(9).Enabled = False
    DTPicker2.Visible = True
'    DTPicker2.Enabled = True
'    DTPicker2.Value = pdate
'    MaskEdBox1(1).Enabled = True
    FLG = ""
    TXTFIELDS(0).Locked = False
    TXTFIELDS(0).SetFocus

Case 1
    
    Opt = "mod"
    desc.Caption = "Modification"
    Call adddelmod(BUTTON)
    Call delmodok_Click
    'Call disablcontls
    BUTTON(9).ToolTipText = "Modify"
    TXTFIELDS(0).Locked = True
    'BUTTON(4).Enabled = False
    BUTTON(9).Enabled = False
    Frame2.Visible = False
    Label2.Visible = False
    BUTTON(10).Enabled = False
    TXTFIELDS(2).SetFocus
   
    

Case 2
    'Deletion
    Opt = "del"
    desc.Caption = "Deletion"
    Call adddelmod(BUTTON)
    Call delmodok_Click
    'BUTTON(4).Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False

Case 3
        'Query
        
Case 4   'List

Opt = "List"
desc.Caption = "Listing"
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
    
  Set ResultRs = New Recordset
''  ResultRs.Open " select a.lotno,a.lotdt,a.catcd,a.varname,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,isnull(a.stock,0)-isnull(b.isskgs,0) stock,val,a.plotno,a.rate,a.Modusrid,a.Moddate from " & _
''              "(select distinct a.Modusrid,a.Moddate,a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V'  when a.catcd='D' then 'D' when a.catcd='A' then 'A' when a.catcd='W' then 'W' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,isnull(a.netwt,0) 'Stock',isnull(rate,0) 'Rate/qu',isnull(rate* a.netwt,0) 'val',isnull(a.PLOTNO,' ')as PLOTNO,rate as rate from rm_lot a,rm_var c  where a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode  and (a.rejflg='N' or a.rejdt='" & Format(pdate, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
''              "(select a.lotno,a.lotdt,a.catcd,count(a.baleno)as bales,sum(isnull(a.actisskgs-tarewt,0))as isskgs  from rm_issb a ,rm_bale b where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.baleno=b.baleno  group by a.lotno,a.lotdt,a.catcd)b " & _
''              "where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd   order by a.lotno ", db, adOpenStatic
''
    
    '' Date - 24-Apr-2007
    '' Previosly, rate was taken for reporting, Normally, we take ratekg (that is totlandcost/netwt) in arrivals
    '' So, here also, we changed from rate to ratekg
    
    ''ResultRs.Open "SELECT isnull(lotno,0) as lotno,lotdt,a.catcd,b.varname,isnull(bales,0) as bales,Unit = case when a.bblflg='R' then 'Borah' Else 'Bales'end,isnull(netwt,0) as stock,isnull(rate,0)*isnull(netwt,0) as val,isnull(plotno,'') as plotno,isnull(rate,0) as  rate,isnull(modusrid,'') as modusrid,moddate from rm_lot a,rm_var b  where a.varcode=b.varcode and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and opflg='Y' ORDER BY LOTNO", db, adOpenStatic
    
    ResultRs.Open "SELECT isnull(lotno,0) as lotno,lotdt,c.Catname,b.varname,isnull(bales,0) as bales,Unit = case when a.bblflg='R' then 'Borah' Else 'Bales'end,isnull(netwt,0) as stock,isnull(ratekg,0)*isnull(netwt,0) as val,isnull(plotno,'') as plotno,isnull(ratekg,0) as  rate,isnull(modusrid,'') as modusrid,moddate from rm_lot a,rm_var b,rm_cat c where a.varcode=b.varcode and a.catcd = c.catcd and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and opflg='Y' ORDER BY Lotdt, LOTNO", DB, adOpenStatic

    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set rptv = New Report.ReportView
    z = FreeFile
    Close #z
    Open KALFOLDERDATA & "\Loso.TXT" For Output As #z
    pg1 = 1
    co = 0

    Call LotstockRepHeader(CStr(pg1), CStr(co), CStr(s), CStr(a))
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
        Do While Not ResultRs.EOF
            If ResultRs("BALES") > 0 And ResultRs("stock") > 0 Then
                'If u = 0 Then
                    Print #z, Space(5) & Padr(ResultRs("catname"), 18, " ") + Space(1) + Padl(CStr(ResultRs("LOTNO")), 5, " ") + Space(2) + Padr(CStr(Format(ResultRs("LOTDT"), "DD/MM/YY")), 8, " ") + Space(2) + Padr(CStr(ResultRs("VARNAME")), 18, " ") + Space(2) + IIf(ResultRs("plotno") = 0, " ", Padl(ResultRs("plotno"), 7, " ")) + Space(2); Padl(CStr(INF((ResultRs("rate")), 2)), 8, " ") + Space(2) + Padl(INF(ResultRs("bales"), 0), 6, " ") + Space(2) + Padr(IIf(ResultRs("bales") > 0, ResultRs("unit"), " "), 6, " ") + Padl(IIf(ResultRs("stock") < 1, Format(ResultRs("stock"), "#0.00"), CStr(INF(ResultRs("STOCK"), 3))), 12, " ") + Padl(IIf(ResultRs("VAL") < 1, Format(ResultRs("VAL"), "#0.00"), INF(ResultRs("VAL"), 2)), 16, " ")
                'ElseIf u = 1 Then
                 '   Print #z, Space(5) &IIf(rs("stopcode2") = 0, " ", Padr(rs("stopcode2"), 3, " ")) Padr(CStr(ResultRs("CATCD")), 11, " ") + Padl(CStr(ResultRs("LOTNO")), 5, " ") + Space(2) + Padr(CStr(Format(ResultRs("LOTDT"), "DD/MM/YYYY")), 11, " ") + Space(2) + Padr(CStr(ResultRs("VARNAME")), 20, " ") + Space(2) +IIf(rs("stopcode2") = 0, " ", Padr(rs("stopcode2"), 3, " "))+ Padl(CStr((ResultRs("plotno"))), 8, " ") + Padl(CStr(INF((ResultRs("ratekg")), 2)), 8, " ") + Space(2) + Padl(INF(ResultRs("bales"), 0), 6, " ") + Space(2) + Padr(IIf(ResultRs("bales") > 0, ResultRs("unit"), " "), 6, " ") + Padl(IIf(ResultRs("stock") < 1, Format(ResultRs("stock"), "#0.00"), CStr(INF(ResultRs("STOCK"), 2))), 12, " ") + Padl(INF(ResultRs("ratecandy"), 0), 11, " "); Padl(IIf(ResultRs("VAL") < 1, Format(ResultRs("VAL"), "#0.00"), INF(ResultRs("VAL"), 2)), 18, " ") + Space(1) + Padr(ResultRs!MODUSRID, 13, " ") + Space(1) + Padr(Format(ResultRs!MODDATE, "dd/mm/yyyy"), 10, " ") 'Padr(ResultRs!moddate, 20, " ")
                'End If
                co = co + 1
                If co >= PageLen Then
                   Print #z, Space(5) & String(IIf(U = 0, 130, 153), "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call LotstockRepHeader(CStr(pg1), CStr(co), CStr(s), CStr(a))
                End If

               tot = tot + ResultRs("BALES")
               tot2 = tot2 + ResultRs("STOCK")
               tot3 = tot3 + ResultRs("VAL")

            End If
                ResultRs.MoveNext

        Loop
        Print #z, Space(5) & String(120, "-")
        'Print #z, Space(5) & String(IIf(u = 0, 130, 153), "-")
                co = co + 1
                If co >= PageLen Then
                   Print #z, Space(5) & String(120, "-")
                   'Print #z, Space(5) & String(IIf(u = 0, 120, 153), "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call LotstockRepHeader(CStr(pg1), CStr(co), CStr(s), CStr(a))
                End If
        Print #z, Space(52); Chr(27); "E" + "** Grand Total ** " + Space(2) + Padl(INF(tot, 0), 12, " ") + Space(1) + Padl(CStr(INF((tot2), 3)), 19, " ") + Space(1) + Padl(CStr(INF((tot3), 2)), 15, " "); Chr(27); "F"
        If co >= PageLen Then
                   Print #z, Space(5) & String(120, "-")
                   'Print #z, Space(5) & String(IIf(u = 0, 120, 153), "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call LotstockRepHeader(CStr(pg1), CStr(co), CStr(s), CStr(a))
                   'Call LotstockRepHeader(pg1, co, s, a, u)
                End If
        'Print #z, Space(5) & String(IIf(u = 0, 120, 153), "-")
        Print #z, Space(5) & String(120, "-")
        If co >= PageLen Then
                   Print #z, Space(5) & String(120, "-")
                     Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call LotstockRepHeader(CStr(pg1), CStr(co), CStr(s), CStr(a))
        End If

Print #z, Chr(12)
Close #z
z = FreeFile
Call KALBATPROCESS("loso")
'Open "C:\Loso.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "C:"
'Print #z, "cd\"
'Print #z, "type Loso.TXT>prn"
'Close #z
'RPTV.txtfile = "C:\Loso.TXT"
'RPTV.Batfile = "C:\Loso.bat"
Screen.MousePointer = 0

        
'        Frame6.Visible = True
'        Frame9.Visible = False
'        Frame3.Visible = False
'        SSTab1.Visible = False
'        txtqry.Text = ""
'        txtqry.SetFocus
'
Case 5
     'first
     desc.Caption = "Query"
      StatusBar1.Panels(2).Text = "First record"
      BUTTON(4).Enabled = True
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     Call bindcontls
     Call disablcontls
     Call gridalign
    'calling fir procedure from module
     Call navi(BUTTON)
     Call FIR(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "First record"
     Beep
     Exit Sub
GoFirstError:
    MsgBox Err.Description, vbInformation, head

Case 6
     'next
      desc.Caption = "Query"
      BUTTON(4).Enabled = True
      On Error GoTo GoNextError
       StatusBar1.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
        Call disablcontls
        Call gridalign
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
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
       Call bindcontls
           Beep
      End If
     ' show the current record
      Call navi(BUTTON)
      If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
      BUTTON(8).Enabled = False
      BUTTON(6).Enabled = False
      BUTTON(4).Enabled = True
      Beep
      Else
      BUTTON(8).Enabled = True
      BUTTON(6).Enabled = True
      BUTTON(4).Enabled = True
      End If
      Exit Sub
      BUTTON(4).Enabled = True
GoNextError:
   MsgBox Err.Description, vbInformation, head

Case 7
    'Previous
     desc.Caption = "Query"
     BUTTON(4).Enabled = True
     On Error GoTo GoPrevError
     StatusBar1.Panels(2).Text = "Record: " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        Call bindcontls
        Call disablcontls
        Call gridalign
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
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
        Call gridalign
    End If
    'show the current record
    Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
        BUTTON(4).Enabled = True
    Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head

Case 8
     'last
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "Last record"
     BUTTON(4).Enabled = True
     On Error GoTo GoLastError
     adoPrimaryRS.MoveLast
     Call bindcontls
     Call disablcontls
     Call gridalign
    'calling las procedure from module
     Call navi(BUTTON)
     Call las(BUTTON)
     StatusBar1.Panels(2).Text = "Last record"
    Beep
    BUTTON(4).Enabled = True
     Exit Sub

GoLastError:
   MsgBox Err.Description, vbInformation, head

Case 9
'     Save

If Opt = "add" Or Opt = "mod" Then

'Commented for not necessary in invoice
'    If Trim(TXTFIELDS(6).Text) = "" Then
'        'MsgBox "Inv.val should not be empty", vbInformation, head
'        If SSTab1.Tab = 2 Then
'        SSTab1.Tab = 1
'        TXTFIELDS(6).SetFocus
'        TXTFIELDS(6).Locked = False
'        Else
'        SSTab1.Tab = 1
'        TXTFIELDS(6).Locked = False
'        TXTFIELDS(6).SetFocus
'        End If
'        Exit Sub
'    End If
If Opt = "add" Then
    If Trim(TXTFIELDS(2).Text) <> "" Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_lot where divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and lotno='" & Trim(TXTFIELDS(2).Text) & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            MsgBox "Lotno already exists", vbInformation, head
            TXTFIELDS(2).SetFocus
            Exit Sub
        End If
    Else
        MsgBox "Lotno should not be empty", vbInformation, head
        TXTFIELDS(2).SetFocus
        Exit Sub
    End If
End If
    If Trim(TXTFIELDS(20).Text) = "" Then
        MsgBox "Godown Code should not be empty", vbInformation, head
        If SSTab1.Tab = 2 Then
        SSTab1.Tab = 0
        TXTFIELDS(20).Locked = False
        TXTFIELDS(20).SetFocus
        Else
        TXTFIELDS(20).Locked = False
        TXTFIELDS(20).SetFocus
        End If
        Exit Sub
    End If
    If Trim(TXTFIELDS(29).Text) = "" Then
        MsgBox "Variety code cannot be empty", vbInformation, head
        TXTFIELDS(29).SetFocus
        Exit Sub
    End If
'    If Trim(TXTFIELDS(32).Text) = "" Then
'        MsgBox "Color code cannot be empty", vbInformation, head
'        TXTFIELDS(32).SetFocus
'        Exit Sub
'    End If
'    If Trim(TXTFIELDS(30).Text) = "" Then
'        MsgBox "Count code cannot be empty", vbInformation, head
'        TXTFIELDS(30).SetFocus
'        Exit Sub
'    End If

'Web Cotton Bypassing for This validation not neeed for webcotton & dyed Cotton Entry
    If Trim(TXTFIELDS(0).Text) = "D" Or Trim(TXTFIELDS(0).Text) = "W" Then
    
        'z = TXTFIELDS(0).Text
        Else
        
        If Round(TXTFIELDS(23).Text) <> Round(Text5.Text) And Opt = "add" Then
            MsgBox "Lotwise gross Wt. does not tally with Balewise Gross Wt.", vbInformation, head
            SSTab1.Tab = 0
            TXTFIELDS(23).SetFocus
            Exit Sub
        End If
    
        If Round(TXTFIELDS(24).Text) <> Round(Text6.Text) And Opt = "add" Then
            MsgBox "Lotwise Tare Wt. does not tally with Balewise Tare Wt.", vbInformation, head
            TXTFIELDS(24).SetFocus
            Exit Sub
        End If
    End If
End If
    
    If Opt = "add" Then
       adoPrimaryRS("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
       adoPrimaryRS("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
       
       If MaskEdBox1(2).Text = "__/__/____" Then
            adoPrimaryRS("billdt") = Null
       Else
            adoPrimaryRS("billdt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
       End If
       
       If Combo1.Text = "Bale" Then
        adoPrimaryRS("bblflg") = "B"
       Else
        adoPrimaryRS("bblflg") = "R"
       End If
       


       adoPrimaryRS("lotno") = val(TXTFIELDS(2).Text)
       adoPrimaryRS("divcode") = Divcode
       adoPrimaryRS("LOTTYPE") = "A"
       adoPrimaryRS("lgroup") = Trim(Text8.Text)
       'Ravi
       adoPrimaryRS("opflg") = "Y"
       adoPrimaryRS("rejflg") = "N"
       
       
     '  On Error Resume Next
       adoPrimaryRS("TRASH_PER") = 0
       adoPrimaryRS("MICRONAIRE") = 0
       adoPrimaryRS("SHORT_FIBRE") = 0
       adoPrimaryRS("STAPLEN") = 0
       adoPrimaryRS("PLOTNO") = TXTFIELDS(33).Text
       adoPrimaryRS("lotyear") = Year(yfdate)
       adoPrimaryRS("RATE") = val(TXTFIELDS(30).Text)
       adoPrimaryRS("arrno") = 0
       If Trim(TXTFIELDS(0).Text = "D") Or Trim(TXTFIELDS(0).Text = "W") Then
           adoPrimaryRS("LOTTYPE") = "A"
        End If
        adoPrimaryRS("FAVAOURABLEWGT") = val(TXTFIELDS(25).Text)
        
       'On Error GoTo errde
       adoPrimaryRS.UpdateBatch adAffectAllChapters
       DB.Execute "update rm_lot set awt_flg='Y',INS_FLG ='Y',REJFLG='N' where lotno ='" & val(TXTFIELDS(2).Text) & "' AND LOTDT ='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' AND cATCD ='" & Trim(TXTFIELDS(0).Text) & "' AND DIVCODE ='" & Divcode & "'"
       
    If Not (TXTFIELDS(0).Text = "D" Or TXTFIELDS(0).Text = "W") Then
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            If grdDataGrid.Columns(2).Text = "" Then
                adoSecondaryRS.Delete
            End If
       adoSecondaryRS.MoveNext
       Loop
       
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                 adoSecondaryRS("Lotno") = TXTFIELDS(2).Text
                 adoSecondaryRS("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                 adoSecondaryRS("ARRDT") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                 adoSecondaryRS("catcd") = adoPrimaryRS("catcd")
                 adoSecondaryRS("BALENO") = val(grdDataGrid.Columns(2).Text)
                 adoSecondaryRS("GRWT") = val(grdDataGrid.Columns(3).Text)
                 adoSecondaryRS("TAREWT") = val(grdDataGrid.Columns(4).Text)
                 adoSecondaryRS("NETWT") = val(grdDataGrid.Columns(5).Text)
                 adoSecondaryRS("LOTTYPE") = "A"
                 adoSecondaryRS("divcode") = Divcode
                 adoSecondaryRS("STATUS") = "AC"
                 
                 adoSecondaryRS.MoveNext
                ' On Error GoTo errde
            Loop
            adoSecondaryRS.UpdateBatch adAffectAllChapters
            
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(grdDataGrid.Columns(5).Text) & " where arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grdDataGrid.Columns(2).Text) & " AND lotno =" & TXTFIELDS(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'"
                DB.Execute (strSQL)
                adoSecondaryRS.MoveNext
            Loop
            adoSecondaryRS.MoveFirst
            
            DB.Execute "UPDATE RM_BALE SET VARCODE='" & Trim(adoPrimaryRS("VARCODE")) & "' WHERE LOTNO=" & TXTFIELDS(2).Text & " AND LOTDT='" & Format(adoPrimaryRS("LOTDT"), "YYYY-MM-DD") & "'"
       End If
       
 'Web Cotton BybassIV
 If Not (adoSecondaryRS.EOF) Then
       adoSecondaryRS.MoveFirst
End If

'        Do While Not adoSecondaryRS.EOF
'            If val(grddatagrid.Columns(2).Text) > 0 Then
'             DB.Execute "insert into rm_bale (CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,divcode,STATUS,VARCODE) values ('" & Trim(adoprimaryrs("catcd")) & "'," & Trim(Txtfields(2).Text) & "," & val(grddatagrid.Columns(2).Text) & "," & val(grddatagrid.Columns(3).Text) & ", " & val(grddatagrid.Columns(4).Text) & "," & Trim(grddatagrid.Columns(5).Text) & ",'" & Trim(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) & "','A','" & Divcode & "','AC','" & adoprimaryrs("VARCODE") & "') "
'            Else
'                 adoSecondaryRS.Delete
'            End If
'             adoSecondaryRS.MoveNext
'        Loop
       
 
       DB.Execute ("update rm_arrival set lotno='" & TXTFIELDS(2).Text & "',catcd='" & TXTFIELDS(0).Text & "',lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "',lottype = 'T' where arrno='" & adoPrimaryRS("arrno") & "' and arrdate='" & Format(adoPrimaryRS("arrdt"), "yyyy-mm-dd") & "' and divcode='" & adoPrimaryRS("divcode") & "'")
       DB.CommitTrans
       MsgBox "Record(s) Saved!", vbInformation, head
       Opt = ""
       Call query_mode
       Call NEWFORM1(BUTTON, GSNO)
       'Call BUTTON_Click(10)
       Screen.MousePointer = 0
       Exit Sub
       Opt = ""
       'BUTTON(4).Enabled = True
      
      End If
    
   If Opt = "mod" Then
         adoPrimaryRS("arrdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
         adoPrimaryRS("lotdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
         adoPrimaryRS("opflg") = "Y"
         adoPrimaryRS("rejflg") = "N"
       If IsNull(MaskEdBox1(2).Text) = False Then
            adoPrimaryRS("billdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
       Else
            adoPrimaryRS("billdt") = Null
       End If
       
       If Combo1.Text = "Bale" Then
        adoPrimaryRS("bblflg") = "B"
       Else
        adoPrimaryRS("bblflg") = "R"
       End If
       
       'adoprimaryrs("lottype") = "T"
       'adoprimaryrs("lottype") = "A"
       
       adoPrimaryRS("divcode") = Divcode
       adoPrimaryRS("lotno") = TXTFIELDS(2).Text
       adoPrimaryRS("lgroup") = Trim(Text8.Text)
       'Ravi
       adoPrimaryRS("opflg") = "Y"
       adoPrimaryRS("FavaourableWgt") = val(TXTFIELDS(25).Text)
'       If oldarrno = Txtfields(1).Text And oldarrdt = MaskEdBox1(1).Text Then
'          adoprimaryrs.UpdateBatch adAffectAllChapters
'          ADOSECONDARYRS.MoveFirst
'
'      Do While Not ADOSECONDARYRS.EOF
'
'      DB.Execute "update rm_bale  set grwt=" & Trim(grddatagrid.Columns(3).Text) & ", tarewt=" & Trim(grddatagrid.Columns(4).Text) & ",netwt=" & Trim(grddatagrid.Columns(5).Text) & " where catcd='" & Trim(adoprimaryrs("catcd")) & "' and lotno=" & Trim(Txtfields(2).Text) & " and lotdt='" & Trim(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) & "' and lottype='" & ADOSECONDARYRS("lottype") & "' and divcode='" & Divcode & "' and baleno=" & Trim(grddatagrid.Columns(2).Text) & " "
'          ADOSECONDARYRS.MoveNext
'     Loop


     If oldarrno = TXTFIELDS(2).Text And oldarrdt = MaskEdBox1(1).Text Then
           adoPrimaryRS.UpdateBatch adAffectAllChapters
           adoSecondaryRS.MoveFirst
           A2 = a1
           Do While Not adoSecondaryRS.EOF And A2 > 0
              A2 = A2 - 1
              DB.Execute "update rm_bale set grwt=" & Trim(grdDataGrid.Columns(3).Text) & ", tarewt=" & Trim(grdDataGrid.Columns(4).Text) & ",netwt=" & Trim(grdDataGrid.Columns(5).Text) & " where catcd='" & Trim(adoPrimaryRS("catcd")) & "' and lotno=" & Trim(TXTFIELDS(2).Text) & " and lotdt='" & Trim(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) & "' and lottype='A' and divcode='" & Divcode & "' and baleno=" & Trim(grdDataGrid.Columns(2).Text) & " "
              adoSecondaryRS.MoveNext
           Loop
           If a1 < TXTFIELDS(22).Text Then
                Do While Not adoSecondaryRS.EOF
                    DB.Execute "insert into rm_bale (grwt,tarewt,netwt,baleno,lottype,lotdt,lotno,catcd,divcode) values(" & Trim(grdDataGrid.Columns(3).Text) & ", " & Trim(grdDataGrid.Columns(4).Text) & "," & Trim(grdDataGrid.Columns(5).Text) & "," & Trim(grdDataGrid.Columns(2).Text) & ",'A','" & Trim(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) & "'," & Trim(TXTFIELDS(2).Text) & ",'" & Trim(adoPrimaryRS("catcd")) & "','" & Divcode & "')"
                    adoSecondaryRS.MoveNext
                Loop
           Else
                 DB.Execute "delete from rm_bale where catcd='" & Trim(adoPrimaryRS("catcd")) & "' and lotno=" & Trim(TXTFIELDS(2).Text) & " and lotdt='" & Trim(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) & "' and divcode='" & Divcode & "' and baleno>" & TXTFIELDS(22).Text & " "
           End If
      End If
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(grdDataGrid.Columns(5).Text) & " where arrdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grdDataGrid.Columns(2).Text) & " AND lotno =" & TXTFIELDS(2).Text & " and lotdt = '" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'"
                DB.Execute (strSQL)
                adoSecondaryRS.MoveNext
            Loop
            adoSecondaryRS.MoveFirst
        DB.Execute "update rm_lot set awt_flg='Y' where lotno ='" & val(TXTFIELDS(2).Text) & "' "
        
       adoPrimaryRS.UpdateBatch adAffectAllChapters
       DB.CommitTrans
       MsgBox "Records Modified!", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
       'BUTTON(4).Enabled = True
  End If

      

'       Else
'            Set rs = New Recordset
'            rs.Open "select isnull(recqty,0) from rm_cont where contno='" & oldcontno & "' and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "'", db
'            db.Execute ("update rm_cont set recqty = " & rs(0) & " - " & oldqty & " where contno= " & oldcontno & " and contdt='" & Format(oldcontdt, "yyyy-mm-dd") & "' ")
'            Set rs1 = New Recordset
'            rs1.Open "select isnull(recqty,0) from rm_cont where contno='" & TXTFIELDS(1).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'", db
'            db.Execute ("update rm_cont set recqty =" & rs1(0) & " + " & Val(TXTFIELDS(15).Text) & "  where contno= " & TXTFIELDS(1).Text & " and contdt='" & Format(adoPrimaryRS("contdt"), "yyyy-mm-dd") & "' ")
'       BUTTON(4).Enabled = True
       'End If
      
'       adoprimaryrs.UpdateBatch adAffectAllChapters
'       DB.CommitTrans
'       MsgBox "Records Modified!", vbInformation, head
'       Screen.MousePointer = 0
'       Opt = ""
'       Call Query_mode
'       Call BUTTON_Click(10)
'  End If

 If Opt = "del" Then
    On Error GoTo del
    DB.Execute ("delete from rm_LOT where LOTno =" + "'" + Trim(TXTFIELDS(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and lottype = 'A' and opflg='Y'")
    DB.Execute ("delete from rm_BALE where LOTno =" + "'" + Trim(TXTFIELDS(2).Text) + "' AND LOTDT='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'and lottype = 'A'")
    DB.CommitTrans
    MsgBox "Record(s) Deleted!", vbInformation, head
    BUTTON(9).ToolTipText = "Save"
    Opt = ""
 End If
    
    'Return to query mode
    'Call Query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    Call BUTTON_Click(10)
    Exit Sub
GOPRIMERROR:
 If Err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
   GoTo gocancel
   End If
del:
If Err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    BUTTON(9).ToolTipText = "Save"
    GoTo gocancel
    Exit Sub
End If
errde:
        MsgBox "Lot Number and Date already entered, change the new Lot no", vbInformation, head
        SSTab1.Tab = 0
        TXTFIELDS(2).SetFocus
        Exit Sub


Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    desc.Caption = "Query"

    Screen.MousePointer = 11
    'CANCEL
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = ""
    Call query_mode
'    Text1.Text = ""
'    text2.Text = ""
'    Text3.Text = ""
'    Text8.Text = ""
    Frame7.Enabled = True
    Frame8.Enabled = True
    Screen.MousePointer = 0
    'calling cancl procedure from module
    If adoPrimaryRS.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If
   If adoPrimaryRS.RecordCount = 0 Then
       BUTTON(4).Enabled = False
    End If
    Call NEWFORM1(BUTTON, GSNO)
    Frame7.Visible = True
    Frame3.Visible = False
    SSTab1.Visible = True
    'BUTTON(4).Enabled = True
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    
    Unload Me
  
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form OpenStockEntry", vbInformation, head
End Sub
Public Sub LotstockRepHeader(pg1 As Integer, co As Integer, s As String, a As String)
          Print #z, Chr(18)
          Print #z, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z,
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(4)
          Print #z, Space(3) & Chr(27) + "E" + "Opening Stock Entry" + Chr(27) + "F" + " As On " + Format(Trim(pdate), "DD/MM/YY"); Space(10); "Dt:" + CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ") + Chr(15)
        'If u = 0 Then
          Print #z, Space(5) & String(120, "-")
          Print #z, Space(5) & "                                                          Party               <----Opening Stock---->           "
          Print #z, Space(5) & "Category          Lot No  Lot Date  Variety              Lot No   Rate/Kg     Qty   Unit          Kgs           Value"
          Print #z, Space(5) & String(120, "-")
        'ElseIf u = 1 Then
         ' Print #z, Space(5) & String(153, "-")
         ' Print #z, Space(5) & "                      Lot                               Party             <----Closing Stock---->      Rate/                  "
         ' Print #z, Space(5) & "Category  Lot No     Date      Variety                 Lot No Rate/Kg     Qty  Unit           Kgs      Candy             Value Mod_User Name Mod_Date  "
         ' Print #z, Space(5) & String(153, "-")
        'End If
          co = co + 9
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Screen.MousePointer = 11
If Opt = "mod" Then
    Call ENABLCONTLS
'    Txtfields(22).Locked = True
'    Txtfields(23).Locked = True
'    Txtfields(24).Locked = True
'    Txtfields(25).Locked = True
     Frame1.Visible = True
     grdDataGrid.Enabled = True
Else
    Call disablcontls
End If
'To extract the transaction  code
'a = DataGrid1.Columns(1).Text
f = DataGrid1.Columns(1).Text
oldarrdt = Format(f, "yyyy-mm-dd")
'To extract the document number
'b = DataGrid1.Columns(2).Text
G = val(DataGrid1.Columns(0).Text)
oldarrno = G
    
Call delmodproc(CStr(f), CStr(G))
BUTTON(9).Enabled = True
BUTTON(10).Enabled = True


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form OpenStockEntry", vbInformation, head
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Frame9.Visible = False
Frame7.Visible = True
BUTTON_Click (10)

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()    'activex cancel
On Error GoTo Command3_Click_Error

Frame6.Visible = False
SSTab1.Visible = True

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()    'activex okay
On Error GoTo Command4_Click_Error

desc.Caption = "Query"
Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT,colorcode FROM RM_ARRIVAL WHERE arrno= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  order by arrno", DB, adOpenStatic, adLockBatchOptimistic
        
'Bind the text boxes,check boxes and option buttons  to the data source
If adoPrimaryRS.RecordCount = 0 Then
   'MsgBox "No Such Arrival No. Found", vbInformation, head
   Command4.Enabled = False
   txtqry.Text = ""
Else
   Call bindcontls
   'calling query procedure from module
   Call query(BUTTON)
   BUTTON(4).Enabled = False
   BUTTON(5).Enabled = False
   BUTTON(6).Enabled = False
   BUTTON(7).Enabled = False
   BUTTON(8).Enabled = False
   Frame6.Visible = False
'  Frame9.Visible = True
'  Frame3.Visible = True
   SSTab1.Visible = True
End If


Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form OpenStockEntry", vbInformation, head
End Sub

Private Sub delmodok_Click()
'On Error Resume Next
On Error GoTo delmodok_Click_Error

Set adoPrimaryRS = New Recordset
'adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE isswt is null and issbal is null and  divcode='" & divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockOptimistic
'adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE isswt is null and issbal is null and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' ", DB, adOpenStatic, adLockOptimistic
adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,colorcode,PLOTNO,RATE,TRASH_PER,lotyear,FAVAOURABLEWGT FROM RM_LOT WHERE (isswt is null or isswt=0) and (issbal is null or issbal=0)and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='Y' and divcode='" & Divcode & "' Order by lotdt, lotno", DB, adOpenStatic, adLockBatchOptimistic
If adoPrimaryRS.RecordCount <> 0 Then
   Set adoSecondaryRS = New Recordset
   'ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT FROM RM_BALE WHERE isqty is null ", db, adOpenStatic, adLockBatchOptimistic
   'ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,divcode  FROM RM_BALE WHERE isqty is null and lottype = 'T' ", DB, adOpenStatic, adLockBatchOptimistic
   adoSecondaryRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,divcode,ARRDT  FROM RM_BALE ", DB, adOpenStatic, adLockBatchOptimistic
Else
   MsgBox "All Lots are Used.Delettion/Modification Not allowed!", vbInformation, head
   Call query_mode
   Call cancl(BUTTON)
   desc.Caption = "Query"
   Exit Sub
End If
Set Rs = New Recordset
'rs.Open "select lotno ""lotno"",lotdt""Date"",arrno""Arr.No."",arrdt ""Date"" from rm_lot where isswt is null and issbal is null and divcode='" & divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
'rs.Open "select lotno ""lotno"",lotdt""Date"",arrno""Rec.No."",arrdt ""Date"" from rm_lot where isswt is null and issbal is null and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T'", DB, adOpenStatic, adLockBatchOptimistic
Rs.Open "select lotno ""Lot No."",lotdt""Date"",arrno""Rec.No."",arrdt ""Date"",catcd""Category Code"",lottype""Lot Type"" from rm_lot where (isswt is null or isswt=0)and (issbal is null or issbal=0) and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='Y' Order by lotdt, lotno", DB, adOpenStatic, adLockBatchOptimistic
Frame9.Visible = True
Frame9.ZOrder
Set DataGrid1.DataSource = Rs
DataGrid1.Visible = True
'    DataGrid1.Columns(0).Width = 734.7402
'    DataGrid1.Columns(1).Width = 2819.906
'    DataGrid1.Columns(2).Width = 1739.906
'    DataGrid1.Columns(3).Width = 2489.953
DataGrid1.Columns(0).Width = 700
DataGrid1.Columns(1).Width = 1200
DataGrid1.Columns(2).Width = 1200
DataGrid1.Columns(3).Width = 1200
DataGrid1.Columns(4).Width = 1200
DataGrid1.Columns(5).Width = 1200
DB.BeginTrans
Frame2.Visible = False
Exit Sub


Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form OpenStockEntry", vbInformation, head
End Sub

Private Sub Command5_Click()    'activex cancel
On Error GoTo Command5_Click_Error

If Label15.Caption = "Supplier List" Or Label15.Caption = "Broker List" Or Label15.Caption = "Area List" Or Label15.Caption = "Variety List" Or Label15.Caption = "Count List" Or Label15.Caption = "Godown List" Then
   Frame3.Visible = False
   FLG = "Y"
   If Label15.Caption = "Supplier List" Then
      SSTab1.Tab = 0
      TXTFIELDS(26).Text = ""
      TXTFIELDS(26).SetFocus
   End If
   If Label15.Caption = "Godown List" Then
      SSTab1.Tab = 0
      TXTFIELDS(20).Text = ""
      TXTFIELDS(20).SetFocus
   End If
   If Label15.Caption = "Area List" Then
      SSTab1.Tab = 0
      TXTFIELDS(28).Text = ""
      TXTFIELDS(28).SetFocus
   End If
   If Label15.Caption = "Variety List" Then
      SSTab1.Tab = 0
      TXTFIELDS(29).Text = ""
      TXTFIELDS(29).SetFocus
   End If
   If Label15.Caption = "Color List" Then
      SSTab1.Tab = 0
      TXTFIELDS(32).Text = ""
      TXTFIELDS(32).SetFocus
   End If
    
   If Label15.Caption = "Broker List" Then
      SSTab1.Tab = 0
      TXTFIELDS(27).Text = ""
      TXTFIELDS(28).SetFocus
   End If
   Exit Sub
End If
Frame3.Visible = False
Frame9.Visible = False
DataGrid1.Visible = False
Call BUTTON_Click(10)


Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form OpenStockEntry", vbInformation, head
End Sub

Private Sub Command6_Click()    'activex okay
On Error GoTo Command6_Click_Error

Select Case KslList1.listfield1
Case "cast(arrno as varchar)"
    'TXTFIELDS(1).Text = ksllist1.Code
    MaskEdBox1(0).Text = Format(KslList1.Description, "dd/mm/yyyy")
    Set Rs = New Recordset
    'rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & TXTFIELDS(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    Rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where  arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs(0) = 0 Then
        Dim arrrs As Recordset
        Set arrrs = New Recordset
        'arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,quantity,grosswt,tarewt,NETWT,isnull(colorcode,'') as colorcode from rm_arrival where arrno=" & TXTFIELDS(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,quantity,grosswt,tarewt,NETWT,isnull(colorcode,'') as colorcode from rm_arrival where  arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        'arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,passbl,round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),isnull(colorcode,'') as colorcode from rm_arrival where arrno=" & TXTFIELDS(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,passbl,round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),isnull(colorcode,'') as colorcode from rm_arrival where arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        TXTFIELDS(26).Text = arrrs(0)
        TXTFIELDS(27).Text = arrrs(1)
        TXTFIELDS(28).Text = arrrs(2)
        TXTFIELDS(29).Text = arrrs(3)
        TXTFIELDS(30).Text = arrrs(4)
        TXTFIELDS(32).Text = arrrs("colorcode")
        If arrrs(5) = "B" Then
            Option1.value = True
        ElseIf arrrs(5) = "R" Then
            Option2.value = True
        End If
        TXTFIELDS(22).Text = arrrs(6)
        TXTFIELDS(23).Text = arrrs(7)
        TXTFIELDS(24).Text = arrrs(8)
        TXTFIELDS(25).Text = arrrs(9)
        For I = 26 To 30
            TXTFIELDS(I).Locked = True
        Next
        oldgrs = TXTFIELDS(23).Text
        oldtare = TXTFIELDS(24).Text
        qty = TXTFIELDS(22).Text
        Option1.Enabled = False
        Option2.Enabled = False
        TXTFIELDS(22).SetFocus
    End If
Case "catcd"
SSTab1.Visible = True
    TXTFIELDS(0).Text = KslList1.Code
    TXTFIELDS(2).SetFocus
    MaskEdBox1(0).Text = pdate
Case "cast(ARRNO as varchar)"
    'TXTFIELDS(1).Text = ksllist1.Code
    MaskEdBox1(0).Text = Format(KslList1.Description, "dd/mm/yyyy")
    Set Rs = New Recordset
    'rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & TXTFIELDS(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    Rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs(0) = 0 Then
        'Dim arrrs As Recordset
        Set arrrs = New Recordset
        'arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,quantity,grosswt,tarewt,NETWT,isnull(colorcode,'') as colorcode from rm_arrival where arrno=" & TXTFIELDS(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,quantity,grosswt,tarewt,NETWT,isnull(colorcode,'') as colorcode from rm_arrival where arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        'arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,passbl,grosswt/quantity*passbl,tarewt/quantity*passbl,(grosswt/quantity*passbl)-(tarewt/quantity*passbl),isnull(colorcode,'') as colorcode from rm_arrival where arrno=" & TXTFIELDS(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,passbl,grosswt/quantity*passbl,tarewt/quantity*passbl,(grosswt/quantity*passbl)-(tarewt/quantity*passbl),isnull(colorcode,'') as colorcode from rm_arrival where arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        TXTFIELDS(26).Text = arrrs(0)
        TXTFIELDS(27).Text = arrrs(1)
        TXTFIELDS(28).Text = arrrs(2)
        'Txtvar.Text = arrrs(3)
        'Txtcnt.Text = arrrs(4)
        TXTFIELDS(29).Text = arrrs(3)
        TXTFIELDS(32).Text = arrrs("colorcode")
        TXTFIELDS(30).Text = arrrs(4)
        If arrrs(5) = "B" Then
            Option1.value = True
        ElseIf arrrs(5) = "R" Then
            Option2.value = True
        End If
        TXTFIELDS(22).Text = arrrs(6)
        TXTFIELDS(23).Text = arrrs(7)
        TXTFIELDS(24).Text = arrrs(8)
        TXTFIELDS(25).Text = arrrs(9)
        For I = 26 To 30
            TXTFIELDS(I).Locked = True
        Next
'        Txtvar.Locked = True
'        Txtcnt.Locked = True
        Option1.Enabled = False
        Option2.Enabled = False
        TXTFIELDS(22).SetFocus
    End If
'-------------------------------------------------------*******


Case "slcode"
    FLG = "Y"
    SSTab1.Visible = True
     TXTFIELDS(26).Text = KslList1.Code
     
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(27).SetFocus
Case "SLCODE"
     If KslList1.Code = TXTFIELDS(26).Text Then
        MsgBox "Broker Code shouldn't be same as Supplier Code", vbInformation, head
        KslList1.SetFocus
        Exit Sub
     Else
     SSTab1.Visible = True
        FLG = "Y"
        TXTFIELDS(27).Text = KslList1.Code
        Text2.Text = Trim(KslList1.Description)
        Frame3.Visible = False
        Frame1.Visible = True
        Frame2.Visible = True
        TXTFIELDS(28).SetFocus
   End If
Case "areacode"
     SSTab1.Visible = True
     TXTFIELDS(28).Text = KslList1.Code
     FLG = "Y"
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(29).SetFocus
     
Case "varcode"
     SSTab1.Visible = True
     TXTFIELDS(29).Text = KslList1.Code
     TXTFIELDS(0).Text = KslList1.Description
     FLG = "Y"
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(22).SetFocus
Case "colorcode"
     SSTab1.Visible = True
     TXTFIELDS(32).Text = KslList1.Code
     FLG = "Y"
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(22).SetFocus
     
Case "cntcd"
    SSTab1.Visible = True
     TXTFIELDS(30).Text = KslList1.Code
     FLG = "Y"
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(32).SetFocus
Case "gcode"
     SSTab1.Visible = True
     TXTFIELDS(20).Text = KslList1.Code
     Frame3.Visible = False
     Frame1.Visible = True
     Frame2.Visible = True
     TXTFIELDS(19).SetFocus
    
'-------------------------------------------------------
End Select
Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form OpenStockEntry", vbInformation, head
End Sub

Private Sub DataGrid1_DblClick()
On Error GoTo DataGrid1_DblClick_Error

Call Command1_Click

Exit Sub
DataGrid1_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_DblClick of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

MaskEdBox1(1).Text = DTPicker2.value
''DTPicker2.Visible = False
MaskEdBox1(1).Enabled = True

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CloseUp of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_LostFocus()
On Error GoTo DTPicker2_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    If IsDate(MaskEdBox1(0).Text) = True And CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
        'MsgBox "Receipt date should be greater than Lot Date", vbInformation, head
        MsgBox "Lot date should be before or equal to Entry Date", vbInformation, head
        MaskEdBox1(1).Text = MaskEdBox1(0).Text
        MaskEdBox1(1).SetFocus
        Exit Sub
    Else
        TXTFIELDS(33).SetFocus
    End If
End If

Exit Sub
DTPicker2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_LostFocus of Form OpenStockEntry", vbInformation, head
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
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
    If KeyCode = 13 Then SendKeys "{TAB}"
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
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
Call openconnection
Opt = ""
DATLAB.Caption = pdate
SSTab1.Visible = True
Call query_mode
StatusBar1.Panels(2).Text = ""
MaskEdBox1(0).Text = pdate
'MaskEdBox1(1).Text = pdate
Combo1.Text = "Bale"
'DTPicker2.MaxDate = yldate
'DTPicker2.MinDate = yfdate
Call previousDate
Call NEWFORM1(BUTTON, GSNO)
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form OpenStockEntry", vbInformation, head

End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

Opt = ""
Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  'statusbar1.panels(2).text  = "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
On Error Resume Next
intervalMinutes = -1
If Opt = "mod" Or Opt = "" Then
    Set mrs = New Recordset
    mrs.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("supcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If mrs.RecordCount <> 0 Then
        Text1.Text = mrs(0)
    End If
    Set mrs1 = New Recordset
    mrs1.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("brkcd") & "'", DB, adOpenStatic
    If mrs1.RecordCount <> 0 Then
        Text2.Text = mrs1(0)
    Else
        Text2.Text = " "
    End If
    Set mrs2 = New Recordset
    mrs2.Open "select areaname from rm_area where areacode='" & adoPrimaryRS("areacd") & "'", DB, adOpenStatic
    If mrs2.RecordCount <> 0 Then
        Text3.Text = mrs2(0)
    End If
    Set mrs2 = New Recordset
    mrs2.Open "select varname from rm_var where varcode='" & adoPrimaryRS("varcode") & "'", DB, adOpenStatic
    If mrs2.RecordCount <> 0 Then
        TXTFIELDS(21).Text = mrs2(0)
    End If
End If
If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) = True Then
If Opt = "" Or Opt = "query" Then
 StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
If adoPrimaryRS("bblflg") = "B" Then
   Combo1.Text = "Bale"
ElseIf adoPrimaryRS("bblflg") = "R" Then
    Combo1.Text = "Borah"
Else
Combo1.Text = " "
End If

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
Set MaskEdBox1(0).DataSource = adoPrimaryRS
Set MaskEdBox1(1).DataSource = adoPrimaryRS
Set MaskEdBox1(2).DataSource = adoPrimaryRS
'DTPicker2.MaxDate = pdate
''DTPicker2.MinDate = yfdate
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
'Option1.Enabled = False
'Option2.Enabled = False
End Sub

Public Sub ENABLCONTLS()
Dim I As Integer
For I = 0 To 20
    'TXTFIELDS(I).Locked = False
Next
For I = 22 To 30
    TXTFIELDS(I).Locked = False
Next
Combo1.Locked = False
MaskEdBox1(0).Enabled = True
MaskEdBox1(2).Enabled = True
DTPicker2.Enabled = True
grdDataGrid.Enabled = True
End Sub

Public Sub disablcontls()
Dim I As Integer
For I = 0 To 20
'TXTFIELDS(I).Locked = True
Next
For I = 22 To 30
TXTFIELDS(I).Locked = True
Next

MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
'Option1.Enabled = False
'Option2.Enabled = False
Combo1.Locked = True
'DTPicker2.Enabled = False
grdDataGrid.AllowUpdate = False
End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
''On Error Resume Next
On Error GoTo grddatagrid_AfterColEdit_Error

If (Opt = "add" Or Opt = "mod") And grdDataGrid.Col = 4 Then
If val(grdDataGrid.Columns(4).Text) >= val(grdDataGrid.Columns(3).Text) Then
        MsgBox "Tare Weight Should not be Greater than Gross weight", vbInformation, head
        grdDataGrid.Columns(4).Text = ""
        grdDataGrid.Col = 3
        grdDataGrid.SetFocus
        Exit Sub
    End If
End If
'Ravi
''    Text4 = grdDataGrid.Columns(2).Text
''    Text5 = Val(Text5) - GG + grdDataGrid.Columns(3)
''    Text6 = Val(Text6) - GT + IIf(grdDataGrid.Columns(4).Text = "", 0, (grdDataGrid.Columns(4).Text))
'    grdDataGrid.Columns(5).Text = IIf(grdDataGrid.Columns(3).Text = "", 0, grdDataGrid.Columns(3).Text) - IIf(grdDataGrid.Columns(4).Text = "", 0, grdDataGrid.Columns(4).Text)
''    Text7 = Val(Text5) - Val(Text6)
'a = 0
'b = 0
'c = 0
'ADOSECONDARYRS.MoveFirst
'Do While Not ADOSECONDARYRS.EOF
'a = a + ADOSECONDARYRS("grwt")
'b = b + ADOSECONDARYRS("TareWt")
'c = c + ADOSECONDARYRS("NetWt")
'ADOSECONDARYRS.MoveNext
'Loop
'Text5 = a
'Text6 = b
'Text7 = c
'
'Ravi
grdDataGrid.Columns(5).Text = IIf(grdDataGrid.Columns(3).Text = "", 0, grdDataGrid.Columns(3).Text) - IIf(grdDataGrid.Columns(4).Text = "", 0, grdDataGrid.Columns(4).Text)
If grdDataGrid.Col = 3 Then
    a = 0
    B = 0
    c = 0
    row_save = adoSecondaryRS.AbsolutePosition
    adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        a = a + adoSecondaryRS("grwt")
        B = B + adoSecondaryRS("TareWt")
        c = c + adoSecondaryRS("NetWt")
        adoSecondaryRS.MoveNext
    Loop
        Text5 = a
        Text6 = B
        Text7 = c
        adoSecondaryRS.MoveFirst
        For I = 1 To row_save
            adoSecondaryRS.MoveNext
        Next
        SendKeys ("{left}")
        Exit Sub
End If

If grdDataGrid.Col = 4 Then
    a = 0
    B = 0
    c = 0
    row_save = adoSecondaryRS.AbsolutePosition
    adoSecondaryRS.MoveFirst
    Do While Not adoSecondaryRS.EOF
        a = a + adoSecondaryRS("grwt")
        B = B + adoSecondaryRS("TareWt")
        c = c + adoSecondaryRS("NetWt")
        adoSecondaryRS.MoveNext
    Loop
        Text5 = a
        Text6 = B
        Text7 = c
        adoSecondaryRS.MoveFirst
        For I = 1 To row_save
            adoSecondaryRS.MoveNext
        Next
        'SendKeys ("{left}")
        SendKeys ("{left}")
End If


''************************************************Ravi*************************
'If Opt = "add" Then
'Dim irow As Integer
'    If ColIndex = 2 Then
'            ADOSECONDARYRS.MoveFirst
'        If grddatagrid.Columns(2).Text = Empty Or grddatagrid.Columns(2).Text = "" Then
'            MsgBox "Bale No. cannot be empty", , head + "Insert warning"
'        Else
'            grddatagrid.Columns(2).Text = UCase(grddatagrid.Columns(2).Text)
'            Set rs = New Recordset
'            rs.Open "select 'X'  from rm_lot where cntcode ='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'            If Not rs.BOF Then
'                MsgBox "Count should not repeat", vbCritical + vbOKOnly, head + "Insertion Message"
'                adoprimaryrs(0).Value = ""
'                St = "A"
'                Exit Sub
'            End If
'            irow = ADOSECONDARYRS.AbsolutePosition
'            Code = Val(ADOSECONDARYRS(2).Value)
'            Opt = "Y"
'            ADOSECONDARYRS.MoveFirst
'            Do While Not ADOSECONDARYRS.EOF
'                If irow <> ADOSECONDARYRS.AbsolutePosition Then
'                    If Code = Val(ADOSECONDARYRS(2).Value) Then
'                        MsgBox "Bale No. should not repeat", vbCritical + vbOKOnly, head + "Insertion Message"
'                        ADOSECONDARYRS.AbsolutePosition = irow
'                        ADOSECONDARYRS(2).Value = ""
'                        grddatagrid.Col = 0
'                        grddatagrid.SetFocus
'                        St = "A"
'                        Opt = "add"
'                        Exit Sub
'                    End If
'                End If
'                ADOSECONDARYRS.MoveNext
'            Loop
'            ADOSECONDARYRS.AbsolutePosition = irow
'            grddatagrid.Col = 0
'            grddatagrid.SetFocus
'            Opt = "add"
'        End If
'    End If
'
'End If

        




'************************************************Ravi*************************






Exit Sub
grddatagrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form OpenStockEntry", vbInformation, head

End Sub

Private Sub grdDataGrid_BeforeColEdit(ByVal ColIndex As Integer, ByVal KeyAscii As Integer, Cancel As Integer)
On Error GoTo grdDataGrid_BeforeColEdit_Error

    GG = IIf(IsNull(adoSecondaryRS(3)), 0, adoSecondaryRS(3))
    GT = IIf(IsNull(adoSecondaryRS(4)), 0, adoSecondaryRS(4))

Exit Sub
grdDataGrid_BeforeColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_BeforeColEdit of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

If Opt = "add" Then
Response = 0
End If

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
Dim v As Integer
On Error GoTo GrdDatagrid_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "query" Or Opt = "del" Then
    KeyAscii = 0
End If

If Opt = "add" And grdDataGrid.Col = 7 And Not (KeyAscii = 65 Or KeyAscii = 97 Or KeyAscii = 116 Or KeyAscii = 84) Then
    KeyAscii = 0
End If

If grdDataGrid.Col = 3 Then
    ToNum1 grdDataGrid, 7, KeyAscii, 0
ElseIf grdDataGrid.Col = 4 Then
    ToNum1 grdDataGrid, 5, KeyAscii, 0
End If

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub grdDataGrid_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'grddatagrid.Columns(2).Text = grddatagrid.ApproxCount
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error

If grdDataGrid.Col = 5 And Not adoSecondaryRS.RecordCount = val(TXTFIELDS(22)) And adoSecondaryRS.AbsolutePosition = adoSecondaryRS.RecordCount Then
   ' col2t = grddatagrid.Columns(4).Text
    adoSecondaryRS.AddNew
    grdDataGrid.Columns(2).Text = grdDataGrid.ApproxCount
   ' grddatagrid.Columns(4).Text = col2t
    grdDataGrid.Col = 3
    grdDataGrid.SetFocus
ElseIf adoSecondaryRS.RecordCount = val(TXTFIELDS(22)) And grdDataGrid.Col = 5 And adoSecondaryRS.AbsolutePosition = adoSecondaryRS.RecordCount Then
    If val(Text5) <> val(TXTFIELDS(23)) And val(Text6) <> val(TXTFIELDS(24)) And val(Text6) <> val(TXTFIELDS(25)) Then
        MsgBox "Gross Weight(Total),Tare Weight(total),Nett Weight(total) does not Tally", vbInformation, head
        'grddatagrid.AllowAddNew = False
        grdDataGrid.AllowUpdate = True
        grdDataGrid.AllowDelete = True
        grdDataGrid.Row = 1
        grdDataGrid.SetFocus
        TXTFIELDS(24).Locked = False
        TXTFIELDS(22).Locked = False
        TXTFIELDS(23).Locked = False
    ElseIf val(Text5) <> val(TXTFIELDS(23)) Then
        MsgBox "Gross Weight(Total) does not Tally", vbInformation, head
       ' grddatagrid.AllowAddNew = False
        grdDataGrid.AllowUpdate = True
        grdDataGrid.AllowDelete = True
        grdDataGrid.Row = 1
        grdDataGrid.SetFocus
        TXTFIELDS(24).Locked = False
        TXTFIELDS(22).Locked = False
        TXTFIELDS(23).Locked = False
    ElseIf val(Text6) <> val(TXTFIELDS(24)) Then
        MsgBox "Tare Weight(Total) does not Tally", vbInformation, head
        grdDataGrid.AllowAddNew = False
        grdDataGrid.AllowUpdate = True
        grdDataGrid.AllowDelete = True
        grdDataGrid.Row = 1
        grdDataGrid.SetFocus
        TXTFIELDS(24).Locked = False
        TXTFIELDS(22).Locked = False
        TXTFIELDS(23).Locked = False
    ElseIf val(Text7) <> val(TXTFIELDS(25)) Then
        MsgBox "Nett Weight(Total) does not Tally", vbInformation, head
       ' grddatagrid.AllowAddNew = False
        grdDataGrid.AllowUpdate = True
        grdDataGrid.AllowDelete = True
        grdDataGrid.Row = 1
        grdDataGrid.SetFocus
        TXTFIELDS(24).Locked = False
        TXTFIELDS(22).Locked = False
        TXTFIELDS(23).Locked = False
    End If
End If


Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form OpenStockEntry", vbInformation, head

End Sub

Private Sub Label27_Click()

End Sub

Private Sub MaskEdBox1_Change(Index As Integer)
'If Opt = "add" Or Opt = "mod" Then
'If MaskEdBox1(0).Text <> "__/__/____" And MaskEdBox1(1).Text <> "__/__/____" And Not (Opt = "" Or Opt = " " Or Opt = "query") Then
'If IsDate(MaskEdBox1(0).Text) = True And CDate(MaskEdBox1(1).Text) < CDate(MaskEdBox1(0).Text) Then
'    MsgBox "Receipt date should be greater than Arrival Date", vbInformation, head
'    MaskEdBox1(1).Text = MaskEdBox1(0).Text
'End If
'End If
'End If
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1(Index).BackColor = &HC0FFC0
End If

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

On Error Resume Next
If Opt = "add" Or Opt = "mod" Then
MaskEdBox1(Index).BackColor = &HFFFFFF
'If IsDate(MaskEdBox1(0).Text) = False Then
'MsgBox "Enter a Valid Date", vbInformation, head
'MaskEdBox1(0).Text = "__/__/____"
'MaskEdBox1(0).SetFocus
'End If
If MaskEdBox1(0).Text <> "__/__/____" Then
If Not (MaskEdBox1(0).Text = pdate) Then
'MsgBox "Receipt date should fall within the processing date", vbInformation, head
'MaskEdBox1(0).Text = "__/__/____"
'MaskEdBox1(0).SetFocus
    MsgBox "Entry date should equal to the processing date", vbInformation, head
    MaskEdBox1(0).Text = pdate
    If IsDate(MaskEdBox1(0).Text) = False Then
        MsgBox "Not a valid date", vbInformation, head
        MaskEdBox1(0).Text = pdate
    End If
Exit Sub
End If
End If
If MaskEdBox1(1).Text = "__/__/____" Then
    MaskEdBox1(1).Text = MaskEdBox1(0).Text
End If
If MaskEdBox1(0).Text = "__/__/____" Then
    MaskEdBox1(0).Text = pdate
End If
If IsDate(MaskEdBox1(1).Text) = False Then
        MsgBox "Not a valid date", vbInformation, head
        MaskEdBox1(1).Text = MaskEdBox1(0).Text
    End If
If MaskEdBox1(0).Text <> "__/__/____" And MaskEdBox1(1).Text <> "__/__/____" And Not (Opt = "" Or Opt = " " Or Opt = "query") Then
If IsDate(MaskEdBox1(0).Text) = True And CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
    'MsgBox "Receipt date should be greater than Lot Date", vbInformation, head
    MsgBox "Lot date should be before or equal to Entry Date", vbInformation, head
    MaskEdBox1(1).Text = MaskEdBox1(0).Text
    MaskEdBox1(1).SetFocus
    Exit Sub
End If
End If
End If
Select Case Index
Case 0
'txtFields(33).SetFocus
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        'HIDE FOR INVOICE
        'MsgBox ("Invalid date"), vbInformation, head
        MaskEdBox1(2).Text = pdate
        MaskEdBox1(2).SetFocus
        ElseIf Not (CDate(MaskEdBox1(2).Text) >= yfdate And CDate(MaskEdBox1(2).Text) <= pdate) Then
   ' ElseIf CDate(MaskEdBox1(2).Text) > pdate Then
        MsgBox "Bill Date should be fall within the processing Date", vbInformation, head
        MaskEdBox1(2).Text = pdate
    End If
End If
End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text8_LostFocus()
On Error GoTo Text8_LostFocus_Error

If Opt = "add" Then
'     Frame1.Visible = True
'     Frame2.Visible = True
     'txtFields(19).SetFocus
End If

Exit Sub
Text8_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text8_LostFocus of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error

If Opt = "add" Or Opt = "" Or Opt = " " Or Opt = "del" Then
Select Case Index
Case 22
       ' txtFields(22).Text = wei
Case 24
    If val(TXTFIELDS(23).Text) > val(TXTFIELDS(24).Text) Then
        'TXTFIELDS(25).Text = Val(TXTFIELDS(23)) - Val(TXTFIELDS(24))
    Else
        If TXTFIELDS(23).Text <> "" Then
        MsgBox "Tare weight should be less than Gross Weight", vbInformation, head
        TXTFIELDS(24).Text = ""
        TXTFIELDS(24).SetFocus
        End If
        Exit Sub
    End If

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
Case 29
   Set Rs = New Recordset
   Rs.Open "select varname from rm_var where varcode = '" & TXTFIELDS(29).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     TXTFIELDS(21).Text = Rs(0)
   End If
   Rs.Close
 
Case 32
   Set Rs = New Recordset
   Rs.Open "select colorname from rm_color where colorcode = '" & TXTFIELDS(32).Text & "' ", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     TXTFIELDS(31).Text = Rs(0)
   End If
   Rs.Close
End Select
End If

If Opt = "" Or Opt = " " Then
Select Case Index
Case 23
TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
Case 24
TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
Case 25
TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
Case 18
TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.00")
Case 5
TXTFIELDS(5).Text = Format(TXTFIELDS(5).Text, "#0.000")
End Select
End If


Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form OpenStockEntry", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
TXTFIELDS(Index).BackColor = &HC0FFC0
Select Case Index
Case 0
If Opt = "add" Then
''      Label15.Caption = "Category Details"
''      ksllist1.conn = connectstring
''      ksllist1.table = "rm_CAT"
''      ksllist1.listfield1 = "catcd"
''      ksllist1.listfield2 = "catname"
''      SSTab1.Visible = False
''
''      Frame3.Visible = True
''      Frame3.ZOrder
    'txtFields(22).SetFocus
  End If
End Select
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index

     Case 0
          StatusBar1.Panels(2).Text = "Enter Category Code"
     Case 2
          StatusBar1.Panels(2).Text = "Enter Lot Number"
     Case 21
          'txtFields(22).GotFocus
     Case 26
          StatusBar1.Panels(2).Text = "Enter Party Code"
     Case 27
          StatusBar1.Panels(2).Text = "Enter Broker Code"
     Case 28
          StatusBar1.Panels(2).Text = "Enter Area Code"
     Case 29
          StatusBar1.Panels(2).Text = "Enter Variety"
     Case 22
          StatusBar1.Panels(2).Text = "Enter maximum of 5 Integers"
     Case 23
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimal Places"
     Case 25
     Case 1
          StatusBar1.Panels(2).Text = "Enter Maxium of 10 Integers"
     Case 30
          StatusBar1.Panels(2).Text = "Enter Count Type"
     Case 24
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers with 3 Decimal Places"
     Case 3
          StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
     Case 5
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimal Places"
     Case 8
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 11
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 14
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 17
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimal Places"
     Case 20
          'StatusBar1.Panels(2).Text = "Enter Godown"
     Case 6
          StatusBar1.Panels(2).Text = "Enter Maximum of 9 Integers with 2 Decimal Places"
     Case 9
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimal Places"
     Case 12
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 15
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
     Case 18
          StatusBar1.Panels(2).Text = "Enter Maximum of 9 Integers with 2 Decimal Places"
     Case 21
          'StatusBar1.Panels(2).Text = "Enter Group"
     Case 4
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 3 Decimal Places"
     Case 7
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimal Places"
End Select
End If


Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form OpenStockEntry", vbInformation, head
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 1
If Not (KeyAscii = 48 Or KeyAscii = 49 Or KeyAscii = 50 Or KeyAscii = 51 Or KeyAscii = 52 Or KeyAscii = 53 Or KeyAscii = 54 Or KeyAscii = 55 Or KeyAscii = 56 Or KeyAscii = 57 Or KeyAscii = 8) Then
KeyAscii = 0
End If
Case 2
    tonum TXTFIELDS(Index), 4, KeyAscii
Case 4
    If TXTFIELDS(4).Locked = True Then TXTFIELDS(4).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 TXTFIELDS(Index), 6, KeyAscii
Case 22
    'Txtfields(22).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 TXTFIELDS(Index), 9, KeyAscii

Case 23
    'Txtfields(23).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
'    tonum1 Txtfields(Index), 7, KeyAscii
    ToNumberAssign TXTFIELDS(Index), 7, KeyAscii, 7, 3
Case 24
    'TXTFIELDS(24).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    'tonum1 txtFields(Index), 5, KeyAscii
    ToNumberAssign TXTFIELDS(Index), 7, KeyAscii, 7, 3
Case 5
    TXTFIELDS(5).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    'tonum1 txtFields(Index), 7, KeyAscii
    ToNumberAssign TXTFIELDS(Index), 7, KeyAscii, 7, 3
Case 6
    TXTFIELDS(6).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 9, KeyAscii
Case 7
    TXTFIELDS(7).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
Case 8
    TXTFIELDS(8).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
Case 9
    TXTFIELDS(9).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 7, KeyAscii
Case 10
    TXTFIELDS(10).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
Case 11
    TXTFIELDS(11).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
Case 12
    TXTFIELDS(12).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
Case 13
    TXTFIELDS(13).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
Case 14
    TXTFIELDS(14).Locked = False

    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
Case 15
    TXTFIELDS(15).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
Case 16
    TXTFIELDS(16).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 6, KeyAscii
        
Case 17
    TXTFIELDS(17).Locked = False
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 7, KeyAscii
    
Case 18, 19, 25
    KeyAscii = 0
Case 0
    Call ToUpCase(TXTFIELDS(0), KeyAscii)
Case 30
    If KeyAscii = 45 Then KeyAscii = 0
    tonum TXTFIELDS(Index), 9, KeyAscii
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
   'Call ToAlpha(TXTFIELDS(0), KeyAscii)
End Select
If Index = 20 Then
     'KeyAscii = 0
End If
End If


Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form OpenStockEntry", vbInformation, head
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

StatusBar1.Panels(2).Text = ""
If Opt = "add" Or Opt = "mod" Then
TXTFIELDS(Index).BackColor = &HFFFFFF
Select Case Index
Case 19
    If TXTFIELDS(19).Text = "" Then
        TXTFIELDS(19).SetFocus
    End If
Case 24
    If Trim(TXTFIELDS(24).Text) = "" Then TXTFIELDS(24).Text = "0.000"

Case 3
    If SSTab1.Visible = True Then
    TXTFIELDS(4).SetFocus
    End If
Case 5
'        txtFields(5).Text = Format(txtFields(5).Text, "#0.000")
        If Trim(TXTFIELDS(5).Text) = "" Or val(TXTFIELDS(5)) = 0 Then
            'MsgBox "Invoice Weight Should not be empty", vbInformation, head
            'txtFields(5).SetFocus
            Exit Sub
        End If
    
Case 6
        If Trim(TXTFIELDS(6).Text) = "" Or val(TXTFIELDS(6)) = 0 Then
            MsgBox "Invoice Value Should not be empty", vbInformation, head
            TXTFIELDS(6).SetFocus
            Exit Sub
        End If
Case 0
'    Set rsa = New Recordset
'    rsa.Open "select catcd from rm_cat where catcd='" & txtFields(0).Text & "'", db, adOpenStatic
'    If rsa.RecordCount = 0 Then
'        LookUp.clear = True
'        LookUp.Query = "select catcd""Category Code"",catname""Category Name"" from rm_cat"
'        LookUp.DefCol = "Name"
'        LookUp.Caption = "Category Listing"
'        LookUp.ALIGN = "2000,5000"
'        LookUp.Show vbModal
'        If LookUp.Cancel = False Then
'            txtFields(0).Text = LookUp.Fields(0)
'            MaskEdBox1(0).Text = pdate
'            LookUp.clear = True
'            txtFields(2).SetFocus
'        Else
'            txtFields(0).Text = ""
'            txtFields(0).SetFocus
'            LookUp.clear = True
'            Exit Sub
'        End If
'   Else
'
'   End If
'
'    Exit Sub
If Opt = "add" Then
'    Set RS1 = New Recordset
'    RS1.Open "select catcd from rm_lot where catcd= '" & Trim(txtfields(0).Text) & "'", DB, adOpenStatic
'    If RS1.RecordCount > 0 Then
'        MsgBox "Category Code is Already Entered", vbInformation, head
'        txtfields(0).Text = ""
'        txtfields(0).SetFocus
'        Exit Sub
'    End If
'    If Trim(txtFields(0).Text) = "" Then
'        MsgBox "Category Code is should not be empty", vbInformation, head
'        txtFields(0).Text = ""
'        txtFields(0).SetFocus
'        Exit Sub
'    End If
End If
'If Opt = "add" Then
'    Set rs1 = New Recordset
'    rs1.Open "select catcd from rm_lot where catcd= '" & Trim(txtFields(0).Text) & "'", db, adOpenStatic
'    If rs1.RecordCount > 0 Then
''        MsgBox "Category Code is Already Entered", vbInformation, head
''        txtFields(0).Text = ""
''        'TXTFIELDS(0).SetFocus
''        Exit Sub
'    End If
'End If
Case 33
'txtFields(26).SetFocus
'Case 30
'txtFields(20).SetFocus
Case 2


If Opt = "add" Then
    If Trim(TXTFIELDS(2).Text) <> "" And val(TXTFIELDS(2)) <> 0 Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_lot where divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and lotno='" & Trim(TXTFIELDS(2).Text) & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
            MsgBox "Lot No. already exist", vbInformation, head
            TXTFIELDS(2).Text = ""
            TXTFIELDS(2).SetFocus
            Exit Sub
        End If
    ElseIf val(TXTFIELDS(2)) = 0 Then
        MsgBox "Lot No. should not be empty", vbInformation, head
        TXTFIELDS(2).Text = ""
        TXTFIELDS(2).SetFocus
        Exit Sub
    Else
        MsgBox "Lot No. should not be empty", vbInformation, head
        TXTFIELDS(2).Text = ""
        TXTFIELDS(2).SetFocus
        Exit Sub
    End If
'    If Trim(txtFields(2).Text) <> "" Or val(Trim(txtFields(2).Text)) <> 0 Then
'    Set rs2 = New Recordset
'    rs2.Open "select lotno from rm_lot where lotno= '" & Trim(txtFields(2).Text) & "' and divcode='" & Divcode & "' and catcd='" & Trim(txtFields(0).Text) & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' ", db, adOpenStatic
'    Else
'    'MsgBox "ENTER THE PROPER MILL LOT NO VALUE"
'    'txtFields(2).SetFocus
'    Exit Sub
'    End If
'    If rs2.RecordCount > 0 Then
 '       MsgBox "Lot Number is Already Entered", vbInformation, head
  '      TXTFIELDS(2).Text = ""
   '     TXTFIELDS(2).SetFocus
    '    Cancel = True
     '   Exit Sub
    'End If
    'MaskEdBox1(0).SetFocus
    'txtFields(33).SetFocus
End If

Case 26
'        If Trim(txtFields(26).Text) = "" Then
'            MsgBox "Supplier Should not be empty", vbInformation, head
'            txtFields(26).SetFocus
'            Exit Sub
'        End If
        
Case 28
'        If Trim(txtFields(28).Text) = "" Then
'            MsgBox "Area Should not be empty", vbInformation, head
'            txtFields(28).SetFocus
'            Exit Sub
'        End If
    
Case 20
'        If Trim(txtFields(20).Text) = "" Then
'            MsgBox "Godown Should not be empty", vbInformation, head
'            txtFields(20).SetFocus
'            Exit Sub
'        End If
        
Case 5
'    If Opt = "add" Or Opt = "upd" Then
'        txtFields(5).Text = Format(txtFields(5).Text, "#0.000")
'        If Trim(txtFields(5).Text) = "" Or val(txtFields(5)) = 0 Then
'            MsgBox "Invoice Weight Should not be empty", vbInformation, head
'            txtFields(5).SetFocus
'            Exit Sub
'        End If
'    End If
'    Exit Sub
Case 6
'        If Opt = "add" Or Opt = "upd" Then
'            If Trim(txtFields(6).Text) = "" Or val(txtFields(6)) = 0 Then
'                MsgBox "Invoice Value Should not be empty", vbInformation, head
'                txtFields(6).SetFocus
'                txtFields(6).Text = ""
'                Exit Sub
'            End If
'        End If
'    Exit Sub
Case 11
    TXTFIELDS(11).Text = Format(TXTFIELDS(11).Text, "#0.000")

Case 25
      
      TXTFIELDS(25).Text = Format(TXTFIELDS(25).Text, "#0.000")
      TXTFIELDS(30).SetFocus

Case 23
      
      TXTFIELDS(23).Text = Format(TXTFIELDS(23).Text, "#0.000")
Case 17
      TXTFIELDS(18).Text = IIf(IsNull(val(TXTFIELDS(6))), 0, val(TXTFIELDS(6))) + IIf(IsNull(val(TXTFIELDS(7))), 0, val(TXTFIELDS(7))) + IIf(IsNull(val(TXTFIELDS(8))), 0, val(TXTFIELDS(8))) + IIf(IsNull(val(TXTFIELDS(9))), 0, val(TXTFIELDS(9))) + IIf(IsNull(val(TXTFIELDS(10))), 0, val(TXTFIELDS(10))) + IIf(IsNull(val(TXTFIELDS(11))), 0, val(TXTFIELDS(12))) + IIf(IsNull(val(TXTFIELDS(13))), 0, val(TXTFIELDS(13))) + IIf(IsNull(val(TXTFIELDS(16))), 0, val(TXTFIELDS(16))) + IIf(IsNull(val(TXTFIELDS(17))), 0, val(TXTFIELDS(17))) - (IIf(IsNull(val(TXTFIELDS(14))), 0, val(TXTFIELDS(14))) + IIf(IsNull(val(TXTFIELDS(15))), 0, val(TXTFIELDS(15))))
       TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.000")
Case 18
      TXTFIELDS(18).Text = Format(TXTFIELDS(18).Text, "#0.000")
      TXTFIELDS(19).Text = val(TXTFIELDS(18)) / val(TXTFIELDS(25))
       TXTFIELDS(19).Text = Format(TXTFIELDS(19).Text, "#0.0000")

Case 24
'This is for invoice

'Case 19
''Webcotton Bypass II
'If Opt = "add" Or Opt = "mod" Then
'        txtFields(19).Text = Format(txtFields(19).Text, "#0.000")
'    If flg <> "N" Then
'    If vbYes = MsgBox("Any corrections?", vbYesNo, head) Then
'        grddatagrid.Enabled = True
'        txtFields(4).SetFocus
'         SSTab1.Tab = 1
'         'Commented for invoice
'         'Else
'         'If TXTFIELDS(5).Text = "" Then
'         '   MsgBox "Enter Weight ", vbInformation, head
'          '  TXTFIELDS(5).SetFocus
'        Else
'        grddatagrid.Enabled = True
'        BUTTON(9).Enabled = True
''        Frame2.Visible = True
''        For I = 0 To 20
''            'TXTFIELDS(I).Locked = True
''        Next
''        For I = 22 To 26
''            TXTFIELDS(I).Locked = True
''        Next
'        SSTab1.Tab = 2
'        BUTTON(9).SetFocus
'
'        If Opt = "add" Or Opt = "mod" Then
'        If grddatagrid.Row = -1 Then
'        grddatagrid.AllowAddNew = True
'       ' grdDataGrid.Row = 0
'        End If
'        If flg <> "Y" Then
'        flg = "Y"
'            If Opt = "mod" Then
'                Set grddatagrid.DataSource = Nothing
'                Set adoSecondaryRS = New Recordset
'                adoSecondaryRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,divcode,ARRDT FROM RM_BALE WHERE 1=2  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
'                Set grddatagrid.DataSource = Nothing
''                Set grddatagrid.DataSource = adoSecondaryRS
'                grddatagrid.AllowAddNew = True
'                grddatagrid.AllowUpdate = True
'            End If
'            Text4.Text = ""
'            Text5.Text = ""
'            Text6.Text = ""
'            Text7.Text = ""
'            For i = 0 To w
'                grddatagrid.AllowDelete = True
'            Next
'            'grdDataGrid.Row = 0
'            'grdDataGrid.Bookmark = 1
'
'            Dim p As Double
'            Dim q As Double
'            Dim r As Double
'            Dim s As Double
'            p = txtFields(22).Text
'            w = txtFields(22).Text
'            q = txtFields(23).Text
'            r = txtFields(24).Text
'            s = txtFields(25).Text
'
'           If Opt = "add" Then
'            If FLLG <> "N" Then
'                adoSecondaryRS.MoveFirst
'                For i = 1 To adoSecondaryRS.RecordCount
'                'On Error Resume Next
'                adoSecondaryRS.Delete
'                adoSecondaryRS.MoveNext
'                Next
'            End If
'             For i = 1 To p
'                FLLG = "N"
'                'Frame3.Visible = True
'
'                Frame1.Visible = True
'                grddatagrid.Enabled = True
'                grddatagrid.Visible = True
'                grddatagrid.Columns(2).Text = i
'                grddatagrid.Columns(3).Text = q / p
'                grddatagrid.Columns(4).Text = r / p
'                grddatagrid.Columns(5).Text = s / p
'                grddatagrid.Columns(2).Locked = True
'                grddatagrid.Columns(7).Text = "A"
'                adoSecondaryRS.AddNew
'                'grddatagrid.AllowAddNew = True
'                'grdDataGrid.Row = grdDataGrid.Row + 1
'                'adoSecondaryRS.AddNew
'             Next
'                grddatagrid.Columns(1).Locked = True
'                BUTTON(9).SetFocus
'                Text4 = p
'                Text5 = q
'                Text6 = r
'                Text7 = s
'        End If
'
'
'
'        If Opt = "mod" Then
'           For i = 1 To p
'                Frame3.Visible = True
'                grddatagrid.Enabled = True
'                grddatagrid.Visible = True
'                adoSecondaryRS.AddNew
'                grddatagrid.Columns(2).Text = i
'                grddatagrid.Columns(3).Text = q / p
'                grddatagrid.Columns(4).Text = r / p
'                grddatagrid.Columns(5).Text = s / p
'                grddatagrid.Columns(2).Locked = True
'                grddatagrid.Columns(7).Text = "A"
'                'grddatagrid.AllowAddNew = True
'                'grdDataGrid.Row = grdDataGrid.Row + 1
'
'            Next
'                    Call GRIDALIGN
'                    Text4 = p
'                    Text5 = q
'                    Text6 = r
'                    Text7 = s
'        End If
'   ' End If
'
'        grddatagrid.AllowAddNew = False
'        grddatagrid.AllowUpdate = True
'        grddatagrid.EditActive = True
'        grddatagrid.Columns(2).Locked = False
'        grddatagrid.Enabled = True
'       ' grdDataGrid.Row = 0
'       ' grdDataGrid.Col = 3
'       'grddatagrid.SetFocus
'        'Ravi-29-08-2002
'        'grdDataGrid.Columns(2).Width = 794.8347
'        'grdDataGrid.Columns(3).Width = 1425.26
'        'grdDataGrid.Columns(4).Width = 1305.071
'        'grdDataGrid.Columns(5).Width = 1484.787
'        'grdDataGrid.Columns(7).Width = 1604.976
'        'grdDataGrid.Columns(8).Visible = False
'
''
''        For I = 4 To 20
''        TXTFIELDS(I).Locked = True
''        Next
'        MaskEdBox1(1).Enabled = False
'        End If
'   End If
'   End If
'End If
'End If
Case 20

' Webcotton bypass
If Trim(TXTFIELDS(0) = "D") Or Trim(TXTFIELDS(0) = "W") Then
    SSTab1.TabEnabled(1) = False
    SSTab1.TabEnabled(2) = False
    BUTTON(9).Enabled = True
        
Else
   SSTab1.TabEnabled(1) = True
   SSTab1.TabEnabled(2) = True
   SSTab1.Tab = 1
   'txtFields(19).SetFocus
    

End If



 
End Select
End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form OpenStockEntry", vbInformation, head
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
Frame8.Visible = True
  Set adoPrimaryRS = New Recordset
'  adoprimaryrs.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT A WHERE   " & _
'                 "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'T' " & _
'                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype FROM RM_BALE" & _
'                 " where lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  ) Order by baleno" & _
'                "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
   
  adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,colorcode,lotyear,rejflg FROM RM_LOT A WHERE  " & _
                 " a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype FROM RM_BALE" & _
                 " where  lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  ) Order by baleno" & _
                "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
   
   
'   If adoprimaryrs.RecordCount <> 0 Then
   'Set ADOSECONDARYRS = adoprimaryrs("ChildCMD").UnderlyingValue
   'Set grddatagrid.DataSource = ADOSECONDARYRS
   'if adoprimaryrs.re
   Set grdDataGrid.DataSource = Nothing
'   Call GRIDALIGN
'    Text4.Text = ADOSECONDARYRS.RecordCount
'    Text5.Text = adoPrimaryRS("grswgt")
'    Text6.Text = adoPrimaryRS("tarewt")
'    Text7.Text = adoPrimaryRS("netwt")
'    Text4.Locked = True
'    Text5.Locked = True
'    Text6.Locked = True
'    Text7.Locked = True
    TXTFIELDS(33).Text = ""
    TXTFIELDS(21).Text = ""
    TXTFIELDS(30).Text = ""
    Frame2.Visible = False
    'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     Call disablcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
     Call NEWFORM(BUTTON)
     Call NEWFORM1(BUTTON, GSNO)
     Call disablcontls
     SSTab1.Tab = 0
     SSTab1.TabEnabled(1) = True
     SSTab1.TabEnabled(2) = True
     
     Exit Sub
  'Else
  '     MsgBox "No Records Found", vbInformation, head
  '     Call Norecfound(BUTTON)
  '     Call bindcontls
  '     SSTab1.Tab = 0
'  End If
End If


Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form OpenStockEntry", vbInformation, head
End Sub

Public Sub gridalign()
grdDataGrid.Columns(0).Visible = False
grdDataGrid.Columns(1).Visible = False
grdDataGrid.Columns(6).Visible = False
'grddatagrid.Columns(7).Visible = False
'grddatagrid.Columns(8).Visible = False
grdDataGrid.Columns(2).Caption = "Bale No."
grdDataGrid.Columns(3).Caption = "Gross Weight."
grdDataGrid.Columns(4).Caption = "Tare Weight."
grdDataGrid.Columns(5).Caption = "Nett Weight."
grdDataGrid.Columns(7).Caption = "Lot Type"
'grdDataGrid.Columns(2).Width = 1005.165
'grdDataGrid.Columns(3).Width = 1635.024
'grdDataGrid.Columns(4).Width = 1425.26
'grdDataGrid.Columns(5).Width = 1860.095
'grdDataGrid.Columns(8).Width = 0
grdDataGrid.Columns(5).Width = 1600
grdDataGrid.Columns(4).Width = 1600
grdDataGrid.Columns(3).Width = 1600
grdDataGrid.Columns(2).Width = 1600
grdDataGrid.Columns(7).Width = 1600
grdDataGrid.Columns(3).NumberFormat = "#0.000"
grdDataGrid.Columns(4).NumberFormat = "###.000"
grdDataGrid.Columns(5).NumberFormat = "###.000"
grdDataGrid.Columns(2).Alignment = dbgLeft
grdDataGrid.Columns(3).Alignment = dbgRight
grdDataGrid.Columns(4).Alignment = dbgRight
grdDataGrid.Columns(5).Alignment = dbgRight
grdDataGrid.Columns(2).Locked = True
grdDataGrid.Columns(5).Locked = True
End Sub

Public Sub Value_Cal()
 Text4.Text = 0
 Text5.Text = 0
 Text6.Text = 0
 Text7.Text = 0
 adoSecondaryRS.MoveFirst
 For I = 1 To adoSecondaryRS.RecordCount
    Text4.Text = (val(grdDataGrid.Columns(3).Text))
    Text5.Text = val(Text5.Text) + val(grdDataGrid.Columns(3).Text)
    Text6.Text = val(Text6.Text) + val(grdDataGrid.Columns(3).Text)
    Text7.Text = val(Text7.Text) + val(grdDataGrid.Columns(5).Text)
   adoSecondaryRS.MoveNext
 Next
End Sub

Public Sub delmodproc(a As String, B As String)
On Error GoTo delmodproc_Error

Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,colorcode,PLOTNO,RATE,lotyear,rejflg,FAVAOURABLEWGT FROM RM_LOT A WHERE (isswt is null or isswt=0)and (issbal is null or issbal=0)" & _
                  "  AND A.DIVCODE = '" & Divcode & "' and A.lotno ='" & B & "' and A.LOTdt='" & Format(a, "yyyy-mm-dd") & "'" & _
                  " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype FROM RM_BALE" & _
                  " where lotdt='" & Format(a, "yyyy-mm-dd") & "'  and  lotno='" & B & "' ) Order by baleno" & _
                  "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,lottype to lottype) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic


Set adoSecondaryRS = adoPrimaryRS("childcmd").UnderlyingValue
Set grdDataGrid.DataSource = adoSecondaryRS
Call gridalign
Call bindcontls
a1 = TXTFIELDS(22).Text
SSTab1.Visible = True
grdDataGrid.Visible = True
SSTab1.Visible = True
If adoPrimaryRS("BBLFLG") = "B" Then
   Combo1.Text = "Bale"
ElseIf adoPrimaryRS("BBLFLG") = "R" Then
   Combo1.Text = "Borah"
End If

Text4.Visible = False
Text5.Visible = False
Text6.Visible = False
Text7.Visible = False
Call gridalign
   
If Opt = "mod" Then
        TXTFIELDS(0).Locked = True
        'TXTFIELDS(1).Locked = True
        TXTFIELDS(2).Locked = True
        TXTFIELDS(3).Locked = False
        TXTFIELDS(4).Locked = False
        TXTFIELDS(6).Locked = False
        TXTFIELDS(7).Locked = False
        TXTFIELDS(9).Locked = False
        TXTFIELDS(11).Locked = False
        TXTFIELDS(12).Locked = False
        Frame2.Visible = True
        Label9.Visible = True
        Text4.Visible = True
        Text5.Visible = True
        Text6.Visible = True
        Text7.Visible = True
        Text8.Visible = True
        Text4.Text = adoSecondaryRS.RecordCount
        Text5.Text = adoPrimaryRS("grswgt")
        Text6.Text = adoPrimaryRS("tarewt")
        Text7.Text = adoPrimaryRS("netwt")
        Text8.Text = IIf(IsNull(adoPrimaryRS("lgroup")) = True, "", adoPrimaryRS("lgroup"))
        grdDataGrid.AllowUpdate = True
        'grddatagrid.AllowAddNew = True
'        If ADOSECONDARYRS.RecordCount > 0 Then
'        grddatagrid.Columns(2).Text = ADOSECONDARYRS.RecordCount
'        grddatagrid.Columns(3).Text = adoprimaryrs("grswgt")
'        grddatagrid.Columns(4).Text = adoprimaryrs("tarewt")
'        grddatagrid.Columns(5).Text = adoprimaryrs("netwt")
'        End If
        oldgrs = TXTFIELDS(23).Text
        oldtare = TXTFIELDS(24).Text
        qty = TXTFIELDS(22).Text
        W = TXTFIELDS(22).Text
        TXTFIELDS(22).Locked = True
        TXTFIELDS(23).Locked = True
        TXTFIELDS(24).Locked = True
        TXTFIELDS(25).Locked = True
        Screen.MousePointer = 0
        MaskEdBox1(1).Enabled = True
    End If
    If Opt = "mod" Then
        grdDataGrid.Enabled = True
        grdDataGrid.AllowUpdate = True
        grdDataGrid.EditActive = True
        grdDataGrid.Columns(2).Locked = True
    End If
Frame9.Visible = False
Screen.MousePointer = 0


Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form OpenStockEntry", vbInformation, head
End Sub

'    If RS1.RecordCount > 0 Then
'        MsgBox "Category Code is Already Entered", vbInformation, head
'        txtfields(0).Text = ""
'        txtfields(0).SetFocus
'        Exit Sub
'    End If
Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If (Opt = "add" Or Opt = "mod") Then
Select Case Index
Case 24
    If val(TXTFIELDS(23).Text) > val(TXTFIELDS(24).Text) Then
              TXTFIELDS(24).Text = Format(TXTFIELDS(24).Text, "#0.000")
              TXTFIELDS(25).Text = Format(val(TXTFIELDS(23)) - val(TXTFIELDS(24)), "0.000")
              TXTFIELDS(5).Text = Format(val(TXTFIELDS(23)) - val(TXTFIELDS(24)), "0.000")
              
    Else
        If TXTFIELDS(23).Text <> "" Then
        MsgBox "Tare weight should be less than Gross Weight", vbInformation, head
        TXTFIELDS(24).Text = ""
        TXTFIELDS(24).SetFocus
        End If
        Exit Sub
    End If

Case 19
If Opt = "add" Then
    TXTFIELDS(19).Text = Format(TXTFIELDS(19).Text, "#0.000")
    If vbYes = MsgBox("Any corrections?", vbYesNo, head) Then
        grdDataGrid.Enabled = True
        TXTFIELDS(4).SetFocus
         SSTab1.Tab = 1
    Else
        grdDataGrid.Enabled = True
        BUTTON(9).Enabled = True
        Frame2.Visible = True
        SSTab1.Tab = 2
        BUTTON(9).SetFocus
               
        If Opt = "add" Or Opt = "mod" Then
        If grdDataGrid.Row = -1 Then
        grdDataGrid.AllowAddNew = True
       ' grdDataGrid.Row = 0
        End If
        If FLG <> "Y" Then
        FLG = "y"
            If Opt = "mod" Then
                Set grdDataGrid.DataSource = Nothing
                Set adoSecondaryRS = New Recordset
                adoSecondaryRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,divcode,ARRDT FROM RM_BALE WHERE 1=2  and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                Set grdDataGrid.DataSource = Nothing
                Set grdDataGrid.DataSource = adoSecondaryRS
                grdDataGrid.AllowAddNew = True
                grdDataGrid.AllowUpdate = True
            End If
            Text4.Text = ""
            Text5.Text = ""
            Text6.Text = ""
            Text7.Text = ""
            For I = 0 To W
                grdDataGrid.AllowDelete = True
            Next
            'grdDataGrid.Row = 0
            'grdDataGrid.Bookmark = 1
            
            Dim p As Double
            Dim q As Double
            Dim r As Double
            Dim s As Double
            p = TXTFIELDS(22).Text
            W = TXTFIELDS(22).Text
            q = TXTFIELDS(23).Text
            r = TXTFIELDS(24).Text
            s = TXTFIELDS(25).Text
           
           If Opt = "add" Then
            If FLLG <> "N" Then
                adoSecondaryRS.MoveFirst
                For I = 1 To adoSecondaryRS.RecordCount
                'On Error Resume Next
                adoSecondaryRS.Delete
                adoSecondaryRS.MoveNext
                Next
            End If
             For I = 1 To p
                FLLG = "N"
                'Frame3.Visible = True
                Frame7.Enabled = False
                Frame8.Enabled = False
                Frame1.Visible = True
                grdDataGrid.Enabled = True
                grdDataGrid.Visible = True
                grdDataGrid.Columns(2).Text = I
                grdDataGrid.Columns(3).Text = q / p
                grdDataGrid.Columns(4).Text = r / p
                grdDataGrid.Columns(5).Text = s / p
                grdDataGrid.Columns(2).Locked = True
                grdDataGrid.Columns(7).Text = "A"
                adoSecondaryRS.AddNew
             Next
             
                Text4 = p
                Text5 = q
                Text6 = r
                Text7 = s
'                BUTTON(9).SetFocus
        End If
        
        
        
        If Opt = "mod" Then
           For I = 1 To p
                Frame3.Visible = True
                grdDataGrid.Enabled = True
                grdDataGrid.Visible = True
                adoSecondaryRS.AddNew
                grdDataGrid.Columns(2).Text = I
                grdDataGrid.Columns(3).Text = q / p
                grdDataGrid.Columns(4).Text = r / p
                grdDataGrid.Columns(5).Text = s / p
                grdDataGrid.Columns(2).Locked = True
                grdDataGrid.Columns(7).Text = "A"
                'grddatagrid.AllowAddNew = True
                'grdDataGrid.Row = grdDataGrid.Row + 1

            Next
                    Call gridalign
                    Text4 = p
                    Text5 = q
                    Text6 = r
                    Text7 = s
'                    BUTTON(9).SetFocus
        End If
   ' End If
    
        grdDataGrid.AllowAddNew = False
        grdDataGrid.AllowUpdate = True
        grdDataGrid.EditActive = True
        grdDataGrid.Columns(2).Locked = False
'        grddatagrid.Columns(0).Locked = False
'        grddatagrid.Columns(1).Locked = False

        grdDataGrid.Enabled = True 'False
        MaskEdBox1(1).Enabled = False
        BUTTON(9).SetFocus
        End If
   End If
   End If

End If
    
Case 0
a:
  Set rsa = New Recordset
    rsa.Open "select catcd from rm_cat where catcd='" & TXTFIELDS(0).Text & "'", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        LookUp.Clear = True
        LookUp.query = "select catcd""Category Code"",catname""Category Name"" from rm_cat"
        LookUp.DefCol = "Name"
        LookUp.Caption = "Category Listing"
        LookUp.ALIGN = "2000,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            TXTFIELDS(0).Text = LookUp.Fields(0)
            MaskEdBox1(0).Text = pdate
            LookUp.Clear = True
            TXTFIELDS(2).SetFocus
        Else
            TXTFIELDS(0).Text = ""
            TXTFIELDS(0).SetFocus
            LookUp.Clear = True
            'Exit Sub
            GoTo a:
        End If
   Else
          
   End If

    Exit Sub
'    Label15.Caption = "Category Details"
'      ksllist1.conn = connectstring
'      ksllist1.table = "rm_CAT"
'      ksllist1.listfield1 = "catcd"
'      ksllist1.listfield2 = "catname"
'      SSTab1.Visible = False
'
'      Frame3.Visible = True
'      Frame3.ZOrder
    
Case 1
    If TXTFIELDS(1).Text = "" And Opt = "add" Then
        MsgBox "Receipt No. Cannot be Empty", vbInformation, head
        Cancel = True
    End If
Case 2
'    Set rs = New Recordset
'    rs.Open "Select * from rm_lot where divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and lotno='" & txtFields(2).Text & "' and catcd='" & txtFields(0).Text & "'", db, adOpenStatic
'    If rs.RecordCount <> 0 Then
'        MsgBox "Lotno already exist", vbInformation, head
'        txtFields(2).SetFocus
'        Exit Sub
'    End If
 If Trim(TXTFIELDS(2).Text) = "" Then
    'MsgBox "Please Enter Lot Number", vbInformation, head
    'Cancel = True
    Exit Sub
 End If

    
Case 22
    'wei = txtFields(22).Text
    If TXTFIELDS(22).Text = "" And FLG = "Y" Then
        MsgBox "Quantity Cannot be Empty", vbInformation, head
        Cancel = True
    End If
Case 23
        If TXTFIELDS(23).Text = "" Then
            MsgBox "Gross Weight Cannot be Empty", vbInformation, head
            Cancel = True
        End If
Case 24
'If txtFields(24).Text = "" Then
'MsgBox "Tare Weight Cannot be Empty", vbInformation, head
'Cancel = True
'End If


'PPPP
Case 26

Set rs4 = New Recordset
rs4.Open "select count(*) from fa_slmas", DB
TXTFIELDS(26).Text = UCase(TXTFIELDS(26).Text)
If Not rs4(0) = 0 Then

    Set Rs = New Recordset
    Rs.Open "select slcode,slname from fa_slmas where slcode = '" & TXTFIELDS(26).Text & "'", DB, adOpenStatic
    Set rs1 = New Recordset
    rs1.Open "Select * from masterlen", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        sup = rs1("ptypecotton") '& "%"
    Else
        sup = ""
    End If
    If Rs.BOF Then
        FLG = "N"
Supplier:
        LookUp.Clear = True
        LookUp.query = "select slcode""Supplier Code"",slname""Supplier Name"", City, Brcode""Broker Code"" from fa_slmas where left(slcode,2) in (select Items from dbo.split('" & sup & "',','))" ''C1%'"
        LookUp.DefCol = "Supplier Name"
        LookUp.Caption = "Supplier Listing"
        LookUp.ALIGN = "1450,3800,1600,1400"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            FLG = "Y"
            TXTFIELDS(26).Text = LookUp.Fields(0)
            LookUp.Clear = True
            TXTFIELDS(27).SetFocus
        Else
            LookUp.Clear = True
            TXTFIELDS(26).SetFocus
            GoTo Supplier:
        End If
        Exit Sub
''        Label15.Caption = "Supplier List"
''        Frame3.Visible = True
''        Frame3.ZOrder
''        ksllist1.conn = connectstring
''        ksllist1.table = "fa_slmas WHERE SLCODE LIKE 'C1%'"
''        ksllist1.listfield1 = "slcode"
''        ksllist1.listfield2 = "slname,City as Place "
''        ksllist1.SetFocus
    Else
     End If
     End If



Case 27
    'If Trim(txtfields(27).Text) = "" Then
    Set rs4 = New Recordset
    rs4.Open "select count(*) from fa_slmas", DB
'If Not rs4(0) = 0 And flg = "Y" Then
        If Not rs4(0) = 0 Then
            Set Rs = New Recordset
            Rs.Open "select slcode from fa_slmas where slcode = '" & TXTFIELDS(27).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                bro = rs1("ptypebroker") & "%"
            Else
                bro = ""
            End If
            If Rs.BOF Then
                LookUp.Clear = True
                LookUp.query = "select slcode""Broker Code"",slname""Broker Name"", City from fa_slmas where slcode like '" & bro & "'"
                LookUp.DefCol = "Broker Name"
                LookUp.Caption = "Broker Listing"
                LookUp.ALIGN = "1800,5000,1800"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    If LookUp.Fields(0) = TXTFIELDS(26).Text Then
                        MsgBox "Broker Code shouldn't be same as Supplier Code", vbInformation, head
                        KslList1.SetFocus
                        Exit Sub
                    End If
                    FLG = "Y"
                    TXTFIELDS(27).Text = LookUp.Fields(0)
                    LookUp.Clear = True
                    TXTFIELDS(28).SetFocus
                Else
                    LookUp.Clear = True
                    TXTFIELDS(27).SetFocus
                End If
                Exit Sub
        ''        FLG = "N"
        ''        Label15.Caption = "Broker List"
        ''        Frame3.ZOrder
        ''        Frame3.Visible = True
        ''        StatusBar1.Panels(2).Text = "Select a Broker code from the list"
        ''        ksllist1.conn = connectstring
        ''        ksllist1.table = "fa_slmas where slcode like 'C4%'"
        ''        ksllist1.listfield1 = "SLCODE"
        ''        ksllist1.listfield2 = "SLNAME"
            End If
    Else
        Set rs1 = New Recordset
        rs1.Open "select slcode,slname from fa_slmas where slcode = '" & TXTFIELDS(27).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rs1.BOF Then
           Text2.Text = ""
        ElseIf rs1(0).value = TXTFIELDS(1).Text Then
          MsgBox "Broker Code shouldn't be same as Supplier Code", vbInformation, head
          Cancel = True
          Else
             Text2.Text = rs1(1)
        End If
    End If
'End If
Case 28
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_area", DB
    If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select areacode from rm_area where areacode = '" & TXTFIELDS(28).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.BOF Then
        FLG = "N"
area:
        LookUp.Clear = True
        LookUp.query = "select areacode""Area Code"",areaname""Area Name"" from rm_area"
        LookUp.DefCol = "Area Name"
        LookUp.Caption = "Area Listing"
        LookUp.ALIGN = "2000,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            FLG = "Y"
            TXTFIELDS(28).Text = LookUp.Fields(0)
            LookUp.Clear = True
            TXTFIELDS(29).SetFocus
        Else
            LookUp.Clear = True
            TXTFIELDS(28).SetFocus
            GoTo area:
        End If
        Exit Sub
''        Label15.Caption = "Area List"
''        Frame3.Visible = True
''        Frame3.ZOrder
''        StatusBar1.Panels(2).Text = "Select a Area code from the list"
''        ksllist1.conn = connectstring
''        ksllist1.table = "rm_area"
''        ksllist1.listfield1 = "areacode"
''        ksllist1.listfield2 = "areaname"
    Else
        Set rs1 = New Recordset
        rs1.Open "select areaname from rm_area where areacode = '" & TXTFIELDS(28).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rs1.BOF Then
           Text3.Text = ""
        Else
           Text3.Text = rs1(0)
        End If
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If


Case 29
    
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_var", DB
    If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select varcode,varname,catcd from rm_var where varcode = '" & TXTFIELDS(29).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.BOF Then
        FLG = "N"
Variety:
        LookUp.Clear = True
        LookUp.query = "select Varcode""Variety Code"",Varname""Variety Name"" from rm_var where catcd = '" & Trim(TXTFIELDS(0).Text) & "'"
        LookUp.DefCol = "Variety Name"
        LookUp.Caption = "Variety Listing"
        LookUp.ALIGN = "2000,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            FLG = "Y"
            TXTFIELDS(29).Text = LookUp.Fields(0)
            LookUp.Clear = True
            TXTFIELDS(22).SetFocus
        Else
            LookUp.Clear = True
            TXTFIELDS(29).SetFocus
            GoTo Variety:
        End If
        Exit Sub
''        Label15.Caption = "Variety List"
''        Frame3.Visible = True
''        Frame3.ZOrder
''        StatusBar1.Panels(2).Text = "Select a Variety code from the list"
''        ksllist1.conn = connectstring
''        ksllist1.table = "rm_var"
''        ksllist1.listfield1 = "varcode"
''        ksllist1.listfield2 = "catcd"
    Else
        TXTFIELDS(21).Text = Rs(1)
        TXTFIELDS(0).Text = Rs(2)
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If

Case 32
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_color", DB
    If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select colorcode,colorname from rm_color where colorcode = '" & TXTFIELDS(32).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.BOF Then
        FLG = "N"
        Label15.Caption = "Color List"
        Frame3.Visible = True
        Frame3.ZOrder
        StatusBar1.Panels(2).Text = "Select a Color code from the list"
        KslList1.conn = connectstring
        KslList1.Table = "rm_color"
        KslList1.listfield1 = "colorcode"
        KslList1.listfield2 = "colorname"
        KslList1.SetFocus
    Else
        TXTFIELDS(31).Text = Rs(1)
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
Case 30
            
'        Set rs4 = New Recordset
'        rs4.Open "select count(*) from rm_count", db
'        If Not rs4(0) = 0 Then
'            Set rs = New Recordset
'            rs.Open "select cntcd from rm_count where cntcd = '" & TXTFIELDS(30).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'            If rs.BOF Then
'                Label15.Caption = "Count List"
'                flg = "N"
'                StatusBar1.Panels(2).Text = "Select a Count from the list"
'                Frame3.Visible = True
'                Frame3.ZOrder
'                ksllist1.conn = connectstring
'                ksllist1.table = "rm_count"
'                ksllist1.listfield1 = "cntcd"
'                ksllist1.listfield2 = "cntname"
'                ksllist1.SetFocus
'            End If
'        Else
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'
    
Case 20
    Set rs4 = New Recordset
    rs4.Open "select count(*) from rm_GOD where 1=1 and DivCode = '" & Divcode & "'", DB
'    If Opt = "add" Then flg = "N"
If Not rs4(0) = 0 Then
    Set Rs = New Recordset
    Rs.Open "select GCODE from rm_God where GCODE = '" & TXTFIELDS(20).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.BOF Then
            ''Label15.Caption = "Godown List"
Godown:
            FLG = "N"
            LookUp.Clear = True
            LookUp.query = "select gcode""Godown Code"",gname""Godown Name"" from rm_god where 1=1 and DivCode = '" & Divcode & "'"
            LookUp.DefCol = "Godown Name"
            LookUp.Caption = "Godown Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
               TXTFIELDS(20).Text = LookUp.Fields(0)
               LookUp.Clear = True
               Frame1.Enabled = True
               Frame1.Visible = True
               'txtFields(19).SetFocus
               SSTab1.Tab = 1
               TXTFIELDS(3).SetFocus
            Else
                LookUp.Clear = True
                SSTab1.Tab = 0
                TXTFIELDS(20).SetFocus
                GoTo Godown
            End If
            Exit Sub
    End If
Else
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If

End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form OpenStockEntry", vbInformation, head

End Sub




''-------senthil
'Case 26
'
'    Set rs4 = New Recordset
'    rs4.Open "select count(*) from fa_slmas", db
'    TXTFIELDS(26).Text = UCase(TXTFIELDS(26).Text)
'        If Not rs4(0) = 0 Then
'            Set rs = New Recordset
'            rs.Open "select slcode,slname from fa_slmas where slcode = '" & TXTFIELDS(26).Text & "'", db, adOpenStatic
'            If rs.BOF Then
'                SSTab1.Visible = False
'                flg = "N"
'                Label15.Caption = "Supplier List"
'                Frame3.Visible = True
'                Frame3.ZOrder
'                ksllist1.conn = connectstring
'                ksllist1.table = "fa_slmas WHERE SLCODE LIKE 'C1%'"
'                ksllist1.listfield1 = "slcode"
'                ksllist1.listfield2 = "slname"
''                ksllist1.SetFocus
'
'            End If
'
'        End If
'
'Case 27
'    If Trim(TXTFIELDS(27).Text) <> "" Then
'        Set rs4 = New Recordset
'        rs4.Open "select count(*) from fa_slmas", db
'            If Not rs4(0) = 0 And flg = "Y" Then
'                Set rs = New Recordset
'                rs.Open "select slcode from fa_slmas where slcode = '" & TXTFIELDS(27).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'                If rs.BOF Then
'                    SSTab1.Visible = False
'                    flg = "N"
'                    Label15.Caption = "Broker List"
'                    Frame3.ZOrder
'                    Frame3.Visible = True
'                    StatusBar1.Panels(2).Text = "Select a Broker code from the list"
'                    ksllist1.conn = connectstring
'                    ksllist1.table = "fa_slmas"
'                    ksllist1.listfield1 = "SLCODE"
'                    ksllist1.listfield2 = "SLNAME"
'            End If
'Else
'        Set rs1 = New Recordset
'        rs1.Open "select slcode,slname from fa_slmas where slcode = '" & TXTFIELDS(27).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'        If rs1.BOF Then
'           Text2.Text = ""
'        ElseIf rs1(0).Value = TXTFIELDS(2).Text Then
'          MsgBox "Broker Code shouldn't be same as Supplier Code", vbInformation, head
'          Cancel = True
'          Else
'             Text2.Text = rs1(1)
'        End If
'End If
'End If
'Case 28
'    Set rs4 = New Recordset
'    rs4.Open "select count(*) from rm_area", db
'If Not rs4(0) = 0 Then
'    Set rs = New Recordset
'    rs.Open "select areacode from rm_area where areacode = '" & TXTFIELDS(28).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'    If rs.BOF Then
'        SSTab1.Visible = False
'        flg = "N"
'        Label15.Caption = "Area List"
'        Frame3.Visible = True
'        Frame3.ZOrder
'        StatusBar1.Panels(2).Text = "Select a Area code from the list"
'        ksllist1.conn = connectstring
'        ksllist1.table = "rm_area"
'        ksllist1.listfield1 = "areacode"
'        ksllist1.listfield2 = "areaname"
'    Else
'        Set rs1 = New Recordset
'        rs1.Open "select areaname from rm_area where areacode = '" & TXTFIELDS(28).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'        If rs1.BOF Then
'           Text3.Text = ""
'        Else
'           Text3.Text = rs1(0)
'        End If
'    End If
'Else
'    MsgBox "No Record Found", vbInformation, head
'    Exit Sub
'End If
'
'
'Case 29
'
'    Set rs4 = New Recordset
'    rs4.Open "select count(*) from rm_var", db
'    If Not rs4(0) = 0 Then
'    Set rs = New Recordset
'    rs.Open "select varcode,varname from rm_var where varcode = '" & TXTFIELDS(29).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'    If rs.BOF Then
'        SSTab1.Visible = False
'        flg = "N"
'        Label15.Caption = "Variety List"
'        Frame3.Visible = True
'        Frame3.ZOrder
'        StatusBar1.Panels(2).Text = "Select a Variety code from the list"
'        ksllist1.conn = connectstring
'        ksllist1.table = "rm_var"
'        ksllist1.listfield1 = "varcode"
'        ksllist1.listfield2 = "varname"
'        ksllist1.SetFocus
'    Else
'        TXTFIELDS(21).Text = rs(1)
'    End If
'Else
'    MsgBox "No Record Found", vbInformation, head
'    Exit Sub
'End If
'
'Case 32
'    Set rs4 = New Recordset
'    rs4.Open "select count(*) from rm_color", db
'    If Not rs4(0) = 0 Then
'    Set rs = New Recordset
'    rs.Open "select colorcode,colorname from rm_color where colorcode = '" & TXTFIELDS(32).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'    If rs.BOF Then
'        flg = "N"
'        Label15.Caption = "Color List"
'        Frame3.Visible = True
'        Frame3.ZOrder
'        StatusBar1.Panels(2).Text = "Select a Color code from the list"
'        ksllist1.conn = connectstring
'        ksllist1.table = "rm_color"
'        ksllist1.listfield1 = "colorcode"
'        ksllist1.listfield2 = "colorname"
'        ksllist1.SetFocus
'    Else
'        TXTFIELDS(31).Text = rs(1)
'    End If
'Else
'    MsgBox "No Record Found", vbInformation, head
'    Exit Sub
'End If
'
'
'
''        Set rs4 = New Recordset
''        rs4.Open "select count(*) from rm_count", db
''        If Not rs4(0) = 0 Then
''            Set rs = New Recordset
''            rs.Open "select cntcd from rm_count where cntcd = '" & TXTFIELDS(30).Text & "'", db, adOpenStatic, adLockBatchOptimistic
''            If rs.BOF Then
''                Label15.Caption = "Count List"
''                flg = "N"
''                StatusBar1.Panels(2).Text = "Select a Count from the list"
''                Frame3.Visible = True
''                Frame3.ZOrder
''                ksllist1.conn = connectstring
''                ksllist1.table = "rm_count"
''                ksllist1.listfield1 = "cntcd"
''                ksllist1.listfield2 = "cntname"
''                ksllist1.SetFocus
''            End If
''        Else
''            MsgBox "No Record Found", vbInformation, head
''            Exit Sub
''        End If
''
'
'Case 20
'    Set rs4 = New Recordset
'    rs4.Open "select count(*) from rm_GOD", db
'    If Opt = "add" Then flg = "N"
'If Not rs4(0) = 0 Then
'    Set rs = New Recordset
'    rs.Open "select GCODE from rm_God where GCODE = '" & TXTFIELDS(20).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'    If rs.BOF Then
'            SSTab1.Visible = False
'            Label15.Caption = "Godown List"
'            flg = "N"
'            StatusBar1.Panels(2).Text = "Select a Godown  from the list"
'            Frame3.Visible = True
'            Frame3.ZOrder
'            ksllist1.conn = connectstring
'            ksllist1.table = "rm_god"
'            ksllist1.listfield1 = "gcode"
'            ksllist1.listfield2 = "gname"
'    End If
'Else
'    MsgBox "No Record Found", vbInformation, head
'    Exit Sub
'End If
'
'End Select
'Exit Sub
'
''Exit Sub
'End If
'End Sub


Private Sub txtqry_Change()
On Error GoTo txtqry_Change_Error

If Len(txtqry.Text) = 0 Then
   Command4.Enabled = False
Else
   Command4.Enabled = True
End If

Exit Sub
txtqry_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtqry_Change of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtqry_KeyPress(KeyAscii As Integer)
'Call tonum(txtqry, 3, KeyAscii)
End Sub

Public Sub ToNum1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error GoTo tonum1_Error

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

Exit Sub
tonum1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure tonum1 of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_Click()
On Error GoTo grddatagrid_Click_Error

If Opt = "add" Then
   If adoSecondaryRS.AbsolutePosition > W Then
      adoSecondaryRS.Delete
   End If
End If

Exit Sub
grddatagrid_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_Click of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text5_Change()
On Error GoTo Text5_Change_Error

On Error GoTo Text5_Change_Error

Text5.Text = Format(Text5.Text, "#0.000")

Exit Sub
Text5_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text5_Change of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text5_Change of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text6_Change()
On Error GoTo Text6_Change_Error

Text6.Text = Format(Text6.Text, "#0.000")

Exit Sub
Text6_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text6_Change of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text7_Change()
On Error GoTo Text7_Change_Error

Text7.Text = Format(Text7.Text, "#0.000")

Exit Sub
Text7_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text7_Change of Form OpenStockEntry", vbInformation, head
Screen.MousePointer = 0
End Sub


