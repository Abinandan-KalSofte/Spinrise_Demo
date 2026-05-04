VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form FrmEraction 
   Caption         =   "Waste Purchase"
   ClientHeight    =   6765
   ClientLeft      =   75
   ClientTop       =   360
   ClientWidth     =   12210
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6765
   ScaleWidth      =   12210
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   42
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "FrmEraction.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":0397
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "FrmEraction.frx":07E1
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "FrmEraction.frx":0B43
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "FrmEraction.frx":0E4D
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":11C9
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "FrmEraction.frx":14D3
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":1875
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "FrmEraction.frx":1CBF
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":2054
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "FrmEraction.frx":249E
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl O) (Ctrl E)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":27EE
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "FrmEraction.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":2E72
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
         Picture         =   "FrmEraction.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "FrmEraction.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":3CC7
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "FrmEraction.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl + A)"
         Top             =   105
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":4364
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "FrmEraction.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton Command1 
         Height          =   510
         Left            =   5820
         Picture         =   "FrmEraction.frx":4AFB
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Print (Ctrl P)"
         Top             =   100
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmEraction.frx":4F3D
         Height          =   510
         Index           =   3
         Left            =   6345
         Picture         =   "FrmEraction.frx":5247
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Find (Ctrl R)"
         Top             =   100
         Visible         =   0   'False
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
         Left            =   7710
         TabIndex        =   44
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   9600
         TabIndex        =   43
         Top             =   270
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6600
      Left            =   360
      TabIndex        =   36
      Top             =   1080
      Width           =   11130
      _ExtentX        =   19632
      _ExtentY        =   11642
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "FrmEraction.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "SSTab2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin TabDlg.SSTab SSTab2 
         Height          =   2415
         Left            =   120
         TabIndex        =   55
         Top             =   4080
         Width           =   10815
         _ExtentX        =   19076
         _ExtentY        =   4260
         _Version        =   393216
         Tabs            =   2
         TabsPerRow      =   2
         TabHeight       =   520
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "Product Details"
         TabPicture(0)   =   "FrmEraction.frx":55F8
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "grddatagrid"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "Bale Details"
         TabPicture(1)   =   "FrmEraction.frx":5614
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "balegrid"
         Tab(1).ControlCount=   1
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   1935
            Left            =   120
            TabIndex        =   56
            Top             =   360
            Width           =   10575
            _ExtentX        =   18653
            _ExtentY        =   3413
            _Version        =   393216
            AllowUpdate     =   -1  'True
            AllowArrows     =   -1  'True
            BackColor       =   16777215
            ForeColor       =   16711680
            HeadLines       =   2
            RowHeight       =   15
            TabAction       =   1
            AllowAddNew     =   -1  'True
            AllowDelete     =   -1  'True
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
               Name            =   "Microsoft Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
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
         Begin MSDataGridLib.DataGrid balegrid 
            Height          =   1935
            Left            =   -74880
            TabIndex        =   57
            Top             =   360
            Width           =   10575
            _ExtentX        =   18653
            _ExtentY        =   3413
            _Version        =   393216
            AllowUpdate     =   -1  'True
            AllowArrows     =   -1  'True
            BackColor       =   16777152
            ForeColor       =   16711680
            HeadLines       =   1
            RowHeight       =   15
            TabAction       =   1
            AllowAddNew     =   -1  'True
            AllowDelete     =   -1  'True
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
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
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
         Height          =   3945
         Left            =   120
         TabIndex        =   31
         Top             =   120
         Width           =   10935
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "DOCNO"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   330
            Index           =   0
            Left            =   1560
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   150
            Width           =   1695
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFC0&
            DataField       =   "IN_TIME"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "h:mm:ss AMPM"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   4
            EndProperty
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   330
            Index           =   3
            Left            =   7830
            TabIndex        =   60
            Top             =   165
            Width           =   1095
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   303
            Left            =   2160
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   23
            TabStop         =   0   'False
            Top             =   3120
            Width           =   6735
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ptype"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   302
            Left            =   1560
            MaxLength       =   100
            TabIndex        =   22
            Top             =   3120
            Width           =   510
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   301
            Left            =   2160
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   21
            TabStop         =   0   'False
            Top             =   2722
            Width           =   6735
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "pjtc"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   300
            Index           =   300
            Left            =   1560
            MaxLength       =   100
            TabIndex        =   20
            Top             =   2722
            Width           =   510
         End
         Begin VB.TextBox Text4 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   3840
            TabIndex        =   25
            TabStop         =   0   'False
            Top             =   3555
            Width           =   1215
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   1560
            TabIndex        =   24
            TabStop         =   0   'False
            Top             =   3555
            Width           =   1335
         End
         Begin VB.TextBox text1 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFC0&
            DataField       =   "totalamt"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   330
            Index           =   6
            Left            =   9240
            Locked          =   -1  'True
            TabIndex        =   27
            TabStop         =   0   'False
            Top             =   3555
            Width           =   1455
         End
         Begin VB.TextBox Txtroff 
            BackColor       =   &H00FFFFFF&
            DataField       =   "roff"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   6360
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   3555
            Width           =   1215
         End
         Begin VB.TextBox Text5 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   330
            Left            =   3240
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   1344
            Width           =   5685
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00FFFFFF&
            DataField       =   "through"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   330
            Left            =   1560
            MaxLength       =   15
            TabIndex        =   17
            Top             =   1750
            Width           =   1635
         End
         Begin MSMask.MaskEdBox MaskEdBox2 
            DataField       =   "billdt"
            Height          =   330
            Left            =   3840
            TabIndex        =   19
            Top             =   2287
            Width           =   1065
            _ExtentX        =   1879
            _ExtentY        =   582
            _Version        =   393216
            BackColor       =   16777215
            PromptChar      =   "_"
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "BILLNO"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Index           =   5
            Left            =   1560
            TabIndex        =   18
            Top             =   2280
            Width           =   1635
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "varcode"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   330
            Index           =   1
            Left            =   1560
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   941
            Width           =   1635
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   330
            Index           =   4
            Left            =   3240
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   941
            Width           =   5685
         End
         Begin VB.TextBox text1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "slcode"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   330
            Index           =   2
            Left            =   1560
            TabIndex        =   15
            Top             =   1344
            Width           =   1635
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "TYPE"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   315
            ItemData        =   "FrmEraction.frx":5630
            Left            =   1560
            List            =   "FrmEraction.frx":5632
            TabIndex        =   30
            Top             =   553
            Width           =   2775
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "DOCDT"
            Height          =   330
            Left            =   6360
            TabIndex        =   29
            Top             =   165
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   582
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CalendarForeColor=   -2147483635
            CalendarTitleForeColor=   -2147483635
            CalendarTrailingForeColor=   -2147483635
            Format          =   64028673
            CurrentDate     =   37959
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            DataField       =   "BILLDT"
            Height          =   330
            Left            =   3840
            TabIndex        =   28
            Top             =   2287
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   582
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            CalendarForeColor=   -2147483635
            CalendarTitleForeColor=   -2147483635
            CalendarTrailingForeColor=   -2147483635
            Format          =   64028673
            CurrentDate     =   37959
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "docdt"
            Height          =   330
            Left            =   6360
            TabIndex        =   59
            TabStop         =   0   'False
            Top             =   165
            Width           =   1080
            _ExtentX        =   1905
            _ExtentY        =   582
            _Version        =   393216
            BackColor       =   16777215
            PromptChar      =   "_"
         End
         Begin VB.Label Label1 
            Caption         =   "Doc. No."
            Height          =   255
            Index           =   0
            Left            =   240
            TabIndex        =   63
            Top             =   203
            Width           =   1095
         End
         Begin VB.Label Label1 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date / Time"
            Height          =   195
            Index           =   1
            Left            =   5250
            TabIndex        =   62
            Top             =   233
            Width           =   855
         End
         Begin VB.Shape Shape1 
            Height          =   1335
            Left            =   120
            Top             =   2160
            Width           =   9015
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Transaction Type"
            Height          =   195
            Index           =   3
            Left            =   240
            TabIndex        =   53
            Top             =   2722
            Width           =   1245
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Purchase Type"
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   52
            Top             =   3120
            Width           =   1080
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Packing"
            Height          =   195
            Left            =   3150
            TabIndex        =   51
            Top             =   3600
            Width           =   585
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Freight"
            Height          =   195
            Left            =   240
            TabIndex        =   50
            Top             =   3600
            Width           =   480
         End
         Begin VB.Label Label1 
            Caption         =   "Type"
            Height          =   255
            Index           =   2
            Left            =   240
            TabIndex        =   49
            Top             =   583
            Width           =   1095
         End
         Begin VB.Label Label1 
            Caption         =   "Total Amt with Tax"
            Height          =   255
            Index           =   8
            Left            =   7680
            TabIndex        =   48
            Top             =   3570
            Width           =   1575
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Rounded Off"
            Height          =   195
            Left            =   5250
            TabIndex        =   47
            Top             =   3600
            UseMnemonic     =   0   'False
            Width           =   915
         End
         Begin VB.Label Label6 
            Caption         =   "Through"
            Height          =   300
            Left            =   240
            TabIndex        =   46
            Top             =   1765
            Width           =   1230
         End
         Begin VB.Label Label1 
            Caption         =   "Invoice No."
            Height          =   255
            Index           =   7
            Left            =   240
            TabIndex        =   41
            Top             =   2325
            Width           =   1095
         End
         Begin VB.Label Label1 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Index           =   6
            Left            =   3390
            TabIndex        =   40
            Top             =   2355
            Width           =   345
         End
         Begin VB.Label Label1 
            Caption         =   "Variety"
            Height          =   255
            Index           =   5
            Left            =   240
            TabIndex        =   39
            Top             =   979
            Width           =   1095
         End
         Begin VB.Label Label1 
            Caption         =   "Supplier"
            Height          =   255
            Index           =   3
            Left            =   240
            TabIndex        =   37
            Top             =   1382
            Width           =   1095
         End
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   45
      Top             =   6465
      Width           =   12210
      _ExtentX        =   21537
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "10/12/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "3:41 PM"
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
   Begin VB.Frame Frame4 
      Height          =   4335
      Left            =   840
      TabIndex        =   32
      Top             =   960
      Visible         =   0   'False
      Width           =   8025
      Begin VB.CommandButton cmdok 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   765
         Left            =   2130
         TabIndex        =   34
         Top             =   3480
         Width           =   1005
      End
      Begin VB.CommandButton cmdcancel 
         Caption         =   "CANCEL"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   3780
         TabIndex        =   33
         Top             =   3510
         Width           =   1035
      End
      Begin listacx.codelist codelist1 
         Height          =   3075
         Left            =   240
         TabIndex        =   35
         Top             =   300
         Width           =   7440
         _ExtentX        =   13123
         _ExtentY        =   5424
         caption         =   ""
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Balewise Entry Details"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6015
      Left            =   480
      TabIndex        =   54
      Top             =   1320
      Width           =   10815
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackColor       =   &H00FF8080&
      BackStyle       =   0  'Transparent
      Caption         =   "Press F1  To Insert Bale Details"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   300
      Left            =   480
      TabIndex        =   58
      Top             =   7680
      Width           =   3840
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Waste Purchase"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   360
      Left            =   360
      TabIndex        =   38
      Top             =   600
      Width           =   2160
   End
End
Attribute VB_Name = "FrmEraction"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim Sflg As String
Dim Slco As String
Dim DB As ADODB.Connection
Dim Rs As ADODB.Recordset
Dim rs1 As ADODB.Recordset
Dim tp As New Recordset
Dim a As Integer
Dim FLAG1 As Boolean
Dim cnn As String
Dim Opt As String
Dim MaxDocno As Integer
Dim Flag As Boolean
Dim WASTE1 As String
Dim Co As Integer
Dim GPNAME As Recordset
Dim i As Integer
Dim lno As Integer
Dim pgn As Integer
Dim Rep As Report.ReportView
Dim moveflg As Boolean
Dim temp_packno As Integer
Dim balers, BALERS1, BALERS2 As Recordset
Dim temp_packno11 As Integer
Const docNo = 1
Const DOCDT = 2
Const Waste = 4
Const description = 5
Const grd_balewt = 6
Const Quantity = 7
Const Kgs = 8
Const Rate = 9
Const Value1 = 10
Const Disper = 11
Const Disamt = 12
Const BEDPer = 13
Const Bedamt = 14
Const AEDPer = 15
Const AedAmt = 16
Const Taxper = 17
Const Taxamt = 18
Const SCPer = 19
Const Scamt = 20
Const Packamt = 21
Const Frtamt = 22
Const Othchrgs = 23
Const Roff = 24
Const totalvalue = 25
Const remarks = 26
Const slno = 27
Const grd_packno = 28



Private Sub adosecondaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error Resume Next
    If Not (adoSecondaryRS.EOF Or adoSecondaryRS.BOF) Then
        Set GPNAME = New Recordset
        GPNAME.Open "SELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoSecondaryRS("VARCODE") & "'", DB
        If GPNAME.RecordCount > 0 Then Text1(4).Text = GPNAME(0)
        If IsNull(adoSecondaryRS("frgtamt")) = False Then
            moveflg = True
            Text3.Text = Format(adoSecondaryRS("frgtamt").Value, "#0.00")
        Else
            Text3.Text = ""
        End If
        If IsNull(adoSecondaryRS("pkfwdamt")) = False Then
            moveflg = True
            Text4.Text = Format(adoSecondaryRS("pkfwdamt").Value, "#0.00")
        Else
            Text4.Text = ""
        End If
        If IsNull(adoSecondaryRS("Through")) = False Then
            moveflg = True
            Text2.Text = adoSecondaryRS("through")
        Else
            Text2.Text = ""
        End If
        
        If IsNull(adoSecondaryRS("pjtc")) = False Then
            moveflg = True
            Text1(300).Text = adoSecondaryRS("pjtc")
        Else
            Text1(300).Text = ""
        End If
        
        If IsNull(adoSecondaryRS("ptype")) = False Then
            moveflg = True
            Text1(302).Text = adoSecondaryRS("ptype")
        Else
            Text1(302).Text = ""
        End If
        
        If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
            Set rsa = New Recordset
            rsa.Open "select slname from fa_slmas where slcode='" & Trim(adoSecondaryRS("SLCODE")) & "'", DB
            If rsa.EOF = False Then
            Text5.Text = rsa(0)
            End If
        End If
    End If
    If adoSecondaryRS.State = 1 Then
        stbar.Panels(2).Text = "Record " & CStr(adoSecondaryRS.AbsolutePosition) & " / " & CStr(adoSecondaryRS.RecordCount)
    End If
End Sub

Private Sub balegrid_AfterColEdit(ByVal ColIndex As Integer)
If Opt = "add" Then
    If balegrid.Col = 6 And val(balegrid.Columns(6).Text) <> 0 Then
        Set NewRs = New Recordset
        NewRs.Open "select pack_no from ig_rpacknos where pack_no = " & balegrid.Columns(6).Text & " ", DB, adOpenStatic, adLockBatchOptimistic
        If NewRs.RecordCount > 0 Then
            MsgBox "No Duplicate Pack nos", vbInformation, head
            balegrid.Columns(6).Text = ""
            Set NewRs = New Recordset
            NewRs.Open "select max(pack_no) from ig_rpacknos ", DB, adOpenStatic, adLockBatchOptimistic
                balegrid.Columns(6).Text = NewRs(0) + val(balers.AbsolutePosition)
                temp_packno = balegrid.Columns(7).Text
                
        Else
            temp_pflg = False
            temp_pos = balers.AbsolutePosition
            
            
            balers.MoveFirst
            Do While Not balers.EOF
                If temp_packno11 = balers("pack_no") Then
                    temp_pflg = True
                End If
            balers.MoveNext
            Loop
            
            If temp_pflg = True Then
                Set NewRs = New Recordset
                NewRs.Open "select max(pack_no) from ig_rpacknos ", DB, adOpenStatic, adLockBatchOptimistic
                MsgBox "No Duplicate Pack No", vbInformation, head
                balers.AbsolutePosition = temp_pos
                balegrid.Columns(6).Text = NewRs(0) + val(temp_pos)
                balegrid.SetFocus
            End If
            
        End If
