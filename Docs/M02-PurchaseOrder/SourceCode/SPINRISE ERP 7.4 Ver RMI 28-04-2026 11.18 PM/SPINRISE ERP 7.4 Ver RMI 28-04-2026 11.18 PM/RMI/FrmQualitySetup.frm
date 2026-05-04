VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmQualitySetup 
   Caption         =   "Quality Parameter Range"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   9480
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   3
      Top             =   -90
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5760
         Picture         =   "FrmQualitySetup.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":0442
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "FrmQualitySetup.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":0BEE
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "FrmQualitySetup.frx":0EF8
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":1274
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "FrmQualitySetup.frx":157E
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":1920
         Height          =   510
         Index           =   11
         Left            =   6255
         Picture         =   "FrmQualitySetup.frx":1D6A
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":20FF
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "FrmQualitySetup.frx":2549
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "FrmQualitySetup.frx":2899
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":2C30
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "FrmQualitySetup.frx":2F3A
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":32B4
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
         Left            =   1110
         Picture         =   "FrmQualitySetup.frx":35BE
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":395A
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "FrmQualitySetup.frx":3DA4
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":4109
         Enabled         =   0   'False
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "FrmQualitySetup.frx":4413
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   105
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":47A6
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "FrmQualitySetup.frx":4BF0
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualitySetup.frx":4F3D
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "FrmQualitySetup.frx":5247
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   7035
         TabIndex        =   17
         Top             =   255
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8565
         TabIndex        =   16
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2685
      Left            =   345
      TabIndex        =   0
      Top             =   1455
      Width           =   8415
      _ExtentX        =   14843
      _ExtentY        =   4736
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "FrmQualitySetup.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SpdQuality"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin FPSpreadADO.fpSpread SpdQuality 
         Height          =   2415
         Left            =   120
         TabIndex        =   1
         Top             =   120
         Width           =   7815
         _Version        =   524288
         _ExtentX        =   13785
         _ExtentY        =   4260
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
         EditEnterAction =   5
         EditModePermanent=   -1  'True
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
         MaxCols         =   4
         MaxRows         =   5
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "FrmQualitySetup.frx":55F8
         UserResize      =   1
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   18
      Top             =   2790
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "04/11/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "01:18 PM"
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
   Begin VB.Label Label1 
      Caption         =   "Quality Parameter Range"
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
      Height          =   465
      Left            =   375
      TabIndex        =   2
      Top             =   825
      Width           =   3645
   End
End
Attribute VB_Name = "FrmQualitySetup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim Opt As String
Dim FLGRT As Boolean
Dim st, st1, st2 As String
Dim DB As Connection
Dim Code As String
Dim a As Integer
Dim TmpRs As Recordset
Dim RW As Integer


Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Rate Unit"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
        'addition
        Opt = "add"
        desc.Caption = "Addition"
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        DB.BeginTrans
        SpdQuality.Enabled = True
    
'        With SpdQuality
'        For RW = 1 To .MaxRows
'          .SetText 2, RW, ""
'
'        Next
'        End With

Case 1
        Opt = "mod"
        Call SpdLoad
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        DB.BeginTrans
Case 9
        'Save
        If Opt = "add" Then
        
        RW = 1
        'Set TmpRs = New Recordset
       ' TmpRs.Open "Select FibreProperty,Maximum,Minimum,Range From RM_FibreRange  ", DB, adOpenStatic, adLockBatchOptimistic
       With SpdQuality
       For RW = 1 To .MaxRows
            If GetText(SpdQuality, 4, RW) = "" Then
                MsgBox "Please select Range ", vbInformation, head
                SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                Exit Sub
            End If
            If GetText(SpdQuality, 4, RW) = "Range" Then
                If val(GetText(SpdQuality, 2, RW)) = 0 Then
                    MsgBox "Please Enter Maxiumm Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
                If val(GetText(SpdQuality, 3, RW)) = 0 Then
                    MsgBox "Please Enter Minimum Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
                If val(GetText(SpdQuality, 2, RW)) < val(GetText(SpdQuality, 3, RW)) Then
                    MsgBox "Maximum Value Should me Greater than Minimum Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
                
                
                
            End If
            If GetText(SpdQuality, 4, RW) = "Above" Then
                If val(GetText(SpdQuality, 2, RW)) = 0 Then
                    MsgBox "Please Enter Maxiumm Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
            End If
            If GetText(SpdQuality, 4, RW) = "Below" Then
                If val(GetText(SpdQuality, 3, RW)) = 0 Then
                    MsgBox "Please Enter Minimum Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
            End If
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Quality Parameter"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = Trim(GetText(SpdQuality, 1, RW))
            'TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
            DB.Execute "insert into RM_FibreRange(Maximum,Minimum,Range,FibreProperty) values  ( " & val(GetText(SpdQuality, 2, RW)) & ",  " & val(GetText(SpdQuality, 3, RW)) & ", '" & GetText(SpdQuality, 4, RW) & "', '" & GetText(SpdQuality, 1, RW) & "')"
            'RW = RW + 1
            'TmpRs.MoveNext
        Next
        End With
        DB.CommitTrans
        MsgBox "Record(s) Modified Successfully ", vbInformation, head
    End If
        
    If Opt = "mod" Then
        
        RW = 1
        Set TmpRs = New Recordset
        TmpRs.Open "Select FibreProperty,Maximum,Minimum,Range From RM_FibreRange  ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not TmpRs.EOF
            If GetText(SpdQuality, 4, RW) = "" Then
                MsgBox "Please select Range ", vbInformation, head
                SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                Exit Sub
            End If
            If GetText(SpdQuality, 4, RW) = "Range" Then
                If val(GetText(SpdQuality, 2, RW)) = 0 Then
                    MsgBox "Please Enter Maxiumm Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
                If val(GetText(SpdQuality, 3, RW)) = 0 Then
                    MsgBox "Please Enter Minimum Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
                If val(GetText(SpdQuality, 2, RW)) < val(GetText(SpdQuality, 3, RW)) Then
                    MsgBox "Maximum Value Should me Greater than Minimum Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
                
                
                
            End If
            If GetText(SpdQuality, 4, RW) = "Above" Then
                If val(GetText(SpdQuality, 2, RW)) = 0 Then
                    MsgBox "Please Enter Maxiumm Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
            End If
            If GetText(SpdQuality, 4, RW) = "Below" Then
                If val(GetText(SpdQuality, 3, RW)) = 0 Then
                    MsgBox "Please Enter Minimum Value", vbInformation, head
                    SpdSetFocus SpdQuality, SpdQuality.ActiveCol, SpdQuality.ActiveRow
                    Exit Sub
                End If
            End If
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Quality Parameter"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = Trim(GetText(SpdQuality, 1, RW))
            'TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
            
            
            DB.Execute "Update RM_FibreRange set Maximum = " & val(GetText(SpdQuality, 2, RW)) & ",Minimum = " & val(GetText(SpdQuality, 3, RW)) & ",Range = '" & GetText(SpdQuality, 4, RW) & "' Where FibreProperty = '" & GetText(SpdQuality, 1, RW) & "'"
            RW = RW + 1
            TmpRs.MoveNext
        Loop
        DB.CommitTrans
        MsgBox "Record(s) Modified Successfully ", vbInformation, head
    End If
    Opt = ""
    Screen.MousePointer = 0
    Opt = ""
    Call SpdLoad
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM(BUTTON)
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
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
    Opt = " "
    SSTab1.Visible = True
    Call NEWFORM1(BUTTON, GSNO)
    Set TmpRs = New Recordset
    TmpRs.Open "Select FibreProperty,Maximum,Minimum,Range From RM_FibreRange  ", DB, adOpenStatic, adLockBatchOptimistic
    If TmpRs.RecordCount > 0 Then
        BUTTON(0).Enabled = False
    Else
        BUTTON(0).Enabled = True
    End If
