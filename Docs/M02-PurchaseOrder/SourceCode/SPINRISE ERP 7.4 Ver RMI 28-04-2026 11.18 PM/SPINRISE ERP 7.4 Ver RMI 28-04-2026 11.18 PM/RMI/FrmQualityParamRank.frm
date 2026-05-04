VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.Form FrmQualityParamRank 
   Caption         =   "Ranking of Quality Parameter"
   ClientHeight    =   7695
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8625
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7695
   ScaleWidth      =   8625
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   660
      Left            =   -30
      TabIndex        =   12
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":0000
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   8
         Left            =   3735
         Picture         =   "FrmQualityParamRank.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
         Top             =   140
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":07AC
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   10
         Left            =   4800
         Picture         =   "FrmQualityParamRank.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   138
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":0E32
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   9
         Left            =   4260
         Picture         =   "FrmQualityParamRank.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   136
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":14DE
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   11
         Left            =   5325
         Picture         =   "FrmQualityParamRank.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   134
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":1CBD
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   7
         Left            =   3210
         Picture         =   "FrmQualityParamRank.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   132
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   3
         Left            =   1632
         Picture         =   "FrmQualityParamRank.frx":2457
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find"
         Top             =   130
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":27EE
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   1
         Left            =   574
         Picture         =   "FrmQualityParamRank.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   126
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":2E72
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
         Left            =   1103
         Picture         =   "FrmQualityParamRank.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   124
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":3518
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "FrmQualityParamRank.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":3CC7
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "FrmQualityParamRank.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   128
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmQualityParamRank.frx":4364
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   6
         Left            =   2685
         Picture         =   "FrmQualityParamRank.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   135
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
         Left            =   6225
         TabIndex        =   14
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
         Left            =   7755
         TabIndex        =   13
         Top             =   255
         Width           =   630
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   6825
      Left            =   300
      ScaleHeight     =   6795
      ScaleWidth      =   13200
      TabIndex        =   11
      Top             =   1260
      Width           =   13230
      Begin FPSpreadADO.fpSpread SpdPoints 
         Height          =   5595
         Left            =   120
         TabIndex        =   19
         Top             =   750
         Width           =   13035
         _Version        =   524288
         _ExtentX        =   22992
         _ExtentY        =   9869
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
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "FrmQualityParamRank.frx":4AFB
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   10095
         TabIndex        =   18
         Top             =   345
         Width           =   1245
         _ExtentX        =   2196
         _ExtentY        =   661
         _Version        =   393216
         Format          =   72351745
         CurrentDate     =   41221
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Efective Date"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   8925
         TabIndex        =   17
         Top             =   435
         Width           =   1125
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   7395
      Width           =   8625
      _ExtentX        =   15214
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   1
            Object.Width           =   14993
            MinWidth        =   14993
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   2117
            MinWidth        =   2117
            TextSave        =   "02/03/2013"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "8:10 PM"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
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
      Caption         =   "Ranking of Quality Parameter"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   345
      Left            =   300
      TabIndex        =   15
      Top             =   795
      Width           =   3885
   End
End
Attribute VB_Name = "FrmQualityParamRank"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim AdoGradeRs As Recordset
Dim a As Integer
Dim Opt As String
Dim RW As Integer
Dim Repeat As Boolean
Enum E_SpdPnt
    ESpdPnt = 1
    ESpdSpanVar
    ESpdSpanlenDiff
    ESpdSpanlenPts
    ESpdStrengthDiff
    ESpdStrengthPts
    ESpdMicroNarDiff
    ESpdMicroNarPts
    ESpdTrashDiff
    ESpdTrashPts
    ESpdMaturityDiff
    ESpdMaturityPts
    ESpdUniformDiff
    ESpdUniformPts
End Enum




Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
    Opt = "add"
    RW = 1
    desc.Caption = "Addition"
    Screen.MousePointer = 11
    stbar.Panels(2).Text = "Addition"
    Call adddelmod(BUTTON)
    Screen.MousePointer = 0
    Call SpdGridHead
    
Case 1

Case 2
    
Case 5
    'first
     desc.Caption = "Query"
     Opt = "qry"
     If Record_Exists("Wvg_PointsGradehd") = False Then Exit Sub
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     'calling fir procedure from module
     
     Call FIR(BUTTON)
     stbar.Panels(2).Text = "First Record"
     Exit Sub
GoFirstError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
Case 6
        'next
    desc.Caption = "Query"
    Opt = "qry"
    If Record_Exists("Wvg_PointsGradehd") = False Then Exit Sub
    On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        ' Call NEX(BUTTON)
        'moved off the end so go back
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"
    End If
    Exit Sub
