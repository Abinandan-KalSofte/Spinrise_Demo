VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frm_cottonreqplan 
   Caption         =   "Raw Material Bales Requirement Plan"
   ClientHeight    =   5145
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7635
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5145
   ScaleWidth      =   7635
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   16
      Top             =   0
      Width           =   11730
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
         Index           =   12
         Left            =   5295
         Picture         =   "frm_cottonreqplan.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   33
         ToolTipText     =   "Lot Bale Report Print (Ctrl P)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":0442
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "frm_cottonreqplan.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":0BD9
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "frm_cottonreqplan.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":1276
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "frm_cottonreqplan.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":1A25
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
         Left            =   570
         Picture         =   "frm_cottonreqplan.frx":1D2F
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":20CB
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "frm_cottonreqplan.frx":23D5
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1095
         Picture         =   "frm_cottonreqplan.frx":274F
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":2AE6
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "frm_cottonreqplan.frx":2F30
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":3280
         Height          =   510
         Index           =   11
         Left            =   5820
         Picture         =   "frm_cottonreqplan.frx":36CA
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":3A5F
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "frm_cottonreqplan.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "frm_cottonreqplan.frx":410B
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "frm_cottonreqplan.frx":4415
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":4791
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "frm_cottonreqplan.frx":4BDB
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonreqplan.frx":4F3D
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "frm_cottonreqplan.frx":5247
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (Ctrl F)"
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8685
         TabIndex        =   18
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   7155
         TabIndex        =   17
         Top             =   255
         Width           =   615
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   7050
      Left            =   15
      TabIndex        =   19
      Top             =   1230
      Width           =   15030
      _ExtentX        =   26511
      _ExtentY        =   12435
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "Cotton Bales Requirement Plan"
      TabPicture(0)   =   "frm_cottonreqplan.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Stock Details"
      TabPicture(1)   =   "frm_cottonreqplan.frx":55F8
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "grddatagrid1"
      Tab(1).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   1185
         Left            =   75
         TabIndex        =   21
         Top             =   435
         Width           =   14895
         Begin VB.CommandButton cmd_process 
            BackColor       =   &H000000FF&
            Caption         =   "Process"
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
            Left            =   9075
            Style           =   1  'Graphical
            TabIndex        =   31
            Top             =   720
            Width           =   1185
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H80000000&
            DataField       =   "planno"
            Height          =   315
            Index           =   0
            Left            =   1260
            Locked          =   -1  'True
            TabIndex        =   26
            Top             =   195
            Width           =   1425
         End
         Begin VB.Frame Frame3 
            Caption         =   "Planning Period"
            Height          =   600
            Left            =   60
            TabIndex        =   22
            Top             =   540
            Width           =   8595
            Begin VB.TextBox Text1 
               BackColor       =   &H80000000&
               DataField       =   "NOOFDAYS"
               Height          =   315
               Index           =   1
               Left            =   7020
               Locked          =   -1  'True
               TabIndex        =   15
               Top             =   240
               Width           =   1425
            End
            Begin MSComCtl2.DTPicker DTPicker2 
               Height          =   315
               Left            =   1245
               TabIndex        =   13
               Top             =   240
               Width           =   1425
               _ExtentX        =   2514
               _ExtentY        =   556
               _Version        =   393216
               Format          =   131072001
               CurrentDate     =   40039
            End
            Begin MSComCtl2.DTPicker DTPicker3 
               Height          =   315
               Left            =   4080
               TabIndex        =   14
               Top             =   240
               Width           =   1425
               _ExtentX        =   2514
               _ExtentY        =   556
               _Version        =   393216
               Format          =   131072001
               CurrentDate     =   40039
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "From Date"
               Height          =   195
               Left            =   90
               TabIndex        =   25
               Top             =   300
               Width           =   735
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               Caption         =   "To Date"
               Height          =   195
               Left            =   2970
               TabIndex        =   24
               Top             =   300
               Width           =   585
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               Caption         =   "No of Days"
               Height          =   195
               Left            =   5865
               TabIndex        =   23
               Top             =   300
               Width           =   795
            End
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   3930
            TabIndex        =   12
            Top             =   195
            Width           =   1425
            _ExtentX        =   2514
            _ExtentY        =   556
            _Version        =   393216
            Format          =   131596289
            CurrentDate     =   40039
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   2820
            TabIndex        =   28
            Top             =   225
            Width           =   345
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Plan No"
            Height          =   195
            Left            =   120
            TabIndex        =   27
            Top             =   255
            Width           =   570
         End
      End
      Begin MSDataGridLib.DataGrid grddatagrid1 
         Height          =   6570
         Left            =   -74895
         TabIndex        =   30
         Top             =   405
         Width           =   14910
         _ExtentX        =   26300
         _ExtentY        =   11589
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
         AllowAddNew     =   -1  'True
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
               LCID            =   2057
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
               LCID            =   2057
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
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   5250
         Left            =   75
         TabIndex        =   32
         Top             =   1665
         Width           =   14865
         _ExtentX        =   26220
         _ExtentY        =   9260
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
         AllowAddNew     =   -1  'True
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
               LCID            =   2057
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
               LCID            =   2057
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
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   29
      Top             =   4845
      Width           =   7635
      _ExtentX        =   13467
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   3704
            MinWidth        =   3704
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
            TextSave        =   "14/03/2019"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "17:58"
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
      Caption         =   "Raw Material Bales Requirement Plan"
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
      Left            =   60
      TabIndex        =   20
      Top             =   855
      Width           =   4935
   End
End
Attribute VB_Name = "frm_cottonreqplan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim REP As Report.ReportView
Dim a, pg, c As Integer
Dim Opt As String
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim ADOSECONDARYRS1 As Recordset
Dim Rsrno As Recordset
Dim rs As Recordset
Dim rsHead As Recordset
Dim rstail As Recordset
Dim depcode As String
Dim YEARMON As String
Dim z As Integer
Dim spindlecode(3) As String
Dim cn As New Connection
Dim PC1 As String
Dim Variety As String
Dim var_flg As Boolean

Private Enum Gridcall1
    GGVARCODE = 0
    GGSTK
    GGPNDORD
    GGTSTK
    GGBALEREQ
    GGSTATUS
    GGAVAILDAY
    GGSTKLASTDT
    GGDIVCODE
End Enum
Private Enum Gridcall
    GSLNO = 0
    GCNTCODE
    GCNTDESC
    GVARCODE1
    GPER1
    GVARCODE2
    GPER2
    GVARCODE3
    GPER3
    GYR
    GSPINDLE1
    GSPINDLE2
    GSPINDLE3
    GSPINDLE4
    GGPS
    GPRDKGS
    GBALEPERDSAY
    GTOTBALES
