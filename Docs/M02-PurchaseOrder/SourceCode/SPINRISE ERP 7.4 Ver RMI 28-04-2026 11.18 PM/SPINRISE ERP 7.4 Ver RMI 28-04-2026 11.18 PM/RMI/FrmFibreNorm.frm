VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmFibreNorms 
   Caption         =   "Fibre Norms"
   ClientHeight    =   6960
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11190
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   6960
   ScaleWidth      =   11190
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      Height          =   550
      Index           =   12
      Left            =   5340
      Picture         =   "FrmFibreNorm.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   56
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   25
      Width           =   520
   End
   Begin Crystal.CrystalReport CR 
      Left            =   180
      Top             =   3000
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -30
      TabIndex        =   32
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":0442
         Height          =   550
         Index           =   4
         Left            =   1630
         Picture         =   "FrmFibreNorm.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":0AE1
         Height          =   550
         Index           =   6
         Left            =   2715
         Picture         =   "FrmFibreNorm.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "Next Record(Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":1278
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "FrmFibreNorm.frx":1582
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Add(Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":1915
         Height          =   550
         Index           =   5
         Left            =   2180
         Picture         =   "FrmFibreNorm.frx":1D5F
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "First Record(Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":20C4
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
         Picture         =   "FrmFibreNorm.frx":23CE
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Delete(Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":276A
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "FrmFibreNorm.frx":2A74
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Modify(Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   8640
         Picture         =   "FrmFibreNorm.frx":2DEE
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "List(Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":3185
         Height          =   550
         Index           =   7
         Left            =   3270
         Picture         =   "FrmFibreNorm.frx":35CF
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Previous Record(Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":391F
         Height          =   550
         Index           =   11
         Left            =   5910
         Picture         =   "FrmFibreNorm.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Exit(Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":40FE
         Height          =   550
         Index           =   9
         Left            =   4320
         Picture         =   "FrmFibreNorm.frx":4408
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Save(Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "FrmFibreNorm.frx":47AA
         Height          =   550
         Index           =   10
         Left            =   4845
         Picture         =   "FrmFibreNorm.frx":4AB4
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmFibreNorm.frx":4E30
         Height          =   550
         Index           =   8
         Left            =   3795
         Picture         =   "FrmFibreNorm.frx":527A
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Last Record(Ctrl Right)"
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   9330
         TabIndex        =   34
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   7350
         TabIndex        =   33
         Top             =   270
         Width           =   615
      End
   End
   Begin VB.PictureBox picStatBox 
      Align           =   2  'Align Bottom
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      DrawStyle       =   2  'Dot
      DrawWidth       =   17015
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   0
      ScaleHeight     =   300
      ScaleWidth      =   11190
      TabIndex        =   31
      Top             =   6360
      Width           =   11190
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   35
      Top             =   6660
      Width           =   11190
      _ExtentX        =   19738
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "04/11/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:01 PM"
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
      Height          =   5490
      Left            =   900
      TabIndex        =   20
      Top             =   1785
      Width           =   8910
      _ExtentX        =   15716
      _ExtentY        =   9684
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "FrmFibreNorm.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Caption         =   "Fibre Properties"
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
         Height          =   4380
         Left            =   120
         TabIndex        =   40
         Top             =   840
         Width           =   8610
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SFC"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   16393
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
            Index           =   19
            Left            =   1815
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   15
            Top             =   3720
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "FQI"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   16393
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
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
            Index           =   18
            Left            =   6120
            Locked          =   -1  'True
            MaxLength       =   3
            TabIndex        =   58
            Top             =   2535
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "maturityratio"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   16393
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
            Index           =   17
            Left            =   6120
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   11
            Top             =   1995
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "UI"
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
            Index           =   16
            Left            =   1680
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   30
            Top             =   6735
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "ML"
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
            Index           =   15
            Left            =   6105
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   29
            Top             =   6660
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "UHML"
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
            Left            =   1680
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   28
            Top             =   6330
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SPANLEN25"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   3
            Left            =   1815
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   6
            Top             =   960
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SCI"
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
            Left            =   1815
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   12
            Top             =   2535
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SPANLEN50"
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
            Left            =   6135
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   5
            Top             =   435
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "UR"
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
            Left            =   1815
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   4
            Top             =   315
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "MIC"
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
            Left            =   6135
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   9
            Top             =   1560
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "FIBRESTENGTH"
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
            Left            =   6135
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   7
            Top             =   960
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "TRASHPER"
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
            Left            =   1815
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   10
            Top             =   1995
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SFI"
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
            Left            =   6105
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   27
            Top             =   6015
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "ELONGATION"
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
            Left            =   1815
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   8
            Top             =   1560
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "IFC"
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
            Left            =   6105
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   16
            Top             =   3720
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "NEPS"
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
            Left            =   1815
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   13
            Top             =   3075
            Width           =   2220
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SCN"
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
            Left            =   6105
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   14
            Top             =   3075
            Width           =   2220
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "SFC (w) %"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   18
            Left            =   105
            TabIndex        =   60
            Top             =   3720
            Width           =   720
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "FQI"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   17
            Left            =   4680
            TabIndex        =   59
            Top             =   2535
            Width           =   255
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Maturity Ratio"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   16
            Left            =   4680
            TabIndex        =   57
            Top             =   2040
            Width           =   975
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "UI"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   15
            Left            =   90
            TabIndex        =   55
            Top             =   6735
            Width           =   165
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "ML"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   14
            Left            =   4680
            TabIndex        =   54
            Top             =   6660
            Width           =   225
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "UHML"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   0
            Left            =   90
            TabIndex        =   53
            Top             =   6330
            Width           =   465
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "2.5% SL/UHML (mm)"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   2
            Left            =   105
            TabIndex        =   52
            Top             =   435
            Width           =   1500
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "50% SL / ML (mm)"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   3
            Left            =   4665
            TabIndex        =   51
            Top             =   435
            Width           =   1305
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "UR / UI (%) "
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   4
            Left            =   105
            TabIndex        =   50
            Top             =   975
            Width           =   870
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Mic (Tex)"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   5
            Left            =   4665
            TabIndex        =   49
            Top             =   1515
            Width           =   660
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "S.C.I."
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   6
            Left            =   105
            TabIndex        =   48
            Top             =   2535
            Width           =   390
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Strength (g/tex) "
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   7
            Left            =   4665
            TabIndex        =   47
            Top             =   975
            Width           =   1155
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Trash (%)"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   8
            Left            =   105
            TabIndex        =   46
            Top             =   1995
            Width           =   660
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Elongation (%)"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   9
            Left            =   105
            TabIndex        =   45
            Top             =   1515
            Width           =   1005
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "IFC (%)"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   10
            Left            =   4695
            TabIndex        =   44
            Top             =   3720
            Width           =   495
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Nep (Cnt/g)"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   11
            Left            =   120
            TabIndex        =   43
            Top             =   3075
            Width           =   840
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "SFI"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   12
            Left            =   4695
            TabIndex        =   42
            Top             =   6000
            Width           =   240
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "SCN (Cnt/g)"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   13
            Left            =   4695
            TabIndex        =   41
            Top             =   3075
            Width           =   870
         End
      End
      Begin VB.Frame Frame1 
         Height          =   675
         Left            =   150
         TabIndex        =   0
         Top             =   60
         Width           =   8595
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000004&
            Height          =   330
            Index           =   1
            Left            =   3270
            MaxLength       =   40
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   210
            Width           =   5145
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "VARCODE"
            Height          =   330
            Index           =   0
            Left            =   1620
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   2
            Top             =   210
            Width           =   1560
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Vareity"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   1
            Left            =   150
            TabIndex        =   39
            Top             =   210
            Width           =   480
         End
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Fibre Property  Norms"
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
      TabIndex        =   36
      Top             =   915
      Width           =   2895
   End
End
Attribute VB_Name = "FrmFibreNorms"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim Str As String
Dim PC As String
Dim Rs, rs1 As New Recordset
Dim rsa As New Recordset
Public type1 As String
Dim rsCommand1 As Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer

'---------------------------------------------------------------------------------------
' Procedure : adoPrimaryRS_MoveComplete
' DateTime  : 07/12/2008 14:25
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
    If Opt = "qry" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
       stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & "  of  " & CStr(adoPrimaryRS.RecordCount)
    End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1

Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    DB.BeginTrans
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,VARCODE,SPANLEN25,SPANLEN50,SCI,UR,MIC,FIBRESTENGTH,TRASHPER,SFI,ELONGATION,IFC,NEPS,SCN,UHML,ML,UI,maturityratio,FQI,SFC FROM RM_FIBRENORMS where 1=2", DB, adOpenStatic, adLockOptimistic
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    Txtfields(0).SetFocus
        For a = 0 To 14 Step 1
            If a <> 2 Then Txtfields(a).Locked = False
        Next
    desc.Caption = "Addition"
    Screen.MousePointer = 0
Case 1
    ' Modification
    If Record_Exists("RM_FibreNorms") = False Then Exit Sub
    Opt = "mod"
    desc.Caption = "Modification"
    Screen.MousePointer = 11
   
    DB.BeginTrans
    LookUp.Clear = True
    LookUp.query = "select a.varcode""Variety Code"",c.varname""Variety Name"" from rm_fibrenorms a, rm_var c where a.varcode=c.varcode"
    LookUp.Caption = "Variety Listing"
    LookUp.DefCol = "Variety Name"
    LookUp.ALIGN = "2000,3000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT * From rm_fibrenorms WHERE varcode='" & Trim(LookUp.Fields(0)) & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        If adoPrimaryRS.EOF = True Then Exit Sub
        Txtfields(0).Text = LookUp.Fields(0)
        Txtfields(1).Text = LookUp.Fields(1)
        
        Call adddelmod(BUTTON)
        Call ENABLCONTLS
        Call bindcontls
        For a = 2 To 14 Step 1
            If a <> 2 Then Txtfields(a).Locked = False
        Next
        Txtfields(1).Locked = True
        Txtfields(0).Locked = True
        Txtfields(3).SetFocus
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
    stbar.Panels(2).Text = "Select Variety Code from the List"
    

Case 2
    'Deletion
    If Record_Exists("RM_FibreNorms") = False Then Exit Sub
    Opt = "del"
    desc.Caption = "Deletion"
    
    DB.BeginTrans
    LookUp.Clear = True
    LookUp.query = "select a.varcode""Variety Code"",c.varname""Variety Name"" from rm_fibrenorms a, rm_var c where a.varcode=c.varcode"
    LookUp.Caption = "Address Listing"
    LookUp.DefCol = "Address Name"
    LookUp.ALIGN = "2500,2500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT * from Rm_FibreNorms where varcode='" & Trim(LookUp.Fields(0)) & "'", DB, adOpenStatic, adLockBatchOptimistic
                
        Call bindcontls
        Call adddelmod(BUTTON)
        BUTTON(9).SetFocus
        For a = 0 To 14 Step 1
            If a <> 2 Then Txtfields(a).Locked = True
        Next
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
    stbar.Panels(2).Text = "Select Variety Code from the List"
   
Case 4
    'Find
    If Record_Exists("RM_FIBRENORMS") = False Then Exit Sub
    Opt = "fnd"
    desc.Caption = "Find"
    DB.BeginTrans
    LookUp.Clear = True
    LookUp.query = "select a.varcode""Variety Code"",c.varname""Variety Name"" from rm_fibrenorms a, rm_var c where a.varcode=c.varcode"
    LookUp.Caption = "Variety Listing"
    LookUp.DefCol = "Variety Name"
    LookUp.ALIGN = "2000,3000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT * from rm_fibrenorms WHERE varcode='" & Trim(LookUp.Fields(0)) & "'", DB, adOpenStatic
         Call bindcontls
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    Screen.MousePointer = 0

Case 12
    'Listing
'    Set Rep = New Report.ReportView
'    a = FreeFile
'    pg1 = 1
'    Co = 0
'    'Open "c:\DELADD.txt" For Output As #a
'     Open KALFOLDERDATA & "\DELADD.TXT" For Output As #a
'    Call header(pg1, Co)
'    Set Rs = New Recordset
'    Rs.Open "SELECT DIVCODE,VARNAME ,SPANLEN25,SPANLEN50,SCI,UR,MIC,FIBRESTENGTH,TRASHPER,SFI,ELONGATION,IFC,NEPS,SCN FROM RM_FIBRENORMS A, RM_VAR C WHERE a.VARCODE=c.VARCODE", DB, adOpenStatic, adLockOptimistic
'
'    If Rs.BOF Then
'        MsgBox "No records found ", vbInformation, head
'        Close #a
'        Exit Sub
'    End If
'
'    Rs.MoveFirst
'    Do While Not Rs.EOF
'
'        C = C + 1
''        Print #a,
'        C = C + 1
'        Do While Not Rs.EOF
'            Print #a, Space(5) & Chr(15) & Padr(Rs("varname"), 20, " ") & Space(1) & Padl(Rs("Spanlen25"), 10, " ") & Space(1) & Padl(Rs("sci"), 10, " ") & Space(1) & Padl(Rs("Spanlen50"), 10, " ") & Space(1) & Padl(Rs("UR"), 10, " ") & Space(1) & Padl(Rs("Mic"), 10, " ") & Space(1) & Padl(Rs("Fibrestength"), 10, " ") & Space(1) & Padl(Rs("trashper"), 10, " ") & Space(1) & Padl(Rs("Sfi"), 10, " ") & Space(1) & Padl(Rs("Elongation"), 10, " ") & Space(1) & Padl(Rs("IFC"), 10, " ") & Space(1) & Padl(Rs("Neps"), 10, " ") & Space(1) & Padl(Rs("scn"), 10, " ")
'            C = C + 1
'            Rs.MoveNext
'            If C > PageLen Then
'            Print #a, Chr(12)
'            pg1 = pg1 + 1
'            C = 0
'            Call header(pg1, Co)
'            End If
'        Loop
'        Print #a,
'        C = C + 1
'    Loop
'    Print #a, Space(5) & Chr(15) & String(151, "-")
'    Print #a, Chr(12)
'    Close #a
''    Open "c:\DELADD.bat" For Output As #a
''    Print #a, "cd\"
''    Print #a, "c:"
''    Print #a, "cd\"
''    Print #a, "DELADD.txt > prn"
''    Close #a
''    Rep.txtfile = "c:\DELADD.txt"
''    Rep.Batfile = "c:\DELADD.bat"
'    a = FreeFile
'    Call KALBATPROCESS("DELADD")
Dim clsCryRptFibre As New clsCrystal
  Set clsCryRptFibre.cryRept = Cry_SetupFibre
  clsCryRptFibre.CrystalPrint
                
  CR.Reset
  CR.Connect = connectstring
  CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  
  CR.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CR.WindowShowPrintSetupBtn = True
  CR.WindowShowSearchBtn = True
  CR.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CR.Action = 1
  CR.PrinterCopies = 1
  Screen.MousePointer = 0
Case 5
    'first
    Opt = "qry"
    desc.Caption = "Query"
    On Error GoTo GoFirstError
    adoPrimaryRS.MoveFirst
    'calling fir procedure from module
    If adoPrimaryRS.RecordCount = 0 Then
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
    Else
        Call FIR(BUTTON)
    End If
    Exit Sub
GoFirstError:

Case 6
    'next
    Opt = "qry"
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
        adoPrimaryRS.MoveLast
    End If
    Exit Sub
GoNextError:

Case 7
    'previous
    Opt = "qry"
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
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
    End If
    Exit Sub
GoPrevError:
       
Case 8
    'last
    Opt = "qry"
    desc.Caption = "Query"
    On Error GoTo GoLastError
    adoPrimaryRS.MoveLast
    Call las(BUTTON)
    Exit Sub
GoLastError:
           
   
Case 9
    'Save
    If Opt = "add" Or Opt = "mod" Then
        If Trim(Txtfields(0).Text) = "" Then
            MsgBox "Please Select the Variety Empty", vbInformation, head
            Txtfields(0).SetFocus
            Exit Sub
        End If
'        If Trim(Txtfields(1).Text) = "" Then
'            MsgBox "Please Enter the Fibre Properties", vbInformation, head
'            Txtfields(1).SetFocus
'            Exit Sub
'        End If
    End If
    
    
    On Error GoTo saveerror
    Screen.MousePointer = 11
    If Opt = "add" Then
         
        Do While Not adoPrimaryRS.EOF
            adoPrimaryRS("VARCODE") = Txtfields(0).Text
            
''            adoPrimaryRS("PROPERTIES") = TXTFIELDS(2).Text

            adoPrimaryRS("DIVCODE") = Divcode
            adoPrimaryRS("SPANLEN25") = Trim(Txtfields(3).Text)
            adoPrimaryRS("SCI") = Trim(Txtfields(4).Text)
            adoPrimaryRS("SPANLEN50") = Trim(Txtfields(5).Text)
            adoPrimaryRS("UR") = Trim(Txtfields(6).Text)
            adoPrimaryRS("MIC") = Trim(Txtfields(7).Text)
            adoPrimaryRS("FIBRESTENGTH") = Trim(Txtfields(8).Text)
            adoPrimaryRS("TRASHPER") = Trim(Txtfields(9).Text)
            adoPrimaryRS("SFI") = val(Txtfields(10).Text)
            adoPrimaryRS("ELONGATION") = Trim(Txtfields(11).Text)
            adoPrimaryRS("IFC") = Trim(Txtfields(12).Text)
            adoPrimaryRS("NEPS") = Trim(Txtfields(13).Text)
            adoPrimaryRS("SCN") = Trim(Txtfields(14).Text)
            adoPrimaryRS("UHML") = val(Txtfields(2).Text)
            adoPrimaryRS("ML") = val(Txtfields(15).Text)
            adoPrimaryRS("UI") = val(Txtfields(16).Text)
            adoPrimaryRS("maturityratio") = val(Txtfields(17).Text)
            adoPrimaryRS("FQI") = val(Txtfields(18).Text)
            adoPrimaryRS("SFC") = val(Txtfields(19).Text)
            adoPrimaryRS.MoveNext
        Loop
        
        adoPrimaryRS.UpdateBatch adAffectAll
         adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Fibre Norms"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = Trim(Txtfields(0).Text)
            'TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
        
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox " Record(s) Saved", vbInformation, head
        stbar.Panels(2).Text = "Record(s) Saved"
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    End If
    If Opt = "mod" Then
        Do While Not adoPrimaryRS.EOF
'            adoPrimaryRS("VARCODE") = TXTFIELDS(0).Text
'            adoPrimaryRS("PROPERTIES") = TXTFIELDS(2).Text
            adoPrimaryRS("SPANLEN25") = Trim(Txtfields(3).Text)
            adoPrimaryRS("DIVCODE") = Divcode
            adoPrimaryRS("SCI") = Trim(Txtfields(4).Text)
            adoPrimaryRS("SPANLEN50") = Trim(Txtfields(5).Text)
            adoPrimaryRS("UR") = Trim(Txtfields(6).Text)
            adoPrimaryRS("MIC") = Trim(Txtfields(7).Text)
            adoPrimaryRS("FIBRESTENGTH") = Trim(Txtfields(8).Text)
            adoPrimaryRS("TRASHPER") = Trim(Txtfields(9).Text)
            adoPrimaryRS("SFI") = Trim(Txtfields(10).Text)
            adoPrimaryRS("ELONGATION") = Trim(Txtfields(11).Text)
            adoPrimaryRS("IFC") = Trim(Txtfields(12).Text)
            adoPrimaryRS("NEPS") = Trim(Txtfields(13).Text)
            adoPrimaryRS("SCN") = Trim(Txtfields(14).Text)
            adoPrimaryRS("UHML") = Trim(Txtfields(2).Text)
            adoPrimaryRS("ML") = Trim(Txtfields(15).Text)
            adoPrimaryRS("UI") = Trim(Txtfields(16).Text)
            adoPrimaryRS("maturityratio") = Trim(Txtfields(17).Text)
            adoPrimaryRS("FQI") = Trim(Txtfields(18).Text)
            adoPrimaryRS("SFC") = Trim(Txtfields(19).Text)
            adoPrimaryRS.MoveNext
        Loop
        adoPrimaryRS.UpdateBatch adAffectAll
        adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Fibre Norms"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = Trim(Txtfields(0).Text)
            'TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
        
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox "Record(s) Modified", vbInformation, head
        stbar.Panels(2).Text = "Record(s) Modified"
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    End If
    If Opt = "del" Then
        On Error GoTo delerror
        a = MsgBox("Do you want to delete this Record?", vbYesNo, head)
        If a = 6 Then
            DB.Execute ("delete from rm_FIBRENORMS where VARCODE='" + Txtfields(0).Text + "'")
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Fibre Norms"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = Trim(Txtfields(0).Text)
            'TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
            
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record(s) Deleted", vbInformation, head
            stbar.Panels(2).Text = "Record(s) Deleted"
            Call query_mode
            BUTTON(0).SetFocus
            Exit Sub
        Else
            Screen.MousePointer = 0
            MsgBox "Deletion cancelled", vbInformation, head
            DB.CommitTrans
            Opt = " "
            Call query_mode
            BUTTON(0).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
    End If
    
delerror:
    Screen.MousePointer = 0
    MsgBox "This Record Cannot be deleted as Dependencies exists", vbInformation, head
    DB.RollbackTrans
    Call query_mode
    BUTTON(0).SetFocus
    Exit Sub
                        
saveerror:
    If Opt = "add" Then
        MsgBox Err.Number, vbInformation, head
        Screen.MousePointer = 0
        DB.RollbackTrans
        Call query_mode
        BUTTON(0).SetFocus
        Exit Sub
    ElseIf Opt = "mod" Then
        MsgBox "Error during Modification", vbInformation, head
        Screen.MousePointer = 0
        DB.RollbackTrans
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    End If
        
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    'CANCEL
    On Error Resume Next
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Select Case Opt
        Case "mod"
            DB.RollbackTrans
        Case "add"
            DB.RollbackTrans
        Case "del"
            DB.RollbackTrans
        Case "fnd"
            DB.RollbackTrans
    End Select
    Screen.MousePointer = 0
    stbar.Panels(2).Text = "Operation Cancelled"
    Opt = " "
    Call query_mode
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(0).SetFocus
    
Case 11
    Unload Me
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form BillAddress", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : BUTTON_KeyDown
' DateTime  : 07/12/2008 14:25
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'modify
    End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) ' Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) ' List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'exit
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form BillAddress", vbInformation, head
Screen.MousePointer = 0

End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_KeyDown
' DateTime  : 07/12/2008 14:25
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'modify
    End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) ' Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) ' List
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'exit
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    DATLAB.Caption = pdate
    Opt = "qry"
    stbar.Panels(1).Text = head
    Call query_mode
    intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form BillAddress", vbInformation, head
End Sub

Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
    Opt = " "
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,VARCODE,SPANLEN25,SPANLEN50,SCI,UR,MIC,FIBRESTENGTH,TRASHPER,SFI,ELONGATION,IFC,NEPS,SCN,UHML,ML,UI,maturityratio,FQI,SFC FROM RM_FIBRENORMS ORDER BY VARCODE", DB, adOpenStatic, adLockOptimistic
    
    If adoPrimaryRS.RecordCount > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & "  of  " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Records Found"
        MsgBox "No Records Found", vbInformation, head
    End If
    
    Call bindcontls
    Call NEWFORM1(BUTTON, GSNO)
'    If adoPrimaryRS.RecordCount = 0 Then
'        BUTTON(5).Enabled = False
'        BUTTON(6).Enabled = False
'        BUTTON(7).Enabled = False
'        BUTTON(8).Enabled = False
'        stbar.Panels(2).Text = "No Records Found"
'    Else
'        Call FIR(BUTTON)
'    End If
    desc.Caption = "Query"
    Call disablcontls


Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form BillAddress", vbInformation, head
End Sub

Public Sub bindcontls()
On Error Resume Next
For Each c In Me.Controls
    If TypeOf c Is TextBox Then
         Set c.DataSource = adoPrimaryRS
    End If
Next
End Sub
'---------------------------------------------------------------------------------------
' Procedure : disablcontls
' DateTime  : 07/12/2008 14:25
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub disablcontls()
On Error GoTo disablcontls_Error

For Each c In Me.Controls
    If TypeOf c Is TextBox Then
        c.Locked = True
    End If
Next
Frame1.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub ENABLCONTLS()
Frame1.Enabled = True
For Each c In Me.Controls
    If TypeOf c Is TextBox Then
        c.Locked = False
    End If
Next
End Sub
Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

'---------------------------------------------------------------------------------------
' Procedure : SSTab1_KeyDown
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'modify
    End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) ' Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) ' List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'exit
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
    If Opt <> "add" And Opt <> "mod" Then
        Select Case Index
            Case 0
                Txtfields(1).Text = getMasterName("VARNAME", "RM_VAR", "VARCODE", Txtfields(0).Text)
                
'            Case 5, 8, 17
'                    Call maturitycal
        End Select
    
    End If
    intervalMinutes = -1
End Sub

Private Sub txtFields_GotFocus(Index As Integer)

On Error GoTo txtFields_GotFocus_Error
intervalMinutes = -1

If Opt = "add" Or Opt = "mod" Then
    Txtfields(Index).BackColor = &HC0FFC0
    Select Case Index
        Case 0
            stbar.Panels(2).Text = "Select Variety Code from the Variety List"
        Case 3
            stbar.Panels(2).Text = "Enter 2.5 % Span Length, Maximum 10 Characters"
        Case 4
            stbar.Panels(2).Text = "Enter S.C.I, Maximum 10 Characters"
        Case 5
            stbar.Panels(2).Text = "Enter 50 % Span Length, Maximum 10 Characters"
        Case 6
            stbar.Panels(2).Text = "Enter Uniformity Ratio, Maximum 10 Characters"
        Case 7
            stbar.Panels(2).Text = "Enter Micronaire, Maximum 10 Characters"
        Case 8
            stbar.Panels(2).Text = "Enter Fibre Strength, Maximum 10 Characters"
        Case 9
            stbar.Panels(2).Text = "Enter Trash %, Maximum 10 Characters"
        Case 10
            stbar.Panels(2).Text = "Enter SFI, Maximum 10 Characters"
        Case 11
            stbar.Panels(2).Text = "Enter Elongation, Maximum 10 Characters"
        Case 12
            stbar.Panels(2).Text = "Enter IFC, Maximum 10 Characters"
        Case 13
            stbar.Panels(2).Text = "Enter Neps/Gram, Maximum 10 Characters"
        Case 14
            stbar.Panels(2).Text = "Enter SCN/G, Maximum 10 Characters"
        Case 2
            stbar.Panels(2).Text = "Enter UHML, Maximum 10 Characters"
        Case 15
            stbar.Panels(2).Text = "Enter ML, Maximum 10 Characters"
        Case 16
            stbar.Panels(2).Text = "Enter UI, Maximum 10 Characters"
        Case 16
            stbar.Panels(2).Text = "Enter Maturity Ratio, between 0 and 1"
        Case 16
            stbar.Panels(2).Text = "Enter FQI, Maximum 3 Digits"
        Case 16
            stbar.Panels(2).Text = "Enter SFC, Maximum 5 Digits"
    End Select
End If


Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form BillAddress", vbInformation, head
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'modify
    End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) ' Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) ' List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'exit
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

    If KeyCode = 13 And (Opt = "add" Or Opt = "mod") Then
        SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtFields_KeyPress
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error

    Select Case Index

        Case 3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 7, 2, 15, 16
            Call ToAlphaNumberProperties(Txtfields(Index), 10, KeyAscii)
        Case 17
'                If KeyAscii = 48 Or KeyAscii = 49 Or KeyAscii = 46 Or KeyAscii = 8 Then
'                Else
'                    KeyAscii = 0
'                End If
                 
                  Call ToNumberAssign(Txtfields(Index), 1, KeyAscii, 1, 2)
        
        Case 19
            Call ToNumberAssign(Txtfields(Index), 4, KeyAscii, 1, 1)
    End Select

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case Index
        Case 0
            Call VarietyLookup
            If Trim(Txtfields(Index).Text) = "" Then
                MsgBox "Please enter the variety", vbInformation, head
                If Txtfields(0).Enabled = True Then Txtfields(Index).SetFocus
                Exit Sub
            End If
            
            Case 5, 8, 17
                   
                Call maturitycal
            
                If Index = 17 Then
                  If val(Txtfields(17).Text) <= 1 And val(Txtfields(17).Text) >= 0.1 Then
                   Exit Sub
                  Else
                    MsgBox "Maturity Ratio Range should be between 0 and 1..", vbInformation, head
                    Txtfields(17).Text = 0
                    Txtfields(17).SetFocus
                    Exit Sub
                  End If
                
                End If
                
                 
                 
    End Select
    Txtfields(Index).BackColor = vbWhite
    
End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form BillAddress", vbInformation, head
End Sub
'---------------------------------------------------------------------------------------
' Procedure : Txtfields_Validate
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
'
'Public Sub ToAlphaNumber1(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
'On Error GoTo ToAlphaNumber1_Error
'
'If Len(Ofld) < maxlen Then
'   If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
'           KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
'           (KeyAscii >= 97 And KeyAscii <= 122) Or _
'           KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 95 Or _
'           KeyAscii = 47 Or KeyAscii = 37 Or KeyAscii = 9 Or KeyAscii = 46) Then
'           KeyAscii = 0
'   End If
'Else
'   If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
'End If
'
'Exit Sub
'ToAlphaNumber1_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure ToAlphaNumber1 of Form BillAddress", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'---------------------------------------------------------------------------------------
' Procedure : header
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub header(pg1 As Integer, c As Integer)
On Error GoTo header_Error

    Print #a, Chr(18)
    Print #a, Space(5) & Chr(27) & "E" & CENTRE(divname, 108, " ") & Chr(27) & "F" & Chr(15)
    Str = CStr(pdate) + Space(2)
    Print #a, Space(5) + "Fibre Norms Listing " + Space(107) + "Dt: " & Str + "Pg.:" & Padl(CStr(pg1), 3, " ")
    Print #a, Space(5) + String(152, "-")
    Print #a, Space(5) & Chr(15) & Padr("Variety Name", 20, " ") & Space(1) & Padl("2.5% Span", 10, " ") & Space(1) & Padl("S.C.I.", 10, " ") & Space(1) & Padl("50% Span", 10, " ") & Space(1) & Padl("Uniformi", 10, " ") & Space(1) & Padl("Microna", 10, " ") & Space(1) & Padl("Fibre", 10, " ") & Space(1) & Padl("Trash %", 10, " ") & Space(1) & Padl("S.F.I.", 10, " ") & Space(1) & Padl("Elonga", 10, " ") & Space(1) & Padl("IFC", 10, " ") & Space(1) & Padl("Neps/Gram", 10, " ") & Space(1) & Padl("SCN/G", 10, " ")
    Print #a, Space(5) & Chr(15) & Padr("", 20, " ") & Space(1) & Padl("Length", 10, " ") & Space(1) & Padl("", 10, " ") & Space(1) & Padl("Length", 10, " ") & Space(1) & Padl("-ty Ratio", 10, " ") & Space(1) & Padl(" -ire", 10, " ") & Space(1) & Padl("Strength", 10, " ") & Space(1) & Padl("", 10, " ") & Space(1) & Padl("", 10, " ") & Space(1) & Padl("-tion", 10, " ")
    
'                Print #a, Space(5) & Chr(15) & Padr(Rs("varname"), 20, " ") & Space(1) & Padl(Rs("Spanlen25"), 10, " ") & Space(1) & Padl(Rs("sci"), 10, " ") & Space(1) & Padl(Rs("Spanlen50"), 10, " ") & Space(1) & Padl(Rs("UR"), 10, " ") & Space(1) & Padl(Rs("Mic"), 10, " ") & Space(1) & Padl(Rs("Fibrestength"), 10, " ") & Space(1) & Padl(Rs("trashper"), 10, " ") & Space(1) & Padl(Rs("Sfi"), 10, " ") & Space(1) & Padl(Rs("Elongation"), 10, " ") & Space(1) & Padl(Rs("IFC"), 10, " ") & Space(1) & Padl(Rs("Neps"), 10, " ") & Space(1) & Padl(Rs("scn"), 10, " ")

    Print #a, Space(5) + String(152, "-")
Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub

Sub VarietyLookup()
On Error GoTo StateLookup_Error

'    If Record_Exists("RM_VAR") = True Then Exit Sub: QUERY_MODE
    LookUp.Clear = True
    LookUp.query = "SELECT Varcode ""Variety Code"", varNAME""Variety Name"" FROM RM_VAR where varcode not in(select Distinct varcode from RM_FibreNorms)"
    LookUp.Caption = "Variety Listing"
    LookUp.DefCol = "Variety Name"
    LookUp.ALIGN = "2000,3000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Txtfields(0).Text = LookUp.Fields(0)
        Txtfields(1).Text = LookUp.Fields(1)
        Txtfields(1).Locked = True
        If Txtfields(6).Enabled = True Then Txtfields(6).SetFocus
        LookUp.Clear = True
    Else
        Txtfields(0).Text = ""
        Txtfields(1).Text = ""
        If Txtfields(0).Enabled = True Then Txtfields(0).SetFocus
        Call BUTTON_Click(9)
    End If
    
Exit Sub
StateLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StateLookup of Form slmaster", vbInformation, head
End Sub


Private Sub maturitycal()
If val(Txtfields(7).Text) > 0 Then
    Txtfields(18).Text = Round((val(Txtfields(5).Text) * val(Txtfields(8).Text) * val(Txtfields(17).Text)) / val(Txtfields(7).Text), 0)
Else
    Txtfields(18).Text = 0
End If

End Sub
