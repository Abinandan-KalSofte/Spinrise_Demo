VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form godtrans 
   Caption         =   "Godown Transfer"
   ClientHeight    =   8145
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8145
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport3 
      Left            =   6600
      Top             =   3720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   520
      Index           =   13
      Left            =   5950
      Picture         =   "godtrans.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   49
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   585
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4380
      Left            =   9315
      TabIndex        =   47
      Top             =   1230
      Visible         =   0   'False
      Width           =   4080
      _extentx        =   7197
      _extenty        =   7726
   End
   Begin VB.Frame Frame5 
      Height          =   525
      Left            =   4560
      TabIndex        =   43
      Top             =   585
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command5 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   345
         Left            =   4140
         TabIndex        =   48
         Top             =   120
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   255
         Left            =   2970
         TabIndex        =   45
         Top             =   180
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   225
         Left            =   1755
         TabIndex        =   44
         Top             =   210
         Width           =   1260
      End
      Begin VB.Label Label15 
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
         Height          =   225
         Left            =   180
         TabIndex        =   46
         Top             =   180
         Width           =   1425
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5220
      Left            =   525
      TabIndex        =   27
      Top             =   1275
      Width           =   9465
      _ExtentX        =   16695
      _ExtentY        =   9208
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ForeColor       =   -2147483630
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "godtrans.frx":0442
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         ClipControls    =   0   'False
         Height          =   1950
         Left            =   165
         TabIndex        =   28
         Top             =   90
         Width           =   9210
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   300
            Left            =   4125
            TabIndex        =   13
            Top             =   270
            Width           =   1320
            _ExtentX        =   2328
            _ExtentY        =   529
            _Version        =   393216
            Format          =   157483009
            CurrentDate     =   38714
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   2490
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   1075
            Width           =   4860
         End
         Begin VB.TextBox txtFields 
            DataField       =   "fgod"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   1800
            MaxLength       =   3
            TabIndex        =   14
            Top             =   665
            Width           =   645
         End
         Begin VB.TextBox txtFields 
            DataField       =   "DOCNO"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   0
            Left            =   1800
            TabIndex        =   12
            Top             =   255
            Width           =   675
         End
         Begin VB.TextBox txtFields 
            DataField       =   "remarks"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   1800
            MaxLength       =   29
            TabIndex        =   18
            Top             =   1485
            Width           =   5550
         End
         Begin VB.TextBox txtFields 
            DataField       =   "tgod"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   1800
            MaxLength       =   3
            TabIndex        =   16
            Top             =   1095
            Width           =   645
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            DataField       =   "slname"
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   2490
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   665
            Width           =   4860
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "docdt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   330
            Left            =   4125
            TabIndex        =   29
            Top             =   255
            Width           =   1170
            _ExtentX        =   2064
            _ExtentY        =   582
            _Version        =   393216
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Document No."
            Height          =   195
            Index           =   2
            Left            =   180
            TabIndex        =   34
            Top             =   330
            Width           =   1035
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Doc.date"
            Height          =   195
            Index           =   3
            Left            =   3195
            TabIndex        =   33
            Top             =   323
            Width           =   660
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "From Godown"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   7
            Left            =   180
            TabIndex        =   32
            Top             =   733
            Width           =   990
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "To Godown"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   180
            TabIndex        =   31
            Top             =   1143
            Width           =   840
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Remarks"
            Height          =   195
            Index           =   1
            Left            =   180
            TabIndex        =   30
            Top             =   1553
            Width           =   630
         End
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   2850
         Left            =   150
         TabIndex        =   19
         Top             =   2205
         Width           =   9195
         _ExtentX        =   16219
         _ExtentY        =   5027
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   2
         RowHeight       =   15
         TabAcrossSplits =   -1  'True
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
         Caption         =   "Lotwise Transfer  Details"
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
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -75
      TabIndex        =   20
      Top             =   -150
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":045E
         Height          =   550
         Index           =   4
         Left            =   1650
         Picture         =   "godtrans.frx":0768
         Style           =   1  'Graphical
         TabIndex        =   42
         ToolTipText     =   "Find(Ctrl+F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   5415
         Picture         =   "godtrans.frx":0AFD
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Godown Transfer Print (Ctrl P)"
         Top             =   135
         Width           =   615
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   8370
         Picture         =   "godtrans.frx":0F3F
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":12D6
         Height          =   550
         Index           =   6
         Left            =   2730
         Picture         =   "godtrans.frx":1720
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":1A6D
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "godtrans.frx":1D77
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":210A
         Height          =   550
         Index           =   5
         Left            =   2205
         Picture         =   "godtrans.frx":2554
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":28B9
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
         Left            =   1127
         Picture         =   "godtrans.frx":2BC3
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":2F5F
         Height          =   550
         Index           =   1
         Left            =   586
         Picture         =   "godtrans.frx":3269
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":35E3
         Height          =   550
         Index           =   7
         Left            =   3255
         Picture         =   "godtrans.frx":3A2D
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":3D7D
         Height          =   550
         Index           =   11
         Left            =   6620
         Picture         =   "godtrans.frx":41C7
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   135
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":455C
         Height          =   550
         Index           =   9
         Left            =   4335
         Picture         =   "godtrans.frx":4866
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":4C08
         Height          =   550
         Index           =   10
         Left            =   4875
         Picture         =   "godtrans.frx":4F12
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "godtrans.frx":528E
         Height          =   550
         Index           =   8
         Left            =   3795
         Picture         =   "godtrans.frx":56D8
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   135
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
         Left            =   9240
         TabIndex        =   26
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
         Left            =   7680
         TabIndex        =   25
         Top             =   270
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar statusbar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   35
      Top             =   7845
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   2276
            MinWidth        =   2276
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12965
            MinWidth        =   12965
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   2822
            MinWidth        =   2822
            TextSave        =   "07/03/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "02:58 PM"
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
      Height          =   5280
      Left            =   495
      TabIndex        =   38
      Top             =   1335
      Visible         =   0   'False
      Width           =   9540
      Begin VB.CommandButton Command4 
         Caption         =   "&CANCEL"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   4890
         TabIndex        =   24
         Top             =   4620
         Width           =   1335
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   3360
         TabIndex        =   40
         Top             =   4605
         Width           =   1245
      End
      Begin listacx.codelist SCODLIST1 
         Height          =   4230
         Left            =   75
         TabIndex        =   39
         Top             =   375
         Width           =   9510
         _ExtentX        =   16775
         _ExtentY        =   7461
         caption         =   ""
      End
   End
   Begin VB.Frame Frame2 
      ClipControls    =   0   'False
      Height          =   5340
      Left            =   540
      TabIndex        =   36
      Top             =   1260
      Visible         =   0   'False
      Width           =   8865
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3315
         Left            =   570
         TabIndex        =   21
         Top             =   765
         Width           =   8025
         _ExtentX        =   14155
         _ExtentY        =   5847
         ForeColor       =   -2147483635
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         DownPicture     =   "godtrans.frx":5A3A
         Height          =   615
         Left            =   4725
         Picture         =   "godtrans.frx":5E1C
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   4215
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         DownPicture     =   "godtrans.frx":61EF
         Height          =   615
         Left            =   2940
         Picture         =   "godtrans.frx":65D5
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4215
         Width           =   1185
      End
      Begin VB.Label lblist 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Label1"
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
         Left            =   60
         TabIndex        =   37
         Top             =   120
         Width           =   8745
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Godown Transfer"
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
      Left            =   480
      TabIndex        =   41
      Top             =   720
      Width           =   2265
   End
End
Attribute VB_Name = "godtrans"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim save_count As String
Dim Opt As String
Dim st, st1, st2 As String
Dim ITARY() As String
Dim cou As Integer
Dim cou1, c, pg As Integer
Dim co As Integer
Dim a As Integer
Dim cont As Integer
Dim f As Integer
Dim rep As Report.ReportView
Dim FLG As String
Dim Rs As Recordset
Dim rss As Recordset
Dim SR As String
Dim pr As String
Dim dr As String
Dim G As String
Dim t7 As Double
Dim t6 As Double
Dim t0 As Integer
Dim t1 As String
Dim t2 As String
Dim t3 As String
Dim t4 As Integer
Dim t5 As Integer
Dim t8 As String
Dim Date1 As String
Dim Date2 As String
Dim date3 As String
Dim dt As String
Dim errflg As String
Dim Last_docno As Integer
Dim New1DocNo As Integer
Dim Str As String

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'On Error Resume Next
intervalMinutes = -1
On Error GoTo adoPrimaryRS_MoveComplete_Error
If Opt <> "add" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
'    StatusBar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs("docno"))
On Error Resume Next
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    MaskEdBox1.Text = adoPrimaryRS("docdt")
    DTPicker1.value = adoPrimaryRS("docdt")
    txtfields(0).Text = adoPrimaryRS("docno")
    Set rsa = New Recordset
    rsa.Open "select gname from rm_god where gcode='" & adoPrimaryRS("fgod") & "' and DivCode = '" & Divcode & "'", DB
    If rsa.RecordCount > 0 Then
        Text1.Text = rsa(0)
    Else
        Text1.Text = ""
    End If
    Set rsa = New Recordset
    rsa.Open "select gname from rm_god where gcode='" & adoPrimaryRS("tgod") & "' and DivCode = '" & Divcode & "'", DB
    If rsa.RecordCount > 0 Then
        Text2.Text = rsa(0)
    End If
   
End If