End Enum

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure openconnection of Form Mix Group"
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
If Not (Opt = "add" Or Opt = "del" Or Opt = "mod" Or Opt = "find") Then
    If Not (adoPrimaryRS.BOF And adoPrimaryRS.EOF) And adoPrimaryRS.RecordCount > 0 Then
        Call BINDCNTLS
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "SELECT a.SNO,a.CNTCODE,C.DESCRIPTION,A.VARCODE1,A.PER1,A.VARCODE2,A.PER2,A.VARCODE3,A.PER3,A.YR,A.SPval1,A.SPval2,A.SPval3,A.SPval4,A.GPS,A.PRDKGS,A.BALE,A.TOTBALE FROM RM_COTTONPLAN A,IG_PRODUCT C WHERE A.DIVCODE=C.DIVCODE AND A.CNTCODE=C.PRODUCT_CODE AND A.DIVCODE='" & Divcode & "' AND A.PLANNO='" & adoPrimaryRS("PLANNO") & "' AND PDATE ='" & Format(adoPrimaryRS("PDATE"), "YYYY-MM-DD") & "' order by A.SNO", DB, adOpenStatic
        Set grdDataGrid.DataSource = adoSecondaryRS
        Set ADOSECONDARYRS1 = New Recordset
        ADOSECONDARYRS1.Open "SELECT A.VARCODE,A.STK,A.PNDORD,A.TSTK,A.BALEREQ,A.STATUS,A.AVAILDAY,A.STKLASTDT,A.DIVCODE FROM RM_COTTONPLANSTK A WHERE A.DIVCODE='" & Divcode & "' AND A.PLANNO='" & adoPrimaryRS("PLANNO") & "' AND PDATE ='" & Format(adoPrimaryRS("PDATE"), "YYYY-MM-DD") & "' order by A.varcode", DB, adOpenStatic
        Set grddatagrid1.DataSource = ADOSECONDARYRS1
        Call GRIDALIGN
    End If
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form frm_cottonplan"
End Sub

Function chk_db_trans(Con As Variant) As Integer
On Error GoTo err
    Con.CommitTrans
err:
If err.Number = -2147168242 Then
    chk_db_trans = 1
End If
End Function


Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    Call adddelmod(BUTTON)
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select * from RM_COTTONPLAN where divcode ='" & Divcode & "' And 1=2", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.AddNew
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "SELECT a.SNO,a.CNTCODE,C.DESCRIPTION,A.VARCODE1,A.PER1,A.VARCODE2,A.PER2,A.VARCODE3,A.PER3,A.YR,A.SPVAL1,A.SPVAL2,A.SPVAL3,A.SPVAL4,A.GPS,A.PRDKGS,A.BALE,A.TOTBALE FROM RM_COTTONPLAN A, IG_PRODUCT C where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoSecondaryRS
    Set ADOSECONDARYRS1 = New Recordset
    ADOSECONDARYRS1.Open "SELECT A.VARCODE,A.STK,A.PNDORD,A.TSTK,A.BALEREQ,A.STATUS,A.AVAILDAY,A.STKLASTDT,A.DIVCODE FROM RM_COTTONPLANSTK A WHERE A.DIVCODE='" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid1.DataSource = ADOSECONDARYRS1
    Call clear
    Call ENABLECNTLS
    Call GRIDALIGN
    PC1 = "' '"
    grdDataGrid.AllowUpdate = True
    adoSecondaryRS.AddNew
    stbar.Panels(2).Text = "Addition"
    DTPicker1.value = pdate
    DTPicker2.value = pdate
    DTPicker3.value = pdate
    DTPicker1.SetFocus
    Exit Sub
    
Case 1, 2, 4 'mod
        SqlStr = ""
        SqlStr = SqlStr & Chr(13) & "Select DISTINCT PLANNO,Pdate as Date from RM_COTTONPLAN a"
        SqlStr = SqlStr & Chr(13) & "where Pdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and a.divcode ='" & Divcode & "'"
        LookUp.query = SqlStr
        LookUp.DefCol = "PLANNO"
        LookUp.ALIGN = "2000,2000"
        LookUp.Caption = "Record Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            If Index = 1 Then
                Opt = "mod"
                desc.Caption = "Modification"
                stbar.Panels(2).Text = "Select a Date for Modification"
            ElseIf Index = 2 Then
                Opt = "del"
                desc.Caption = "Deletion"
                stbar.Panels(2).Text = "Select a Date for Deletion"
            ElseIf Index = 4 Then
                Opt = "fnd"
                desc.Caption = "Find"
                stbar.Panels(2).Text = "Select a Date for Find"
            End If
            If Opt <> "fnd" Then
                Call adddelmod(BUTTON)
            End If
            PC1 = "' '"
            DTPicker1.value = LookUp.Fields(1)
            Text1(0).Text = LookUp.Fields(0)
            If Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
              Set adoPrimaryRS = New Recordset
              adoPrimaryRS.Open "select DISTINCT DIVCODE,PLANNO,PDATE,FDATE,TDATE,NOOFDAYS from RM_COTTONPLAN where divcode ='" & Divcode & "' and PLANNO='" & LookUp.Fields(0) & "' AND Pdate='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            End If
            If adoPrimaryRS.RecordCount = 0 Then
                MsgBox "No Records Found", vbInformation, head
                Screen.MousePointer = 0
                Call Query_mode
                Exit Sub
            End If
            Call BINDCNTLS
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "SELECT a.SNO,a.CNTCODE,C.DESCRIPTION,A.VARCODE1,A.PER1,A.VARCODE2,A.PER2,A.VARCODE3,A.PER3,A.YR,A.SPval1,A.SPval2,A.SPval3,A.SPval4,A.GPS,A.PRDKGS,A.BALE,A.TOTBALE FROM RM_COTTONPLAN A,IG_PRODUCT C WHERE A.DIVCODE=C.DIVCODE AND A.CNTCODE=C.PRODUCT_CODE AND A.DIVCODE='" & Divcode & "' AND A.PLANNO='" & adoPrimaryRS("PLANNO") & "' AND PDATE ='" & Format(adoPrimaryRS("PDATE"), "YYYY-MM-DD") & "' order by A.SNO", DB, adOpenStatic
            Set ADOSECONDARYRS1 = New Recordset
            ADOSECONDARYRS1.Open "SELECT A.VARCODE,A.STK,A.PNDORD,A.TSTK,A.BALEREQ,A.STATUS,A.AVAILDAY,A.STKLASTDT,A.DIVCODE FROM RM_COTTONPLANSTK A WHERE A.DIVCODE='" & Divcode & "' AND A.PLANNO='" & adoPrimaryRS("PLANNO") & "' AND PDATE ='" & Format(adoPrimaryRS("PDATE"), "YYYY-MM-DD") & "' order by A.varcode", DB, adOpenStatic
            Set grddatagrid1.DataSource = ADOSECONDARYRS1
            If adoSecondaryRS.RecordCount > 0 Then
                Set grdDataGrid.DataSource = adoSecondaryRS
                Call GRIDALIGN
                Call ENABLECNTLS
                grdDataGrid.SetFocus
            End If
                    
            If Opt = "find" Then
              BUTTON(9).Enabled = False
              BUTTON(10).SetFocus
              stbar.Panels(2).Text = "Press Cancel Button"
            End If
            stbar.Panels(2).Text = "Press Save Button"
            grdDataGrid.Enabled = True
            grdDataGrid.AllowUpdate = True
            grdDataGrid.EditActive = True
            LookUp.clear = True
        Else
            Opt = "qry"
            Call Query_mode
            BUTTON(0).SetFocus
        End If
        
Case 3
        'list
        Exit Sub

Case 5 'first
    desc.Caption = "Query"
    adoPrimaryRS.MoveFirst
    Call FIR(BUTTON)
    stbar.Panels(2).Text = "First Record"
    Exit Sub
Case 6
   'next
   desc.Caption = "Query"
   If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
    adoPrimaryRS.MoveLast
   Else
    adoPrimaryRS.MoveNext
    BUTTON(5).Enabled = True
    BUTTON(6).Enabled = True
    BUTTON(7).Enabled = True
    BUTTON(8).Enabled = True
   End If
   'show the current record
   stbar.Panels(2).Text = "Record " & adoPrimaryRS.AbsolutePosition & "/" & adoPrimaryRS.RecordCount
   Exit Sub
   