''            Set newrs = New Recordset
''            newrs.Open "select max(pack_no) from ig_rpacknos ", DB, adOpenStatic, adLockBatchOptimistic
''                balegrid.Columns(6).Text = newrs(0) + val(BALERS.AbsolutePosition)
''                temp_packno = balegrid.Columns(6).Text
    Else
            Set NewRs = New Recordset
            NewRs.Open "select max(pack_no) from ig_rpacknos ", DB, adOpenStatic, adLockBatchOptimistic
                balegrid.Columns(6).Text = NewRs(0) + val(balers.AbsolutePosition)
                temp_packno = balegrid.Columns(6).Text
    End If
    

    If LastCol = 7 Then
    If val(balegrid.Columns(7).Text) = "" Then
        MsgBox "Null Values Not Allowed", vbInformation, head
        balegrid.Col = 7
        balegrid.SetFocus
        Exit Sub
    End If
    End If
    
'If balegrid.COL = 7 Then
'    temp_kgs = 0
'    temp_pos = BALERS.AbsolutePosition
'    BALERS.MoveFirst
'    Do While Not BALERS.EOF
'    If balegrid.Columns(3).Text = adoPrimaryRS("waste") And IsNull(BALERS("kgs")) = False Then
'        temp_kgs = temp_kgs + val(BALERS("kgs"))
'    End If
'    BALERS.MoveNext
'    Loop
'
'    If temp_kgs <> adoPrimaryRS("kgs") Then
'        MsgBox "Total Kgs Not Tally With Given Kgs", vbInformation, head
'        BALERS.AbsolutePosition = temp_pos
'        balegrid.Columns(7).Text = ""
'        balegrid.COL = 7
'        balegrid.SetFocus
'        Exit Sub
'    End If
'End If
End If
End Sub

Private Sub balegrid_BeforeColUpdate(ByVal ColIndex As Integer, OldValue As Variant, Cancel As Integer)
'temp_packno11 = balegrid.Columns(6).Text
End Sub

Private Sub balegrid_KeyPress(KeyAscii As Integer)
If balegrid.Columns(3).Text <> adoPrimaryRS("WASTE") Then
    balegrid.AllowUpdate = False
    balegrid.Columns(7).Locked = True
Else
    balegrid.AllowUpdate = True
    balegrid.Columns(7).Locked = False
End If
End Sub

Private Sub balegrid_LostFocus()

If Opt = "add" Then
    If balegrid.Col = 7 Then
    If balers.RecordCount > 0 Then
        balers.MoveFirst
    End If
    Do While Not balers.EOF
    If val(Trim(balegrid.Columns(7).Text)) = 0 Then
        MsgBox "Null Values Not Allowed", vbInformation, head
        balegrid.Col = 7
        balegrid.SetFocus
        Exit Sub
    End If
    balers.MoveNext
    Loop
    End If
End If

End Sub

Private Sub balegrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
Dim balers As Recordset
On Error Resume Next
''If Opt = "add" Then
''    If LastCol = 7 Then
''    If val(balegrid.Columns(7).Text) = 0 Then
''        MsgBox "Null Values Not Allowed", vbInformation, head
''        BALERS.AbsolutePosition = LastRow
''        balegrid.COL = 7
''        balegrid.SetFocus
''        Exit Sub
''    End If
''    End If
''End If
End Sub

Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
        Opt = "add"
        grddatagrid.AllowUpdate = True
        desc.Caption = "Addition"
        'Screen.MousePointer = 11
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select Divcode,DOCNO,DOCDT,IN_TIME,SLCODE,TYPE,VARCODE,BILLNO,BILLDT, frgtamt, pkfwdamt,ROFF,totalamt,ptype,pjno,pjdt,pjtc from RM_WASTEPHD where 1= 2", DB, adOpenStatic, adLockBatchOptimistic
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select a.Divcode,DOCNO,DOCDT,TYPE,WASTE ""Waste"",Description,BALEWT ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO,Pack_No  from RM_WASTEPDT a,ig_rproduct b WHERE a.waste=b.product_code and 1 = 2", DB, adOpenStatic, adLockBatchOptimistic
        
        
        Call bindcontrols
        adoPrimaryRS.AddNew
        adoSecondaryRS.AddNew
        
        Set grddatagrid.DataSource = adoPrimaryRS
        
        'BALE DETAILS
        Set balers = New Recordset
        balers.Open "SELECT a.Divcode,a.Docno,a.Docdt,A.Waste,B.Description,a.Sno,a.Pack_No,a.Kgs  FROM RM_wastePDT1 a ,ig_rproduct b WHERE  b.product_code = a.waste AND 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
        
        Set balegrid.DataSource = balers
        Call balegrid_align
       
        Text2.Text = ""
        
                
        
        Call EnableControls
        
        Combo1.clear
        Combo1.AddItem "U-Usable Waste"
        Combo1.AddItem "S-Salable Waste"
        Combo1.ListIndex = 0
        Set Rs = New Recordset
        Rs.Open "SELECT MAX(DOCNO) FROM RM_WASTEPDT WHERE DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
         If Not Rs.EOF Then
           If Not IsNull(Rs(0)) Then
                Text1(0).Text = val(Rs(0)) + 1
                Text1(3).Text = time
           Else
                Text1(0).Text = 1
                Text1(3).Text = time
           End If
         Else
           Text1(0).Text = 1
           Text1(3).Text = time
         End If
         Text1(0).Locked = True
         Text1(3).Locked = True
            grddatagrid.AllowAddNew = True
            Call adddelmod(BUTTON)
       Text1(6).Text = ""
        Text1(300).Text = ""
        Text1(301).Text = ""
        Text1(302).Text = ""
        Text1(303).Text = ""
        
        
         MaskEdBox1.Text = pdate
         MaskEdBox2.Text = pdate
         Call GRID_ALIGN
         Dim RS2 As New Recordset
         Dim I1 As String
         On Error Resume Next
         Text1(4).Text = Empty
         Text1(1).SetFocus
         Text5.Text = " "
            grddatagrid.AllowUpdate = True
             
            balegrid.AllowAddNew = True
            balegrid.AllowUpdate = True
            balegrid.EditActive = True
         Exit Sub
Case 1
         If Record_Exists("RM_WASTEPDT") = False Then Exit Sub
        Opt = "mod"
        DTPicker1.Enabled = False
        Text1(0).Locked = False
        Text1(3).Locked = False
        Combo1.Locked = False
        Call DocNoLookup1
        Call adddelmod(BUTTON)
        grddatagrid.AllowUpdate = True
        desc.Caption = "Modification"
 Case 2
         If Record_Exists("RM_WASTEPDT") = False Then Exit Sub
        Call DocNoLookup1
        grddatagrid.AllowUpdate = True
        Call adddelmod(BUTTON)
        Opt = "del"
        desc.Caption = "Deletion"
       
Case 4
            Set Rep = New Report.ReportView
            a = FreeFile
            pgn = 1
            lno = 7
            Close
            Open "c:\ind.txt" For Output As #a
            Set rs1 = New Recordset
            rs1.Open "SELECT DOCNO,DOCDT,TYPE,IN_TIME,SLCODE,THROUGH""THROUGH"",WASTE""WASTE"",REF""REFERENCE"",VALUE""VALUE"", DisPer,Disamt, taxper, taxamt, scper, scamt,  othchrgs, totvalue FROM RM_WASTEPDT WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND ERTFLG='E' And docno = " & Text1(0).Text & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", connectstring, adOpenStatic, adLockReadOnly
            Call hdlist
            Do While Not rs1.EOF
            Print #a, Space(3) + Chr(15) + Padr(rs1("through"), 50, " ") + Space(1) + Padr(rs1("WASTE"), 50, " ") + Chr(18) + Space(1) + Chr(15) + Padr(rs1("reference"), 30, " ") + Chr(18) + Padl(INF(rs1("value"), 2), 12, " ") + Space(2)
            lno = lno + 1
            Call pblist
            rs1.MoveNext
            Loop
            Print #a, Space(3) + String(89, "-")
            Close #a
            Open "c:\ind.bat" For Output As #a
            Print #a, "c:"
            Print #a, "cd\"
            Print #a, "type ind.txt>prn"
            Rep.txtfile = "c:\ind.txt"
            Rep.Batfile = "c:\ind.bat"
            Close #a
Case 5
       'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        'Call query_mode
        adoSecondaryRS.MoveFirst
        Call bindcontrols
        Set Rs = New Recordset
        'rs.Open "SELECT THROUGH""THROUGH"",WASTE""WASTE"",VALUE""VALUE"", DisPer,Disamt, taxper""TAX%"", taxamt""TAX AMT"", scper""SC%"", scamt""SC AMT"", othchrgs""OTHER CGS"", totvalue""VALUE"", REF""REMARKS""FROM RM_WASTEPDT WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", connectstring, adOpenStatic, adLockReadOnly
        Rs.Open "select WASTE ""Waste"",Description,BALEWT ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO,Pack_No from RM_WASTEPDT a,ig_rproduct b WHERE a.waste=b.product_code AND DOCNO = " & adoSecondaryRS("DOCNO") & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = Rs
        
        Set BALERS1 = New Recordset
        BALERS1.Open "SELECT a.Divcode,a.Docno,a.Docdt,A.Waste,B.Description,a.Sno,a.Pack_No,a.Kgs  FROM RM_wastePDT1 a ,ig_rproduct b  WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND  DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'  and b.product_code = a.waste order by waste,sno ", connectstring, adOpenStatic, adLockReadOnly
        Set balegrid.DataSource = BALERS1
        Call balegrid_align
        Call Grid_Align_Navig
        'Call DisplayTotValue
        TotValue = 0
        Do While Not Rs.EOF
            If IsNull(Rs("value")) = False Then TotValue = TotValue + Rs("value").Value
            Rs.MoveNext
        Loop
         Text1(6).Text = Format(TotValue + IIf(IsNull(adoSecondaryRS("roff")), 0, adoSecondaryRS("roff")), "#0.00")
        Call FIR(BUTTON)
        grddatagrid.Columns(0).Visible = False
        
        Exit Sub
GoFirstError:
       
Case 6
        'next
        desc.Caption = "Query"
        On Error GoTo GoNextError
        adoSecondaryRS.MoveNext
        If Not adoSecondaryRS.EOF Then
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoSecondaryRS.EOF And adoSecondaryRS.RecordCount > 0 Then
            Beep
            BUTTON(6).Enabled = False
            BUTTON(8).Enabled = False
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            adoSecondaryRS.MoveLast
        End If
        Call bindcontrols
        Set Rs = New Recordset
        'rs.Open "SELECT THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QUANTITY"",VALUE""VALUE"", taxper""TAX%"", taxamt""TAX AMT"", scper""SC%"", scamt""SC AMT"", othchrgs""OTHER CGS"", totvalue""VALUE"", REF""REMARKS"" FROM RM_WASTEPDT WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", connectstring, adOpenStatic, adLockReadOnly
        Rs.Open "select WASTE ""Waste"",Description,BALEWT ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO,Pack_No from RM_WASTEPDT a,ig_rproduct b WHERE a.waste=b.product_code AND DOCNO = " & adoSecondaryRS("DOCNO") & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = Rs
        
        Set BALERS1 = New Recordset
        BALERS1.Open "SELECT a.Divcode,a.Docno,a.Docdt,A.Waste,B.Description,a.Sno,a.Pack_No,a.Kgs  FROM RM_wastePDT1 a ,ig_rproduct b  WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND  DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'  and b.product_code = a.waste order by waste,sno ", connectstring, adOpenStatic, adLockReadOnly
        Set balegrid.DataSource = BALERS1
        Call balegrid_align
        Call Grid_Align_Navig
        'Call DisplayTotValue
        TotValue = 0
        Do While Not Rs.EOF
            If IsNull(Rs("value")) = False Then TotValue = TotValue + Rs("value").Value
            Rs.MoveNext
        Loop
        Text1(6).Text = Format(TotValue + IIf(IsNull(adoSecondaryRS("roff")), 0, adoSecondaryRS("roff")), "#0.00")
        grddatagrid.Columns(0).Visible = False
        Exit Sub
GoNextError:
  
Case 7
        'previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
        If adoSecondaryRS.BOF And adoSecondaryRS.EOF Then Exit Sub
        If Not adoSecondaryRS.BOF Then
        adoSecondaryRS.MovePrevious
        If Not adoSecondaryRS.BOF Then
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoSecondaryRS.BOF And adoSecondaryRS.RecordCount > 0 Then
            Beep
            'moved off the end so go back
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            'Call PREV(BUTTON)
            adoSecondaryRS.MoveFirst
         End If
         Call bindcontrols
        Set Rs = New Recordset
        'rs.Open "SELECT THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QUANTITY"",VALUE""VALUE"", DisPer,Disamt, taxper""TAX%"", taxamt""TAX AMT"", scper""SC%"", scamt""SC AMT"", othchrgs""OTHER CGS"", totvalue""VALUE"", REF""REMARKS"" FROM RM_WASTEPDT WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", connectstring, adOpenStatic, adLockReadOnly
        'rs.Open "select a.Divcode,DOCNO,DOCDT,TYPE,WASTE ""Waste"",Description,BALEWT ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO from RM_WASTEPDT a,ig_rproduct b WHERE a.waste=b.product_code AND DOCNO = " & adoSecondaryRS("DOCNO") & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Rs.Open "select WASTE ""Waste"",Description,BALEWT ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO,Pack_No from RM_WASTEPDT a,ig_rproduct b WHERE a.waste=b.product_code AND DOCNO = " & adoSecondaryRS("DOCNO") & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = Rs
        
        Set BALERS1 = New Recordset
        BALERS1.Open "SELECT a.Divcode,a.Docno,a.Docdt,A.Waste,B.Description,a.Sno,a.Pack_No,a.Kgs  FROM RM_wastePDT1 a ,ig_rproduct b  WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND  DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'  and b.product_code = a.waste order by waste,sno ", connectstring, adOpenStatic, adLockReadOnly
        Set balegrid.DataSource = BALERS1
        
        Call balegrid_align
        Call Grid_Align_Navig
        'Call DisplayTotValue
        TotValue = 0
        Do While Not Rs.EOF
            If IsNull(Rs("value")) = False Then TotValue = TotValue + Rs("value").Value
            Rs.MoveNext
        Loop
        Text1(6).Text = Format(TotValue + IIf(IsNull(adoSecondaryRS("roff")), 0, adoSecondaryRS("roff")), "#0.00")
        grddatagrid.Columns(0).Visible = False
        End If
        
        'show the current record
        Exit Sub
GoPrevError:
Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoSecondaryRS.MoveLast
        Call bindcontrols
        Set Rs = New Recordset
        'rs.Open "SELECT THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QUANTITY"",VALUE""VALUE"", DisPer,Disamt, taxper 'TAX %', taxamt 'TAX AMT', scper 'SC %', scamt 'SC AMT', othchrgs, totvalue 'TOT VALUE',REF""REMARKS"" FROM RM_WASTEPDT WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", connectstring, adOpenStatic, adLockReadOnly
        Rs.Open "select WASTE ""Waste"",Description,BALEWT ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO,Pack_No from RM_WASTEPDT a,ig_rproduct b WHERE a.waste=b.product_code AND DOCNO = " & adoSecondaryRS("DOCNO") & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = Rs
        
        Set BALERS1 = New Recordset
        BALERS1.Open "SELECT a.Divcode,a.Docno,a.Docdt,A.Waste,B.Description,a.Sno,a.Pack_No,a.Kgs  FROM RM_wastePDT1 a ,ig_rproduct b  WHERE DOCNO = " & adoSecondaryRS("DOCNO") & " AND  DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'  and b.product_code = a.waste order by waste,sno ", connectstring, adOpenStatic, adLockReadOnly
        Set balegrid.DataSource = BALERS1
        Call balegrid_align
        Call Grid_Align_Navig
        TotValue = 0
        Do While Not Rs.EOF
            If IsNull(Rs("VALUE")) = False Then TotValue = TotValue + Rs("VALUE").Value
            Rs.MoveNext
        Loop
        Text1(6).Text = Format(TotValue + IIf(IsNull(adoSecondaryRS("roff")), 0, adoSecondaryRS("roff")), "#0.00")
        Call las(BUTTON)
        grddatagrid.Columns(0).Visible = False
        Exit Sub
