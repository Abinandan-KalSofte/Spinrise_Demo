VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form Wasteentry1 
   Caption         =   "Production (Yarn &  Waste)"
   ClientHeight    =   6225
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8385
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6225
   ScaleWidth      =   8385
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   28
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":0000
         Enabled         =   0   'False
         Height          =   550
         Index           =   6
         Left            =   2640
         Picture         =   "openingWasteentry.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   51
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":0797
         Height          =   550
         Index           =   0
         Left            =   0
         Picture         =   "openingWasteentry.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   50
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":0E34
         Enabled         =   0   'False
         Height          =   550
         Index           =   5
         Left            =   2100
         Picture         =   "openingWasteentry.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   49
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":15E3
         Enabled         =   0   'False
         Height          =   550
         Index           =   7
         Left            =   3210
         Picture         =   "openingWasteentry.frx":1A2D
         Style           =   1  'Graphical
         TabIndex        =   48
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":1D7D
         Height          =   550
         Index           =   11
         Left            =   5340
         Picture         =   "openingWasteentry.frx":21C7
         Style           =   1  'Graphical
         TabIndex        =   47
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":255C
         Height          =   550
         Index           =   9
         Left            =   4260
         Picture         =   "openingWasteentry.frx":2866
         Style           =   1  'Graphical
         TabIndex        =   46
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "openingWasteentry.frx":2C08
         Height          =   550
         Index           =   10
         Left            =   4785
         Picture         =   "openingWasteentry.frx":2F12
         Style           =   1  'Graphical
         TabIndex        =   45
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":328E
         Enabled         =   0   'False
         Height          =   550
         Index           =   8
         Left            =   3735
         Picture         =   "openingWasteentry.frx":36D8
         Style           =   1  'Graphical
         TabIndex        =   44
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":3A3A
         Height          =   550
         Index           =   4
         Left            =   1575
         Picture         =   "openingWasteentry.frx":3D44
         Style           =   1  'Graphical
         TabIndex        =   43
         ToolTipText     =   "Find"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":40D9
         Height          =   550
         Index           =   1
         Left            =   525
         Picture         =   "openingWasteentry.frx":43E3
         Style           =   1  'Graphical
         TabIndex        =   42
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "openingWasteentry.frx":475D
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
         Left            =   1050
         Picture         =   "openingWasteentry.frx":4A67
         Style           =   1  'Graphical
         TabIndex        =   41
         ToolTipText     =   "Delete"
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6195
         TabIndex        =   30
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   7605
         TabIndex        =   29
         Top             =   270
         Width           =   630
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
      ScaleWidth      =   8385
      TabIndex        =   15
      Top             =   5625
      Width           =   8385
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   5925
      Width           =   8385
      _ExtentX        =   14790
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KSL"
            TextSave        =   "KSL"
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
            TextSave        =   "16/06/2006"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "3:58 PM"
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
      Height          =   5790
      Left            =   360
      TabIndex        =   17
      Top             =   1035
      Visible         =   0   'False
      Width           =   9960
      _ExtentX        =   17568
      _ExtentY        =   10213
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      WordWrap        =   0   'False
      ShowFocusRect   =   0   'False
      Enabled         =   0   'False
      TabCaption(0)   =   "                   "
      TabPicture(0)   =   "openingWasteentry.frx":4E03
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Height          =   3015
         Left            =   150
         TabIndex        =   40
         Top             =   2520
         Width           =   9585
         Begin MSDataGridLib.DataGrid grdDataGrid 
            Height          =   3300
            Left            =   135
            TabIndex        =   12
            Top             =   195
            Width           =   9195
            _ExtentX        =   16219
            _ExtentY        =   5821
            _Version        =   393216
            AllowArrows     =   -1  'True
            HeadLines       =   1
            RowHeight       =   19
            TabAction       =   1
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   9.75
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
      Begin VB.Frame Frame1 
         Height          =   1935
         Left            =   150
         TabIndex        =   18
         Top             =   120
         Width           =   9540
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
            ItemData        =   "openingWasteentry.frx":4E1F
            Left            =   1680
            List            =   "openingWasteentry.frx":4E2F
            TabIndex        =   55
            Top             =   1440
            Width           =   1935
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
            ItemData        =   "openingWasteentry.frx":4E44
            Left            =   1680
            List            =   "openingWasteentry.frx":4E4E
            TabIndex        =   1
            Top             =   360
            Width           =   1935
         End
         Begin VB.TextBox txtfields 
            DataField       =   "desc2"
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
            Left            =   3015
            TabIndex        =   7
            TabStop         =   0   'False
            Top             =   2475
            Visible         =   0   'False
            Width           =   2430
         End
         Begin VB.TextBox txtfields 
            DataField       =   "PackNo.Code"
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
            Left            =   1680
            MaxLength       =   6
            TabIndex        =   6
            TabStop         =   0   'False
            Top             =   2475
            Visible         =   0   'False
            Width           =   1275
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
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
            Index           =   10
            Left            =   6480
            MaxLength       =   25
            TabIndex        =   11
            Top             =   2460
            Visible         =   0   'False
            Width           =   1140
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "PROD_KGS"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   345
            Index           =   8
            Left            =   1680
            MaxLength       =   11
            TabIndex        =   9
            Top             =   2820
            Visible         =   0   'False
            Width           =   1050
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "tare"
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
            Left            =   4140
            MaxLength       =   25
            TabIndex        =   10
            Top             =   2850
            Visible         =   0   'False
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "PACK_TYPE"
            Height          =   330
            Index           =   4
            Left            =   1635
            MaxLength       =   1
            TabIndex        =   8
            TabStop         =   0   'False
            Top             =   2490
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.TextBox txtfields 
            DataField       =   "desc1"
            Height          =   330
            Index           =   5
            Left            =   2160
            MaxLength       =   6
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   2490
            Visible         =   0   'False
            Width           =   2520
         End
         Begin VB.TextBox txtfields 
            DataField       =   "DESCRIPTION"
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
            Left            =   3030
            MaxLength       =   50
            TabIndex        =   5
            TabStop         =   0   'False
            Top             =   2070
            Visible         =   0   'False
            Width           =   4605
         End
         Begin VB.TextBox txtfields 
            DataField       =   "PRODUCT_CODE"
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
            MaxLength       =   6
            TabIndex        =   4
            Top             =   2070
            Visible         =   0   'False
            Width           =   1275
         End
         Begin MSMask.MaskEdBox MaskEdBox 
            DataField       =   "DATE1"
            Height          =   300
            Left            =   4920
            TabIndex        =   3
            Top             =   960
            Width           =   1140
            _ExtentX        =   2011
            _ExtentY        =   529
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
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "Doc_no"
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
            Index           =   1
            Left            =   1680
            TabIndex        =   2
            Top             =   960
            Width           =   1935
         End
         Begin VB.Label Label7 
            Caption         =   "Shift"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   360
            TabIndex        =   56
            Top             =   1440
            Width           =   1215
         End
         Begin VB.Label Label6 
            Caption         =   "Total Weight"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   6240
            TabIndex        =   54
            Top             =   960
            Width           =   1215
         End
         Begin VB.Label Label5 
            Height          =   375
            Left            =   7680
            TabIndex        =   53
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label Label1 
            Caption         =   "Waste Type"
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
            Left            =   360
            TabIndex        =   52
            Top             =   360
            Width           =   1440
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Tare Wt."
            DataField       =   "Blended"
            Height          =   195
            Index           =   6
            Left            =   3360
            TabIndex        =   33
            Top             =   2520
            Visible         =   0   'False
            Width           =   630
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Pack No Code"
            DataField       =   "Blended"
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
            Left            =   240
            TabIndex        =   32
            Top             =   2565
            Visible         =   0   'False
            Width           =   1440
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Gross Wt."
            DataField       =   "Blended"
            Height          =   195
            Index           =   7
            Left            =   420
            TabIndex        =   31
            Top             =   2895
            Visible         =   0   'False
            Width           =   705
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Net Wt."
            DataField       =   "Blended"
            Height          =   195
            Index           =   5
            Left            =   5760
            TabIndex        =   27
            Top             =   2160
            Visible         =   0   'False
            Width           =   570
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Pack Type"
            DataField       =   "Blended"
            Height          =   195
            Index           =   2
            Left            =   375
            TabIndex        =   26
            Top             =   2565
            Visible         =   0   'False
            Width           =   780
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Document No."
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
            Left            =   300
            TabIndex        =   21
            Top             =   960
            Width           =   1440
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Product"
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
            Left            =   300
            TabIndex        =   20
            Top             =   2145
            Visible         =   0   'False
            Width           =   1440
         End
         Begin VB.Label Label2 
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
            Index           =   4
            Left            =   4080
            TabIndex        =   19
            Top             =   960
            Width           =   795
         End
      End
   End
   Begin VB.Frame Frame5 
      Height          =   1875
      Left            =   1200
      TabIndex        =   34
      Top             =   2040
      Width           =   5820
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   375
         Index           =   100
         Left            =   3195
         MaxLength       =   8
         TabIndex        =   37
         Top             =   750
         Width           =   1155
      End
      Begin VB.CommandButton FindOK 
         Caption         =   "O.K"
         Height          =   390
         Left            =   1365
         TabIndex        =   36
         Top             =   1335
         Width           =   1110
      End
      Begin VB.CommandButton FindCancel 
         Caption         =   "Cancel"
         Height          =   390
         Left            =   2970
         TabIndex        =   35
         Top             =   1335
         Width           =   1110
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Find By Document Number"
         Height          =   195
         Left            =   945
         TabIndex        =   39
         Top             =   780
         Width           =   1905
      End
      Begin VB.Label Label4 
         BackColor       =   &H8000000D&
         Caption         =   "                                  Find"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   300
         Left            =   30
         TabIndex        =   38
         Top             =   120
         Width           =   5745
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4560
      Left            =   450
      TabIndex        =   22
      Top             =   975
      Visible         =   0   'False
      Width           =   8820
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         Height          =   630
         Left            =   4050
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   3870
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   630
         Left            =   2610
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   3870
         Width           =   1185
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3120
         Left            =   615
         TabIndex        =   0
         Top             =   555
         Width           =   7725
         _ExtentX        =   13626
         _ExtentY        =   5503
         caption         =   ""
      End
      Begin VB.Label listlb 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Caption"
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
         Height          =   315
         Left            =   45
         TabIndex        =   25
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Waste Packing"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   345
      Left            =   435
      TabIndex        =   14
      Top             =   675
      Width           =   1905
   End