Case 7
   'previous
   desc.Caption = "Query"
   If Not adoPrimaryRS.AbsolutePosition = 1 Then
        adoPrimaryRS.MovePrevious
     
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
   End If
   If adoPrimaryRS.AbsolutePosition = 1 Then
        'moved off the end so go back
         BUTTON(5).Enabled = False
         BUTTON(7).Enabled = False
         BUTTON(6).Enabled = True
         BUTTON(8).Enabled = True
         adoPrimaryRS.MoveFirst
   End If
   'show the current record
   stbar.Panels(2).Text = "Record : " & adoPrimaryRS.AbsolutePosition & "/" & adoPrimaryRS.RecordCount
   Exit Sub

  Case 8
    'last
    desc.Caption = "Query"
    adoPrimaryRS.MoveLast
    stbar.Panels(2).Text = "Last Record"
    'calling las procedure from module
    Call las(BUTTON)
    Exit Sub

Case 9  'save
    If Opt = "add" Or Opt = "mod" Then
        tmp = Opt
        Opt = ""
        DB.BeginTrans
        adoSecondaryRS.MoveFirst
        Do While Not adoSecondaryRS.EOF
            If IsNull(adoSecondaryRS!cntcode) Or Trim(adoSecondaryRS!cntcode) = "" And IsNull(adoSecondaryRS!varcode1) Or Trim(adoSecondaryRS!varcode1) = "" And IsNull(adoSecondaryRS!varcode2) Or Trim(adoSecondaryRS!varcode2) = "" And IsNull(adoSecondaryRS!varcode3) Or Trim(adoSecondaryRS!varcode3) = "" Then adoSecondaryRS.Delete adAffectCurrent
            adoSecondaryRS.MoveNext
        Loop
        If Opt = "mod" Then
            DB.BeginTrans
            DB.Execute "DELETE FROM RM_COTTONPLAN WHERE divcode ='" & Divcode & "' AND PLANNO=" & Text1(0).Text & " and PDATE='" & Format(DTPicker1.value, "YYYY-MM-DD") & "'"
            DB.CommitTrans
        End If
        Set rsHead = New Recordset
        rsHead.Open "select * from RM_COTTONPLAN where divcode ='" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Set rstail = New Recordset
        rstail.Open "select * from RM_COTTONPLANSTK where divcode ='" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
        If adoSecondaryRS.RecordCount > 0 Then
            adoSecondaryRS.MoveFirst
        End If
        Opt = tmp
        If Opt = "add" Then
            Set Rsrno = New Recordset
            Rsrno.Open "SELECT isnull(max(substring(planno,1,(patindex('%/%',planno)-1))),0)+1 planno FROM RM_COTTONPLAN WHERE divcode ='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
            If Rsrno.RecordCount > 0 Then Text1(0).Text = Rsrno!planno & "/" & Year(pdate)
        End If
        tmp = Opt
        Opt = ""
        SNO = 1
        Do While Not adoSecondaryRS.EOF
            rsHead.AddNew
            rsHead!Divcode = Divcode
            rsHead!planno = Text1(0).Text
            rsHead!pdate = Format(DTPicker1.value, "yyyy-mm-dd")
            rsHead!fdate = Format(DTPicker2.value, "yyyy-mm-dd")
            rsHead!tdate = Format(DTPicker3.value, "yyyy-mm-dd")
            rsHead!noofdays = val(Text1(1).Text)
            rsHead!SNO = SNO
            rsHead!cntcode = IIf(IsNull(grdDataGrid.Columns(GCNTCODE).Text), "", grdDataGrid.Columns(GCNTCODE).Text)
            rsHead!varcode1 = IIf(IsNull(grdDataGrid.Columns(GVARCODE1).Text), "", grdDataGrid.Columns(GVARCODE1).Text)
            rsHead!varcode2 = IIf(IsNull(grdDataGrid.Columns(GVARCODE2).Text), "", grdDataGrid.Columns(GVARCODE2).Text)
            rsHead!varcode3 = IIf(IsNull(grdDataGrid.Columns(GVARCODE3).Text), "", grdDataGrid.Columns(GVARCODE3).Text)
            rsHead!per1 = IIf(IsNull(grdDataGrid.Columns(GPER1).Text), "", grdDataGrid.Columns(GPER1).Text)
            rsHead!per2 = IIf(IsNull(grdDataGrid.Columns(GPER2).Text), "", grdDataGrid.Columns(GPER2).Text)
            rsHead!per3 = IIf(IsNull(grdDataGrid.Columns(GPER3).Text), "", grdDataGrid.Columns(GPER3).Text)
            rsHead!yr = IIf(IsNull(grdDataGrid.Columns(GYR).Text), "", grdDataGrid.Columns(GYR).Text)
            rsHead!spval1 = IIf(IsNull(grdDataGrid.Columns(GSPINDLE1).Text), 0, grdDataGrid.Columns(GSPINDLE1).Text)
            rsHead!spval2 = IIf(IsNull(grdDataGrid.Columns(GSPINDLE2).Text), 0, grdDataGrid.Columns(GSPINDLE2).Text)
            rsHead!spval3 = IIf(IsNull(grdDataGrid.Columns(GSPINDLE3).Text), 0, grdDataGrid.Columns(GSPINDLE3).Text)
            rsHead!spval4 = IIf(IsNull(grdDataGrid.Columns(GSPINDLE4).Text), 0, grdDataGrid.Columns(GSPINDLE4).Text)
            rsHead!spcode1 = spindlecode(0)
            rsHead!spcode2 = spindlecode(1)
            rsHead!spcode3 = spindlecode(2)
            rsHead!spcode4 = spindlecode(3)
            rsHead!gps = IIf(IsNull(grdDataGrid.Columns(GGPS).Text), 0, grdDataGrid.Columns(GGPS).Text)
            rsHead!prdkgs = IIf(IsNull(grdDataGrid.Columns(GPRDKGS).Text), 0, grdDataGrid.Columns(GPRDKGS).Text)
            rsHead!bale = IIf(IsNull(grdDataGrid.Columns(GBALEPERDSAY).Text) Or grdDataGrid.Columns(GBALEPERDSAY).Text = "", 0, grdDataGrid.Columns(GBALEPERDSAY).Text)
            rsHead!totbale = IIf(IsNull(grdDataGrid.Columns(GTOTBALES).Text), 0, grdDataGrid.Columns(GTOTBALES).Text)
            SNO = SNO + 1
            adoSecondaryRS.MoveNext
        Loop
        If ADOSECONDARYRS1.RecordCount > 0 Then
            ADOSECONDARYRS1.MoveFirst
        End If
        Do While Not ADOSECONDARYRS1.EOF
            rstail.AddNew
            rstail!Divcode = Divcode
            rstail!planno = Text1(0).Text
            rstail!pdate = Format(DTPicker1.value, "yyyy-mm-dd")
            rstail!Varcode = IIf(IsNull(grddatagrid1.Columns(GGVARCODE).Text) Or grddatagrid1.Columns(GGVARCODE).Text = "", "", grddatagrid1.Columns(GGVARCODE).Text)
            rstail!stk = IIf(IsNull(grddatagrid1.Columns(GGSTK).Text) Or grddatagrid1.Columns(GGSTK).Text = "", 0, grddatagrid1.Columns(GGSTK).Text)
            rstail!pndord = IIf(IsNull(grddatagrid1.Columns(GGPNDORD).Text) Or grddatagrid1.Columns(GGPNDORD).Text = "", 0, grddatagrid1.Columns(GGPNDORD).Text)
            rstail!tstk = IIf(IsNull(grddatagrid1.Columns(GGTSTK).Text) Or grddatagrid1.Columns(GGTSTK).Text = "", 0, grddatagrid1.Columns(GGTSTK).Text)
            rstail!balereq = IIf(IsNull(grddatagrid1.Columns(GGBALEREQ).Text) Or grddatagrid1.Columns(GGBALEREQ).Text = "", 0, grddatagrid1.Columns(GGBALEREQ).Text)
            rstail!status = IIf(IsNull(grddatagrid1.Columns(GGSTATUS).Text) Or grddatagrid1.Columns(GGSTATUS).Text = "", "", grddatagrid1.Columns(GGSTATUS).Text)
            rstail!availday = IIf(IsNull(grddatagrid1.Columns(GGAVAILDAY).Text) Or grddatagrid1.Columns(GGAVAILDAY).Text = "", 0, grddatagrid1.Columns(GGAVAILDAY).Text)
            rstail!stklastdt = IIf(IsNull(grddatagrid1.Columns(GGSTKLASTDT).Text) Or grddatagrid1.Columns(GGSTKLASTDT).Text = "", "", grddatagrid1.Columns(GGSTKLASTDT).Text)
            ADOSECONDARYRS1.MoveNext
        Loop
        rsHead.UpdateBatch adAffectAllChapters
        rstail.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        Opt = tmp
        If Opt = "add" Then
            MsgBox "Record Saved Successfully", vbInformation, head
        ElseIf Opt = "mod" Then
            MsgBox "Record Modified Successfully", vbInformation, head
        End If
        Opt = ""
    End If
    
    If Opt = "del" Then
        DB.BeginTrans
        DB.Execute "DELETE FROM rm_cottonplan WHERE divcode ='" & Divcode & "' AND planNO='" & Text1(0).Text & "' and pDATE='" & Format(DTPicker1.value, "YYYY-MM-DD") & "'"
        DB.Execute "DELETE FROM rm_cottonplanstk WHERE divcode ='" & Divcode & "' AND planNO='" & Text1(0).Text & "' and pDATE='" & Format(DTPicker1.value, "YYYY-MM-DD") & "'"
        DB.CommitTrans
        Call clear
        MsgBox "Record Deleted Successfully", vbInformation, head
    End If
        Opt = "qry"
        Call Query_mode
        Call DISABLECNTLS
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    
Case 10 'cancel
    desc.Caption = "Query"
    Opt = "qry"
    Call Query_mode
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(0).SetFocus
    