GoLastError:
Case 9
    'Save

     desc.Caption = "Query"
     If Opt = "add" And FLAG1 = False Then
            
        If balers.RecordCount = 0 Then
            MsgBox "Press F1 to generate bales", vbInformation, head
            Screen.MousePointer = 0
            Opt = "add"
            grddatagrid.Col = 10
            grddatagrid.SetFocus
            Exit Sub
        End If
        temp_value = 0
        temp_kg = 0
        Opt = ""
        balers.MoveFirst
        Do While Not balers.EOF
            temp_value = temp_value + val(balegrid.Columns(7).Text)
            balers.MoveNext
        Loop
        
        Do While Not adoPrimaryRS.EOF
            temp_kg = temp_kg + val(grddatagrid.Columns(Kgs).Text)
            adoPrimaryRS.MoveNext
        Loop
        If val(temp_kg) <> val(temp_value) Then
            adoPrimaryRS.MoveFirst
            MsgBox "Kgs does not Tally , Please Press F1 for Bales Gereration", vbInformation, head
            grddatagrid.Col = 8
            grddatagrid.SetFocus
            Screen.MousePointer = 0
            Opt = "add"
            Exit Sub
        End If
        adoPrimaryRS.MoveFirst
        If adoPrimaryRS("waste") = "" Or val(adoPrimaryRS("value")) = 0 Then
            adoPrimaryRS.Delete adAffectCurrent
            adoPrimaryRS.MoveNext
        End If
        If balers.RecordCount > 0 Then
            balers.MoveFirst
        End If
        Do While Not balers.EOF
        If IsNull(balers("kgs")) = True Or IsNull(balers("PACK_NO")) = True Then
            MsgBox "Pack No or Kgs Should not be Null", vbInformation, head
            balegrid.Col = 6
            balegrid.SetFocus
            Exit Sub
        End If
        If val(balers("KGS")) = 0 Or val(balers("PACK_NO")) = 0 Then
            MsgBox "Pack No or Kgs Should not be Null", vbInformation, head
            balegrid.Col = 6
            balegrid.SetFocus
            Exit Sub
        End If
        
        balers.MoveNext
        Loop
        

    temp_kgs = 0
    'temp_pos = BALERS.AbsolutePosition
    
    adoPrimaryRS.MoveFirst
    Do While Not adoPrimaryRS.EOF
    temp_kgs = 0
    If balers.RecordCount > 0 Then
        balers.MoveFirst
    End If
    Do While Not balers.EOF
    If balegrid.Columns(3).Text = adoPrimaryRS("waste") And IsNull(balers("kgs")) = False Then
        temp_kgs = temp_kgs + val(balers("kgs"))
    End If
    balers.MoveNext
    Loop

    If temp_kgs <> adoPrimaryRS("kgs") Then
        MsgBox "Total Kgs Not Tally With Given Kgs", vbInformation, head
        'balegrid.Columns(7).Text = ""
        balegrid.Col = 7
        'balegrid.Columns(7).Text = ""
        balegrid.SetFocus
        Exit Sub
    End If
    adoPrimaryRS.MoveNext
    Loop
        
        
'        BALERS.MoveFirst
'        Do While Not BALERS.EOF
'
'
'
'        BALERS.MoveNext
'        Loop
        
        
        
        Opt = ""
        DB.BeginTrans
        Set adoPrimaryRS1 = New Recordset
        adoPrimaryRS1.Open "select a.Divcode,DOCNO,DOCDT,TYPE,WASTE ""Waste"",balewt ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO from RM_WASTEPDT a where 1 = 2", DB, adOpenStatic, adLockBatchOptimistic
            frtamt1 = 0
            packamt1 = 0
            tot1 = 0
            adoPrimaryRS.MoveFirst
            Do While Not adoPrimaryRS.EOF
                adoPrimaryRS1.AddNew
                adoPrimaryRS1("divcode") = Divcode
                adoPrimaryRS1("DOCNO") = val(Text1(0).Text)
                adoPrimaryRS1("DOCDT") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                adoPrimaryRS1("TYPE") = Left(Combo1.Text, 1)
                adoPrimaryRS1("waste") = grddatagrid.Columns(Waste)
                adoPrimaryRS1("Balewt") = val(grddatagrid.Columns(grd_balewt))
                adoPrimaryRS1("quantity") = val(grddatagrid.Columns(Quantity))
                adoPrimaryRS1("kgs") = val(grddatagrid.Columns(Kgs))
                adoPrimaryRS1("rate") = val(grddatagrid.Columns(Rate))
                adoPrimaryRS1("value") = val(grddatagrid.Columns(Value1))
                adoPrimaryRS1("disper") = val(grddatagrid.Columns(Disper))
                adoPrimaryRS1("disamt") = val(grddatagrid.Columns(Disamt))
                adoPrimaryRS1("bedper") = val(grddatagrid.Columns(BEDPer))
                adoPrimaryRS1("bedamt") = val(grddatagrid.Columns(Bedamt))
                adoPrimaryRS1("aedper") = val(grddatagrid.Columns(AEDPer))
                adoPrimaryRS1("aedamt") = val(grddatagrid.Columns(AedAmt))
                adoPrimaryRS1("taxper") = val(grddatagrid.Columns(Taxper))
                adoPrimaryRS1("taxamt") = val(grddatagrid.Columns(Taxamt))
                adoPrimaryRS1("scper") = val(grddatagrid.Columns(SCPer))
                adoPrimaryRS1("scamt") = val(grddatagrid.Columns(Scamt))
                adoPrimaryRS1("packamt") = val(grddatagrid.Columns(Packamt))
                adoPrimaryRS1("frtamt") = val(grddatagrid.Columns(Frtamt))
                adoPrimaryRS1("othchrgs") = val(grddatagrid.Columns(Othchrgs))
                adoPrimaryRS1("roff") = val(grddatagrid.Columns(Roff))
                adoPrimaryRS1("totvalue") = val(grddatagrid.Columns(totalvalue))
                adoPrimaryRS1("remarks") = val(grddatagrid.Columns(remarks))
                'adoPrimaryRS1("Pack_no") = val(grddatagrid.Columns(grd_packno))
               
                
                If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then
                   adoPrimaryRS1("Roff") = val(Txtroff.Text) - roff1
                Else
                   adoPrimaryRS1("Roff") = val(Txtroff.Text) / adoSecondaryRS.RecordCount
                End If
                roff1 = roff1 + Round(val(Txtroff.Text) / adoPrimaryRS.RecordCount, 2)
                
                frtamt1 = frtamt1 + val(grddatagrid.Columns(Frtamt))
                packamt1 = packamt1 + val(grddatagrid.Columns(Packamt))
                
                adoPrimaryRS1("SNO") = S_NO
                adoPrimaryRS1("totvalue") = adoPrimaryRS1("totvalue") + adoPrimaryRS1("roff")
                tot1 = tot1 + adoPrimaryRS1("totvalue")
                S_NO = S_NO + 1
                adoPrimaryRS.MoveNext
            Loop
            
            Set BALERS2 = New Recordset
            BALERS2.Open "select * from rm_wastepdt1 where 1=2", DB, adOpenStatic, adLockBatchOptimistic
            balers.MoveFirst
            Do While Not balers.EOF
                BALERS2.AddNew
                BALERS2("divcode") = balers("divcode").Value
                BALERS2("docno") = balers("docno").Value
                BALERS2("docdt") = Format(balers("docdt").Value, "yyyy-mm-dd")
                BALERS2("waste") = balers("waste").Value
                BALERS2("sno") = balers("sno").Value
                BALERS2("pack_no") = balers("pack_no").Value
                BALERS2("kgs") = balers("kgs").Value
                Call balegrid_align
            balers.MoveNext
            Loop
            Opt = ""
            
            
            
            Set rsa = New Recordset
            rsa.Open "select Divcode,DOCNO,DOCDT,SLCODE,TYPE,VARCODE,BILLNO,BILLDT, frgtamt, pkfwdamt,ROFF,ptype,through,totalamt from RM_WASTEPHD where 1=2", DB, adOpenStatic, adLockBatchOptimistic
            
            rsa.AddNew
            
            rsa("divcode") = Divcode
            rsa("docno") = val(Text1(0).Text)
            rsa("DOCDT") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
            rsa("type") = Left(Combo1.Text, 1)
            rsa("slcode") = Text1(2).Text
            rsa("varcode") = Text1(1).Text
            rsa("billno") = val(Text1(5))
            rsa("billdt") = Format(MaskEdBox2.Text, "yyyy-mm-dd")
            rsa("frgtamt") = val(frtamt1)
            rsa("pkfwdamt") = val(packamt1)
            rsa("roff") = val(Txtroff.Text)
            rsa("ptype") = Text1(302).Text
            rsa("through") = Text2.Text
            rsa("totalamt") = val(Text1(6).Text)
            rsa.UpdateBatch adAffectAllChapters

            BALERS2.UpdateBatch adAffectAllChapters
            adoPrimaryRS1.UpdateBatch adAffectAllChapters
            
            '------------------ fa updation
            
                Dim thistc As Integer
    Dim thisgl As String
    Dim thispjno As Integer
            thistc = 0
            thisgl = ""
            thistc = val(Text1(300).Text)
           

'****************** PURCHASE JOURNAL NUMBER GENERATION *********************
        Set frs = New Recordset
        frs.Open "select fainstal from rm_param", DB
        If frs(0) = "Y" Then
            Set rs1 = New Recordset
            rs1.Open "SELECT a.glcode FROM fa_tcmas a,fa_glmas b WHERE a.glcode=b.glcode and tc = " & thistc & "", DB, adOpenStatic
            If Not rs1.EOF Then thisgl = rs1(0)
        End If
        thispjno = 0
        
        Dim prs12 As Recordset
        Set prs12 = New Recordset
        prs12.Open "SELECT isnull(MAX(isnull(pjNO,0)),0) FROM RM_wastephd WHERE DIVCODE = '" & Divcode & "' AND PJDT >= '" & Format(yfdate, "yyyy-mm-dd") & "' AND PJDT <='" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
        If prs12(0) <> 0 Then
            thispjno = prs12(0) + 1
        Else
            thispjno = thispjno + 1
        End If
        If Text1(300).Text <> "" Then
        DB.Execute ("update rm_wastephd set pjtc='" & Text1(300).Text & "',pjno='" & thispjno & "' ,pjdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' where docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'")
        End If
        On Error GoTo l1:
        DB.Execute "INSERT INTO FA_PURHD(DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT)VALUES ('" & Divcode & "' ," & thistc & "," & thispjno & ",'" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "','" & Text1(2).Text & "','" & Text1(5) & "','" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "',0," & val(Text1(6).Text) & ")"
        adoPrimaryRS.MoveFirst
        sno1 = 1
        Do While Not adoPrimaryRS.EOF = False
            sno1 = sno1 + 1
            DB.Execute "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT)VALUES ('" & Divcode & "' ," & thistc & "," & thispjno & ",'" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "'," & sno1 & ",'" & thisgl1 & "','Waste Purchase on " & MaskEdBox2.Text & "'," & adoPrimaryRS("quantity") & "," & adoPrimaryRS("rate") & "," & adoPrimaryRS("totvalue") & ")"

            adoPrimaryRS.MoveNext
        Loop
l1:
        'To upadte in Rpacknos Table
        BALERS2.MoveFirst
     
        Do While Not BALERS2.EOF
            DB.Execute "INSERT INTO ig_rpacknos(DIVCODE,PACK_YEAR,PACKNO_CODE,PACK_NO,PROD_DATE,PACK_TYPE,PRODUCT_CODE,PACK_WT,TARE,LOT_CODE,TFLG,PUR_DATE,invoiced) VALUES ('" & Divcode & "' ," & val(YearNo) & ",'BA'," & BALERS2("PACK_NO") & ",'" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "','B','" & BALERS2("WASTE") & "'," & BALERS2("KGS") & ", " & 0 & ",'WL','N', '" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "','N') "
            BALERS2.MoveNext
        Loop
            DB.CommitTrans
1:
            MsgBox "Record(s) Saved", vbInformation, head
    End If
    
    If Opt = "mod" Then
    '''Added for kgs matching in grddatagrid and balegrid
        balers.MoveFirst
        Opt = ""
        temp_value = 0
        temp_kg = 0
        roff1 = 0
        frtamt1 = 0
        packamt1 = 0
        
        Do While Not balers.EOF
            temp_value = temp_value + val(balegrid.Columns(7).Text)
            balers.MoveNext
        Loop
        
        Do While Not adoPrimaryRS.EOF
            temp_kg = temp_kg + val(grddatagrid.Columns(Kgs).Text)
            adoPrimaryRS.MoveNext
        Loop
        If Round(val(temp_kg), 0) <> Round(val(temp_value), 0) Then
            adoPrimaryRS.MoveFirst
            MsgBox "Kgs does not Tally , Please Press F1 for Bales Gereration", vbInformation, head
            grddatagrid.Col = 8
            grddatagrid.SetFocus
            Screen.MousePointer = 0
            Opt = "mod"
            Exit Sub
        End If
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        DB.BeginTrans
        Dim roundvalue As Double
        Dim totamount As Double
        totamount = 0
        roundvalue = 0
        Opt = ""
'        Set adoPrimaryRS1 = New Recordset
'        adoPrimaryRS1.Open "select a.Divcode,DOCNO,DOCDT,TYPE,WASTE ""Waste"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO from RM_WASTEPDT a where docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            frtamt1 = 0
            packamt1 = 0
            adoPrimaryRS.MoveFirst
            Do While Not adoPrimaryRS.EOF
                DB.Execute "update RM_WASTEPDT  set type='" & Trim(Left(Combo1.Text, 1)) & "',quantity = '" & grddatagrid.Columns(Quantity).Text & "',kgs='" & grddatagrid.Columns(Kgs).Text & "',value ='" & grddatagrid.Columns(Value1) & "', " & _
                            " disper= '" & val(grddatagrid.Columns(Disper).Text) & "',disamt ='" & val(grddatagrid.Columns(Disamt).Text) & "',bedper ='" & val(grddatagrid.Columns(BEDPer).Text) & "',bedamt ='" & val(grddatagrid.Columns(Bedamt).Text) & "',aedper ='" & val(grddatagrid.Columns(AEDPer).Text) & "', " & _
                            " aedamt = '" & val(grddatagrid.Columns(AedAmt).Text) & "',taxper ='" & val(grddatagrid.Columns(Taxper).Text) & "',taxamt ='" & val(grddatagrid.Columns(Taxamt).Text) & "',scper ='" & val(grddatagrid.Columns(SCPer).Text) & "'," & _
                            " scamt ='" & val(grddatagrid.Columns(Scamt)) & "',packamt ='" & val(grddatagrid.Columns(Packamt)) & "',frtamt ='" & val(grddatagrid.Columns(Frtamt)) & "',othchrgs ='" & val(grddatagrid.Columns(Othchrgs)) & "',roff ='" & val(grddatagrid.Columns(Roff)) & "', " & _
                            " totvalue ='" & val(grddatagrid.Columns(totalvalue)) & "',remarks ='" & val(grddatagrid.Columns(remarks)) & "' where docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and waste='" & grddatagrid.Columns(Waste).Text & "' "
                
                If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then
                   ''adoPrimaryRS1("Roff") = val(Txtroff.Text) - roff1
                   roundvalue = val(Txtroff.Text) - roff1
                Else
                   'adoPrimaryRS1("Roff") = val(Txtroff.Text) / adoSecondaryRS.RecordCount
                   roundvalue = val(Txtroff.Text) / adoSecondaryRS.RecordCount
                   
                End If
                totamount = val(grddatagrid.Columns(totalvalue)) + val(roundvalue)
                
                DB.Execute "update RM_WASTEPDT set roff='" & val(roundvalue) & "',totvalue='" & totamount & "' where docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and waste='" & grddatagrid.Columns(Waste).Text & "' "
                
                roff1 = roff1 + Round(val(Txtroff.Text) / adoPrimaryRS.RecordCount, 2)
                
                frtamt1 = frtamt1 + val(grddatagrid.Columns(Frtamt))
                packamt1 = packamt1 + val(grddatagrid.Columns(Packamt))
                
                adoPrimaryRS.MoveNext
            Loop
            Opt = ""
            
''******************** Waste Header Updation
            DB.Execute "update RM_WASTEPHD set  type='" & Trim(Left(Combo1.Text, 1)) & "',slcode='" & Text1(2).Text & "', " & _
                        "varcode='" & Text1(1).Text & "',billno='" & Text1(5).Text & "' ,billdt='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "', " & _
                        "frgtamt='" & val(frmamt1) & "',pkfwdamt='" & val(packamt1) & "',roff='" & val(Txtroff.Text) & "', " & _
                        "ptype='" & Text1(302).Text & "',through='" & Text2.Text & "',totalamt='" & val(Text1(6).Text) & "' where docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' "
   
'''*&************* updating Bale Details
            balers.MoveFirst
            Do While Not balers.EOF
                DB.Execute "UPDATE RM_wastePDT1 SET KGS='" & balers("KGS").Value & "' WHERE DOCNO='" & val(Text1(0).Text) & "' AND DOCDT='" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & "' AND WASTE='" & balegrid.Columns("WASTE").Text & "' AND PACK_NO='" & balegrid.Columns("PACK_NO").Text & "' and divcode='" & Divcode & "' "
                                
                balers.MoveNext
            Loop
            
