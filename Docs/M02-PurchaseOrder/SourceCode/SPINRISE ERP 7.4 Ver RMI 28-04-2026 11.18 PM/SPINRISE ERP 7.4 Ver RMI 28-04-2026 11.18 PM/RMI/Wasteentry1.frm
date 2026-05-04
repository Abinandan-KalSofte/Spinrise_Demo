VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form Wasteentry1 
   Caption         =   "Waste Packing"
   ClientHeight    =   7950
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11370
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin RMI.UserFooter UserFooter1 
      Height          =   4425
      Left            =   6210
      TabIndex        =   50
      Top             =   1170
      Visible         =   0   'False
      Width           =   4080
      _ExtentX        =   7197
      _ExtentY        =   7805
   End
   Begin VB.Frame Frame4 
      Height          =   570
      Left            =   4830
      TabIndex        =   44
      Top             =   585
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command1 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   375
         Left            =   4170
         TabIndex        =   51
         Top             =   135
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   2985
         TabIndex        =   46
         Top             =   195
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   45
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
         Height          =   285
         Left            =   180
         TabIndex        =   47
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   26
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   5310
         Picture         =   "Wasteentry1.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Waste Packing Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":0442
         Enabled         =   0   'False
         Height          =   550
         Index           =   6
         Left            =   2640
         Picture         =   "Wasteentry1.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   555
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":0BD9
         Height          =   550
         Index           =   0
         Left            =   0
         Picture         =   "Wasteentry1.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":1276
         Enabled         =   0   'False
         Height          =   550
         Index           =   5
         Left            =   2100
         Picture         =   "Wasteentry1.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":1A25
         Enabled         =   0   'False
         Height          =   550
         Index           =   7
         Left            =   3210
         Picture         =   "Wasteentry1.frx":1E6F
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":21BF
         Height          =   550
         Index           =   11
         Left            =   5835
         Picture         =   "Wasteentry1.frx":2609
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   105
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":299E
         Height          =   550
         Index           =   9
         Left            =   4260
         Picture         =   "Wasteentry1.frx":2CA8
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Wasteentry1.frx":304A
         Height          =   550
         Index           =   10
         Left            =   4785
         Picture         =   "Wasteentry1.frx":3354
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel  (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":36D0
         Enabled         =   0   'False
         Height          =   550
         Index           =   8
         Left            =   3735
         Picture         =   "Wasteentry1.frx":3B1A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":3E7C
         Height          =   550
         Index           =   4
         Left            =   1575
         Picture         =   "Wasteentry1.frx":4186
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":451B
         Height          =   550
         Index           =   1
         Left            =   525
         Picture         =   "Wasteentry1.frx":4825
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wasteentry1.frx":4B9F
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
         Picture         =   "Wasteentry1.frx":4EA9
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
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
         Left            =   7395
         TabIndex        =   28
         Top             =   255
         Width           =   60
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
         Left            =   8805
         TabIndex        =   27
         Top             =   270
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5790
      Left            =   360
      TabIndex        =   21
      Top             =   1155
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
      TabCaption(0)   =   "                   "
      TabPicture(0)   =   "Wasteentry1.frx":5245
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Height          =   1800
         Left            =   150
         TabIndex        =   36
         Top             =   120
         Width           =   9540
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   7
            Left            =   3270
            Locked          =   -1  'True
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   990
            Width           =   4305
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "packno_code"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   6
            Left            =   1680
            TabIndex        =   15
            Top             =   990
            Width           =   1575
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Doc_no"
            ForeColor       =   &H00000000&
            Height          =   360
            Index           =   1
            Left            =   5640
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   240
            Width           =   1935
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00FFFFFF&
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
            ItemData        =   "Wasteentry1.frx":5261
            Left            =   1680
            List            =   "Wasteentry1.frx":526B
            TabIndex        =   12
            Top             =   240
            Width           =   2535
         End
         Begin VB.ComboBox Combo2 
            BackColor       =   &H00FFFFFF&
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
            ItemData        =   "Wasteentry1.frx":5291
            Left            =   1680
            List            =   "Wasteentry1.frx":52A1
            Style           =   2  'Dropdown List
            TabIndex        =   17
            Top             =   1365
            Width           =   1560
         End
         Begin MSMask.MaskEdBox MaskEdBox 
            DataField       =   "DATE"
            Height          =   300
            Left            =   1680
            TabIndex        =   14
            Top             =   645
            Width           =   1305
            _ExtentX        =   2302
            _ExtentY        =   529
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
            Height          =   345
            Left            =   1680
            TabIndex        =   49
            Top             =   630
            Width           =   1590
            _ExtentX        =   2805
            _ExtentY        =   609
            _Version        =   393216
            Format          =   40566785
            CurrentDate     =   38478
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Pack No. Type"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   390
            TabIndex        =   43
            Top             =   1080
            Width           =   1080
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   4
            Left            =   390
            TabIndex        =   42
            Top             =   675
            Width           =   345
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Document No."
            Height          =   195
            Index           =   1
            Left            =   4260
            TabIndex        =   41
            Top             =   300
            Width           =   1035
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Waste Type"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   390
            TabIndex        =   40
            Top             =   300
            Width           =   870
         End
         Begin VB.Label Label5 
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
            Height          =   285
            Left            =   5640
            TabIndex        =   39
            Top             =   690
            Width           =   1935
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Total Weight"
            Height          =   195
            Left            =   4260
            TabIndex        =   38
            Top             =   690
            Width           =   915
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Shift"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   390
            TabIndex        =   37
            Top             =   1455
            Width           =   315
         End
      End
      Begin VB.Frame Frame2 
         Height          =   3645
         Left            =   150
         TabIndex        =   35
         Top             =   1980
         Width           =   9585
         Begin MSDataGridLib.DataGrid grdDataGrid 
            Height          =   3285
            Left            =   120
            TabIndex        =   18
            Top             =   240
            Width           =   9315
            _ExtentX        =   16431
            _ExtentY        =   5794
            _Version        =   393216
            AllowArrows     =   -1  'True
            BackColor       =   16777215
            ForeColor       =   0
            HeadLines       =   1
            RowHeight       =   15
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
   End
   Begin VB.Frame Frame5 
      Height          =   1875
      Left            =   1200
      TabIndex        =   29
      Top             =   2040
      Width           =   5820
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   375
         Index           =   100
         Left            =   3195
         MaxLength       =   8
         TabIndex        =   32
         Top             =   750
         Width           =   1155
      End
      Begin VB.CommandButton FindOK 
         Caption         =   "O.K"
         Height          =   390
         Left            =   1365
         TabIndex        =   31
         Top             =   1335
         Width           =   1110
      End
      Begin VB.CommandButton FindCancel 
         Caption         =   "Cancel"
         Height          =   390
         Left            =   2970
         TabIndex        =   30
         Top             =   1335
         Width           =   1110
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Find By Document Number"
         Height          =   195
         Left            =   945
         TabIndex        =   34
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
         TabIndex        =   33
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
         TabIndex        =   19
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
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   48
      Top             =   10755
      Width           =   20370
      _ExtentX        =   35930
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "06/02/2020"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "12:58 PM"
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
      ForeColor       =   &H00FF0000&
      Height          =   345
      Left            =   435
      TabIndex        =   20
      Top             =   675
      Width           =   1905
   End
End
Attribute VB_Name = "Wasteentry1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim c2 As Double
Dim startno As Integer
Dim Row As Integer
Dim C1 As Double
Dim adoSecondaryRS As Recordset
Dim Rs As Recordset
Dim DB As Connection
Dim Opt As String
Dim Str As String
Dim PC As String
Dim rs1 As New Recordset
Dim sp As New Recordset
Public type1 As String
Dim rsCommand1 As Recordset
Dim New1DocNo   As Double
Dim st1 As String
Dim st2 As String
Dim SNO As Integer
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
On Error GoTo BUTTON_Click_Error

 Select Case Index
    Case 0
     If ToValidFinYear(Divcode) = False Then Exit Sub
        ' add
         If Record_Exists("ig_rproduct where (Wastetype like 'U%' or Wastetype like 'S%')", "Please Define the Waste type in Master") = False Then Exit Sub
         
         Opt = "add"
         desc.Caption = "Addition"
         stbar.Panels(2).Text = "Addition"
         DB.BeginTrans
         SSTab1.Tab = 0
         Set adoprimaryrs = New Recordset
         adoprimaryrs.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate,shift from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.PRODUCT_CODE and a.doc_type='O' AND 1=2", DB, adOpenStatic, adLockOptimistic
         adoprimaryrs.AddNew
         Set adoSecondaryRS = New Recordset
         adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_product b where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
         Set grdDataGrid.DataSource = adoSecondaryRS
         adoSecondaryRS.AddNew
         grdDataGrid.Enabled = True
         grdDataGrid.EditActive = True
         grdDataGrid.AllowUpdate = True
         Call ENABLCONTLS
         Call bindcontls
         Call nullText  'To null the Textboxes
         'TXTFIELDS(5).Text = ""
         'TXTFIELDS(3).Text = ""
         'TXTFIELDS(4).Text = ""
         Label5.Caption = ""
         SNO = 0
         twt = 0
'         Set RS1 = New Recordset
'         RS1.Open "select isnull(max(LAST_NO),0) from IG_DOCCONTROL where divcode='" & Divcode & "' and year_no='" & YearNo & "' and DOC_TYPE='I ' and DOC_REF = 'WS' and DESCRIPTION = 'WASTE SALES'  and START_NO = '1 ' ", DB, adOpenStatic, adLockBatchOptimistic
'         New1DocNo = RS1(0) + 1
'         txtfields(1).Text = YearNo & Padl(CStr(New1DocNo), 6, "0")
         txtfields(1).Enabled = False
         Call adddelmod(BUTTON)
         'TXTFIELDS(2).Enabled = True
         MaskEdBox.Text = pdate
         'TXTFIELDS(2).Enabled = True
         SSTab1.Enabled = True
         Frame1.Enabled = True
         MaskEdBox.Enabled = True
         'TXTFIELDS(2).Locked = True
         'TXTFIELDS(3).Locked = True
         txtfields(1).Locked = True
         Combo1.SetFocus
         Combo1.ListIndex = 0
         Combo1.BackColor = &HC0FFC0
         'MaskEdBox.SetFocus
         Call GRIDALIGN
         grdDataGrid.Columns(0).Visible = True
         Combo2.ListIndex = 3
         DTPicker1.MinDate = yfdate
         MaskEdBox.Text = Format(pdate, "dd/mm/yyyy")
         
  Case 1
            ' Modification
             If ToValidFinYear(Divcode) = False Then Exit Sub
            If Record_Exists("IG_RPACKHD") = False Then Exit Sub
            Opt = "mod"
            desc.Caption = "Modification"
            ''Screen.MousePointer = 11
            Frame1.Enabled = True
            'Combo1.SetFocus
            LookUp.clear = True
            'LookUp.Query = "select convert(integer,doc_no)""DocumentNo."",Date from IG_RPACKHD where obflag is null"
            LookUp.query = "Select Distinct CONVERT(INTEGER,a.DOC_NO)""Document No."",a.Date 'Document Date' from IG_RPACKHD a,IG_RPACKDT b Where a.divcode = B.divcode and a.doc_No=b.doc_No and (b.type like 'U%' or b.type like 'S%')and a.obflag is null order by CONVERT(INTEGER,a.doc_no)"
            LookUp.DefCol = "Document No."
            LookUp.Caption = "Waste packing listing"
            LookUp.ALIGN = "2000,3000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            SSTab1.Visible = True
            DB.BeginTrans
            Screen.MousePointer = 11
            
            
            Buttonframe.Enabled = True
            If Opt = "mod" Then
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKhd a where a.divcode='" & Divcode & "' and doc_no= '" & LookUp.Fields(0) & "' and date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                 'adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.PRODUCT_CODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "' UNION select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,RM_WASTETYPE b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.WCODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                ''adoPrimaryRS.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',b.type,a.shift from IG_RPACKHD a Where a.divcode='" & Divcode & "' and a.doc_type='O' AND doc_no= '" & LookUp.Fields(0) & "' and date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and a.obflag is null order by a.doc_no", DB, adOpenStatic, adLockBatchOptimistic
                If Not Rs.EOF Then
                    Call bindcontls
                    MaskEdBox.Text = Format(adoprimaryrs("date"), "dd/mm/yyyy")
'                    Set rs = New Recordset
'                    rs.Open "Select description AS description from ig_product where product_code='" & adoPrimaryRS("product_code") & "' and divcode='" & Divcode & "' UNION Select WDES AS description from RM_WASTETYPE where Wcode='" & adoPrimaryRS("product_code") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic
'                    If Not rs.EOF Then txtfields(3).Text = rs(0)
                    Set adoSecondaryRS = New Recordset
                    ''adoSecondaryRS.Open "select sl_no'Sl.No.',spack_no'Bale No.',pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.'from IG_RPACKDT where doc_no='" & LookUp.Fields(0) & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    adoSecondaryRS.Open "select  Distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & LookUp.Fields(0) & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = adoSecondaryRS
                    Call GRIDALIGN
                    SSTab1.Enabled = True
                    MaskEdBox.Enabled = False
                    Combo1.Locked = True
                    Combo2.Locked = True
                    
                   ' Frame1.Enabled = False
                   'TXTFIELDS(2).Locked = True
                    'TXTFIELDS(3).Locked = True
                    txtfields(1).Locked = True
                End If

            Else
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_rproduct b where a.divcode='" & Divcode & "' and a.doc_type='I' AND doc_no= '" & LookUp.Fields(0) & "' and date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                 'adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "' UNION select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,RM_WASTETYPE b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.WCODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockOptimistic
                If Not Rs.EOF Then
                    Call bindcontls
                    MaskEdBox.Text = Format(adoprimaryrs("date"), "dd/mm/yyyy")
                    Set Rs = New Recordset
                    Rs.Open "Select description from ig_rproduct where product_code='" & adoprimaryrs("product_code") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                    If Not Rs.EOF Then txtfields(3).Text = Rs(0)
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where a.product_code=b.product_code and doc_no='" & LookUp.Fields(0) & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = adoSecondaryRS
                    Call GRIDALIGN
                End If
         
            End If
            Else
                Screen.MousePointer = 0
            Exit Sub
            End If
            LookUp.clear = True
            Screen.MousePointer = 0
''            listlb.Caption = "Waster Entry"
''            ksldesc1.conn = connectstring
'''            Ksldesc1.table = "IG_RPACKHD a,ig_product b where a.product_code=b.product_code and a.product_code like 'W%' "
'''            Ksldesc1.listfield1 = "(doc_no+'-'+b.description) as DocNo"
'''            Ksldesc1.listfield2 = "date"
''            ksldesc1.table = "(select a.doc_no,a.date,b.Description as description from IG_RPACKHD a,ig_product b where a.product_code=b.product_code union select a.doc_no,a.date,b.wdes as description from IG_RPACKHD a,rm_wastetype b where a.product_code=b.wcode)x "
''            ksldesc1.listfield1 = "(x.doc_no+'-'+x.description) as DocNo"
''            'Ksldesc1.listfield1 = "x.doc_no as DocNo"
''            ksldesc1.listfield2 = "x.date"
''            ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select Document Number from the List"
            Call adddelmod(BUTTON)
            Call ENABLCONTLS
            Combo1.Locked = True
            Combo2.Locked = True
            txtfields(1).Locked = True
            MaskEdBox.Enabled = False
            Screen.MousePointer = 0
            
            
  Case 2
   If ToValidFinYear(Divcode) = False Then Exit Sub
            If Record_Exists("IG_RPACKHD") = False Then Exit Sub
            Opt = "del"
            desc.Caption = "Deletion"
            ''Screen.MousePointer = 11
            
            LookUp.clear = True
            LookUp.query = " Select Distinct convert(integer,a.doc_no)""Document No."",a.Date""Document Date""  from " & _
                           " IG_RPACKHD a, IG_RPACKDT b Where a.Divcode = b.Divcode " & _
                           " And   a.doc_type = b.Doc_type And   a.doc_no = b.Doc_no " & _
                           " And   b.Pack_type = 'B'  "
            'LookUp.Query = "select convert(integer,doc_no)""DocumentNo."",Date from IG_RPACKHD WHERE OBFLAG IS NULL "
            LookUp.DefCol = "Document No."
            LookUp.Caption = "Waste Packing Listing"
            LookUp.ALIGN = "2000,3000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            SSTab1.Visible = True
            DB.BeginTrans
            Screen.MousePointer = 11
            Buttonframe.Enabled = True
            If Opt = "mod" Then
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKhd a where a.divcode='" & Divcode & "' and a.doc_type='O' AND doc_no= '" & LookUp.Fields(0) & "' and date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                 'adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.PRODUCT_CODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "' UNION select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,RM_WASTETYPE b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.WCODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                If Not Rs.EOF Then
                    Call bindcontls
                    MaskEdBox.Text = Format(adoprimaryrs("date"), "dd/mm/yyyy")
'                    Set rs = New Recordset
'                    rs.Open "Select description AS description from ig_product where product_code='" & adoPrimaryRS("product_code") & "' and divcode='" & Divcode & "' UNION Select WDES AS description from RM_WASTETYPE where Wcode='" & adoPrimaryRS("product_code") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic
'                    If Not rs.EOF Then txtfields(3).Text = rs(0)
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select sl_no'Sl.No.',spack_no'Bale No.',pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.' from IG_RPACKDT where doc_no='" & LookUp.Fields(0) & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = adoSecondaryRS
                    Call GRIDALIGN
                    SSTab1.Enabled = True
                    MaskEdBox.Enabled = False
                    txtfields(2).Locked = True
                    txtfields(3).Locked = True
                    txtfields(1).Locked = True
                    
                End If

            Else
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKhd a where a.divcode='" & Divcode & "' and a.doc_type='O' AND doc_no= '" & LookUp.Fields(0) & "' and date='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                 'adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "' UNION select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,RM_WASTETYPE b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.WCODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockOptimistic
                If Not Rs.EOF Then
                    Call bindcontls
                    MaskEdBox.Text = Format(adoprimaryrs("date"), "dd/mm/yyyy")
'''                    Set rs = New Recordset
'''                    rs.Open "Select description from ig_rproduct where product_code='" & adoPrimaryRS("product_code") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'''                    If Not rs.EOF Then txtfields(3).Text = rs(0)
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select Distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where a.product_code=b.product_code and doc_no='" & LookUp.Fields(0) & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = adoSecondaryRS
                    Call GRIDALIGN
                End If
         
            End If
            Else
                Screen.MousePointer = 0
            Exit Sub
            End If
            LookUp.clear = True

            
'''            SSTab1.Visible = False
'''            DB.BeginTrans
'''            Frame3.Visible = True
'''            Frame3.ZOrder
'''            Buttonframe.Enabled = False
'''            listlb.Caption = "Waster Entry"
'''            ksldesc1.conn = connectstring
'''            'Ksldesc1.table = "IG_RPACKHD a,ig_product b where a.product_code=b.product_code "
'''            ksldesc1.table = "iG_RPACKhd"
'''            ksldesc1.listfield1 = "doc_no"
'''            'Ksldesc1.listfield1 = "x.doc_no as DocNo"
'''            ksldesc1.listfield2 = "date"
'''            ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select Document Number from the List"
            Call adddelmod(BUTTON)
            Call ENABLCONTLS
            Screen.MousePointer = 0

  Case 4
         If Record_Exists("IG_RPACKHD") = False Then Exit Sub
             Opt = "find"
             desc.Caption = "Find"
             
'
'             LookUp.clear = True
'
'            LookUp.Query = "Select Distinct CONVERT(INTEGER,a.DOC_NO)""Document No."",a.Date 'Document Date' from IG_RPACKHD a,IG_RPACKDT b Where a.divcode = B.divcode and a.doc_No=b.doc_No and (b.type like 'U%' or b.type like 'S%')and a.obflag is null order by CONVERT(INTEGER,a.doc_no)"
'            LookUp.DefCol = "Document No."
'            LookUp.Caption = "Waste packing listing"
'            LookUp.ALIGN = "2000,3000"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'            SSTab1.Visible = True
'            db.BeginTrans
'            Screen.MousePointer = 11
'            Call docno_find1
'          End If
            
             
             SSTab1.Enabled = True
             Frame5.Visible = True
             Frame5.ZOrder
             Frame5.Enabled = True
             txtfields(100).Locked = False
             txtfields(100).Text = ""
             Buttonframe.Enabled = False
             SSTab1.Tab = 0
             SSTab1.SetFocus
         If SSTab1.Visible = True Then
                Frame1.Enabled = True
                Frame1.Visible = True
                txtfields(100).SetFocus
         End If


  
  Case 5
'first
         On Error Resume Next
            'Set adoPrimaryRS = New Recordset
            'adoPrimaryRS.Open "select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,IG_Product b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.product_code  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO UNION select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.WDES,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,RM_WASTETYPE b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.Wcode  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO", db, adOpenStatic, adLockBatchOptimistic
            ''adoPrimaryRS.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE' from IG_RPACKHD a Where a.divcode = '" & Divcode & "' and a.obflag is null ", DB, adOpenStatic, adLockBatchOptimistic
            'adoPrimaryRS.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',b.type,a.shift from IG_RPACKHD a,IG_RPACKDT b Where a.divcode = B.divcode and a.doc_No=b.doc_No and (b.type like 'U%' or b.type like 'S%')and a.obflag is null order by a.doc_no", DB, adOpenStatic, adLockBatchOptimistic
            If Not adoprimaryrs.EOF Then
                adoprimaryrs.MoveFirst
                 
                Call bindcontls
                twt = 0
                Set adoSecondaryRS = New Recordset
                adoSecondaryRS.Open "select Distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.',type from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code*=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null", DB, adOpenStatic, adLockBatchOptimistic
               
                Do While Not adoSecondaryRS.EOF
                    twt = twt + adoSecondaryRS("Nett Wt.")
                    PACKNOCODE = adoSecondaryRS("packno_code")
                    adoSecondaryRS.MoveNext
                Loop
                
                Set rsc = New Recordset
                rsc.Open "select description from ig_packnotype where divcode='" & Divcode & "' and packno_code='" & PACKNOCODE & "'", DB, adOpenStatic
                
                If rsc.RecordCount > 0 Then
                    txtfields(6) = PACKNOCODE
                    txtfields(7).Text = rsc(0).value
                End If
        
                Label5.Caption = Format(val(twt), "0.000")
                Set grdDataGrid.DataSource = adoSecondaryRS
                Call GRIDALIGN
                If adoSecondaryRS("type") = "U" Then
                Combo1.Text = "U-Usable Waste"
                Else
                Combo1.Text = "S-Salable Waste"
                End If
              ''  grddatagrid.Enabled = False
                stbar.Panels(2).Text = "First Record"
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            End If
      
            
Case 6
'next
            On Error Resume Next
           If Not adoprimaryrs.EOF Then
                adoprimaryrs.MoveNext
           
                twt = 0
                If adoprimaryrs.EOF = False Then
                   Set adoSecondaryRS = New Recordset
                   adoSecondaryRS.Open "select Distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code*=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null ", DB, adOpenStatic, adLockBatchOptimistic
                   Do While Not adoSecondaryRS.EOF
                        twt = twt + adoSecondaryRS("Nett Wt.")
                        PACKNOCODE = adoSecondaryRS("PACKNO_CODE")
                        adoSecondaryRS.MoveNext
                   Loop
        
                   Label5.Caption = Format(val(twt), "0.000")
                   Set grdDataGrid.DataSource = adoSecondaryRS
                   Call GRIDALIGN
                   Call bindcontls
                   If adoSecondaryRS("type") = "U" Then
                       Combo1.Text = "U-Usable Waste"
                   Else
                       Combo1.Text = "S-Salable Waste"
                   End If
                   
                   
                   
                   Set rsc = New Recordset
                   rsc.Open "select description from ig_packnotype where divcode='" & Divcode & "' and packno_code='" & PACKNOCODE & "'", DB, adOpenStatic
                
                   If rsc.RecordCount > 0 Then
                        txtfields(6) = PACKNOCODE
                        txtfields(7).Text = rsc("description")
                   End If
                   Set totwtrs = New Recordset
                   totwtrs.Open "select sum(kgs) from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null", DB
                   twt = twt + totwtrs(0)
                
                 '  grddatagrid.Enabled = False
                   BUTTON(5).Enabled = True
                   BUTTON(7).Enabled = True
                   BUTTON(6).Enabled = True
                   BUTTON(8).Enabled = True
                End If
            If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
                Beep
                adoprimaryrs.MoveLast
                stbar.Panels(2).Text = "Last Record"
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                'Call NEX(BUTTON)
                'moved off the end so go back
                'adoPrimaryRS.MoveLast
                'Call bindcontls
                BUTTON(4).Enabled = True
                Beep
            End If
        ' show the current record
            Call navi(BUTTON)
            BUTTON(4).Enabled = True
        If adoprimaryrs.AbsolutePosition = adoprimaryrs.RecordCount Then
            stbar.Panels(2).Text = "Last Record"
            BUTTON(8).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(4).Enabled = True
            Beep
        Else
            BUTTON(8).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(4).Enabled = True
        End If
    End If
        Exit Sub
GoNextError:
        MsgBox Err.Description, vbInformation, head
Case 7
 'privous
 On Error Resume Next
           
           If Not adoprimaryrs.EOF Then
            adoprimaryrs.MovePrevious
            
            If adoprimaryrs.BOF = False Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null", DB, adOpenStatic, adLockBatchOptimistic
                    twt = 0
                    Do While Not adoSecondaryRS.EOF
                        twt = twt + adoSecondaryRS("Nett Wt.")
                        PACKNOCODE = adoSecondaryRS("PACKNO_CODE")
                        adoSecondaryRS.MoveNext
                    Loop
                
                    Label5.Caption = Format(val(twt), "0.000")
        '            Set adoSecondaryRS = New Recordset
        '            adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.',type from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoPrimaryRS("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code*=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = adoSecondaryRS
                    Call GRIDALIGN
                    Call bindcontls
                    If adoSecondaryRS("type") = "U" Then
                    Combo1.Text = "U-Usable Waste"
                    Else
                    Combo1.Text = "S-Salable Waste"
                    End If
                    twt = 0
                    Set rsc = New Recordset
                   rsc.Open "select description from ig_packnotype where divcode='" & Divcode & "' and packno_code='" & PACKNOCODE & "'", DB, adOpenStatic
                     
                    If rsc.RecordCount > 0 Then
                         txtfields(6) = PACKNOCODE
                         txtfields(7).Text = rsc(0).value
                    End If
                    Set totwtrs = New Recordset
                    totwtrs.Open "select sum(kgs) from IG_RPACKDT a,ig_product b where DOC_NO= '" & adoprimaryrs("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null", DB
                    twt = twt + totwtrs(0)
                 
                '    grddatagrid.Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            End If
        If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
        'Call PREV(BUTTON)
        adoprimaryrs.MoveFirst
    End If
        'show the current record
        Call navi(BUTTON)
        BUTTON(4).Enabled = True
    If adoprimaryrs.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(4).Enabled = True
        Beep
    Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(4).Enabled = True
    End If
     End If
        Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head
        
       
Case 8
'last
           On Error Resume Next
           If Not adoprimaryrs.EOF Then
           adoprimaryrs.MoveLast
           If adoprimaryrs.RecordCount > 1 Then
                pr = adoprimaryrs("doc_no")
                dr = adoprimaryrs("date")
           End If
           Call bindcontls
           twt = 0
           Set adoSecondaryRS = New Recordset
           adoSecondaryRS.Open "select Distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs("doc_no") & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null", DB, adOpenStatic, adLockBatchOptimistic
           Do While Not adoSecondaryRS.EOF
               twt = twt + adoSecondaryRS("Nett Wt.")
               PACKNOCODE = adoSecondaryRS("PACKNO_CODE")
               adoSecondaryRS.MoveNext
           Loop
        
           Label5.Caption = Format(val(twt), "0.000")
           
           Set rsc = New Recordset
           rsc.Open "select description from ig_packnotype where divcode='" & Divcode & "' and packno_code='" & PACKNOCODE & "'", DB, adOpenStatic
                
           If rsc.RecordCount > 0 Then
                 txtfields(6) = PACKNOCODE
                 txtfields(7).Text = rsc(0).value
            End If
            Set grdDataGrid.DataSource = adoSecondaryRS
            Call GRIDALIGN
            If adoSecondaryRS("type") = "U" Then
                Combo1.Text = "U-Usable Waste"
            Else
                Combo1.Text = "S-Salable Waste"
            End If
            'grddatagrid.Enabled = False
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
         End If
    Case 9
        '   Save
      
        On Error GoTo saveerror
        
        If Opt = "add" Then
            If Not IsDate(MaskEdBox.Text) = True Then
                MsgBox "Please enter the Valid Date", vbInformation, head
                MaskEdBox.SetFocus
                Exit Sub
            ElseIf Combo1.Text = "" Then
                MsgBox "Please select the Waste Type", vbInformation, head
                Combo1.SetFocus
                Exit Sub
            ElseIf txtfields(6).Text = "" Then
                MsgBox "Please select the Pack No. Type", vbInformation, head
                txtfields(6).SetFocus
                Exit Sub
            ElseIf Combo2.Text = "" Then
                MsgBox "Please select the Valid Shift", vbInformation, head
                Combo2.SetFocus
                Exit Sub
            ElseIf grdDataGrid.Columns(3).Text = "" Then
                MsgBox "Please enter the Gross Weight", vbInformation, head
                grdDataGrid.Col = 3
                grdDataGrid.SetFocus
                Exit Sub
            End If
            
'            GROSSWT = 0
'            TAREWT = 0
'            netwt = 0
            If Opt = "add" Then
                Set rs1 = New Recordset
                rs1.Open "select isnull(max(convert(integer,Doc_No)),0) from IG_RPACKHD  where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic
                 If rs1.RecordCount > 0 Then
                    New1DocNo = val(rs1(0)) + 1
                 Else
                    New1DocNo = 1
                 End If
                 txtfields(1).Text = New1DocNo
            End If
            


            GrossWt = val(grdDataGrid.Columns(3).Text)
            TAREWT = val(grdDataGrid.Columns(4).Text)
            'netwt = val(GrdDataGrid.Columns(5).Text)
            If GrossWt <> 0 Then
                adoSecondaryRS.MoveFirst
                Do While Not adoSecondaryRS.EOF
                        If IsNull(adoSecondaryRS(3)) = True Or val(adoSecondaryRS(3).value) = 0 Then
                            adoSecondaryRS.Delete
                        Else
                                GrossWt = GrossWt + val(adoSecondaryRS(3).value)
                                TAREWT = TAREWT + val(tarwt)
                                netwt = netwt + val(adoSecondaryRS(4).value)
                        End If
                        
                    adoSecondaryRS.MoveNext
                Loop
                trate = 0
                cust_code = ""
                
                adoprimaryrs("DIVCODE") = Divcode
                adoprimaryrs("DOC_TYPE") = "O"
                adoprimaryrs("DOC_NO") = txtfields(1).Text
                adoprimaryrs("DATE") = Format(MaskEdBox.Text, "yyyy-mm-dd")
                adoprimaryrs("PRODUCT_CODE") = ""
                adoprimaryrs("PROD_KGS") = val(netwt)
                adoprimaryrs("Use_SrKgs") = "N" 'txtfields(8).Text / txtfields(10).Text
                adoprimaryrs("user_id") = usrid
                adoprimaryrs("entdate") = Format(Date, "yyyy-mm-dd")
                adoprimaryrs("shift") = Trim(Combo2.Text)
                adoprimaryrs.UpdateBatch adAffectAll
                ' To insert the Line Details into IG_RPACKDT
                    
                    K = 0
                    adoSecondaryRS.MoveFirst
                    Do While Not adoSecondaryRS.EOF
    
                     K = K + 1
    
                            DB.Execute "Insert into IG_RPACKDT (DivCode,Doc_Type,Doc_No,Sl_No,Product_Code," & _
                            "Pack_Year,PackNo_Code,Pack_Type,Lot_Code,SPack_No,EPack_No,Pack_Wt,Tare,Kgs,TYPE) Values " & _
                            "('" & Divcode & "','O','" & txtfields(1).Text & "'," & K & ",'" & UCase(adoSecondaryRS(1)) & _
                            "','" & YearNo & "','" & txtfields(6).Text & "','B' " & _
                            ",'WL'," & adoSecondaryRS(0).value & "," & adoSecondaryRS(0).value & "," & adoSecondaryRS(3).value & _
                            ", " & val(tarwt) & "," & adoSecondaryRS(4).value & ",'" & Trim(Left(Combo1.Text, 1)) & "')"
                            
                            DB.Execute "INSERT INTO IG_RPACKNOS (DIVCODE,PACK_YEAR,PACKNO_CODE,PACK_NO,PROD_DATE,PACK_TYPE,PRODUCT_CODE,PACK_WT,tare,LOT_CODE,INVOICED,DOCNO)" & _
                                        " VALUES( '" & Divcode & "','" & YearNo & "','" & txtfields(6).Text & "'," & val(adoSecondaryRS(0).value) & ",'" & Format(MaskEdBox.Text, "YYYY-MM-DD") & "','B','" & UCase(adoSecondaryRS(1)) & "'," & val(adoSecondaryRS(4).value) & "," & val(tarwt) & " ,'WL','N','" & txtfields(1).Text & "')"
                        
                    
                    adoSecondaryRS.MoveNext
                    Loop
                
                ' To insert the Pack Number details into the Table IG_RPACKNOS
                Opt = "add"
    '-------
'                    Else
'                    MsgBox "Enter a Gross Weight", vbInformation, head
'                    GrdDataGrid.Col = 3
'                    GrdDataGrid.SetFocus
'                    Exit Sub
                End If

    
                DB.CommitTrans
                Screen.MousePointer = 0
                MsgBox " Record(s) Saved", vbInformation, head
                    
                stbar.Panels(2).Text = "Record(s) Saved"
                SNO = 0
                twt = 0
                Call Query_mode
                Exit Sub
                End If
        
        If Opt = "mod" Then
            
            GrossWt = 0
            TAREWT = 0
            netwt = 0
            adoSecondaryRS.MoveFirst
            Do While Not adoSecondaryRS.EOF
                    If IsNull(adoSecondaryRS(3)) = True Or val(adoSecondaryRS(3).value) = 0 Then
                        adoSecondaryRS.Delete
                    Else
                            GrossWt = GrossWt + val(adoSecondaryRS(3).value)
                            TAREWT = TAREWT + val(tarwt)
                            netwt = netwt + val(adoSecondaryRS(4).value)
                    End If
                    
                adoSecondaryRS.MoveNext
            Loop
            trate = 0
            cust_code = ""
            
            If Opt = "mod" Then
                DB.Execute "Update IG_RPACKHD set PROD_Kgs=" & netwt & "  where date='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "' and Doc_No='" & txtfields(1).Text & "' ", a
                adoSecondaryRS.MoveFirst
                Do While Not adoSecondaryRS.EOF
                    DB.Execute "update IG_RPACKNOS set PACK_WT=" & adoSecondaryRS(4).value & " ,tare=" & val(tarwt) & "  where prod_date='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "' and pack_no=" & adoSecondaryRS(0) & "  and packno_code='" & txtfields(6).Text & "'", B
                    DB.Execute "Update IG_RPACKDT set pack_wt='" & adoSecondaryRS(3).value & "',tare=" & val(tarwt) & ",kgs='" & adoSecondaryRS(4).value & "'    where Doc_No='" & txtfields(1).Text & "' and spack_no='" & adoSecondaryRS(0) & "'   and packno_code='" & txtfields(6).Text & "'", X
                adoSecondaryRS.MoveNext
                Loop
            End If
            
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record(s) Modified", vbInformation, head
            stbar.Panels(2).Text = "Record(s) Modified"
            Opt = ""
            Call Query_mode
            Call cancl1(BUTTON, 26)
            Exit Sub
        End If
        If Opt = "del" Then
            f% = MsgBox("Are you sure you want to delete this Record?", vbOKCancel, head)
            If f% = 1 Then
                Do While Not adoSecondaryRS.EOF
                    'db.Execute "update ig_wastetrn set pack_kgs=pack_kgs-" & IIf(grddatagrid.Columns(4).Text = "", 0, Val(grddatagrid.Columns(4).Text)) & " where product_code='" & adoPrimaryRS("product_code") & "' and pdate='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "'", a
                    DB.Execute "delete from  IG_RPACKNOS where divcode='" & Divcode & "'  and product_code='" & adoSecondaryRS(1) & "' and prod_date='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "' and pack_no=" & adoSecondaryRS("Bale No.") & "   and packno_code='" & txtfields(6).Text & "'", a
                    adoSecondaryRS.MoveNext
                Loop
                    DB.Execute "delete from IG_RPACKDT where doc_no='" & txtfields(1).Text & "' AND DIVCODE='" & Divcode & "'"
                    DB.Execute "delete from  IG_RPACKHD where divcode='" & Divcode & "' and doc_no= '" & txtfields(1).Text & "' and date='" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "'", a
                    MsgBox "Record(s) Deleted Successfully", vbInformation, head
                    DB.CommitTrans
                    Call Query_mode
                    Screen.MousePointer = 0
                    Exit Sub
            Else
                    MsgBox "Operation Cancelled", vbInformation, head
                    DB.RollbackTrans
                    Call Query_mode
                    Screen.MousePointer = 0
                    Exit Sub
            End If
        End If
                          
saveerror:     'If Opt = "add" Then
                If Err.Number <> 0 Then
                    MsgBox Err.Description, vbInformation, head
                    Screen.MousePointer = 0
                    DB.RollbackTrans
                    Opt = " "
                    Call Query_mode
                    Exit Sub
               End If
   Case 10
        'CANCEL
        If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
        On Error Resume Next
            desc.Caption = "Query"
            Screen.MousePointer = 11
            Select Case Opt
            Case "mod"
                DB.RollbackTrans
            Case "add"
                'TXTFIELDS(6).Text = ""
                'TXTFIELDS(7).Text = ""
                'TXTFIELDS(8).Text = ""
                'TXTFIELDS(9).Text = ""
                'TXTFIELDS(10).Text = ""
                DB.RollbackTrans
          Case "del"
                DB.RollbackTrans
        End Select
        Screen.MousePointer = 0
        stbar.Panels(2).Text = "Operation Cancelled"
        Opt = " "
        Call Query_mode
        Call cancl1(BUTTON, 26)
        
    Case 11
        'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
        Unload Me
        
     Case 12
     
            Frame4.Visible = True
            Frame4.ZOrder 0
            Option5.value = True
            Option5.SetFocus
            SSTab1.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
            UserFooter1.ClearFooter
'            Command1.Visible = False
            Buttonframe.Enabled = False

   Exit Sub
  End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Wasteentry1", vbInformation, head
End Sub

Public Sub WRG1Details()
On Error GoTo WRG1Details_Error

    Set rs1 = New Recordset
    rs1.Open "select PACK_WT  from IG_rproduct  where PRODUCT_CODE= '" & txtfields(2).Text & "' and divcode =  '" & Divcode & "'", DB, adOpenStatic
    Set sp = New Recordset
    sp.Open "select OPEN_KGS,PACKS,PACK_KGS,LOOSE_KGS,prod_kgs ,isnull(HOME_KGS,0)+isnull(EXP_KGS,0)+isnull(AR3A_KGS,0)as salekg,PROD_PKGS,PROD_PACKS,OP_PACKKGS,OP_PACKS from IG_RG1TRN where PRODUCT_CODE='" & txtfields(2).Text & "' and divcode = '" & Divcode & "' AND  date = (select max(date) from IG_RG1TRN where product_code='" & txtfields(2) & "' and divcode='" & Divcode & "')", DB, adOpenStatic, adLockBatchOptimistic
    
    If sp.RecordCount <= 0 Then
    End If
    
    If rs1.RecordCount > 0 And Not sp.EOF Then
         oPKGS = (val(sp("OPEN_KGS")) + val(sp("prod_kgs"))) - val(sp("salekg"))
'         txtfields(7).Text = (Val(txtfields(6).Text) - sp("loose_kgs")) / Val(rs1("pack_wt"))
'         txtfields(8).Text = Val(txtfields(7).Text * rs1("pack_wt"))
'         txtfields(9).Text = Round(Val(txtfields(6).Text - txtfields(8).Text), 2)
'         txtfields(10).SetFocus
    Else
        oPKGS = 0
    End If


Exit Sub
WRG1Details_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure WRG1Details of Form Wasteentry1", vbInformation, head
End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

    Combo1.BackColor = &HC0FFC0

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form Wasteentry1", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyDown of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

If Opt = "add" Then
    If Combo1.Text = " " Then
        MsgBox "Select any Type from the drop down list", vbInformation, head
        Combo2.SetFocus
        Exit Sub
  Else
'         Set rs1 = New Recordset
'         rs1.Open "select isnull(max(convert(integer,Doc_No)),0) from IG_RPACKHD  where divcode='" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' ", DB, adOpenStatic
'         If rs1.RecordCount > 0 Then
'            New1DocNo = val(rs1(0)) + 1
'         Else
'            New1DocNo = 1
'         End If
'         TXTFIELDS(1).Text = New1DocNo
  End If
  End If

Combo1.BackColor = &HFFFFFF
Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form Wasteentry1", vbInformation, head
End Sub

Private Sub Combo2_GotFocus()
On Error GoTo Combo2_GotFocus_Error

    Combo2.BackColor = &HC0FFC0
    stbar.Panels(2).Text = "Select a Shift"

Exit Sub
Combo2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_GotFocus of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_LostFocus()
On Error GoTo Combo2_LostFocus_Error

    If Opt = "add" And grdDataGrid.VisibleRows = 1 Then
        Set Rs = New Recordset
        Rs.Open "select isnull(max(pack_no),0)  from IG_RPACKNOS where divcode='" & Divcode & "' AND PACKNO_CODE='" & txtfields(6).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then
            If Rs(0) = 0 Then
                grdDataGrid.Columns(0).Text = 1
            Else
                grdDataGrid.Columns(0).Text = Rs(0) + 1
            End If
        Else
            grdDataGrid.Columns(0).Text = 1
        End If
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
        Combo2.BackColor = &HFFFFFF
        Exit Sub
    End If
    Combo2.BackColor = &HFFFFFF

Exit Sub
Combo2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo2_LostFocus of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    If txtfields(1).Text <> "" Then
        Set rptv = New Report.ReportView
        a = FreeFile
        Open KALFOLDERDATA & "\wentry.TXT" For Output As #a
        Set rs1 = New Recordset
        'select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.PRODUCT_CODE,b.description, unit = case b.uom when 'K'then 'KGS' when 'M' then 'Meter' else ' ' end , a.pack_wt,a.spack_no, a.kgs,a.type from IG_RPACKDT A, IG_RPRODUCT B where a.product_code=b.product_code and a.divcode='01' and a.doc_type='O' and a.doc_no='1'
        rs1.Open "select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.PRODUCT_CODE,b.description, b.uom, unit = case b.uom when 'K'then 'KGS' when 'M' then 'Meter' else ' ' end, a.pack_wt,a.spack_no, a.kgs,a.type from IG_RPACKDT A, IG_RPRODUCT B where a.product_code=b.product_code and a.divcode='" & Divcode & "' and a.doc_type='O' and a.doc_no='" & CStr(Trim(txtfields(1).Text)) & "'", DB, adOpenStatic
        Print #a, Space(5); Chr(27); "E"; CENTRE(Trim(divname), 85, " "); Chr(27); "F"
        Set Rs = New Recordset
        Rs.Open "SELECT Distinct DOC_NO, DATE,doc_type,shift FROM Ig_rpackhd where doc_no='" & Trim(txtfields(1).Text) & "' and date = '" & Format(MaskEdBox.Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
        Print #a,
        Print #a, Space(5); Chr(27) + "E" + CENTRE("WASTE ENTRY SLIP", 85, " ") + Chr(27) + "F"
        Print #a,
        Print #a, Space(5); "Waste Type  : " & Padr(Combo1.Text, 30, " "); Space(24) & "Doc.No.: "; Padr(txtfields(1).Text, 10, " ")
        Print #a, Space(5); "Shift       : " & Padr(Rs("shift"), 30, " "); Space(24) & "Date   : "; Format(MaskEdBox.Text, "dd/mm/yy")
        Print #a, Space(5); String(85, "-")
        Print #a, Space(5); "Bale No." + Space(3) + "Description" + Space(37) + "Gross Wt." + Space(10) + "Net Wt."
        Print #a, Space(5); String(85, "-")
        K = 1
        cou = 11
        grtot = 0
        netot = 0
        Do While Not rs1.EOF
            Print #a, Space(5) + Padl(rs1("spack_no"), 8, " ") + Space(3) + Padr(rs1("Description"), 40, " ") + Space(1) + Padl(Format(rs1("pack_wt"), "#0.000"), 16, " ") + Space(1) + Padl(Format(rs1("kgs"), "#0.000"), 16, " ")
            cou = cou + 1
            K = K + 1
            i = i + 1
            grtot = grtot + rs1("pack_wt")
            netot = netot + rs1("kgs")
            If i >= 8 Then
                    Print #a,
                    Print #a, Space(5); String(80, "-")
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a, Space(5); Chr(27); "E"; CENTRE(Trim(divname), 85, " "); Chr(27); "F"
                    Print #a,
                    Print #a, Space(5); Chr(27) + "E" + CENTRE("WASTE ENTRY SLIP", 85, " ") + Chr(27) + "F"
                    Print #a,
                    Print #a, Space(5); "Waste Type  : " & Padr(Combo1.Text, 30, " "); Space(24) & "Doc.No.: "; Padr(txtfields(1).Text, 4, " ")
                    Print #a, Space(5); "Shift       : " & Padr(Rs("shift"), 30, " "); Space(24) & "Date   : "; Format(MaskEdBox.Text, "dd/mm/yy")
                    Print #a, Space(5); String(85, "-")
                    Print #a, Space(5); "Bale No." + Space(3) + "Description" + Space(37) + "Gross Wt." + Space(10) + "Net Wt."
                    Print #a, Space(5); String(85, "-")
                    cou = 0
                    i = 0
              End If
            rs1.MoveNext
        Loop
        
        For J = 0 To 27 - cou
            Print #a,
        Next
        Print #a, Space(5); String(85, "-")
        Print #a, Space(5) + Padl("  ", 8, " ") + Space(3) + Padr("Grand Total", 40, " ") + Space(1) + Padl(Format(grtot, "#0.000"), 16, " ") + Space(1) + Padl(Format(netot, "#0.000"), 16, " ")
        Print #a, Space(5); String(85, "-")
        Print #a,
        Print #a,
        'Call FOOTER_PRINT(87, CStr(a), 3)
        Call footermod(CInt(1), UserFooter1.SelectedStr, 85)
        Print #a,
        Print #a,
        Print #a,
        Close #a
        a = FreeFile
        Call KALBATPROCESS("wentry")
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

    MaskEdBox.Text = DTPicker1.value
    MaskEdBox.SetFocus

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error

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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
If KeyCode = vbKeyEscape Then
    If Frame4.Visible = True Then
        Frame5.Visible = False
        Frame4.Visible = False
        UserFooter1.Visible = False
'        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.ConnectionTimeout = 0
    DB.CommandTimeout = 0
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    DATLAB.Caption = Date
    Opt = "qry"
    stbar.Panels(1).Text = head
    YearNo = Year(yfdate)
    Set tarers = New Recordset
    tarers.Open "select tarewt from rm_param", DB, adOpenStatic
    tarwt = tarers(0)
    SSTab1.Visible = True
    Frame5.Visible = False
    
    Call Query_mode
    Call NEWFORM1(BUTTON, GSNO)
    SSTab1.Enabled = False
    
'    Set adoSecondaryRS = New Recordset
'    adoSecondaryRS.Open "select distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_product b where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
'    Set grddatagrid.DataSource = adoSecondaryRS

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Wasteentry1", vbInformation, head
End Sub

Public Sub Query_mode()
    On Error Resume Next
'On Error GoTo QUERY_MODE_Error

    Opt = " "
    BUTTON(9).Enabled = False
    
    Set Rs = New Recordset
'    Rs.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE," & _
        "b.Description 'PrDesc',c.pack_type ,c.Description 'PkDesc',e.packno_code," & _
        "d.Description 'PNDesc',e.kgs,e.tare,0 as 'NoPks',E.TYPE from IG_RPACKHD a,IG_Product b,IG_packtype c," & _
        "IG_packnotype d,IG_RPACKDT e Where a.divcode = B.divcode and a.doc_No=e.doc_No " & _
        "and a.product_Code=e.product_code and a.product_code=b.product_code " & _
        "and e.pack_type=c.pack_type and e.packno_code=d.packno_code and a.product_code like 'W%'", DB, adOpenStatic, adLockReadOnly
    Rs.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,CONVERT(INTEGER,a.DOC_NO)DOC_NO,a.Date 'DATE',b.type,a.shift,b.packno_code from IG_RPACKHD a,IG_RPACKDT b Where a.date between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' And a.divcode = B.divcode and a.doc_No=b.doc_No and (b.type like 'U%' or b.type like 'S%')and a.obflag is null order by CONVERT(INTEGER,a.doc_no)", DB, adOpenStatic, adLockReadOnly
    Set adoprimaryrs = New Recordset
    adoprimaryrs.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,CONVERT(INTEGER,a.DOC_NO)DOC_NO,a.Date 'DATE',b.type,a.shift from IG_RPACKHD a,IG_RPACKDT b Where a.divcode = B.divcode and a.doc_No=b.doc_No and (b.type like 'U%' or b.type like 'S%')and a.obflag is null order by CONVERT(INTEGER,a.doc_no)", DB, adOpenStatic, adLockBatchOptimistic
    
    If Rs.EOF <> True Then
        Rs.MoveLast
        adoprimaryrs.MoveLast
        txtfields(1).Text = Rs!doc_no
        MaskEdBox.Text = Format(Rs!Date, "dd/mm/yyyy")
        
        Set rs1 = New Recordset
        rs1.Open "Select Description from ig_packnotype where Packno_code ='" & Rs!packno_code & "'", DB, adOpenStatic
        If rs1.EOF = False Then
            txtfields(7).Text = rs1(0)
        Else
            txtfields(7).Text = ""
        End If
        
        
        
        txtfields(6).Text = Rs!packno_code
'        txtFields(7).Text = Rs!PnDesc
        Combo2.Text = Rs!Shift
        If Rs!Type = "U" Then
        Combo1.Text = "U-Usable Waste"
        Else
        Combo1.Text = "U-Salable Waste"
        End If
        twt = 0
        If adoprimaryrs.RecordCount > 0 Then
            Call bindcontls
        End If
        Set adoSecondaryRS = New Recordset
        'adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.'from IG_RPACKDT a,ig_product b where DOC_NO= '" & rs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.type='" & rs!Type & "'", db, adOpenStatic, adLockBatchOptimistic
        adoSecondaryRS.Open "select Distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.',a.Packno_code from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null ", DB, adOpenStatic, adLockBatchOptimistic
                
        Do While Not adoSecondaryRS.EOF
            twt = twt + adoSecondaryRS("Nett Wt.")
'            PACKNOCODE = adoSecondaryRS("packno_code")
            adoSecondaryRS.MoveNext
        Loop
        
        Set rsc = New Recordset
        rsc.Open "select description from ig_packnotype where divcode='" & Divcode & "' and packno_code='" & PACKNOCODE & "'", DB, adOpenStatic
        
        If rsc.RecordCount > 0 Then
            txtfields(6).Text = PACKNOCODE
            txtfields(7).Text = rsc(0).value
        End If
        
        Label5.Caption = Format(val(twt), "0.000")
        
        Set grdDataGrid.DataSource = Nothing
    
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select Distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null ", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoSecondaryRS
'        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
    Else
        MsgBox "No Record Found", vbInformation, head
        Set grdDataGrid.DataSource = Nothing
    
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_product b where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoSecondaryRS
        
        bindcontls
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
    Call NEWFORM1(BUTTON, GSNO)

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form Wasteentry1", vbInformation, head
 End Sub

Public Sub bindcontls()
    On Error Resume Next
        For Each c In Me.Controls
            If TypeOf c Is TextBox Then
             '' Set c.DataSource = adoPrimaryRS
            End If
        Next
        
        Set txtfields(1).DataSource = adoprimaryrs
        Set MaskEdBox.DataSource = adoprimaryrs
'       Set grdDataGrid.DataSource = adoSecondaryRS
End Sub
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ENABLCONTLS()
On Error GoTo ENABLCONTLS_Error

      Frame1.Enabled = True
      For Each c In Me.Controls
        If TypeOf c Is TextBox Then
          c.Locked = False
        End If
      Next
      Frame1.Enabled = True
      'Frame2.Enabled = True
'      Frame4.Enabled = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Resize()
On Error GoTo Form_Resize_Error

    On Error Resume Next
    stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)

Exit Sub
Form_Resize_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Resize of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
Dim Rs As Recordset
On Error GoTo grdDataGrid_AfterColEdit_Error

If ColIndex = 0 Then
    If grdDataGrid.Columns(0).Text = Empty Or grdDataGrid.Columns(0).Text = "" Then
        stbar.Panels(2).Text = "Bale Number cannot be empty"
    Else
        Set Rs = New Recordset
        Rs.Open "select 'X'  from IG_RPACKNOS where divcode='" & Divcode & "' AND PACKNO_CODE='" & txtfields(6).Text & "' AND PACK_NO=" & val(adoSecondaryRS(1).value) & "", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
            stbar.Panels(2).Text = "Bale No already exists."
            SendKeys ("{delete}")
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            st = "A"
            Exit Sub
        End If
        Opt = "  "
        Code = grdDataGrid.Columns(1).Text
        a = adoSecondaryRS.AbsolutePosition
        adoSecondaryRS.MoveFirst
        For i = 1 To adoSecondaryRS.RecordCount
            If val(a) <> i Then
            If val(Code) = val(adoSecondaryRS(1).value) Then
                stbar.Panels(2).Text = "Bale Number should not repeat"
                adoSecondaryRS.AbsolutePosition = a
                SendKeys ("{delete}")
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
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
If Record_Exists("IG_rProduct where (Wastetype like 'U%' or Wastetype like 'S%') and divcode='" & Divcode & "'", "Please Define the Waste type in Master") = False Then Exit Sub
        
        Set Rs = New Recordset
        Rs.Open " select description from ig_product where product_code='" & UCase(grdDataGrid.Columns(1).Text) & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
        grdDataGrid.Columns(1).Text = UCase(grdDataGrid.Columns(1).Text)
        grdDataGrid.Columns(2).Text = Rs(0)
        grdDataGrid.Col = 3
        grdDataGrid.SetFocus
        Else
        Frame3.Visible = True
                Frame3.ZOrder
'                Buttonframe.Enabled = False
                listlb.Caption = "Product List"
                Ksldesc1.conn = connectstring
                Ksldesc1.Table = "IG_Product where divcode='" & Divcode & "'  and wastetype='" & Left(Combo1.Text, 1) & "'"
                Ksldesc1.listfield1 = "PRODUCT_CODE"
                Ksldesc1.listfield2 = "DESCRIPTION"
                Ksldesc1.SetFocus
                type1 = "product"
                stbar.Panels(2).Text = "Select Product Code from the List"
                Ksldesc1.SetFocus
        End If
End If
If Opt = "add" Or Opt = "mod" Then
        If Opt = "add" Then
            If grdDataGrid.Col = 4 Then
            grdDataGrid.Columns(4).Text = val(grdDataGrid.Columns(2).Text) - val(grdDataGrid.Columns(3).Text)
            End If
        ElseIf Opt = "mod" Then
            If grdDataGrid.Col = 3 And grdDataGrid.Columns(3).Text <> "" Then
                grdDataGrid.Columns(4).Text = val(grdDataGrid.Columns(3).Text) - val(tarwt)
                grdDataGrid.Columns(4).Locked = True
            End If
            'grddatagrid.Columns(4).Text = val(grddatagrid.Columns(2).Text) - val(grddatagrid.Columns(3).Text)
        End If
End If


Exit Sub
grdDataGrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form Wasteentry1", vbInformation, head

End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

If Opt = "add" And KeyCode = vbKeyTab And grdDataGrid.Col = 4 And Len(grdDataGrid.Columns(4).Text) > 0 And (adoSecondaryRS.AbsolutePosition = adoSecondaryRS.RecordCount) Then
        adoSecondaryRS.AddNew
        adoSecondaryRS.MovePrevious
        startno = val(grdDataGrid.Columns(0).Text)
        twt = twt + val(grdDataGrid.Columns(4).Text)
        Label5.Caption = Format(val(twt), "0.000")
        startno = startno + 1
        adoSecondaryRS.MoveNext
        grdDataGrid.Columns(0).Text = startno
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
End If
If grdDataGrid.Col = 1 And Opt = "add" Then
If Record_Exists("ig_rproduct where (Wastetype like 'U%' or Wastetype like 'S%') and divcode='" & Divcode & "'", "Please Define the Waste type in Master") = False Then Exit Sub
        
        Set Rs = New Recordset
        Rs.Open " select description from ig_rproduct where product_code='" & UCase(grdDataGrid.Columns(1).Text) & "'", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            grdDataGrid.Columns(1).Text = UCase(grdDataGrid.Columns(1).Text)
            grdDataGrid.Columns(2).Text = Rs(0)
            grdDataGrid.Col = 3
            grdDataGrid.SetFocus
        Else
            LookUp.clear = True
            LookUp.query = "select product_code""Product Code"",Description""Product Description""  from ig_rproduct where divcode='" & Divcode & "'  and wastetype='" & Left(Combo1.Text, 1) & "'"
            LookUp.Caption = "Waste Listing"
            LookUp.DefCol = "Product Description"
            LookUp.ALIGN = "2000,4000"
            LookUp.Show vbModal
             If LookUp.Cancel = False Then
            
             'Command1.Visible = True
              Buttonframe.Enabled = True
              Frame3.Visible = False
              SSTab1.Visible = True
              'Command1.Visible = True
               disRe = ""  'Flag that is used to check whether Dispose & Reuse are Enabled or Not.
                grdDataGrid.Columns(1).Text = LookUp.Fields(0)
                grdDataGrid.Columns(2).Text = LookUp.Fields(1)
                LookUp.clear = True
                'TXTFIELDS(2).Enabled = False
                'TXTFIELDS(3).Enabled = False
               ' grddatagrid.Columns(3).Text = " "
                grdDataGrid.Col = 3
                grdDataGrid.SetFocus
            Else
            grdDataGrid.Col = 3
            grdDataGrid.SetFocus
            End If
        
'''        Frame3.Visible = True
'''                Frame3.ZOrder
''''                Buttonframe.Enabled = False
'''                listlb.Caption = "Product List"
'''                ksldesc1.conn = connectstring
'''                ksldesc1.table = "ig_rproduct where divcode='" & Divcode & "'  and wastetype='" & Left(Combo1.Text, 1) & "'"
'''                ksldesc1.listfield1 = "PRODUCT_CODE"
'''                ksldesc1.listfield2 = "DESCRIPTION"
'''                ksldesc1.SetFocus
'''                type1 = "product"
'''                stbar.Panels(2).Text = "Select Product Code from the List"
'''                ksldesc1.SetFocus
        End If
  End If
If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If
If Opt = "mod" Then
    
    If KeyCode = 9 And grdDataGrid.Col = 3 Then
        If adoSecondaryRS.AbsolutePosition <> adoSecondaryRS.RecordCount Then
            grdDataGrid.Row = grdDataGrid.Row + 1
            grdDataGrid.Col = 2
            grdDataGrid.SetFocus
        End If
    End If
End If


Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form Wasteentry1", vbInformation, head
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error Resume Next
    If Opt = "add" And LastRow = Empty Then
        If grdDataGrid.Col = 4 And grdDataGrid.Columns(3).Text = "" Then
        'MsgBox " Enter The Gross Weight", vbInformation, head
        grdDataGrid.Col = 3
        grdDataGrid.SetFocus
        Else
            If LastRow = Empty And grdDataGrid.Columns(3).Text <> "" Then
                grdDataGrid.Columns(4).Text = val(grdDataGrid.Columns(3).Text) - val(tarwt)
                grdDataGrid.Columns(4).Locked = True
            End If
        End If
    ElseIf Opt = "mod" Then
        
    End If
End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

        stbar.Panels(2).Text = ""
        Buttonframe.Enabled = True
        Frame3.Visible = False
        SSTab1.Visible = True
        Frame1.Enabled = True
        Screen.MousePointer = 0
        stbar.Panels(2).Text = "Operation Cancelled"

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub lovok_Click()
          
On Error GoTo lovok_Click_Error

          SSTab1.Visible = True
          'Command1.Visible = True
          Buttonframe.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          'Command1.Visible = True
          
        Select Case Ksldesc1.listfield1
        Case "PRODUCT_CODE"
            disRe = ""  'Flag that is used to check whether Dispose & Reuse are Enabled or Not.
            grdDataGrid.Columns(1).Text = Ksldesc1.Code
            grdDataGrid.Columns(2).Text = Ksldesc1.Description
            txtfields(2).Enabled = False
            txtfields(3).Enabled = False

            grdDataGrid.Col = 3
            grdDataGrid.SetFocus
                
                
            
        Case "wcode as PRODUCT_CODE"
                 txtfields(2).Text = Ksldesc1.Code
                 txtfields(3).Text = Ksldesc1.Description
                 txtfields(2).Enabled = False
                 txtfields(3).Enabled = False
'                 Set rs = New Recordset
'                 'rs.Open "select sum(a.netwt) -isnull((select sum(b.netwt) from rm_wissue b where  b.wcode='" & grddatagrid.Columns(5).Text & "' and b.gcode ='" & grddatagrid.Columns(4).Text & "'),0) from rm_waste a where  a.wcode='" & grddatagrid.Columns(5).Text & "' and a.gcode ='" & grddatagrid.Columns(4).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
'                 rs.Open "select sum(a.netwt) -isnull((select sum(b.netwt) from rm_wissue b where  b.wcode='" & Ksldesc1.Code & "'),0) from rm_waste a where  a.wcode='" & Ksldesc1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
'                 If Not rs.EOF Then txtfields(10).Text = IIf(IsNull(rs(0)), 0, rs(0))
'                If Val(txtfields(10).Text) = 0 Then
'                    MsgBox "All the Production Entry Has Been Completed", vbInformation, head
'                    Exit Sub
'                End If
                Set sp = New Recordset
                sp.Open "select isnull(max(isnull(epack_no,0))+1,1) from IG_RPACKDT where type='" & Left(Combo1.Text, 1) & "' and lot_code='WL' AND PACK_YEAR='" & Right(yfdate, 1) & "'", DB, adOpenStatic
                'SP.Open "select isnull(max(isnull(pack_no,0))+1,1) from IG_Rpacknos where packno_code='" & txtfields(6).Text & "' and lot_code='WL' and prod_date between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "'", DB, adOpenStatic
                grdDataGrid.Columns(1).Text = sp(0)
                startno = sp(0)
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                
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
              grdDataGrid.Columns(7).Text = Ksldesc1.Code
              
              Set sp = New Recordset
              sp.Open "select max(epack_no) from IG_RPACKDT where product_code = '" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
              
              If Not IsNull(sp(0)) = True Then
                grdDataGrid.Columns(8).Text = val(sp(0) + 1)
                'Easwar grddatagrid.Columns(9).Text = Val(grddatagrid.Columns(8).Text) + Val(txtfields(11).Text)
                grdDataGrid.Columns(9).Text = val(sp(0)) + val(txtfields(11).Text)
              End If
              
              grdDataGrid.Col = 8
              grdDataGrid.SetFocus
              type1 = ""
              Exit Sub
         Case "pack_type"
              txtfields(4).Text = Ksldesc1.Code
              txtfields(18).Text = Ksldesc1.Description
              txtfields(4).Enabled = False
              txtfields(18).Enabled = False
              Call rg1Details
        Case "doc_no", "(x.doc_no+'-'+x.description) as DocNo"
            If Opt = "mod" Then
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_rproduct b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.PRODUCT_CODE and a.doc_type='I' AND doc_no= '" & Mid$(Ksldesc1.Code, 1, InStr(Ksldesc1.Code, "-") - 1) & "' and date='" & Format(Ksldesc1.Description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                 'adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.PRODUCT_CODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "' UNION select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,RM_WASTETYPE b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.WCODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                If Not Rs.EOF Then
                    Call bindcontls
                    MaskEdBox.Text = Format(adoprimaryrs("date"), "dd/mm/yyyy")
                    Set Rs = New Recordset
                    Rs.Open "Select description AS description from ig_product where product_code='" & adoprimaryrs("product_code") & "' and divcode='" & Divcode & "' UNION Select WDES AS description from RM_WASTETYPE where Wcode='" & adoprimaryrs("product_code") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic
                    If Not Rs.EOF Then txtfields(3).Text = Rs(0)
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select sl_no'Sl.No.',spack_no'Bale No.',pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.' from IG_RPACKDT where doc_no='" & Mid$(Ksldesc1.Code, 1, InStr(Ksldesc1.Code, "-") - 1) & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = adoSecondaryRS
                    Call GRIDALIGN
                    SSTab1.Enabled = True
                    MaskEdBox.Enabled = False
                    txtfields(2).Locked = True
                    txtfields(3).Locked = True
                    txtfields(1).Locked = True
                    
                End If

            Else
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_rproduct b where a.divcode='" & Divcode & "' and a.doc_type='I' AND doc_no= '" & Ksldesc1.Code & "' and date='" & Format(Ksldesc1.Description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
                 'adoPrimaryRS.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,IG_product b where a.divcode='" & Divcode & "' and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "' UNION select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',a.PRODUCT_CODE,a.PROD_KGS,a.USE_SRKGS,a.user_id,a.entdate from IG_RPACKHD a,RM_WASTETYPE b where a.divcode='" & Divcode & "' and a.PRODUCT_CODE=b.WCODE and a.doc_type='I' AND doc_no= '" & Mid$(ksldesc1.Code, 1, InStr(ksldesc1.Code, "-") - 1) & "' and date='" & Format(ksldesc1.description, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockOptimistic
                If Not Rs.EOF Then
                    Call bindcontls
                    MaskEdBox.Text = Format(adoprimaryrs("date"), "dd/mm/yyyy")
                    Set Rs = New Recordset
                    Rs.Open "Select description from ig_rproduct where product_code='" & adoprimaryrs("product_code") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                    If Not Rs.EOF Then txtfields(3).Text = Rs(0)
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_product b where a.product_code=b.product_code and doc_no='" & Ksldesc1.Code & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = adoSecondaryRS
                    Call GRIDALIGN
                End If
         
            End If
   End Select

Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form Wasteentry1", vbInformation, head
        
End Sub

Private Sub MaskEdBox_GotFocus()
On Error GoTo MaskEdBox_GotFocus_Error

    MaskEdBox.BackColor = &HC0FFC0
    stbar.Panels(2).Text = "Select a Valid Date"

Exit Sub
MaskEdBox_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox_GotFocus of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox_KeyDown_Error

If (KeyCode = 13 Or KeyCode = 9) And Opt = "add" Then
    Set sp = New Recordset
    sp.Open "select isnull(max(isnull(epack_no,0))+1,1) from IG_RPACKDT where divcode='" & Divcode & "' and lot_code='WL' and type='" & Left(Combo1.Text, 1) & "' and obflag is null", DB, adOpenStatic
    If Not sp.EOF Then
        grdDataGrid.Columns(0).Text = sp(0)
        startno = sp(0)
    End If
    grdDataGrid.Col = 1
    grdDataGrid.SetFocus
    MaskEdBox.BackColor = &HC0FFC0
    Exit Sub
End If

Exit Sub
MaskEdBox_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox_KeyDown of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox_LostFocus()
On Error GoTo MaskEdBox_LostFocus_Error

    MaskEdBox.BackColor = &HFFFFFF

Exit Sub
MaskEdBox_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox_LostFocus of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox_Validate(Cancel As Boolean)
'If MaskEdBox.Text <> "__/__/____" Then
'    MaskEdBox.Text = Format(MaskEdBox.Text, "dd/mm/yyyy")
'End If
On Error GoTo MaskEdBox_Validate_Error

On Error GoTo MaskEdBox_Validate_Error

If (MaskEdBox.Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
   If Not (IsDate(MaskEdBox.Text)) Then
      MsgBox ("Please enter a valid date"), vbInformation, head
      MaskEdBox.Text = pdate
      MaskEdBox.SetFocus
      Cancel = True
   ElseIf CDate(MaskEdBox.Text) > pdate Then
      MsgBox ("Date must be earlier or equal to the Processing date"), vbInformation, head
      MaskEdBox.SetFocus
      Cancel = True
   Else
    ''TXTFIELDS(1).SetFocus
   End If
'   If MaskEdBox.Text <> pdate Then
'      MsgBox ("Date should be equal to processing date"), vbInformation, head
'      MaskEdBox.SetFocus
'      Cancel = True
'   End If
End If

Exit Sub
MaskEdBox_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox_Validate of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0

End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
'    Command1.Visible = True

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

    If KeyCode = vbKeyEscape Then
        Frame4.Visible = False
        UserFooter1.Visible = False
'        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
'    Command1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

    If KeyCode = vbKeyEscape Then
        Frame4.Visible = False
        UserFooter1.Visible = False
'        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

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

txtfields(Index).BackColor = &HC0FFC0

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

    If KeyCode = 13 And Opt = "add" Then
        SendKeys ("{TAB}")
        Exit Sub
    End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

Call ToUpCase(txtfields, KeyAscii)
 If Opt = "add" Then
 Select Case Index

       Case 2
     Case 6, 10, 14, 8, 12, 16, 9, 13, 17, 20, 21
           Call ToWeight(txtfields(Index), 7, KeyAscii)
     Case 5
            Call ToWeight(txtfields(Index), 3, KeyAscii)
      Case 7, 11, 15
            Call ToNumber1(txtfields(Index), 5, KeyAscii)
       
    ' To set Focus to Reuse
        Case 11
            If KeyAscii = 9 Then
                Cancel = True
                txtfields(20).SetFocus
                Exit Sub
            End If
  End Select
 End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ToNum1(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
On Error GoTo tonum1_Error

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

Exit Sub
tonum1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure tonum1 of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If Frame3.Visible = True Then
    Ksldesc1.SetFocus
End If
If Opt = "add" Then
Select Case Index
    Case 11
            txtfields(12).SetFocus
            
    Case 20
            
            If txtfields(20).Text = "" Then
                Cancel = True
                txtfields(20).SetFocus
                Exit Sub
             Else
                Cancel = True
                txtfields(21).SetFocus
                Exit Sub
             End If
 End Select
 End If
txtfields(Index).BackColor = &HFFFFFF

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Then
 Select Case Index
    Case 2
        
           'If Left(Combo1.Text, 1) = "S" Then
           
            Set rs1 = New Recordset
            rs1.Open "select PRODUCT_CODE,description from IG_Product where divcode = '" & Divcode & "' and PRODUCT_CODE='" & Trim(txtfields(2).Text) & "'", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                txtfields(2).Text = rs1("PRODUCT_CODE")
                txtfields(3).Text = rs1("description")
                Set Rs = New Recordset
                Rs.Open "select * from ig_packnotype where packno_code='" & txtfields(2).Text & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                If Not Rs.EOF Then
                    txtfields(6).Text = Rs(1)
                    txtfields(7).Text = Rs(2)
                    Set adoPrimaryRS1 = New Recordset
                    adoPrimaryRS1.Open "select a.PACK_WT, a.pack_type , b.description desc1 from  IG_PRODUCT a , IG_packtype  b  where PRODUCT_code='" & txtfields(2).Text & "' and divcode = '" & Divcode & "'  ", DB, adOpenStatic
                    txtfields(4).Text = adoPrimaryRS1("Pack_type")
                    txtfields(5).Text = adoPrimaryRS1("desc1")
                    Set Rs = New Recordset
                    Rs.Open "select * from ig_packnotype where packno_code='" & txtfields(6).Text & "'", DB, adOpenStatic
                    If Not Rs.EOF Then
                        txtfields(6).Text = Rs(1)
                        txtfields(7).Text = Rs(2)
                        Set sp = New Recordset
                        sp.Open "select isnull(max(isnull(epack_no,0))+1,1) from IG_RPACKDT where product_code = '" & Trim(txtfields(2).Text) & "' and packno_code='" & txtfields(6).Text & "' and lot_code='WL'", DB, adOpenStatic
                        If Not Rs.EOF Then
                            grdDataGrid.Columns(1).Text = sp(0)
                            startno = sp(0)
                        End If
                        grdDataGrid.Col = 2
                        grdDataGrid.SetFocus
                        Exit Sub
                    End If
                    Exit Sub
                Else
                    MsgBox "Please Modify this Product type", vbInformation, head
                    Exit Sub
                End If
                type1 = "product"
                txtfields(2).Enabled = False
                txtfields(3).Enabled = False
                Set Rs = New Recordset
                If (Left(Trim(txtfields(2).Text), 1) = "W" Or Left(Trim(txtfields(2).Text), 1) = "w") Then
                    'txtFields(20).Enabled = True
                    'txtFields(21).Enabled = True
                    disRe = "Enabled"
                    Lkgs = 0
                Else
                    txtfields(20).Text = 0
                    txtfields(21).Text = 0
                    txtfields(20).Enabled = False
                    txtfields(21).Enabled = False
                End If
                txtfields(10).Enabled = True
                
                If Opt = "add" And (type1 = "product") Then
                    Set adoPrimaryRS1 = New Recordset
                    adoPrimaryRS1.Open "select PACK_WT,pack_type from IG_PRODUCT a where divcode = '" & Divcode & "' and PRODUCT_code='" & Trim(txtfields(2).Text) & "' ", DB, adOpenStatic, adLockOptimistic
                    txtfields(5).Text = adoPrimaryRS1(0)
                    type1 = ""
                    If IsNull(adoPrimaryRS1(1)) Then
                        SSTab1.Visible = False
                        Frame3.Visible = True
                        Frame3.ZOrder
'                        Buttonframe.Enabled = False
                        listlb.Caption = "Pack Type"
                        Ksldesc1.conn = connectstring
                        Ksldesc1.Table = "IG_packtype"
                        Ksldesc1.listfield1 = "pack_type"
                        Ksldesc1.listfield2 = "DESCRIPTION"
                        Ksldesc1.SetFocus
                        stbar.Panels(2).Text = "Select Pack Type from the List"
                    Else
                        Set adoPrimaryRS1 = New Recordset
                        adoPrimaryRS1.Open "select a.pack_type,b.description from IG_PRODUCT a ,IG_packtype b where PRODUCT_code='" & Trim(txtfields(2).Text) & "' and a.pack_type=b.pack_type and a.divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
                        txtfields(4).Text = adoPrimaryRS1(0)
                       ' txtFields(18).Text = adoprimaryrs1(1)
                        txtfields(4).Enabled = False
                        txtfields(18).Enabled = False
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
                Ksldesc1.conn = connectstring
                Ksldesc1.Table = "IG_Product where Product_Code like 'W%' and divcode='" & Divcode & "'  and wastetype='" & Left(Combo1.Text, 1) & "'"
                Ksldesc1.listfield1 = "PRODUCT_CODE"
                Ksldesc1.listfield2 = "DESCRIPTION"
                Ksldesc1.SetFocus
                type1 = "product"
                stbar.Panels(2).Text = "Select Product Code from the List"
                Ksldesc1.SetFocus
            End If
    
    
    Case 6
            Set Rs = New Recordset
            Rs.Open "Select * from IG_packnotype  where packno_code ='" & txtfields(6).Text & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            If Not Rs.EOF Then
                txtfields(7).Text = Rs("description")
            Else
                
                LookUp.clear = True
                LookUp.query = "Select Packno_Code""Code"",Description from ig_packnotype where divcode='" & Divcode & "'"
                LookUp.ALIGN = "1500,3000"
                LookUp.Caption = "PackNo Type Listing"
                LookUp.DefCol = "Description"
                LookUp.Show vbModal
                
                If LookUp.Cancel = False Then
                    txtfields(6).Text = LookUp.Fields(0)
                    txtfields(7).Text = LookUp.Fields(1)
                    LookUp.clear = True
                    Combo2.SetFocus
                    Exit Sub
                Else
                    txtfields(7).Text = ""
                    txtfields(6).Text = ""
                    txtfields(6).SetFocus
                    Exit Sub
                End If
            End If

    Case 10
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Exit Sub
        
    Case 11
           If ((val(txtfields(11).Text) * val(txtfields(5).Text)) > (val(txtfields(9).Text) + val(txtfields(10).Text))) Then
                nop = CInt((val(txtfields(9).Text) + val(txtfields(10).Text)) / val(txtfields(5).Text))
                msg = "Number of Packs can't be greater than " & (nop - 1) & ""
                MsgBox msg, vbInformation, head
'                SSTab1.TabVisible(0) = True
 '               txtfields(11).Text = ""
  '              Cancel = True
   '             txtfields(11).SetFocus
                Exit Sub
            
            Else
                txtfields(12).Text = val(txtfields(11).Text) * val(txtfields(5).Text)
                txtfields(13).Text = (val(txtfields(9).Text) + val(txtfields(10).Text)) - (val(txtfields(12).Text))
                txtfields(14).Text = val(txtfields(6).Text) + val(txtfields(10).Text)
                txtfields(15).Text = val(txtfields(7).Text) + val(txtfields(11).Text)
                txtfields(16).Text = val(txtfields(8).Text) + val(txtfields(12).Text)
                txtfields(17).Text = val(txtfields(14).Text) - val(txtfields(16).Text)
               
                txtfields(12).Enabled = True
                txtfields(13).Enabled = True
                txtfields(14).Enabled = False
                txtfields(15).Enabled = False
                txtfields(16).Enabled = False
                txtfields(17).Enabled = False
                txtfields(12).SetFocus
             End If
     
    Case 12
        If Trim(txtfields(12).Text) = "" Then Exit Sub
                'txtfields(12).Text = Val(txtfields(11).Text) * Val(txtfields(5).Text)
                txtfields(13).Text = (val(txtfields(9).Text) + val(txtfields(10).Text)) - (val(txtfields(12).Text))
                txtfields(14).Text = val(txtfields(6).Text) + val(txtfields(10).Text)
                txtfields(15).Text = val(txtfields(7).Text) + val(txtfields(11).Text)
                txtfields(16).Text = val(txtfields(8).Text) + val(txtfields(12).Text)
                txtfields(17).Text = val(txtfields(14).Text) - val(txtfields(16).Text)
               
                txtfields(12).Enabled = True
                txtfields(13).Enabled = True
                txtfields(14).Enabled = False
                txtfields(15).Enabled = False
                txtfields(16).Enabled = False
                txtfields(17).Enabled = False
                txtfields(12).SetFocus
           If (disRe = "") And (val(txtfields(11).Text) > 0) Then
                        Call Gridcall ' Procedure for Line Details.
              ElseIf (disRe = "Enabled") And (val(txtfields(11).Text) > 0) Then
                        txtfields(13).Enabled = True
                        txtfields(20).Enabled = True
                        txtfields(21).Enabled = True
                        stbar.Panels(2).Text = "Enter a Maximum of 7 Digits with a maximum of 2 Digits"
                        Cancel = True
                        txtfields(20).SetFocus
                        Exit Sub
               ElseIf (disRe = "Enabled") And (val(txtfields(11).Text) = 0) Then
                        Cancel = True
                        txtfields(20).SetFocus
                        Exit Sub
        Else
            If (val(txtfields(11).Text) > 0) Then
                Call Gridcall ' Procedure for Line Details.
            End If
        End If

 Case 13
        txtfields(14).Text = val(txtfields(6).Text) + val(txtfields(10).Text)
        txtfields(15).Text = val(txtfields(7).Text) + val(txtfields(11).Text)
        txtfields(16).Text = val(txtfields(8).Text) + val(txtfields(12).Text)
        txtfields(17).Text = val(txtfields(14).Text) - val(txtfields(16).Text)
        txtfields(19).Text = val(txtfields(10).Text)
 Case 20
        If Trim(txtfields(20).Text) = Null Or Trim(txtfields(20).Text) = "" Then
            MsgBox "Please enter Dispose", vbInformation, head
            txtfields(20).SetFocus
            Exit Sub
        
        ElseIf (val(txtfields(13).Text) - val(txtfields(20).Text) < 0) Then
            MsgBox "Please enter valid dispose values", vbInformation, head
            txtfields(20).Text = ""
            txtfields(20).SetFocus
            Exit Sub
        Else
            txtfields(21).SetFocus
            Exit Sub
        End If
        
 
 Case 21
        If Trim(txtfields(21).Text) = Null Or Trim(txtfields(21).Text) = "" Then
            MsgBox "Please enter Dispose", vbInformation, head
            txtfields(20).SetFocus
            Exit Sub
        ElseIf (val(txtfields(13).Text) - (val(txtfields(20).Text) + val(txtfields(21).Text)) < 0) Then
            MsgBox "Please enter valid reuse values", vbInformation, head
            txtfields(21).Text = ""
            Exit Sub
            
         Else
            Lkgs = txtfields(13).Text
            txtfields(13).Text = Lkgs - (val(txtfields(20).Text) + val(txtfields(21).Text))
            If Trim(txtfields(11).Text) <> 0 Then
               Call Gridcall 'Procedure for Line Details.
            Else
               BUTTON(9).SetFocus 'To Save the Record
            End If
        End If
 End Select
End If

Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Validate of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub nullText()
    'TXTFIELDS(6).Text = ""
    'TXTFIELDS(7).Text = ""
    'TXTFIELDS(8).Text = ""
    'TXTFIELDS(9).Text = ""
    'TXTFIELDS(10).Text = ""
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
           Set adoprimaryrs = New Recordset
           'adoPrimaryRS.Open "select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,IG_Product b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.product_code  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO UNION select a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.WDES,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,c.description as desc1 from IG_RPACKHD a,RM_WASTETYPE b,IG_packtype c where a.divcode='" & Divcode & "' and DOC_TYPE='I' AND a.product_code=b.Wcode  and b.pack_type=c.pack_type and a.doc_no='" & docNo & "' ORDER BY DOC_NO", db, adOpenStatic, adLockBatchOptimistic
           adoprimaryrs.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',b.type from IG_RPACKHD Where a.divcode = '" & Divcode & "' and a.doc_No== '" & Rs!doc_no & "'", DB, adOpenStatic, adLockBatchOptimistic
           Call bindcontls
           Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',tare'Tare Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & Rs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and a.product_code like 'W%'", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoSecondaryRS
            Call GRIDALIGN
           If adoSecondaryRS("type") = "U" Then
           Combo1.Text = "U-Usable Waste"
           Else
           Combo1.Text = "S-Salable Waste"
           End If
           
End Sub

   Public Sub Gridcall()
On Error GoTo Gridcall_Error

                     txtfields(11).Locked = True
                     SSTab1.TabEnabled(1) = True
                     SSTab1.Tab = 1
                     SSTab1.SetFocus
                     SSTab1.Visible = False
                     'grdDataGrid.EditActive = True
'                     grdDataGrid.AllowAddNew = True
'                     grdDataGrid.AllowUpdate = True
                     Set adoSecondaryRS = New Recordset
                     'adoSecondaryRS.Open "select a.divcode,a.doc_type,a.doc_no,a.sl_no 'S.No.',a.product_code 'Prod.Code',a.pack_year'Pack Year',a.packno_code'PackNo. Code',a.spack_no 'Start Pack No.',a.epack_no 'End Pack No.'a.pack_wt,a.tare 'Tare',a.lot_code,a.kgs 'Kgs',a.pack_type from IG_RPACKDT a,IG_packnotype b,IG_Product c,IG_Rlot d where a.packno_code=b.packno_code and a.product_code=c.product_code and a.divcode=b.divcode,a.lot_code=d.lot_code and a.divcode=d.divcode and 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                     adoSecondaryRS.Open "select a.divcode,a.doc_type,a.doc_no,a.sl_no'S.No.',a.product_code'Prod.Code',a.pack_year'Pack Year',a.packno_code'PackNo. Code',a.lot_code,a.spack_no 'Start Pack No.',a.epack_no 'End Pack No.',a.pack_wt 'Pack Wt.',a.tare 'Tare',a.kgs 'Kgs' from IG_RPACKDT a,IG_packnotype b,IG_Product c,IG_RPACKHD d,IG_Rlot l where a.packno_code=b.packno_code and a.product_code=c.product_code and a.divcode=b.divcode and a.lot_code=l.lot_code and a.divcode = '" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
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
                     SNO = 1
                     noofpacks = 0
                     endpack = val(txtfields(11).Text)
                     rep = ""
                     st1 = ""   'String used to set Focus for a particular Column
                     st2 = ""   'String used to test the Null value of a column
'                     grdDataGrid.Columns(3).Text = sno
'                     grdDataGrid.Columns(4).Text = (txtfields(2).Text)
'                     grdDataGrid.Columns(5).Text = Mid(MaskEdBox.Text, 7, 4)
'                     grdDataGrid.Columns(10).Text = (txtfields(5).Text)
                     Set rx = New Recordset
                     rx.Open "Select packno_code from IG_packnotype", DB
                     If rx.RecordCount > 1 Then
                        listlb.Caption = "Pack Number List"
                        Ksldesc1.conn = connectstring
                        Ksldesc1.Table = "IG_packnotype"
                        Ksldesc1.listfield1 = "PACKNO_CODE"
                        Ksldesc1.listfield2 = "DESCRIPTION"
                        Frame3.Visible = True
                        Frame3.ZOrder
                        Ksldesc1.SetFocus
                        type1 = "product"
                        stbar.Panels(2).Text = "Select Pack Number Code From the List"
                     Else
                          grdDataGrid.Columns(6).Text = rx(0)
                          SSTab1.Visible = True
                          Set rx = New Recordset
                          rx.Open "Select lot_code from IG_Rlot", DB
                          If rx.RecordCount = 1 Then
                                grdDataGrid.Columns(7).Text = rx(0)
                                grdDataGrid.Col = 8
                                grdDataGrid.SetFocus
                          End If
                     End If


Exit Sub
Gridcall_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Gridcall of Form Wasteentry1", vbInformation, head
  End Sub
Private Sub FindCancel_Click()
On Error GoTo FindCancel_Click_Error

        txtfields(100).Text = ""
        desc.Caption = "Query"
        Frame5.Visible = False
        Buttonframe.Enabled = True

Exit Sub
FindCancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FindCancel_Click of Form Wasteentry1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub FindOK_Click()
On Error GoTo FindOK_Click_Error

            Screen.MousePointer = 11
            Buttonframe.Enabled = True
            If txtfields(100).Text = "" Then
               MsgBox "Please enter the Document Number", vbInformation, head
                txtfields(100).SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
            ''Call query_mode
            Call docno_find
            txtfields(100).Text = ""
            txtfields(100).SetFocus
            Screen.MousePointer = 0
            Frame5.Visible = False
            Exit Sub
            
            Set adoPrimaryRS1 = New Recordset
            adoPrimaryRS1.Open "select a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.DATE 'DATE1',a.PRODUCT_CODE,b.DESCRIPTION,a.PROD_KGS,a.USE_SRKGS,b.PACK_WT,b.PACK_TYPE,C.DESCRIPTION AS DESC1 from IG_RPACKHD a,IG_Product b,IG_packtype C where a.divcode='" & Divcode & "' and a.product_code=b.product_code and B.PACK_TYPE=C.PACK_TYPE AND Doc_no='" & Trim(txtfields(100).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
        
            If adoPrimaryRS1.RecordCount > 0 Then
                Set adoSecondaryRS1 = New Recordset
                adoSecondaryRS1.Open "select a.divcode,a.doc_type,a.doc_no,a.sl_no'S.No.',a.product_code'Prod.Code',a.pack_year'Pack Year',a.packno_code'PackNo. Code',a.spack_no 'Start Pack No.',a.epack_no 'End Pack No.',a.pack_wt 'Pack Wt.',a.tare 'Tare',a.kgs 'Kgs' from IG_RPACKDT a,IG_packnotype b,IG_Product c,IG_RPACKHD d where a.packno_code=b.packno_code and a.product_code=c.product_code and a.divcode='" & Divcode & "' and a.doc_no=d.doc_no and a.doc_no='" & adoPrimaryRS1(2) & "' order by 'S.No.'", DB, adOpenStatic, adLockBatchOptimistic
            
                If adoSecondaryRS1.RecordCount > 0 Then
                        Set grdDataGrid.DataSource = adoSecondaryRS1
                        
                    Else
                        Set Rs = New Recordset
                        Rs.Open "select * from IG_RPACKDT where divcode = '" & Divcode & "' and 1=2", DB
                        Set grdDataGrid.DataSource = Rs
                End If
            Else
                MsgBox "No record Found for  " & Trim(txtfields(100).Text) & "  DocNo", vbInformation, head
                txtfields(100).Text = ""
                txtfields(100).SetFocus
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
             txtfields(18).Text = adoPrimaryRS1("DESC1")
            
                grdDataGrid.Columns(0).Width = 0
                grdDataGrid.Columns(1).Width = 0
                grdDataGrid.Columns(2).Width = 0
                grdDataGrid.Columns(0).Visible = False
                grdDataGrid.Columns(1).Visible = False
                grdDataGrid.Columns(2).Visible = False

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
                txtfields(100).Text = ""
                Frame5.Visible = False
                desc.Caption = "Find"
                stbar.Panels(2).Text = "Find"
            End If


Exit Sub
FindOK_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FindOK_Click of Form Wasteentry1", vbInformation, head
End Sub

Public Sub rg1Details()
On Error GoTo rg1Details_Error

            Set rs1 = New Recordset
            'Easwar rs1.Open "select A.OPEN_KGS,A.PACKS,A.PACK_KGS,A.LOOSE_KGS,A.prod_kgs,B.PACK_WT from IG_RG1TRN A,IG_Product b where A.PRODUCT_CODE= '" & txtfields(2).Text & "' and A.divcode =  '" & divcode & "' AND  b.product_code = A.PRODUCT_CODE and b.divcode = a.divcode", db, adOpenStatic, adLockBatchOptimistic
            'rs1.Open "select SUM(A.OPEN_KGS) AS OPEN_KGS,SUM(A.PACKS) AS PACKS,SUM(A.PACK_KGS) AS PACK_KGS,SUM(A.LOOSE_KGS) AS LOOSE_KGS,SUM(A.prod_kgs) AS PROD_KGS,B.PACK_WT  from IG_RG1TRN A,IG_Product b where A.PRODUCT_CODE= '" & txtfields(2).Text & "' and A.divcode =  '" & divcode & "' AND  b.product_code = A.PRODUCT_CODE and b.divcode = a.divcode and a.HOME_KGS  ='0' GROUP BY B.PACK_WT ", db, adOpenStatic, adLockBatchOptimistic
            rs1.Open "select PACK_WT  from IG_Product  where PRODUCT_CODE= '" & txtfields(2).Text & "' and divcode =  '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set sp = New Recordset
            'Easwar sp.Open "select OPEN_KGS,PACKS,PACK_KGS,LOOSE_KGS,prod_kgs ,isnull(HOME_KGS,0)+isnull(EXP_KGS,0)+isnull(AR3A_KGS,0)as salekg from IG_RG1TRN where PRODUCT_CODE='" & txtfields(2).Text & "' and divcode = '" & divcode & "' AND  date = (select max(date) from IG_RG1TRN where product_code='" & txtfields(2) & "' and divcode='" & divcode & "')", db, adOpenStatic, adLockBatchOptimistic
            sp.Open "select OPEN_KGS,PACKS,PACK_KGS,LOOSE_KGS,prod_kgs ,isnull(HOME_KGS,0)+isnull(EXP_KGS,0)+isnull(AR3A_KGS,0)as salekg,PROD_PKGS,PROD_PACKS,OP_PACKKGS,OP_PACKS from IG_RG1TRN where PRODUCT_CODE='" & txtfields(2).Text & "' and divcode = '" & Divcode & "' AND  date = (select max(date) from IG_RG1TRN where product_code='" & txtfields(2) & "' and divcode='" & Divcode & "')", DB, adOpenStatic, adLockBatchOptimistic
            If sp.RecordCount <= 0 Then
            End If
            If rs1.RecordCount > 0 And Not sp.EOF Then
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
                 txtfields(6).Text = (val(sp("OPEN_KGS")) + val(sp("prod_kgs"))) - val(sp("salekg"))
                 'Easwar txtfields(7).Text = (Val(sp("PACK_KGS")) - sp("salekg")) / rs1("pack_wt")
'                 txtfields(7).Text = Val(sp("PROD_PACKS")) + Val(IIf(IsNull(sp("OP_PACKS")), 0, sp("op_packs"))) - Val(sp("PACKS"))
'                 txtfields(8).Text = Val(txtfields(7).Text * rs1("pack_wt"))
'                 txtfields(9).Text = Round(Val(txtfields(6).Text - txtfields(8).Text), 2)
                 txtfields(7).Text = (val(txtfields(6).Text) - sp("loose_kgs")) / val(rs1("pack_wt"))
                 txtfields(8).Text = val(txtfields(7).Text * rs1("pack_wt"))
                 txtfields(9).Text = Round(val(txtfields(6).Text - txtfields(8).Text), 2)
                 txtfields(10).SetFocus
            Else
                txtfields(6).Text = 0
                txtfields(7).Text = 0
                txtfields(8).Text = 0
                txtfields(9).Text = 0
'                txtfields(12).Enabled = True
                txtfields(10).SetFocus
            End If


Exit Sub
rg1Details_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure rg1Details of Form Wasteentry1", vbInformation, head
End Sub
Public Sub GRIDALIGN()
    On Error Resume Next
    
    If Opt <> "add" And Opt <> "mod" And Opt <> "del" Then
        For i = 0 To 5
            grdDataGrid.Columns(i).Locked = True
        Next
    Else
        For i = 0 To 5
            grdDataGrid.Columns(i).Locked = False
        Next
    End If
    
    grdDataGrid.Columns(0).Width = 1250
    'grddatagrid.Columns(0).Caption = "Bale No."
    grdDataGrid.Columns(1).Width = 1200.953
    grdDataGrid.Columns(2).Width = 2400
    grdDataGrid.Columns(3).Width = 1715
    grdDataGrid.Columns(4).Width = 1715
    
    grdDataGrid.Columns(3).NumberFormat = "#0.000"
    grdDataGrid.Columns(3).Caption = "    Gross Weight"
    grdDataGrid.Columns(4).Caption = "        Net Weight"
    grdDataGrid.Columns(4).NumberFormat = "#0.000"
    grdDataGrid.Columns(0).Alignment = dbgLeft
    grdDataGrid.Columns(1).Alignment = dbgLeft
    grdDataGrid.Columns(2).Alignment = dbgLeft
    grdDataGrid.Columns(3).Alignment = dbgRight
    grdDataGrid.Columns(4).Alignment = dbgRight
    grdDataGrid.Columns(5).Visible = False
    If Opt = "mod" Then
        grdDataGrid.Columns(0).Locked = True
        grdDataGrid.Columns(1).Locked = True
        grdDataGrid.Columns(2).Locked = True
        grdDataGrid.Columns(5).Locked = True
    End If
End Sub

Public Sub totalpacks(a As Double, B As Double)
    'If adoSecondaryRS.RecordCount > 0 Then
    '    Do While Not adoSecondaryRS.EOF
    'c2 = c2 + ((Val(grdDataGrid.Columns(9).Text) - Val(grdDataGrid.Columns(8).Text)) + 1)
    '    adoSecondaryRS.MoveNext
    '    Loop
    'End If
End Sub
Public Sub docno_find()
On Error GoTo docno_find_Error

   Set adoprimaryrs = New Recordset
   adoprimaryrs.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',b.type,a.shift from IG_RPACKHD a,IG_RPACKDT b Where a.divcode = B.divcode and a.doc_No=b.doc_No and (b.type like 'U%' or b.type like 'S%')and a.obflag is null AND A.DOC_NO='" & txtfields(100).Text & "' order by a.doc_no", DB, adOpenStatic, adLockBatchOptimistic
    
   If adoprimaryrs.EOF <> True Then
        
        txtfields(1).Text = adoprimaryrs!doc_no
        MaskEdBox.Text = Format(adoprimaryrs!Date, "dd/mm/yyyy")
        
        Combo2.Text = adoprimaryrs!Shift
        If Rs!Type = "U" Then
        Combo1.Text = "U-Usable Waste"
        Else
        Combo1.Text = "U-Saleable Waste"
        End If
        twt = 0
        If adoprimaryrs.RecordCount > 0 Then
            Call bindcontls
        End If
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not adoSecondaryRS.EOF
        twt = twt + adoSecondaryRS("Nett Wt.")
        adoSecondaryRS.MoveNext
        Loop
        
        Label5.Caption = Format(val(twt), "0.000")
        Set grdDataGrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
    Else
        MsgBox "No Record Found", vbInformation, head
        Set grdDataGrid.DataSource = Nothing
        Call Query_mode
        Exit Sub
    End If
   
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
        
        Call las(BUTTON)
        Call cancl1(BUTTON, 26)
   
    desc.Caption = "Query"
    SSTab1.Tab = 0
    SSTab1.TabVisible(0) = True
    Call disablcontls


Exit Sub
docno_find_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure docno_find of Form Wasteentry1", vbInformation, head
End Sub


Public Sub docno_find1()
On Error GoTo docno_find_Error

   Set adoprimaryrs = New Recordset
   adoprimaryrs.Open "Select Distinct a.DIVCODE,a.DOC_TYPE,a.DOC_NO,a.Date 'DATE',b.type,a.shift from IG_RPACKHD a,IG_RPACKDT b Where a.divcode = B.divcode and a.doc_No=b.doc_No and (b.type like 'U%' or b.type like 'S%')and a.obflag is null AND A.DOC_NO='" & LookUp.Fields(0) & "' order by a.doc_no", DB, adOpenStatic, adLockBatchOptimistic
    
   If adoprimaryrs.EOF <> True Then
        txtfields(1).Text = adoprimaryrs!doc_no
        MaskEdBox.Text = Format(adoprimaryrs!Date, "dd/mm/yyyy")
        
        Combo2.Text = adoprimaryrs!Shift
        If Rs!Type = "U" Then
        Combo1.Text = "U-Usable Waste"
        Else
        Combo1.Text = "U-Saleable Waste"
        End If
        twt = 0
        If adoprimaryrs.RecordCount > 0 Then
            Call bindcontls
        End If
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct spack_no'Bale No.',a.product_code 'Waste',b.description 'Description',a.pack_wt 'Gross Wt.',kgs 'Nett Wt.' from IG_RPACKDT a,ig_rproduct b where DOC_NO= '" & adoprimaryrs!doc_no & "' AND a.DIVCODE='" & Divcode & "' and a.product_code=b.product_code and (b.Wastetype like 'U%' or b.Wastetype like 'S%') and a.obflag is null ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not adoSecondaryRS.EOF
        twt = twt + adoSecondaryRS("Nett Wt.")
        adoSecondaryRS.MoveNext
        Loop
        
        Label5.Caption = Format(val(twt), "0.000")
        Set grdDataGrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
    Else
        MsgBox "No Record Found", vbInformation, head
        Set grdDataGrid.DataSource = Nothing
        Call Query_mode
        Exit Sub
    End If
   
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
        
        Call las(BUTTON)
        Call cancl1(BUTTON, 26)
   
    desc.Caption = "Query"
    SSTab1.Tab = 0
    SSTab1.TabVisible(0) = True
    Call disablcontls


Exit Sub
docno_find_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure docno_find of Form Wasteentry1", vbInformation, head
End Sub