Case 11 'exit
    Unload Me
    Exit Sub
Case 12
    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\cottonplan.rpt"
    FrmRpt.RptHead = 4
    parameter1 = Divcode
    parameter2 = Text1(0).Text
    parameter3 = Format(DTPicker1.value, "yyyy-mm-dd")
    parameter4 = DIVNAME
    FrmRpt.Show
End Select
Screen.MousePointer = 0

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_Click of Form frm_cottonplan"
    
End Sub

Private Sub cmd_process_Click()
On Error GoTo cmd_process_Click_Error
    If Opt = "add" Then
        If ADOSECONDARYRS1.RecordCount > 0 Then
            ADOSECONDARYRS1.MoveFirst
        End If
        Do While Not ADOSECONDARYRS1.EOF
            ADOSECONDARYRS1.Delete
            ADOSECONDARYRS1.MoveNext
        Loop
        
        tmp = Opt
        Opt = ""
        SSTab1.Tab = 1
        If adoSecondaryRS.RecordCount > 0 Then
            adoSecondaryRS.MoveFirst
        End If
        var_flg = False
        Do While Not adoSecondaryRS.EOF
var1:
            If adoSecondaryRS("varcode1") <> "" Then
                Variety = adoSecondaryRS("varcode1")
                If ADOSECONDARYRS1.RecordCount = 0 Then
                    If var_flg = False Then
                        ADOSECONDARYRS1.AddNew
                        grddatagrid1.Columns(GGVARCODE).Text = Variety
                        Call stockdet
                    End If
                Else
                    ADOSECONDARYRS1.MoveFirst
                    Do While Not ADOSECONDARYRS1.EOF
                        If grddatagrid1.Columns(GGVARCODE).Text = Variety Then
                            var_flg = True
                            GoTo var2
                        Else
                            var_flg = False
                        End If
                        ADOSECONDARYRS1.MoveNext
                    Loop
                        If var_flg = False Then
                            ADOSECONDARYRS1.AddNew
                            grddatagrid1.Columns(GGVARCODE).Text = Variety
                            Call stockdet
                        End If
                End If
            End If
var2:
            If adoSecondaryRS("varcode2") <> "" Then
                Variety = adoSecondaryRS("varcode2")
                If ADOSECONDARYRS1.RecordCount = 0 Then
                    If var_flg = False Then
                        ADOSECONDARYRS1.AddNew
                        grddatagrid1.Columns(GGVARCODE).Text = Variety
                        Call stockdet
                    End If
                Else
                    ADOSECONDARYRS1.MoveFirst
                    Do While Not ADOSECONDARYRS1.EOF
                        If grddatagrid1.Columns(GGVARCODE).Text = Variety Then
                            var_flg = True
                            GoTo var3
                        Else
                            var_flg = False
                        End If
                        ADOSECONDARYRS1.MoveNext
                    Loop
                    If var_flg = False Then
                        ADOSECONDARYRS1.AddNew
                        grddatagrid1.Columns(GGVARCODE).Text = Variety
                        Call stockdet
                    End If
                End If
            End If
var3:
            If adoSecondaryRS("varcode3") <> "" Then
                Variety = adoSecondaryRS("varcode3")
                If ADOSECONDARYRS1.RecordCount = 0 Then
                    If var_flg = False Then
                        ADOSECONDARYRS1.AddNew
                        grddatagrid1.Columns(GGVARCODE).Text = Variety
                        Call stockdet
                    End If
                Else
                    ADOSECONDARYRS1.MoveFirst
                    Do While Not ADOSECONDARYRS1.EOF
                        If grddatagrid1.Columns(GGVARCODE).Text = Variety Then
                            var_flg = True
                            GoTo stk
                        Else
                            var_flg = False
                        End If
                        ADOSECONDARYRS1.MoveNext
                    Loop
                    If var_flg = False Then
                        ADOSECONDARYRS1.AddNew
                        grddatagrid1.Columns(GGVARCODE).Text = Variety
                        Call stockdet
                    End If
                End If
            End If
            adoSecondaryRS.MoveNext
        Loop
        
