VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.4#0"; "comctl32.ocx"
Begin VB.Form frmMaterial 
   Caption         =   "Material"
   ClientHeight    =   7740
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8955
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7740
   ScaleWidth      =   8955
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   12
      Left            =   5240
      Picture         =   "frmMaterial.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   19
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   10
      Width           =   585
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   270
      Top             =   6990
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   17
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":0442
         Enabled         =   0   'False
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "frmMaterial.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":0BD9
         Enabled         =   0   'False
         Height          =   510
         Index           =   0
         Left            =   15
         Picture         =   "frmMaterial.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":1276
         Enabled         =   0   'False
         Height          =   510
         Index           =   5
         Left            =   2100
         Picture         =   "frmMaterial.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":1A25
         Enabled         =   0   'False
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
         Left            =   1050
         Picture         =   "frmMaterial.frx":1D2F
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":20CB
         Height          =   510
         Index           =   1
         Left            =   525
         Picture         =   "frmMaterial.frx":23D5
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1575
         Picture         =   "frmMaterial.frx":274F
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":2AE6
         Enabled         =   0   'False
         Height          =   510
         Index           =   7
         Left            =   3135
         Picture         =   "frmMaterial.frx":2F30
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":3280
         Height          =   510
         Index           =   11
         Left            =   5815
         Picture         =   "frmMaterial.frx":36CA
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":3A5F
         Height          =   510
         Index           =   9
         Left            =   4185
         Picture         =   "frmMaterial.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":410B
         Height          =   510
         Index           =   10
         Left            =   4710
         Picture         =   "frmMaterial.frx":4415
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":4791
         Enabled         =   0   'False
         Height          =   510
         Index           =   8
         Left            =   3645
         Picture         =   "frmMaterial.frx":4BDB
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmMaterial.frx":4F3D
         Height          =   510
         Index           =   4
         Left            =   6360
         Picture         =   "frmMaterial.frx":5247
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Find"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.Label lblDate 
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
         Left            =   9045
         TabIndex        =   16
         Top             =   255
         Width           =   630
      End
      Begin VB.Label lbldesc 
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
         Left            =   7635
         TabIndex        =   15
         Top             =   255
         Width           =   615
      End
   End
   Begin ComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   330
      Left            =   0
      TabIndex        =   9
      Top             =   7410
      Width           =   8955
      _ExtentX        =   15796
      _ExtentY        =   582
      SimpleText      =   ""
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   4
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Alignment       =   1
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
            Key             =   ""
            Object.Tag             =   ""
            Object.ToolTipText     =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            AutoSize        =   1
            Object.Width           =   7567
            TextSave        =   ""
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel3 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Style           =   6
            TextSave        =   "04/06/2025"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel4 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Style           =   5
            TextSave        =   "11:48 AM"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5400
      Left            =   900
      TabIndex        =   8
      Top             =   1320
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   9525
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmMaterial.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SpdMain"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin FPSpreadADO.fpSpread SpdMain 
         Height          =   5190
         Left            =   90
         TabIndex        =   18
         Top             =   90
         Width           =   6900
         _Version        =   524288
         _ExtentX        =   12171
         _ExtentY        =   9155
         _StockProps     =   64
         DisplayRowHeaders=   0   'False
         EditEnterAction =   5
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         GridColor       =   16777215
         MaxCols         =   3
         MaxRows         =   1
         ScrollBars      =   2
         SpreadDesigner  =   "frmMaterial.frx":55F8
         UserResize      =   0
         ScrollBarTrack  =   1
         AppearanceStyle =   0
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Material"
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
      TabIndex        =   7
      Top             =   930
      Width           =   1125
   End
End
Attribute VB_Name = "frmMaterial"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'-----------------------------------------
'CREATED BY N.SOUNDARA RAJAN ON 19.10.2007
'-----------------------------------------
Dim SqlStr As String
Dim RsList, TrnLog As Recordset
Dim Opt As ModeType
Dim I As Integer
Dim DB As ADODB.Connection
Dim SpdGen As New ClsSpdGen
Dim ConnDB As New ClsConn

Private Property Let ButEd(EnableOrDisable As Boolean)
On Error GoTo ButEd_Error

    Call ButEnaDis(EnableOrDisable)