Exit Sub
Err:
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form godtrans", vbInformation, head
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
'addition
If ToValidFinYear(Divcode) = False Then Exit Sub

   If Record_Exists("rm_god", "Please Define Godown Type") = False Then Exit Sub
   
   
    Set rsg = New Recordset
    rsg.Open "SELECT COUNT(*) FROM RM_GOD WHERE DIVCODE='" & Divcode & "'", DB, adOpenStatic
   
    If rsg(0) < 2 Then
        MsgBox "No Multiple Godown.Transfer is Not Possible", vbInformation, head
        Exit Sub
    End If
   
   
    Opt = "add"
    desc.Caption = "Addition"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, fgod,tgod,remarks,lotno,lotdt from rm_godtrans a where 1=2 order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.AddNew
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales as ""Closing Bales"",netwt as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
    adoSecondaryRS.AddNew
    'Call GRIDALIGN
    grddatagrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Visible = False
    grddatagrid.Columns(2).Width = 840.189
    grddatagrid.Columns(2).Caption = "Lot No."
    grddatagrid.Columns(3).Width = 1100                 '929.7639
    grddatagrid.Columns(5).Width = 900                      '1230.236
    grddatagrid.Columns(5).Caption = "   Closing      Bales"
    grddatagrid.Columns(5).Alignment = dbgRight
    grddatagrid.Columns(6).Width = 1200                     '1335.118
    grddatagrid.Columns(6).Caption = "        Closing         Weight"
    grddatagrid.Columns(6).NumberFormat = "###0.000"
    grddatagrid.Columns(7).Width = 1200                     '1154.835
    grddatagrid.Columns(7).Caption = "Lot Type"
    grddatagrid.Columns(7).Alignment = dbgLeft
    grddatagrid.Columns(8).Caption = "Lot Year"
    grddatagrid.Columns(6).Alignment = dbgRight

    Call ENABLCONTLS
    StatusBar1.Panels(2).Text = "Addition"
    txtfields(0).Locked = True
    MaskEdBox1.Enabled = True
    MaskEdBox1.Text = pdate
    Call adddelmod(BUTTON)
    DTPicker1.MinDate = pdate
    Call bindcontls
    Text1.Text = ""
    Text2.Text = ""
    txtfields(1).SetFocus
Case 1, 2, 4
        'Modification
   
        Screen.MousePointer = 0
        If Index = 1 Then
            If ToValidFinYear(Divcode) = False Then Exit Sub
            Opt = "mod"
            desc.Caption = "Modification"
        Else
        If ToValidFinYear(Divcode) = False Then Exit Sub
            Opt = "del"
            desc.Caption = "Deletion"
        End If
        LookUp.Clear = True
        LookUp.query = "select DISTINCT docno 'Doc No',docdt 'Doc Date' from rm_godtrans WHERE DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' "
        LookUp.Caption = "Godown Transfer Listing"
        LookUp.DefCol = "DocNo"
        LookUp.ALIGN = "2000,3000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, fgod,tgod,remarks,lotno,lotdt from rm_godtrans a where a.divcode='" & Divcode & "'  and docno='" & LookUp.Fields(0) & "' and docdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
            If adoPrimaryRS.RecordCount > 0 Then
                adoPrimaryRS.MoveFirst
                pr = adoPrimaryRS("docno")
                dr = adoPrimaryRS("docdt")
                Set adoSecondaryRS = New Recordset
                adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'   and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = adoSecondaryRS
                Call gridalign
                Call disablcontls
                Call bindcontls
    
                Call GRdlock
                txtfields(2).Locked = False
                
            Else
                Call Norecfound(BUTTON)
                MsgBox "No Records Found", vbInformation, head
                Set grddatagrid.DataSource = Nothing
               
                txtfields(0).Text = ""
                MaskEdBox1.Text = "__/__/____"
            End If
        Else
            Call BUTTON_Click(10)
        End If
''        SSTab1.Visible = False
''
''        Ksldesc1.conn = connectstring
''        Ksldesc1.table = "rm_godtrans WHERE DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'"
''        Ksldesc1.listfield1 = "cast(docno as varchar)"
''        Ksldesc1.listfield2 = "convert(varchar,docdt,103) "
''        SSTab1.Enabled = True
''
''        grddatagrid.AllowUpdate = False
''        grddatagrid.Enabled = False
''        Frame2.Visible = True
''        Frame2.ZOrder
        Call adddelmod(BUTTON)
''        Ksldesc1.SetFocus
''        Screen.MousePointer = 0
''        Frame2.Visible = True
        txtfields(2).Locked = False
        txtfields(3).Locked = False
   

Case 2, 4
        'Deletion
        Screen.MousePointer = 11
        If Index = 2 Then
        If ToValidFinYear(Divcode) = False Then Exit Sub
            Opt = "del"
            desc.Caption = "Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
        End If
        SSTab1.Visible = False
       
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "rm_godtrans WHERE DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'"
        Ksldesc1.listfield1 = "cast(docno as varchar)"
        Ksldesc1.listfield2 = "convert(varchar,docdt,103) "
        SSTab1.Enabled = True
        
        
        grddatagrid.Enabled = False
        Frame2.Visible = True
        Frame2.ZOrder
        Call adddelmod(BUTTON)
        Ksldesc1.SetFocus
        Screen.MousePointer = 0
        Frame2.Visible = True
        If Opt = "fnd" Then
            BUTTON(9).Enabled = False
        End If
Case 12 'Printing
    Frame5.Visible = True
    Frame5.ZOrder 0
    Option5.value = True
    Option5.SetFocus
    Buttonframe.Enabled = False
        
Case 5
        'first
  
    
    If Record_Exists("rm_godtrans where divcode='" & Divcode & "'") = False Then Exit Sub
    desc.Caption = "Query"
    On Error GoTo GoNextError
    
       If adoPrimaryRS.BOF = False Then
            adoPrimaryRS.MoveFirst
       
        Set adoSecondaryRS = New Recordset
        If adoPrimaryRS.EOF = False Then
        adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoSecondaryRS
        End If

        Call gridalign
        Call bindcontls
        End If
    Exit Sub
    
GoFirstError:
    MsgBox Err.Description, vbInformation, head
Case 6
        'next
    If Record_Exists("rm_godtrans where divcode='" & Divcode & "'") = False Then Exit Sub
desc.Caption = "Query"
'On Error GoTo GoNextError

    If Not adoPrimaryRS.EOF Then
        Call bindcontls
        adoPrimaryRS.MoveNext
        
        Set adoSecondaryRS = New Recordset
        If adoPrimaryRS.EOF = False Then
            adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
        End If
        Call gridalign

        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        adoPrimaryRS.MoveLast
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        Beep
        Set adoSecondaryRS = New Recordset
        If adoPrimaryRS.EOF = False Then
            adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
        End If
        Call gridalign
    End If
    
    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        StatusBar1.Panels(2).Text = "Last Record"
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        Beep
        Set adoSecondaryRS = New Recordset
        If adoPrimaryRS.EOF = False Then
            adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
        End If
        Call gridalign
    Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
    End If
        Exit Sub
GoNextError:
        MsgBox Err.Description, vbInformation, head
        
Case 7
        'Previous
    If Record_Exists("rm_godtrans where divcode='" & Divcode & "'") = False Then Exit Sub
        desc.Caption = "Query"
 '   On Error GoTo GoPrevError
    If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        
        If adoPrimaryRS.BOF Then
            StatusBar1.Panels(2).Text = "First Record"
        End If
            
'        Set adoSecondaryRS = New Recordset
'        If adoPrimaryRS.EOF = False Then
'            adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", db, adOpenStatic, adLockBatchOptimistic
'            Set grddatagrid.DataSource = adoSecondaryRS
'        End If

            Call bindcontls
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
    
        Set adoSecondaryRS = New Recordset
        If adoPrimaryRS.EOF = False Then
            adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
        End If
        Call gridalign
    
    End If
        'show the current record
'        Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        StatusBar1.Panels(2).Text = "First Record"
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    
        Set adoSecondaryRS = New Recordset
        If adoPrimaryRS.EOF = False Then
            adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
        End If

        Call gridalign
    Exit Sub

GoPrevError:
        MsgBox Err.Description, vbInformation, head

Case 8
        'last
    If Record_Exists("rm_godtrans where divcode='" & Divcode & "'") = False Then Exit Sub
    desc.Caption = "Query"
  '  On Error GoTo GoNextError
    
       If adoPrimaryRS.EOF = False Then
        adoPrimaryRS.MoveLast
       
        Set adoSecondaryRS = New Recordset
        If adoPrimaryRS.EOF = False Then
            adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
        End If

        Call gridalign
        Call bindcontls
        End If
        
GoLastError:
    If Err.Number <> 0 Then
        MsgBox Err.Description, vbInformation, head
    End If

Case 9

If Opt = "add" Then
    tmp = Opt
    
    If txtfields(1).Text = "" Then
        MsgBox "Please enter a valid To Godown Number", vbCritical, head
        txtfields(1).SetFocus
        Exit Sub
    End If
    If txtfields(2).Text = "" Then
        MsgBox "Please enter a valid To Godown Number", vbCritical, head
        txtfields(2).SetFocus
        Exit Sub
    End If
    If grddatagrid.Columns(0) = "" Then
        MsgBox "Please enter a valid Lot Number", vbCritical, head
        grddatagrid.Col = 0
        grddatagrid.SetFocus
        Exit Sub
    End If