stk:
        If ADOSECONDARYRS1.RecordCount > 0 Then
            ADOSECONDARYRS1.MoveFirst
        End If
        TOTBALES = 0
        varper = 0
        bale = 0
        Do While Not ADOSECONDARYRS1.EOF
            TOTBALES = 0
            varper = 0
            bale = 0
            Variety = grddatagrid1.Columns(GGVARCODE).Text
            If adoSecondaryRS.RecordCount > 0 Then
                adoSecondaryRS.MoveFirst
            End If
            Do While Not adoSecondaryRS.EOF
                If grdDataGrid.Columns(GVARCODE1).Text = Variety Then
                    TOTBALES = TOTBALES + val(grdDataGrid.Columns(GTOTBALES).Text)
                    varper = varper + val(grdDataGrid.Columns(GPER1).Text)
                    bale = bale + (val(grdDataGrid.Columns(GBALEPERDSAY).Text) / 100 * val(grdDataGrid.Columns(GPER1).Text))
                End If
                If grdDataGrid.Columns(GVARCODE2).Text = Variety Then
                    TOTBALES = TOTBALES + val(grdDataGrid.Columns(GTOTBALES).Text)
                    varper = varper + val(grdDataGrid.Columns(GPER1).Text)
                    bale = bale + (val(grdDataGrid.Columns(GBALEPERDSAY).Text) / 100 * val(grdDataGrid.Columns(GPER2).Text))
                End If
                If grdDataGrid.Columns(GVARCODE3).Text = Variety Then
                    TOTBALES = TOTBALES + val(grdDataGrid.Columns(GTOTBALES).Text)
                    varper = varper + val(grdDataGrid.Columns(GPER1).Text)
                    bale = bale + (val(grdDataGrid.Columns(GBALEPERDSAY).Text) / 100 * val(grdDataGrid.Columns(GPER3).Text))
                End If
                adoSecondaryRS.MoveNext
            Loop
            grddatagrid1.Columns(GGBALEREQ).Text = ((TOTBALES * varper) / 100) - val(grddatagrid1.Columns(GGTSTK).Text)
            If val(grddatagrid1.Columns(GGBALEREQ).Text) < 0 Then
                grddatagrid1.Columns(GGSTATUS).Text = "Excess"
            Else
                grddatagrid1.Columns(GGSTATUS).Text = "To Be Procued"
            End If
            If bale > 0 Then grddatagrid1.Columns(GGAVAILDAY).Text = val(grddatagrid1.Columns(GGTSTK).Text) / bale Else grddatagrid1.Columns(GGAVAILDAY).Text = 0
            grddatagrid1.Columns(GGSTKLASTDT).Text = DateAdd("d", val(grddatagrid1.Columns(GGAVAILDAY).Text), pdate)
            ADOSECONDARYRS1.MoveNext
        Loop
        
        Opt = tmp
    End If

Exit Sub
cmd_process_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure cmd_process_Click of Form frm_cottonreqplan"
    Opt = tmp
    
End Sub

Private Sub stockdet()
On Error GoTo stockdet_Error

    Set RSV = New Recordset
    strSQL = " select C.VARCODE, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
    strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
    strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE"
    strSQL = strSQL + " FROM ("
    strSQL = strSQL + gStockStatement(Format(DTPicker1.value, "yyyy-mm-dd"), Format(DTPicker1.value, "yyyy-mm-dd"))
    strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE = '" & Trim(grddatagrid1.Columns(GGVARCODE).Text) & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' "
    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by c.VARCODE"
    
    Set RSV = New Recordset
    RSV.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
    If RSV.RecordCount > 0 Then
        grddatagrid1.Columns(GGSTK).Text = RSV("clobales") + RSV("cloboras")
    End If

    Set RSV = New Recordset
    RSV.Open "select DISTINCT count(CONTNO)CONTNO from rm_cont where contdt between '2009-04-01' and '2010-03-31' and ordqty>isnull(recqty,0) AND ORDQTY-ISNULL(CANCELBALES,0)>0 and DIVCODE ='01'", DB, adOpenStatic
    If RSV.RecordCount > 0 Then
        grddatagrid1.Columns(GGPNDORD).Text = RSV("contno")
    End If
    grddatagrid1.Columns(GGTSTK).Text = val(grddatagrid1.Columns(GGSTK).Text) + val(grddatagrid1.Columns(GGPNDORD).Text)
    
Exit Sub
stockdet_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure stockdet of Form frm_cottonreqplan"
    
End Sub
Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

    If Opt = "add" Then
        If DTPicker2.value < DTPicker1.value Then
            MsgBox "From Date must be equal to or after than the processing Date"
            DTPicker2.value = pdate
        End If
        Text1(1).Text = DateDiff("d", DTPicker2.value, DTPicker3.value) + 1
    End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker2_Change of Form frm_cottonplan"
End Sub

Private Sub DTPicker3_Change()
On Error GoTo DTPicker3_Change_Error

    If Opt = "add" Then
        If DTPicker3.value < DTPicker2.value Then
            MsgBox "To Date must be equal to or after than the processing Date"
            DTPicker3.value = DTPicker2.value
        End If
        Text1(1).Text = DateDiff("d", DTPicker2.value, DTPicker3.value) + 1
    End If

Exit Sub
DTPicker3_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker3_Change of Form frm_cottonplan"
End Sub

Private Sub DTPicker3_LostFocus()
On Error GoTo DTPicker3_LostFocus_Error

    If Opt = "add" Then
        Text1(1).Text = DateDiff("d", DTPicker2.value, DTPicker3.value) + 1
    End If
    If Opt <> "qry" And Opt <> "" Then
        grdDataGrid.Col = GCNTCODE
        grdDataGrid.SetFocus
        Exit Sub
    End If
Exit Sub
DTPicker3_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker3_LostFocus of Form frm_cottonplan"
End Sub

Private Sub DTPicker2_LostFocus()
On Error GoTo DTPicker2_LostFocus_Error

    If Opt = "add" Then
        Text1(1).Text = DateDiff("d", DTPicker2.value, DTPicker3.value) + 1
    End If

Exit Sub
DTPicker2_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker2_LostFocus of Form frm_cottonplan"
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next

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

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    LSNO = GSNO
    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    BUTTON(3).ToolTipText = "List (Ctrl L)"
    BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl Backspace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"
    BUTTON(12).ToolTipText = "Print (Ctrl P)"
    'stbar.Panels(1).Text = sbmsg
    Opt = "qry"
    desc.Caption = "Query"
    Call openconnection
    DATLAB.Caption = pdate   'This variable is declared as global to show the date
'    grddatagrid.ScrollBars = dbgBoth
    DTPicker1.value = Format(pdate, "dd/mm/yyyy")
    DTPicker2.value = Format(pdate, "dd/mm/yyyy")
    DTPicker3.value = Format(pdate, "dd/mm/yyyy")
    Call Query_mode
    Call NEWFORM1(BUTTON, GSNO)

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form frm_cottonplan"
End Sub

Public Sub Query_mode()
On Error GoTo SHOWME
desc.Caption = "Query"
    If Opt = "qry" Then
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select DISTINCT DIVCODE,planNO,pDATE,fdate,tdate,noofdays from rm_cottonplan where divcode ='" & Divcode & "' order by planno", DB, adOpenStatic, adLockOptimistic
       If adoPrimaryRS.RecordCount = 0 Then
            'stbar.Panels(2).Text = "No Records Found"
            SSTab1.Tab = 0
            Set grdDataGrid.DataSource = Nothing
            Call NEWFORM1(BUTTON, GSNO)
            Call clear
            Call DISABLECNTLS
            SSTab1.Enabled = True
       Else
           adoPrimaryRS.MoveLast
           SSTab1.Tab = 0
           Call BINDCNTLS
           Call NEWFORM1(BUTTON, GSNO)
           Call DISABLECNTLS
           stbar.Panels(2).Text = "Record " & adoPrimaryRS.AbsolutePosition & "/" & adoPrimaryRS.RecordCount
       End If
    End If