Exit Property
ButEd_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ButEd of Form frmMaterial", vbInformation, head
Screen.MousePointer = 0
End Property

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
    Select Case Index
    Case 0                  'Add
        SpdGen.SpdClear SpdMain
        Opt = ADD
        lbldesc.Caption = "Addition"
        ButEd = False
        SpdGen.SpdSetFocus SpdMain, 1, 1
    Case 1                  'Modification
        Opt = modification
        lbldesc.Caption = "Modification"
        SqlStr = "Select MAT_CODE AS CODE, MAT_DESC AS DESCRIPTION, MATERIALID,  "
        SqlStr = SqlStr & Chr(13) & " Case IsNull(M.Mat_Type, 'C') When 'C' Then 'COTTON' When 'S' Then 'SYNTHETIC' End As Type"
        SqlStr = SqlStr & Chr(13) & " From PPC_Material M "
        SqlStr = SqlStr & Chr(13) & " Order By M.Mat_Desc "
                            
        LookUp.Clear = True
        LookUp.Caption = "Material"
        LookUp.query = SqlStr
        LookUp.DefCol = "CODE"
        LookUp.ALIGN = "2000,4000, 0, 2000"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            SpdGen.SpdClear SpdMain
            SpdMain.Row = SpdMain.MaxRows
            SpdMain.Col = 1
            SpdMain.Text = LookUp.Fields(0)
            SpdMain.Col = 2
            SpdMain.Text = LookUp.Fields(1)
            SpdMain.Col = 1
            SpdMain.CellTag = LookUp.Fields(2)
            SpdMain.Col = 3
            SpdMain.Text = LookUp.Fields(3)
            
            ButEd = False
            SpdGen.SpdLockUnlock SpdMain, True, False, 1, 1, 1, SpdMain.MaxRows
            SpdGen.SpdSetFocus SpdMain, 1, 1
        End If
        
    Case 2                  'Delete
        Opt = Delete
        lbldesc.Caption = "Deletion"
        SqlStr = "Select MAT_CODE AS CODE, MAT_DESC AS DESCRIPTION, MATERIALID,  "
        SqlStr = SqlStr & Chr(13) & " Case IsNull(M.Mat_Type, 'C') When 'C' Then 'COTTON' When 'S' Then 'SYNTHETIC' End As Type"
        SqlStr = SqlStr & Chr(13) & " From PPC_Material M "
        SqlStr = SqlStr & Chr(13) & " Order By M.Mat_Desc "

        LookUp.Clear = True
        LookUp.Caption = "Material"
        LookUp.query = SqlStr
        LookUp.DefCol = "CODE"
        LookUp.ALIGN = "2000,4000, 0"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            SpdGen.SpdClear SpdMain
            SpdMain.Row = SpdMain.MaxRows
            SpdMain.Col = 1
            SpdMain.Text = LookUp.Fields(0)
            SpdMain.Col = 2
            SpdMain.Text = LookUp.Fields(1)
            SpdMain.Col = 1
            SpdMain.CellTag = LookUp.Fields(2)
            SpdMain.Col = 3
            SpdMain.Text = LookUp.Fields(3)
            
            ButEd = False
            SpdGen.SpdLockUnlock SpdMain, True, True
            SpdGen.SpdSetFocus SpdMain, 1, 1
        End If
        
    Case 12                  'List
        
'        SqlSafe "Select Mat_Code As [Material], Mat_Desc As [Description], Mat_Type As [Type]"
'        SqlSafe "From PPC_Material", SqlStr
'
'
'        Call DLLMasterListing(SqlStr, "9,30,5", "0,0,0", "Material Listing", DB)
    Dim clsCryRptMaterial As New clsCrystal
  Set clsCryRptMaterial.cryRept = Cry_SetupMaterial
  clsCryRptMaterial.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
  Screen.MousePointer = 0
    Case 9                  'Save
        If ChkCtrls = True Then
            Call Save
            Call StoreChars
            ButEd = True
            Call NEWFORM1(BUTTON, GSNO)
            BUTTON(0).SetFocus
            SpdGen.SpdLockUnlock SpdMain, True, True
        End If
    Case 10                 'Cancel
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
        Call StoreChars
        ButEd = True
        Call NEWFORM1(BUTTON, GSNO)
        SpdGen.SpdLockUnlock SpdMain, True, True
    Case 11                 'Exit
        Unload Me
    End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frmMaterial", vbInformation, head