End
Attribute VB_Name = "Wasteentry1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim c2 As Double
Dim startno As Integer
Dim row As Integer
Dim c1 As Double
Dim adoSecondaryRS As Recordset
Dim rs As Recordset
Dim db As Connection
Dim Opt As String
Dim STR As String
Dim PC As String
Dim rs1 As New Recordset
Dim SP As New Recordset
Public type1 As String
Dim rsCommand1 As Recordset
Dim New1DocNo   As Integer
Dim st1 As String
Dim st2 As String
Dim sno As Integer
Dim noofpacks As Integer
Dim lastpack As Integer
Dim endpack As Integer
Dim st As String
Dim disRe As String
Dim RowNo As Integer
Dim TPkNo As Integer
Dim oPKGS As Double
Dim tarwt As Integer
Dim r1, r2, s1, s2 As Double
Dim twt As Double
Private Sub BUTTON_Click(Index As Integer)
 Select Case Index
    Case 0
        ' add
         If Record_Exists("IG_Product where (Wastetype like 'U%' or Wastetype like 'S%')", "Please Define the Waste type in Master") = False Then Exit Sub
         
         Opt = "add"
         desc.Caption = "Addition"
         stbar.Panels(2).Text = "Addition"
         db.BeginTrans
         SSTab1.Tab = 0
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate,shift from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.PRODUCT_CODE and a.doc_type='O' AND 1=2", db, adOpenStatic, adLockOptimistic
         adoPrimaryRS.AddNew
         Set adoSecondaryRS = New Recordset
         adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where 1=2 ", db, adOpenStatic, adLockBatchOptimistic
         Set grddatagrid.DataSource = adoSecondaryRS
         adoSecondaryRS.AddNew
         Call ENABLCONTLS
         Call bindcontls
         Call nullText  'To null the Textboxes
         txtFields(5).Text = ""
         txtFields(3).Text = ""
         txtFields(4).Text = ""
         Label5.Caption = ""
         sno = 0
         twt = 0
'         Set RS1 = New Recordset
'         RS1.Open "select isnull(max(LAST_NO),0) from IG_DOCCONTROL where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='I ' and DOC_REF = 'WS' and DESCRIPTION = 'WASTE SALES'  and START_NO = '1 ' ", DB, adOpenStatic, adLockBatchOptimistic
'         New1DocNo = RS1(0) + 1
'         txtfields(1).Text = YearNo & Padl(CStr(New1DocNo), 6, "0")
         txtFields(1).Enabled = False
         Call adddelmod(BUTTON)
         txtFields(2).Enabled = True
         MaskEdBox.Text = pdate
         txtFields(2).Enabled = True
         SSTab1.Enabled = True
         Frame1.Enabled = True
         MaskEdBox.Enabled = True
         txtFields(2).Locked = True
         txtFields(3).Locked = True
         txtFields(1).Locked = True
         Combo1.SetFocus
         Combo1.ListIndex = 0
         'MaskEdBox.SetFocus
         Call gridalign
         grddatagrid.Columns(0).Visible = True
         Combo2.ListIndex = 3
         
  Case 1
            ' Modification
            If Record_Exists("IG_RPACKHD") = False Then Exit Sub
            Opt = "mod"
            desc.Caption = "Modification"
            Screen.MousePointer = 11
            SSTab1.Visible = False
            db.BeginTrans
            Frame3.Visible = True
            Frame3.ZOrder
            Buttonframe.Enabled = False
            listlb.Caption = "Waster Entry"
            ksldesc1.conn = connectstring
'            Ksldesc1.table = "IG_RPACKHD a,ig_product b where a.product_code=b.product_code and a.product_code like 'W%' "
'            Ksldesc1.listfield1 = "(doc_no+'-'+b.description) as DocNo"
'            Ksldesc1.listfield2 = "date"
            ksldesc1.table = "(select a.doc_no,a.date,b.Description as description from IG_RPACKHD a,ig_product b where a.product_code=b.product_code union select a.doc_no,a.date,b.wdes as description from IG_RPACKHD a,rm_wastetype b where a.product_code=b.wcode)x "
            ksldesc1.listfield1 = "(x.doc_no+'-'+x.description) as DocNo"
            'Ksldesc1.listfield1 = "x.doc_no as DocNo"
            ksldesc1.listfield2 = "x.date"
            ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select Document Number from the List"
            Call adddelmod(BUTTON)
            Call ENABLCONTLS
            Screen.MousePointer = 0
  Case 2
            If Record_Exists("IG_RPACKHD") = False Then Exit Sub
            Opt = "del"
            desc.Caption = "Deletion"
            Screen.MousePointer = 11
            SSTab1.Visible = False
            db.BeginTrans
            Frame3.Visible = True
            Frame3.ZOrder
            Buttonframe.Enabled = False
            listlb.Caption = "Waster Entry"
            ksldesc1.conn = connectstring
            'Ksldesc1.table = "IG_RPACKHD a,ig_product b where a.product_code=b.product_code "
            ksldesc1.table = "iG_RPACKhd"
            ksldesc1.listfield1 = "doc_no"
            'Ksldesc1.listfield1 = "x.doc_no as DocNo"
            ksldesc1.listfield2 = "date"
            ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select Document Number from the List"
            Call adddelmod(BUTTON)
            Call ENABLCONTLS
            Screen.MousePointer = 0

  Case 4
         If Record_Exists("IG_RPACKHD") = False Then Exit Sub
             Opt = "find"
             desc.Caption = "Find"
             SSTab1.Enabled = True
             Frame5.Visible = True
             Frame5.ZOrder
             Frame5.Enabled = True
             txtFields(100).Locked = False
             txtFields(100).Text = ""
             Buttonframe.Enabled = False
             SSTab1.Tab = 0
             SSTab1.SetFocus
         If SSTab1.Visible = True Then
                Frame1.Enabled = True
                Frame1.Visible = True
'                Frame2.Enabled = True
'                Frame2.Visible = True
'                Frame4.Visible = True
'                Frame4.Enabled = False
                txtFields(100).SetFocus
         End If


  
  Case 5
'first
         On Error Resume Next
           Set adoPrimaryRS = New Recordset
           'adoPrimaryRS.Open "select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,IG_Product b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.product_code  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO UNION select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.WDES,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,RM_WASTETYPE b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.Wcode  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO", db, adOpenStatic, adLockBatchOptimistic
           adoPrimaryRS.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE' from IG_RPACKHD a Where a.divcode = '" & Divcode & "' ", db, adOpenStatic, adLockBatchOptimistic
           If Not adoPrimaryRS.EOF Then
           adoPrimaryRS.MoveFirst
            
           Call bindcontls
           twt = 0
           Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where DOC_NO= '" & adoPrimaryRS("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%')", db, adOpenStatic, adLockBatchOptimistic
            Do While Not adoSecondaryRS.EOF
        twt = twt + adoSecondaryRS("Nett Wt.")
        adoSecondaryRS.MoveNext
        Loop
        
        Label5.Caption = Val(twt)
            Set grddatagrid.DataSource = adoSecondaryRS
            Call gridalign
           If adoSecondaryRS("type") = "U" Then
           Combo1.Text = "U-Usable Waste"
           Else
           Combo1.Text = "S-Salable Waste"
           End If
            grddatagrid.Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
         End If
      
            
Case 6
'next
            On Error Resume Next
           Set adoPrimaryRS = New Recordset
           'adoPrimaryRS.Open "select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,IG_Product b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.product_code  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO UNION select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.WDES,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,RM_WASTETYPE b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.Wcode  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO", db, adOpenStatic, adLockBatchOptimistic
           adoPrimaryRS.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE' from IG_RPACKHD a Where a.divcode = '" & Divcode & "' ", db, adOpenStatic, adLockBatchOptimistic
           If Not adoPrimaryRS.EOF Then
           If adoPrimaryRS.RecordCount > 1 Then
            pr = adoPrimaryRS("doc_no")
            dr = adoPrimaryRS("date")
            Do While pr = adoPrimaryRS("doc_no") And dr = adoPrimaryRS("date")
                pr = adoPrimaryRS("doc_no")
                dr = adoPrimaryRS("date")
                adoPrimaryRS.MoveNext
            Loop
             End If
           Call bindcontls
           twt = 0
           Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where DOC_NO= '" & adoPrimaryRS("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%')", db, adOpenStatic, adLockBatchOptimistic
            Do While Not adoSecondaryRS.EOF
        twt = twt + adoSecondaryRS("Nett Wt.")
        adoSecondaryRS.MoveNext
        Loop
        
        Label5.Caption = Val(twt)
            Set grddatagrid.DataSource = adoSecondaryRS
            Call gridalign
           If adoSecondaryRS("type") = "U" Then
           Combo1.Text = "U-Usable Waste"
           Else
           Combo1.Text = "S-Salable Waste"
           End If
            
            grddatagrid.Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
         End If
Case 7
 'privous
 On Error Resume Next
           Set adoPrimaryRS = New Recordset
           'adoPrimaryRS.Open "select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,IG_Product b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.product_code  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO UNION select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.WDES,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,RM_WASTETYPE b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.Wcode  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO", db, adOpenStatic, adLockBatchOptimistic
           adoPrimaryRS.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE' from IG_RPACKHD a Where a.divcode = '" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
           If Not adoPrimaryRS.EOF Then
           If adoPrimaryRS.RecordCount >= 1 Then
            pr = adoPrimaryRS("doc_no")
            dr = adoPrimaryRS("date")
            Do While pr = adoPrimaryRS("doc_no") And dr = adoPrimaryRS("date")
                pr = adoPrimaryRS("doc_no")
                dr = adoPrimaryRS("date")
                adoPrimaryRS.MovePrevious
            Loop
             End If
           Call bindcontls
           Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where DOC_NO= '" & adoPrimaryRS("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%')", db, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
            Call gridalign
           If adoSecondaryRS("type") = "U" Then
           Combo1.Text = "U-Usable Waste"
           Else
           Combo1.Text = "S-Salable Waste"
           End If
            grddatagrid.Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
         End If
       
Case 8
'last
           On Error Resume Next
           Set adoPrimaryRS = New Recordset
           'adoPrimaryRS.Open "select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,IG_Product b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.product_code  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO UNION select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.WDES,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,RM_WASTETYPE b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.Wcode  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO", db, adOpenStatic, adLockBatchOptimistic
           adoPrimaryRS.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE' from IG_RPACKHD a Where a.divcode = '" & Divcode & "' ", db, adOpenStatic, adLockBatchOptimistic
           If Not adoPrimaryRS.EOF Then
           If adoPrimaryRS.RecordCount > 1 Then
            pr = adoPrimaryRS("doc_no")
            dr = adoPrimaryRS("date")
            Do While pr = adoPrimaryRS("doc_no") And dr = adoPrimaryRS("date")
                pr = adoPrimaryRS("bo_no")
                dr = adoPrimaryRS("date")
                adoPrimaryRS.MoveLast
            Loop
             End If
           Call bindcontls
           twt = 0
           Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where DOC_NO= '" & adoPrimaryRS("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%')", db, adOpenStatic, adLockBatchOptimistic
            Do While Not adoSecondaryRS.EOF
        twt = twt + adoSecondaryRS("Nett Wt.")
        adoSecondaryRS.MoveNext
        Loop
        
        Label5.Caption = Val(twt)
            Set grddatagrid.DataSource = adoSecondaryRS
            Call gridalign
           If adoSecondaryRS("type") = "U" Then
           Combo1.Text = "U-Usable Waste"
           Else
           Combo1.Text = "S-Salable Waste"
           End If
            grddatagrid.Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
         End If
    Case 9
        '   Save
      
        On Error GoTo saveerror
        
        If Opt = "add" Then
'            If Trim(txtFields(2).Text) = "" Then
'                MsgBox "Product Can't be Empty", vbInformation, head
'                txtFields(2).SetFocus
'                Exit Sub
'            End If
            If Not IsDate(MaskEdBox.Text) = True Then
                MsgBox "Enter the Valid Date", vbInformation, head
                MaskEdBox.SetFocus
                Exit Sub
            End If