SHOWME:
    If err.Number Then
        MsgBox err.Description, vbCritical, head
        Screen.MousePointer = 0
    End If
End Sub

Public Sub DISABLECNTLS()
On Error GoTo DISABLECNTLS_Error

    Frame1.Enabled = False
'    Frame2.Enabled = False
    'grddatagrid.Enabled = False
    Frame3.Enabled = False
    grdDataGrid.AllowUpdate = False

Exit Sub
DISABLECNTLS_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DISABLECNTLS of Form frm_cottonplan"
End Sub

Public Sub ENABLECNTLS()
On Error GoTo ENABLECNTLS_Error

    Frame1.Enabled = True
'    Frame2.Enabled = True
    'grddatagrid.Enabled = True
    grdDataGrid.AllowUpdate = True
    If Opt = "add" Then
        DTPicker1.Enabled = True
        Frame3.Enabled = True
    Else
        DTPicker1.Enabled = False
        Frame3.Enabled = False
    End If

Exit Sub
ENABLECNTLS_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ENABLECNTLS of Form frm_cottonplan"
End Sub

Public Sub clear()
On Error GoTo clear_Error

    Text1(0).Text = ""
    Text1(1).Text = ""

Exit Sub
clear_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure CLEAR of Form frm_cottonplan"
End Sub

Public Sub BINDCNTLS()
Dim txt As TextBox
On Error Resume Next

DTPicker1.value = Format(adoPrimaryRS("PDATE"), "dd/mm/yyyy")
DTPicker2.value = Format(adoPrimaryRS("FDATE"), "dd/mm/yyyy")
DTPicker3.value = Format(adoPrimaryRS("TDATE"), "dd/mm/yyyy")
For Each txt In Me.Text1
    Set txt.DataSource = adoPrimaryRS
Next

End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grdDataGrid_AfterColEdit_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case ColIndex
        Case GSPINDLE4
            grdDataGrid.Columns(GPRDKGS).Text = (val(spindlecode(0)) * 3 * val(grdDataGrid.Columns(GSPINDLE1).Text) * val(grdDataGrid.Columns(GGPS).Text) / 1000) + (val(spindlecode(1)) * 3 * val(grdDataGrid.Columns(GSPINDLE2).Text) * val(grdDataGrid.Columns(GGPS).Text) / 1000) + (val(spindlecode(2)) * 3 * val(grdDataGrid.Columns(GSPINDLE3).Text) * val(grdDataGrid.Columns(GGPS).Text) / 1000) + (val(spindlecode(3)) * 3 * val(grdDataGrid.Columns(GSPINDLE4).Text) * val(grdDataGrid.Columns(GGPS).Text) / 1000)
            wt1 = 0
            wt2 = 0
            wt3 = 0
            Set rs = New Recordset
            Sql = ""
            Sql = Sql + Chr(13) & "SELECT WGHTINKGS FROM PPC_MATERIAL a WHERE a.MAT_CODE ='" & Trim(grdDataGrid.Columns(GVARCODE1).Text) & "'"
            rs.Open Sql, DB, adOpenStatic
            If rs.RecordCount = 0 Then
                MsgBox "Please Define Bale Weight for the variety - " & Trim(grdDataGrid.Columns(GVARCODE1).Text) & " In PPC Module", vbInformation, head
                Call BUTTON_Click(10)
                Exit Sub
            End If
            If rs.RecordCount > 0 Then
                wt1 = rs(0)
            End If
            
            Set rs = New Recordset
            Sql = ""
            Sql = Sql + Chr(13) & "SELECT WGHTINKGS FROM PPC_MATERIAL a WHERE a.MAT_CODE ='" & Trim(grdDataGrid.Columns(GVARCODE2).Text) & "'"
            rs.Open Sql, DB, adOpenStatic
            If rs.RecordCount = 0 Then
                MsgBox "Please Define Bale Weight for the variety - " & Trim(grdDataGrid.Columns(GVARCODE2).Text) & " In PPC Module", vbInformation, head
                Call BUTTON_Click(10)
                Exit Sub
            End If
            If rs.RecordCount > 0 Then
                wt2 = rs(0)
            End If
            
            Set rs = New Recordset
            Sql = ""
            Sql = Sql + Chr(13) & "SELECT WGHTINKGS FROM PPC_MATERIAL a WHERE a.MAT_CODE ='" & Trim(grdDataGrid.Columns(GVARCODE3).Text) & "'"
            rs.Open Sql, DB, adOpenStatic
            If rs.RecordCount = 0 Then
                MsgBox "Please Define Bale Weight for the variety - " & Trim(grdDataGrid.Columns(GVARCODE3).Text) & " In PPC Module", vbInformation, head
                Call BUTTON_Click(10)
                Exit Sub
            End If
            If rs.RecordCount > 0 Then
                wt3 = rs(0)
            End If
            wt = (wt1 + wt2 + wt3) / 3
            
            If val(grdDataGrid.Columns(GYR).Text) > 0 And wt > 0 Then grdDataGrid.Columns(GBALEPERDSAY).Text = ((val(grdDataGrid.Columns(GPRDKGS).Text) / val(grdDataGrid.Columns(GYR).Text)) * 100) / wt
            grdDataGrid.Columns(GTOTBALES).Text = val(grdDataGrid.Columns(GBALEPERDSAY).Text) * val(Text1(1).Text)
            
            adoSecondaryRS.AddNew
            grdDataGrid.Col = GSLNO
            grdDataGrid.SetFocus
            Exit Sub
    End Select
End If

Exit Sub
grdDataGrid_AfterColEdit_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_AfterColEdit of Form frm_cottonplan"
End Sub

Private Sub grddatagrid_DblClick()
On Error GoTo grddatagrid_DblClick_Error

'If Opt = "add" Or Opt = "mod" Then
'    If msg = (MsgBox("Do you want to delete the item?", vbYesNo, head) = vbYes) Then
'        adoSecondaryRS.Delete
'    End If
'End If

Exit Sub
grddatagrid_DblClick_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdDataGrid_DblClick of Form ac_splice_strength", vbInformation, head
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next

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
'    If BUTTON(13).Enabled = True Then
'        Call BUTTON_Click(13)   ''Crystal Report
'    End If
End If
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)

On Error GoTo GRDDATAGRID_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case grdDataGrid.Col
    Case GPER1, GPER2, GPER3, GYR
        Call ToNumberAssign(grdDataGrid, 2, KeyAscii, 2, 2)
    Case GSPINDLE1, GSPINDLE2, GSPINDLE3, GSPINDLE4
        Call ToNumberAssign(grdDataGrid, 4, KeyAscii, 4, 0)

    End Select