GoNextError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
Case 7
    'previous
    desc.Caption = "Query"
    Opt = "qry"
    If Record_Exists("Wvg_PointsGradehd") = False Then Exit Sub
        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First Record"
    End If
    'Added Raja show the current record
    
    Exit Sub
GoPrevError:
    If Err = 3021 Then
        MsgBox " No records Found", vbInformation, head
    End If
 
Case 8
        'last
    desc.Caption = "Query"
    Opt = "qry"
    If Record_Exists("Wvg_PointsGradehd") = False Then Exit Sub
    On Error GoTo GoLastError
    adoPrimaryRS.MoveLast
    stbar.Panels(2).Text = "Last Record"
    'calling las procedure from module
    
    Call las(BUTTON)
    Exit Sub
GoLastError:
    If Err = 3021 Then
      MsgBox " No records Found", vbInformation, head
    End If
    
Case 9
    If Opt = "add" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT Divcode,VarCode,SpanLen_UnitDiff,SpanLen_Points,Strength_UnitDiff,Strength_Points,Micronar_UnitDiff,MicroNar_Points,Trash_UnitDiff,Trash_Points,Maturity_unitDiff,Maturity_Points,Uniformity_UnitDiff,Uniformity_Points,EffectiveDate  FROM RM_qualityparamRank where 1= 2", db, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.AddNew
        db.BeginTrans
        With SpdPoints
            For RW = 1 To .MaxRows
            .Row = RW
                If GetText(SpdPoints, E_SpdPnt.ESpdPnt, RW) <> "" Then
                    adoPrimaryRS.AddNew
                    adoPrimaryRS("DIVCODE") = Divcode
                    adoPrimaryRS("VarCode") = GetText(SpdPoints, E_SpdPnt.ESpdPnt, RW)
                    adoPrimaryRS("SpanLen_UnitDiff") = val(GetText(SpdPoints, E_SpdPnt.ESpdSpanlenDiff, RW))
                    adoPrimaryRS("SpanLen_Points") = val(GetText(SpdPoints, E_SpdPnt.ESpdSpanlenPts, RW))
                    adoPrimaryRS("Strength_UnitDiff") = val(GetText(SpdPoints, E_SpdPnt.ESpdStrengthDiff, RW))
                    adoPrimaryRS("Strength_Points") = val(GetText(SpdPoints, E_SpdPnt.ESpdStrengthPts, RW))
                    adoPrimaryRS("Micronar_UnitDiff") = val(GetText(SpdPoints, E_SpdPnt.ESpdMicroNarDiff, RW))
                    adoPrimaryRS("MicroNar_Points") = val(GetText(SpdPoints, E_SpdPnt.ESpdMicroNarPts, RW))
                    adoPrimaryRS("Trash_UnitDiff") = val(GetText(SpdPoints, E_SpdPnt.ESpdTrashDiff, RW))
                    adoPrimaryRS("Trash_Points") = val(GetText(SpdPoints, E_SpdPnt.ESpdTrashPts, RW))
                    adoPrimaryRS("Maturity_unitDiff") = val(GetText(SpdPoints, E_SpdPnt.ESpdMaturityDiff, RW))
                    adoPrimaryRS("Maturity_Points") = val(GetText(SpdPoints, E_SpdPnt.ESpdMaturityPts, RW))
                    adoPrimaryRS("Uniformity_UnitDiff") = val(GetText(SpdPoints, E_SpdPnt.ESpdUniformDiff, RW))
                    adoPrimaryRS("Uniformity_Points") = val(GetText(SpdPoints, E_SpdPnt.ESpdUniformPts, RW))
                    adoPrimaryRS("EffectiveDate") = Format(DTPicker1.value, "yyyy-mm-dd")
                End If
            Next
        End With
        db.CommitTrans
        MsgBox "Record(s) Saved Successfully ", vbInformation, head
    End If
Case 10
    'CANCEL
    On Error Resume Next
    Select Case Opt
    Case "mod"
        db.RollbackTrans
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    End Select
    Screen.MousePointer = 0
    desc.Caption = "Query"
    Buttonframe.Enabled = True
    Call QUERY_MODE(0, 1)
    Call NEWFORM1(BUTTON, GSNO)
    Screen.MousePointer = 0
    Opt = "qry"
Case 11
    Unload Me
End Select
End Sub


Private Sub CmbDefUnits_GotFocus()
    CmbDefUnits.BackColor = SpdHlightClr
    CmbDefUnits.FontBold = True