'            If Trim(txtFields(4).Text) = "" Then
'                MsgBox "Product Type Can't be Empty", vbInformation, head
'                txtFields(4).SetFocus
'                Exit Sub
'            End If
'            If Trim(txtfields(6).Text) = "" Then
'                MsgBox "Pack No Can't be Empty", vbInformation, head
'                txtfields(6).SetFocus
'                Exit Sub
'            End If
            
            GROSSWT = 0
            tarewt = 0
            netwt = 0
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                    If IsNull(adoSecondaryRS(3)) = True Or Val(adoSecondaryRS(3).Value) = 0 Then
                        adoSecondaryRS.Delete
                    Else
                            GROSSWT = GROSSWT + Val(adoSecondaryRS(3).Value)
                            tarewt = tarewt + Val(tarwt)
                            netwt = netwt + Val(adoSecondaryRS(4).Value)
                    End If
                    
                adoSecondaryRS.MoveNext
            Loop
            txtFields(8).Text = Val(GROSSWT)
            txtFields(9).Text = Val(tarewt)
            txtFields(10).Text = Val(netwt)
            If Val(GROSSWT) <> Val(txtFields(8).Text) Then
                    MsgBox "Gross Weight Not Tally", vbInformation, head
                    Exit Sub
                    Opt = "opt"
            ElseIf Val(tarewt) <> Val(txtFields(9).Text) Then
                    MsgBox "Tare Weight Not Tally", vbInformation, head
                    Exit Sub
                    Opt = "opt"
            Else
                If Val(netwt) <> Val(txtFields(10).Text) Then
                    MsgBox "Tare Weight Not Tally", vbInformation, head
                    Exit Sub
                    Opt = "add"
                End If
            End If
            
            '--------------------------------------------
            
            'FILTERING THE TENDER PARTY
''            If (Month(MaskEdBox.Text) = 4 Or Month(MaskEdBox.Text) = 5 Or Month(MaskEdBox.Text) = 6) Then QUA = "I"
''            If (Month(MaskEdBox.Text) = 7 Or Month(MaskEdBox.Text) = 8 Or Month(MaskEdBox.Text) = 9) Then QUA = "II"
''            If (Month(MaskEdBox.Text) = 10 Or Month(MaskEdBox.Text) = 11 Or Month(MaskEdBox.Text) = 12) Then QUA = "III"
''            If (Month(MaskEdBox.Text) = 1 Or Month(MaskEdBox.Text) = 2 Or Month(MaskEdBox.Text) = 3) Then QUA = "IV"
''            Set rs = New Recordset
''            rs.Open "SELECT * FROM IG_TENDER FINAL WHERE QUARTER='" & QUA & "' AND PRODUCT_CODE='" & TXTFIELDS(2).Text & "' AND DIVCODE='" & divcode & "'", DB, adOpenStatic
''            If Not rs.EOF Then
''                TRATE = rs("RATE")
''                CUST_CODE = rs("PARTY")
''            Else
''                If QUA = "II" Then QUA = "I"
''                If QUA = "III" Then QUA = "II"
''                If QUA = "IV" Then QUA = "III"
''                If QUA = "I" Then QUA = "IV"
''                Set rs = New Recordset
''                rs.Open "SELECT * FROM IG_TENDER FINAL WHERE QUARTER='" & QUA & "' AND PRODUCT_CODE='" & TXTFIELDS(2).Text & "' AND DIVCODE='" & divcode & "'", DB, adOpenStatic
''                If Not rs.EOF Then
''                    TRATE = rs("rate")
''                    CUST_CODE = rs("party")
''                Else
''                    MsgBox "Previous tender not avaliabale "
''                    TRATE = 0
''                    CUST_CODE = ""
''                End If
''            End If
            
            '--------------------------------------------
            
            
            
            
            
            trate = 0
            cust_code = ""
            
            adoPrimaryRS("DIVCODE") = Divcode
            adoPrimaryRS("DOC_TYPE") = "I"
            adoPrimaryRS("DOC_NO") = txtFields(1).Text
            adoPrimaryRS("DATE") = Format(MaskEdBox.Text, "yyyy-mm-dd")
            adoPrimaryRS("PRODUCT_CODE") = ""
            adoPrimaryRS("PROD_Kgs") = txtFields(10).Text
            adoPrimaryRS("Use_SrKgs") = "N" 'txtfields(8).Text / txtfields(10).Text
            adoPrimaryRS("user_id") = usrid
            adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
            adoPrimaryRS("shift") = Trim(Combo2.Text)
            adoPrimaryRS.UpdateBatch adAffectAll
            '-------------- UPDATION IN WASTE ENTRY ---------------------------------------------------------------------------------------------------------
'            Set rs = New Recordset
'            rs.Open "select * from ig_wastetrn where pdate='" & Format(MaskEdBox.Text, "dd-mmm-yy") & "' and product_Code='" & txtfields(2).Text & "' ", DB, adOpenStatic
'            If Not rs.EOF Then
'                DB.Execute "Update ig_wastetrn set pack_kgs=" & netwt & " where product_code='" & txtfields(2).Text & "' and pdate='" & Format(MaskEdBox.Text, "dd-mmm-yy") & "' ", a
'            Else
'                DB.Execute "insert into ig_wastetrn(pdate,pack_kgs,PRODUCT_CODE) values ('" & Format(MaskEdBox.Text, "dd-mmm-yy") & "', " & netwt & ",'" & txtfields(2).Text & "')"
'            End If
            '---------------UPDATION IN WASTE ENTRY----------------------------------------------------------------------------------------------------------
            
            
             
            Set rs = New Recordset
            rs.Open "Select isnull(Max(EPack_No),0) from IG_RPACKDT where doc_type='I' and PackNo_Code='" & txtFields(6).Text & "' and Product_Code='" & txtFields(2).Text & "' AND DIVCODE='" & Divcode & "' and Pack_Year='" & YearNo & "'", db, adOpenStatic, adLockOptimistic
            ' To insert the Line Details into IG_RPACKDT
            
                
                k = 0
                adoSecondaryRS.MoveFirst
                Do While Not adoSecondaryRS.EOF
                 k = k + 1
                        db.Execute "Insert into IG_RPACKDT (DivCode,Doc_Type,Doc_No,Sl_No,Product_Code," & _
                        "Pack_Year,PackNo_Code,Pack_Type,Lot_Code,SPack_No,EPack_No,Pack_Wt,Tare,Kgs,TYPE) Values " & _
                        "('" & Divcode & "','I','" & txtFields(1).Text & "'," & k & ",'" & UCase(adoSecondaryRS(1)) & _
                        "'," & YearNo & ",'BA','B' " & _
                        ",'WL'," & adoSecondaryRS(0).Value & "," & adoSecondaryRS(0).Value & "," & adoSecondaryRS(3).Value & _
                        ", " & Val(tarwt) & "," & adoSecondaryRS(4).Value & ",'" & Trim(Left(Combo1.Text, 1)) & "')"
                        
                        db.Execute "INSERT INTO IG_RPACKNOS (DIVCODE,PACK_YEAR,PACKNO_CODE,PACK_NO,PROD_DATE,PACK_TYPE,PRODUCT_CODE,PACK_WT,tare,LOT_CODE,INVOICED)" & _
                                    " VALUES( '" & Divcode & "'," & YearNo & ",'BA'," & Val(adoSecondaryRS(0).Value) & ",'" & Format(MaskEdBox.Text, "YYYY-MM-DD") & "','B','" & UCase(adoSecondaryRS(1)) & "'," & Val(adoSecondaryRS(4).Value) & "," & Val(tarwt) & " ,'WL','N')"
                    
                
                adoSecondaryRS.MoveNext
                Loop
            
            ' To insert the Pack Number details into the Table IG_RPACKNOS
            Opt = "add"
'''            DB.Execute "update IG_DOCCONTROL set last_no ='" & New1DocNo & "' where doc_type='O'and doc_ref='PP'AND DIVCODE='" & divcode & "' and Year_No='" & YearNo & "'", a
            db.Execute "update IG_DOCCONTROL set last_no ='" & New1DocNo & "' where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='i ' and DOC_REF = 'WS' and DESCRIPTION = 'WASTE SALES'  and START_NO = '1 '", a
'''           RS1.Open "select isnull(max(LAST_NO),0) from IG_DOCCONTROL where divcode='" & divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='O ' and DOC_REF = 'PP' and DESCRIPTION = 'Packing & Production'  and START_NO = '1 ' ", DB, adOpenStatic, adLockBatchOptimistic
            
'-------
            'Call WRG1Details
'            Set RS1 = New Recordset
'            RS1.Open "select rg1 from IG_product where product_code='" & txtfields(2).Text & "'", db
'            If RS1(0) = "Y" Then
'            Set RS1 = New Recordset
'            RS1.Open "select * from IG_RG1TRN where divcode='" & divcode & "' and Product_code='" & Trim(txtfields(2).Text) & "' and date = '" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
'            If (RS1.RecordCount = 0) Then
'               OP_PACKS1 = Val(adoSecondaryRs.RecordCount)
'               OP_PACKKGS1 = Val(netwt)
'               '''Db.Execute ("insert IG_RG1TRN(DIVCODE,DATE,PRODUCT_CODE,OPEN_KGS,PROD_KGS,HOME_KGS,HOME_VALUE,EXP_KGS,EXP_VALUE,AR3A_KGS,BED_AMT,AED_AMT,LOOSE_KGS,DUTY_SALES,dispose,Reuse,Prod_packs,prod_pkgs,OP_PACKS,OP_PACKKGS) values('" & divcode & "','" & Format(MaskEdBox.Text, "yyyy/mm/dd") & "','" & txtFields(2).Text & "','" & Val(txtFields(6).Text) & "','" & Val(txtFields(10).Text) & "',0.000,0.000,0.000,0.000,0.000,0.00,0.00,'" & Val(txtFields(13).Text) & "',0.00,'" & Val(txtFields(20).Text) & "','" & Val(txtFields(21).Text) & "','" & Val(txtFields(11).Text) & "','" & Val(txtFields(12).Text) & "','" & Val(OP_PACKS1) & "','" & Val(OP_PACKKGS1) & "')")
'               db.Execute ("insert IG_RG1TRN(DIVCODE,DATE,PRODUCT_CODE,OPEN_KGS,PROD_KGS,Prod_packs,prod_pkgs,OP_PACKS,OP_PACKKGS) " & _
'                "values('" & divcode & "','" & Format(MaskEdBox.Text, "yyyy/mm/dd") & _
'                "','" & txtfields(2).Text & "','" & OpKgs & "','" & Val(txtfields(8).Text) & _
'                "'," & txtfields(10).Text & "," & txtfields(8).Text & ",'" & Val(OP_PACKS1) & "','" & Val(OP_PACKKGS1) & "')")
'            Else
'                Set rg = New Recordset
'                rg.Open "select PROD_KGS,PACKS,pack_kgs,loose_kgs,Dispose,Reuse,prod_packs,prod_pkgs from IG_RG1TRN where divcode='" & divcode & "' and Product_code='" & Trim(txtfields(2).Text) & "' and date = '" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
'               OP_PACKS1 = Val(adoSecondaryRs.RecordCount)
'               OP_PACKKGS1 = Val(netwt)
'               db.Execute "update IG_RG1TRN set PROD_KGS='" & Val(txtfields(8).Text) + rg("prod_kgs") & "',prod_packs='" & Val(txtfields(10).Text) + rg("prod_packs") & "',prod_pkgs='" & Val(txtfields(8).Text) + rg("prod_pkgs") & "',OP_PACKS='" & Val(OP_PACKS1) & "',OP_PACKKGS='" & Val(OP_PACKKGS1) & "' where divcode='" & divcode & "' and Product_code='" & Trim(txtfields(2).Text) & "'  and date = '" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "'"
'            End If
'            End If
'-------

            db.CommitTrans
            Screen.MousePointer = 0
            MsgBox " Record Saved Successfully", vbInformation, head
                
            stbar.Panels(2).Text = "Record Saved Successfully"
            sno = 0
            twt = 0
            Call query_mode
            Exit Sub
            End If
        
        If Opt = "mod" Then
            
            GROSSWT = 0
            tarewt = 0
            netwt = 0
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                    If IsNull(adoSecondaryRS(2)) = True Or Val(adoSecondaryRS(2).Value) = 0 Then
                        adoSecondaryRS.Delete
                    Else
                            GROSSWT = GROSSWT + Val(adoSecondaryRS(2).Value)
                            tarewt = tarewt + Val(adoSecondaryRS(3).Value)
                            netwt = netwt + Val(adoSecondaryRS(4).Value)
                    End If
                    
                adoSecondaryRS.MoveNext
            Loop
            txtFields(8).Text = Val(GROSSWT)
            txtFields(9).Text = Val(tarewt)
            txtFields(10).Text = Val(netwt)
            
            '--------------------------------------------
            
            'FILTERING THE TENDER PARTY
