VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Wasteissue 
   Caption         =   "Waste Issue"
   ClientHeight    =   8145
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab2 
      Height          =   5655
      Left            =   8550
      TabIndex        =   53
      Top             =   1080
      Visible         =   0   'False
      Width           =   4860
      _ExtentX        =   8573
      _ExtentY        =   9975
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "Wasteissue.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "DataGrid1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   5415
         Left            =   135
         TabIndex        =   19
         Top             =   105
         Width           =   4455
         _ExtentX        =   7858
         _ExtentY        =   9551
         _Version        =   393216
         BackColor       =   16777215
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
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   4830
      TabIndex        =   47
      Top             =   525
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command1 
         Caption         =   "&Ok"
         Height          =   405
         Left            =   4140
         TabIndex        =   52
         Top             =   150
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   2985
         TabIndex        =   49
         Top             =   195
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1785
         TabIndex        =   48
         Top             =   180
         Width           =   1260
      End
      Begin VB.Label Label5 
         Caption         =   "Report Footer"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   180
         TabIndex        =   50
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   21
      Top             =   -120
      Width           =   11610
      Begin VB.CommandButton BUTTON 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   500
         Index           =   12
         Left            =   5340
         Picture         =   "Wasteissue.frx":001C
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Waste Issue Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   495
         Index           =   3
         Left            =   8670
         Picture         =   "Wasteissue.frx":045E
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteissue.frx":07F5
         Height          =   510
         Index           =   8
         Left            =   3765
         Picture         =   "Wasteissue.frx":0C3F
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Wasteissue.frx":0FA1
         Height          =   510
         Index           =   10
         Left            =   4830
         Picture         =   "Wasteissue.frx":12AB
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel  (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   9
         Left            =   4305
         Picture         =   "Wasteissue.frx":1627
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   11
         Left            =   5865
         Picture         =   "Wasteissue.frx":19C9
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   7
         Left            =   3225
         Picture         =   "Wasteissue.frx":1D5E
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   1
         Left            =   585
         Picture         =   "Wasteissue.frx":20AE
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
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
         Left            =   1140
         Picture         =   "Wasteissue.frx":2428
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   5
         Left            =   2190
         Picture         =   "Wasteissue.frx":27C4
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Wasteissue.frx":2B29
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   6
         Left            =   2685
         Picture         =   "Wasteissue.frx":2EBC
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1650
         Picture         =   "Wasteissue.frx":3209
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (Ctrl F)"
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
         Left            =   7920
         TabIndex        =   24
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
         Left            =   9480
         TabIndex        =   23
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   25
      Top             =   12195
      Width           =   22920
      _ExtentX        =   40428
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
            TextSave        =   "02/08/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "04:28 PM"
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
      Height          =   6135
      Left            =   240
      TabIndex        =   26
      Top             =   1080
      Width           =   8325
      _ExtentX        =   14684
      _ExtentY        =   10821
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "Wasteissue.frx":359E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Height          =   2415
         Left            =   135
         TabIndex        =   28
         Top             =   60
         Width           =   8040
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "DESCRIPTION"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   5
            Left            =   2640
            MaxLength       =   50
            TabIndex        =   57
            TabStop         =   0   'False
            Top             =   1560
            Width           =   4965
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CNTCD"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   4
            Left            =   1440
            MaxLength       =   6
            TabIndex        =   18
            Top             =   1560
            Width           =   1140
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
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
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   6120
            MaxLength       =   25
            TabIndex        =   20
            Top             =   2025
            Visible         =   0   'False
            Width           =   1440
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
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
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   10
            Left            =   1440
            MaxLength       =   25
            TabIndex        =   45
            Top             =   2040
            Width           =   2355
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "PRODUCT_CODE"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   1440
            MaxLength       =   6
            TabIndex        =   17
            Top             =   1110
            Width           =   1140
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "DESCRIPTION"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   2610
            MaxLength       =   50
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   1110
            Width           =   4965
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00FFFFFF&
            DataField       =   "isstype"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "Wasteissue.frx":35BA
            Left            =   1440
            List            =   "Wasteissue.frx":35BC
            TabIndex        =   16
            Top             =   675
            Width           =   2355
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   0
            Left            =   1440
            TabIndex        =   14
            Top             =   240
            Width           =   2325
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            Height          =   315
            Left            =   6150
            TabIndex        =   15
            Top             =   240
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   556
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
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
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   6195
            TabIndex        =   29
            Top             =   240
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            _Version        =   393216
            Format          =   157548545
            CurrentDate     =   37043
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Mix No "
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   1
            Left            =   105
            TabIndex        =   56
            Top             =   1560
            Width           =   540
         End
         Begin VB.Label lblStatus 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   420
            Left            =   4920
            TabIndex        =   55
            Top             =   630
            Width           =   2910
         End
         Begin VB.Label lblIssue 
            AutoSize        =   -1  'True
            Caption         =   "Issuing Weight"
            Height          =   195
            Left            =   4860
            TabIndex        =   54
            Top             =   2115
            Visible         =   0   'False
            Width           =   1050
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Total Nett Weight"
            Height          =   195
            Left            =   105
            TabIndex        =   46
            Top             =   2115
            Width           =   1260
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Waste"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   3
            Left            =   105
            TabIndex        =   44
            Top             =   1185
            Width           =   465
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Issue No."
            Height          =   195
            Index           =   0
            Left            =   105
            TabIndex        =   32
            Top             =   300
            Width           =   675
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   4950
            TabIndex        =   31
            Top             =   285
            Width           =   345
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Issue Type"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   105
            TabIndex        =   30
            Top             =   735
            Width           =   780
         End
      End
      Begin VB.Frame Frame2 
         Height          =   3435
         Left            =   135
         TabIndex        =   27
         Top             =   2580
         Width           =   8040
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   3300
            Left            =   0
            TabIndex        =   22
            Top             =   105
            Width           =   8025
            _ExtentX        =   14155
            _ExtentY        =   5821
            _Version        =   393216
            AllowUpdate     =   -1  'True
            BackColor       =   16777215
            ForeColor       =   0
            HeadLines       =   2
            RowHeight       =   15
            TabAction       =   2
            AllowDelete     =   -1  'True
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
               Name            =   "Verdana"
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
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   240
      TabIndex        =   33
      Top             =   1080
      Visible         =   0   'False
      Width           =   8025
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   5220
         Picture         =   "Wasteissue.frx":35BE
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Height          =   615
         Left            =   3480
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   4080
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
         TabIndex        =   36
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   840
      TabIndex        =   38
      Top             =   1800
      Visible         =   0   'False
      Width           =   7620
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   41
         Top             =   930
         Width           =   1665
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         DownPicture     =   "Wasteissue.frx":3991
         Height          =   615
         Left            =   4020
         Picture         =   "Wasteissue.frx":3D73
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         DownPicture     =   "Wasteissue.frx":4146
         Height          =   615
         Left            =   2580
         Picture         =   "Wasteissue.frx":452C
         Style           =   1  'Graphical
         TabIndex        =   39
         Top             =   1680
         Width           =   975
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Doc No."
         ForeColor       =   &H80000002&
         Height          =   195
         Left            =   2610
         TabIndex        =   43
         Top             =   1005
         Width           =   600
      End
      Begin VB.Label Label28 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Find "
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
         TabIndex        =   42
         Top             =   120
         Width           =   7620
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4425
      Left            =   7050
      TabIndex        =   51
      Top             =   1545
      Visible         =   0   'False
      Width           =   4110
      _extentx        =   7250
      _extenty        =   7805
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Waste Issue"
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
      Left            =   240
      TabIndex        =   37
      Top             =   690
      Width           =   1575
   End
End
Attribute VB_Name = "Wasteissue"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents ADOSECONDARYRS As Recordset
Attribute ADOSECONDARYRS.VB_VarHelpID = -1
Dim secrs As Recordset
Dim DB As Connection
Dim db1 As Connection
Dim save_count As String
Dim SPack As String
Dim Opt As String
Dim st, st1, ST2, WasteIssType As String
Dim ITARY() As String
Dim cou As Integer
Dim cou1, c, pg As Integer
Dim co As Integer
Dim a As Integer
Dim z As Integer
Dim cont As Integer
Dim REP As Report.ReportView
Dim sIssue As String
Dim tmpWgt As Double
Dim FLG As String
Dim iFlg As Integer
Dim Rs As Recordset
Dim RSS As Recordset
Dim SR As String
Dim pr As String
Dim dr As String
Dim g As String
Dim t7 As Double
Dim t6 As Double
Dim t0 As Integer
Dim t1 As String
Dim slno As Integer
Dim t2 As String
Dim t3 As String
Dim t4 As Integer
Dim t5 As Integer
Dim t8 As String
Dim date1 As String
Dim date2 As String
Dim date3 As String
Dim DT As String
Dim errflg As String
Dim Last_docno As Double
Dim New1DocNo As Double
Dim Str As String
Dim Tnetwt As Double
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo Err
intervalMinutes = -1
 StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
If Opt <> "ADD" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
    MaskEdBox1.Text = adoPrimaryRS("date")
    txtfields(0).Text = adoPrimaryRS("bo_no")
    
    Set rsz = New Recordset
    rsz.Open "SELECT ISSUE_CODE+'-'+ISSUE_DESC FROM RM_ISSUETYPE WHERE ISSUE_CODE='" & adoPrimaryRS("issFLG") & "'", DB, adOpenStatic
    Combo1.Clear
    If rsz.RecordCount > O Then
        Combo1.AddItem rsz(0)
        Combo1.Text = rsz(0)
    End If
    
    
End If
intervalMinutes = -1
Exit Sub
Err:
End Sub

Private Sub BUTTON_Click(Index As Integer)
'On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
'addition
 If ToValidFinYear(Divcode) = False Then Exit Sub
   ' If Record_Exists("rm_WASTE", "No Record Found in Waste Entry") = False Then Exit Sub
    If Record_Exists("rm_var") = False Then Exit Sub
    'If Record_Exists("rm_wastetype", "Please Define Waste Type") = False Then Exit Sub
    Opt = "add"
    desc.Caption = "Addition"
    DATLAB.Caption = pdate
  
    DB.BeginTrans
    tmpWgt = 0
    iFlg = 0
    SPack = ""
    txtfields(1).Text = ""
   
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select divcode,entdate,user_id,bo_type,bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,CNTCD,ISSFLG,netwt from IG_RBOHD where 1=2", DB, adOpenStatic, adLockBatchOptimistic
'    Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "select divcode,docno,docdt,ISSTYPE from rm_wISSUE where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    adoPrimaryRS.AddNew
'    Set MAXDANO = New Recordset
'    '' 27-Apr-2007 - Year Prefix is required
'    MAXDANO.Open "SELECT right(ISNULL(MAX(BO_NO),0),6) FROM IG_RBOHD WHERE DATE BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic
'
'    If MAXDANO.RecordCount > 0 Then
'        If Not IsNull(MAXDANO(0)) Then
'            YearNo = Right(Format(yfdate, "YYYY"), 2)
'            docNo = YearNo & Padl(CStr(MAXDANO(0) + 1), 6, "0")
'            TXTFIELDS(0).Text = docNo
'        Else
'            YearNo = Right(Format(yfdate, "YYYY"), 2)
'            docNo = YearNo & Padl(CStr(MAXDANO(0) + 1), 6, "0")
'            TXTFIELDS(0).Text = docNo
'        End If
'    End If
    txtfields(0).Text = ""
    SSTab1.Enabled = True
    Frame1.Enabled = True
    txtfields(2).Text = ""
    txtfields(3).Text = ""
    txtfields(10).Text = ""
    txtfields(4).Text = ""
    txtfields(5).Text = ""
    Set DataGrid1.DataSource = Nothing
    Combo1.Text = " "
    MaskEdBox1.Text = "__/__/____"
    Set ADOSECONDARYRS = New Recordset
    ADOSECONDARYRS.Open " select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code""Product Code"",b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where 1=2", DB, adOpenStatic, adLockBatchOptimistic
'    Set adoSecondaryRS = New Recordset
'    adoSecondaryRS.Open "select a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett        Weight""  from rm_wissue a,rm_wastetype b where 1 = 2 ", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = ADOSECONDARYRS
    grddatagrid.AllowUpdate = True
    'adoSecondaryRS.AddNew
    Call gridalign
    StatusBar1.Panels(2).Text = "Addition"
    Set issrs = New Recordset
    issrs.Open "select issue_code +'--'+issue_desc from rm_issuetype ", DB, adOpenStatic
    Combo1.Clear
    Do While Not issrs.EOF
        Combo1.AddItem issrs(0)
        issrs.MoveNext
    Loop
    Combo1.ListIndex = 0
    SSTab2.Visible = True
    If sIssue = "K" Then
        lblIssue.Visible = True
        txtfields(1).Visible = True
    Else
        lblIssue.Visible = False
        txtfields(1).Visible = False
    End If
    
    txtfields(0).Locked = True
    MaskEdBox1.Enabled = True
    MaskEdBox1.Text = pdate
    MaskEdBox1.SetFocus
    Call adddelmod(BUTTON)
    BUTTON(4).Enabled = False
    'DTPicker1.MinDate = pdate
    Combo1.ListIndex = 0
'    save_count = "' '"
    Tnetwt = 0
    
    
Case 1
        'Modification
     If ToValidFinYear(Divcode) = False Then Exit Sub
''     If Record_Exists("IG_RBOHD where inv_type is null and inv_no is null") = False Then Exit Sub
        If Record_Exists("Ig_rbohd where bo_no not in (select distinct ISSNO from rm_wastemixstock where isnull(mixkgs,0)<>0 and divcode='" & Divcode & "') and divcode='" & Divcode & "'") = False Then Exit Sub
        Screen.MousePointer = 11
        Opt = "mod"
        desc.Caption = "Modification"
'        SSTab1.Visible = False
        LookUp.Clear = True
        LookUp.query = "select distinct bo_no""Waste Issue No."",date""Waste Issue Date"" from Ig_rbohd where isnull(CUST_CODE,'') ='' and bo_no not in (select distinct ISSNO from rm_wastemixstock where isnull(mixkgs,0)<>0 and divcode='" & Divcode & "') and divcode='" & Divcode & "' AND date BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'"
        LookUp.ALIGN = "1500,1600"
        LookUp.Caption = "Issue Number Listing"
        LookUp.DefCol = "Waste Issue No."
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
         Buttonframe.Enabled = True
         SSTab1.Visible = True
         If Opt = "mod" Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""Nett Weight"",a.isstype from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open " select DISTINCT A.divcode,A.bo_type,A.bo_no,A.date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,b.rate,rateflg,A.issflg,a.cntcd from IG_RBOHD A,IG_RBODT B where A.BO_NO=B.BO_NO AND A.BO_TYPE=B.BO_TYPE AND A.DIVCODE=B.DIVCODE AND a.divcode='" & Divcode & "' AND A.date BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' and a.bo_no='" & LookUp.Fields(0) & "' ", DB, adOpenStatic, adLockOptimistic
        'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        '''Set grddatagrid.DataSource = adoSecondaryRS
        ''' Set adoSecondaryRS = New Recordset
        ''' adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
        ''' Set grddatagrid.DataSource = adoSecondaryRS
            txtfields(2).Text = ADOSECONDARYRS("product code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
            If adoPrimaryRS("cntcd") <> "" Then
                txtfields(4).Text = adoPrimaryRS("cntcd")
                If txtfields(4).Text <> "" Then
                    Set RsMx = New Recordset
                    RsMx.Open " select cntname from RM_Count where divcode='" & Divcode & "' and cntcd='" & Trim(txtfields(4).Text) & "'", DB, adOpenStatic
                    If Not RsMx.EOF Then
                        txtfields(5).Text = RsMx(0)
                    Else
                        txtfields(4).Text = ""
                        txtfields(5).Text = ""
                    End If
                End If
            Else
                txtfields(4).Text = ""
                txtfields(5).Text = ""
            End If
         LookUp.Clear = True
        Call gridalign
        For I = 0 To 4
                grddatagrid.Columns(I).Locked = True
        Next
        grddatagrid.AllowUpdate = True
        
        If sIssue = "K" Then
            lblIssue.Visible = True
            txtfields(1).Visible = True
        Else
            lblIssue.Visible = False
            txtfields(1).Visible = False
        End If
        
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        grddatagrid.Col = 4
        'grddatagrid.SetFocus
        
    End If
        Else
          desc.Caption = "Query"
    StatusBar1.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11
    On Error Resume Next
    Opt = "qry"
    Call query_mode
    BUTTON(4).Enabled = True
    
    'calling cancl procedure from module
    Call cancl(BUTTON)
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
    Frame3.Visible = False
    SSTab1.Visible = True
    SSTab1.ZOrder
End If
        ''Label15.Caption = "Issue Number List"
'''        ksllist1.conn = connectstring
'''        'KslList1.table = "IG_RBOHD where inv_type is null and inv_no is null"
'''        ksllist1.table = "IG_RBOHD a,IG_RBODT b  where a.bo_type=b.bo_type and a.bo_no=b.bo_no and a.divcode=b.divcode and inv_type is null and inv_no is null and a.divcode='" & Divcode & "' "
'''        ksllist1.listfield1 = "cast(a.bo_no as varchar)"
'''        ksllist1.listfield2 = "convert(varchar,a.date,103)"
'''        SSTab1.Enabled = True
'''        Frame1.Enabled = False
'''        grddatagrid.AllowUpdate = True
'''        Frame3.Visible = True
'''        Frame3.ZOrder
        If Opt = "mod" Then
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True 'Save
        BUTTON(9).ToolTipText = "Modification"
        BUTTON(10).Enabled = True
        BUTTON(4).Enabled = False
        
        Screen.MousePointer = 0
        Frame3.Visible = True
    End If

Case 2
        'Deletion
         If ToValidFinYear(Divcode) = False Then Exit Sub
    ''If Record_Exists("IG_RBOHD where inv_type is null and inv_no is null and divcode='" & Divcode & "'") = False Then Exit Sub
    
        If Record_Exists("Ig_rbohd where bo_no not in (select distinct ISSNO from rm_wastemixstock where isnull(mixkgs,0)<>0 and divcode='" & Divcode & "') and divcode='" & Divcode & "'") = False Then Exit Sub
        
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
'        SSTab1.Visible = False
        LookUp.Clear = True
        LookUp.query = "select distinct bo_no""Waste Issue No."",date""Waste Issue Date"" from Ig_rbohd where isnull(CUST_CODE,'') ='' and  bo_no not in (select distinct ISSNo from rm_wastemixstock where isnull(mixkgs,0)<>0 and divcode='" & Divcode & "') and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
        LookUp.ALIGN = "1500,1600"
        LookUp.Caption = "Waste Issue Number Listing"
        LookUp.DefCol = "Waste Issue No."
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
         SSTab1.Visible = True
         Buttonframe.Enabled = True
         If Opt = "del" Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""Nett Weight"",a.isstype from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open " select DISTINCT A.divcode,A.bo_type,A.bo_no,a.date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,b.rate,rateflg,a.issflg from IG_RBOHD A,IG_RBODT B where A.BO_NO=B.BO_NO AND A.BO_TYPE=B.BO_TYPE AND A.DIVCODE=B.DIVCODE AND a.divcode='" & Divcode & "' AND a.date BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' and a.bo_no='" & LookUp.Fields(0) & "' ", DB, adOpenStatic, adLockOptimistic
        'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Set ADOSECONDARYRS = New Recordset
        ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code as 'Product Code',b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
            txtfields(2).Text = ADOSECONDARYRS("product code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
        Call gridalign
           
        Set rsg = New Recordset
        rsg.Open "select ISNULL(SUM(nett_kgs),0) FROM IG_RBODT WHERE bo_no='" & adoPrimaryRS("bo_no") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
    
        txtfields(10).Text = rsg(0)
        For I = 0 To 7
            grddatagrid.Columns(I).Locked = True
        Next
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        BUTTON(9).SetFocus
    End If
        Else
    desc.Caption = "Query"
    StatusBar1.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11
    On Error Resume Next
    Opt = "qry"
    Call query_mode
    BUTTON(4).Enabled = True
    
    'calling cancl procedure from module
    Call cancl(BUTTON)
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
    Frame3.Visible = False
    SSTab1.Visible = True
    SSTab1.ZOrder
End If
''''        Label15.Caption = "Issue Number List"
''''        KslList1.conn = connectstring
''''        KslList1.table = "IG_RBOHD a,IG_RBODT b  where a.bo_type=b.bo_type and a.bo_no=b.bo_no and a.divcode=b.divcode and inv_type is null and inv_no is null and a.divcode='" & Divcode & "' "
''''        'KslList1.listfield1 = "cast(docno as varchar) + ':' +adjst"
''''        KslList1.listfield1 = "cast(a.bo_no as varchar)"
''''        KslList1.listfield2 = "convert(varchar,a.date,103)"
''''        grddatagrid.AllowUpdate = False
''''        Frame3.Visible = True
''''        Frame3.ZOrder
       If Opt = "del" Then
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True 'Save
        BUTTON(9).ToolTipText = "Delete"
        BUTTON(10).Enabled = True
        BUTTON(4).Enabled = False
        Screen.MousePointer = 0
        Frame3.Visible = True
       End If
    
Case 3
        If Record_Exists("rm_wissue where divcode='" & Divcode & "'") = False Then Exit Sub
        Set repo = New Report.ReportView
        desc.Caption = "Listing"
        Set rs1 = New Recordset
        rs1.Open "select DISTINCT docno,docdt from rm_wissue  where divcode='" & Divcode & "' and docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' ", DB, adOpenStatic
        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Exit Sub
        End If
        pg = 1
        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA & "\red.txt" For Output As #1
            Print #1,
            Print #1,
            Print #1, Space(5) & Chr(27); "E"; CENTRE(divname, 79, " "); "F"; Chr(27)
            Print #1,
            Print #1, Space(5); "Waste Issue Listing" & Space(1); "for "; Format(adoPrimaryRS("docdt"), "dd/mm/yyyy"); Space(51 - 16 - 13) & "Dt: "; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:" & Padl(pg, 3, " ")
            Print #1, Space(5) & String(79, "-")
            Print #1, Space(5) & "Issue No. Doc.Dt  "
            Print #1, Space(5) & "Godown  Waste  Description                        Shift Count      Gross Weight"
            Print #1, Space(5) & String(79, "-")
            co = 8
            tot = 0
        Do While Not rs1.EOF
            Print #1, Space(5) & Padr(rs1("docno"), 7, " ") & Space(1) & Padr(Format(rs1("docdt"), "dd/mm/yyyy"), 10, " ")
            co = co + 1
            Print #1,
            co = co + 1
            Set RS2 = New Recordset
            RS2.Open "select a.CNTCD,a.gcode,a.wcode,b.wdes,type=case when type='R' then 'Reuse' else 'Sales' end,a.netwt  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & rs1("docno") & " and a.docdt='" & Format(rs1("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic
            Do While Not RS2.EOF
                Print #1, Space(5) & Padr(RS2("Gcode"), 6, " ") & Space(2) & Padr(RS2("Wcode"), 5, " "); Space(2); Padr(RS2("wDes"), 35, " "); Padr(RS2("type"), 6, " "); Padr(RS2("cntcd"), 10, " "); Space(1); Padl(INF(RS2("netwt"), 3), 12, " ")
                tot = tot + RS2("netwt")
                co = co + 1
                RS2.MoveNext
                If co >= pagelen Then
                    Print #1, Space(5); String(50, "-")
                    Print #1, Chr(12)
                    co = 0
                    pg = pg + 1
                    Print #1, Space(5) & Chr(27); "E"; CENTRE(divname, 56, " "); "F"; Chr(27)
                    Print #1,
                    Print #1, Space(5); "Supplier Listing" & Space(2); Space(10) & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg:" & pg
                    Print #1, Space(5) & String(50, "-")
                    Print #1, Space(5) & "Code" & Space(9) & "Name "
                    Print #1, Space(5) & String(50, "-")
                    co = co + 5
                End If
            Loop
            rs1.MoveNext
        Loop
            Print #1, Space(5) & String(79, "-")
            Print #1, Space(5) & Space(35); " ** Total ** "; Space(10); Padl(INF(tot, 3), 21, " ")
            Print #1, Space(5) & String(79, "-")
            Print #1, Chr(12)
         Close #1
        '1=FreeFile
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
    If Record_Exists("rm_wissue where divcode='" & Divcode & "'") = False Then Exit Sub
    Frame3.Visible = False
    SSTab1.Visible = False
    Frame6.Visible = True
    Opt = "fnd"
    txtqry.Text = ""
    txtqry.SetFocus
    Call adddelmod(BUTTON)
    BUTTON(4).Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
        
Case 5
        'first
    'If Record_Exists("rm_wissue where divcode='" & Divcode & "'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoFirstError
    adoPrimaryRS.MoveFirst
    Set ADOSECONDARYRS = New Recordset
'    ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt,a.shift, a.CNTCD ""Count    Code"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.type""Salable/  Usable"",a.grosswt""       Gross      Weight"",a.tarewt""         Tare      Weight"" ,a.netwt ""         Nett      Weight""  from rm_waste a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoprimaryrs("docno") & " and a.docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", db, adOpenStatic, adLockBatchOptimistic
    Set ADOSECONDARYRS = New Recordset
            'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            '''adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code""Product Code"",b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            txtfields(2).Text = ADOSECONDARYRS("product code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
            
            Set rsg = New Recordset
            rsg.Open "select ISNULL(SUM(nett_kgs),0) FROM IG_RBODT WHERE bo_no='" & adoPrimaryRS("bo_no") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        
            txtfields(10).Text = rsg(0)
        Call gridalign
    StatusBar1.Panels(2).Text = "First Record"
    Call bindcontls
    'calling fir procedure from module
    Call navi1(BUTTON)
    Call FIR(BUTTON)
    Beep
    Exit Sub
GoFirstError:
    MsgBox Err.Description, vbInformation, head
Case 6
        'next
    'If Record_Exists("rm_wissue where divcode='" & Divcode & "'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        If adoPrimaryRS.RecordCount > 1 Then
            pr = adoPrimaryRS("bo_no")
            dr = adoPrimaryRS("date")
            Do While pr = adoPrimaryRS("bo_no") And dr = adoPrimaryRS("date")
                Set Rs = New Recordset
                strSQL = "Select * from rm_issuetype Where Issue_Code= '" & adoPrimaryRS("Issflg") & "'"
                Rs.Open strSQL, DB, adOpenStatic, adLockOptimistic
                Combo1.Text = Rs("Issue_Code") & " - " & Rs("Issue_Desc")
                pr = adoPrimaryRS("bo_no")
                dr = adoPrimaryRS("date")
                txtfields(0).Text = pr
                MaskEdBox1.Text = Format(dr, "dd/MM/yyyy")
                adoPrimaryRS.MoveNext
            Loop
        End If
        Set ADOSECONDARYRS = New Recordset
            'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            '' Kuppuram - 28-Apr-2007 - more than actual rows are retrieved...because of union, so, we remove union query
            ''adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code'Product Code',b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            txtfields(2).Text = ADOSECONDARYRS("product_code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
        Call gridalign
        Set rsg = New Recordset
        rsg.Open "select ISNULL(SUM(nett_kgs),0) FROM IG_RBODT WHERE bo_no='" & adoPrimaryRS("bo_no") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        
        txtfields(10).Text = rsg(0)
        
        grddatagrid.Enabled = False
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        pr = adoPrimaryRS("docno")
        dr = adoPrimaryRS("docdt")
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        adoPrimaryRS.MoveLast
        Set ADOSECONDARYRS = New Recordset
            'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            '''adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code'Product Code',b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            Call gridalign
            txtfields(2).Text = ADOSECONDARYRS("product_code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
            Set rsg = New Recordset
            rsg.Open "select ISNULL(SUM(nett_kgs),0) FROM IG_RBODT WHERE bo_no='" & adoPrimaryRS("bo_no") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
            
            txtfields(10).Text = rsg(0)
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        Beep
    End If
    Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        Beep
    Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
    End If
    Exit Sub
GoNextError:
      '  MsgBox err.description, vbInformation, head

Case 7
        'Previous
    'If Record_Exists("rm_wissue where divcode='" & Divcode & "'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoPrevError
    If Not (adoPrimaryRS.BOF = True Or adoPrimaryRS.EOF = True) Then
        If adoPrimaryRS.RecordCount > 1 Then
             st = adoPrimaryRS("bo_no")
             SR = adoPrimaryRS("date")
             Do While st = adoPrimaryRS("bo_no") And SR = adoPrimaryRS("date")
                 st = adoPrimaryRS("bo_no")
                 SR = adoPrimaryRS("date")
                 adoPrimaryRS.MovePrevious
             Loop
        End If
       Set ADOSECONDARYRS = New Recordset
            'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            '''adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code'Product Code',b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            txtfields(2).Text = ADOSECONDARYRS("product code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
        Call gridalign
        Set rsg = New Recordset
        rsg.Open "select ISNULL(SUM(nett_kgs),0) FROM IG_RBODT WHERE bo_no='" & adoPrimaryRS("bo_no") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        
        txtfields(10).Text = rsg(0)
        If adoPrimaryRS.BOF Then
            StatusBar1.Panels(2).Text = "First Record"
        End If
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        st = adoPrimaryRS("docno")
        SR = adoPrimaryRS("docdt")
    End If
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
        Set ADOSECONDARYRS = New Recordset
            'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            '''adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code'Product Code'',b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            txtfields(2).Text = ADOSECONDARYRS("product_code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
        Call gridalign
        Set rsg = New Recordset
        rsg.Open "select ISNULL(SUM(nett_kgs),0) FROM IG_RBODT WHERE bo_no='" & adoPrimaryRS("bo_no") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        
        txtfields(10).Text = rsg(0)
    End If
    Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        StatusBar1.Panels(2).Text = "First Record"
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    Exit Sub
GoPrevError:
       ' MsgBox err.description, vbInformation, head

Case 8
        'last
        'If Record_Exists("rm_wissue where divcode='" & Divcode & "'") = False Then Exit Sub
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        Set ADOSECONDARYRS = New Recordset
            'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            '''adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code 'Product Code',b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            txtfields(2).Text = ADOSECONDARYRS("product code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
        Call gridalign
        Set rsg = New Recordset
        rsg.Open "select ISNULL(SUM(nett_kgs),0) FROM IG_RBODT WHERE bo_no='" & adoPrimaryRS("bo_no") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        
        txtfields(10).Text = rsg(0)
        
        StatusBar1.Panels(2).Text = "Last Record"
        Call bindcontls
        'calling las procedure from module
        Call navi1(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub
GoLastError:
        MsgBox Err.Description, vbInformation, head

Case 9
 
If Opt = "add" Then
    tmp = Opt
    Opt = " "
    slno = 1
    Set secrs.DataSource = ADOSECONDARYRS
    posabs = secrs.AbsolutePosition
    If secrs.RecordCount > 0 Then
            secrs.MoveFirst
                    Do While Not secrs.EOF
                        If Trim(grddatagrid.Columns("Pack No").Text) = "" And Trim(grddatagrid.Columns(6).Text) = "" Then
                            secrs.Delete
                            secrs.MoveNext
                        Else
                            If val(grddatagrid.Columns("pack year").Text) = 0 Then
                                  MsgBox "Pack Year Cannot be empty.", vbInformation, head
                                Opt = "add"
                                grddatagrid.Col = 1
                                grddatagrid.SetFocus
                                Exit Sub
                            
                            End If

                           ' If Trim(grddatagrid.Columns(0).Text) = "" Then
                             If Trim(grddatagrid.Columns(4).Text) = "" Then
                                MsgBox "Please enter the Bale Number", vbInformation, head
                                Opt = "add"
                                grddatagrid.Col = 1
                                grddatagrid.SetFocus
                                Exit Sub
                            End If
                            ' If Trim(grddatagrid.Columns(1).Text) = "" Or grddatagrid.Columns(1).Text = 0 Then
                            If Trim(grddatagrid.Columns(6).Text) = "" Or grddatagrid.Columns(6).Text = 0 Then
                                MsgBox "Please enter Nett Weight", vbInformation, head
                                Opt = "add"
                                grddatagrid.Col = 2
                                grddatagrid.SetFocus
                                Exit Sub
                            End If
                            secrs.MoveNext
                        End If
                    Loop
    End If
    If posabs > 0 Then
    secrs.AbsolutePosition = posabs
    End If
    Opt = tmp
    If Opt = "add" Then
    Set MAXDANO = New Recordset
    '' 27-Apr-2007 - Year Prefix is required
    MAXDANO.Open "SELECT right(ISNULL(MAX(BO_NO),0),6) FROM IG_RBOHD WHERE DATE BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic
    
    If MAXDANO.RecordCount > 0 Then
        If Not IsNull(MAXDANO(0)) Then
            YearNo = Right(Format(yfdate, "YYYY"), 2)
            docno = YearNo & Padl(CStr(MAXDANO(0) + 1), 6, "0")
            txtfields(0).Text = docno
        Else
            YearNo = Right(Format(yfdate, "YYYY"), 2)
            docno = YearNo & Padl(CStr(MAXDANO(0) + 1), 6, "0")
            txtfields(0).Text = docno
        End If
    End If

    Str = Trim(Left(Combo1.Text, 2))
    'ElseIf Combo1.Text = "S" Then
        'STR = "S"
    'End If
    
'    If adoSecondaryRS.RecordCount <> 0 Then
'    adoSecondaryRS.MoveFirst
'    Do While Not adoSecondaryRS.EOF
'        'DB.Execute "INSERT INTO rm_wissue(divcode,docno,docdt,isstype,wcode,netwt,cntcd,gcode) VALUES ('" & Divcode & "'," & txtFields(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' ,'" & STR & "','" & grddatagrid.Columns(5).Text & "'," & Val(grddatagrid.Columns(7).Text) & ",'" & grddatagrid.Columns(3).Text & "','" & grddatagrid.Columns(4).Text & "')"
'        DB.Execute "INSERT INTO rm_wissue(divcode,docno,docdt,isstype,wcode,baleno,grosswt,tarewt,netwt) VALUES ('" & Divcode & "'," & txtfields(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "','" & STR & "','" & txtfields(2).Text & "'," & Val(grddatagrid.Columns(4).Text) & "," & Val(grddatagrid.Columns(5).Text) & "," & Val(grddatagrid.Columns(6).Text) & "," & Val(grddatagrid.Columns(7).Text) & ")"
''                                         divcode docno docdt isstype  wcode  netwt  CNTCD  Gcode           divcode             docno                          docdt                                   isstype              wcode                                  netwt                                   CNTCD                                     Gcode
'        DB.Execute "update IG_RPACKNOS set INVOICED='Y' where PRODUCT_CODE='" & txtfields(2).Text & "' and PACK_NO=" & grddatagrid.Columns(4).Text & ""
'        adoSecondaryRS.MoveNext
'    Loop
'    DB.CommitTrans
'    Opt = tmp
'    MsgBox "Record(s) Saved", vbInformation, head
'    Else
'    DB.RollbackTrans
'    End If
'    Else
    Set Rs = New Recordset
        Rs.Open "select isnull(max(LAST_NO),0) from ig_doccontrol where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='B' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        Last_docno = val(Rs(0)) + 1
        Set MAXDANO = New Recordset
        MAXDANO.Open "SELECT MAX(BO_NO) FROM IG_RBOHD WHERE DATE BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "'", DB, adOpenStatic
        If MAXDANO.RecordCount > 0 Then
            If Not IsNull(MAXDANO(0)) Then
                bo_no = Left(MAXDANO(0), 5) & Format(val(Right(MAXDANO(0), 3)) + 1, "000")
            Else
                bo_no = YearNo & "000001"
            End If
        End If

        New1DocNo = Rs(0) + 1
        adoPrimaryRS("divcode").value = Divcode
        adoPrimaryRS("User_id").value = usrid
        adoPrimaryRS("bo_type").value = WasteIssType
        adoPrimaryRS("bo_no").value = txtfields(0).Text
        adoPrimaryRS("CUST_CODE") = ""
        adoPrimaryRS("ISSFLG") = Left(Trim(Combo1.Text), 2)
        adoPrimaryRS("entdate").value = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("date").value = Format(MaskEdBox1.Text, "yyyy/mm/dd")
      '  Tnetwt = Tnetwt + val(grddatagrid.Columns(1).Text)
      '  Txtfields(10).Text = Format(val(Tnetwt), "0.000")
        adoPrimaryRS("netwt").value = val(txtfields(10).Text)
        '''23.02.2022 added cntcd columns
        adoPrimaryRS("CntCd").value = Trim(txtfields(4).Text)
        
        adoPrimaryRS.UpdateBatch adAffectAll
        Set Rs = New Recordset
        Rs.Open "select divcode,bo_type,bo_no,sl_no,cont_type,cont_no,product_code,pack_year,packno_code,spack_no,epack_no,pack_type,lot_code,nett_kgs,gross_kgs,ProdNetKgs from IG_RBODT", DB, adOpenDynamic, adLockBatchOptimistic
        tmp = Opt
        Opt = " "
    'If secrs.EOF = False Then
    If secrs.RecordCount > 0 Then
        secrs.MoveFirst
    End If
    Do While Not secrs.EOF
        
        'If grddatagrid.Columns(1).Text = "" Then
         If grddatagrid.Columns(6).Text = "" Then
            secrs.Delete adAffectCurrent
            GoTo X
            Exit Sub
        End If

        Rs.AddNew
        Rs("divcode") = Divcode
        Rs("BO_TYPE") = WasteIssType
        Rs("BO_nO") = txtfields(0).Text
        Rs("CONT_no") = ""
        Rs("CONT_TYPE") = ""
        'rs("product_code") = adoSecondaryRS("product_code")
        Rs("product_code") = secrs("Product Code")
      
        Set RSS = New Recordset
        RSS.Open "SELECT PACK_YEAR,PACK_TYPE FROM IG_RPACKDT WHERE DIVCODE ='" & Divcode & "' AND PRODUCT_CODE ='" & Trim(txtfields(2).Text) & "' and  packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "' and epack_no = '" & grddatagrid.Columns("Pack No").Text & "' and pack_year='" & grddatagrid.Columns(10).Text & "'   ", DB, adOpenStatic

         Set rx = New Recordset
        'RX.Open "select sum(isnull(pack_wt,0))+sum(isnull(TARE,0)),sum(isnull(pack_wt,0)) from IG_RPACKNOS where divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns(5).Text & "' and pack_no between " & grddatagrid.Columns(6).Text & " and " & grddatagrid.Columns(7).Text & " and pack_type= '" & grddatagrid.Columns(8).Text & "' and invoiced='N'", DB, adOpenStatic
        rx.Open "select sum(isnull(pack_wt,0))+sum(isnull(TARE,0)),sum(isnull(tisskgs,0))  from IG_RPACKNOS where divcode='" & Divcode & "' and PRODUCT_CODE ='" & secrs("Product Code") & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "' and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & "  And invoiced='N' and isnull(bo_no,'')='' and pack_year='" & grddatagrid.Columns(10).Text & "'", DB, adOpenStatic
        If rx.RecordCount > 0 Then
            'TEMPPACK = (grddatagrid.Columns(4).Text - grddatagrid.Columns(4).Text) + 1
            t6 = IIf(IsNull(rx(0)), 0, rx(0))
            t7 = IIf(IsNull(rx(1)), 0, rx(1))
            
        End If
        If Not RSS.EOF Then
            Rs("pack_year") = RSS("pack_year").value
            Rs("pack_type") = RSS("PACK_TYPE").value
        End If
        
        Rs("pack_year") = val(grddatagrid.Columns("pack year").Text)
        Rs("packno_code") = grddatagrid.Columns("Pack No. Code").Text 'grddatagrid.Columns(3).Text
        Rs("spack_no") = grddatagrid.Columns("Pack No").Text 'grddatagrid.Columns(0).Text
        Rs("epack_no") = grddatagrid.Columns("Pack No").Text  'grddatagrid.Columns(0).Text
        Rs("ProdNetKgs") = val(grddatagrid.Columns("            Net Weight").Text)
        'Rs("ProdNetKgs") = val(grddatagrid.Columns("Net Wt.").Text)
        
        'rs("lot_code") = adoSecondaryRS("lot_code").Value
        Rs("sl_no") = slno
        
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Usable Waste Issue"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = Trim(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd hh:mm:ss.m")
                  '  TrnLog("lotno") = val(rss("pack_year").value & "")
                   
                    TrnLog("varcode") = secrs("Product Code")
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
                   ' TrnLog("mixgrp") = Trim(txtfields(8).Text)
                    TrnLog("ordqty") = val(txtfields(1).Text)
                    TrnLog("ordkgs") = val(grddatagrid.Columns(6).Text)
                    TrnLog("Grosswt") = val(grddatagrid.Columns(6).Text)
                    TrnLog("netwt") = val(grddatagrid.Columns(6).Text)
                    TrnLog("packno") = grddatagrid.Columns("Pack No").Text
                    TrnLog.UpdateBatch adAffectAllChapters
        
        
        ' commented on 13-06-2018 by mariyaiya
        'rs("gross_kgs") = val(t6)
        'rs("nett_kgs") = val(t7)

        Set rx = New Recordset
        rx.Open "select sum(isnull(TARE,0))  from IG_RPACKNOS where divcode='" & Divcode & "' and PRODUCT_CODE ='" & secrs("Product Code") & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "' and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & " And invoiced='N' and pack_year='" & grddatagrid.Columns(10).Text & "' ", DB, adOpenStatic
         If rx.RecordCount > 0 Then
          Rs("nett_kgs") = val(grddatagrid.Columns(6).Text) 'val(grddatagrid.Columns(1).Text)
          Rs("gross_kgs") = val(grddatagrid.Columns(6).Text) '(val(grddatagrid.Columns(1).Text) - val(rx(0)))
         End If
        trate = 0
        cust_code = ""

        Rs.UpdateBatch adAffectAll
        If val(t6) = val(t7) Then
        
        DB.Execute "UPDATE IG_RPACKNOS set    BO_TYPE='" & WasteIssType & "',isskgs=isnull(isskgs,0)+ '" & grddatagrid.Columns(6).Text & "',tisskgs='" & grddatagrid.Columns(6).Text & "',BO_DATE='" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & "' WHERE divcode='" & Divcode & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "'  and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & "  AND PRODUCT_CODE='" & Trim(secrs("Product Code")) & "' and pack_year='" & grddatagrid.Columns(10).Text & "'"


        Set rsnew = New Recordset
        rsnew.Open "select (isnull(pack_wt,0)-isnull(isskgs,0)) isskgs  from IG_RPACKNOS where divcode='" & Divcode & "' and PRODUCT_CODE ='" & secrs("Product Code") & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "' and pack_no = '" & grddatagrid.Columns("Pack No").Text & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'", DB, adOpenStatic
        If rsnew("isskgs") = 0 Then
            If Left(Combo1.Text, 2) = "PR" Then
                DB.Execute "UPDATE IG_RPACKNOS set INVOICED='Y'  WHERE divcode='" & Divcode & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "'  and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & "  AND PRODUCT_CODE='" & Trim(secrs("Product Code")) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'"
            ElseIf Left(Combo1.Text, 2) = "SA" Then
                DB.Execute "UPDATE IG_RPACKNOS set INVOICED='Y'  WHERE divcode='" & Divcode & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "'   and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & "  AND PRODUCT_CODE='" & Trim(secrs("Product Code")) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' "
            Else
                DB.Execute "UPDATE IG_RPACKNOS set INVOICED='Y'  WHERE divcode='" & Divcode & "' and packno_code= '" & grddatagrid.Columns("Pack No. Code").Text & "'   and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & "  AND PRODUCT_CODE='" & Trim(secrs("Product Code")) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' "
            End If
          ' added on  on 13-06-2018 by mariyaiya
             DB.Execute "UPDATE IG_RPACKNOS set   BO_NO='" & txtfields(0).Text & "' WHERE divcode='" & Divcode & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "'  and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & "  AND PRODUCT_CODE='" & Trim(secrs("Product Code")) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' "

        End If
           ' added on  on 13-06-2018 by mariyaiya
             'DB.Execute "UPDATE IG_RPACKNOS set    BO_TYPE='" & WasteIssType & "',isskgs=isnull(isskgs,0)+ '" & grddatagrid.Columns(6).Text & "',tisskgs='" & grddatagrid.Columns(6).Text & "',BO_DATE='" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & "' WHERE divcode='" & Divcode & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "'  and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & "  AND PRODUCT_CODE='" & Trim(secrs("Product Code")) & "' and pack_year='" & grddatagrid.Columns(10).Text & "'"
        Else
               '  DB.Execute "UPDATE IG_RPACKNOS set    BO_TYPE='" & WasteIssType & "',isskgs=isnull(isskgs,0)+ '" & grddatagrid.Columns(6).Text & "',tisskgs='" & grddatagrid.Columns(6).Text & "',BO_DATE='" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & "' WHERE divcode='" & Divcode & "' and packno_code='" & grddatagrid.Columns("Pack No. Code").Text & "'  and pack_no between " & grddatagrid.Columns("Pack No").Text & " and " & grddatagrid.Columns("Pack No").Text & "  AND PRODUCT_CODE='" & Trim(secrs("Product Code")) & "' and pack_year='" & grddatagrid.Columns(10).Text & "'"
        End If
        
        slno = slno + 1
        secrs.MoveNext
    Loop

X:
  
    
     DB.CommitTrans
    
    ''WASTE MIXING STOCK UPDATION
        DB.BeginTrans
        Set rsz = New Recordset
        rsz.Open "SELECT ISSTYPE FROM RM_ISSUETYPE WHERE ISSUE_CODE='" & Left(Combo1.Text, 2) & "'", DB, adOpenStatic
        ISSTYPE = ""
        If rsz.RecordCount > O Then
            ISSTYPE = rsz(0)
        End If
    
        If ISSTYPE = "P" Then
            If secrs.RecordCount > 0 Then
               secrs.MoveFirst
            End If
               Varcode = ""
               Sum = 0
               CountBale = 0
               ''SECRS(0)=BALENO
               ''SECRS(1)=NETWT
               ''SECTS(2)=PRODUCT CODE
               Set rsg = New Recordset
               rsg.Open "Select product_code,COUNT(*),SUM(NETT_KGS) From ig_rBODT Where BO_NO='" & txtfields(0).Text & "' AND DIVCODE='" & Divcode & "' Group by PRODUCT_CODE order by PRODUCT_CODE", DB, adOpenStatic
               If rsg.RecordCount > 0 Then
               rsg.MoveFirst
               While Not rsg.EOF
                  DB.Execute "INSERT INTO RM_WASTEMIXSTOCK (DIVCODE,ISSNO,ISSDT,ISSKGS,ISSBALES,VARCODE,MIXKGS,ISSTYPE)VALUES ('" & Divcode & "','" & txtfields(0).Text & "','" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & "'," & val(rsg(2)) & "," & rsg(1) & ",'" & rsg(0) & "',0,'" & Left(Combo1.Text, 2) & "')"
                  rsg.MoveNext
               Wend
               End If
            End If
        ''-----------------------
        DB.CommitTrans
    
    
    Screen.MousePointer = 0
    MsgBox "Record(s) Saved", vbInformation, head
    'stbar.Panels(2).Text = "Record(s) Saved"
    End If
    lblStatus.Caption = ""
    SSTab2.Visible = False
    lblIssue.Visible = False
    txtfields(1).Visible = False
    Opt = " "
    Call query_mode
    BUTTON(4).Enabled = True
'End If
End If


If Opt = "del" Then
        a% = MsgBox("Do you want to delete?", vbYesNo, head)
             On Error GoTo delerr
             
             If a = 6 Then
                DB.BeginTrans
                ADOSECONDARYRS.MoveFirst
                Do While Not ADOSECONDARYRS.EOF
                
                
                
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Usable Waste Issue"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = val(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd hh:mm:ss.m")
                 '   TrnLog("lotno") = rss("pack_year").value
                   
                    TrnLog("varcode") = Trim(txtfields(2).Text)
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
       
                    TrnLog("ordqty") = val(txtfields(1).Text)
                    TrnLog("ordkgs") = val(grddatagrid.Columns(5).Text)
                    TrnLog("Grosswt") = val(grddatagrid.Columns(5).Text)
                    TrnLog("netwt") = val(grddatagrid.Columns(5).Text)
                    TrnLog("packno") = grddatagrid.Columns(4).Text
                    TrnLog.UpdateBatch adAffectAllChapters
                
                If UCase(CustID) = "CHERAN" Then
                        ' added on 19-06-18 by mariyaiya
                        If sIssue = "K" Then
                            DB.Execute "UPDATE IG_RPACKNOS SET INVOICED='N',tflg=null,isskgs=IsNull(issKgs, 0) - '" & grddatagrid.Columns(5).Text & "' WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & "  AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' ", a
                            
                            ' added on 14-05-19 by mariyaiya
                             Set rsg = New Recordset
                            rsg.Open "Select * From IG_RPACKNOS  WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & " AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "'  and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' ", DB, adOpenStatic
                            If rsg.RecordCount > 0 Then
                                    DB.Execute "UPDATE IG_RPACKNOS SET BO_NO=NULL WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & "  AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' ", a
                            End If
                        Else
    
                            DB.Execute "UPDATE IG_RPACKNOS SET INVOICED='N',tflg='N',isskgs=IsNull(issKgs, 0) - '" & grddatagrid.Columns(5).Text & "' WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & " AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'", a
                            
                            ' added on 14-05-19 by mariyaiya
                            Set rsg = New Recordset
                            rsg.Open "Select * From IG_RPACKNOS  WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & " AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "'   and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'", DB, adOpenStatic
                            If rsg.RecordCount > 0 Then
                                    DB.Execute "UPDATE IG_RPACKNOS SET BO_NO=NULL WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & " AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "'and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'  ", a
                            End If
                        End If
                Else
                    If sIssue = "K" Then
                        DB.Execute "UPDATE IG_RPACKNOS SET INVOICED='N',tflg=null,BO_NO=NULL,isskgs=IsNull(issKgs, 0) - '" & grddatagrid.Columns(5).Text & "' WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & " AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'", a
                         
                          ' added on 14-05-19 by mariyaiya
                             Set rsg = New Recordset
                            rsg.Open "Select * From IG_RPACKNOS  WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & "  AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' ", DB, adOpenStatic
                            If rsg.RecordCount > 0 Then
                                 DB.Execute "UPDATE IG_RPACKNOS SET BO_NO=NULL WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & "  AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'", a
                            End If
                            
                    Else
                         DB.Execute "UPDATE IG_RPACKNOS SET INVOICED='N',tflg='N',BO_NO=NULL ,isskgs=IsNull(issKgs, 0) - '" & grddatagrid.Columns(5).Text & "' WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & "  AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'", a
                    
                       ' added on 14-05-19 by mariyaiya
                            Set rsg = New Recordset
                            rsg.Open "Select * From IG_RPACKNOS  WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & " AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "'  and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' ", DB, adOpenStatic
                            If rsg.RecordCount > 0 Then
                                    DB.Execute "UPDATE IG_RPACKNOS SET BO_NO=NULL WHERE divcode='" & Divcode & "' and pack_no between " & grddatagrid.Columns(4).Text & " and " & grddatagrid.Columns(4).Text & " AND PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' ", a
                            End If

                    
                    End If
                End If
                
               
                
                ADOSECONDARYRS.MoveNext
                Loop
               DB.Execute "delete from rm_wastemixstock where issno=" & txtfields(0).Text & ""
               DB.Execute ("delete from IG_RBODT where Divcode='" & Divcode & "' and bo_type='" & WasteIssType & "' and bo_no='" & txtfields(0).Text & "'")
               DB.Execute ("delete from IG_RBOHD where Divcode='" & Divcode & "' and  bo_type='" & WasteIssType & "'and bo_no='" & txtfields(0).Text & "' ")
               DB.Execute (" UPDATE IG_DOCCONTROL SET LAST_NO=LAST_NO-1 WHERE DOC_TYPE='B' and doc_ref='01' ")
               DB.CommitTrans
               Screen.MousePointer = 0
            MsgBox "Record(s) Deleted", vbInformation, head
            Opt = " "
            lblStatus.Caption = ""
            Call query_mode
            SSTab2.Visible = False
            lblIssue.Visible = False
            txtfields(1).Visible = False
            Else
                 Screen.MousePointer = 0
                 MsgBox "Deletion cancelled", vbInformation, head
                 DB.CommitTrans
                 Opt = " "
                 Call query_mode
                 Screen.MousePointer = 0
                 SSTab2.Visible = False
                 lblIssue.Visible = False
                 txtfields(1).Visible = False
            End If
    End If
delerr:
    If Err.Number = -2147217900 Then
        MsgBox "This Delivery No. is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If
If Opt = "mod" Then
    If Combo1.Text = "S" Then
        Str = "S"
    ElseIf Combo1.Text = "T" Then
        Str = "T"
    End If
    On Error Resume Next
    Set Rs = New Recordset
    Rs.Open "select netwt from rm_wissue where divcode='" & Divcode & "' and docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        Rs("netwt") = ADOSECONDARYRS(7)  'Net Wt
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Usable Waste Issue"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
                    TrnLog("docno") = val(txtfields(0).Text)
                    TrnLog("docdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd hh:mm:ss.m")
                 '   TrnLog("lotno") = rss("pack_year").value
                   
                    TrnLog("varcode") = Trim(txtfields(2).Text)
                    TrnLog("Isstype") = Left(Combo1.Text, 2)
       
                    TrnLog("ordqty") = val(txtfields(1).Text)
                    TrnLog("ordkgs") = ADOSECONDARYRS(7)
                    TrnLog("Grosswt") = ADOSECONDARYRS(7)
                    TrnLog("netwt") = ADOSECONDARYRS(7)
                    TrnLog("packno") = grddatagrid.Columns(4).Text
                    TrnLog.UpdateBatch adAffectAllChapters
        
        
        ADOSECONDARYRS.MoveNext
        Rs.MoveNext
    Loop
    Rs.UpdateBatch adAffectAllChapters
    DB.CommitTrans
    MsgBox "Record(s) Modified", vbInformation, head
    lblStatus.Caption = ""
    Opt = " "
    Call query_mode
    SSTab2.Visible = False
    lblIssue.Visible = False
    txtfields(1).Visible = False
    BUTTON(4).Enabled = True
End If

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    tmpWgt = 0
    SPack = ""
    lblStatus.Caption = ""
    StatusBar1.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
        db1.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    If Opt <> "qry" Then
        Opt = "qry"
    Call query_mode
    BUTTON(4).Enabled = True
    End If
    'calling cancl procedure from module
    Call cancl(BUTTON)
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
    Frame3.Visible = False
    SSTab1.Visible = True
    SSTab2.Visible = False
    lblIssue.Visible = False
    txtfields(1).Visible = False
    SSTab1.ZOrder
    Call NEWFORM1(BUTTON, GSNO)
Case 11

    'EXIT
'    If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Reset
    Unload Me
Case 12
        Frame5.Visible = True
        Frame5.ZOrder 0
        Option5.value = True
        Option5.SetFocus
        SSTab1.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
        UserFooter1.ClearFooter
        Command1.Visible = False
        Buttonframe.Enabled = False
    
'    Call dc_gatepass
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Wasteissue", vbInformation, head

End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

    Combo1.BackColor = &HC0FFC0

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Combo1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Combo1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyDown of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
On Error GoTo Combo1_KeyPress_Error

KeyAscii = 0

Exit Sub
Combo1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyPress of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

    Combo1.BackColor = &HFFFFFF

Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_Validate(Cancel As Boolean)
On Error GoTo Combo1_Validate_Error

If Opt = "add" Then
    If Combo1.Text = " " And MaskEdBox1.Text <> "__/__/____" Then
        MsgBox "Please Select any Type from the drop down list", vbInformation, head
        Cancel = True
        Exit Sub
    
    End If
End If

Exit Sub
Combo1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Validate of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    Call dc_gatepass

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    Frame6.Visible = False
    Buttonframe.Enabled = True
    Call BUTTON_Click(10)
    Call query_mode

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

    If txtqry <> "" Then
        BUTTON(9).Enabled = False
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""Nett Weight"",a.isstype from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode and docno=" & val(Trim(txtqry.Text)) & "  order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Record Found", vbInformation, head
            txtqry.Text = ""
            txtqry.SetFocus
            Exit Sub
        Else
            adoPrimaryRS.MoveFirst
            Set ADOSECONDARYRS = New Recordset
            ADOSECONDARYRS.Open "select a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown   Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""         Nett      Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            grddatagrid.Columns(4).Width = 1140.095
            grddatagrid.Columns(3).Width = 1379.906
            grddatagrid.Columns(2).Width = 3195.213
            grddatagrid.Columns(1).Width = 764.7874
            grddatagrid.Columns(0).Width = 1140.095
            grddatagrid.Columns(4).Alignment = dbgRight
            grddatagrid.Columns(4).NumberFormat = "###.000"
            grddatagrid.Columns(5).NumberFormat = "###.000"
            grddatagrid.Columns(6).NumberFormat = "###.000"
            BUTTON(10).Enabled = True
            SSTab1.Visible = True
            Frame6.Visible = False
            Call gridalign
            For I = 0 To 7
                grddatagrid.Columns(I).Locked = True
            Next
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = True
        End If
    Else
        MsgBox "Please enter the Doc Number", vbInformation, head
        txtqry.SetFocus
        Exit Sub
    End If


Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form Wasteissue", vbInformation, head
End Sub



Private Sub DataGrid1_DblClick()
On Error Resume Next
intervalMinutes = -1
If (Opt = "add" Or Opt = "mod") And DataGrid1.Columns(0) <> "" Then
    If sIssue = "K" Then
        iFlg = 1
        
        If val(txtfields(1).Text) = 0 Then
            MsgBox "Please enter the Issue Kgs", vbInformation, head
            txtfields(1).SetFocus
            Exit Sub
        End If
        If val(txtfields(1).Text) = val(txtfields(10).Text) Then
            MsgBox "Issue Kgs are Tallied", vbInformation, head
            BUTTON(9).SetFocus
            Exit Sub
        End If
        Dim KWgt As Double: KWgt = 0
        tmpWgt = tmpWgt + val(DataGrid1.Columns(1).Text)
        KWgt = (val(DataGrid1.Columns(1).Text))
        If tmpWgt >= val(txtfields(1).Text) Then
           KWgt = (val(txtfields(1).Text) + KWgt) - tmpWgt
           DB.Execute "update ig_rpacknos set tflg='Y', Isskgs= ISNULL(Isskgs,0) + " & KWgt & ",TISSKGS=" & KWgt & " where product_code='" & txtfields(2).Text & "' and pack_no = " & DataGrid1.Columns(0) & " and packno_code='" & DataGrid1.Columns(2) & "'  and PACK_YEAR='" & DataGrid1.Columns(3).Text & "'"
           Tnetwt = Tnetwt + KWgt
            SPack = SPack & "," & DataGrid1.Columns(0).Text
        Else
           strSQL = "update ig_rpacknos set tflg='Y', Isskgs= ISNULL(Isskgs,0) + " & KWgt & ",TISSKGS=" & KWgt & " where product_code='" & txtfields(2).Text & "' and pack_no = " & DataGrid1.Columns(0) & " and packno_code='" & DataGrid1.Columns(2) & "'  and PACK_YEAR='" & DataGrid1.Columns(3).Text & "' "
           DB.Execute strSQL
           Tnetwt = Tnetwt + val(DataGrid1.Columns(1).Text)
           SPack = SPack & "," & DataGrid1.Columns(0).Text
        End If
        Call Closinglabel
    Else
        DB.Execute "update ig_rpacknos set tflg='Y' where product_code='" & txtfields(2).Text & "' and pack_no = " & DataGrid1.Columns(0) & "   and packno_code='" & DataGrid1.Columns(2) & "'  and PACK_YEAR='" & DataGrid1.Columns(3).Text & "'"
        Tnetwt = Tnetwt + val(DataGrid1.Columns(1).Text)
        ' Tnetwt = Tnetwt + val(grddatagrid.Columns(6).Text)
    End If
    
    txtfields(10).Text = Format(val(Tnetwt), "0.000")
        
   packvalue = 0
   packvalue = DataGrid1.Columns(0).Text
  Call grid1
  Call grid2
  
   
End If
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
If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    tmpWgt = 0
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Provider = "msdatashape"
    DB.Open connectstring
    Set db1 = New Connection
    db1.Open connectstring
    desc.Caption = "query"
    
    DATLAB.Caption = pdate
    Opt = "qry"
    StatusBar1.Panels(1).Text = head
    Set Rs = New Recordset
    Rs.Open "select isnull(WasteIssueType,'B') as Waste,isnull(WasteIssType,'WS') WasteIssType from rm_param", DB, adOpenStatic
    sIssue = Rs(0)
    WasteIssType = Rs(1)
    SSTab2.Visible = False
    lblIssue.Visible = False
    txtfields(1).Visible = False
    
    SPack = ""
    
    Call query_mode
    DTPicker1.MinDate = yfdate
    DTPicker1.maxdate = pdate
intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Wasteissue", vbInformation, head
End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error

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
     '   Call Command6_Click
    End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
    If Opt = " " Or Opt = "qry" Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""Nett Weight"",a.isstype from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open " select DISTINCT A.divcode,A.bo_type,A.bo_no,a.date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,b.rate,rateflg,a.issflg,a.CNTCD from IG_RBOHD A,IG_RBODT B where A.BO_NO=B.BO_NO AND A.BO_TYPE=B.BO_TYPE AND A.DIVCODE=B.DIVCODE AND a.divcode='" & Divcode & "' AND a.date BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' ORDER BY A.bo_no asc", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveLast
            
            pr = adoPrimaryRS("bo_no")
            dr = adoPrimaryRS("date")
            Set Rs = New Recordset
            strSQL = "Select * from rm_issuetype Where Issue_Code= '" & adoPrimaryRS("Issflg") & "'"
            Rs.Open strSQL, DB, adOpenStatic, adLockOptimistic
            If Not Rs.EOF Then
                Combo1.Text = Rs("Issue_Code") & " - " & Rs("Issue_Desc")
            End If
            
            txtfields(0).Text = pr
            MaskEdBox1.Text = Format(dr, "dd/MM/yyyy")
            '''mixno added
            If adoPrimaryRS("cntcd") <> "" And adoPrimaryRS("cntcd") <> Null Then
                txtfields(4).Text = adoPrimaryRS("cntcd")
            End If
             
            Set ADOSECONDARYRS = New Recordset
            ADOSECONDARYRS.Open "select distinct  a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code 'Product Code',b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            
            Set grddatagrid.DataSource = ADOSECONDARYRS
            Set rsg = New Recordset
            rsg.Open "select ISNULL(SUM(nett_kgs),0) FROM IG_RBODT WHERE bo_no='" & adoPrimaryRS("bo_no") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
            
            txtfields(10).Text = rsg(0)
            lblStatus.Caption = ""
            Call gridalign
            txtfields(2).Text = ADOSECONDARYRS("product code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
            Call disablcontls
            Call bindcontls
            Frame1.Enabled = False
            Call GRdlock
            Call NEWFORM(BUTTON)
            Call NEWFORM1(BUTTON, GSNO)
            intervalMinutes = -1
        Else
            Call Norecfound(BUTTON)
            MsgBox "No Records Found", vbInformation, head
            Set grddatagrid.DataSource = Nothing
            Combo1.Text = ""
            txtfields(0).Text = ""
            MaskEdBox1.Text = "__/__/____"
        End If
    End If
    If Opt = "del" Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""Nett Weight"",a.isstype from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open " select DISTINCT A.divcode,A.bo_type,A.bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,issflg from IG_RBOHD A,IG_RBODT B where A.BO_NO=B.BO_NO AND A.BO_TYPE=B.BO_TYPE AND A.DIVCODE=B.DIVCODE AND a.divcode='" & Divcode & "' AND date BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' and a.bo_no='" & KSLLIST1.code & "' ", DB, adOpenStatic, adLockOptimistic
        'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
         Set ADOSECONDARYRS = New Recordset
            'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            '''adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as 'Bale No.',a.gross_kgs as 'Gross Wt.',a.nett_kgs as 'Net Wt.',a.cont_no,a.product_code 'Product Code',b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            txtfields(2).Text = ADOSECONDARYRS("product code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
        Call gridalign
        For I = 0 To 7
            grddatagrid.Columns(I).Locked = True
        Next
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        BUTTON(9).SetFocus
    End If
    If Opt = "mod" Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.gcode ""Godown Code"",a.wcode ""Waste"",b.wdes""Description"",a.netwt ""Nett Weight"",a.isstype from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' And a.wCode = b.wCode order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open " select DISTINCT A.divcode,A.bo_type,A.bo_no,date,cust_code,vehicle_no,ordrefno,ordredate,deliveyat,rate,rateflg,issflg from IG_RBOHD A,IG_RBODT B where A.BO_NO=B.BO_NO AND A.BO_TYPE=B.BO_TYPE AND A.DIVCODE=B.DIVCODE AND a.divcode='" & Divcode & "' AND date BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' AND '" & Format(yldate, "YYYY/MM/DD") & "' and a.bo_no='" & KSLLIST1.code & "' ", DB, adOpenStatic, adLockOptimistic
        'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = ADOSECONDARYRS
         Set ADOSECONDARYRS = New Recordset
            'adoSecondaryRS.Open "select distinct a.divcode,a.docno,a.docdt, a.CNTCD ""Count"", a.baleno ""Baleno"",a.grosswt ""GrossWeight"",a.tarewt""TareWeight"",a.netwt ""          Nett         Weight""  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & adoPrimaryRS("docno") & " and a.docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", DB, adOpenStatic, adLockBatchOptimistic
            '''adoSecondaryRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "' union select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no,a.gross_kgs,a.nett_kgs,a.cont_no ,a.product_code,b.wdes,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,rm_wastetype b where a.product_code=b.wcode and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            ADOSECONDARYRS.Open "select a.divcode,a.bo_type,a.bo_no,a.cont_type,a.spack_no as Baleno,a.gross_kgs as Grosswt,a.nett_kgs as Netwt,a.cont_no,a.product_code,b.description,a.pack_year,a.packno_code,a.epack_no,a.pack_type,a.lot_code from IG_RBODT a,ig_rproduct b where a.product_code=b.product_code and a.bo_no='" & adoPrimaryRS("bo_no") & "'", DB, adOpenStatic, adLockOptimistic
            Set grddatagrid.DataSource = ADOSECONDARYRS
            txtfields(2).Text = ADOSECONDARYRS("product_code")
            txtfields(3).Text = ADOSECONDARYRS("Description")
        Call gridalign
        For I = 0 To 4
                grddatagrid.Columns(I).Locked = True
        Next
        grddatagrid.AllowUpdate = True
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        intervalMinutes = -1
        Exit Sub
    End If
intervalMinutes = -1
Call NEWFORM1(BUTTON, GSNO)
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form Wasteissue", vbInformation, head
End Sub
Public Sub bindcontls()
On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.txtfields
   Set oText.DataSource = adoPrimaryRS
  Next
  
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
On Error GoTo ENABLCONTLS_Error

For Each X In Me.txtfields
    X.Locked = False
Next
Frame2.Enabled = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.txtfields
    tb.Locked = True
Next
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
 If Opt = "add" Or Opt = "mod" Then
  
    If ColIndex = 6 Then
            abspos = ADOSECONDARYRS.AbsolutePosition
           Tnetwt = 0
           ADOSECONDARYRS.MoveFirst
           Do While ADOSECONDARYRS.EOF = False
                Tnetwt = Tnetwt + val(grddatagrid.Columns(6).Text)
                txtfields(10).Text = Format(val(Tnetwt), "0.000")
                ADOSECONDARYRS.MoveNext
           Loop
           ADOSECONDARYRS.AbsolutePosition = abspos
    End If
 End If
End Sub

Private Sub grdDataGrid_DblClick()
If Opt = "add" Or Opt = "mod" Then

db1.Execute "update ig_rpacknos set tflg='N' where pack_no = " & grddatagrid.Columns(0) & " and packno_code='" & grddatagrid.Columns(3).Text & "'  and PACK_YEAR='" & grddatagrid.Columns(10).Text & "'"
Tnetwt = Tnetwt - grddatagrid.Columns(1)
txtfields(10).Text = Tnetwt
Call grid1
Call grid2
End If
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub GRDDATAGRID_GotFocus()
If Opt = "add" Then
Select Case grddatagrid.Col
Case 10
grddatagrid.Columns(10).Text = IIf(grddatagrid.Columns(8).Text = "", 0, val(grddatagrid.Columns(8).Text)) + IIf(grddatagrid.Columns(9).Text = "", 0, val(grddatagrid.Columns(9).Text))
End Select
End If
If Opt = "qry" Then
grddatagrid.EditActive = True
End If
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

Select Case grddatagrid.Col
   Case 4
          If (Opt = "add" Or Opt = "mod") And grddatagrid.Columns(4).Text <> "" Then
           If (Opt = "add" Or Opt = "mod") And Len(txtfields(2).Text) > 0 Then
           Set balrs = New Recordset
           'balrs.Open "select packno,grosswt,tarewt,netwt from rm_wastepacking b where b.wastecode='" & txtfields(2).Text & "' and packno='" & grddatagrid.Columns(4).Text & "' and (despatch is null or despatch<>'Y')", DB, adOpenStatic, adLockBatchOptimistic
           balrs.Open "select PACK_NO,PACK_WT,TARE from IG_RPACKNOS b where B.PRODUCT_CODE='" & txtfields(2).Text & "' AND PACK_NO='" & grddatagrid.Columns(4).Text & "'  and PACK_YEAR='" & grddatagrid.Columns(10).Text & "' and isnull(bo_no,'')='' and (INVOICED<>'Y')", DB, adOpenStatic, adLockBatchOptimistic
           If balrs.RecordCount = 0 Then
           grddatagrid.Col = 4
            If grddatagrid.Col = 4 And (grddatagrid.Columns(4).Caption <> "Actual Pack Wgt.") Then
           'grddatagrid.Columns(4).Text = " "
                MsgBox "Bale No Not Available", vbInformation, head
                grddatagrid.SetFocus
                Exit Sub
            End If
           Else
           grddatagrid.Columns(5).Text = balrs("TARE") + balrs("PACK_WT")
           'grddatagrid.Columns(6).Text = balrs("TARE")
           grddatagrid.Columns(6).Text = balrs("PACK_WT")
           grddatagrid.Columns(5).Locked = True
           grddatagrid.Columns(6).Locked = True
           ADOSECONDARYRS.AddNew
           grddatagrid.Col = 4
           grddatagrid.SetFocus
           End If
           End If
          Else
          grddatagrid.Col = 4
          'MsgBox "Enter The Bale No", vbInformation, head
          grddatagrid.SetFocus
          End If
          
    End Select
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If


Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form Wasteissue", vbInformation, head
End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo grddatagrid_KeyPress_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
Select Case grddatagrid.Col
Case 7
    ToNumb grddatagrid, 6, KeyAscii
    Call ToUpCase(grddatagrid, KeyAscii)
End Select
End If
If Opt = "MOD" Then
Select Case grddatagrid.Col
 
Case 8
tonum grddatagrid, 5, KeyAscii
 
 End Select
 End If
 Call ToUpCase(grddatagrid, KeyAscii)

Exit Sub
grddatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)

On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Then
    Select Case grddatagrid.Col
    
            
Case 7
'        On Error Resume Next
    If Opt = "add" Then
        If grddatagrid.Col = 7 Then
                grddatagrid.Columns(7).Text = val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        End If
    End If

Case 1
         If Opt = "add" Then
        If grddatagrid.Col = 1 Then
                grddatagrid.Enabled = True
                
                grddatagrid.Columns(1).Locked = False
                grddatagrid.EditActive = True
        End If
    End If

Case 7
'    On Error Resume Next
    Set Rs = New Recordset
    'Rs.Open "SELECT isnull(SUM(ISNULL(netwt,0)),0) FROM RM_wASTE WHERE GCODE='" & grddatagrid.Columns(4).Text & "' AND WCODE ='" & grddatagrid.Columns(5).Text & "' AND DIVCODE='" & Divcode & "' ", Db, adOpenStatic
    Rs.Open "select sum(a.netwt) -(select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "') from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
    If Not Rs.EOF Then
        If val(grddatagrid.Columns(7).Text) > val(Rs(0)) Then
'            MsgBox "Issue weight cannot be greater than " & rs(0), vbInformation, head
'            grddatagrid.Columns(7).Text = ""
'            grddatagrid.Col = 7
'            grddatagrid.SetFocus
'            Exit Sub
        End If
    End If
    End Select
End If


Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form Wasteissue", vbInformation, head

End Sub


Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

If KSLLIST1.listfield1 = "a.gcode" Then
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
grddatagrid.Col = 4
grddatagrid.SetFocus
Exit Sub
End If
If KSLLIST1.listfield1 = "a.wcode" Then
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
grddatagrid.Col = 5
grddatagrid.SetFocus
Exit Sub
End If
If KSLLIST1.listfield1 = "a.cntcd" Then
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
grddatagrid.Columns(3).Text = ""
grddatagrid.Col = 5
grddatagrid.SetFocus
Exit Sub
End If
Call BUTTON_Click(10)
Call query_mode


Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form Wasteissue", vbInformation, head
End Sub

Private Sub MaskEdBox1_GotFocus()
    MaskEdBox1.BackColor = &HC0FFC0
End Sub

Private Sub MaskEdBox1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus()
On Error GoTo MaskEdBox1_LostFocus_Error

If Opt = "add" And MaskEdBox1 <> "__/__/____" Then
If Not (IsDate(MaskEdBox1.Text)) Then
        MsgBox ("Please Enter valid date"), vbInformation, head
        MaskEdBox1.Text = pdate
        MaskEdBox1.SetFocus
    ElseIf CDate(MaskEdBox1.Text) > pdate Then
            MsgBox ("Document date must be earlier or equal to the Processing date"), vbInformation, head
            MaskEdBox1.Text = "__/__/____"
            MaskEdBox1.SetFocus
            Exit Sub
    End If
    End If
MaskEdBox1.BackColor = &HFFFFFF

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

SSTab1.Visible = True
    Frame3.Visible = False
    Buttonframe.Enabled = True
Select Case KSLLIST1.listfield1
Case "a.cntcd"
     
        grddatagrid.Columns(3).Text = KSLLIST1.code
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        save_count = save_count & "," & "'" & KSLLIST1.code & "'"
        StatusBar1.Panels(2).Text = "Enter Godown Code"
        
Case "a.gcode"
        grddatagrid.Columns(4).Text = KSLLIST1.code
        grddatagrid.Col = 5
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Select Waste Code"
Case "X.PRODUCT_CODE"
        txtfields(2).Text = KSLLIST1.code
        txtfields(3).Text = KSLLIST1.Description
        Set Rs = New Recordset
        'rs.Open "select sum(a.netwt) -isnull((select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "'),0) from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
        Rs.Open "SELECT PRODUCT_CODE,PACK_NO FROM IG_RPACKNOS b where  b.PRODUCT_CODE='" & txtfields(2).Text & "' AND INVOICED<>'Y'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.EOF Then
        txtfields(2).Text = ""
        txtfields(3).Text = ""
        MsgBox "Record Not Found", vbInformation, head
        txtfields(2).SetFocus
        Exit Sub
        End If
        Set balenors = New Recordset
        balenors.Open "select PACK_NO 'Pack No.',PACK_WT 'Pack Weight' from IG_RPACKNOS b where B.PRODUCT_CODE='" & txtfields(2).Text & "' and (INVOICED<>'Y')", DB, adOpenStatic, adLockBatchOptimistic
        Set DataGrid1.DataSource = balenors
        'Call grid1
        Call grid2
        'grddatagrid.COL = 4
        'grddatagrid.SetFocus

Case "cast(a.bo_no as varchar)"
    Call query_mode
End Select
    


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form Wasteissue", vbInformation, head
    
End Sub

Private Sub DTPicker1_CloseUp()
If Not (DTPicker1.value >= yfdate And DTPicker1.value <= pdate) Then
MsgBox "Document date should fall within the processing date", vbInformation, head
Exit Sub
Else
MaskEdBox1.Text = DTPicker1.value
Combo1.SetFocus
End If
End Sub



Public Sub navi1(tol As Object)
    tol(0).Enabled = True 'ADD
    tol(1).Enabled = True 'MOD
    tol(2).Enabled = True 'DEL
    On Error Resume Next
    tol(3).Enabled = True 'LIST
    'tol(4).Enabled = False 'QUERY
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
End Sub

Public Sub gridalign()
'        grdDataGrid.Columns(7).Width = 1140.095
'        grdDataGrid.Columns(6).Width = 3479.811
'        grdDataGrid.Columns(5).Width = 1019.906
'        grdDataGrid.Columns(4).Width = 795.1182
'        grdDataGrid.Columns(3).Width = 1094.74
'        grdDataGrid.Columns(2).Width = 3000.213
'        grdDataGrid.Columns(1).Width = 764.7874
'        grdDataGrid.Columns(0).Width = 1140.095
On Error GoTo GRIDALIGN_Error

        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(1).Visible = False
        grddatagrid.Columns(2).Visible = False
        grddatagrid.Columns(3).Visible = False
        grddatagrid.Columns(4).Visible = True
        grddatagrid.Columns(5).Visible = False
        grddatagrid.Columns(6).Visible = True
        grddatagrid.Columns(7).Visible = False
        grddatagrid.Columns(8).Visible = True
        grddatagrid.Columns(9).Visible = False
        grddatagrid.Columns(10).Visible = True
        grddatagrid.Columns(11).Visible = True
        grddatagrid.Columns(12).Visible = False
        grddatagrid.Columns(13).Visible = False
        grddatagrid.Columns(14).Visible = False
        grddatagrid.Columns(11).Locked = True
        grddatagrid.Columns(4).Width = 1000.7874
        grddatagrid.Columns(4).Caption = "Bale No."
        grddatagrid.Columns(5).Width = 3000.189
        grddatagrid.Columns(5).Caption = "Gross Weight"
        grddatagrid.Columns(6).Width = 2000
        grddatagrid.Columns(6).Caption = "            Net Weight"
        grddatagrid.Columns(4).Alignment = dbgRight
        grddatagrid.Columns(5).Alignment = dbgRight
        grddatagrid.Columns(5).NumberFormat = "#0.000"
        grddatagrid.Columns(6).Alignment = dbgRight
        grddatagrid.Columns(6).NumberFormat = "#0.000"
        grddatagrid.Columns(8).Caption = "Product Code"
        grddatagrid.Columns(8).Width = 2000
        grddatagrid.Columns(10).Width = 800
        grddatagrid.Columns(10).Caption = "Pack Year"
        grddatagrid.Columns(11).Caption = "Pack No. Code"
        

Exit Sub
GRIDALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRIDALIGN of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
        
End Sub

Public Sub GRdlock()
On Error GoTo GRdlock_Error

For I = 0 To grddatagrid.Columns.Count - 1
grddatagrid.Columns(I).Locked = True
Next

Exit Sub
GRdlock_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRdlock of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub




Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.ZOrder 0
    UserFooter1.Load
    Command1.Visible = True
    Command1.ZOrder 0

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

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

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Txtfields_Change(Index As Integer)
intervalMinutes = -1
    Select Case Index
        Case 4
              Set rsmix = New Recordset
              rsmix.Open "Select cntname  from RM_COUNT where divcode='" & Divcode & "' and cntcd='" & Trim(txtfields(4).Text) & "' ", DB, adOpenStatic
              If Not rsmix.EOF Then
                txtfields(5).Text = rsmix(0)
              End If
        Case 10
          
    End Select
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error
intervalMinutes = -1
    txtfields(Index).BackColor = &HC0FFC0
    
Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
    If Index = 10 Then
        tonum txtfields(Index), 8, KeyAscii
    End If
    If Index = 1 Then
        Call ToNumberAssign(txtfields(Index), 6, KeyAscii, 6, 3)
    End If
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error
intervalMinutes = -1
    txtfields(Index).BackColor = &HFFFFFF
    
    txtfields(1).Text = Format(val(txtfields(1).Text), "0.000")

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Then
 Select Case Index
    Case 2
'            If Record_Exists("IG_RPACKDT") = False Then Exit Sub
            LookUp.Clear = True
            LookUp.query = "select distinct c.Product_code""Product Code"",b.Description""Description"",b.WasteType""Waste Type"" from ig_rproduct b,ig_rpackdt c,ig_rpacknos a where a.product_code=c.product_code and b.product_code=c.product_code and a.INVOICED<>'Y' and isnull(bo_no,'')='' and b.WasteType='U' "
            LookUp.Caption = "Waste Packing Listing"
            LookUp.DefCol = "Product Code"
            LookUp.ALIGN = "2000,4000,2000"
            LookUp.Show vbModal
            
            If LookUp.Cancel = False Then
''                SSTab1.Visible = True
''                Frame3.Visible = False
''                Buttonframe.Enabled = True
                txtfields(2).Text = LookUp.Fields(0)
                txtfields(3).Text = LookUp.Fields(1)
                Set Rs = New Recordset
                Rs.Open "SELECT PRODUCT_CODE,PACK_NO,packno_code FROM IG_RPACKNOS b where  b.PRODUCT_CODE='" & txtfields(2).Text & "' AND INVOICED<>'Y' and (isnull(bo_no,'')='')  AND (PACK_WT-isnull(isskgs,0)>0)order by pack_no", DB, adOpenStatic, adLockBatchOptimistic
                If Rs.EOF Then
                    txtfields(2).Text = ""
                    txtfields(3).Text = ""
                    MsgBox "Record Not Found", vbInformation, head
                    txtfields(2).SetFocus
                    Exit Sub
                End If
                
                txtfields(4).SetFocus
                Exit Sub
''                 Set balenors = New Recordset
''                'balenors.Open "select PACK_NO,(PACK_WT-isnull(isskgs,0)) as packwt,PACKNO_CODE from IG_RPACKNOS b where B.PRODUCT_CODE='" & txtFields(2).Text & "' and (INVOICED<>'Y')  order by pack_no", DB, adOpenStatic, adLockBatchOptimistic
''                ' Commented on 14-05-19 by mariyaiya
''                ' balenors.Open "select PACK_NO,(PACK_WT-isnull(isskgs,0)) as packwt,PACKNO_CODE from IG_RPACKNOS b where B.PRODUCT_CODE='" & txtFields(2).Text & "' and (PACK_WT-isnull(isskgs,0)) > 0 AND PACK_TYPE IN ('S','T','R','B') and (isnull(bo_no,'')='' OR (PACK_WT-isnull(isskgs,0)>0)) order by pack_no", DB, adOpenStatic, adLockBatchOptimistic
''
''                balenors.Open "select PACK_NO,(PACK_WT-isnull(isskgs,0)) as packwt,PACKNO_CODE,pack_year from IG_RPACKNOS b where B.PRODUCT_CODE='" & txtfields(2).Text & "' and (INVOICED<>'Y')  and (PACK_WT-isnull(isskgs,0)) > 0 AND  (isnull(bo_no,'')='' AND (PACK_WT-isnull(isskgs,0)>0)) order by pack_no", db, adOpenStatic, adLockBatchOptimistic
''
''                Set DataGrid1.DataSource = balenors
''                grdDataGrid.Enabled = True
''                 grdDataGrid.EditActive = True
''               Call grid1
''               'commentd on 19-06-18 by mariyaiya
''               ' Call grid2
''                If sIssue = "K" Then
''                    lblIssue.Visible = True
''                    txtfields(1).Visible = True
''                    txtfields(1).SetFocus
''                    Call Closinglabel
''                Else
''                    txtfields(4).SetFocus
''                    lblIssue.Visible = False
''                    txtfields(1).Visible = False
''                End If
                      
            Else
                txtfields(2).SetFocus
            End If
            
            ''' Mixno selection
        Case 4
            Set rsc = New Recordset
            rsc.Open "select distinct  cntcd MixNo , cntname Description from RM_Count where divcode='" & Divcode & "' and cntcd='" & Trim(txtfields(4).Text) & "' ", DB, adOpenStatic
            If Not rsc.EOF Then
                txtfields(4).Text = Trim(rsc(0))
                txtfields(5).Text = rsc(1)
                
            Else
                 LookUp.Clear = True
                 LookUp.query = "select distinct  cntcd MixNo , cntname Description from RM_Count where divcode='" & Divcode & "' "
                 LookUp.Caption = "Mix No Count Listing"
                 LookUp.DefCol = "MixNo"
                 LookUp.ALIGN = "2000,2500"
                 LookUp.Show vbModal
                 
                 If LookUp.Cancel = False Then
                     txtfields(4).Text = Trim(LookUp.Fields(0))
                     txtfields(5).Text = LookUp.Fields(1)
                     
                     '''23.02.2022 added
                     SSTab1.Visible = True
                     Frame3.Visible = False
                     Buttonframe.Enabled = True
                     
                     Set balenors = New Recordset
                     balenors.Open "select PACK_NO,(PACK_WT-isnull(isskgs,0)) as packwt,PACKNO_CODE,pack_year from IG_RPACKNOS b where B.PRODUCT_CODE='" & txtfields(2).Text & "' and (INVOICED<>'Y') and isnull(bo_no,'')='' and (PACK_WT-isnull(isskgs,0)) > 0 AND  (isnull(bo_no,'')='' AND (PACK_WT-isnull(isskgs,0)>0)) order by pack_no", DB, adOpenStatic, adLockBatchOptimistic
        
                     Set DataGrid1.DataSource = balenors
                     grddatagrid.Enabled = True
                      grddatagrid.EditActive = True
                    Call grid1
                     If sIssue = "K" Then
                         lblIssue.Visible = True
                         txtfields(1).Visible = True
                         txtfields(1).SetFocus
                         Call Closinglabel
                     Else
                         lblIssue.Visible = False
                         txtfields(1).Visible = False
                     End If
                 Else
                     txtfields(4).Text = ""
                     txtfields(5).Text = ""
                 End If
           End If
    End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form Wasteissue", vbInformation, head
End Sub
Private Sub grid1()
On Error GoTo grid1_Error
    absnew = Rs.AbsolutePosition
    Set Rs = New Recordset
    Rs.Open "Select pack_no 'Pack No.',(pack_wt-isnull(isskgs,0)) 'Pack Wgt',packno_code 'Pack No. Code',pack_year 'Pack Year' From ig_rpacknos Where product_code='" & txtfields(2).Text & "' and  ((pack_wt-isnull(isskgs,0)) >0  and isnull(bo_no,'')='') and ISNULL(invoiced,'N')='N' order by pack_year ,pack_no ", DB, adOpenStatic, adLockBatchOptimistic
    Set DataGrid1.DataSource = Rs
    DataGrid1.Columns(0).Width = 900
    DataGrid1.Columns(1).Width = 1000
    DataGrid1.Columns(2).Width = 700
    DataGrid1.Columns(3).Width = 1000
    On Error Resume Next
    Rs.AbsolutePosition = absnew
Exit Sub
grid1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grid1 of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub grid2()
Dim a As String
Dim B As String
Dim c As String
Dim d As String
a = 0
B = ""
c = ""
d = ""
On Error GoTo grid2_Error
    If sIssue = "K" Then
        
        If iFlg = 0 Then
            Set secrs = New Recordset
            secrs.Open "Select pack_no 'Pack No.',(0) as 'Pack Wgt.',product_code 'Product Code',packno_code 'Pack No. Code' From ig_rpacknos Where product_code='" & txtfields(2).Text & "' and  tflg ='Y' AND 1= 2 order by pack_no", DB, adOpenStatic, adLockBatchOptimistic
        Else
            sPack1 = Mid(SPack, 2, Len(SPack) - 1)
            Set secrs = New Recordset
            secrs.Open "Select pack_no 'Pack No.',(isnull(Tisskgs,0)) as 'Pack Wgt.',product_code 'Product Code',packno_code 'Pack No. Code' From ig_rpacknos Where product_code='" & txtfields(2).Text & "' and  tflg ='Y' AND (ISNULL(tISSKGS,0)) >0 and ISNULL(invoiced,'N')='N' and isnull(bo_no,'')=''  and pack_no in(" & sPack1 & ")  order by pack_no", DB, adOpenStatic, adLockBatchOptimistic
        End If
        Set grddatagrid.DataSource = secrs
        Call Closinglabel
    Else
       packno = "'0'"
       
       ABpos = ADOSECONDARYRS.AbsolutePosition
       
       If ADOSECONDARYRS.RecordCount > 0 Then
        ADOSECONDARYRS.MoveFirst
           
            Do While Not ADOSECONDARYRS.EOF
                packno = packno & ",'" & ADOSECONDARYRS(4) & "'"
                ADOSECONDARYRS.MoveNext
            Loop
       End If
       If ABpos > 0 Then
         ADOSECONDARYRS.AbsolutePosition = ABpos
       End If
                   
        Set secrs = New Recordset
        'secrs.Open "Select pack_no 'Pack No.',(pack_wt-isnull(isskgs,0)) as 'Pack Wgt.',product_code 'Product Code',packno_code 'Pack No. Code' From ig_rpacknos Where product_code='" & txtFields(2).Text & "' and  tflg ='Y' and invoiced='N' order by pack_no", DB, adOpenStatic, adLockBatchOptimistic
       
       ' commented on 15-06-18 by mariyaiya
       ' secrs.Open "Select pack_no 'Pack No.',(pack_wt-isnull(isskgs,0))  as 'Pack Wgt.',product_code 'Product Code',packno_code 'Pack No. Code' From ig_rpacknos Where product_code='" & Txtfields(2).Text & "' and  tflg ='Y' and invoiced='N'order by pack_no", db, adOpenStatic, adLockBatchOptimistic

       ' added on 15-06-18 by mariyaiya
        
        secrs.Open "Select pack_no 'Pack No.',(pack_wt-isnull(isskgs,0))  as 'Pack Wgt.',product_code 'Product Code',packno_code 'Pack No. Code',pack_year From ig_rpacknos Where product_code='" & txtfields(2).Text & "' and  tflg ='Y' and invoiced='N' and pack_no='" & packvalue & "' and (pack_wt-isnull(isskgs,0)) >0 and pack_year='" & DataGrid1.Columns(3).Text & "' and isnull(bo_no,'')='' and pack_no not in (" & packno & ") order by pack_no", DB, adOpenStatic, adLockBatchOptimistic
      '  Set grddatagrid.DataSource = secrs
      '  grddatagrid.Columns(0).Text = secrs("Pack No.")
        absposition = secrs.AbsolutePosition
        Do While secrs.EOF = False
         ADOSECONDARYRS.AddNew
          grddatagrid.Columns(4).Caption = "Pack No"
           grddatagrid.Columns(4).Text = secrs("Pack No.")
           grddatagrid.Columns(6).Text = secrs("Pack Wgt.")
           grddatagrid.Columns(8).Text = secrs("Product Code")
           grddatagrid.Columns(10).Text = secrs("pack_year")
           grddatagrid.Columns(11).Text = secrs("Pack No. Code")
           grddatagrid.Columns(0).Text = Divcode
           grddatagrid.Columns(0).Visible = False
         ' Set grddatagrid.DataSource = secrs
        
           grddatagrid.AllowAddNew = True
           secrs.MoveNext
        Loop
        If secrs.RecordCount > 0 Then
        secrs.AbsolutePosition = absposition
        End If
    End If

Exit Sub
grid2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grid2 of Form Wasteissue", vbInformation, head
    
End Sub

Public Sub dc_gatepass()
Dim F_Date As String

     
'    Call WasteIssueVReport(CStr(F_Date), CStr(F_Date), CStr(Trim(Right(Combo1.Text, 2))))
    
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim s As String

Dim Cnn As Connection

On Error GoTo dc_gatepass_Error

On Error GoTo dc_gatepass_Error

     F_Date = MaskEdBox1.Text
     
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Variety = ""
xx = ""
yy = ""
ISSTYPE = iss
Set rs1 = New Recordset
''RS1.Open "select distinct docdt,docno from rm_wissue where divcode='" & Divcode & "' and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' order by docdt", DB, adOpenStatic
If ISSTYPE = "A" Then
    rs1.Open "select distinct date""Docdt"",ISSFLG,ISSUE_DESC from ig_rbohd A,RM_ISSUETYPE B where A.ISSFLG=B.ISSUE_CODE AND divcode='" & Divcode & "' and date between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' order by ISSFLG,date", DB, adOpenStatic
Else
    strSQL = "select distinct date""Docdt"" from ig_rbohd A,RM_ISSUETYPE B where A.ISSFLG=B.ISSUE_CODE AND divcode='" & Divcode & "' and Bo_no=" & txtfields(0).Text & " order by date"
    rs1.Open strSQL, DB, adOpenStatic
End If
If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

isstot = 0
grnttot = 0


Set rptv = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\wiss.TXT" For Output As #a
 Open KALFOLDERDATA & "\wiss.TXT" For Output As #a
pg1 = 1
co = 0
Call PartyHeader(CStr(pg1), co, CStr(U), CStr(v), CStr(isstype1))

str1 = ""
tot4 = 0
gissflg = ""
g = 0
rs1.MoveFirst

Do While Not rs1.EOF

    If ISSTYPE = "A" Then
        If gissflg <> rs1("issue_desc") Then
            If gissflg <> "" And g >= 1 Then
                Print #a,
                Print #a, Space(5) & Padl("**IssueTypeWise Total**", 34, " ") & Space(2) & Padr("", 30, " ") & Space(2) & Padl(INF(isstot, 3), 12, " ")
                Print #a,
                co = co + 3
                isstot = 0
                g = 0
            End If
            If co >= pagelen - 3 Then
                Print #a, Space(5) + String(80, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call PartyHeader(CStr(pg1), co, CStr(U), CStr(v), CStr(isstype1))
            End If
            Print #a,
            Print #a, Space(5) & Chr(27) & "E" & rs1("issue_desc") & Chr(27) & "F"
            co = co + 2
            gissflg = rs1("ISSUE_DESC")
            xx = ""
        End If

    End If

    Set Rs = New Recordset
    If ISSTYPE = "A" Then
        Rs.Open "select distinct c.date""Docdt"",c.bo_no""Docno"",description as Wdes,sum(nett_kgs) as netwt from ig_rbodt a,ig_rproduct b,ig_rbohd c where C.ISSFLG='" & rs1("ISSFLG") & "' AND a.bo_type=c.bo_type and a.bo_no=c.bo_no and " & _
             "a.divcode=c.divcode and a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & Divcode & "' and c.date between '" & Format(rs1("docdt"), "yyyy-mm-dd") & "' and '" & Format(rs1("docdt"), "yyyy-mm-dd") & "' Group by c.date,c.bo_no,description order by c.date,c.bo_no,description", DB, adOpenStatic
    Else
        strSQL = "select distinct c.date""Docdt"",c.bo_no""Docno"",description as Wdes,sum(nett_kgs) as netwt from ig_rbodt a,ig_rproduct b,ig_rbohd c where a.bo_type=c.bo_type and a.bo_no=c.bo_no and " & _
             "a.divcode=c.divcode and a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & Divcode & "' and c.Bo_no=" & txtfields(0).Text & " Group by c.date,c.bo_no,description order by c.date,c.bo_no,description"
             Rs.Open strSQL, DB, adOpenStatic
    End If

    Do While Not Rs.EOF
        If xx = Rs("docdt") And yy = Rs("docno") Then
            Print #a, Space(41) & Padr(Rs("wdes"), 30, " ") & Space(2) & Padl(INF(Rs("netwt"), 3), 12, " ")
            xx = Format(Rs("docdt"), "dd/mm/yyyy")
            yy = Rs("docno")
            Variety = Rs("wdes")
        Else
            If xx = Rs("docdt") Then
                Print #a, Space(5) & Padr("", 10, " ") & Space(2) & Padl(CInt(Right(Rs("docno"), 6)), 10, " ") & Space(2) & Padr("", 10, " ") & Space(2) & Padr(Rs("wdes"), 30, " ") & Space(2) & Padl(INF(Rs("netwt"), 3), 12, " ")
            Else
                Print #a, Space(5) & Padr(Format(Rs("docdt"), "dd/mm/yy"), 10, " ") & Space(2) & Padl(CInt(Right(Rs("docno"), 6)), 10, " ") & Space(2) & Padr("", 10, " ") & Space(2) & Padr(Rs("wdes"), 30, " ") & Space(2) & Padl(INF(Rs("netwt"), 3), 12, " ")
            End If
            xx = Format(Rs("docdt"), "dd/mm/yyyy")
            yy = Rs("docno")
            Variety = Rs("wdes")
        End If
        co = co + 1
        If co >= pagelen Then
            Print #a, Space(5) + String(80, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call PartyHeader(CStr(pg1), co, CStr(U), CStr(v), CStr(isstype1))
        End If
        isstot = isstot + Round(Rs("netwt"), 3)
        grnttot = grnttot + Round(Rs("netwt"), 3)
        Rs.MoveNext
        If Not Rs.EOF Then
            g = g + 1
        End If
    Loop
    rs1.MoveNext
Loop
If co >= pagelen - 5 Then
    Print #a, Space(5) + String(80, "-")
    Print #a, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call PartyHeader(CStr(pg1), co, CStr(U), CStr(v), CStr(isstype1))
End If
If g >= 1 And ISSTYPE = "A" Then
    Print #a,
    Print #a, Space(5) & Padl("**IssueTypeWise Total**", 34, " ") & Space(2) & Padr("", 30, " ") & Space(2) & Padl(INF(isstot, 3), 12, " ")
    isstot = 0
    g = 0
End If
Print #a, Space(5) + String(80, "-")
Print #a, Space(5) & Chr(27) & "E" & Padl("** Grand Total **", 34, " ") & Space(2) & Padr("", 30, " ") & Space(2) & Padl(INF(grnttot, 3), 12, " ") & Chr(27) & "F"
Print #a, Space(5) + String(80, "-")
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "C:\wiss.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type wiss.txt>prn"
'Close #a
'RPTV.txtfile = "C:\wiss.txt"
'RPTV.Batfile = "C:\wiss.bat"
Call KALBATPROCESS("wiss")



        Screen.MousePointer = 0


Exit Sub
dc_gatepass_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure dc_gatepass of Form Wasteissue", vbInformation, head
End Sub

Public Sub PartyHeader(pg1 As Integer, co As Integer, U As String, v As String, iss As String)
On Error GoTo PartyHeader_Error

          Print #a,
          Print #a, Chr(18)
          Print #a, Space(3) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + Chr(27) + "E" + "Issue List " + Chr(27) + "F" + "from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(18) & Padl(Format(CStr(Date), "dd/mm/yy") & Space(2) & "Pg.: " & Padl(CStr(pg1), 3, " "), 18, " ")
          If iss <> "A" Then
            Set Rst = New Recordset
            Rst.Open "select issue_desc from rm_issuetype where issue_code='" & Mid(Combo1.Text, 1, 2) & "'", DB, adOpenStatic
            issdesc = ""
            If Rst.RecordCount > 0 Then
                issdesc = Rst(0)
            End If
            Print #a, Space(3) + Chr(27) + "E" + CENTRE("Option : " & issdesc, 80, " ") + Chr(27) + "F"
          End If
          Print #a, Space(5) + String(80, "-")
          If iss = "A" Then
            Print #a, Space(5) & "IssueType"
          End If
        ''Print #a, Space(5) + "Docno.       Doc.Date               Variety                          Issued Kgs."
          Print #a, Space(5) + "Doc.Date         Docno.             Variety                          Issued Kgs."
          Print #a, Space(5) + String(80, "-")
          co = 9

Exit Sub
PartyHeader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PartyHeader of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub hdlist(pg1 As Integer)
On Error GoTo hdlist_Error

    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
  '  rs.Open "select distinct th.DOCNO,th.DOCDT,s.slname,refno from  IN_TRNHEAD th, FA_SLMAS s,  IN_TRNTAIL t, IN_TC tc where th.divcode = '" & Divcode & "' and th.tc = tc.tc and tc.tctype =1  and th.divcode = t.divcode and th.tc = t.tc and th.docno = t.docno  and th.slcode = s.slcode  and th.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and th.docdt=t.docdt and  t.pordno is  null And th.docno = " & Trim(Val(txtFields(2).Text)) & "  Order by TH.DOCNO ", db, adOpenStatic, adLockReadOnly
  Rs.Open "select slname,add3 from fa_slmas where slcode='" & txtfields(8).Text & "'", DB
    Print #a, Space(3) + Padr("DC for Issue List", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    Print #a, Space(3) + "Doc No         :" + Padr(txtfields(0).Text, 10, " ") + Space(45) + "Date :" + Padr(Format(MaskEdBox1.Text, "dd/mm/yy"), 10, " ")
    If Rs.RecordCount > 0 Then
    Print #a, Space(3) + "Supplier       :" + Padr(Rs("slname"), 40, " ") + Space(12) + "Remarks :" + Padr(" ", 10, " ")
    
     Print #a, Space(3) + "                           " + Padr(Rs("add3"), 40, " ") + Space(12)
     End If
    'Print #a, Space(3) + "Vehile No.     :" + Padr(txtFields(3).Text, 40, " ")
    Print #a, Space(3) + String(85, "-")
    Print #a, Space(3) + "S.No        VarityDescription       Quntity          Kgs        values    Remarks"
    Print #a, Space(3) + String(85, "-")

Exit Sub
hdlist_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure hdlist of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub pblist()
On Error GoTo pblist_Error

    If lno >= 58 Then
    Print #a, Space(3) + String(85, "-")
    lno = 7
    pgn = pgn + 1
    Print #a, Chr(12)
    pg1 = pg1 + 1
    Call gatepass(CInt(pg1))
    End If

Exit Sub
pblist_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pblist of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub gatepass(pg1 As Integer)
On Error GoTo gatepass_Error

    Print #a,
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
    Print #a,
    Set Rs = New Recordset
    Rs.Open "select distinct slname,add3,a.isstype from rm_issb a,rm_lot c,fa_slmas b where a.lotno=c.lotno and a.lotdt=c.lotdt and  c.supcd=b.slcode and c.divcode = '" & Divcode & "'   AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  docno = " & Trim(val(txtfields(0).Text)) & "  Order by slname ", DB, adOpenStatic
    Print #a, Space(3) + Padr("DC for Gatepass List ", 50, " ") + Space(15) + Format(pdate, "dd-mm-yy") + Space(5); "Pg. :"; pg1
    Print #a,
    
    Print #a, Space(3) + "        Please Allow The Following Materials Through         "
    
    If Rs(2) = "T3" Then
        g = "UNIT-III"
    ElseIf Rs(2) = "T2" Then
        g = "UNIT-II"
    ElseIf Rs(2) = "S" Then
         g = "SALES"
    End If
    Print #a, Space(14) + Padl(UCase(txtfields(7).Text), 10, " ") + Space(1) + "For transfer to " + Space(5) + Padr(g, 10, " ")
    Print #a, Space(3) + "                                     " + Padr(Rs("add3"), 40, " ") + Space(12)
    Print #a,
    Print #a, Space(3) + "S.No                  Description             Quantity             Kgs"
    Print #a, Space(3) + String(85, "-")

Exit Sub
gatepass_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure gatepass of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub CottRecnHeader(pg1 As Integer, co As Integer, LDT As String)
On Error GoTo CottRecnHeader_Error

    Print #z, Chr(18)
    Print #z, Space(2) + Chr(27) + "E" + CENTRE(divname, 60, " ") + Chr(27) + "F"
    Print #z,
    SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
    Print #z, Space(5) & Chr(27) + "E" + "Issue Wieght Listing Statement " + Chr(27) + "F" + Space(6) + "Dt:" + CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
    'Print #z, Space(5) & Chr(27) + "E" + "Lot No./Dt. : " & LDT + Chr(27) + "F"
    Print #z, Space(5) & String(60, "-")
    Print #z, Space(5) & "   Lot No.             LotDt"
    Print #z, Space(5) & "  Bale No.           Issue Kgs.               Acc.Issue Kgs."
    Print #z, Space(5) & String(60, "-")
    co = co + 9

Exit Sub
CottRecnHeader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CottRecnHeader of Form Wasteissue", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Closinglabel()
    Set Rs = New Recordset
    Rs.Open "select sum(isnull(Pack_wt,0)) - sum(isnull(isskgs,0)), sum(isnull(Pack_wt,0)) , sum(isnull(isskgs,0)) from ig_rpacknos  WHERE PRODUCT_CODE='" & Trim(txtfields(2).Text) & "' and ISNULL(invoiced,'N')='N' and isnull(bo_no,'')=''  Group BY Product_Code", DB, adOpenStatic
    If Rs.EOF = False Then
        lblStatus.ForeColor = vbBlue
        lblStatus.Caption = "Closing Weight : " & Format(Rs(0), "0.000")
    Else
        lblStatus.Caption = ""
    End If

End Sub