End Sub

Private Sub CmbDefUnits_LostFocus()
    CmbDefUnits.BackColor = SpdOrdClr
    CmbDefUnits.FontBold = False
End Sub

Private Sub Form_Load()


Call NEWFORM1(BUTTON, GSNO)
stbar.Panels(1).Text = sbmsg
Set db = New Connection
db.CursorLocation = adUseClient
db.Open "PROVIDER=MSDataShape;" + connectstring
DTPicker1.value = pdate
Call SpdGridHead
Opt = "qry"
Call QUERY_MODE(0, 1)
Opt = "qry"
DATLAB.Caption = pdate   'This variable is declared as global to show the date

End Sub
Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
Buttonframe.Width = Me.Width
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Screen.MousePointer = vbDefault
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        'Me.Show False, Me
        'DoEvents
        If MsgBox(Me.Caption & " Screen is in Addition/Modification/Deletion mode. Are you want to Exit?", vbQuestion + vbYesNo, head) = vbNo Then
            Cancel = True
            Exit Sub
        End If
    End If
    
    On Error Resume Next
    Set adoPrimaryRS = Nothing
    Set adoSecondaryRS = Nothing
    Reset
End Sub


Private Sub Spdgrade_BeforeEditMode(ByVal Col As Long, ByVal Row As Long, ByVal UserAction As FPSpreadADO.BeforeEditModeActionConstants, CursorPos As Variant, Cancel As Variant)
    With SpdGrade
        If .ActiveCol = E_SpdGrade.ESpdGTo And Trim(GetText(SpdGrade, E_SpdGrade.ESpdGFr, .MaxRows)) <> "" _
                        And val(GetText(SpdGrade, E_SpdGrade.ESpdGTo, .MaxRows)) > 0 Then
            .MaxRows = .MaxRows + 1
        End If
    End With
End Sub


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
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
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''Find
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''List
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
        If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)  ''Exit
    End If
ElseIf KeyCode = vbKeyEscape Then '27
     'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbYes Then
        If BUTTON(10).Enabled = True Then
            Call BUTTON_Click(10)    ''Cancel
        Else
            If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)
        End If
     'Else
    
     'End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form tmpPOINDENT", vbInformation, head
    
End Sub
Public Sub disablcontls()
    
End Sub

Public Sub ENABLCONTLS()

End Sub

Public Sub QUERY_MODE(MDOC As Long, blcode As String)
    Buttonframe.Enabled = True
    Call NEWFORM1(BUTTON, GSNO)
    If Opt = "add" Or Opt = "mod" Then
        Call disablcontls
    End If
    If MDOC = 0 Then
        Set adoPrimaryRS = New Recordset
        Call qry1
        Opt = "qry"
        If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
    Else
        If adoPrimaryRS.EOF Then
            stbar.Panels(2).Text = "No Record found"
            Screen.MousePointer = 0
            Exit Sub
        End If
        Exit Sub
    End If
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    Screen.MousePointer = 0
    desc.Caption = "Query"
    Screen.MousePointer = 0
    Call disablcontls


End Sub

Public Sub qry1()
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT Divcode,a.VarCode,v.VarName,SpanLen_UnitDiff,SpanLen_Points,Strength_UnitDiff,Strength_Points,Micronar_UnitDiff,MicroNar_Points,Trash_UnitDiff,Trash_Points,Maturity_unitDiff,Maturity_Points,Uniformity_UnitDiff,Uniformity_Points,EffectiveDate  FROM RM_qualityparamRank A,RM_Var V  " & _
                     " WHERE a.Varcode=V.Varcode and  EffectiveDate IN (SELECT MAX(EffectiveDate) FROM RM_QualityParamRank B WHERE a.VarCode=b.VarCode AND a.Divcode=b.Divcode) Order By a.varcode ", db, adOpenStatic, adLockReadOnly
    If Not adoPrimaryRS.EOF Then
        Call SpdLoad
    End If
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
    TXTFIELDS(Index).BackColor = SpdHlightClr
    TXTFIELDS(Index).FontBold = True
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
        Case 0
            Call ToUpCase(TXTFIELDS, KeyAscii)
            Call ToAlphanumNoSp(TXTFIELDS(Index), 5, KeyAscii)
        End Select
    End If
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
    TXTFIELDS(Index).BackColor = SpdOrdClr
    TXTFIELDS(Index).FontBold = False
End Sub