End Sub

Private Sub Form_Load()

On Error GoTo Form_Load_Error
intervalMinutes = -1
    Set ConnDB = New ClsConn
    ConnDB.ConnOpen DB
    Set ConnDB.Connection_Object = DB
    
    SpdGen.AssignSpread SpdMain
    
    SpdMain.ButtonDrawMode = ButtonDrawModeCurrentCell
    
    StoreChars
    ButEd = True
    SpdGen.SpdLockUnlock SpdMain, True, True
    lblDate.Caption = Date
    Call NEWFORM1(BUTTON, GSNO)
    intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmMaterial", vbInformation, head
End Sub
Private Sub StoreChars()
On Error GoTo StoreChars_Error
    intervalMinutes = -1
    SqlStr = "Select M.Mat_Code, M.Mat_Desc, "
    SqlStr = SqlStr & Chr(13) & " Case IsNull(M.Mat_Type, 'C') When 'C' Then 'COTTON' When 'S' Then 'SYNTHETIC' End As Type, "
    SqlStr = SqlStr & Chr(13) & " M.MaterialID"
    SqlStr = SqlStr & Chr(13) & " From PPC_Material M "
    SqlStr = SqlStr & Chr(13) & " Order By M.Mat_Desc "
   
    SpdGen.SpdFill SpdMain, SqlStr, DB, "1", "MaterialID"

Exit Sub
StoreChars_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StoreChars of Form frmMaterial", vbInformation, head
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub SpdMain_Change(ByVal Col As Long, ByVal Row As Long)
Dim MatCodes As String
Dim RsTmpMat As Recordset
On Error GoTo SpdMain_Change_Error
intervalMinutes = -1
    If Col = 1 Then
    
        MatCodes = SpdGen.GetColString(1, True, Row)
        
        If Len(MatCodes) > 0 Then
            MatCodes = "And VarCode Not In (" & MatCodes & ")"
        End If
        
        SqlSafe "Select VarCode As Material, Varname As Description "
        SqlSafe "From RM_VAR "
        SqlSafe "Where Varcode Not In ( "
        SqlSafe "Select Mat_Code From PPC_Material )"
        SqlSafe MatCodes, SqlStr
        
        SpdMain.Row = SpdMain.ActiveRow: SpdMain.Col = Col
        
        Set RsTmpMat = New Recordset
        RsTmpMat.Open SqlStr & " And VarCode = '" & SpdMain.Text & "'", DB, adOpenStatic, adLockReadOnly
        
        If Not RsTmpMat.EOF Then
            SpdMain.Col = 1: SpdMain.Text = RsTmpMat!Material
            SpdMain.Col = 2: SpdMain.Text = RsTmpMat!Description
            SpdMain.Col = 3: SpdMain.Text = ""
            SpdGen.SpdSetFocus SpdMain, 3, Row
            Exit Sub
        End If
        
        Set RsTmpMat = New Recordset
        RsTmpMat.Open SqlStr, DB, adOpenStatic, adLockReadOnly
        
        If RsTmpMat.EOF Then
            MsgBox "No Details to List.", vbInformation, head
            Exit Sub
        End If
        
        LookUp.Clear = True
        LookUp.query = SqlStr
        LookUp.ALIGN = "2000,3000"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            SpdMain.Row = SpdMain.ActiveRow
            SpdMain.Col = 1: SpdMain.Text = LookUp.Fields(0)
            SpdMain.Col = 2: SpdMain.Text = LookUp.Fields(1)
            SpdMain.Col = 3: SpdMain.Text = ""
            
            Exit Sub
        End If
    End If

Exit Sub
SpdMain_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdMain_Change of Form frmMaterial", vbInformation, head
End Sub

Private Sub SpdMain_GotFocus()
    'SpdMain.ShadowColor = SPD_HEADER_HLIGHT_COLOR
On Error GoTo SpdMain_GotFocus_Error

    StatusBar1.Panels(2).Text = ""
    If SpdMain.Col = 1 Then
        StatusBar1.Panels(2).Text = "Enter Material Code"
    ElseIf SpdMain.Col = 3 Then
        StatusBar1.Panels(2).Text = "Select Material Type"
    Else
        StatusBar1.Panels(2).Text = ""
    End If
    