'''            If (Month(MaskEdBox.Text) = 4 Or Month(MaskEdBox.Text) = 5 Or Month(MaskEdBox.Text) = 6) Then QUA = "I"
'''            If (Month(MaskEdBox.Text) = 7 Or Month(MaskEdBox.Text) = 8 Or Month(MaskEdBox.Text) = 9) Then QUA = "II"
'''            If (Month(MaskEdBox.Text) = 10 Or Month(MaskEdBox.Text) = 11 Or Month(MaskEdBox.Text) = 12) Then QUA = "III"
'''            If (Month(MaskEdBox.Text) = 1 Or Month(MaskEdBox.Text) = 2 Or Month(MaskEdBox.Text) = 3) Then QUA = "IV"
'''            Set RS = New Recordset
'''            RS.Open "SELECT * FROM IG_TENDER FINAL WHERE QUARTER='" & QUA & "' AND PRODUCT_CODE='" & TXTFIELDS(2).Text & "' AND DIVCODE='" & divcode & "'", DB, adOpenStatic
'''            If Not RS.EOF Then
'''                trate = RS("RATE")
'''                cust_code = RS("PARTY")
'''            Else
'''                If QUA = "II" Then QUA = "I"
'''                If QUA = "III" Then QUA = "II"
'''                If QUA = "IV" Then QUA = "III"
'''                Set RS = New Recordset
'''                RS.Open "SELECT * FROM IG_TENDER FINAL WHERE QUARTER='" & QUA & "' AND PRODUCT_CODE='" & TXTFIELDS(2).Text & "' AND DIVCODE='" & divcode & "'", DB, adOpenStatic
'''                trate = RS("RATE")
'''                cust_code = RS("PARTY")
'''            End If
            
            '--------------------------------------------
            trate = 0
            cust_code = ""
            
            If Opt = "mod" Then
                db.Execute "Update IG_RPACKHD set PROD_Kgs=" & txtFields(8).Text & "    where date='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "' and Doc_No='" & txtFields(1).Text & "' and product_code='" & txtFields(2).Text & "'", a
                adoSecondaryRS.MoveFirst
                Do While Not adoSecondaryRS.EOF
                    db.Execute "update IG_RPACKNOS set PACK_WT=" & adoSecondaryRS(2).Value & " ,tare=" & adoSecondaryRS(3).Value & "  where prod_date='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "' and pack_no=" & adoSecondaryRS(1) & " and product_code='" & txtFields(2).Text & "'", b
                    db.Execute "Update IG_RPACKDT set pack_wt='" & adoSecondaryRS(2).Value & "',tare=" & adoSecondaryRS(3).Value & ",kgs='" & adoSecondaryRS(4).Value & "'    where Doc_No='" & txtFields(1).Text & "' and product_code='" & txtFields(2).Text & "' and spack_no='" & adoSecondaryRS(1) & "'", x
                adoSecondaryRS.MoveNext
                Loop
            End If
            
            db.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record Modified Successfully", vbInformation, head
            stbar.Panels(2).Text = "Record Modified Successfully"
            Opt = ""
            Call query_mode
            Call cancl1(BUTTON, 26)
            Exit Sub
        End If
        If Opt = "del" Then
            f% = MsgBox("Are you sure !! to delete this Record ", vbOKCancel, head)
            If f% = 1 Then
                Do While Not adoSecondaryRS.EOF
                    'db.Execute "update ig_wastetrn set pack_kgs=pack_kgs-" & IIf(grddatagrid.Columns(4).Text = "", 0, Val(grddatagrid.Columns(4).Text)) & " where product_code='" & adoPrimaryRS("product_code") & "' and pdate='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "'", a
                    db.Execute "delete from  IG_RPACKNOS where divcode='" & Divcode & "'  and product_code='" & adoSecondaryRS(1) & "' and prod_date='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "' and pack_no=" & adoSecondaryRS("Bale No.") & "", a
                    adoSecondaryRS.MoveNext
                Loop
                    db.Execute "delete from IG_RPACKDT where doc_no='" & txtFields(1).Text & "' AND DIVCODE='" & Divcode & "'"
                    db.Execute "delete from  IG_RPACKHD where divcode='" & Divcode & "' and doc_no= '" & txtFields(1).Text & "' and date='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "'", a
                    MsgBox "Record Deleted Successfully", vbInformation, head
                    db.CommitTrans
                    Call query_mode
                    Screen.MousePointer = 0
                    Exit Sub
            Else
                    MsgBox "Operation Cancelled", vbInformation, head
                    db.RollbackTrans
                    Call query_mode
                    Screen.MousePointer = 0
                    Exit Sub
            End If
        End If
                          
saveerror:     'If Opt = "add" Then
                If err.Number <> 0 Then
                    MsgBox err.description, vbInformation, head
                    Screen.MousePointer = 0
                    db.RollbackTrans
                    Opt = " "
                    Call query_mode
                    Exit Sub
               End If
   Case 10
        'CANCEL
            desc.Caption = "Query"
            Screen.MousePointer = 11
            Select Case Opt
            Case "mod"
                db.RollbackTrans
            Case "add"
                txtFields(6).Text = ""
                txtFields(7).Text = ""
                txtFields(8).Text = ""
                txtFields(9).Text = ""
                txtFields(10).Text = ""
                db.RollbackTrans
          Case "del"
                db.RollbackTrans
        End Select
        Screen.MousePointer = 0
        stbar.Panels(2).Text = "Operation Cancelled"
        Opt = " "
        Call query_mode
        Call cancl1(BUTTON, 26)
        
    Case 11
        Unload Me
  End Select
End Sub

Public Sub WRG1Details()
    Set rs1 = New Recordset
    rs1.Open "select PACK_WT  from IG_product  where PRODUCT_CODE= '" & txtFields(2).Text & "' and divcode =  '" & Divcode & "'", db, adOpenStatic
    Set SP = New Recordset
    SP.Open "select OPEN_KGS,PACKS,PACK_KGS,LOOSE_KGS,prod_kgs ,isnull(HOME_KGS,0)+isnull(EXP_KGS,0)+isnull(AR3A_KGS,0)as salekg,PROD_PKGS,PROD_PACKS,OP_PACKKGS,OP_PACKS from IG_RG1TRN where PRODUCT_CODE='" & txtFields(2).Text & "' and divcode = '" & Divcode & "' AND  date = (select max(date) from IG_RG1TRN where product_code='" & txtFields(2) & "' and divcode='" & Divcode & "')", db, adOpenStatic, adLockBatchOptimistic
    
    If SP.RecordCount <= 0 Then
    End If
    
    If rs1.RecordCount > 0 And Not SP.EOF Then
         oPKGS = (Val(SP("OPEN_KGS")) + Val(SP("prod_kgs"))) - Val(SP("salekg"))
'         txtfields(7).Text = (Val(txtfields(6).Text) - sp("loose_kgs")) / Val(rs1("pack_wt"))
'         txtfields(8).Text = Val(txtfields(7).Text * rs1("pack_wt"))
'         txtfields(9).Text = Round(Val(txtfields(6).Text - txtfields(8).Text), 2)
'         txtfields(10).SetFocus
    Else
        oPKGS = 0
    End If
End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

Private Sub Combo1_LostFocus()
If Opt = "add" Then
    If Combo1.Text = " " Then
        MsgBox "Select any Type from the drop down list", vbInformation, head
        Combo2.SetFocus
        Exit Sub
  Else
           Set rs1 = New Recordset
         rs1.Open "select isnull(max(LAST_NO),0) from IG_DOCCONTROL where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='I ' and DOC_REF = 'WS' and DESCRIPTION = 'WASTE SALES'  and START_NO = '1 ' ", db, adOpenStatic, adLockBatchOptimistic
         New1DocNo = rs1(0) + 1
         txtFields(1).Text = YearNo & "TMS" & CStr(New1DocNo)
  End If
  End If
End Sub

Private Sub Form_Load()
    Set db = New Connection
    db.ConnectionTimeout = 0
    db.CommandTimeout = 0
    db.CursorLocation = adUseClient
    db.Open connectstring
    DATLAB.Caption = Date
    Opt = "qry"
    stbar.Panels(1).Text = head
    YearNo = Right(Year(yfdate), 2)
    Set rs1 = New Recordset
    rs1.Open "select * from IG_doccontrol where divcode='" & Divcode & "' and DOC_TYPE='I'and DOC_REF='WS' AND YEAR_NO='" & YearNo & "'", db, adOpenStatic
    If rs1.RecordCount = 0 Then
        Set rs = New Recordset
        rs.Open "insert IG_doccontrol values('" & Divcode & " ','" & YearNo & "','O','PP','Packing & Production','1','0')", db, adOpenStatic, adLockBatchOptimistic
    End If
    Set tarers = New Recordset
    tarers.Open "select tarewt from rm_param", db, adOpenStatic
    tarwt = tarers(0)
    SSTab1.Visible = True
    Frame5.Visible = False
    Call query_mode
End Sub