Private Sub SpdLoad()
    Call SpdGridHead
    With SpdPoints
        RW = 1
        Do While Not adoPrimaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText E_SpdPnt.ESpdPnt, RW, adoPrimaryRS("Varcode")
            .SetText E_SpdPnt.ESpdSpanVar, RW, adoPrimaryRS("Varname")
            .SetText E_SpdPnt.ESpdSpanlenDiff, RW, adoPrimaryRS("SpanLen_UnitDiff")
            .SetText E_SpdPnt.ESpdSpanlenPts, RW, adoPrimaryRS("SpanLen_Points")
            .SetText E_SpdPnt.ESpdStrengthDiff, RW, adoPrimaryRS("Strength_UnitDiff")
            .SetText E_SpdPnt.ESpdStrengthPts, RW, adoPrimaryRS("Strength_Points")
            .SetText E_SpdPnt.ESpdMicroNarDiff, RW, adoPrimaryRS("Micronar_UnitDiff")
            .SetText E_SpdPnt.ESpdMicroNarPts, RW, adoPrimaryRS("MicroNar_Points")
            .SetText E_SpdPnt.ESpdTrashDiff, RW, adoPrimaryRS("Trash_UnitDiff")
            .SetText E_SpdPnt.ESpdTrashPts, RW, adoPrimaryRS("Trash_Points")
            .SetText E_SpdPnt.ESpdMaturityDiff, RW, adoPrimaryRS("Maturity_unitDiff")
            .SetText E_SpdPnt.ESpdMaturityPts, RW, adoPrimaryRS("Maturity_Points")
            .SetText E_SpdPnt.ESpdUniformDiff, RW, adoPrimaryRS("Uniformity_UnitDiff")
            .SetText E_SpdPnt.ESpdUniformPts, RW, adoPrimaryRS("Uniformity_Points")
            adoPrimaryRS.MoveNext
            RW = RW + 1
        Loop
        
        For I = 1 To .MaxRows
            For J = 1 To .MaxCols
                .Row = I
                .Col = J
                .Lock = True
            Next
        Next
        
    End With
    
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
Dim ValidRs As Recordset
If Opt = "add" Then
    Select Case Index
        Case 0
            If Trim(TXTFIELDS(0).Text) = "" Then
                MsgBox "Grading Type Cannot be empty", vbInformation, head
                Screen.MousePointer = 0
                TXTFIELDS(0).SetFocus
                Cancel = True
            Else
                Set ValidRs = New Recordset
                ValidRs.Open "Select Count(GradeType) From  Wvg_PointsGradeHd Where GradeType ='" & Trim(TXTFIELDS(0).Text) & "'", db, adOpenDynamic, adLockReadOnly
                If ValidRs(0) > 0 Then
                End If
            End If
        Case 1
    End Select
End If
End Sub
Private Sub SpdGridHead()
With SpdPoints
    .MaxRows = 0
    .MaxRows = 1
    .RowHeight(-1) = 16
    .MaxCols = 14

    .Row = SpreadHeader
    .FontBold = True
    .Row = SpreadHeader + 1
    .FontBold = True
    
    .Row = SpreadHeader
    .Col = 1
    .AddCellSpan 1, 0, 1, 2
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdPnt, "Variety Code", CellTypeEdit, , , False, False
    .TypeEditCharCase = TypeEditCharCaseSetUpper
    .TypeEditCharSet = TypeEditCharSetAlphanumeric
    
    
    .Row = SpreadHeader
    .Col = 2
    .AddCellSpan 2, 0, 1, 2
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdSpanVar, "Variety Name", CellTypeStaticText, , , False, False
    
    
    .Row = SpreadHeader
    .Col = 2
    .AddCellSpan 3, 0, 2, 1
    .Row = 0
    .Col = E_SpdPnt.ESpdSpanlenDiff
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdSpanlenDiff, "2.5 Span length", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Unit"
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdSpanlenPts, "2.5 Span length", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Points"
    
    
    .AddCellSpan 5, 0, 2, 1
    .Row = 0
    .Col = E_SpdPnt.ESpdStrengthDiff
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdStrengthDiff, "Strength(G tex)", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Unit"
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdStrengthPts, "Strength(G tex )", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Points"
    
    
    
    .AddCellSpan 7, 0, 2, 1
    .Row = 0
    .Col = E_SpdPnt.ESpdMicroNarDiff
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdMicroNarDiff, "Micronaire", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Unit"
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdMicroNarPts, "Micronaire", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Points"
    
    
    .AddCellSpan 9, 0, 2, 1
    .Row = 0
    .Col = E_SpdPnt.ESpdTrashDiff
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdTrashDiff, "Trash", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Unit"
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdTrashPts, "Trash", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Points"
    
    
    .AddCellSpan 11, 0, 2, 1
    .Row = 0
    .Col = E_SpdPnt.ESpdMaturityDiff
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdMaturityDiff, "Maturity", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Unit"
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdMaturityPts, "Maturity", CellTypeNumber, 7, 2, , False
    .Row = SpreadHeader + 1
    .Text = "Points"
    
    
    .AddCellSpan 13, 0, 2, 1
    .Row = 0
    .Col = E_SpdPnt.ESpdUniformDiff
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdUniformDiff, "Uniformity Ratio", CellTypeNumber, 7, 2, , False
    .TypeNumberMin = 0
    .TypeNumberMax = "99.99"
    
    .Row = SpreadHeader + 1
    .Text = "Unit"
    SetSpreadCol_H2 SpdPoints, E_SpdPnt.ESpdUniformPts, "Uniformity Ratio", CellTypeNumber, 7, 2, , False
    .TypeNumberMin = "0.00"
    .TypeNumberMax = "99.99"
    .Row = SpreadHeader + 1
    .Text = "Points"
    
    