End If

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_KeyPress of Form frm_cottonplan"
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Or Opt = "mod" Then
    If grdDataGrid.Row <> -1 Then
        Select Case LastCol
                Case GCNTCODE
                If Record_Exists("ig_product WHERE divcode='" & Divcode & "'", "No Record Found") = True Then
                    Set rs = New Recordset
                    rs.Open "SELECT product_code,description FROM ig_product WHERE divcode='" & Divcode & "' and product_code='" & grdDataGrid.Columns(GCNTCODE).Text & "' and product_code not in(" & PC1 & ")", DB, adOpenStatic
                    If rs.RecordCount = 0 Then
                        LookUp.clear = True
                        LookUp.query = "SELECT product_code""Count Code"",Description FROM ig_product WHERE divcode='" & Divcode & "' and product_code not in(" & PC1 & ")"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1500,5000"
                        LookUp.Caption = "Count Listing"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            grdDataGrid.Columns(GCNTCODE).Text = LookUp.Fields(0)
                            grdDataGrid.Columns(GCNTDESC).Text = LookUp.Fields(1)
                            If PC1 <> "' '" Then
                                PC1 = PC1 & ",'" & LookUp.Fields(0) & "'"
                            Else
                                PC1 = "'" & grdDataGrid.Columns(GCNTCODE).Text & "'"
                            End If
                            LookUp.clear = True
                            If grdDataGrid.Columns(GCNTCODE).Text <> "" Then
                                Set rs = New Recordset
                                rs.Open "select isnull(targetgps,0) as targetgps from scount where divcode='" & Divcode & "' and cntcode='" & grdDataGrid.Columns(GCNTCODE).Text & "'", DB, adOpenStatic
                                If rs.RecordCount > 0 Then
                                    grdDataGrid.Columns(GGPS).Text = rs(0)
                                End If
                            End If
                            grdDataGrid.Col = GVARCODE1
                            grdDataGrid.SetFocus
                            Exit Sub
                        Else
                            grdDataGrid.Col = GCNTCODE
                            grdDataGrid.SetFocus
                            Exit Sub
                        End If
                    Else
                        grdDataGrid.Columns(GCNTCODE).Text = rs(0)
                        grdDataGrid.Columns(GCNTDESC).Text = rs(1)
                        If PC1 <> "' '" Then
                            PC1 = PC1 & ",'" & rs(0) & "'"
                        Else
                            PC1 = "'" & grdDataGrid.Columns(GCNTCODE).Text & "'"
                        End If
                        If grdDataGrid.Columns(GCNTCODE).Text <> "" Then
                            Set rs = New Recordset
                            rs.Open "select isnull(targetgps,0) as targetgps from scount where divcode='" & Divcode & "' and cntcode='" & grdDataGrid.Columns(GCNTCODE).Text & "'", DB, adOpenStatic
                            If rs.RecordCount > 0 Then
                                grdDataGrid.Columns(GGPS).Text = rs(0)
                            End If
                        End If
                    End If
                Else
                    Opt = "qry"
                    Call Query_mode
                    BUTTON(0).SetFocus
                    Exit Sub
                End If
                
            Case GVARCODE1
                If Record_Exists("rm_var", "No Record Found") = True Then
                    Set rs = New Recordset
                    rs.Open "SELECT varcode,varname FROM rm_var WHERE varcode='" & grdDataGrid.Columns(GVARCODE1).Text & "' and varcode not in('" & grdDataGrid.Columns(GVARCODE2).Text & "','" & grdDataGrid.Columns(GVARCODE3).Text & "')", DB, adOpenStatic
                    If rs.RecordCount = 0 Then
                        LookUp.clear = True
                        LookUp.query = "SELECT varcode""Variety"",varname""Description"" FROM rm_var WHERE varcode not in('" & grdDataGrid.Columns(GVARCODE2).Text & "','" & grdDataGrid.Columns(GVARCODE3).Text & "')"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1500,5000"
                        LookUp.Caption = "Variety Listing"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            grdDataGrid.Columns(GVARCODE1).Text = LookUp.Fields(0)
                            LookUp.clear = True
                            grdDataGrid.Col = GPER1
                            grdDataGrid.SetFocus
                            Exit Sub
                        Else
                            grdDataGrid.Col = GVARCODE1
                            grdDataGrid.SetFocus
                            Exit Sub
                        End If
                    Else
                        grdDataGrid.Columns(GVARCODE1).Text = rs(0)
                    End If
                Else
                    Opt = "qry"
                    Call Query_mode
                    BUTTON(0).SetFocus
                    Exit Sub
                End If
            Case GVARCODE2
                If Record_Exists("rm_var", "No Record Found") = True Then
                    Set rs = New Recordset
                    rs.Open "SELECT varcode,varname FROM rm_var WHERE varcode='" & grdDataGrid.Columns(GVARCODE2).Text & "' and varcode not in('" & grdDataGrid.Columns(GVARCODE1).Text & "','" & grdDataGrid.Columns(GVARCODE3).Text & "')", DB, adOpenStatic
                    If rs.RecordCount = 0 Then
                        LookUp.clear = True
                        LookUp.query = "SELECT varcode""Variety"",varname""Description"" FROM rm_var WHERE varcode not in('" & grdDataGrid.Columns(GVARCODE1).Text & "','" & grdDataGrid.Columns(GVARCODE3).Text & "')"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1500,5000"
                        LookUp.Caption = "Variety Listing"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            grdDataGrid.Columns(GVARCODE2).Text = LookUp.Fields(0)
                            LookUp.clear = True
                            grdDataGrid.Col = GPER2
                            grdDataGrid.SetFocus
                            Exit Sub
                        Else
                            grdDataGrid.Col = GVARCODE2
                            grdDataGrid.SetFocus
                            Exit Sub
                        End If
                    Else
                        grdDataGrid.Columns(GVARCODE2).Text = rs(0)
                    End If
                Else
                    Opt = "qry"
                    Call Query_mode
                    BUTTON(0).SetFocus
                    Exit Sub
                End If
            Case GVARCODE3
                If Record_Exists("rm_var", "No Record Found") = True Then
                    Set rs = New Recordset
                    rs.Open "SELECT varcode,varname FROM rm_var WHERE varcode='" & grdDataGrid.Columns(GVARCODE3).Text & "' and varcode not in('" & grdDataGrid.Columns(GVARCODE1).Text & "','" & grdDataGrid.Columns(GVARCODE2).Text & "')", DB, adOpenStatic
                    If rs.RecordCount = 0 Then
                        LookUp.clear = True
                        LookUp.query = "SELECT varcode""Variety"",varname""Description"" FROM rm_var WHERE varcode not in('" & grdDataGrid.Columns(GVARCODE1).Text & "','" & grdDataGrid.Columns(GVARCODE2).Text & "')"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1500,5000"
                        LookUp.Caption = "Variety Listing"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            grdDataGrid.Columns(GVARCODE3).Text = LookUp.Fields(0)
                            LookUp.clear = True
                            grdDataGrid.Col = GPER3
                            grdDataGrid.SetFocus
                            Exit Sub
                        Else
                            grdDataGrid.Col = GVARCODE3
                            grdDataGrid.SetFocus
                            Exit Sub
                        End If
                    Else
                        grdDataGrid.Columns(GVARCODE3).Text = rs(0)
                    End If
                Else
                    Opt = "qry"
                    Call Query_mode
                    BUTTON(0).SetFocus
                    Exit Sub
                End If
        Case GPER1
            If grdDataGrid.Columns(GPER1).Text = "" Then
                grdDataGrid.Col = GPER1
                grdDataGrid.SetFocus
                Exit Sub
            End If
        Case GPER2
            If grdDataGrid.Columns(GPER2).Text = "" Then
                grdDataGrid.Col = GPER2
                grdDataGrid.SetFocus
                Exit Sub
            End If
        Case GPER3
            If val(grdDataGrid.Columns(GPER1).Text) + val(grdDataGrid.Columns(GPER2).Text) + val(grdDataGrid.Columns(GPER3).Text) <> 100 Then
                MsgBox "Variety % must be equal to 100", vbInformation, head
                grdDataGrid.Col = GPER3
                grdDataGrid.SetFocus
                Exit Sub
            End If
        Case GYR
            If grdDataGrid.Columns(GYR).Text = "" Then
                grdDataGrid.Col = GYR
                grdDataGrid.SetFocus
                Exit Sub
            End If
        Case GSPINDLE1
            If grdDataGrid.Columns(GSPINDLE1).Text = "" Then
                grdDataGrid.Col = GSPINDLE1
                grdDataGrid.SetFocus
                Exit Sub
            End If
        Case GSPINDLE2
            If grdDataGrid.Columns(GSPINDLE2).Text = "" Then
                grdDataGrid.Col = GSPINDLE2
                grdDataGrid.SetFocus
                Exit Sub
            End If
        Case GSPINDLE3
            If grdDataGrid.Columns(GSPINDLE3).Text = "" Then
                grdDataGrid.Col = GSPINDLE3
                grdDataGrid.SetFocus
                Exit Sub
            End If
        Case GSPINDLE4
            If grdDataGrid.Columns(GSPINDLE4).Text = "" Then
                grdDataGrid.Col = GSPINDLE4
                grdDataGrid.SetFocus
                Exit Sub
            End If
        End Select
    End If