Public Sub query_mode()
    On Error Resume Next
    Opt = " "
    BUTTON(9).Enabled = False
    
    Set rs = New Recordset
    'rs.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE," & _
        "b.Description 'PrDesc',c.pack_type ,c.Description 'PkDesc',e.packno_code," & _
        "d.Description 'PNDesc',e.kgs,e.tare,0 as 'NoPks',E.TYPE from IG_RPACKHD a,IG_Product b,IG_packtype c," & _
        "IG_packnotype d,IG_RPACKDT e Where a.divcode = B.divcode and a.doc_No=e.doc_No " & _
        "and a.product_Code=e.product_code and a.product_code=b.product_code " & _
        "and e.pack_type=c.pack_type and e.packno_code=d.packno_code and a.product_code like 'W%'", db, adOpenStatic, adLockReadOnly
    rs.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',b.type,a.shift from IG_RPACKHD a,IG_RPACKDT b Where a.divcode = B.divcode and a.doc_No=b.doc_No and (b.type like 'U%' or b.type like 'S%')", db, adOpenStatic, adLockReadOnly
    
    If rs.EOF <> True Then
        txtFields(1).Text = rs!doc_no
        MaskEdBox.Text = Format(rs!Date, "dd/mm/yyyy")
        
        'txtfields(6).Text = rs!packno_code
        'txtfields(7).Text = rs!PnDesc
        Combo2.Text = rs!Shift
        If rs!Type = "U" Then
        Combo1.Text = "U-Usable Waste"
        Else
        Combo1.Text = "U-Salable Waste"
        End If
        twt = 0
        Set adoSecondaryRS = New Recordset
        'adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where DOC_NO= '" & rs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.type='" & rs!Type & "'", db, adOpenStatic, adLockBatchOptimistic
        adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where DOC_NO= '" & rs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%')", db, adOpenStatic, adLockBatchOptimistic
        Do While Not adoSecondaryRS.EOF
        twt = twt + adoSecondaryRS("Nett Wt.")
        adoSecondaryRS.MoveNext
        Loop
        
        Label5.Caption = Val(twt)
        Set grddatagrid.DataSource = adoSecondaryRS
        Call gridalign
    Else
        MsgBox "No Record Found", vbInformation, head
        Set grddatagrid.DataSource = Nothing
        Exit Sub
    End If
    'If adoPrimaryRS.RecordCount = 0 Then
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
    'Else
        Call las(BUTTON)
        Call cancl1(BUTTON, 26)
   ' End If

    desc.Caption = "Query"
    SSTab1.Tab = 0
    SSTab1.TabVisible(0) = True
    Call disablcontls
 End Sub

Public Sub bindcontls()
    On Error Resume Next
        For Each c In Me.Controls
            If TypeOf c Is TextBox Then
              Set c.DataSource = adoPrimaryRS
            End If
        Next
        Set MaskEdBox.DataSource = adoPrimaryRS
'        Set grdDataGrid.DataSource = adoSecondaryRS
End Sub
Public Sub disablcontls()
      For Each c In Me.Controls
        If TypeOf c Is TextBox Then
           c.Locked = True
        End If
      Next
      Frame1.Enabled = False
End Sub

Public Sub ENABLCONTLS()
      Frame1.Enabled = True
      For Each c In Me.Controls
        If TypeOf c Is TextBox Then
          c.Locked = False
        End If
      Next
      Frame1.Enabled = True
      'Frame2.Enabled = True
'      Frame4.Enabled = True
End Sub
Private Sub Form_Resize()
    On Error Resume Next
    stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub





Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
Dim rs As Recordset
If ColIndex = 0 Then
    If grddatagrid.Columns(1).Text = Empty Or grddatagrid.Columns(1).Text = "" Then
        stbar.Panels(2).Text = "Bale Number cannot be empty"
    Else
        Set rs = New Recordset
        rs.Open "select 'X'  from IG_RPACKNOS where divcode='" & Divcode & "' AND PACKNO_CODE='" & txtFields(6).Text & "' AND PACK_NO=" & Val(adoSecondaryRS(1).Value) & "", db, adOpenStatic, adLockBatchOptimistic
        If Not rs.BOF Then
            stbar.Panels(2).Text = "Bale No already exists."
            SendKeys ("{delete}")
            grddatagrid.COL = 0
            grddatagrid.SetFocus
            st = "A"
            Exit Sub
        End If
        Opt = "  "
        Code = grddatagrid.Columns(1).Text
        a = adoSecondaryRS.AbsolutePosition
        adoSecondaryRS.MoveFirst
        For i = 1 To adoSecondaryRS.RecordCount
            If Val(a) <> i Then
            If Val(Code) = Val(adoSecondaryRS(1).Value) Then
                stbar.Panels(2).Text = "Bale Number should not repeat"
                adoSecondaryRS.AbsolutePosition = a
                SendKeys ("{delete}")
                grddatagrid.COL = 0
                grddatagrid.SetFocus
                st = "A"
                Opt = "add"
                Exit Sub
            End If
            End If
            If i <> adoSecondaryRS.RecordCount Then
                adoSecondaryRS.MoveNext
            End If
        Next i
        Opt = "add"
    End If
End If
If ColIndex = 1 Then
If Record_Exists("IG_Product where (Wastetype like 'U%' or Wastetype like 'S%') and divcode='" & Divcode & "'", "Please Define the Waste type in Master") = False Then Exit Sub
        
        Set rs = New Recordset
        rs.Open " select description from ig_product where product_code='" & UCase(grddatagrid.Columns(1).Text) & "'", db, adOpenStatic
        If rs.RecordCount > 0 Then
        grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
        grddatagrid.Columns(2).Text = rs(0)
        grddatagrid.COL = 3
        grddatagrid.SetFocus
        Else
        Frame3.Visible = True
                Frame3.ZOrder
'                Buttonframe.Enabled = False
                listlb.Caption = "Product List"
                ksldesc1.conn = connectstring
                ksldesc1.table = "IG_Product where divcode='" & Divcode & "'  and wastetype='" & Left(Combo1.Text, 1) & "'"
                ksldesc1.listfield1 = "PRODUCT_CODE"
                ksldesc1.listfield2 = "DESCRIPTION"
                ksldesc1.SetFocus
                type1 = "product"
                stbar.Panels(2).Text = "Select Product Code from the List"
                ksldesc1.SetFocus
        End If
End If
If Opt = "add" Or Opt = "mod" Then
        If Opt = "add" Then
            If grddatagrid.COL = 4 Then
            grddatagrid.Columns(4).Text = Val(grddatagrid.Columns(2).Text) - Val(grddatagrid.Columns(3).Text)
            End If
        ElseIf Opt = "mod" Then
            grddatagrid.Columns(4).Text = Val(grddatagrid.Columns(2).Text) - Val(grddatagrid.Columns(3).Text)
        End If
End If

End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
If Opt = "add" And KeyCode = vbKeyTab And grddatagrid.COL = 4 And Len(grddatagrid.Columns(4).Text) > 0 And (adoSecondaryRS.AbsolutePosition = adoSecondaryRS.RecordCount) Then
        adoSecondaryRS.AddNew
        adoSecondaryRS.MovePrevious
        startno = Val(grddatagrid.Columns(0).Text)
        twt = twt + Val(grddatagrid.Columns(4).Text)
        Label5.Caption = Val(twt)
        startno = startno + 1
        adoSecondaryRS.MoveNext
        grddatagrid.Columns(0).Text = startno
        grddatagrid.COL = 0
        grddatagrid.SetFocus
        
End If
If grddatagrid.COL = 1 And Opt = "add" Then
If Record_Exists("IG_Product where (Wastetype like 'U%' or Wastetype like 'S%') and divcode='" & Divcode & "'", "Please Define the Waste type in Master") = False Then Exit Sub
        
        Set rs = New Recordset
        rs.Open " select description from ig_product where product_code='" & UCase(grddatagrid.Columns(1).Text) & "'", db, adOpenStatic
        If rs.RecordCount > 0 Then
        grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
        grddatagrid.Columns(2).Text = rs(0)
        grddatagrid.COL = 3
        grddatagrid.SetFocus
        Else
        Frame3.Visible = True
                Frame3.ZOrder
'                Buttonframe.Enabled = False
                listlb.Caption = "Product List"
                ksldesc1.conn = connectstring
                ksldesc1.table = "IG_Product where divcode='" & Divcode & "'  and wastetype='" & Left(Combo1.Text, 1) & "'"
                ksldesc1.listfield1 = "PRODUCT_CODE"
                ksldesc1.listfield2 = "DESCRIPTION"
                ksldesc1.SetFocus
                type1 = "product"
                stbar.Panels(2).Text = "Select Product Code from the List"
                ksldesc1.SetFocus
        End If
  End If
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error Resume Next
    If Opt = "add" And LastRow = Empty Then
        If grddatagrid.COL = 4 And grddatagrid.Columns(3).Text = "" Then
        MsgBox " Enter The Gross Weight", vbInformation, head
        grddatagrid.COL = 3
        grddatagrid.SetFocus
        Else
            If LastRow = Empty And grddatagrid.Columns(3).Text <> "" Then
                grddatagrid.Columns(4).Text = Val(grddatagrid.Columns(3).Text) - Val(tarwt)
            End If
        End If
    End If
End Sub

Private Sub lovcancel_Click()
        stbar.Panels(2).Text = ""
        Buttonframe.Enabled = True
        Frame3.Visible = False
        SSTab1.Visible = True
        Frame1.Enabled = True
        Screen.MousePointer = 0
        stbar.Panels(2).Text = "Operation Cancelled"
End Sub



Private Sub lovok_Click()

          Frame3.Visible = False
          SSTab1.Visible = True
          'Command1.Visible = True
          Buttonframe.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          'Command1.Visible = True
          
        Select Case ksldesc1.listfield1
        Case "PRODUCT_CODE"
            disRe = ""  'Flag that is used to check whether Dispose & Reuse are Enabled or Not.
            grddatagrid.Columns(1).Text = ksldesc1.Code
            grddatagrid.Columns(2).Text = ksldesc1.description
            txtFields(2).Enabled = False
            txtFields(3).Enabled = False

            grddatagrid.COL = 3
            grddatagrid.SetFocus
                
                
            
        Case "wcode as PRODUCT_CODE"
                 txtFields(2).Text = ksldesc1.Code
                 txtFields(3).Text = ksldesc1.description
                 txtFields(2).Enabled = False
                 txtFields(3).Enabled = False
'                 Set rs = New Recordset
'                 'rs.Open "select sum(a.netwt) -isnull((select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "'),0) from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
'                 rs.Open "select sum(a.netwt) -isnull((select sum(b.netwt) from rm_wissue b where  b.wcode='" & Ksldesc1.Code & "'),0) from rm_waste a where  a.wcode='" & Ksldesc1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
'                 If Not rs.EOF Then txtfields(10).Text = IIf(IsNull(rs(0)), 0, rs(0))
'                If Val(txtfields(10).Text) = 0 Then
'                    MsgBox "All the Production Entry Has Been Completed", vbInformation, head
'                    Exit Sub
'                End If
                Set SP = New Recordset
                SP.Open "select isnull(max(isnull(epack_no,0))+1,1) from IG_RPACKDT where type='" & Left(Combo1.Text, 1) & "' and lot_code='WL' AND PACK_YEAR='" & Right(yfdate, 1) & "'", db, adOpenStatic
                'SP.Open "select isnull(max(isnull(pack_no,0))+1,1) from IG_Rpacknos where packno_code='" & txtfields(6).Text & "' and lot_code='WL' and prod_date between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "'", DB, adOpenStatic
                grddatagrid.Columns(1).Text = SP(0)
                startno = SP(0)
                grddatagrid.COL = 0
                grddatagrid.SetFocus
                
                'txtfields(6).SetFocus
            