Case 11
    Reset
    Unload Me
Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Quality_param
    Cystalrptbunk.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0

End Select
Exit Sub


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmRateunit", vbInformation, head
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

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call NEWFORM1(BUTTON, GSNO)
    'sstab1.Tabs.Clear
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    
        Set TmpRs = New Recordset
        TmpRs.Open "Select FibreProperty,Maximum,Minimum,Range From RM_FibreRange  ", DB, adOpenStatic, adLockBatchOptimistic
        If TmpRs.RecordCount > 0 Then
         BUTTON(0).Enabled = False
        Else
         BUTTON(0).Enabled = True
        End If
   
    BUTTON(2).Enabled = False
    Opt = ""
    Call SpdLoad

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmRateunit", vbInformation, head

End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
  Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
  If Opt <> "add" Then
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub SpdLoad()
intervalMinutes = -1
    If Trim(Opt) = "" Then
        SpdQuality.Enabled = False
    Else
        SpdQuality.Enabled = True
    End If
    Set TmpRs = New Recordset
    TmpRs.Open "Select [FibreProperty],[Maximum],[Minimum],[Range] From [RM_FibreRange] ", DB, adOpenStatic, adLockOptimistic
    With SpdQuality
        Do While Not TmpRs.EOF
            If TmpRs("FibreProperty") = "Staple Length (2.5% SL)" Then
                .SetText 2, 1, TmpRs("Maximum")
                .SetText 3, 1, TmpRs("Minimum")
                .SetText 4, 1, TmpRs("Range")
            ElseIf TmpRs("FibreProperty") = "Strength (g/tex)" Then
                .SetText 2, 2, TmpRs("Maximum")
                .SetText 3, 2, TmpRs("Minimum")
                .SetText 4, 2, TmpRs("Range")
            ElseIf TmpRs("FibreProperty") = "Micronaire (tex)" Then
                .SetText 2, 3, TmpRs("Maximum")
                .SetText 3, 3, TmpRs("Minimum")
                .SetText 4, 3, TmpRs("Range")
            ElseIf TmpRs("FibreProperty") = "Trash (%)" Then
                .SetText 2, 4, TmpRs("Maximum")
                .SetText 3, 4, TmpRs("Minimum")
                .SetText 4, 4, TmpRs("Range")
            ElseIf TmpRs("FibreProperty") = "Moisture (%)" Then
                .SetText 2, 5, TmpRs("Maximum")
                .SetText 3, 5, TmpRs("Minimum")
                .SetText 4, 5, TmpRs("Range")
            End If
           TmpRs.MoveNext
        Loop
    End With
End Sub

Private Sub SpdQuality_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NEWROW As Long, Cancel As Boolean)

If Row = 3 And (Col = 2 Or Col = 3) Then
    If Right(Trim(GetText(SpdQuality, Col, Row)), 1) > 0 Then
         SpdQuality.SetText Col, Row, Left(Trim(GetText(SpdQuality, Col, Row)), Len(Trim(GetText(SpdQuality, Col, Row))) - 1)
    End If
    
End If

End Sub