Exit Sub
SpdMain_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdMain_GotFocus of Form frmMaterial", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub SpdMain_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo SpdMain_KeyDown_Error

    If KeyCode = 13 Then
        If SpdMain.ActiveRow = SpdMain.MaxRows Then
            If SpdValidRow(SpdMain, SpdMain.MaxRows, True).FnBool = True Then
                SpdMain.MaxRows = SpdMain.MaxRows + 1
                Call SpdMain_LeaveCell(SpdMain.ActiveCol, SpdMain.ActiveRow, 0, SpdMain.MaxRows, False)
            End If
        End If
    End If

Exit Sub
SpdMain_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdMain_KeyDown of Form frmMaterial", vbInformation, head
End Sub

Private Sub SpdMain_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NEWROW As Long, Cancel As Boolean)
On Error GoTo SpdMain_LeaveCell_Error

    If NEWROW <= 0 Then Exit Sub

'    If Col = 1 Or Col = 2 Then
'        SpdMain.Row = Row
'        SpdMain.Col = Col
'
'        If SpdMain.SearchCol(Col, 1, SpdMain.MaxRows, SpdMain.Text, SearchFlagsCaseSensitive) > 1 Then
'            StatusBar1.Panels(2).Text = "Material Code / Description Already Exists."
'            SpdSetFocus SpdMain, Col, Row
'            SpdHighlight SpdMain, Row, Col
'            Cancel = True
'            Exit Sub
'        End If
        
        SpdGen.SpdSetFocus SpdMain, NewCol, NEWROW
'        SpdHighlight SpdMain, NewRow, NewCol
        
'       End If

Exit Sub
SpdMain_LeaveCell_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdMain_LeaveCell of Form frmMaterial", vbInformation, head
Screen.MousePointer = 0
    
End Sub
Private Sub SpdMain_LostFocus()
    'SpdMain.ShadowColor = SPD_HEADER_COLOR
    'SpdHighlight SpdMain, 0, 0
End Sub

Private Sub ButEnaDis(EnaOrDis As Boolean)
On Error GoTo EnaDisCtrls_Error

    
    Call EnaDisCtrls(Me, EnaOrDis)
        
    BUTTON(5).Enabled = False
    BUTTON(6).Enabled = False
    BUTTON(7).Enabled = False
    BUTTON(8).Enabled = False

 
Exit Sub
EnaDisCtrls_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure EnaDisCtrls of Form frm_QcWrpng"
End Sub
Private Sub Save()
Dim SqlSave As String
Dim Saved As Boolean
Dim MaterialIDs As String
On Error GoTo Save_Error

On Error GoTo Save_Error
Saved = False
DB.BeginTrans

    If Opt = ADD Then
        
        With SpdMain
            For I = 1 To .MaxRows
                .Row = I
'                SqlSave = "Insert Into PPC_Material (DivCode, UnitCode, Mat_Code, Mat_Desc ) "
'                SqlSave = SqlSave & "Values('" & divcode & "', '" & unitcode & "',"
'                .Col = 1: SqlSave = SqlSave & "'" & .Text & "',"
'                .Col = 2: SqlSave = SqlSave & "'" & .Text & "')"

                .Col = 1: SqlSave = "'" & .Text & "',"
                .Col = 2: SqlSave = SqlSave & "'" & .Text & "',"
                .Col = 3: SqlSave = SqlSave & "'" & Mid(.Text, 1, 1) & "'"
                
                
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,slcode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Material"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            .Col = 1
            TrnLog("code") = Trim(.Text)
             .Col = 2
            TrnLog("description") = Trim(.Text)
                .Col = 3
            TrnLog("slcode") = Trim(.Text)
            TrnLog.UpdateBatch adAffectAllChapters
                

                ConnDB.Insert "PPC_Material", SqlSave, "MAT_CODE,MAT_DESC,MAT_TYPE"
            Next I
        End With
                
    ElseIf Opt = modification Then
    
        MaterialIDs = SpdGen.GetColString(1)
        ConnDB.Delete "PPC_Material", "Mat_Code In (" & MaterialIDs & ")"
    
        With SpdMain
            .Col = 1: SqlSave = "'" & .Text & "',"
            .Col = 2: SqlSave = SqlSave & "'" & .Text & "',"
            .Col = 3: SqlSave = SqlSave & "'" & Mid(.Text, 1, 1) & "'"

            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,slcode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Material"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            SpdMain.Col = 1
            TrnLog("code") = Trim(.Text)
             SpdMain.Col = 2
            TrnLog("description") = Trim(.Text)
                SpdMain.Col = 3
            TrnLog("slcode") = Trim(.Text)
            TrnLog.UpdateBatch adAffectAllChapters

            ConnDB.Insert "PPC_Material", SqlSave, "MAT_CODE,MAT_DESC,MAT_TYPE"
        End With
    
    ElseIf Opt = Delete Then
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
            MaterialIDs = SpdGen.GetColString(1)
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,slcode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Material"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
         
            TrnLog("code") = Trim(MaterialIDs)
                SpdMain.Col = 2
            TrnLog("description") = Trim(SpdMain.Text)
                SpdMain.Col = 3
            TrnLog("slcode") = Trim(SpdMain.Text)

            TrnLog.UpdateBatch adAffectAllChapters
            
            ConnDB.Delete "PPC_Material", "Mat_Code In (" & MaterialIDs & ")"
        Else
            Exit Sub
        End If
    End If
    