'    If adoSecondaryRS.RecordCount = 0 Then
'        MsgBox "Select the lot for Transfer ", vbCritical, head
'        grddatagrid.Col = 2
'        grddatagrid.SetFocus
'        Exit Sub
'    End If
    'If adoSecondaryRS.EOF = False Then adoSecondaryRS.MoveFirst
    Opt = tmp
    Set rsa = New Recordset
    rsa.Open "select isnull(max(docno),0) from rm_godtrans where divcode='" & Divcode & "' and docdt>='" & Format(yfdate, "yyyy-mm-dd") & "'", DB
        
    If rsa.RecordCount > 0 Then
        txtfields(0).Text = rsa(0) + 1
    End If

    
    
    Set rsa = New Recordset
    rsa.Open "select * from rm_godtrans where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    rsa.AddNew
    rsa("divcode") = Divcode
    rsa("docno") = txtfields(0).Text
    rsa("docdt") = MaskEdBox1.Text
    rsa("lotno") = grddatagrid.Columns(2).Text
    rsa("lotdt") = grddatagrid.Columns(3).Text
    rsa("fgod") = txtfields(1).Text
    rsa("tgod") = txtfields(2).Text
    rsa("bales") = grddatagrid.Columns(5).Text
    rsa("netwt") = grddatagrid.Columns(6).Text
    rsa("remarks") = txtfields(3).Text
    rsa("usrid") = usrid
    rsa("entdt") = pdate
    rsa.UpdateBatch adAffectAllChapters
    
    Set TrnLog = New Recordset
    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    TrnLog.AddNew
        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
        TrnLog("moduleNo") = ModuleNo
        TrnLog("Trans_Name") = "Godown Transfer"
        TrnLog("Trans_Mod") = "Add"
        TrnLog("Trans_IPADD") = LocalIP
        TrnLog("Trans_Host") = LocalHost
        TrnLog("Trans_UserId") = usrid
        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
        TrnLog("docno") = val(txtfields(0).Text)
        TrnLog("docdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                 '   TrnLog("lotno") = rss("pack_year").value
        TrnLog("lotno") = val(grddatagrid.Columns(2).Text)
        TrnLog("lotdt") = grddatagrid.Columns(3).Text
        TrnLog("Plcode") = Trim(txtfields(1).Text)
        TrnLog("Line_No") = Trim(txtfields(2).Text)
        TrnLog("ordqty") = val(grddatagrid.Columns(5).Text)
        TrnLog("ordkgs") = grddatagrid.Columns(6).Text
        TrnLog("netwt") = val(grddatagrid.Columns(6).Text)
       
        TrnLog.UpdateBatch adAffectAllChapters
    
        
    DB.Execute "update rm_lot set godown='" & rsa("tgod") & "' where godown='" & rsa("fgod") & "' and lotno='" & rsa("lotno") & "' and lotdt='" & Format(rsa("lotdt"), "yyyy-mm-dd") & "'"
        
    MsgBox "Record(s) Saved", vbInformation, head
    MsgBox "Doc Number is " & txtfields(0).Text, vbInformation, head
    Call query_mode
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
End If


If Opt = "del" Then
    Dim msg As String
    msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
    If msg = vbYes Then
    
    Set TrnLog = New Recordset
    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    TrnLog.AddNew
        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
        TrnLog("moduleNo") = ModuleNo
        TrnLog("Trans_Name") = "Godown Transfer"
        TrnLog("Trans_Mod") = "Del"
        TrnLog("Trans_IPADD") = LocalIP
        TrnLog("Trans_Host") = LocalHost
        TrnLog("Trans_UserId") = usrid
        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
        TrnLog("docno") = val(txtfields(0).Text)
        TrnLog("docdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")

        TrnLog("lotno") = val(grddatagrid.Columns(2).Text)
        TrnLog("lotdt") = grddatagrid.Columns(3).Text
       ' TrnLog("varcode") = Trim(txtFields(2).Text)
 
        TrnLog("Plcode") = Trim(txtfields(1).Text)
        TrnLog("Line_No") = Trim(txtfields(2).Text)
        TrnLog("ordqty") = val(grddatagrid.Columns(5).Text)
        TrnLog("ordkgs") = grddatagrid.Columns(6).Text
        TrnLog("netwt") = val(grddatagrid.Columns(6).Text)
       
        TrnLog.UpdateBatch adAffectAllChapters
    
    
         DB.Execute "update rm_lot set godown='" & txtfields(1).Text & "' where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'"
    
         DB.Execute ("delete from rm_godtrans where DOCNO =" & Trim(txtfields(0).Text) & " ")
        
         MsgBox "Record(s) Deleted", vbInformation, head
         Opt = " "
         Call query_mode
         Call cancl(BUTTON)
         Call NEWFORM1(BUTTON, GSNO)
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
End If
If Opt = "mod" Then
    
        Set TrnLog = New Recordset
    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    TrnLog.AddNew
        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
        TrnLog("moduleNo") = ModuleNo
        TrnLog("Trans_Name") = "Godown Transfer"
        TrnLog("Trans_Mod") = "Mod"
        TrnLog("Trans_IPADD") = LocalIP
        TrnLog("Trans_Host") = LocalHost
        TrnLog("Trans_UserId") = usrid
        Set RSCHECK = DB.Execute("Select GetDate()")
        TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
        TrnLog("docno") = val(txtfields(0).Text)
        TrnLog("docdt") = Format(MaskEdBox1.Text, "yyyy-mm-dd")
                 '   TrnLog("lotno") = rss("pack_year").value
        TrnLog("lotno") = adoPrimaryRS("lotno")
        TrnLog("lotdt") = Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd")
        TrnLog("Plcode") = Trim(txtfields(1).Text)
        TrnLog("Line_No") = Trim(txtfields(2).Text)

       
        TrnLog.UpdateBatch adAffectAllChapters
    
    DB.Execute "update rm_godtrans set tgod='" & txtfields(2).Text & "' where docno='" & txtfields(0).Text & "' and docdt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'"
    
    DB.Execute "update rm_lot set godown='" & txtfields(2).Text & "' where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'"
   
    MsgBox "Record(s) Modified", vbInformation, head
    Opt = " "
    Call query_mode
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
End If

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    StatusBar1.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
      '  Db.RollbackTrans
    Case "fnd"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    If Opt <> "qry" Then
        Opt = "qry"
        Call query_mode
    End If
    'calling cancl procedure from module
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
    Frame2.Visible = False
    SSTab1.Visible = True
    SSTab1.ZOrder
Case 11
    'EXIT
   ' If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Reset
    Unload Me
Case 3
  Set rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    TOTVAL = 0
    co = 0
    cnt = 0
    Close
   ' Open "c:\dailyiss.txt" For Output As #f
   Open KALFOLDERDATA & "\dailyiss.TXT" For Output As #f
    Set Rs = New Recordset
    Rs.Open "select * from rm_godtrans where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by docdt,docno", DB
    pg = 1
    Call prnhead(CStr(pg))
   
    Do While Rs.EOF = False
         Set rsa = New Recordset
        rsa.Open "select gname from rm_god where gcode='" & Rs("fgod") & "' and DivCode = '" & Divcode & "'", DB
        If rsa.RecordCount > 0 Then
            fgname = rsa(0)
        Else
            fgname = ""
        End If
        Set rsa = New Recordset
        rsa.Open "select gname from rm_god where gcode='" & Rs("tgod") & "' and DivCode = '" & Divcode & "'", DB
        If rsa.RecordCount > 0 Then
            tgname = rsa(0)
        Else
            tgname = ""
        End If
        
        
        
        'Print #f, Space(5) & Padl(rs("docno"), 5, " ") & Space(1) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padr(fgname, 16, " ") & Space(1) & Padr(tgname, 16, " ") & Space(1) & Padl(rs("lotno"), 5, " ") & Space(1) & Padr(Format(rs("lotdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padr(rs("remarks"), 16, " ")
        
        Print #f, Space(5) & Padl(Rs("docno"), 5, " ") & Space(1) & Padr(Format(Rs("docdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padl(Rs("lotno"), 5, " ") & Space(1) & Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padr(fgname, 16, " ") & Space(1) & Padr(tgname, 16, " ") & Space(1) & Padr(Rs("remarks"), 16, " ")
        'Print #f, Space(5) & Padl(rs("docno"), 5, " ") & Space(1) & Padr(Format(rs("docdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padr(fgname, 16, " ") & Space(1) & Padr(tgname, 16, " ") & Space(1) & Padl(rs("lotno"), 5, " ") & Space(1) & Padr(Format(rs("lotdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padr(rs("remarks"), 16, " ")
        
        co = co + 1
        Print #f,
        co = co + 1
        If co >= PageLen Then
            Print #f, Space(5) & String(80, "-")
            Print #f, Chr(12)
            co = 0
            pg = pg + 1
            Call prnhead(CStr(pg))
            
        End If
    
    Rs.MoveNext
    Loop
  
    Print #f, Space(5) & String(80, "-")
    Print #f, Chr(12)
    Close #f
'    Open "c:\dailyiss.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type dailyiss.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\dailyiss.txt"
'    Rep.Batfile = "c:\dailyiss.bat"
     f = FreeFile
     Call KALBATPROCESS("dailyiss")
    Screen.MousePointer = 0
Case 13
 
 Dim clsCryRptGod As New clsCrystal
    Set clsCryRptGod.cryRept = Cry_Godown_Transfer
    clsCryRptGod.CrystalPrint

    CrystalReport3.Reset
        CrystalReport3.DiscardSavedData = True
        CrystalReport3.Connect = connectstring
        CrystalReport3.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport3.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport3.ParameterFields(1) = "@Docno ;" & txtfields(0).Text & ""
        CrystalReport3.ParameterFields(2) = "@Docdt ;" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & ""
        CrystalReport3.WindowShowPrintSetupBtn = True
        CrystalReport3.WindowShowSearchBtn = True
        CrystalReport3.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport3.Action = 1
        CrystalReport3.PrinterCopies = 1
        Screen.MousePointer = 0

End Select
intervalMinutes = -1

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form godtrans", vbInformation, head
    intervalMinutes = -1
End Sub

Private Sub Combo1_KeyPress(KeyAscii As Integer)
On Error GoTo Combo1_KeyPress_Error

KeyAscii = 0

Exit Sub
Combo1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyPress of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_Validate(Cancel As Boolean)
On Error GoTo Combo1_Validate_Error

If Opt = "add" Then
    If Combo1.Text = " " And MaskEdBox1.Text <> "__/__/____" Then
        MsgBox "Select any Type from the drop down list", vbInformation, head
        Cancel = True
        Exit Sub
    Else
'        Set rs = New Recordset
'        rs.Open "select isnull(max(docno),0) from rm_waste", db, adOpenStatic, adLockBatchOptimistic
'        If rs(0) = 0 Then
'            Txtfields(0).Text = rs(0).Value + 1
'        Else
'            Txtfields(0).Text = rs(0).Value + 1
            grddatagrid.Col = 3
            grddatagrid.SetFocus
            StatusBar1.Panels(2).Text = "Enter Count Code"
'        End If
    End If
End If

Exit Sub
Combo1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Validate of Form godtrans", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    'Frame6.Visible = False
    Buttonframe.Enabled = True
    'Call BUTTON_Click(10)
    Call query_mode

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

If Opt = "add" Or Opt = "mod" Then
Select Case SCODLIST1.listfield1
Case "a.Lotno"

        Set rsa = New Recordset
        rsa.Open "select a.lotno,a.lotdt,count(baleno)as bales,sum(b.actisskgs) as netwt,a.varcode,a.catcd,a.lottype,lotyear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and a.lotno='" & SCODLIST1.Code & "' and a.lotdt='" & Format(Left(SCODLIST1.Description, 10), "yyyy-mm-dd") & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
        If rsa.RecordCount = 0 Then
            Set rsa = New Recordset
            rsa.Open "select a.lotno,a.lotdt,bales-isnull(issbal,0) as Bales,netwt,varcode,a.catcd,a.lottype,lotyear from rm_lot a where a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and a.lotno='" & SCODLIST1.Code & "' and a.lotdt='" & Format(Left(SCODLIST1.Description, 10), "yyyy-mm-dd") & "' ", DB, adOpenStatic
        End If
        
        Do While Not rsa.EOF
            grddatagrid.Columns(0).Text = Divcode
            grddatagrid.Columns(1).Text = rsa("catcd")
            grddatagrid.Columns(2).Text = rsa("lotno")
            grddatagrid.Columns(3).Text = rsa("lotdt")
            grddatagrid.Columns(4).Text = rsa("varcode")
            grddatagrid.Columns(5).Text = rsa("bales")
            grddatagrid.Columns(6).Text = rsa("netwt")
            grddatagrid.Columns(7).Text = rsa("lottype")
            grddatagrid.Columns(8).Text = rsa("lotyear")
            
            rsa.MoveNext
        Loop
        If rsa.RecordCount = 0 Then
            MsgBox "No Lot available for the selected 'From' Godown", vbInformation, head
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales as ""Closing Bales"",netwt as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & SCODLIST1.Code & "' and lotdt='" & Format(Left(SCODLIST1.Description, 10), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
              grddatagrid.Columns(0).Visible = False
              grddatagrid.Columns(1).Visible = False
              grddatagrid.Col = 2
              adoSecondaryRS.AddNew
              grddatagrid.SetFocus
           Exit Sub
        End If
        grddatagrid.Enabled = False

        Frame3.Visible = False
        Frame2.Visible = False
End Select
End If


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form godtrans", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
Select Case Ksldesc1.listfield1
Case "cast(docno as varchar)"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, fgod,tgod,remarks,lotno,lotdt from rm_godtrans a where a.divcode='" & Divcode & "'  and docno='" & Ksldesc1.Code & "' and docdt='" & Format(Ksldesc1.Description, "yyyy-mm-dd") & "' order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveFirst
            pr = adoPrimaryRS("docno")
            dr = adoPrimaryRS("docdt")
            Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
            Call gridalign
            Call disablcontls
            Call bindcontls

            Call GRdlock
            txtfields(2).Locked = False
            
        Else
            Call Norecfound(BUTTON)
            MsgBox "No Records Found", vbInformation, head
            Set grddatagrid.DataSource = Nothing
           
            txtfields(0).Text = ""
            MaskEdBox1.Text = "__/__/____"
        End If
        Frame2.Visible = False
        SSTab1.Visible = True
Case "a.gcode"
    txtfields(1).Text = Ksldesc1.Code
    
    Text1.Text = Ksldesc1.Description
    Set adoSecondaryRS = New Recordset

    
    Frame3.Visible = True
    Frame3.ZOrder
    SCODLIST1.conn = connectstring
    'Ksldesc1.Caption = "Lot Selection"
    SCODLIST1.Table = "rm_lot a where bales-isnull(issbal,0)>0 and divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' group by a.lotno,a.lotdt,a.bales"
    SCODLIST1.listfield1 = "a.Lotno"
    SCODLIST1.listfield2 = "a.Lotdt as Lotdate,Bales"
    SCODLIST1.SetFocus
    Buttonframe.Enabled = True
    
    SSTab1.Visible = True
Case "a.Gcode"
    If txtfields(2).Text = Ksldesc1.Code Then
    MsgBox "From Godown and To godown are same choose another godown", vbInformation, head
    txtfields(2).SetFocus
    Exit Sub
    
    End If
    txtfields(2).Text = Ksldesc1.Code
    Text2.Text = Ksldesc1.Description
    Buttonframe.Enabled = True
    Frame2.Visible = False
    SSTab1.Visible = True
    'Text1.SetFocus
    
    
End Select

End If


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form godtrans", vbInformation, head
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

If Ksldesc1.listfield1 = "a.gcode" Then
Frame2.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True

End If

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command5_Click()
On Error GoTo Command5_Click_Error

     a1 = Format(DTPicker1.value, "yyyy/mm/dd")
    If a1 = " " Then
        MsgBox "Please Enter the Valid Date", vbInformation, head
        Exit Sub
    End If
    
Set rs1 = New Recordset
rs1.Open "select docno,docdt,lotno,lotdt,fgod,tgod,bales,netwt,remarks  from rm_godtrans where  docno='" & txtfields(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'RS1.Open "select distinct a.supcd,c.slname supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'Mill'  else 'Spot' end as dlytype,a.ordqty,a.recqty,(a.ordqty-isnull(a.recqty,0))Bales,round(a.candyrate,0)as candyrate,e.docdt,e.reason,g.areaname,e.docno,e.docdt from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d,rm_ordcancel e,rm_area g Where a.areacode*=g.areacode and contdt = '" & Format(a1, "yyyy-mm-dd") & "' and  a.contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.varcode*= B.varcode and  a.supcd*= c.slcode and a.brkcd*= d.slcode  and contno= '" & txtfields(0).Text & "' and docno='" & txtfields(1).Text & "' order by contno", DB, adOpenStatic, adLockBatchOptimistic

If rs1.RecordCount = 0 Then
  MsgBox "No Records to Print ", vbInformation, head
  Screen.MousePointer = 0
  Exit Sub
End If
Set rep = New Report.ReportView
f = FreeFile
I = 0
pg1 = 1
Close
'Open "C:\cd.TXT" For Output As #f
Open KALFOLDERDATA & "\cd.TXT" For Output As #f
Call header5(CStr(From_date1), CStr(To_date1), CInt(I), CInt(pg1))
    
      Do While Not rs1.EOF
        'from godown name
        Set rs4 = New Recordset
        rs4.Open "select gname from rm_god where gcode='" & rs1("fgod") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rs4.RecordCount > 0 Then
            fgname = rs4(0)
        Else
            fgname = ""
        End If
        'to godown name
        Set rs5 = New Recordset
        rs5.Open "select gname from rm_god where gcode='" & rs1("tgod") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rs5.RecordCount > 0 Then
            tgname = rs5(0)
        Else
            tgname = ""
        End If
        'Print #f, Space(5) & "Doc.No.        : " & Padr(RS1("docno"), 10, " ") & Space(5) & "Doc.Dt    :" & Padr(Format(RS1("docdt"), "dd/mm/yy"), 8, " ")
        Print #f, Space(5) & "Lot.No.        : " & Padr(rs1("lotno"), 10, " ") & Space(20) & "Doc.No    : " & Padr(rs1("docno"), 8, " ")
        I = I + 1
        Print #f,
        I = I + 1
        Print #f, Space(5) & "Lot.dt.        : " & Padr(rs1("lotdt"), 10, " ") & Space(20) & "Dot.Dt    : " & Padr(Format(rs1("docdt"), "dd/mm/yy"), 8, " ")
        I = I + 1
        Print #f,
        I = I + 1
        Print #f, Space(5) & "From Godown    : " & Padr(fgname, 20, " ")
        I = I + 1
        Print #f,
        I = I + 1
        Print #f, Space(5) & "To   Godown    : " & Padr(tgname, 20, " ")
        I = I + 1
        Print #f,
        I = I + 1
        Print #f, Space(5) & "Closing Bales  : " & Padr(INF(rs1("bales"), 0), 20, " ")
        I = I + 1
        Print #f,
        I = I + 1
        Print #f, Space(5) & "Closing Weight : " & Padr(INF(rs1("netwt"), 3), 20, " ")
        I = I + 1
        Print #f,
        I = I + 1
        Print #f, Space(5) & "Remarks        :" & Padr(rs1("remarks"), 30, " ")
        I = I + 1
        Print #f,
        I = I + 1
        
        For K = 1 To 8
        Print #f,
        Next K
        
        If I >= PageLen Then
            Print #f, Space(5) & String(75, "-")
            Print #f, Chr(12)
            I = 0
            pg1 = pg1 + 1
            Call header5(CStr(From_date1), CStr(To_date1), CInt(I), CInt(pg1))
        End If
    
    rs1.MoveNext
    Loop
            
           
            Print #f, Space(5) & String(75, "-")
            Print #f,
            Print #f,
            'Call FOOTER_PRINT(75, CStr(1), 5)
            Call footermod(CInt(1), UserFooter1.SelectedStr, 85)
            Print #f,
            Print #f,
            Print #f,
            
            'Print #f, Chr(12)
            Close #f
            f = FreeFile
'            Open "c:\cd.bat" For Output As #f
'            Print #f, "cd\"
'            Print #f, "c:"
'            Print #f, "cd\"
'            Print #f, "type cd.txt>prn"
'            Close #f
'            Rep.txtfile = "c:\cd.txt"
'            Rep.Batfile = "c:\cd.bat"
             Call KALBATPROCESS("cd")



'        If Record_Exists("rm_wissue where divcode='" & Divcode & "'") = False Then Exit Sub
'        Set repo = New Report.ReportView
'        desc.Caption = "Listing"
'        Set rs1 = New Recordset
'        rs1.Open "select DISTINCT docno,docdt from rm_wissue  where divcode='" & Divcode & "' and docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' ", Db, adOpenStatic
'        If rs1.RecordCount <= 0 Then
'        MsgBox "No record found", vbInformation
'        Exit Sub
'        End If
'        pg = 1
'        Set rsP = New Recordset
'        Close
'        Open "c:\red.txt" For Output As #1
'            Print #1,
'            Print #1,
'            Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 79, " "); "F"; Chr(27)
'            Print #1,
'            Print #1, Space(5); "Waste Issue Listing" & Space(1); "for "; Format(adoPrimaryRS("docdt"), "dd/mm/yyyy"); Space(51 - 16 - 13) & "Dt: "; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:" & Padl(pg, 3, " ")
'            Print #1, Space(5) & String(79, "-")
'            Print #1, Space(5) & "Issue No. Doc.Dt  "
'            Print #1, Space(5) & "Godown  Waste  Description                        Shift Count      Gross Weight"
'            Print #1, Space(5) & String(79, "-")
'            co = 8
'            tot = 0
'        Do While Not rs1.EOF
'            Print #1, Space(5) & Padr(rs1("docno"), 7, " ") & Space(1) & Padr(Format(rs1("docdt"), "dd/mm/yyyy"), 10, " ")
'            co = co + 1
'            Print #1,
'            co = co + 1
'            Set rs2 = New Recordset
'            rs2.Open "select a.CNTCD,a.gcode,a.wcode,b.wdes,type=case when type='R' then 'Reuse' else 'Sales' end,a.netwt  from rm_wissue a,rm_wastetype b where a.divcode='" & Divcode & "' and a.docno=" & rs1("docno") & " and a.docdt='" & Format(rs1("docdt"), "yyyy-mm-dd") & "' and a.wcode=b.wcode ", Db, adOpenStatic
'            Do While Not rs2.EOF
'                Print #1, Space(5) & Padr(rs2("Gcode"), 6, " ") & Space(2) & Padr(rs2("Wcode"), 5, " "); Space(2); Padr(rs2("wDes"), 35, " "); Padr(rs2("type"), 6, " "); Padr(rs2("cntcd"), 10, " "); Space(1); Padl(INF(rs2("netwt"), 3), 12, " ")
'                tot = tot + rs2("netwt")
'                co = co + 1
'                rs2.MoveNext
'                If co >= pagelen Then
'                    Print #1, Space(5); String(50, "-")
'                    Print #1, Chr(12)
'                    co = 0
'                    pg = pg + 1
'                    Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 56, " "); "F"; Chr(27)
'                    Print #1,
'                    Print #1, Space(5); "Supplier Listing" & Space(2); Space(10) & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg:" & pg
'                    Print #1, Space(5) & String(50, "-")
'                    Print #1, Space(5) & "Code" & Space(9) & "Name "
'                    Print #1, Space(5) & String(50, "-")
'                    co = co + 5
'                End If
'            Loop
'            rs1.MoveNext
'        Loop
'            Print #1, Space(5) & String(79, "-")
'            Print #1, Space(5) & Space(35); " ** Total ** "; Space(10); Padl(INF(tot, 3), 21, " ")
'            Print #1, Space(5) & String(79, "-")
'            Print #1, Chr(12)
'         Close #1
'         Open "c:\red.bat" For Output As #1
'            Print #1, "cd\"
'            Print #1, "c:"
'            Print #1, "cd\"
'            Print #1, "type red.txt>prn"
'              repo.txtfile = "c:\red.txt"
'              repo.Batfile = "c:\red.bat"
'         Close #1
'

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form godtrans", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Command5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Command5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
        UserFooter1.Visible = False
        Frame5.Visible = False
        Command5.Visible = False
    End If
ElseIf vbkeycode = vbKeyLeft Then
    Option5.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option5.SetFocus
End If

Exit Sub
Command5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_KeyDown of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_GotFocus()
'    DTPicker1.CalendarTitleBackColor = &HC0FFC0
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
        Call BUTTON_Click(10)
    End If
End If
If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
        UserFooter1.Visible = False
        Frame5.Visible = False
        Command5.Visible = False
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Provider = "msdatashape"
    DB.Open connectstring
    desc.Caption = "Query"
    DATLAB.Caption = pdate
    Opt = "qry"
    StatusBar1.Panels(1).Text = head
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    DTPicker1.MinDate = yfdate
    DTPicker1.maxdate = pdate
    intervalMinutes = -1
   ' DTPicker1.value = pdate
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form godtrans", vbInformation, head
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
    If Opt = " " Or Opt = "qry" Then
    'grdDataGrid.Columns(0).Visible = False
    'grdDataGrid.Columns(1).Visible = False
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT top 10 a.divcode,a.docno,a.docdt, fgod,tgod,remarks,lotno,lotdt from rm_godtrans a where a.divcode='" & Divcode & "'  order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        Call NEWFORM1(BUTTON, GSNO)
        If adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveFirst
            pr = adoPrimaryRS("docno")
            dr = adoPrimaryRS("docdt")
            Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",case when (netwt -isnull(isswt,0))<0 then 0 else (netwt -isnull(isswt,0)) end  as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND lotyear='" & Year(yfdate) & "'  ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
            Call gridalign
            Call disablcontls
            Call bindcontls

            Call GRdlock
            Call NEWFORM(BUTTON)
            Call NEWFORM1(BUTTON, GSNO)
        Else
            Call Norecfound(BUTTON)
            MsgBox "No Records Found", vbInformation, head
            Set grddatagrid.DataSource = Nothing
           
            txtfields(0).Text = ""
            MaskEdBox1.Text = "__/__/____"
        End If
    End If
    If Opt = "del" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, fgod,tgod,remarks,lotno,lotdt from rm_godtrans a where a.divcode='" & Divcode & "'  order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveFirst
            pr = adoPrimaryRS("docno")
            dr = adoPrimaryRS("docdt")
            Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'   and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
        End If
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
        adoPrimaryRS.Open "select DISTINCT a.divcode,a.docno,a.docdt, fgod,tgod,remarks,lotno,lotdt from rm_godtrans a where a.divcode='" & Divcode & "'  order by a.docno", DB, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount > 0 Then
            adoPrimaryRS.MoveFirst
            pr = adoPrimaryRS("docno")
            dr = adoPrimaryRS("docdt")
            Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales-isnull(issbal,0) as ""Closing Bales"",netwt -isnull(isswt,0) as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where lotno='" & adoPrimaryRS("lotno") & "' and lotdt='" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoSecondaryRS
        End If
        Call gridalign
        For I = 0 To 6
                grddatagrid.Columns(I).Locked = True
        Next
        grddatagrid.AllowUpdate = True
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        grddatagrid.Col = 7
        grddatagrid.SetFocus
        intervalMinutes = -1
        Exit Sub
    End If
intervalMinutes = -1

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form godtrans", vbInformation, head
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
For Each X In Me.txtfields
    X.Locked = False
Next
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
On Error GoTo grddatagrid_AfterColEdit_Error

If Opt = "add" Or Opt = "mod" Then
    If ColIndex = 2 Then
        Set Rs = New Recordset
        Rs.Open "select a.lotno,a.lotdt,count(baleno)as bales,sum(b.actisskgs) as netwt,a.varcode,a.catcd,a.lottype,lotyear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and a.varcode=b.varcode and godown='" & txtfields(1).Text & "' and a.lotno='" & Trim(grddatagrid.Columns(2).Text) & "'   group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
        If Rs.RecordCount <> 1 Then
            LookUp.Clear = True
            LookUp.query = "select a.lotno""LotNo"",a.lotdt""Date"",count(baleno)as Bales,sum(b.actisskgs) as netwt,a.varcode""Varcode"",a.catcd""CategoryCode"",a.lottype""LotType"",LotYear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and a.varcode=b.varcode and godown='" & txtfields(1).Text & "' and a.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear"
            LookUp.DefCol = "LotNo"
            LookUp.ALIGN = "1000,1000,1000,1000,1000,1000,1000"
            LookUp.Caption = "Lot Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Set rsa = New Recordset
                rsa.Open "select a.lotno,a.lotdt,count(baleno)as bales,sum(b.actisskgs) as netwt,a.varcode,a.catcd,a.lottype,lotyear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and a.varcode=b.varcode and godown='" & txtfields(1).Text & "' and a.lotno='" & LookUp.Fields(0) & "' and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotyear='" & LookUp.Fields(7) & "'  group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
                Do While Not rsa.EOF
                    grddatagrid.Columns(0).Text = Divcode
                    grddatagrid.Columns(1).Text = rsa("catcd")
                    grddatagrid.Columns(2).Text = rsa("lotno")
                    grddatagrid.Columns(3).Text = rsa("lotdt")
                    grddatagrid.Columns(4).Text = rsa("varcode")
                    grddatagrid.Columns(5).Text = rsa("bales")
                    grddatagrid.Columns(6).Text = rsa("netwt")
                    grddatagrid.Columns(7).Text = rsa("lottype")
                    grddatagrid.Columns(8).Text = rsa("lotyear")
                    
                    rsa.MoveNext
                Loop
                If rsa.RecordCount = 0 Then
                    MsgBox "No Lot available for the selected From godown", vbInformation, head
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales as ""Closing Bales"",netwt as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grddatagrid.DataSource = adoSecondaryRS
                    grddatagrid.Columns(0).Visible = False
                    grddatagrid.Columns(1).Visible = False
                    grddatagrid.Col = 2
                    adoSecondaryRS.AddNew
                    grddatagrid.SetFocus
                   Exit Sub
                End If
            Else
                Call BUTTON_Click(10)
                grddatagrid.Col = 2
                grddatagrid.SetFocus
                Exit Sub
            End If
        Else
                Set rsa = New Recordset
                rsa.Open "select a.lotno,a.lotdt,count(baleno)as bales,sum(b.actisskgs) as netwt,a.varcode,a.catcd,a.lottype,lotyear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and a.varcode=b.varcode and godown='" & txtfields(1).Text & "' and a.lotno='" & Trim(grddatagrid.Columns(2).Text) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
                Do While Not rsa.EOF
                    grddatagrid.Columns(0).Text = Divcode
                    grddatagrid.Columns(1).Text = rsa("catcd")
                    grddatagrid.Columns(2).Text = rsa("lotno")
                    grddatagrid.Columns(3).Text = rsa("lotdt")
                    grddatagrid.Columns(4).Text = rsa("varcode")
                    grddatagrid.Columns(5).Text = rsa("bales")
                    grddatagrid.Columns(6).Text = rsa("netwt")
                    grddatagrid.Columns(7).Text = rsa("lottype")
                    grddatagrid.Columns(8).Text = rsa("lotyear")
                    
                    rsa.MoveNext
                Loop
                If rsa.RecordCount = 0 Then
                    MsgBox "No Lot available for the selected From godown", vbInformation, head
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales as ""Closing Bales"",netwt as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grddatagrid.DataSource = adoSecondaryRS
                    grddatagrid.Columns(0).Visible = False
                    grddatagrid.Columns(1).Visible = False
                    grddatagrid.Col = 2
                    adoSecondaryRS.AddNew
                    grddatagrid.SetFocus
                   Exit Sub
                End If
        End If
    End If
End If


Exit Sub
grddatagrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form godtrans", vbInformation, head
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

If Opt = "add" Then
Select Case grddatagrid.Col
Case 10
grddatagrid.Columns(10).Text = IIf(grddatagrid.Columns(8).Text = "", 0, val(grddatagrid.Columns(8).Text)) + IIf(grddatagrid.Columns(9).Text = "", 0, val(grddatagrid.Columns(9).Text))
End Select
End If
StatusBar1.Panels(2).Text = "Select a Lot No. details"

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

Select Case grddatagrid.Col
    Case 7
        If Opt = "add" Then
            If KeyCode = 9 And Opt = "add" And FLG <> "y" And (adoSecondaryRS.RecordCount = adoSecondaryRS.AbsolutePosition) And grddatagrid.Columns(7).Text <> "" Then
                adoSecondaryRS.AddNew
                grddatagrid.Col = 0
                grddatagrid.SetFocus
            End If
        End If
    End Select
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
        'Call BUTTON_Click(3)    ''List
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
        'Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        'Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error

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
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form godtrans", vbInformation, head
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)

On Error GoTo grdDataGrid_RowColChange_Error

If Opt = "add" Then
    Select Case grddatagrid.Col
    
    End Select
End If
If Openkeyloanflg = "Y" Then
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 3 Then
        Set Rs = New Recordset
        'Rs.Open "select a.lotno,a.lotdt,count(baleno)as bales,sum(b.actisskgs) as netwt,a.varcode,a.catcd,a.lottype,lotyear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and a.varcode=b.varcode and godown='" & txtfields(1).Text & "' and a.lotno='" & Trim(GrdDataGrid.Columns(2).Text) & "'   group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
        Rs.Open "select a.lotno""LotNo"",a.lotdt""Date"",count(b.baleno)as Bales,sum(b.netwt) as netwt,a.varcode""Varcode"",a.catcd""CategoryCode"",a.lottype""LotType"",LotYear from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and isnull(b.issued,'N')='N' and  b.OPENKEY='N' and a.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
        If Rs.RecordCount <> 1 Then
            LookUp.Clear = True
            LookUp.query = "select a.lotno""Lot No."",a.lotdt""Lot Date"",count(b.baleno)as Bales,case when a.WeightFlg ='M' then sum(b.netwt) else sum(b.pnetwt) end as ""Net Wt."",a.varcode""Variety Code"",a.catcd""Category Code"",a.lottype""Lot Type"",LotYear""Lot Year"" from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and isnull(b.issued,'N')='N' and  OPENKEY='N' and a.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear,a.weightFlg"
            LookUp.DefCol = "LotNo"
            LookUp.ALIGN = "1000,1000,1000,1500,1500,800,800"
            LookUp.Caption = "Lot Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Set rsa = New Recordset
                'rsa.Open "select a.lotno""LotNo"",a.lotdt""Date"",count(b.baleno)as Bales,sum(b.netwt) as netwt,a.varcode""Varcode"",a.catcd""CategoryCode"",a.lottype""LotType"",LotYear from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and a.divcode='" & Divcode & "' and godown='" & txtFields(1).Text & "' and isnull(b.issued,'N')='N' and a.lotyear='" & Year(yfdate) & "'  and a.lotno='" & LookUp.Fields(0) & "' and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotyear='" & LookUp.Fields(7) & "'  group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
                rsa.Open "select a.lotno,a.lotdt,count(b.baleno)as Bales,case when a.WeightFlg ='M' then sum(b.netwt) else sum(b.pnetwt) end as  netwt,a.varcode,a.catcd,a.lottype,LotYear from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and  b.OPENKEY='N' and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and isnull(b.issued,'N')='N' and a.lotyear='" & Year(yfdate) & "' and a.lotno='" & LookUp.Fields(0) & "' and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotyear='" & LookUp.Fields(7) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear,a.weightFlg", DB, adOpenStatic
                Do While Not rsa.EOF
                    grddatagrid.Columns(0).Text = Divcode
                    grddatagrid.Columns(1).Text = rsa("catcd")
                    grddatagrid.Columns(2).Text = rsa("lotno")
                    grddatagrid.Columns(3).Text = rsa("lotdt")
                    grddatagrid.Columns(4).Text = rsa("varcode")
                    grddatagrid.Columns(5).Text = rsa("bales")
                    grddatagrid.Columns(6).Text = rsa("netwt")
                    grddatagrid.Columns(7).Text = rsa("lottype")
                    grddatagrid.Columns(8).Text = rsa("lotyear")
                    grddatagrid.Columns(3).Locked = True
                    grddatagrid.Columns(4).Locked = True
                    grddatagrid.Columns(7).Locked = True
                    grddatagrid.Columns(8).Locked = True
                    grddatagrid.Columns(5).Locked = True
                    grddatagrid.Columns(6).Locked = True
                    
                    rsa.MoveNext
                    BUTTON(9).SetFocus
                Loop
                If rsa.RecordCount = 0 Then
                    MsgBox "No Lot available for the selected From godown", vbInformation, head
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales as ""Closing Bales"",netwt as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grddatagrid.DataSource = adoSecondaryRS
                    grddatagrid.Columns(0).Visible = False
                    grddatagrid.Columns(1).Visible = False
                    grddatagrid.Col = 2
                    adoSecondaryRS.AddNew
                    grddatagrid.SetFocus
                   Exit Sub
                End If
            Else
                Call BUTTON_Click(10)
'                GrdDataGrid.Col = 2
'                GrdDataGrid.SetFocus
                Exit Sub
            End If
        Else
                Set rsa = New Recordset
                'rsa.Open "select a.lotno,a.lotdt,count(baleno)as bales,sum(b.actisskgs) as netwt,a.varcode,a.catcd,a.lottype,lotyear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and a.varcode=b.varcode and godown='" & txtfields(1).Text & "' and a.lotno='" & Trim(grddatagrid.Columns(2).Text) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
                rsa.Open "select a.lotno,a.lotdt,count(b.baleno)as Bales,case when a.WeightFlg ='M' then sum(b.netwt) else sum(b.pnetwt) end as  netwt,a.varcode,a.catcd,a.lottype,LotYear from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and  b.OPENKEY ='N' and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and isnull(b.issued,'N')='N' and a.lotyear='" & Year(yfdate) & "' and a.lotno='" & Trim(Rs.Fields("lotno")) & "' and a.lotdt='" & Format(Rs.Fields("date"), "yyyy-mm-dd") & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear,a.weightFlg", DB, adOpenStatic
                Do While Not rsa.EOF
                    grddatagrid.Columns(0).Text = Divcode
                    grddatagrid.Columns(1).Text = rsa("catcd")
                    grddatagrid.Columns(2).Text = rsa("lotno")
                    grddatagrid.Columns(3).Text = rsa("lotdt")
                    grddatagrid.Columns(4).Text = rsa("varcode")
                    grddatagrid.Columns(5).Text = rsa("bales")
                    grddatagrid.Columns(6).Text = rsa("netwt")
                    grddatagrid.Columns(7).Text = rsa("lottype")
                    grddatagrid.Columns(8).Text = rsa("lotyear")
                    
                    rsa.MoveNext
                Loop
                If rsa.RecordCount = 0 Then
                    MsgBox "No Lot available for the selected From godown", vbInformation, head
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales as ""Closing Bales"",netwt as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grddatagrid.DataSource = adoSecondaryRS
                    grddatagrid.Columns(0).Visible = False
                    grddatagrid.Columns(1).Visible = False
                    grddatagrid.Col = 2
                    adoSecondaryRS.AddNew
                    grddatagrid.SetFocus
                   Exit Sub
                End If
        End If
    End If
End If
Else
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 3 Then
        Set Rs = New Recordset
        'Rs.Open "select a.lotno,a.lotdt,count(baleno)as bales,sum(b.actisskgs) as netwt,a.varcode,a.catcd,a.lottype,lotyear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and a.varcode=b.varcode and godown='" & txtfields(1).Text & "' and a.lotno='" & Trim(GrdDataGrid.Columns(2).Text) & "'   group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
        Rs.Open "select a.lotno""LotNo"",a.lotdt""Date"",count(b.baleno)as Bales,sum(b.netwt) as netwt,a.varcode""Varcode"",a.catcd""CategoryCode"",a.lottype""LotType"",LotYear from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and isnull(b.issued,'N')='N' and a.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
        If Rs.RecordCount <> 1 Then
            LookUp.Clear = True
            LookUp.query = "select a.lotno""Lot No."",a.lotdt""Lot Date"",count(b.baleno)as Bales,case when a.WeightFlg ='M' then sum(b.netwt) else sum(b.pnetwt) end as ""Net Wt."",a.varcode""Variety Code"",a.catcd""Category Code"",a.lottype""Lot Type"",LotYear""Lot Year"" from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and isnull(b.issued,'N')='N' and a.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear,a.weightFlg"
            LookUp.DefCol = "LotNo"
            LookUp.ALIGN = "1000,1000,1000,1500,1500,800,800"
            LookUp.Caption = "Lot Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Set rsa = New Recordset
                'rsa.Open "select a.lotno""LotNo"",a.lotdt""Date"",count(b.baleno)as Bales,sum(b.netwt) as netwt,a.varcode""Varcode"",a.catcd""CategoryCode"",a.lottype""LotType"",LotYear from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and a.divcode='" & Divcode & "' and godown='" & txtFields(1).Text & "' and isnull(b.issued,'N')='N' and a.lotyear='" & Year(yfdate) & "'  and a.lotno='" & LookUp.Fields(0) & "' and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotyear='" & LookUp.Fields(7) & "'  group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
                rsa.Open "select a.lotno,a.lotdt,count(b.baleno)as Bales,case when a.WeightFlg ='M' then sum(b.netwt) else sum(b.pnetwt) end as  netwt,a.varcode,a.catcd,a.lottype,LotYear from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and isnull(b.issued,'N')='N' and a.lotyear='" & Year(yfdate) & "' and a.lotno='" & LookUp.Fields(0) & "' and a.lotdt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.lotyear='" & LookUp.Fields(7) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear,a.weightFlg", DB, adOpenStatic
                Do While Not rsa.EOF
                    grddatagrid.Columns(0).Text = Divcode
                    grddatagrid.Columns(1).Text = rsa("catcd")
                    grddatagrid.Columns(2).Text = rsa("lotno")
                    grddatagrid.Columns(3).Text = rsa("lotdt")
                    grddatagrid.Columns(4).Text = rsa("varcode")
                    grddatagrid.Columns(5).Text = rsa("bales")
                    grddatagrid.Columns(6).Text = rsa("netwt")
                    grddatagrid.Columns(7).Text = rsa("lottype")
                    grddatagrid.Columns(8).Text = rsa("lotyear")
                    grddatagrid.Columns(3).Locked = True
                    grddatagrid.Columns(4).Locked = True
                    grddatagrid.Columns(7).Locked = True
                    grddatagrid.Columns(8).Locked = True
                    grddatagrid.Columns(5).Locked = True
                    grddatagrid.Columns(6).Locked = True
                    
                    rsa.MoveNext
                    BUTTON(9).SetFocus
                Loop
                If rsa.RecordCount = 0 Then
                    MsgBox "No Lot available for the selected From godown", vbInformation, head
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales as ""Closing Bales"",netwt as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grddatagrid.DataSource = adoSecondaryRS
                    grddatagrid.Columns(0).Visible = False
                    grddatagrid.Columns(1).Visible = False
                    grddatagrid.Col = 2
                    adoSecondaryRS.AddNew
                    grddatagrid.SetFocus
                   Exit Sub
                End If
            Else
                Call BUTTON_Click(10)
'                GrdDataGrid.Col = 2
'                GrdDataGrid.SetFocus
                Exit Sub
            End If
        Else
                Set rsa = New Recordset
                'rsa.Open "select a.lotno,a.lotdt,count(baleno)as bales,sum(b.actisskgs) as netwt,a.varcode,a.catcd,a.lottype,lotyear from rm_lot a ,rm_issb b where a.divcode=b.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode='" & Divcode & "' and a.varcode=b.varcode and godown='" & txtfields(1).Text & "' and a.lotno='" & Trim(grddatagrid.Columns(2).Text) & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear", DB, adOpenStatic
                rsa.Open "select a.lotno,a.lotdt,count(b.baleno)as Bales,case when a.WeightFlg ='M' then sum(b.netwt) else sum(b.pnetwt) end as  netwt,a.varcode,a.catcd,a.lottype,LotYear from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.catcd=b.catcd and a.lottype=b.lottype and a.divcode='" & Divcode & "' and godown='" & txtfields(1).Text & "' and isnull(b.issued,'N')='N' and a.lotyear='" & Year(yfdate) & "' and a.lotno='" & Trim(Rs.Fields("lotno")) & "' and a.lotdt='" & Format(Rs.Fields("date"), "yyyy-mm-dd") & "' group by a.lotno,a.lotdt,a.varcode,a.catcd,a.lottype,a.lotyear,a.weightFlg", DB, adOpenStatic
                Do While Not rsa.EOF
                    grddatagrid.Columns(0).Text = Divcode
                    grddatagrid.Columns(1).Text = rsa("catcd")
                    grddatagrid.Columns(2).Text = rsa("lotno")
                    grddatagrid.Columns(3).Text = rsa("lotdt")
                    grddatagrid.Columns(4).Text = rsa("varcode")
                    grddatagrid.Columns(5).Text = rsa("bales")
                    grddatagrid.Columns(6).Text = rsa("netwt")
                    grddatagrid.Columns(7).Text = rsa("lottype")
                    grddatagrid.Columns(8).Text = rsa("lotyear")
                    
                    rsa.MoveNext
                Loop
                If rsa.RecordCount = 0 Then
                    MsgBox "No Lot available for the selected From godown", vbInformation, head
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "SELECT DIVCODE,CATCD,LOTNO""Lot No."" ,LOTDT""Date"",varcode ""Variety"",bales as ""Closing Bales"",netwt as ""Closing Weight"",lottype,lotyear FROM rm_lot b  where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grddatagrid.DataSource = adoSecondaryRS
                    grddatagrid.Columns(0).Visible = False
                    grddatagrid.Columns(1).Visible = False
                    grddatagrid.Col = 2
                    adoSecondaryRS.AddNew
                    grddatagrid.SetFocus
                   Exit Sub
                End If
        End If
    End If
End If
End If
If BUTTON(9).Enabled = True Then
    BUTTON(9).SetFocus
    Exit Sub
Else
    BUTTON(0).SetFocus
    Exit Sub
End If

Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub MaskEdBox1_GotFocus()
On Error GoTo MaskEdBox1_GotFocus_Error

    MaskEdBox1.BackColor = &HC0FFC0

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus()
On Error GoTo MaskEdBox1_LostFocus_Error

If Opt = "add" And MaskEdBox1 <> "__/__/____" Then
If Not (IsDate(MaskEdBox1.Text)) Then
        MsgBox ("Please enter a valid date"), vbInformation, head
        MaskEdBox1.Text = pdate
        MaskEdBox1.SetFocus
    ElseIf CDate(MaskEdBox1.Text) > pdate Then
            MsgBox ("Document date must be earlier or equal to the Processing date"), vbInformation, head
            MaskEdBox1.Text = "__/__/____"
            MaskEdBox1.SetFocus
            Exit Sub
    End If
    End If

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

On Error GoTo lovok_Click_Error

SSTab1.Visible = True
    Frame3.Visible = False
    Buttonframe.Enabled = True
Select Case Ksldesc1.listfield1
Case "a.cntcd"
     
        grddatagrid.Columns(3).Text = Ksldesc1.Code
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        save_count = save_count & "," & "'" & Ksldesc1.Code & "'"
        StatusBar1.Panels(2).Text = "Enter Godown Code"
        
Case "a.gcode"
        grddatagrid.Columns(4).Text = Ksldesc1.Code
        grddatagrid.Col = 5
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Select Waste Code"
Case "a.wcode"
        grddatagrid.Columns(5).Text = Ksldesc1.Code
        grddatagrid.Columns(6).Text = Ksldesc1.Description
        Set Rs = New Recordset
        Rs.Open "select sum(a.netwt) -isnull((select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "'),0) from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.EOF Then grddatagrid.Columns(7).Text = Rs(0)
        grddatagrid.Columns(7).NumberFormat = "#0.000"
        grddatagrid.Columns(7).Alignment = dbgRight
        grddatagrid.Col = 7
        grddatagrid.SetFocus

Case "cast(docno as varchar)"
    Call query_mode
End Select
    


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form godtrans", vbInformation, head

Screen.MousePointer = 0
    
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

If Not (DTPicker1.value >= yfdate And DTPicker1.value <= pdate) Then
MsgBox "Document date must be earlier or equal to the Processing date", vbInformation, head
Exit Sub
Else
MaskEdBox1.Text = DTPicker1.value
End If

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub



Public Sub navi1(tol As Object)
On Error GoTo navi1_Error

    tol(0).Enabled = True 'ADD
    tol(1).Enabled = True 'MOD
    tol(2).Enabled = True 'DEL
    On Error Resume Next
    tol(3).Enabled = True 'LIST
    'tol(4).Enabled = False 'QUERY
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT

Exit Sub
navi1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure navi1 of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub gridalign()
'        grddatagrid.Columns(0).Width = 1140.095
'        grddatagrid.Columns(1).Width = 764.7874
'        grddatagrid.Columns(2).Width = 3000.189
'        grddatagrid.Columns(3).Width = 1094.74
'        grddatagrid.Columns(4).Width = 795.1182
'        grddatagrid.Columns(5).Width = 675.2126
'        grddatagrid.Columns(6).Width = 3479.811
'        grddatagrid.Columns(7).Width = 1140.095
'
'        grddatagrid.Columns(7).Alignment = dbgRight
'        grddatagrid.Columns(7).NumberFormat = "#0.000"
'        grddatagrid.Columns(1).Visible = False
'        grddatagrid.Columns(0).Visible = False
'        grddatagrid.Columns(2).Visible = False
intervalMinutes = -1
On Error GoTo GRIDALIGN_Error

    grddatagrid.Columns(0).Width = 0
    grddatagrid.Columns(0).Caption = "Division Code"
    
    grddatagrid.Columns(1).Width = 0                      '929.7639
    grddatagrid.Columns(1).Caption = "Category Code"
    grddatagrid.Columns(2).Width = 840.189
    grddatagrid.Columns(2).Caption = "Lot No."
    grddatagrid.Columns(3).Width = 1100                 '929.7639
    grddatagrid.Columns(4).Width = 0                        '1484.787
    grddatagrid.Columns(5).Width = 900                      '1230.236
    grddatagrid.Columns(5).Caption = "   Closing      Bales"
    grddatagrid.Columns(5).Alignment = dbgRight
    grddatagrid.Columns(6).Width = 1200                     '1335.118
    grddatagrid.Columns(6).Caption = "        Closing         Weight"
    grddatagrid.Columns(6).NumberFormat = "###0.000"
    grddatagrid.Columns(7).Width = 1200                     '1154.835
    
    grddatagrid.Columns(7).Caption = "Lot Type"
    grddatagrid.Columns(7).Alignment = dbgLeft
    grddatagrid.Columns(8).Caption = "Lot Year"
    grddatagrid.Columns(6).Alignment = dbgRight

Exit Sub
GRIDALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRIDALIGN of Form godtrans", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub GRdlock()
For I = 0 To grddatagrid.Columns.Count - 1
grddatagrid.Columns(I).Locked = True
Next
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.Visible = True
    UserFooter1.ZOrder 0
    Command5.Visible = True
    UserFooter1.ClearFooter
    'SSTab1.Enabled = False
    UserFooter1.Load
    'UserFooter1.ClearFooter

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
        UserFooter1.Visible = False
        Frame5.Visible = False
        Command5.Visible = False
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    UserFooter1.ZOrder 1
    Command5.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
        UserFooter1.Visible = False
        Frame5.Visible = False
        Command5.Visible = False
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

txtfields(Index).BackColor = &HC0FFC0
Select Case Index
    Case 3
        StatusBar1.Panels(2).Text = "Enter Remarks, Maximum 30 Characters"
End Select
Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

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
        'Call BUTTON_Click(3)    ''List
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
        'Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        'Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
    If Index = 3 Then
        If KeyAscii = 9 Or KeyAscii = 13 Then grddatagrid.SetFocus
    End If
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

txtfields(Index).BackColor = &HFFFFFF

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
If Index = 1 Then
    Set Rs = New Recordset
    Rs.Open "select gname from rm_god where gcode='" & txtfields(1).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic
   
    If Rs.RecordCount = 0 Then
      StatusBar1.Panels(2).Text = "Select Godown from the List"
      LookUp.Clear = True
      LookUp.query = "Select gcode""Godown Code"",gname""Godown Name"" from rm_god where DivCode = '" & Divcode & "'"
      LookUp.Caption = "Godown Listing"
      LookUp.DefCol = "Godown Name"
      LookUp.ALIGN = "1500,3500"
      LookUp.Show vbModal
      If LookUp.Cancel = False Then
         Text1.Text = LookUp.Fields(1)
         txtfields(1).Text = LookUp.Fields(0)
         Text1.Locked = True
         LookUp.Clear = True
      Else
         txtfields(1).SetFocus
         Exit Sub
      End If
 Else
    Text1.Text = Rs("gname")
    Exit Sub
 End If
    
End If
If Frame2.Visible = False Then
If Index = 2 Then
    Set Rs = New Recordset
    Rs.Open "select gname from rm_god where gcode='" & txtfields(2).Text & "' and gcode<>'" & txtfields(1).Text & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic
      
    If Rs.RecordCount = 0 Then
         StatusBar1.Panels(2).Text = "Select Godown from the List"
         LookUp.Clear = True
         LookUp.query = "Select gcode""Code"",gname""Name"" from rm_god where gcode<>'" & txtfields(1).Text & "' and DivCode = '" & Divcode & "'"
         LookUp.Caption = "Godown Listing"
         LookUp.DefCol = "Name"
         LookUp.ALIGN = "1500,3500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            Text2.Text = LookUp.Fields(1)
            txtfields(2).Text = LookUp.Fields(0)
            Text2.Locked = True
            LookUp.Clear = True
         Else
            txtfields(2).SetFocus
            Exit Sub
         End If
    Else
       Text2.Text = Rs("gname")
       Exit Sub
    End If
End If
End If
If Index = 3 Then
    txtfields(3).Text = UCase(txtfields(3).Text)
End If
End If

Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Validate of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub prnhead(pg As Integer)
On Error GoTo prnhead_Error

    Print #f,
   
    Print #f, Chr(18)
    Print #f, CENTRE(Chr(27) + "E" + divname, 80, " " + Chr(27) + "F")
    Print #f, Chr(15)
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Godown Transfer List" & Space(40) + Space(1) + Format(pdate, "dd/mm/yy") & "  Pg. : " & Padl(pg, 3, " ")
    Print #f, Space(5) & String(80, "-")
    Print #f, Space(5) & " Doc. Doc.Dt. M.Lot.  Lot.Dt  From Godown      To godown       Remarks"
    Print #f, Space(5) & "  No.            No.    "
    
    'Print #f, Space(5) & " Doc.   Doc.Dt From Godown      To godown       M.Lot.   Lot.Dt    Remarks"
    'Print #f, Space(5) & "  No.                                              No.    "

    Print #f, Space(5) & String(80, "-")

Exit Sub
prnhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prnhead of Form godtrans", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub header5(From_date1 As String, To_date1 As String, I As Integer, pg1 As Integer)
On Error GoTo header5_Error

        Print #f,
        I = I + 1
        SR = CStr(pdate) + Space(2)
        Print #f, Space(0) & Chr(27) & "E" & CENTRE(divname, 80, " ") & Chr(27) & "F"
        I = I + 1
        Print #f, Chr(18)
        I = I + 1
        Print #f, Space(5) & "Godown Transfer Report ";
        Print #f, Space(32) & Format(pdate, "DD/MM/YY") & Space(2) & " Pg.: " & Padl(pg1, 3, " ")
        I = I + 1
        Print #f, Space(5) + String(75, "-")
        I = I + 1

Exit Sub
header5_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header5 of Form godtrans", vbInformation, head
Screen.MousePointer = 0
        
End Sub