End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdDataGrid_RowColChange of Form frm_cottonplan"
End Sub



Private Sub GRIDALIGN()
On Error Resume Next
    grdDataGrid.Columns(GSLNO).Visible = False
    grdDataGrid.Columns(GCNTCODE).Caption = "Count"
    grdDataGrid.Columns(GCNTDESC).Caption = "Description"
    grdDataGrid.Columns(GVARCODE1).Caption = "Variety"
    grdDataGrid.Columns(GVARCODE2).Caption = "Variety"
    grdDataGrid.Columns(GVARCODE3).Caption = "Variety"
    grdDataGrid.Columns(GPER1).Caption = "         %"
    grdDataGrid.Columns(GPER2).Caption = "         %"
    grdDataGrid.Columns(GPER3).Caption = "         %"
    grdDataGrid.Columns(GYR).Caption = "Expected YR"
    grdDataGrid.Columns(GGPS).Caption = "   Gms/Spl"
    grdDataGrid.Columns(GPRDKGS).Caption = "Prodn/Day in Kgs."
    grdDataGrid.Columns(GBALEPERDSAY).Caption = "Bales Req./Day"
    grdDataGrid.Columns(GTOTBALES).Caption = "Total No of Bales Req."
    
    grdDataGrid.Columns(GCNTDESC).Width = 800
    grdDataGrid.Columns(GCNTDESC).Width = 2500
    grdDataGrid.Columns(GVARCODE1).Width = 800
    grdDataGrid.Columns(GVARCODE2).Width = 800
    grdDataGrid.Columns(GVARCODE3).Width = 800
    grdDataGrid.Columns(GPER1).Width = 800
    grdDataGrid.Columns(GPER2).Width = 800
    grdDataGrid.Columns(GPER3).Width = 800
    grdDataGrid.Columns(GYR).Width = 1200
    grdDataGrid.Columns(GGPS).Width = 1000
    grdDataGrid.Columns(GPRDKGS).Width = 1000
    grdDataGrid.Columns(GBALEPERDSAY).Width = 1500
    grdDataGrid.Columns(GTOTBALES).Width = 2000
    
    grdDataGrid.Columns(GCNTDESC).Locked = True
    grdDataGrid.Columns(GGPS).Locked = True
    grdDataGrid.Columns(GPRDKGS).Locked = True
    grdDataGrid.Columns(GBALEPERDSAY).Locked = True
    grdDataGrid.Columns(GTOTBALES).Locked = True
    
    grdDataGrid.Columns(GPER1).Alignment = dbgRight
    grdDataGrid.Columns(GPER2).Alignment = dbgRight
    grdDataGrid.Columns(GPER3).Alignment = dbgRight
    grdDataGrid.Columns(GYR).Alignment = dbgRight
    grdDataGrid.Columns(GGPS).Alignment = dbgRight
    grdDataGrid.Columns(GPRDKGS).Alignment = dbgRight
    grdDataGrid.Columns(GBALEPERDSAY).Alignment = dbgRight
    grdDataGrid.Columns(GTOTBALES).Alignment = dbgRight
    grdDataGrid.Columns(GSPINDLE1).Alignment = dbgRight
    grdDataGrid.Columns(GSPINDLE2).Alignment = dbgRight
    grdDataGrid.Columns(GSPINDLE3).Alignment = dbgRight
    grdDataGrid.Columns(GSPINDLE4).Alignment = dbgRight
    
    Set ParaRs = New Recordset
    ParaRs.Open "select isnull(spindle1,0) as spindle1,isnull(spindle2,0) as spindle2,isnull(spindle3,0) as spindle3,isnull(spindle4,0) as spindle4 from rm_param", DB, adOpenStatic
    If ParaRs.RecordCount > 0 Then
        grdDataGrid.Columns(GSPINDLE1).Caption = "      " & ParaRs("spindle1")
        grdDataGrid.Columns(GSPINDLE2).Caption = "      " & ParaRs("spindle2")
        grdDataGrid.Columns(GSPINDLE3).Caption = "      " & ParaRs("spindle3")
        grdDataGrid.Columns(GSPINDLE4).Caption = "      " & ParaRs("spindle4")
        spindlecode(0) = ParaRs("spindle1")
        spindlecode(1) = ParaRs("spindle2")
        spindlecode(2) = ParaRs("spindle3")
        spindlecode(3) = ParaRs("spindle4")
    End If
    
    
    grddatagrid1.Columns(GGVARCODE).Caption = "Variety"
    grddatagrid1.Columns(GGSTK).Caption = "Present Stock"
    grddatagrid1.Columns(GGPNDORD).Caption = "Pending Order"
    grddatagrid1.Columns(GGTSTK).Caption = "Total Stock"
    grddatagrid1.Columns(GGBALEREQ).Caption = "Further Bales Requirement"
    grddatagrid1.Columns(GGSTATUS).Caption = "Status"
    grddatagrid1.Columns(GGAVAILDAY).Caption = "Stock Available Days"
    grddatagrid1.Columns(GGSTKLASTDT).Caption = "Stock Will Last Upto"
    
    grddatagrid1.Columns(GGDIVCODE).Visible = False
    
    grddatagrid1.Columns(GGVARCODE).Width = 1000
    grddatagrid1.Columns(GGSTK).Width = 1500
    grddatagrid1.Columns(GGPNDORD).Width = 1400
    grddatagrid1.Columns(GGTSTK).Width = 1500
    grddatagrid1.Columns(GGBALEREQ).Width = 2200
    grddatagrid1.Columns(GGSTATUS).Width = 2000
    grddatagrid1.Columns(GGAVAILDAY).Width = 2000
    grddatagrid1.Columns(GGSTKLASTDT).Width = 2000
    
    grddatagrid1.Columns(GGVARCODE).Locked = True
    grddatagrid1.Columns(GGSTK).Locked = True
    grddatagrid1.Columns(GGPNDORD).Locked = True
    grddatagrid1.Columns(GGTSTK).Locked = True
    grddatagrid1.Columns(GGBALEREQ).Locked = True
    grddatagrid1.Columns(GGSTATUS).Locked = True
    grddatagrid1.Columns(GGAVAILDAY).Locked = True
    grddatagrid1.Columns(GGSTKLASTDT).Locked = True
    
End Sub