DB.CommitTrans
Exit Sub
Save_Error:
    If Saved = False Then DB.RollbackTrans
    If Err.Number = -2147217900 Then
        MsgBox "Master Conflicted with some other transaction Entries.", vbInformation, head
    Else
        MsgBox Err.Description, vbInformation, head
    End If

Screen.MousePointer = 0
End Sub


Private Function ChkCtrls() As Boolean
Dim RsChk As ADODB.Recordset
On Error GoTo ChkCtrls_Error

    ChkCtrls = False
    
    If Opt = Delete Then GoTo l

    If SpdValidRow(SpdMain, SpdMain.MaxRows, True).FnBool = False Then
        SpdMain.MaxRows = SpdMain.MaxRows - 1
    End If
    
    If SpdMain.MaxRows <= 0 Then
        MsgBox "Enter the valid data.", vbInformation, head
        SpdMain.MaxRows = 1
        SpdGen.SpdSetFocus SpdMain, 1, SpdMain.MaxRows
        Exit Function
    End If
    
    
    If Opt = ADD Then
    
        'SqlStr = "Select * from PPC_Material Where DivCode = '" & divcode & "' And UnitCode = '" & unitcode & "' "
        SqlStr = "Select * from PPC_Material"
        Set RsChk = New ADODB.Recordset
        RsChk.Open SqlStr, DB, adOpenStatic, adLockReadOnly
        
        For I = 1 To SpdMain.MaxRows
            SpdMain.Row = I
            SpdMain.Col = 1
            
            RsChk.Filter = 0
            RsChk.Filter = " Mat_Code = '" & SpdMain.Text & "' "
            
            If Not RsChk.EOF Then
                MsgBox "Material Code Already Exists.", vbInformation, head
                SpdMain_LeaveCell SpdMain.ActiveCol, SpdMain.ActiveRow, 1, I, False
                Exit Function
            End If
        Next I
    End If
    

        
    If Opt = ADD Then
    
        'SqlStr = "Select * from PPC_Material Where DivCode = '" & divcode & "' And UnitCode = '" & unitcode & "' "
        SqlStr = "Select * from PPC_Material "
        
        Set RsChk = New ADODB.Recordset
        RsChk.Open SqlStr, DB, adOpenStatic, adLockReadOnly
        
        For I = 1 To SpdMain.MaxRows
            SpdMain.Row = I
            SpdMain.Col = 2
            RsChk.Filter = " Mat_Desc = '" & SpdMain.Text & "' "
            If Not RsChk.EOF Then
                MsgBox "Material Description Already Exists.", vbInformation, head
                SpdMain_LeaveCell SpdMain.ActiveCol, SpdMain.ActiveRow, 2, I, False
                Exit Function
            End If
        Next I
    End If

        
l:
    ChkCtrls = True

Exit Function
ChkCtrls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ChkCtrls of Form frmMaterial", vbInformation, head
End Function
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
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmMaterial", vbInformation, head
Screen.MousePointer = 0
End Sub