''********************** Fa Updation
            thistc = 0
            thisgl = ""
            thistc = val(Text1(300).Text)
           

'****************** PURCHASE JOURNAL NUMBER GENERATION *********************
        Set frs = New Recordset
        frs.Open "select fainstal from rm_param", DB
        If frs(0) = "Y" Then
            Set rs1 = New Recordset
            rs1.Open "SELECT a.glcode FROM fa_tcmas a,fa_glmas b WHERE a.glcode=b.glcode and tc = " & thistc & "", DB, adOpenStatic
            If Not rs1.EOF Then thisgl = rs1(0)
        End If
        thispjno = 0
        
        'Dim prs12 As Recordset
        Set Rs = New Recordset
        Rs.Open "SELECT isnull(PJNO,0) FROM RM_wastephd WHERE DIVCODE = '" & Divcode & "' AND PJDT >= '" & Format(yfdate, "yyyy-mm-dd") & "' AND PJDT <='" & Format(yldate, "yyyy-mm-dd") & "' and docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            If Rs(0) > 0 Then
                    Set prs12 = New Recordset
                    prs12.Open "SELECT pjno FROM RM_wastephd WHERE DIVCODE = '" & Divcode & "' AND PJDT >= '" & Format(yfdate, "yyyy-mm-dd") & "' AND PJDT <='" & Format(yldate, "yyyy-mm-dd") & "' and docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                    If prs12(0) > 0 Then
                        thispjno = prs12(0)
                    Else
                        thispjno = thispjno + 1
                    End If
            Else
                    Set prs12 = New Recordset
                    prs12.Open "SELECT isnull(MAX(isnull(pjNO,0)),0) FROM RM_wastephd WHERE DIVCODE = '" & Divcode & "' AND PJDT >= '" & Format(yfdate, "yyyy-mm-dd") & "' AND PJDT <='" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
                    If prs12(0) <> 0 Then
                        thispjno = prs12(0) + 1
                    Else
                        thispjno = thispjno + 1
                    End If
            End If
        Else
                    Set prs12 = New Recordset
                    prs12.Open "SELECT isnull(MAX(isnull(pjNO,0)),0) FROM RM_wastephd WHERE DIVCODE = '" & Divcode & "' AND PJDT >= '" & Format(yfdate, "yyyy-mm-dd") & "' AND PJDT <='" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
                    If prs12(0) <> 0 Then
                        thispjno = prs12(0) + 1
                    Else
                        thispjno = thispjno + 1
                    End If
        End If
            
        On Error GoTo l11:
            Set rsa = New Recordset
            rsa.Open "select isnull(PJNO,0) from RM_WASTEPHD where docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
            If Text1(300).Text <> "" Then
                DB.Execute ("update rm_wastephd set pjtc='" & Text1(300).Text & "',pjno='" & thispjno & "' ,pjdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' where docno='" & val(Text1(0).Text) & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' ")
            
            End If
            If rsa(0) > 0 Then
                DB.Execute "update FA_PURHD SET  SLCODE='" & Text1(2).Text & "',BILLNO='" & Text1(5) & "',BILLDT='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "',BILLAMT=" & val(Text1(6).Text) & " WHERE TC=" & thistc & " and PJVNO=" & thispjno & " and PJVDT='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' "
                Do While Not adoPrimaryRS.EOF = False
                    DB.Execute "update FA_PURDT set PJVSNO=" & thispjno & ",PJVDT='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "',glcode='" & thisgl1 & "',rate=" & adoPrimaryRS("rate") & ",amount=" & adoPrimaryRS("totvalue") & " where divcode='" & Divcode & "'  and tc=" & thistc & " and PJVNO=" & thispjno & " and PJVDT='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' and QTY='" & Text1(2).Text & "')"
        
                    adoPrimaryRS.MoveNext
                Loop
            Else                                                               ''                                          Divcode          TC             PJVNO                       PJVDT                                SLCODE                  BILLNO                     BILLDT                         TAXAMT        BILLAMT
                DB.Execute "INSERT INTO FA_PURHD(DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT)VALUES ('" & Divcode & "' ," & thistc & "," & thispjno & ",'" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "','" & Text1(2).Text & "','" & Text1(5) & "','" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "',0," & val(Text1(6).Text) & ")"
                adoPrimaryRS.MoveFirst
                sno1 = 1
                Do While Not adoPrimaryRS.EOF = False
                    sno1 = sno1 + 1
                    DB.Execute "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT)VALUES ('" & Divcode & "' ," & thistc & "," & thispjno & ",'" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "'," & sno1 & ",'" & thisgl1 & "','Waste Purchase on " & MaskEdBox2.Text & "'," & adoPrimaryRS("quantity") & "," & adoPrimaryRS("rate") & "," & adoPrimaryRS("totvalue") & ")"
        
                    adoPrimaryRS.MoveNext
                Loop
            End If
l11:
        'To upadte in Rpacknos Table
        ''BALERS2.MoveFirst
            
            balers.MoveFirst
            Do While Not balers.EOF
                DB.Execute "update ig_rpacknos set PACK_WT='" & balegrid.Columns("KGS").Text & "' where pack_no='" & balegrid.Columns("pack_no").Text & "' AND product_code='" & balers("waste").Value & "' AND prod_date='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' AND pur_date='" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "' "
                
                '''DB.Execute "INSERT INTO ig_rpacknos(DIVCODE,PACK_YEAR,PACKNO_CODE,PACK_NO,PROD_DATE,PACK_TYPE,PRODUCT_CODE,PACK_WT,TARE,LOT_CODE,TFLG,PUR_DATE,invoiced) VALUES ('" & Divcode & "' ," & YearNo & ",'BA'," & BALERS2("PACK_NO") & ",'" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "','B','" & BALERS2("WASTE") & "'," & BALERS2("KGS") & ", " & 0 & ",'WL','N', '" & Format(MaskEdBox2.Text, "yyyy-mm-dd") & "','N') "
                
                balers.MoveNext
            Loop
            DB.CommitTrans
                MsgBox "Record(s) Modified", vbInformation, head
            End If
        If Opt = "del" Then
            DB.BeginTrans
           k = MsgBox("Do you Want to Delete this Record", vbYesNo, head)
           If k = vbYes Then
              DB.Execute "delete from RM_WASTEPDT where docno =" & Text1(0).Text & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'"
              DB.Execute "delete from RM_WASTEPHD where docno =" & Text1(0).Text & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'"
              
              
              On Error Resume Next
              DB.CommitTrans
              MsgBox "Records Deleted Succesfully", vbInformation, head
           Else
                Exit Sub
                Call QUERY_MODE
           End If
        End If
        Call QUERY_MODE
Case 10
On Error Resume Next
Select Case Opt
   Case "add"
      DB.RollbackTrans
   Case "mod"
     ' DB.RollbackTrans
   Case "del"
      DB.RollbackTrans
End Select
    Opt = ""
    desc.Caption = "Query"
    'Screen.MousePointer = 11
    grddatagrid.AllowUpdate = False
    Call QUERY_MODE
    Call cancl(BUTTON)
    moveflg = False
Case 11
On Error Resume Next
   Unload Me
End Select
End Sub
Private Sub Cmdcancel_Click()
If Opt = "add" Then
  Frame4.Visible = False
  Exit Sub
End If
   Frame4.Visible = False
   Call QUERY_MODE
End Sub
Private Sub cmdOk_Click()
Select Case codelist1.listfield1
Case "DOCNO"
 If Opt = "mod" Or Opt = "del" Or Opt = "add" Then
      Text1(0).Text = codelist1.Code
      DTPicker1.Value = codelist1.description
      If Opt = "add" Then
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "SELECT DOCNO,DOCDT,TYPE,IN_TIME,SLCODE,VARCODE,BILLNO,BILLDT,totalamt, frgtamt, pkfwdamt,ROFF FROM RM_WASTEPHD WHERE DOCNO = " & codelist1.Code & " AND ERTFLG='G' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
      Else
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "SELECT DOCNO,DOCDT,TYPE,IN_TIME,SLCODE,VARCODE,BILLNO,BILLDT,totalamt, frgtamt, pkfwdamt,ROFF FROM RM_WASTEPHD WHERE DOCNO = " & codelist1.Code & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
      End If
      Set adoPrimaryRS = New Recordset
      'adoPrimaryrs.Open "SELECT DOCNO,DOCDT,TYPE ,IN_TIME,SLCODE,THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QTY"",RATE""RATE"",VALUE""VALUE"", taxper, taxamt, scper, scamt, othchrgs, totvalue,REF""REMARKS"" FROM RM_WASTEPDT WHERE DOCNO = " & codelist1.code & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", db, adOpenDynamic, adLockOptimistic
      adoPrimaryRS.Open "select DOCNO,DOCDT,IN_TIME,WASTE ""WASTE"",QUANTITY ""QUANTITY"",kgs""Kgs"",RATE""RATE"",VALUE ""VALUE"", DisPer,Disamt,Taxper, Taxamt, Scper, Scamt,  Othchrgs, Totvalue, REF ""REMARKS"",ERTFLG,SNO FROM RM_WASTEPDT WHERE DOCNO = " & codelist1.Code & " AND DOCDT = '" & Format(codelist1.description, "YYYY/MM/DD") & "'", DB, adOpenKeyset, adLockBatchOptimistic
      If Not adoSecondaryRS.EOF Then
          If adoPrimaryRS.RecordCount > 0 Then
            Set grddatagrid.DataSource = adoPrimaryRS
            Call GRID_ALIGN
            Call bindcontrols
            Frame4.Visible = False
            Call adddelmod(BUTTON)
            moveflg = False
            For i = 0 To 5
              grddatagrid.Columns(i).Visible = False
            Next
          Else
             MsgBox "NO RECORDS FOUND", vbInformation, head
             Frame4.Visible = False
             Call QUERY_MODE
          End If
       Else
            MsgBox "NO RECORDS FOUND", vbInformation, head
            Frame4.Visible = False
            Call QUERY_MODE
       End If
       If Opt = "mod" Then
          Call EnableControls
       End If
       If Combo1.Text = "R" Then
          Combo1.Text = "R-RETURNABLE GATE PASS"
        Else
          Combo1.Text = "NR-NON RETURNABLE GATE PASS"
        End If
        Exit Sub
 End If
If Opt = "add" Then
     Set tp = New Recordset
     tp.Open "SELECT VARCODE FROM OUTPASSHD WHERE DOCNO = " & codelist1.Code & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
     If tp.RecordCount > 0 Then Text1(1).Text = tp(0)
    Set GPNAME = New Recordset
    GPNAME.Open "SELECT GRPNAME FROM IN_GRP WHERE GRPCODE='" & tp(0) & "'", DB
    If GPNAME.RecordCount > 0 Then Text1(4).Text = GPNAME(0)
     Set tp = New Recordset
     FLAG1 = "TRUE"
     tp.Open "SELECT DOCNO,DOCDT,TYPE,OUT_TIME""IN_TIME"",OUT_TO""SLCODE"",THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QUANTITY"",REF""REFERENCE"",QUANTITY""VALUE"" FROM OUTPASSDT WHERE DOCNO = " & codelist1.Code & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
       If Not tp.EOF Then
         Set grddatagrid.DataSource = tp
         Text1(2).Text = tp!SLCODE
         Combo1.Text = "R-RETURNABLE GATE PASS"
       End If
       Frame4.Visible = False
       For i = 0 To 4
         grddatagrid.Columns(i).Visible = False
       Next i
       grddatagrid.Columns(9).Value = Null
       grddatagrid.Col = 9
       grddatagrid.SetFocus
      ' Set adoPrimaryRS = TP
End If
Case "VARCODE"
    On Error Resume Next
    Text1(1).Text = codelist1.Code
    Text1(4).Text = codelist1.description
    Frame4.Visible = False
    SSTab1.Visible = True
    SSTab1.Enabled = True
    Combo1.SetFocus
    Exit Sub
Case "ITEMCODE"
    On Error Resume Next
    grddatagrid.Columns(6).Text = codelist1.description
    Frame4.Visible = False
    SSTab1.Visible = True
    SSTab1.Enabled = True
    grddatagrid.Col = 8
    grddatagrid.SetFocus
    Exit Sub
    
Case "slcode", "SUPCODE"
    On Error Resume Next
    Text1(2) = codelist1.description
    Frame4.Visible = False
    SSTab1.Visible = True
    SSTab1.Enabled = True
    grddatagrid.Col = 5
    grddatagrid.SetFocus
    Exit Sub
End Select
End Sub

Private Sub Command1_Click()
'Dim xx As String
'    Set RPT = New Report.ReportView
'    a = FreeFile
'    Close
'    c = 0
'    Pg = 0
'    CHK = 0
'    Open "C:\INPASS.txt" For Output As #a
'    Set rs = New Recordset
'    Set rs1 = New Recordset
'    rs1.Open "SELECT * FROM RM_WASTEPDT WHERE DOCNO = " & Text1(0).Text & " AND ERTFLG='E'", DB, adOpenDynamic, adLockOptimistic
'    If rs1.EOF Then
'      Exit Sub
'    End If
'    rs.Open "select * from pp_divmas where divcode = '" & DIVCODE & "'", DB, adOpenDynamic, adLockOptimistic
'    Print #a, Space(10) & Chr(218) & String(75, Chr(196)) & Chr(191)
'    Print #a, Space(10) & Chr(179) & Space(20) & Chr(27) & "E" & rs!divname & Chr(27) & "F" & Space(55 - Len(rs!divname)) & Chr(179)
'    'Print #a, Space(10) & Chr(179) & Space(75) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(30) & rs!ADD1 & Space(45 - Len(rs!ADD1)) & Chr(179)
'    'Print #a, Space(10) & Chr(179) & Space(75) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(15) & rs!add2 & "  " & rs!CITY & "  " & "PIN- "; rs!PINCODE & Space(49 - (Len(rs!ADD1) + Len(rs!CITY) + Len(rs!PINCODE))) & Chr(179)
'    'Print #a, Space(10) & Chr(179) & Space(75) & Chr(179)
'    If rs1("TYPE") = "R" Then
'       Print #a, Space(10) & Chr(179) & Space(27) & "RETURNABLE GATE PASS" & Space(28) & Chr(179)
'    End If
'    If rs1("TYPE") = "N" Then
'       Print #a, Space(10) & Chr(179) & Space(25) & "NON RETURNABLE GATE PASS" & Space(26) & Chr(179)
'    End If
'    'Print #a, Space(10) & Chr(179) & Space(75) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(57) & "RC No: " & rs!rc_no & Space(7) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(75) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(3) & "No. " & rs1!docno & Space(50 - Len(rs1!docno)) & "Date : " & Format(rs1!docdt, "dd.mm.yyyy") & Space(1) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(75) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(3) & "To," & Space(69) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(3) & "M/s." & Space(68) & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(7) & rs1!SLCODE & Space(68 - Len(rs1!SLCODE)) & Chr(179)
'    'Print #a, Space(10) & Chr(179) & Space(75) & Chr(179)
'    'Print #a, Space(10) & Chr(179) & Space(75) & Chr(179)
'    Print #a, Space(10) & "Ã" & String(6, Chr(196)) & Chr(194) & String(43, Chr(196)) & Chr(194) & String(8, Chr(196)) & Chr(194) & String(15, Chr(196)) & Chr(180)
'    Print #a, Space(10) & Chr(179) & Space(3) & "S. " & Chr(179) & "                DESCRIPTION                " & Chr(179) & "  QNTY  " & Chr(179) & "    PURPOSE    " & Chr(179)
'    Print #a, Space(10) & Chr(179) & Space(3) & "No " & Chr(179) & Space(43) & Chr(179) & Space(8) & Chr(179) & Space(15) & Chr(179)
'    Print #a, Space(10) & "Ã" & String(6, Chr(196)) & Chr(197) & String(43, Chr(196)) & Chr(197) & String(8, Chr(196)) & Chr(197) & String(15, Chr(196)) & Chr(180)
'    Print #a, Space(10) & Chr(179) & Space(6) & Chr(179) & Space(43) & Chr(179) & Space(8) & Chr(179) & Space(15) & Chr(179)
'    Print #a, Space(10) & Chr(179) & "  1   " & Chr(179) & Space(3) & rs1!WASTE & Space(40 - Len(rs1!WASTE)) & Chr(179) & Space(3) & rs1!quantity & Space(5 - Len(rs1!quantity)) & Chr(179) & Space(15) & Chr(179)
'    Dim COUNT As Integer, COUNT1 As Integer
'    COUNT = 1
'    COUNT2 = 2
'    rs1.MoveNext
'    While Not rs1.EOF
'        Print #a, Space(10) & Chr(179) & Space(6) & Chr(179) & Space(43) & Chr(179) & Space(8) & Chr(179) & Space(15) & Chr(179)
'        Print #a, Space(10) & Chr(179) & Padl(COUNT2, 3, " ") & Space(3) & Chr(179) & Space(3) & rs1!WASTE & Space(40 - Len(rs1!WASTE)) & Chr(179) & Space(3) & rs1!quantity & Space(5 - Len(rs1!quantity)) & Chr(179) & Space(15) & Chr(179)
'        COUNT2 = COUNT2 + 1
'        COUNT = COUNT + 2
'        rs1.MoveNext
'    Wend
'    For i = 1 To 18 - COUNT
'     Print #a, Space(10) & Chr(179) & Space(6) & Chr(179) & Space(43) & Chr(179) & Space(8) & Chr(179) & Space(15) & Chr(179)
'    Next i
'     Print #a, Space(10) & "À" & String(6, Chr(196)) & Chr(193) & String(43, Chr(196)) & Chr(193) & String(8, Chr(196)) & Chr(193) & String(15, Chr(196)) & "Ù"
'     Print #a,
'     Print #a,
'     Print #a,
'     Print #a, Space(10) & "Prepared By" & Space(22) & "Received By" & Space(22) & "Approved By"
'    If rs.RecordCount > 0 Then
'
'End If
'Print #a, Chr(12)
'Close #a
'a = FreeFile
'Open "C:\INPASS.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:\"
'Print #a, "cd\"
'Print #a, "type INPASS.txt>prn"
'RPT.txtfile = "c:\INPASS.txt"
'RPT.Batfile = "c:\INPASS.bat"
'Close
Dim RS2  As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset

Dim i, s1 As Integer
Dim RPTV As Report.ReportView
Dim SR As String
Set DB = New Connection
DB.Open connectstring
s1 = 0
If Text1(0).Text = Empty Then GoTo 10
Set rs3 = New Recordset
rs3.Open "SELECT SLCODE,DOCNO,DOCDT,totalamt,BILLNO,BILLDT, isnull(frgtamt,0) frgtamt, isnull(pkfwdamt,0) pkfwdamt,VARCODE,ISNULL(ROFF,0) AS ROFF,SLCODE FROM RM_WASTEPHD WHERE DOCNO= " & Text1(0).Text & " AND DOCDT='" & Format(MaskEdBox1.Text, "YYYY/MM/DD") & "' ", DB, adOpenStatic, adLockReadOnly
Set RS2 = New Recordset
RS2.Open "SELECT WASTE,QUANTITY,REF,RATE,taxamt, scamt, othchrgs, totvalue,isnull(disper,0),isnull(disamt,0) as disamt FROM RM_WASTEPDT WHERE docno = " & val(Text1(0).Text) & " and  docdt = '" & Format(MaskEdBox1.Text, "YYYY/MM/DD") & "' ", DB, adOpenStatic, adLockReadOnly
If RS2.EOF = True Then
10
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set RPTV = New Report.ReportView
a = FreeFile
Open "C:\inpass.TXT" For Output As #a
 Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "E"
    Print #a,
    Print #a, Space(5) + CENTRE("WASTE PURCHASE ENTRY", 85, " ")
    Print #a,
pg1 = 1
i = 0
   ''''''''''''''''''''''
    Set rs4 = New Recordset
    rs4.Open "select isnull(add1,'') as add1,isnull(add2,'') as add2,isnull(add3,'') as add3 from fa_slmas where slcode='" & Trim(rs3("SLCODE")) & "' ", DB, adOpenStatic
    
    Set newrs1 = New Recordset
    newrs1.Open "select a.VARNAME from RM_VAR a,RM_WASTEPHD b where b.VARCODE='" & rs3("VARCODE") & "' and a.VARCODE=b.VARCODE", DB, adOpenStatic

    Dim sno, cnt As Integer
    sno = 1
    cnt = 0
    Print #a, Space(5) + String(86, "-")
    Print #a, Space(5) & "Recieved From : " + Padr(Text5.Text, 38, " ") + Space(1) + "Document No   : " + Padr(CStr(rs3("DOCNO")), 15, " ")
    Print #a, Space(5) & "Supplier Addr.: " + Padr(rs4("add1"), 38, " ") + Space(1) + "Document Date : " + Format(CStr(rs3("DOCDT")), "dd/mm/yyyy")
    Print #a, Space(5) & "              : " + Padr(CStr(rs4("add2")), 38, " ") + Space(1) + "Department    : " + Padr(CStr(newrs1("VARNAME")), 18, " ")
    Print #a, Space(5) & "              : " + Padr(CStr(rs4("add3")), 38, " ") + Space(1) + "Invoice No.   : " + Padr(rs3("BILLNO"), 15, " ")
    Print #a, Space(5) & "              : " + Padr(" ", 10, " ") & Space(29) & "Invoice Date  : " + Padr(rs3("BILLDT"), 10, " ")
    Print #a, Space(5) + String(86, "-")
    Call BestGatePassHeader
    cnt = 0
    sno = 1
    
    Dim remarks As String
    remarks = ""
    
    Do While Not RS2.EOF
           'Print #a, Space(5); Padl(CStr(sno), 4, " ") + Space(2) + Padr(rs2("WASTE"), 51, " ") + IIf(rs2("QUANTITY") = 0, Space(9), Padl(INF(Trim(rs2("QUANTITY")), 3), 9, " ")) & Space(2); Padr(rs2("REF"), 25, " ")
        Print #a, Space(5); Padl(CStr(sno), 4, " ") + Space(1) + _
                      Padr(RS2("WASTE"), 25, " "); Space(1); Padl(INF(RS2("quantity"), 3), 10, " "); Space(1); _
                      Padl(INF(RS2("RATE"), 2), 8, " "); Space(1); _
                      Padl(INF(RS2("taxamt"), 2), 8, " "); Space(1); _
                      Padl(INF(RS2("scamt"), 2), 7, " "); Space(1); _
                      Padl(INF(RS2("disamt"), 2), 8, " "); Space(1); _
                      Padl(INF(RS2("totvalue"), 2), 9, " "); _
                      ""
        If sno = 1 Then remarks = IIf(IsNull(RS2("REF")), "", RS2("REF"))
        cnt = cnt + 1
        sno = sno + 1
        i = i + 1
        If i >= 8 Then
            Print #a,
            Print #a, Space(5); String(86, "-")
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(5) + String(86, "-")
            Print #a, Space(5) & "Document No   : " + Padr(CStr(rs3("DOCNO")), 15, " ") + Space(29) + "Document Date : " + Format(CStr(rs3("DOCDT")), "dd/mm/yyyy")
            Print #a, Space(5) & "Recieved From : " + Padr(rs3("SLCODE"), 60, " ")
            Print #a, Space(5) + String(86, "-")
            Call BestGatePassHeader
            cnt = 0
            i = 0
        End If
        RS2.MoveNext
        'sno = sno + 2
     Loop
     Print #a,
     cnt = cnt + 1
     If rs3("frgtamt") > 0 Then
        Print #a, Space(68); "Fright Amount"; Space(1); Padl(INF(rs3("frgtamt"), 2), 9, " ")
        cnt = cnt + 1
     End If
     If rs3("pkfwdamt") > 0 Then
        Print #a, Space(65); " Pk & Fwd Amount"; Space(1); Padl(INF(rs3("pkfwdamt"), 2), 9, " ")
        cnt = cnt + 1
     End If
     
     If rs3("roff") > 0 Then
        Print #a, Space(65); "Round Off Amount"; Space(1); Padl(INF(rs3("roff"), 2), 9, " ")
        cnt = cnt + 1
     End If
     Print #a, Space(57) + Space(26) + "--------"
     Print #a, Space(60) + "Total Amount with Tax"; Padl(INF(rs3("totalamt"), 2), 10, " ")
     Print #a, Space(57) + Space(26) + "--------"
     cnt = cnt + 3
     If cnt < 16 Then
        For i = 1 To 16 - cnt
          Print #a,
        Next
     End If
     Print #a, Space(5); String(86, "-")
     Print #a, Space(5); "Remarks: "; remarks
     Print #a,
     Print #a,
     Print #a,
     Print #a, Space(5); "Prep by" + Space(7) + "      " + Space(8); "    " + Space(8); "    " + Space(8); "     " + Space(8); "   " + Space(8) + "    FM  "
     Close #a
     a = FreeFile
     Open "c:\inpass.bat" For Output As #a
     Print #a, "cd\"
     Print #a, "c:"
     Print #a, "cd\"
     Print #a, "type inpass.txt>prn"
     Close #a
     RPTV.txtfile = "c:\inpass.txt"
     RPTV.Batfile = "c:\inpass.bat"
End Sub

Private Sub DTPicker1_CloseUp()
    MaskEdBox1.Text = DTPicker1.Value
End Sub

Private Sub DTPicker2_CloseUp()
    MaskEdBox2.Text = DTPicker2.Value
End Sub
Private Sub Form_Load()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    desc.Caption = "Query"
    DATLAB.Caption = Date
    Text1(3).Text = Format(time)
    Opt = "Qry"
    
    Dim rsupd As Recordset
'    Set rsupd = New Recordset
'    rsupd.Open "select docno, docdt from RM_WASTEPHD order by docno", DB, adOpenKeyset, adLockBatchOptimistic
'    If rsupd.RecordCount > 0 Then
'        rsupd.MoveFirst
'        Do While Not rsupd.EOF
'            DB.Execute "update RM_WASTEPHD set totalamt=" & _
'                       "(select sum(totvalue) from RM_WASTEPDT where docno=" & rsupd("docno") & _
'                       " and docdt ='" & Format(rsupd("docdt"), "yyyy-mm-dd") & "') where docno=" & rsupd("docno") & " and docdt ='" & Format(rsupd("docdt"), "yyyy-mm-dd") & "'"
'            rsupd.MoveNext
'        Loop
'    End If
    Call QUERY_MODE
End Sub

Private Sub EnableControls()
    Dim X As TextBox
    For Each X In Me.Text1
       X.Locked = False
    Next
    Combo1.Locked = False
End Sub
Public Sub BestGatePassHeader()
    'Print #a, Space(5) & "S.No. Material Name                                          Value  Remarks"
    Print #a, Space(5) & "S.No Material Name               Quantity     Rate   TaxAmt   ScAmt   DisAmt       Amt"
    Print #a, Space(5); String(86, "-")
End Sub
Public Sub DisableControls()
    Dim tb As TextBox
        For Each tb In Me.Text1
            tb.Locked = True
        Next
    Combo1.Locked = True
End Sub

Private Sub QUERY_MODE()
     Set adoPrimaryRS = New Recordset
     Set adoSecondaryRS = New Recordset
     FLAG1 = False
     Set grddatagrid.DataSource = Nothing
       adoSecondaryRS.Open "SELECT distinct DOCNO,DOCDT,TYPE ,IN_TIME,SLCODE,VARCODE,BILLNO,BILLDT,totalamt, frgtamt, pkfwdamt,ROFF,Through,Pjtc,Ptype FROM RM_WASTEPHD WHERE DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' ORDER BY DOCNO", DB, adOpenDynamic, adLockOptimistic
       If adoSecondaryRS.EOF Then
          MsgBox "No Records Found", vbInformation, head
          BUTTON(0).Enabled = True
          Text1(0).Text = ""
          Text1(2).Text = ""
          Text1(3).Text = ""
          Combo1.Text = ""
          Exit Sub
       End If
       If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveLast
       Dim DNO As Integer
       DNO = adoSecondaryRS("DOCNO")
       adoPrimaryRS.Open "select a.Divcode,DOCNO,DOCDT,TYPE,WASTE ""Waste"",Description,BALEWT ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO,Pack_No from RM_WASTEPDT a,ig_rproduct b WHERE a.waste=b.product_code and DOCNO = " & adoSecondaryRS("DOCNO") & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", connectstring, adOpenStatic, adLockReadOnly
       If adoPrimaryRS.RecordCount > 0 Then
       
            If adoSecondaryRS!Type = "U" Then
            Combo1.Text = "U-Usable Waste"
            Else
            Combo1.Text = "U-Salable Waste"
            End If
               Call bindcontrols
               Set grddatagrid.DataSource = adoPrimaryRS
               
               'Text2.Text = IIf(IsNull(adoPrimaryRS(5)), " ", adoPrimaryRS(5))
               'grddatagrid.Columns(5).Visible = False
        desc.Caption = "Query"
        Call GRID_ALIGN
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        Call DisableControls
        
     Set balers = New Recordset
     balers.Open "SELECT distinct a.Divcode,a.Docno,a.Docdt,A.Waste,B.Description,a.Sno,a.Pack_No,a.Kgs  FROM RM_wastePDT1 a ,ig_rproduct b  WHERE DOCNO = " & adoPrimaryRS("DOCNO") & " AND DOCDT = '" & Format(adoPrimaryRS("DOCDT"), "yyyy-mm-dd") & "' and b.product_code = a.waste order by waste,sno", connectstring, adOpenStatic, adLockReadOnly
     Set balegrid.DataSource = balers
        Call balegrid_align
        
        SSTab2.Tab = 0
     Else
        MsgBox "No Records Found", vbInformation, head
        Call Norecfound(BUTTON)
        Exit Sub
     End If
     
     
     
End Sub
Private Sub bindcontrols()
On Error Resume Next
Dim oText As TextBox
    For Each oText In Me.Text1
        Set oText.DataSource = adoSecondaryRS
    Next
    Set Combo1.DataSource = adoSecondaryRS
    Text1(3).Text = Right(Text1(3).Text, 11)
    
    If adoSecondaryRS.RecordCount > 0 Then
        MaskEdBox1.Text = adoSecondaryRS("docdt")
        MaskEdBox2.Text = IIf(IsNull(adoSecondaryRS("billdt")), Empty, adoSecondaryRS("billdt"))
    End If
    Set Txtroff.DataSource = adoSecondaryRS
    Set MaskEdBox1.DataSource = adoSecondaryRS
    If Combo1.Text = "U" Then
        Combo1.Text = "U-Usable Waste"
    Else
        Combo1.Text = "S-Salable Waste"
    End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

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
    ElseIf KeyCode = vbKeyW And Shift = 2 Then
        
    End If
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 7 Then
        If Trim(grddatagrid.Columns(6).Text) = "" Then
           ' MsgBox "Item cannot be Empty", vbInformation, head
            grddatagrid.Col = 6
            grddatagrid.SetFocus
        End If
     End If
    If grddatagrid.Col >= grd_balewt Then
        Call CalulateTax
    End If
 End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error Resume Next
If (Opt = "add" Or Opt = "mod") Then
    If (Opt = "add" Or Opt = "mod") And ColIndex <> 4 Then
        lqty = 0
        lprice = 0
        disamt1 = 0
        bedamt1 = 0
        aedamt1 = 0
        taxamt1 = 0
        scamt1 = 0
        balewt1 = 0
        
        'grddatagrid.Columns(Kgs).Text = val(grddatagrid.Columns(grd_balewt).Text) * val(grddatagrid.Columns(Quantity).Text)
        
        
        
        If val(grddatagrid.Columns(Quantity).Text) <> 0 Then qty = grddatagrid.Columns(8).Value
        If val(grddatagrid.Columns(price).Text) <> 0 Then price = grddatagrid.Columns(9).Value

            grddatagrid.Row = grddatagrid.Row
            grddatagrid.Columns(10).Value = qty * price
        
        'Discount
            If val(grddatagrid.Columns(10).Text) <> 0 Then
                If grddatagrid.Columns(11).Value > 0 Then
                    grddatagrid.Columns(12).Text = grddatagrid.Columns(10).Value * _
                                                   (grddatagrid.Columns(11).Value / 100)
                    disamt1 = val(grddatagrid.Columns(12).Text)
                End If
            Else
                grddatagrid.Columns(12).Text = 0
            End If
      '  End If
        'Value-Discount
        Assval = val(grddatagrid.Columns(10).Value) - disamt1
        
         'Bed
       ' If ColIndex = 12 Then
            If val(grddatagrid.Columns(10).Text) <> 0 Then
                If grddatagrid.Columns(13).Value > 0 Then
                    grddatagrid.Columns(14).Text = Round(Assval * (val(grddatagrid.Columns(13).Text) / 100), 2)
                    bedamt1 = val(grddatagrid.Columns(14).Text)
                End If
            End If
       ' End If
       '  bedamt1 = val(grddatagrid.Columns(13).Text)
        'Aed
      '  If ColIndex = 14 Then
            If val(grddatagrid.Columns(10).Text) <> 0 Then
                If grddatagrid.Columns(15).Value > 0 Then
                    grddatagrid.Columns(16).Text = Round(bedamt1 * (val(grddatagrid.Columns(15).Text) / 100), 2)
                    aedamt1 = val(grddatagrid.Columns(16).Text)
                End If
            End If
       ' End If
       '  aedamt1 = val(grddatagrid.Columns(15).Text)
        
        
        
        'Tax Amount
       ' If ColIndex = 16 Then
            If val(grddatagrid.Columns(10).Text) <> 0 Then
                If grddatagrid.Columns(17).Value > 0 Then
                    grddatagrid.Columns(18).Text = (Assval + bedamt1 + aedamt1) * _
                                                    (val(grddatagrid.Columns(17).Text) / 100)
                    taxamt1 = val(grddatagrid.Columns(18).Text)
                End If
            End If
       ' End If
       '  taxamt1 = val(grddatagrid.Columns(17).Text)
         
        'Surcharge Amount
      '  If ColIndex = 18 Then
            If val(grddatagrid.Columns(10).Text) <> 0 And val(grddatagrid.Columns(18).Text) <> 0 Then
                If grddatagrid.Columns(19).Value > 0 Then
                    grddatagrid.Columns(20).Text = taxamt1 * _
                                                   (grddatagrid.Columns(19).Value / 100)
                    scamt1 = val(grddatagrid.Columns(20).Text)
                End If
            End If
       ' End If
       ' scamt1 = val(grddatagrid.Columns(19).Text)
            
        If lqty > 0 And lprice > 0 Then
           
            lTaxamt = 0
            lScamt = 0
            lOthchrgs = 0
            lDisamt = 0
            lBedamt = 0
            lAedAmt = 0
            lPackamt = 0
            lFrtamt = 0
            lRoff = 0
            If val(grddatagrid.Columns(12).Text) <> 0 Then lDisamt = grddatagrid.Columns(12).Value
            If val(grddatagrid.Columns(14).Text) <> 0 Then lBedamt = grddatagrid.Columns(14).Value
            If val(grddatagrid.Columns(16).Text) <> 0 Then lAedAmt = grddatagrid.Columns(16).Value
            If val(grddatagrid.Columns(18).Text) <> 0 Then lTaxamt = grddatagrid.Columns(18).Value
            If val(grddatagrid.Columns(20).Text) <> 0 Then lScamt = grddatagrid.Columns(20).Value
            If val(grddatagrid.Columns(21).Text) <> 0 Then lPackamt = grddatagrid.Columns(21).Value
            If val(grddatagrid.Columns(22).Text) <> 0 Then lFrtamt = grddatagrid.Columns(22).Value
            If val(grddatagrid.Columns(23).Text) <> 0 Then lOthchrgs = grddatagrid.Columns(23).Value
            If val(grddatagrid.Columns(24).Text) <> 0 Then lRoff = grddatagrid.Columns(24).Value
            
            
            grddatagrid.Columns(25).Value = val((lqty * lprice) - lDisamt + lBedamt + lAedAmt + lTaxamt + lScamt + lOthchrgs + lFrtamt + lPackamt + lRoff)
        End If
        
        Call DisplayTotValue
    End If
    
    If val(grddatagrid.Columns(grd_packno).Text) <> 0 Then
        Set NewRs = New Recordset
        NewRs.Open "select pack_no from ig_rpacknos where pack_no = " & grddatagrid.Columns(grd_packno).Text & " ", DB, adOpenStatic, adLockBatchOptimistic
        If NewRs.RecordCount > 0 Then
            MsgBox "No Duplicate Pack nos", vbInformation, head
            grddatagrid.Columns(grd_packno).Text = ""
            Set NewRs = New Recordset
            NewRs.Open "select max(pack_no) from ig_rpacknos ", DB, adOpenStatic, adLockBatchOptimistic
                grddatagrid.Columns(grd_packno).Text = NewRs(0) + val(adoPrimaryRS.AbsolutePosition)
                temp_packno = grddatagrid.Columns(grd_packno).Text
        End If
    End If
End If
End Sub

Private Sub grddatagrid_Change()
If Opt = "add" Then
    If grddatagrid.Col = Kgs Or grddatagrid.Col = Quantity Then
        'Call to_insert
    End If
End If
End Sub

Private Sub grddatagrid_DblClick()
If Opt = "del" And grddatagrid.Row >= 0 Then
    If MsgBox("Are you sure you want to delete this record?", vbYesNo, head) = vbYes Then
    DB.Execute "delete PR where  empno=" & val(grddatagrid.Columns(1).Text) & " and atdate='" & Format(grddatagrid.Columns(4).Text, "yyyy-mm-dd") & "' AND DIVCODE = '" & Divcode & "'"
End If
End If
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
Select Case grddatagrid.Col
Case 7
'      If (KeyAscii >= 65 And KeyAscii <= 122) Or KeyAscii = 45 Then
'        KeyAscii = 0
'      End If
'      If KeyAscii <> 9 Then
'        Call ToNum(grddatagrid.Columns(7), 8, KeyAscii)
'      End If
Case 7
        If KeyAscii = 13 Then
            WASTE1 = grddatagrid.Columns(7).Text
        End If
        Call ToUpCase(grddatagrid.Columns(7), KeyAscii)
        

End Select

''If Opt = "add" Then
''If KeyAscii = 116 Then
''    Call to_insert
''End If
''End If

End Sub

Private Sub grdDataGrid_KeyUp(KeyCode As Integer, Shift As Integer)
If (Opt = "add" Or Opt = "mod") Then
 
    If grddatagrid.Col = 10 Or grddatagrid.Col = 9 Then
        If Opt = "add" Then
            grddatagrid.Row = grddatagrid.Row

            qty = 0
            price = 0
            On Error Resume Next
            qty = val(grddatagrid.Columns(Kgs).Value)
            price = val(grddatagrid.Columns(Rate))
            If price > 0 Then
                grddatagrid.Columns(Value1) = (qty * price)
            Else
           
            End If
       End If
    End If
 End If
End Sub


Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo l1
If Opt = "add" Or Opt = "mod" Then
 If LastCol = 4 And (grddatagrid.Columns(4).Text = "" Or grddatagrid.Columns(4).Text <> "") Then
    Set rsa = New Recordset
    rsa.Open "select Product_code,Description from ig_rproduct where product_code='" & grddatagrid.Columns(3).Text & "' ", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        LookUp.clear = True
        LookUp.Query = "select Product_code as Waste ,Description from ig_rproduct where wastetype='" & Left(Combo1.Text, 1) & "'"
        LookUp.Caption = "Waste Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "2000,6000"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            grddatagrid.Columns(Waste).Text = " "
            grddatagrid.Columns(Waste).Text = LookUp.Fields(0)
            grddatagrid.Columns(description).Text = LookUp.Fields(1)
            grddatagrid.Columns(description).Locked = True
            LookUp.clear = True
            grddatagrid.Col = 7 'grd_balewt
            grddatagrid.SetFocus
        Else
            grddatagrid.Columns(4).Locked = False
            grddatagrid.Columns(3).Locked = False
            grddatagrid.Col = 3
            grddatagrid.SetFocus
        End If
            
    Else
        grddatagrid.Columns(7).Text = rsa("description")
        grddatagrid.Col = 8
        grddatagrid.SetFocus
    End If
    Dim NewRs As Recordset
    Set NewRs = New Recordset
    NewRs.Open "select max(pack_no)  from ig_rpacknos ", DB, adOpenStatic, adLockReadOnly
    
    grddatagrid.Columns(grd_packno).Text = NewRs(0) + val(adoPrimaryRS.AbsolutePosition)
    temp_packno = val(grddatagrid.Columns(grd_packno).Text)
 End If
 
    If KeyCode = 9 Then
        If LastCol = 9 Then
            If val(grddatagrid.Columns(9).Text) = 0 Then
                MsgBox "Rate Should not be Null", vbInformation, head
                grddatagrid.Col = 9
                grddatagrid.SetFocus
                Exit Sub
            End If
        End If
    End If
 
 'Call CalulateTax
End If
l1:
End Sub

Private Sub MaskEdBox2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    SendKeys " {tab} "
End If
End Sub

Private Sub Text1_Change(Index As Integer)
Select Case Index
Case 300
    Set NewRs = New Recordset
    NewRs.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(Text1(300).Text) & "'", DB, adOpenStatic
    If NewRs.RecordCount > 0 Then
        Text1(301).Text = NewRs(1)
    Else
        Text1(301).Text = ""
    End If

Case 302
    Set NewRs = New Recordset
    NewRs.Open "select purtype,purdesc from rm_purtype where purtype='" & Trim(Text1(302).Text) & "'", DB, adOpenStatic
    If NewRs.RecordCount > 0 Then
        Text1(303).Text = NewRs(1)
    Else
        Text1(303).Text = ""
    End If

End Select

End Sub

Private Sub Text1_LostFocus(Index As Integer)
Text1(Index).Text = UCase(Text1(Index).Text)
End Sub
Private Sub Text1_Validate(Index As Integer, Cancel As Boolean)
Select Case Index
    Case 1
        Set RS2 = New Recordset
        RS2.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & Trim(Text1(1).Text) & "'", DB, adOpenStatic
        If RS2.RecordCount = 0 Then
            Call DepItem
            Exit Sub
        Else
            Text1(4).Text = RS2("VARNAME")
            Text1(1).SetFocus
            Exit Sub
        End If
    Case 2
        Set rsa = New Recordset
        rsa.Open "select Slcode as Code,SlName as Name from fa_slmas where slcode like 'C2%' and slcode='" & Trim(Text1(2).Text) & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            Call SupLookup
        Else
          Text5.Text = rsa(1)
        End If
    Case 5
        If Text1(5).Text = "" Then
            grddatagrid.Enabled = True
            grddatagrid.EditActive = True
            grddatagrid.Col = 4
            grddatagrid.SetFocus
            Exit Sub
        End If
    
    Case 300
        If Opt = "add" Or Opt = "mod" Then
        If val(Text1(5)) > 0 Then
            Set rsa = New Recordset
            rsa.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(Text1(300).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                    LookUp.clear = True
                    LookUp.Query = "select a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
                    LookUp.DefCol = "TcHead"
                    LookUp.ALIGN = "1500,3500"
                    LookUp.Caption = "Transaction Type Listing"
                    
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        Text1(300).Text = LookUp.Fields(0)
                        Text1(301).Text = LookUp.Fields(1)
                        LookUp.clear = True
                        Text1(302).SetFocus
                    Else
                        SSTab1.Visible = True
                        Text1(300).SetFocus
                    End If
            Else
                Text1(301).Text = rsa("tchead")
            End If
        End If
      End If
    Case 302
        If Opt = "add" Or Opt = "mod" Then
            If val(Text1(5).Text) > 0 Then
                Set rsa = New Recordset
                rsa.Open "select purtype,purdesc from rm_purtype where purtype='" & Trim(Text1(302).Text) & "'", DB, adOpenStatic
                If rsa.RecordCount = 0 Then
                    LookUp.clear = True
                    LookUp.Query = "select purtype""Type"",purdesc""Description"" from rm_purtype"
                    LookUp.DefCol = "Description"
                    LookUp.ALIGN = "1500,3500"
                    LookUp.Caption = "Purchase Type Listing"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        Text1(302).Text = LookUp.Fields(0)
                        Text1(303).Text = LookUp.Fields(1)
                        LookUp.clear = True
                        Text3.SetFocus
                        Exit Sub
                        ''grddatagrid.SetFocus
                    Else
                        LookUp.clear = True
                        Text1(302).SetFocus
                    End If
                Else
                    Text1(303).Text = rsa(1)
                
                End If
            Else
                grddatagrid.Col = 4
                grddatagrid.SetFocus
                Exit Sub
            End If
        End If


    End Select
End Sub

Public Sub GRID_ALIGN()
On Error Resume Next
grddatagrid.Columns(0).Visible = False
grddatagrid.Columns(docNo).Visible = False
grddatagrid.Columns(DOCDT).Visible = False
grddatagrid.Columns(3).Visible = False
grddatagrid.Columns(slno).Visible = False
grddatagrid.Columns(Quantity).Caption = "   Quantity"

grddatagrid.Columns(Quantity).Alignment = dbgRight
grddatagrid.Columns(Quantity).NumberFormat = "#.000"
grddatagrid.Columns(Kgs).Caption = "             Kgs"
grddatagrid.Columns(Kgs).Alignment = dbgRight
grddatagrid.Columns(Kgs).NumberFormat = "#.00"
grddatagrid.Columns(Rate).Caption = "        Rate"
grddatagrid.Columns(Rate).Alignment = dbgRight
grddatagrid.Columns(Rate).NumberFormat = "###0.00"
grddatagrid.Columns(Rate).Width = 1000
grddatagrid.Columns(Value1).Caption = "          Value"
grddatagrid.Columns(Value1).NumberFormat = "#0.00"
grddatagrid.Columns(Value1).Alignment = dbgRight
grddatagrid.Columns(Disper).NumberFormat = "#0.00"
grddatagrid.Columns(Disper).Alignment = dbgRight
grddatagrid.Columns(Disper).Caption = "     Dis %"
grddatagrid.Columns(Disamt).NumberFormat = "#0.00"
grddatagrid.Columns(Disamt).Alignment = dbgRight
grddatagrid.Columns(Disamt).Caption = "   Dis Amt"
grddatagrid.Columns(BEDPer).NumberFormat = "#0.00"
grddatagrid.Columns(BEDPer).Alignment = dbgRight
grddatagrid.Columns(BEDPer).Caption = "    BED %"
grddatagrid.Columns(Bedamt).NumberFormat = "#0.00"
grddatagrid.Columns(Bedamt).Alignment = dbgRight
grddatagrid.Columns(Bedamt).Caption = " BED Amt"
grddatagrid.Columns(AEDPer).NumberFormat = "#0.00"
grddatagrid.Columns(AEDPer).Alignment = dbgRight
grddatagrid.Columns(AEDPer).Caption = "    AED %"
grddatagrid.Columns(AedAmt).NumberFormat = "#0.00"
grddatagrid.Columns(AedAmt).Alignment = dbgRight
grddatagrid.Columns(AedAmt).Caption = " AED Amt"
grddatagrid.Columns(Taxper).NumberFormat = "#0.00"
grddatagrid.Columns(Taxper).Alignment = dbgRight
grddatagrid.Columns(Taxper).Caption = "    TAX %"
grddatagrid.Columns(Taxamt).NumberFormat = "#0.00"
grddatagrid.Columns(Taxamt).Alignment = dbgRight
grddatagrid.Columns(Taxamt).Caption = "  Tax Amt"
grddatagrid.Columns(SCPer).NumberFormat = "#0.00"
grddatagrid.Columns(SCPer).Alignment = dbgRight
grddatagrid.Columns(SCPer).Caption = "      SC %"
grddatagrid.Columns(Scamt).NumberFormat = "#0.00"
grddatagrid.Columns(Scamt).Alignment = dbgRight
grddatagrid.Columns(Scamt).Caption = "   SC Amt"
grddatagrid.Columns(Packamt).NumberFormat = "#0.00"
grddatagrid.Columns(Packamt).Alignment = dbgRight
grddatagrid.Columns(Packamt).Caption = "Pack Amt"
grddatagrid.Columns(Frtamt).NumberFormat = "#0.00"
grddatagrid.Columns(Frtamt).Alignment = dbgRight
grddatagrid.Columns(Frtamt).Caption = "    Fright Amt"
grddatagrid.Columns(Othchrgs).NumberFormat = "#0.00"
grddatagrid.Columns(Othchrgs).Alignment = dbgRight
grddatagrid.Columns(Othchrgs).Caption = "          Other       Chargers"
grddatagrid.Columns(Roff).NumberFormat = "#0.00"
grddatagrid.Columns(Roff).Alignment = dbgRight
grddatagrid.Columns(Roff).Caption = "    Round          Off"
grddatagrid.Columns(totalvalue).NumberFormat = "#0.00"
grddatagrid.Columns(totalvalue).Alignment = dbgRight
grddatagrid.Columns(totalvalue).Caption = "  Total Value"

grddatagrid.Columns(Waste).Width = 700
grddatagrid.Columns(Quantity).Width = 1000
grddatagrid.Columns(description).Width = 2000
grddatagrid.Columns(Kgs).Width = 1200
grddatagrid.Columns(Value1).Width = 1200
grddatagrid.Columns(Disper).Width = 900
grddatagrid.Columns(Disamt).Width = 900
grddatagrid.Columns(BEDPer).Width = 900
grddatagrid.Columns(Bedamt).Width = 900
grddatagrid.Columns(AEDPer).Width = 900
grddatagrid.Columns(AedAmt).Width = 900
grddatagrid.Columns(Taxper).Width = 900
grddatagrid.Columns(Taxamt).Width = 900
grddatagrid.Columns(SCPer).Width = 900
grddatagrid.Columns(Scamt).Width = 900
grddatagrid.Columns(Packamt).Width = 900
grddatagrid.Columns(Frtamt).Width = 1200
grddatagrid.Columns(Othchrgs).Width = 1200
grddatagrid.Columns(Roff).Width = 900
grddatagrid.Columns(totalvalue).Width = 1200

grddatagrid.Columns(grd_balewt).Visible = False
If Opt = "mod" Then
    grddatagrid.Columns(Waste).Locked = True
    grddatagrid.Columns(description).Locked = True
    grddatagrid.Columns(Quantity).Locked = True
End If
End Sub
Private Sub Text1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
Select Case Index
Case 2
        If KeyCode = 13 Then
'        Frame4.Visible = True
'        Frame4.ZOrder
'        codelist1.ZOrder
'        codelist1.conn = connectstring
'
'        codelist1.table = "IN_GPSUPP"
'        codelist1.listfield1 = "SUPCODE"
'        codelist1.listfield2 = "SUPNAME"
       
        Set rsa = New Recordset
        rsa.Open "select Slcode as Code,SlName as Name from fa_slmas where slcode like 'C2%' and slcode='" & Trim(Text1(2).Text) & "'", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            Call SupLookup
        Else
          Text5.Text = rsa(1)
        End If
'
'''        codelist1.table = "fa_slmas"
'''        codelist1.listfield1 = "slcode"
'''        codelist1.listfield2 = "slname"
        Text1(2).Text = Trim(Text1(2).Text)
        grddatagrid.AllowUpdate = True
    End If
    

End Select
If KeyCode = 13 Then SendKeys "{tab}"
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then SendKeys "{TAB}"
    If KeyCode = 117 Then
        If grddatagrid.Col = 7 Then
'            Frame4.Visible = True
'            Frame4.ZOrder
'            codelist1.ZOrder
'            codelist1.conn = connectstring
'            codelist1.table = "IN_GPITEM"
''            codelist1.table = "IN_ITEM"
'
'            codelist1.listfield1 = "ITEMCODE"
'            codelist1.listfield2 = "ITEMNAME"
            Call GpItem
'            grddatagrid.AllowUpdate = True
        End If
    End If
    If KeyCode = 9 Then
    If grddatagrid.Col = 26 Then
        If Opt = "add" Then
            adoPrimaryRS.AddNew
            'grddatagrid.row = grddatagrid.row
            'grddatagrid.row = grddatagrid.row + 1
            grddatagrid.Col = 3
            grddatagrid.SetFocus

        End If
''            grddatagrid.COL = 3
''            grddatagrid.SetFocus
End If
End If
If Opt = "add" Or Opt = "mod" Then
If KeyCode = 112 Then
    Call to_insert(KeyCode)
End If
End If

 Call Form_KeyDown(KeyCode, Shift)
End Sub
Public Sub hdlist()
Print #a, Chr(18) + Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F"
Print #a,
Print #a, Space(3) + Padr("Service Bill Entry Listing", 50, " ")
Print #a,
Set Rs = New Recordset
Rs.Open "SELECT DOCNO,DOCDT,TYPE =(CASE WHEN TYPE ='R' THEN 'R-RETURNABLE GATE PASS' WHEN TYPE = 'N' THEN 'NR-NON RETURNABLE GATE PASS' END),IN_TIME,SLCODE,VARCODE,BILLNO,BILLDT, frgtamt, pkfwdamt,ROFF FROM RM_WASTEPHD WHERE ERTFLG='E' And docno = " & Text1(0).Text & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
Print #a, Space(3) + "Document No    :" + Padr(Rs("docno"), 10, " ") + Space(45) + "Date :" + Padr(Format(Rs("docdt"), "dd/mm/yyyy"), 10, " ")
Set RS2 = New Recordset
RS2.Open "Select GRPname FROM IN_GRP WHERE GRPCODE = '" & Rs("VARCODE") & "'", DB, adOpenStatic, adLockReadOnly
Print #a, Space(3) + "From           :" + Padr(Rs("SLCODE"), 40, " ")
Print #a, Space(3) + "Type           :" + Padr(Rs("Type"), 60, " ")
Print #a, Space(3) + "Department     :" + Padr(RS2("GRPname"), 40, " ")
Print #a, Space(3) + String(89, "-")
Print #a, Space(3) + Padr("Through", 29, " ") + Space(1) + Padr("WASTE", 28, " ") + Space(1) + Padr("Reference", 15, " ") + Space(2) + Padl("Quantity", 13, " ")
Print #a, Space(3) + String(89, "-")
End Sub
Public Sub pblist()
If lno >= 58 Then
Print #a, Space(3) + String(89, "-")
lno = 7
pgn = pgn + 1
Print #a, Chr(12)
Call hdlist
End If
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then SendKeys "{tab}"
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
Call ToUpCase(Text2, KeyAscii)
End Sub

Private Sub Text2_LostFocus()
On Error Resume Next
    
End Sub

Private Sub Text3_Change()
    If moveflg = False Then Call DisplayTotValue
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then SendKeys " {tab} "
End Sub

Private Sub Text3_Validate(Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
    If Sflg = "Y" Then
    grddatagrid.Col = 7
    grddatagrid.Columns(7).Locked = True
    grddatagrid.SetFocus
    Else
    grddatagrid.Col = 7
    grddatagrid.Columns(7).Locked = False
    grddatagrid.SetFocus
    End If
End If

End Sub

Private Sub Text4_Change()
    If moveflg = False Then Call DisplayTotValue
End Sub

Private Sub DisplayTotValue()
On Error Resume Next
    If Opt = "add" Or Opt = "Qry" Or Opt = "mod" Then
        If adoPrimaryRS.RecordCount > 0 Then
            Dim RowNo As Integer
            Dim TotValue As Double
            TotValue = 0
            If Not adoPrimaryRS.AbsolutePosition < 0 Then
                RowNo = adoPrimaryRS.AbsolutePosition
                adoPrimaryRS.MoveFirst
            End If
            If Opt = "add" Or Opt = "mod" Then
                Do While Not adoPrimaryRS.EOF
                    If IsNull(adoPrimaryRS("totvalue")) = False Then TotValue = TotValue + adoPrimaryRS("totvalue").Value
                    adoPrimaryRS.MoveNext
                Loop
            Else
                Dim gridrowno As Integer
                For gridrowno = 0 To grddatagrid.VisibleRows - 1
                    grddatagrid.Row = gridrowno
                    If IsNull(grddatagrid.Columns(16).Text) = False And _
                        Trim(grddatagrid.Columns(16).Text) <> "" Then
                        TotValue = TotValue + grddatagrid.Columns(16).Value
                    End If
                Next
            End If

            If Opt = "add" Or Opt = "mod" Then adoPrimaryRS.AbsolutePosition = RowNo

            TotValue = TotValue + val(Text3.Text) + val(Text4.Text)
            Text1(6).Text = Format(TotValue + val(Txtroff.Text), "#0.00")
        End If
    End If
End Sub

Private Sub Grid_Align_Navig()
    grddatagrid.HeadLines = 2
    grddatagrid.Columns(1).Width = 1800
    'grdDataGrid.Columns(2).Caption = "     VALUE"
    grddatagrid.Columns(2).Width = 1000
    grddatagrid.Columns(2).Alignment = dbgRight
    grddatagrid.Columns(2).NumberFormat = "#0.00"
    
   ' grdDataGrid.Columns(3).Caption = "TAX %"
    grddatagrid.Columns(3).Width = 700
    'grdDataGrid.Columns(4).Caption = "TAX AMT"
    grddatagrid.Columns(4).Width = 1000
   ' grdDataGrid.Columns(5).Caption = "SC %"
    grddatagrid.Columns(5).Width = 500
   ' grdDataGrid.Columns(6).Caption = "SC AMT"
    grddatagrid.Columns(6).Width = 900
    'grdDataGrid.Columns(7).Caption = "OTH CHRGS"
    grddatagrid.Columns(7).Width = 1200
    
  '  grdDataGrid.Columns(8).Caption = "TOT VALUE"
    grddatagrid.Columns(8).Width = 1200
'    grdDataGrid.Columns(9).Caption = "REMARKS"
    grddatagrid.Columns(9).Width = 2050
    
    Dim ColNo As Integer
    For ColNo = 3 To 5
        grddatagrid.Columns(ColNo).Alignment = dbgRight
        grddatagrid.Columns(ColNo).NumberFormat = "#0.00"
    Next
    
    grddatagrid.Columns(2).Visible = False 'Balewt
End Sub
Sub GpItem()
LookUp.clear = True
LookUp.Query = "select "
LookUp.Caption = "DocmentNo. Listing"
LookUp.DefCol = "Date"

LookUp.ALIGN = "2000,4000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    On Error Resume Next
    grddatagrid.Columns(6).Text = LookUp.Fields(0)
    Frame4.Visible = False
    SSTab1.Visible = True
    SSTab1.Enabled = True
    grddatagrid.Col = 8
    grddatagrid.SetFocus
  
    
    LookUp.clear = True
Else
    grddatagrid.Col = 6
    grddatagrid.SetFocus
End If
End Sub
Sub DepItem()
LookUp.clear = True
LookUp.Query = "select VARCODE""Code"",VARNAME""Name"" from RM_VAR"
LookUp.Caption = "Variety Listing"
LookUp.DefCol = "Name"
LookUp.ALIGN = "2000,6000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    On Error Resume Next
    Text1(1).Text = LookUp.Fields(0)
    Text1(4).Text = LookUp.Fields(1)
    Frame4.Visible = False
    SSTab1.Visible = True
    SSTab1.Enabled = True
    Text1(2).SetFocus
    

    LookUp.clear = True
Else
    Text1(1).SetFocus
End If
End Sub
Sub DocNoLookup()
LookUp.clear = True
LookUp.Query = "select Docno,Docdt from RM_WASTEPHD where ertflg='G' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' AND DOCNO IN (SELECT a.DOCNO FROM IN_GPl a,in_gph b WHERE a.docno=b.docno and a.docdt=b.docdt and a.divcode=b.divcode and qcperson is not null and BILLFLG='Y' AND a.DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "')"
LookUp.Caption = "Document No. Listing"
LookUp.DefCol = "Docno"
LookUp.ALIGN = "2000,2000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
 If Opt = "mod" Or Opt = "del" Or Opt = "add" Then
    If LookUp.Fields(0) <> Empty Then
                Sflg = "Y"
              Text1(0).Text = LookUp.Fields(0)
              DTPicker1.Value = LookUp.Fields(1)
              If Opt = "add" Then
                Set adoSecondaryRS = New Recordset
                adoSecondaryRS.Open "SELECT DOCNO,DOCDT,TYPE,IN_TIME,SLCODE,VARCODE,BILLNO,BILLDT,totalamt, frgtamt, pkfwdamt,ROFF FROM RM_WASTEPHD WHERE DOCNO = " & LookUp.Fields(0) & " AND ERTFLG='G' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
              Else
                Set adoSecondaryRS = New Recordset
                adoSecondaryRS.Open "SELECT DOCNO,DOCDT,TYPE,IN_TIME,SLCODE,VARCODE,BILLNO,BILLDT,totalamt, frgtamt, pkfwdamt,ROFF FROM RM_WASTEPHD WHERE DOCNO = " & LookUp.Fields(0) & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
              End If
              Set adoPrimaryRS = New Recordset
              'adoPrimaryrs.Open "SELECT DOCNO,DOCDT,TYPE ,IN_TIME,SLCODE,THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QTY"",RATE""RATE"",VALUE""VALUE"", taxper, taxamt, scper, scamt, othchrgs, totvalue,REF""REMARKS"" FROM RM_WASTEPDT WHERE DOCNO = " & lookup.fields(0) & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", db, adOpenDynamic, adLockOptimistic
              adoPrimaryRS.Open "select DOCNO,DOCDT,IN_TIME,WASTE ""WASTE"",QUANTITY ""QUANTITY"",kgs""Kgs"",RATE""RATE"",VALUE ""VALUE"", DisPer,Disamt,Taxper, Taxamt, Scper, Scamt,  Othchrgs, Totvalue, REF ""REMARKS"",ERTFLG,SNO from RM_WASTEPDT WHERE DOCNO = " & LookUp.Fields(0) & " AND DOCDT = '" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "'", DB, adOpenKeyset, adLockBatchOptimistic
              If Not adoSecondaryRS.EOF Then
                  If adoPrimaryRS.RecordCount > 0 Then
                    Set grddatagrid.DataSource = Nothing
                    Set grddatagrid.DataSource = adoPrimaryRS
                    Call GRID_ALIGN
                    Call bindcontrols
                    Frame4.Visible = False
                    Call adddelmod(BUTTON)
                    moveflg = False
                    For i = 0 To 5
                      grddatagrid.Columns(i).Visible = False
                    Next
                  Else
                     MsgBox "NO RECORDS FOUND", vbInformation, head
                     Frame4.Visible = False
                     Call QUERY_MODE
                  End If
               Else
                    MsgBox "NO RECORDS FOUND", vbInformation, head
                    Frame4.Visible = False
                    Call QUERY_MODE
               End If
               If Opt = "mod" Then
                  Call EnableControls
               End If
''               If Combo1.Text = "U" Then
''                  Combo1.Text = "R-RETURNABLE GATE PASS"
''                Else
''                  Combo1.Text = "NR-NON RETURNABLE GATE PASS"
''                End If
                Text1(0).SetFocus
                LookUp.clear = True
                Exit Sub
         End If
          If LookUp.Fields(0) <> Empty Then
                If Opt = "add" Then
                     Set tp = New Recordset
                     tp.Open "SELECT VARCODE FROM OUTPASSHD WHERE DOCNO = " & LookUp.Fields(0) & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
                     If tp.RecordCount > 0 Then Text1(1).Text = tp(0)
                    Set GPNAME = New Recordset
                    GPNAME.Open "SELECT GRPNAME FROM IN_GRP WHERE GRPCODE='" & tp(0) & "'", DB
                    If GPNAME.RecordCount > 0 Then Text1(4).Text = GPNAME(0)
                     Set tp = New Recordset
                     FLAG1 = "TRUE"
                     tp.Open "SELECT DOCNO,DOCDT,TYPE,OUT_TIME""IN_TIME"",OUT_TO""SLCODE"",THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QUANTITY"",REF""REFERENCE"",QUANTITY""VALUE"" FROM OUTPASSDT WHERE DOCNO = " & LookUp.Fields(0) & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
                       If Not tp.EOF Then
                         Set grddatagrid.DataSource = tp
                         Text1(2).Text = tp!SLCODE
                         Combo1.Text = "R-RETURNABLE GATE PASS"
                       End If
                       Frame4.Visible = False
                       For i = 0 To 4
                         grddatagrid.Columns(i).Visible = False
                       Next i
                       grddatagrid.Columns(9).Value = Null
                       grddatagrid.Col = 9
                       grddatagrid.SetFocus
                      ' Set adoPrimaryRS = TP
                End If
                Text1(0).SetFocus
                LookUp.clear = True
            Else
                Text1(1).SetFocus
            End If
    Else
            Text1(1).SetFocus
    End If
        
Else
    Call QUERY_MODE
End If
End Sub

Sub DocNoLookup1()
LookUp.clear = True
LookUp.Query = "select distinct Docno,Docdt from RM_WASTEPHD where DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' "
LookUp.Caption = "Document No. Listing"
LookUp.DefCol = "Docno"
LookUp.ALIGN = "2000,2000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
     If Opt = "mod" Or Opt = "del" Or Opt = "add" Then
          Text1(0).Text = LookUp.Fields(0)
          DTPicker1.Value = LookUp.Fields(1)
          If Opt = "add" Then
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "SELECT DOCNO,DOCDT,TYPE,IN_TIME,SLCODE,VARCODE,BILLNO,BILLDT,totalamt, frgtamt, pkfwdamt,ROFF FROM RM_WASTEPHD WHERE DOCNO = " & LookUp.Fields(0) & " AND ERTFLG='G' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
          Else
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "SELECT DOCNO,DOCDT,TYPE,IN_TIME,SLCODE,VARCODE,BILLNO,BILLDT,totalamt, frgtamt, pkfwdamt,ROFF FROM RM_WASTEPHD WHERE DOCNO = " & LookUp.Fields(0) & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
          End If
          Set adoPrimaryRS = New Recordset
          'adoPrimaryrs.Open "SELECT DOCNO,DOCDT,TYPE ,IN_TIME,SLCODE,THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QTY"",RATE""RATE"",VALUE""VALUE"", taxper, taxamt, scper, scamt, othchrgs, totvalue,REF""REMARKS"" FROM RM_WASTEPDT WHERE DOCNO = " & lookup.fields(0) & " AND ERTFLG='E' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", db, adOpenDynamic, adLockOptimistic
          adoPrimaryRS.Open "select a.Divcode,DOCNO,DOCDT,TYPE,WASTE ""Waste"",Description,BALEWT ""Balewt"",QUANTITY ""Quantity"",kgs""Kgs"",a.RATE""Rate"",VALUE ""Value"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""Remarks"",SNO,Pack_No from RM_WASTEPDT a,ig_rproduct b WHERE a.waste=b.product_code and DOCNO = " & LookUp.Fields(0) & " AND DOCDT = '" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "'", DB, adOpenKeyset, adLockBatchOptimistic
          
          If Not adoSecondaryRS.EOF Then
              If adoPrimaryRS.RecordCount > 0 Then
                Set grddatagrid.DataSource = adoPrimaryRS
                Set balers = New Recordset
                balers.Open "SELECT a.Divcode,a.Docno,a.Docdt,A.Waste,B.Description,a.Sno,a.Pack_No,a.Kgs  FROM RM_wastePDT1 a ,ig_rproduct b WHERE  b.product_code = a.waste AND A.DOCNO='" & LookUp.Fields(0) & "' AND DOCDT='" & Format(LookUp.Fields(1), "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                Set balegrid.DataSource = balers
                Call GRID_ALIGN
                Call balegrid_align
                Call bindcontrols
                Frame4.Visible = False
                Call adddelmod(BUTTON)
                moveflg = False
               
              Else
                 MsgBox "NO RECORDS FOUND", vbInformation, head
                 Frame4.Visible = False
                 Call QUERY_MODE
              End If
           Else
                MsgBox "NO RECORDS FOUND", vbInformation, head
                Frame4.Visible = False
                Call QUERY_MODE
           End If
           If Opt = "mod" Then
                Call EnableControls
                LookUp.clear = True
                Text1(1).SetFocus
           End If
''           If Combo1.Text = "R" Then
''              Combo1.Text = "R-RETURNABLE GATE PASS"
''            Else
''              Combo1.Text = "NR-NON RETURNABLE GATE PASS"
''            End If
            Call adddelmod(BUTTON)
            If val(Text1(5).Text) > 0 Then
                Text1(5).Locked = True
                Text1(300).Locked = True
                Text1(301).Locked = True
                Text1(302).Locked = True
                Text1(303).Locked = True
            End If
            Exit Sub
     End If
    If Opt = "add" Then
         Set tp = New Recordset
         tp.Open "SELECT VARCODE FROM OUTPASSHD WHERE DOCNO = " & LookUp.Fields(0) & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
         If tp.RecordCount > 0 Then Text1(1).Text = tp(0)
        Set GPNAME = New Recordset
        GPNAME.Open "SELECT GRPNAME FROM IN_GRP WHERE GRPCODE='" & tp(0) & "'", DB
        If GPNAME.RecordCount > 0 Then Text1(4).Text = GPNAME(0)
         Set tp = New Recordset
         FLAG1 = "TRUE"
         tp.Open "SELECT DOCNO,DOCDT,TYPE,OUT_TIME""IN_TIME"",OUT_TO""SLCODE"",THROUGH""THROUGH"",WASTE""WASTE"",QUANTITY""QUANTITY"",REF""REFERENCE"",QUANTITY""VALUE"" FROM OUTPASSDT WHERE DOCNO = " & LookUp.Fields(0) & " AND DOCDT BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenDynamic, adLockOptimistic
           If Not tp.EOF Then
             Set grddatagrid.DataSource = tp
             Text1(2).Text = tp!SLCODE
             Combo1.Text = "R-RETURNABLE GATE PASS"
           End If
           Frame4.Visible = False
           For i = 0 To 4
             grddatagrid.Columns(i).Visible = False
           Next i
           grddatagrid.Columns(9).Value = Null
           grddatagrid.Col = 9
           grddatagrid.SetFocus
          ' Set adoPrimaryRS = TP
    End If

    LookUp.clear = True
    
Else
    Call QUERY_MODE
End If
End Sub


Sub SupLookup()
LookUp.clear = True
LookUp.Query = "select Slcode as Code,SlName as Name from fa_slmas where slcode like 'C1%'"
LookUp.Caption = "Party Listing"
LookUp.DefCol = "Name"
LookUp.ALIGN = "2000,6000"
LookUp.Show vbModal
If LookUp.Cancel = False Then
    On Error Resume Next
    Text1(2) = Trim(LookUp.Fields(0))
    Slco = LookUp.Fields(0)
    Text5.Text = LookUp.Fields(1)
    Frame4.Visible = False
    SSTab1.Visible = True
    SSTab1.Enabled = True
    LookUp.clear = True
Else
    Text1(1).SetFocus
End If
End Sub

Private Sub Text4_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then SendKeys " {tab} "
End Sub



Private Sub Text5_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then SendKeys " {tab} "
End Sub

Private Sub Txtroff_Validate(Cancel As Boolean)
Call DisplayTotValue

End Sub
'select DOCNO,DOCDT,IN_TIME,SLCODE,TYPE,THROUGH ""THROUGH"",WASTE ""WASTE"",QUANTITY ""QUANTITY"",RATE""RATE"",VALUE ""VALUE"", DisPer,Disamt,BEDPer,BEDAmt,AEDPer,AEDAmt,Taxper, Taxamt, Scper, Scamt, Packamt,FrtAmt, Othchrgs, Roff,Totvalue, REF ""REMARKS"",ERTFLG,SNO
'        0       1   2       3       4       5                   6                   7                   8           9               10      11      12      13      14  15      16      17      18      19  20          21      22      23  24          25              26  27
Sub CalulateTax()



Value = val(grddatagrid.Columns(Kgs)) * val(grddatagrid.Columns(Rate))
grddatagrid.Columns(Value1) = Value
If Value > 0 Then
    
    If val(grddatagrid.Columns(Disper)) > 0 Then
        grddatagrid.Columns(Disamt) = Value * val(grddatagrid.Columns(Disper)) / 100
    End If
    Avalue = Value - val(grddatagrid.Columns(Disamt))
    
    'bed
    If val(grddatagrid.Columns(Bedamt)) = 0 Then
        If val(grddatagrid.Columns(BEDPer)) > 0 Then
            grddatagrid.Columns(Bedamt) = Avalue * val(grddatagrid.Columns(BEDPer)) / 100
        End If
    End If
    amt1 = Avalue + val(grddatagrid.Columns(Bedamt))
    'aed
    If val(grddatagrid.Columns(AedAmt)) = 0 Then
        If val(grddatagrid.Columns(AEDPer)) > 0 Then
            grddatagrid.Columns(AedAmt) = val(amt1) * val(grddatagrid.Columns(AEDPer)) / 100
        End If
    End If
    'tax
    amt1 = Avalue + val(grddatagrid.Columns(Bedamt)) + val(grddatagrid.Columns(AedAmt))
    If val(grddatagrid.Columns(Taxamt)) = 0 Then
        If val(grddatagrid.Columns(Taxper)) > 0 Then
            grddatagrid.Columns(Taxamt) = val(amt1) * val(grddatagrid.Columns(Taxper)) / 100
        End If
    End If
    amt1 = Avalue + val(grddatagrid.Columns(Bedamt)) + val(grddatagrid.Columns(AedAmt)) + val(grddatagrid.Columns(Taxamt))
    'surcharge
    If val(grddatagrid.Columns(Scamt)) = 0 Then
        If val(grddatagrid.Columns(SCPer)) > 0 Then
            grddatagrid.Columns(Scamt) = val(amt1) * val(grddatagrid.Columns(SCPer)) / 100
        End If
    End If
    
    
    amt1 = amt1 + val(grddatagrid.Columns(Frtamt)) + val(grddatagrid.Columns(othercharges)) + val(grddatagrid.Columns(Roff))
    grddatagrid.Columns(totalvalue) = amt1
    
End If

Call DisplayTotValue
End Sub


Private Sub balegrid_align()

For i = 0 To 3
    balegrid.Columns(i).Visible = False
Next
    
For i = 4 To 5
    balegrid.Columns(i).Locked = True
Next

End Sub

Private Sub to_insert(KeyCode)

If Opt = "add" Then
    sno = 0
    If KeyCode = 112 Then
        If Trim(grddatagrid.Columns(Waste) = "") Or val(grddatagrid.Columns(Quantity)) = 0 Or val(grddatagrid.Columns(Kgs)) = 0 Or val(grddatagrid.Columns(Rate)) = 0 Then
            MsgBox "Please Enter Waste,Quantity,Kgs and Rate Fields", vbInformation, head
            grddatagrid.Col = 4
            grddatagrid.SetFocus
            Exit Sub
        End If
        
        temp_iflg = 0
        If balers.RecordCount > 0 Then
            balers.MoveFirst
            Do While Not balers.EOF
                If balers("WASTE") = adoPrimaryRS("WASTE") Then
                    balers.Delete adAffectCurrent
                    temp_iflg = 1
                End If
                balers.MoveNext
            Loop
        End If

''        If temp_iflg = 1 Then
''            MsgBox "Bale Details Already Entered For This Item", vbInformation, head
''            grddatagrid.COL = 9
''            grddatagrid.SetFocus
''            Exit Sub
''        End If
        
        
        temp_balewt = val(adoPrimaryRS("kgs") / adoPrimaryRS("quantity"))
        
        Set NewRs = New Recordset
        NewRs.Open "select isnull(max(isnull(pack_no,0)),0)  from ig_rpacknos ", DB, adOpenStatic, adLockReadOnly
        
        SSTab2.Tab = 1
        
        For i = 1 To val(adoPrimaryRS("quantity"))
            balers.AddNew
            balegrid.Columns(0).Text = Divcode
            balegrid.Columns(1).Text = val(Text1(0).Text)
            balegrid.Columns(2).Text = Format(MaskEdBox1.Text, "dd/mm/yy")
            balegrid.Columns(3).Text = adoPrimaryRS("WASTE").Value
            balegrid.Columns(4).Text = adoPrimaryRS("DESCRIPTION").Value
            sno = sno + 1
            balegrid.Columns(5).Text = val(sno)
            balegrid.Columns(6).Text = NewRs(0) + val(balers.AbsolutePosition)
            balegrid.Columns(7).Text = val(temp_balewt)
        Next i
        If balers.RecordCount > 0 Then balers.MoveFirst
    End If
ElseIf Opt = "mod" Then
'    Set rsa = New Recordset
'    rsa.Open "SELECT a.Divcode,a.Docno,a.Docdt,A.Waste,B.Description,a.Sno,a.Pack_No,a.Kgs  FROM RM_wastePDT1 a ,ig_rproduct b WHERE  b.product_code = a.waste AND A.DOCNO='" & LookUp.Fields(0) & "' AND DOCDT='" & Format(LookUp.Fields(1), "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.RecordCount > 0 Then
        temp_balewt = val(adoPrimaryRS("kgs") / adoPrimaryRS("quantity"))
        balers.MoveFirst
        Do While Not balers.EOF
            If grddatagrid.Columns(Waste).Text = balegrid.Columns(3).Text Then
                balegrid.Columns(7).Text = val(temp_balewt)
            End If
            balers.MoveNext
        Loop
    End If
End If

End Sub

Private Sub to_insert1()
sno = 0
    
adoPrimaryRS.MoveFirst
    Do While Not adoPrimaryRS.EOF
        sno = 0
        
        If Trim(grddatagrid.Columns(Waste) = "") Or val(grddatagrid.Columns(Quantity)) = 0 Or val(grddatagrid.Columns(Kgs)) = 0 Or val(grddatagrid.Columns(Rate)) = 0 Then
            MsgBox "Please Enter Waste,Quantity,Kgs and Rate Fields", vbInformation, head
            grddatagrid.Col = 4
            grddatagrid.SetFocus
            Exit Sub
        End If
        
        temp_balewt = val(adoPrimaryRS("kgs") / adoPrimaryRS("quantity"))
        
        Set NewRs = New Recordset
        NewRs.Open "select max(pack_no)  from ig_rpacknos ", DB, adOpenStatic, adLockReadOnly

        SSTab2.Tab = 1
        
        For i = 1 To val(adoPrimaryRS("quantity"))
            balers.AddNew
            balegrid.Columns(0).Text = Divcode
            balegrid.Columns(1).Text = val(Text1(0).Text)
            balegrid.Columns(2).Text = Format(MaskEdBox1.Text, "dd/mm/yy")
            balegrid.Columns(3).Text = adoPrimaryRS("WASTE").Value
            balegrid.Columns(4).Text = adoPrimaryRS("DESCRIPTION").Value
            sno = sno + 1
            balegrid.Columns(5).Text = sno
            balegrid.Columns(6).Text = NewRs(0) + val(balers.AbsolutePosition)
            balegrid.Columns(7).Text = val(temp_balewt)
        Next i
        
    adoPrimaryRS.MoveNext
    Loop
End Sub