'        Case "PACKNO_CODE"
'                SSTab1.Enabled = True
'                txtfields(6).Text = Ksldesc1.Code
'                txtfields(7).Text = Ksldesc1.description
'                Set SP = New Recordset
'                SP.Open "select isnull(max(isnull(epack_no,0))+1,1) from IG_RPACKDT where type='" & Left(Combo1.Text, 1) & "' and lot_code='WL' AND PACK_YEAR='" & Right(yfdate, 1) & "'", DB, adOpenStatic
'                'SP.Open "select isnull(max(isnull(pack_no,0))+1,1) from IG_Rpacknos where packno_code='" & txtfields(6).Text & "' and lot_code='WL' and prod_date between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "'", DB, adOpenStatic
'                grddatagrid.Columns(1).Text = SP(0)
'                startno = SP(0)
'                grddatagrid.COL = 0
'                grddatagrid.SetFocus
             
        Case "LOT_CODE"
              grddatagrid.Columns(7).Text = ksldesc1.Code
              
              Set SP = New Recordset
              SP.Open "select max(epack_no) from IG_RPACKDT where product_code = '" & Trim(txtFields(2).Text) & "'", db, adOpenStatic, adLockBatchOptimistic
              
              If Not IsNull(SP(0)) = True Then
                grddatagrid.Columns(8).Text = Val(SP(0) + 1)
                'Easwar grddatagrid.Columns(9).Text = Val(grddatagrid.Columns(8).Text) + Val(txtfields(11).Text)
                grddatagrid.Columns(9).Text = Val(SP(0)) + Val(txtFields(11).Text)
              End If
              
              grddatagrid.COL = 8
              grddatagrid.SetFocus
              type1 = ""
              Exit Sub
         Case "pack_type"
              txtFields(4).Text = ksldesc1.Code
              txtFields(18).Text = ksldesc1.description
              txtFields(4).Enabled = False
              txtFields(18).Enabled = False
              Call rg1Details
        Case "doc_no", "(x.doc_no+'-'+x.description) as DocNo"
            If Opt = "mod" Then
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.PRODUCT_CODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockOptimistic
                 'adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.PRODUCT_CODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "' UNION select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,RM_WASTETYPE b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.WCODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                If Not rs.EOF Then
                    Call bindcontls
                    MaskEdBox.Text = Format(adoPrimaryRS("date"), "dd/mm/yyyy")
                    Set rs = New Recordset
                    rs.Open "Select description AS description from ig_product where product_code='" & adoPrimaryRS("product_code") & "' and divcode='" & Divcode & "' UNION Select WDES AS description from RM_WASTETYPE where Wcode='" & adoPrimaryRS("product_code") & "' and divcode='" & Divcode & "' ", db, adOpenStatic
                    If Not rs.EOF Then txtFields(3).Text = rs(0)
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select sl_no'Sl.No.',spack_no'Bale No.',pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.'from IG_RPACKDT where doc_no='" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' ", db, adOpenStatic, adLockBatchOptimistic
                    Set grddatagrid.DataSource = adoSecondaryRS
                    Call gridalign
                    SSTab1.Enabled = True
                    MaskEdBox.Enabled = False
                    txtFields(2).Locked = True
                    txtFields(3).Locked = True
                    txtFields(1).Locked = True
                    
                End If

            Else
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.doc_type='I' AND doc_no= '" & ksldesc1.Code & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockOptimistic
                 'adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "' UNION select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,RM_WASTETYPE b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.WCODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockOptimistic
                If Not rs.EOF Then
                    Call bindcontls
                    MaskEdBox.Text = Format(adoPrimaryRS("date"), "dd/mm/yyyy")
                    Set rs = New Recordset
                    rs.Open "Select description from ig_product where product_code='" & adoPrimaryRS("product_code") & "' and divcode='" & Divcode & "'", db, adOpenStatic
                    If Not rs.EOF Then txtFields(3).Text = rs(0)
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where a.product_code=b.product_code and doc_no='" & ksldesc1.Code & "' ", db, adOpenStatic, adLockBatchOptimistic
                    Set grddatagrid.DataSource = adoSecondaryRS
                    Call gridalign
                End If
         
            End If
   End Select
        
          
        
End Sub

Private Sub MaskEdBox_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And Opt = "add" Then
    

Set SP = New Recordset
SP.Open "select isnull(max(isnull(epack_no,0))+1,1) from IG_RPACKDT where divcode='" & Divcode & "' and lot_code='WL' and type='" & Left(Combo1.Text, 1) & "'", db, adOpenStatic
If Not SP.EOF Then
 grddatagrid.Columns(0).Text = SP(0)
 startno = SP(0)
 End If
 grddatagrid.COL = 1
 grddatagrid.SetFocus
Exit Sub
End If
End Sub

Private Sub MaskEdBox_Validate(Cancel As Boolean)
If MaskEdBox.Text <> "__/__/____" Then
    MaskEdBox.Text = Format(MaskEdBox.Text, "dd/mm/yyyy")
End If
End Sub


Private Sub txtFields_GotFocus(Index As Integer)
 Select Case Index
    Case 10
        stbar.Panels(2).Text = "Enter the Production in Kgs"
    Case 11
        If (disRe = "Enabled") Then
        stbar.Panels(2).Text = "If Packing is done then Enter the Number of Packs,Else enter the values of Dispose and Reuse"
        Else
        stbar.Panels(2).Text = "If packing is done then enter the Number of Packs.Else go for Save or Cancel Option"
        End If
    Case 2
        stbar.Panels(2).Text = "Select Product Code from the List"
    Case 4
        stbar.Panels(2).Text = "Select Pack Type from the List"
 End Select
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
Call ToUpCase(txtFields, KeyAscii)
 If Opt = "add" Then
 Select Case Index

       Case 2
     Case 6, 10, 14, 8, 12, 16, 9, 13, 17, 20, 21
           Call ToWeight(txtFields(Index), 7, KeyAscii)
     Case 5
            Call ToWeight(txtFields(Index), 3, KeyAscii)
      Case 7, 11, 15
            Call ToNumber1(txtFields(Index), 5, KeyAscii)
       
    ' To set Focus to Reuse
        Case 11
            If KeyAscii = 9 Then
                        Cancel = True
                        txtFields(20).SetFocus
                        Exit Sub
            End If
  End Select
 End If
End Sub

Public Sub tonum1(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
If Len(Ofld) < maxlen Then
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 95 Or _
            KeyAscii = 47 Or KeyAscii = 37 Or KeyAscii = 9 Or KeyAscii = 46) Then
        KeyAscii = 0
    End If
 Else
    If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
 End If
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
If Frame3.Visible = True Then
    ksldesc1.SetFocus
End If
If Opt = "add" Then
Select Case Index
    Case 11
            txtFields(12).SetFocus
            
    Case 20
            
            If txtFields(20).Text = "" Then
                Cancel = True
                txtFields(20).SetFocus
                Exit Sub
             Else
                Cancel = True
                txtFields(21).SetFocus
                Exit Sub
             End If
 End Select
 End If
End Sub

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Then
 Select Case Index
    Case 2
        
           'If Left(Combo1.Text, 1) = "S" Then
           
            Set rs1 = New Recordset
            rs1.Open "select PRODUCT_CODE,description from IG_Product where divcode = '" & Divcode & "' and PRODUCT_CODE='" & Trim(txtFields(2).Text) & "'", db, adOpenStatic
            If rs1.RecordCount > 0 Then
                txtFields(2).Text = rs1("PRODUCT_CODE")
                txtFields(3).Text = rs1("description")
                Set rs = New Recordset
                rs.Open "select * from ig_packnotype where packno_code='" & txtFields(2).Text & "' and divcode='" & Divcode & "'", db, adOpenStatic
                If Not rs.EOF Then
                    txtFields(6).Text = rs(1)
                    txtFields(7).Text = rs(2)
                    Set adoPrimaryRS1 = New Recordset
                    adoPrimaryRS1.Open "select a.PACK_WT, a.pack_type , b.description desc1 from  IG_PRODUCT a , IG_packtype  b  where PRODUCT_code='" & txtFields(2).Text & "' and divcode = '" & Divcode & "'  ", db, adOpenStatic
                    txtFields(4).Text = adoPrimaryRS1("Pack_type")
                    txtFields(5).Text = adoPrimaryRS1("desc1")
                    Set rs = New Recordset
                    rs.Open "select * from ig_packnotype where packno_code='" & txtFields(6).Text & "'", db, adOpenStatic
                    If Not rs.EOF Then
                        txtFields(6).Text = rs(1)
                        txtFields(7).Text = rs(2)
                        Set SP = New Recordset
                        SP.Open "select isnull(max(isnull(epack_no,0))+1,1) from IG_RPACKDT where product_code = '" & Trim(txtFields(2).Text) & "' and packno_code='" & txtFields(6).Text & "' and lot_code='WL'", db, adOpenStatic
                        If Not rs.EOF Then
                            grddatagrid.Columns(1).Text = SP(0)
                            startno = SP(0)
                        End If
                        grddatagrid.COL = 2
                        grddatagrid.SetFocus
                        Exit Sub
                    End If
                    Exit Sub
                Else
                    MsgBox "Please Modify this Product type", vbInformation, head
                    Exit Sub
                End If
                type1 = "product"
                txtFields(2).Enabled = False
                txtFields(3).Enabled = False
                Set rs = New Recordset
                If (Left(Trim(txtFields(2).Text), 1) = "W" Or Left(Trim(txtFields(2).Text), 1) = "w") Then
                    'txtFields(20).Enabled = True
                    'txtFields(21).Enabled = True
                    disRe = "Enabled"
                    lKgs = 0
                Else
                    txtFields(20).Text = 0
                    txtFields(21).Text = 0
                    txtFields(20).Enabled = False
                    txtFields(21).Enabled = False
                End If
                txtFields(10).Enabled = True
                
                If Opt = "add" And (type1 = "product") Then
                    Set adoPrimaryRS1 = New Recordset
                    adoPrimaryRS1.Open "select PACK_WT,pack_type from IG_PRODUCT a where divcode = '" & Divcode & "' and PRODUCT_code='" & Trim(txtFields(2).Text) & "' ", db, adOpenStatic, adLockOptimistic
                    txtFields(5).Text = adoPrimaryRS1(0)
                    type1 = ""
                    If IsNull(adoPrimaryRS1(1)) Then
                        SSTab1.Visible = False
                        Frame3.Visible = True
                        Frame3.ZOrder
'                        Buttonframe.Enabled = False
                        listlb.Caption = "Pack Type"
                        ksldesc1.conn = connectstring
                        ksldesc1.table = "IG_packtype"
                        ksldesc1.listfield1 = "pack_type"
                        ksldesc1.listfield2 = "DESCRIPTION"
                        ksldesc1.SetFocus
                        stbar.Panels(2).Text = "Select Pack Type from the List"
                    Else
                        Set adoPrimaryRS1 = New Recordset
                        adoPrimaryRS1.Open "select a.pack_type,b.description from IG_PRODUCT a ,IG_packtype b where PRODUCT_code='" & Trim(txtFields(2).Text) & "' and a.pack_type=b.pack_type and a.divcode = '" & Divcode & "'", db, adOpenStatic, adLockOptimistic
                        txtFields(4).Text = adoPrimaryRS1(0)
                       ' txtFields(18).Text = adoprimaryrs1(1)
                        txtFields(4).Enabled = False
                        txtFields(18).Enabled = False
                        Call rg1Details
                    End If
                End If
            Else
                'SSTab1.Visible = False
                If Record_Exists("IG_Product where Product_Code like 'W%' and divcode='" & Divcode & "'", "Please Define the Waste type in Master") = False Then Exit Sub
                Frame3.Visible = True
                Frame3.ZOrder