End With
End Sub

Private Sub SpdPoints_BeforeEditMode(ByVal Col As Long, ByVal Row As Long, ByVal UserAction As FPSpreadADO.BeforeEditModeActionConstants, CursorPos As Variant, Cancel As Variant)
With SpdPoints
    If .ActiveCol = E_SpdPnt.ESpdUniformPts And Trim(GetText(SpdPoints, E_SpdPnt.ESpdSpanVar, .MaxRows)) <> "" Then
        .MaxRows = .MaxRows + 1
        RW = .MaxRows
        .Col = E_SpdPnt.ESpdPnt
    End If
End With
End Sub

Private Sub SpdPoints_KeyDown(KeyCode As Integer, Shift As Integer)
If Opt = "add" Then
    With SpdPoints
        If .ActiveCol = E_SpdPnt.ESpdPnt Then
            Call VarietyLookup
            If GetText(SpdPoints, E_SpdPnt.ESpdPnt, .ActiveRow) = "" Then
                MsgBox "Please select valid Variety from the Item List", vbInformation, head
                SpdSetFocus SpdPoints, E_SpdPnt.ESpdPnt, .ActiveRow
            End If
        End If
    End With
End If
End Sub

Private Sub SpdPoints_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
If Opt = "add" Then
    With SpdPoints
    Select Case Col
        Case E_SpdPnt.ESpdPnt
            If val(GetText(SpdPoints, E_SpdPnt.ESpdPnt, .ActiveRow)) = 0 Then
                Cancel = True
            End If
    End Select
    
    Call SpdHighlight(SpdPoints, NewRow, NewCol, Row, Col)
    End With
End If
End Sub

Sub VarietyLookup()

LookUp.clear = True
LookUp.query = "select  Varname 'Variety',VarCode'Code' from Rm_Var "
LookUp.DefCol = "Variety"
LookUp.Caption = "Variety Listing"
LookUp.ALIGN = "5000,1000"
Screen.MousePointer = 0
LookUp.Show vbModal
With SpdPoints
    If LookUp.Cancel = False Then
        Call RepeatCheck(LookUp.Fields(1))
        If Repeat = False Then
            .SetText E_SpdPnt.ESpdPnt, .ActiveRow, CStr(LookUp.Fields(1))
            .SetText E_SpdPnt.ESpdSpanVar, .ActiveRow, CStr(LookUp.Fields(0))
            SpdSetFocus SpdPoints, E_SpdPnt.ESpdSpanlenDiff - 1, .ActiveRow
        Else
            .SetText E_SpdPnt.ESpdPnt, RW, " "
            .SetText E_SpdPnt.ESpdSpanVar, RW, " "
            .Col = E_SpdPnt.ESpdPnt
            .SetFocus
        End If
        LookUp.clear = True
        LookUp.clear = True
    Else
        .Col = E_SpdPnt.ESpdPnt
        .SetFocus
    End If
    
End With

End Sub

Private Sub RepeatCheck(item)
Repeat = False
With SpdPoints
    .Row = RW
    For I = 1 To .MaxRows - 1
        If (GetText(SpdPoints, E_SpdPnt.ESpdPnt, I)) <> "" Then
            If (GetText(SpdPoints, E_SpdPnt.ESpdPnt, I)) = item Then
                Repeat = True
                GoTo msg:
            Else
                Repeat = False
            End If
        End If
    Next
msg:
    If Repeat = True Then
        MsgBox "Variety must be unique", vbInformation, head
        Exit Sub
    End If
End With

End Sub