'                Buttonframe.Enabled = False
                listlb.Caption = "Product List"
                ksldesc1.conn = connectstring
                ksldesc1.table = "IG_Product where Product_Code like 'W%' and divcode='" & Divcode & "'  and wastetype='" & Left(Combo1.Text, 1) & "'"
                ksldesc1.listfield1 = "PRODUCT_CODE"
                ksldesc1.listfield2 = "DESCRIPTION"
                ksldesc1.SetFocus
                type1 = "product"
                stbar.Panels(2).Text = "Select Product Code from the List"
                ksldesc1.SetFocus
            End If
    
    
    Case 6
            Set rs = New Recordset
            rs.Open "Select * from IG_packnotype  where packno_code ='" & txtFields(6).Text & "' and divcode='" & Divcode & "'", db, adOpenStatic
            If Not rs.EOF Then
                txtFields(7).Text = rs("description")
            Else
                Frame3.Visible = True
                Frame3.ZOrder
                listlb.Caption = "Packnos Listing"
                ksldesc1.conn = connectstring
                ksldesc1.table = "IG_packnotype"
                ksldesc1.listfield1 = "PACKNO_CODE"
                ksldesc1.listfield2 = "DESCRIPTION"
                ksldesc1.SetFocus
                stbar.Panels(2).Text = "Select Product Code from the List"
                ksldesc1.SetFocus
            End If

    Case 10
            grddatagrid.COL = 1
            grddatagrid.SetFocus
            Exit Sub
        
    Case 11
           If ((Val(txtFields(11).Text) * Val(txtFields(5).Text)) > (Val(txtFields(9).Text) + Val(txtFields(10).Text))) Then
                nop = CInt((Val(txtFields(9).Text) + Val(txtFields(10).Text)) / Val(txtFields(5).Text))
                msg = "Number of Packs can't be greater than " & (nop - 1) & ""
                MsgBox msg, vbInformation, head
'                SSTab1.TabVisible(0) = True
 '               txtfields(11).Text = ""
  '              Cancel = True
   '             txtfields(11).SetFocus
                Exit Sub
            
            Else
                txtFields(12).Text = Val(txtFields(11).Text) * Val(txtFields(5).Text)
                txtFields(13).Text = (Val(txtFields(9).Text) + Val(txtFields(10).Text)) - (Val(txtFields(12).Text))
                txtFields(14).Text = Val(txtFields(6).Text) + Val(txtFields(10).Text)
                txtFields(15).Text = Val(txtFields(7).Text) + Val(txtFields(11).Text)
                txtFields(16).Text = Val(txtFields(8).Text) + Val(txtFields(12).Text)
                txtFields(17).Text = Val(txtFields(14).Text) - Val(txtFields(16).Text)
               
                txtFields(12).Enabled = True
                txtFields(13).Enabled = True
                txtFields(14).Enabled = False
                txtFields(15).Enabled = False
                txtFields(16).Enabled = False
                txtFields(17).Enabled = False
                txtFields(12).SetFocus
             End If
     
    Case 12
        If Trim(txtFields(12).Text) = "" Then Exit Sub
                'txtfields(12).Text = Val(txtfields(11).Text) * Val(txtfields(5).Text)
                txtFields(13).Text = (Val(txtFields(9).Text) + Val(txtFields(10).Text)) - (Val(txtFields(12).Text))
                txtFields(14).Text = Val(txtFields(6).Text) + Val(txtFields(10).Text)
                txtFields(15).Text = Val(txtFields(7).Text) + Val(txtFields(11).Text)
                txtFields(16).Text = Val(txtFields(8).Text) + Val(txtFields(12).Text)
                txtFields(17).Text = Val(txtFields(14).Text) - Val(txtFields(16).Text)
               
                txtFields(12).Enabled = True
                txtFields(13).Enabled = True
                txtFields(14).Enabled = False
                txtFields(15).Enabled = False
                txtFields(16).Enabled = False
                txtFields(17).Enabled = False
                txtFields(12).SetFocus
           If (disRe = "") And (Val(txtFields(11).Text) > 0) Then
                        Call Gridcall ' Procedure for Line Details.
              ElseIf (disRe = "Enabled") And (Val(txtFields(11).Text) > 0) Then
                        txtFields(13).Enabled = True
                        txtFields(20).Enabled = True
                        txtFields(21).Enabled = True
                        stbar.Panels(2).Text = "Enter a Maximum of 7 Digits with a maximum of 2 Digits"
                        Cancel = True
                        txtFields(20).SetFocus
                        Exit Sub
               ElseIf (disRe = "Enabled") And (Val(txtFields(11).Text) = 0) Then
                        Cancel = True
                        txtFields(20).SetFocus
                        Exit Sub
        Else
            If (Val(txtFields(11).Text) > 0) Then
                Call Gridcall ' Procedure for Line Details.
            End If
        End If

 Case 13
        txtFields(14).Text = Val(txtFields(6).Text) + Val(txtFields(10).Text)
        txtFields(15).Text = Val(txtFields(7).Text) + Val(txtFields(11).Text)
        txtFields(16).Text = Val(txtFields(8).Text) + Val(txtFields(12).Text)
        txtFields(17).Text = Val(txtFields(14).Text) - Val(txtFields(16).Text)
        txtFields(19).Text = Val(txtFields(10).Text)
 Case 20
        If Trim(txtFields(20).Text) = Null Or Trim(txtFields(20).Text) = "" Then
            MsgBox "Dispose can't be null", vbInformation, head
            txtFields(20).SetFocus
            Exit Sub
        
        ElseIf (Val(txtFields(13).Text) - Val(txtFields(20).Text) < 0) Then
            MsgBox "Enter Correct values of Dispose", vbInformation, head
            txtFields(20).Text = ""
            txtFields(20).SetFocus
            Exit Sub
        Else
            txtFields(21).SetFocus
            Exit Sub
        End If
        
 
 Case 21
        If Trim(txtFields(21).Text) = Null Or Trim(txtFields(21).Text) = "" Then
            MsgBox "Dispose can't be null", vbInformation, head
            txtFields(20).SetFocus
            Exit Sub
        ElseIf (Val(txtFields(13).Text) - (Val(txtFields(20).Text) + Val(txtFields(21).Text)) < 0) Then
            MsgBox "Enter Correct values of Reuse", vbInformation, head
            txtFields(21).Text = ""
            Exit Sub
            
         Else
            lKgs = txtFields(13).Text
            txtFields(13).Text = lKgs - (Val(txtFields(20).Text) + Val(txtFields(21).Text))
            If Trim(txtFields(11).Text) <> 0 Then
               Call Gridcall 'Procedure for Line Details.
            Else
               BUTTON(9).SetFocus 'To Save the Record
            End If
        End If
 End Select
End If
End Sub

Public Sub nullText()
    txtFields(6).Text = ""
    txtFields(7).Text = ""
    txtFields(8).Text = ""
    txtFields(9).Text = ""
    txtFields(10).Text = ""
'    txtfields(11).Text = ""
'    txtfields(12).Text = ""
'    txtfields(13).Text = ""
'    txtfields(14).Text = ""
'    txtfields(15).Text = ""
'    txtfields(16).Text = ""
'    txtfields(17).Text = ""
'    txtfields(18).Text = ""
'    txtfields(20).Text = ""
'    txtfields(21).Text = ""
    Index = 0
'    SSTab1.TabEnabled(1) = True
End Sub

Public Sub GridNavigation(Optional docNo As String)
On Error Resume Next
           Set adoPrimaryRS = New Recordset
           'adoPrimaryRS.Open "select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,IG_Product b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.product_code  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO UNION select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.WDES,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,RM_WASTETYPE b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.Wcode  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO", db, adOpenStatic, adLockBatchOptimistic
           adoPrimaryRS.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',b.type from IG_RPACKHD Where a.divcode = '" & Divcode & "' and a.doc_No== '" & rs!doc_no & "'", db, adOpenStatic, adLockBatchOptimistic
           Call bindcontls
           Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where DOC_NO= '" & rs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and a.product_code like 'W%'", db, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
            Call gridalign
           If adoSecondaryRS("type") = "U" Then
           Combo1.Text = "U-Usable Waste"
           Else
           Combo1.Text = "S-Salable Waste"
           End If
           
End Sub

   Public Sub Gridcall()
                     txtFields(11).Locked = True
                     SSTab1.TabEnabled(1) = True
                     SSTab1.Tab = 1
                     SSTab1.SetFocus
                     SSTab1.Visible = False
                     'grdDataGrid.EditActive = True
'                     grdDataGrid.AllowAddNew = True
'                     grdDataGrid.AllowUpdate = True
                     Set adoSecondaryRS = New Recordset
                     'adoSecondaryRS.Open "select a.divcode,a.doc_type,a.doc_no,a.sl_no 'S.No.',a.product_code 'Prod.Code',a.pack_year'Pack Year',a.packno_code'PackNo. Code',a.spack_no 'Start Pack No.',a.epack_no 'End Pack No.'a.pack_wt,a.tare 'Tare',a.lot_code,a.kgs 'Kgs',a.pack_type from IG_RPACKDT a,IG_packnotype b,IG_Product c,IG_Rlot d where a.packno_code=b.packno_code and a.product_code=c.product_code and a.divcode=b.divcode,a.lot_code=d.lot_code and a.divcode=d.divcode and 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                     adoSecondaryRS.Open "select a.divcode,a.doc_type,a.doc_no,a.sl_no'S.No.',a.product_code'Prod.Code',a.pack_year'Pack Year',a.packno_code'PackNo. Code',a.lot_code,a.spack_no 'Start Pack No.',a.epack_no 'End Pack No.',a.pack_wt 'Pack Wt.',a.tare 'Tare',a.kgs 'Kgs',a.pack_type from IG_RPACKDT a,IG_packnotype b,IG_Product c,IG_RPACKHD d,IG_Rlot l where a.packno_code=b.packno_code and a.product_code=c.product_code and a.divcode=b.divcode and a.lot_code=l.lot_code and a.divcode = '" & Divcode & "' and 1=2", db, adOpenStatic, adLockBatchOptimistic
                    ' Set grdDataGrid.DataSource = adoSecondaryRS
                     adoSecondaryRS.AddNew
                    
'                     grdDataGrid.Columns(0).Width = 0
'                     grdDataGrid.Columns(1).Width = 0
'                     grdDataGrid.Columns(2).Width = 0
'                     grdDataGrid.Columns(13).Width = 0
'                     grdDataGrid.Columns(0).Visible = False
'                     grdDataGrid.Columns(1).Visible = False
'                     grdDataGrid.Columns(2).Visible = False
'                     grdDataGrid.Columns(13).Visible = False
'
                     sno = 1
                     noofpacks = 0
                     endpack = Val(txtFields(11).Text)
                     rep = ""
                     st1 = ""   'String used to set Focus for a particular Column
                     st2 = ""   'String used to test the Null value of a column
'                     grdDataGrid.Columns(3).Text = sno
'                     grdDataGrid.Columns(4).Text = (txtfields(2).Text)
'                     grdDataGrid.Columns(5).Text = Mid(MaskEdBox.Text, 7, 4)
'                     grdDataGrid.Columns(10).Text = (txtfields(5).Text)
                     Set rx = New Recordset
                     rx.Open "Select packno_code from IG_packnotype", db
                     If rx.RecordCount > 1 Then
                        listlb.Caption = "Pack Number List"
                        ksldesc1.conn = connectstring
                        ksldesc1.table = "IG_packnotype"
                        ksldesc1.listfield1 = "PACKNO_CODE"
                        ksldesc1.listfield2 = "DESCRIPTION"
                        Frame3.Visible = True
                        Frame3.ZOrder
                        ksldesc1.SetFocus
                        type1 = "product"
                        stbar.Panels(2).Text = "Select Pack Number Code From the List"
                     Else
                          grddatagrid.Columns(6).Text = rx(0)
                          SSTab1.Visible = True
                          Set rx = New Recordset
                          rx.Open "Select lot_code from IG_Rlot", db
                          If rx.RecordCount = 1 Then
                                grddatagrid.Columns(7).Text = rx(0)
                                grddatagrid.COL = 8
                                grddatagrid.SetFocus
                          End If
                     End If
  End Sub
Private Sub FindCancel_Click()
        txtFields(100).Text = ""
        desc.Caption = "Query"
        Frame5.Visible = False
        Buttonframe.Enabled = True
End Sub

Private Sub FindOK_Click()
            Screen.MousePointer = 11
            Buttonframe.Enabled = True
            If txtFields(100).Text = "" Then
               MsgBox "DocNo cannot be empty", vbInformation, head
                txtFields(100).SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
            Call query_mode
            txtFields(100).Text = ""
            txtFields(100).SetFocus
            Screen.MousePointer = 0
            Exit Sub
            
            Set adoPrimaryRS1 = New Recordset
            adoPrimaryRS1.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,C.DESCRIPTION AS DESC1 from IG_RPACKHD a,IG_Product b,IG_packtype C where a.divcode='" & Divcode & "' and a.product_code=b.product_code and B.PACK_TYPE=C.PACK_TYPE AND Doc_no='" & Trim(txtFields(100).Text) & "'", db, adOpenStatic, adLockBatchOptimistic
        
            If adoPrimaryRS1.RecordCount > 0 Then
                Set ADOSECONDARYRS1 = New Recordset
                ADOSECONDARYRS1.Open "select a.divcode,a.doc_type,a.doc_no,a.sl_no'S.No.',a.product_code'Prod.Code',a.pack_year'Pack Year',a.packno_code'PackNo. Code',a.spack_no 'Start Pack No.',a.epack_no 'End Pack No.',a.pack_wt 'Pack Wt.',a.tare 'Tare',a.kgs 'Kgs' from IG_RPACKDT a,IG_packnotype b,IG_Product c,IG_RPACKHD d where a.packno_code=b.packno_code and a.product_code=c.product_code and a.divcode='" & Divcode & "' and a.doc_no=d.doc_no and a.doc_no='" & adoPrimaryRS1(2) & "' order by 'S.No.'", db, adOpenStatic, adLockBatchOptimistic
            
                If ADOSECONDARYRS1.RecordCount > 0 Then
                        Set grddatagrid.DataSource = ADOSECONDARYRS1
                        
                    Else
                        Set rs = New Recordset
                        rs.Open "select * from IG_RPACKDT where divcode = '" & Divcode & "' and 1=2", db
                        Set grddatagrid.DataSource = rs
                End If
            Else
                MsgBox "No record Found for  " & Trim(txtFields(100).Text) & "  DocNo", vbInformation, head
                txtFields(100).Text = ""
                txtFields(100).SetFocus
                Screen.MousePointer = 0
                Exit Sub
 
            End If
        ' To Bind the Controls
             For Each c In Me.Controls
                If TypeOf c Is TextBox Then
                  Set c.DataSource = adoPrimaryRS1
                End If
            Next
             Set MaskEdBox.DataSource = adoPrimaryRS1
             txtFields(18).Text = adoPrimaryRS1("DESC1")
            
                grddatagrid.Columns(0).Width = 0
                grddatagrid.Columns(1).Width = 0
                grddatagrid.Columns(2).Width = 0
                grddatagrid.Columns(0).Visible = False
                grddatagrid.Columns(1).Visible = False
                grddatagrid.Columns(2).Visible = False

        ' To Disable the Controls
             For Each c In Me.Controls
                 If TypeOf c Is TextBox Then
                   c.Locked = True
                 End If
                Next
            Frame1.Enabled = False
            Frame4.Enabled = False
        
            If Not adoPrimaryRS1.EOF Then
                Screen.MousePointer = 0
                txtFields(100).Text = ""
                Frame5.Visible = False
                desc.Caption = "Find"
                stbar.Panels(2).Text = "Find"
            End If
End Sub

Public Sub rg1Details()
            Set rs1 = New Recordset
            'Easwar rs1.Open "select A.OPEN_KGS,A.PACKS,A.PACK_KGS,A.LOOSE_KGS,A.prod_kgs,B.PACK_WT from IG_RG1TRN A,IG_Product b where A.PRODUCT_CODE= '" & txtfields(2).Text & "' and A.divcode =  '" & divcode & "' AND  b.product_code = A.PRODUCT_CODE and b.divcode = a.divcode", db, adOpenStatic, adLockBatchOptimistic
            'rs1.Open "select SUM(A.OPEN_KGS) AS OPEN_KGS,SUM(A.PACKS) AS PACKS,SUM(A.PACK_KGS) AS PACK_KGS,SUM(A.LOOSE_KGS) AS LOOSE_KGS,SUM(A.prod_kgs) AS PROD_KGS,B.PACK_WT  from IG_RG1TRN A,IG_Product b where A.PRODUCT_CODE= '" & txtfields(2).Text & "' and A.divcode =  '" & divcode & "' AND  b.product_code = A.PRODUCT_CODE and b.divcode = a.divcode and a.HOME_KGS  ='0' GROUP BY B.PACK_WT ", db, adOpenStatic, adLockBatchOptimistic
            rs1.Open "select PACK_WT  from IG_Product  where PRODUCT_CODE= '" & txtFields(2).Text & "' and divcode =  '" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
            Set SP = New Recordset
            'Easwar sp.Open "select OPEN_KGS,PACKS,PACK_KGS,LOOSE_KGS,prod_kgs ,isnull(HOME_KGS,0)+isnull(EXP_KGS,0)+isnull(AR3A_KGS,0)as salekg from IG_RG1TRN where PRODUCT_CODE='" & txtfields(2).Text & "' and divcode = '" & divcode & "' AND  date = (select max(date) from IG_RG1TRN where product_code='" & txtfields(2) & "' and divcode='" & divcode & "')", db, adOpenStatic, adLockBatchOptimistic
            SP.Open "select OPEN_KGS,PACKS,PACK_KGS,LOOSE_KGS,prod_kgs ,isnull(HOME_KGS,0)+isnull(EXP_KGS,0)+isnull(AR3A_KGS,0)as salekg,PROD_PKGS,PROD_PACKS,OP_PACKKGS,OP_PACKS from IG_RG1TRN where PRODUCT_CODE='" & txtFields(2).Text & "' and divcode = '" & Divcode & "' AND  date = (select max(date) from IG_RG1TRN where product_code='" & txtFields(2) & "' and divcode='" & Divcode & "')", db, adOpenStatic, adLockBatchOptimistic
            If SP.RecordCount <= 0 Then
            End If
            If rs1.RecordCount > 0 And Not SP.EOF Then
'                rs1.MoveFirst
                
'                Set rss = New Recordset
'                rss.Open "select max(date) as maxdate from IG_RG1TRN where product_code='" & txtfields(2) & "' and divcode='" & divcode & "'", db, adOpenStatic
'                If rss("maxdate") = MaskEdBox.Text Then
'
'                    Set op = New Recordset
'                    op.Open "select * from IG_RG1TRN where product_code='" & txtfields(2) & "' and divcode='" & divcode & "' and date = (select max(date) from IG_RG1TRN where product_code='" & txtfields(2) & "' and divcode='" & divcode & "')", db, adOpenStatic
'                    txtfields(6).Text = Val(op("OP_PACKKGS"))
'                    txtfields(7).Text = Val(op("OP_PACKS"))
'                    txtfields(8).Text = Val(txtfields(7).Text * rs1("pack_wt"))
'                    txtfields(9).Text = Val(txtfields(6).Text - txtfields(8).Text)
'                    txtfields(10).Text = Val(op("prod_kgs"))
'                    txtfields(11).Text = Val(op("PROD_PACKS"))
'                    txtfields(12).Text = Val(op("PROD_PKGS"))
'                    txtfields(13).Text = Val(op("loose_kgs"))
'                    txtfields(10).SetFocus
'
'                Else
'                    Dim aa As Double
'                    txtfields(6).Text = (Val(sp("OPEN_KGS")) + Val(sp("prod_kgs"))) - Val(sp("salekg"))
'                    'Easwar txtfields(7).Text = (Val(sp("PACK_KGS")) - sp("salekg")) / rs1("pack_wt")
'                    txtfields(7).Text = Val(sp("PROD_PACKS")) + Val(sp("OP_PACKS")) - Val(sp("PACKS"))
'                    txtfields(8).Text = Val(txtfields(7).Text * rs1("pack_wt"))
'                    txtfields(9).Text = Val(txtfields(6).Text - txtfields(8).Text)
'                    txtfields(10).SetFocus
'                End If
                 Dim aa As Double
                 txtFields(6).Text = (Val(SP("OPEN_KGS")) + Val(SP("prod_kgs"))) - Val(SP("salekg"))
                 'Easwar txtfields(7).Text = (Val(sp("PACK_KGS")) - sp("salekg")) / rs1("pack_wt")
'                 txtfields(7).Text = Val(sp("PROD_PACKS")) + Val(IIf(IsNull(sp("OP_PACKS")), 0, sp("op_packs"))) - Val(sp("PACKS"))
'                 txtfields(8).Text = Val(txtfields(7).Text * rs1("pack_wt"))
'                 txtfields(9).Text = Round(Val(txtfields(6).Text - txtfields(8).Text), 2)
                 txtFields(7).Text = (Val(txtFields(6).Text) - SP("loose_kgs")) / Val(rs1("pack_wt"))
                 txtFields(8).Text = Val(txtFields(7).Text * rs1("pack_wt"))
                 txtFields(9).Text = Round(Val(txtFields(6).Text - txtFields(8).Text), 2)
                 txtFields(10).SetFocus
            Else
                txtFields(6).Text = 0
                txtFields(7).Text = 0
                txtFields(8).Text = 0
                txtFields(9).Text = 0
'                txtfields(12).Enabled = True
                txtFields(10).SetFocus
            End If
End Sub
Public Sub gridalign()
    On Error Resume Next
    grddatagrid.Columns(0).Width = 720.0001
    grddatagrid.Columns(1).Width = 1769.953
    grddatagrid.Columns(2).Width = 1514.835
    grddatagrid.Columns(3).Width = 2160
    grddatagrid.Columns(4).Width = 1349.858
    grddatagrid.Columns(3).NumberFormat = "#0.00"
    grddatagrid.Columns(4).NumberFormat = "#0.00"
    grddatagrid.Columns(0).Alignment = dbgLeft
    grddatagrid.Columns(1).Alignment = dbgLeft
    grddatagrid.Columns(2).Alignment = dbgLeft
    grddatagrid.Columns(3).Alignment = dbgRight
    grddatagrid.Columns(4).Alignment = dbgRight
End Sub

Public Sub totalpacks(a As Double, b As Double)
    'If adoSecondaryRS.RecordCount > 0 Then
    '    Do While Not adoSecondaryRS.EOF
    'c2 = c2 + ((Val(grdDataGrid.Columns(9).Text) - Val(grdDataGrid.Columns(8).Text)) + 1)
    '    adoSecondaryRS.MoveNext
    '    Loop
    'End If
End Sub
