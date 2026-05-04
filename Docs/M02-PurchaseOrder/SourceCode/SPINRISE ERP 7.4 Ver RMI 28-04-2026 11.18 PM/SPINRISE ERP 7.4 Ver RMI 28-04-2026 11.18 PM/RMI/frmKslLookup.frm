VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form LookUp 
   BackColor       =   &H00B0AD84&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   6195
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   9570
   ControlBox      =   0   'False
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6195
   ScaleWidth      =   9570
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      BackColor       =   &H009E9A5F&
      Caption         =   "&Refresh"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   7530
      MaskColor       =   &H00FF0000&
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   105
      Width           =   900
   End
   Begin MSDataGridLib.DataGrid Grid 
      Height          =   4635
      Left            =   120
      TabIndex        =   1
      Top             =   900
      Width           =   9375
      _ExtentX        =   16536
      _ExtentY        =   8176
      _Version        =   393216
      AllowUpdate     =   0   'False
      BackColor       =   14869698
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
            Format          =   "0"
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
   Begin VB.ComboBox cmbColName 
      BackColor       =   &H00E2E4C2&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   2130
      Style           =   2  'Dropdown List
      TabIndex        =   4
      ToolTipText     =   "Select a Field Name"
      Top             =   90
      Width           =   5340
   End
   Begin VB.CommandButton CancelButton 
      BackColor       =   &H009E9A5F&
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   5640
      Width           =   3495
   End
   Begin VB.CommandButton OkButton 
      BackColor       =   &H009E9A5F&
      Caption         =   "&Ok"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   135
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   5640
      Width           =   3495
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00B0AD84&
      Caption         =   "Sort By Selection"
      Height          =   330
      Left            =   8505
      TabIndex        =   8
      ToolTipText     =   "Check to Sort Data's By Selection"
      Top             =   90
      Value           =   1  'Checked
      Width           =   1500
   End
   Begin VB.TextBox txtSel 
      Appearance      =   0  'Flat
      BackColor       =   &H00E2E4C2&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   105
      TabIndex        =   0
      ToolTipText     =   "Enter the Criteria to Filter"
      Top             =   510
      Width           =   9375
   End
   Begin MSComCtl2.DTPicker dtpDateSel 
      Height          =   360
      Left            =   120
      TabIndex        =   9
      Top             =   480
      Visible         =   0   'False
      Width           =   9375
      _ExtentX        =   16536
      _ExtentY        =   635
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CalendarBackColor=   14869698
      Format          =   157351937
      CurrentDate     =   39539
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFC0&
      BackStyle       =   0  'Transparent
      Caption         =   "Filtering Column Name"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   105
      TabIndex        =   7
      Top             =   150
      Width           =   1950
   End
   Begin VB.Label lblRows 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0FFC0&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   195
      Left            =   4560
      TabIndex        =   6
      Top             =   5880
      Width           =   120
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFC0&
      BackStyle       =   0  'Transparent
      Caption         =   "Rows Filtered"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   4080
      TabIndex        =   5
      Top             =   5640
      Width           =   1320
   End
End
Attribute VB_Name = "LookUp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
'               Modified By  : S M Prabhakara Raj
'               Date         : 05-10-2007
'               On-behalf of : KALSOFTE
'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
Dim n As Integer, I As Integer, cnt As Integer, cnt1 As Integer
Dim qry As String, WAlign  As String, m_alignment As String
Dim Rs As Recordset
Dim Con As Connection
Dim ColArr(25) As Long
Dim ColAlignArr(50) As String
Dim CnFlg As Boolean
Dim DefaultCol As String
Dim sTitle As String
Dim rstemp As New ADODB.Recordset
Dim bNoDetails As Boolean
Dim strSQL As String

Public Property Let query(ByVal vNewValue As Variant)
'Query
Dim iPos As Integer
cmbColName.Clear
iPos = InStr(1, UCase(vNewValue), "ORDER BY")
If iPos > 0 Then
    vNewValue = Mid(vNewValue, 1, iPos - 1)
End If
qry = "SELECT * FROM (" & vNewValue & ") Temp "
End Property

Public Function Fields(iColIndex As Variant) As Variant
On Error GoTo Err
    
    If rstemp.State = 1 Then
        If rstemp.RecordCount > 0 Then Fields = rstemp(iColIndex): Exit Function
    End If


Exit Function
Err:
    MsgBox Err.Description, vbCritical, head
End Function

Public Function Record() As Collection
On Error GoTo Err
    Dim ReturnRow As New Collection
    If rstemp.State = 1 Then
        If rstemp.RecordCount > 0 Then
            For I = 0 To rstemp.Fields.Count - 1
                ReturnRow.ADD rstemp(I).value, rstemp(I).Name
            Next
            Set Record = ReturnRow
        End If
    End If
Exit Function
Err:
    MsgBox Err.Description, vbCritical, head
End Function


Public Property Let DefCol(ByVal c As String)

On Error GoTo Err
    
    DefaultCol = c

Exit Property
Err:
    MsgBox Err.Description, vbCritical, head
End Property

Public Property Let ALIGN(ByVal W As String)
    WAlign = W
End Property

Public Property Let Alignment(ByVal DBGridAlign As String)
    m_alignment = DBGridAlign
End Property

Public Property Let Title(ByVal t As String)
    sTitle = t
End Property

Private Sub SplitWidth()
Dim s As String
Dim j As Long
On Error GoTo Err

    cnt = 0
    For j = 1 To Len(WAlign)
        If Mid$(WAlign, j, 1) <> "," Then
            s = s & Mid(WAlign, j, 1)
        Else
            ColArr(cnt) = CLng(s)
             cnt = cnt + 1
            s = ""
        End If
    Next j
    ColArr(cnt) = CLng(val(s))


Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub SplitAlignment()
Dim S1 As String
Dim j1 As Long
On Error GoTo Err

    cnt1 = 0
    For j1 = 1 To Len(m_alignment)
        If Mid$(m_alignment, j1, 1) <> "," Then
            S1 = S1 & Mid(m_alignment, j1, 1)
        Else
            ColAlignArr(cnt1) = S1
             cnt1 = cnt1 + 1
            S1 = ""
        End If
    Next j1
    ColAlignArr(cnt1) = S1

Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub AutoAlign()
On Error GoTo Err

    For I = 0 To cnt
           grid.Columns(I).Width = ColArr(I)
    Next I
    grid.Columns(0).Width = ColArr(0)


Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub mAlignment()
On Error GoTo Err

    For I = 0 To cnt1
        Select Case Trim(UCase(ColAlignArr(I)))
        Case "DBGRIGHT"
           grid.Columns(I).Alignment = dbgRight
        Case "DBGLEFT"
           grid.Columns(I).Alignment = dbgLeft
        Case "DBGCENTER"
            grid.Columns(I).Alignment = dbgCenter
        End Select
    Next I
    'grid.Columns(0).Alignment = dbgGeneral


Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Public Property Get Cancel() As Boolean
On Error GoTo Err

    Cancel = CnFlg


Exit Property
Err:
    MsgBox Err.Description, vbCritical, head
End Property

Public Property Let Clear(ByVal Param As Boolean)
On Error GoTo Err
If Param = True Then Unload Me: Set LookUp = Nothing
Exit Property
Err:
    MsgBox Err.Description, vbCritical, head
End Property

Public Sub ReLoad_Data(Optional nQry As String)
Dim sQry As String
Dim rsQry As New ADODB.Recordset

On Error GoTo Err
Screen.MousePointer = vbHourglass

rsQry.CursorLocation = adUseClient

If nQry = "" Then
    sQry = qry
Else
    sQry = nQry
End If
rsQry.Open sQry & IIf(cmbColName.Text <> "" And Check1.value = 1, " ORDER BY [" & cmbColName.Text & "] ASC", ""), Con, adOpenStatic, adLockReadOnly
If rsQry.EOF And rsQry.BOF Then
    If Trim(txtSel.Text) <> "" Then
       MsgBox "No Matching Record(s)", vbCritical, head
       SendKeys "{BACKSPACE}"
    End If
    If (rsQry.EOF And rsQry.BOF) And Trim(txtSel.Text) = "" Then
        MsgBox "No Details to List", vbInformation, head
        bNoDetails = True
        GoTo FINISH
    End If
Else
    Set rstemp = rsQry.Clone
    rstemp.ActiveConnection = Nothing
End If
rsQry.ActiveConnection = Nothing
rsQry.Close
Set rsQry = Nothing

GoTo FINISH
Err:
    
    If bTrans = True Then DB.RollbackTrans
    MsgBox Err.Description, vbCritical, head
    
FINISH:
    Screen.MousePointer = vbDefault
End Sub

Private Sub CancelButton_Click()
On Error GoTo Err

CnFlg = True
Unload Me

Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub


Private Sub Command1_Click()
    strSQL = ""
    cmbColName.Clear
    Form_Activate
    txtSel.Text = ""
    ReLoad_Data qry
    If rstemp.RecordCount > 0 Then
        Set grid.DataSource = rstemp
        On Error Resume Next
            If IsNumeric(grid.Columns(I).value) = True And (InStr(1, grid.Columns(I).Caption, "Qt") > 0 Or InStr(1, grid.Columns(I).Caption, "Qua") > 0) Then
               grid.Columns(I).NumberFormat = "#0.000"
               grid.Columns(I).Alignment = dbgRight
            End If
        Call AutoAlign
        Call mAlignment
        lblRows.Caption = rstemp.RecordCount
    Else
        Set grid.DataSource = Nothing
        lblRows.Caption = 0
    End If
End Sub

Private Sub grid_DblClick()
Call OkButton_Click
End Sub

Private Sub txtSel_Change()
On Error GoTo Err

    If Trim(txtSel) = "" Then
        ReLoad_Data
        If rstemp.RecordCount > 0 Then
            Set grid.DataSource = rstemp
            
            For I = 0 To cnt
        On Error Resume Next
            If IsNumeric(grid.Columns(I).value) = True And (InStr(1, grid.Columns(I).Caption, "Qt") > 0 Or InStr(1, grid.Columns(I).Caption, "Qua") > 0) Then
               grid.Columns(I).NumberFormat = "#0.000"
               grid.Columns(I).Alignment = dbgRight
            End If
        Next
        
            lblRows.Caption = rstemp.RecordCount
            Call AutoAlign
            Call mAlignment
            txtSel.SetFocus
        End If
        Exit Sub
    End If
    If cmbColName.Text = "" Then Exit Sub
    If dtpDateSel.Visible = False Then
        ReLoad_Data qry & " where [" & cmbColName.Text & "] LIKE '" & IIf(Check1.value = 0, "%", "") & Replace(Trim(txtSel), "'", "''") & "%'"
    Else
        ReLoad_Data qry & " where [" & cmbColName.Text & "] = '" & Trim(txtSel) & "'"
    End If
    
    If rstemp.RecordCount > 0 Then
    
        Set grid.DataSource = rstemp
        
        For I = 0 To cnt
        On Error Resume Next
            If IsNumeric(grid.Columns(I).value) = True And (InStr(1, grid.Columns(I).Caption, "Qt") > 0 Or InStr(1, grid.Columns(I).Caption, "Qua") > 0) Then
               grid.Columns(I).NumberFormat = "#0.000"
               grid.Columns(I).Alignment = dbgRight
            End If
        Next
        
        Call AutoAlign
        Call mAlignment
        lblRows.Caption = rstemp.RecordCount
    Else
        Set grid.DataSource = Nothing
        lblRows.Caption = 0
    End If


Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub
Public Sub txtSel_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Err
    If bNoDetails = True Then CancelButton_Click
    If KeyCode = vbKeyDown Then
        If rstemp.EOF = False Then rstemp.MoveNext
        If rstemp.EOF Then rstemp.MoveLast
    ElseIf KeyCode = vbKeyUp Then
        If rstemp.BOF = False Then rstemp.MovePrevious
        If rstemp.BOF Then rstemp.MoveFirst
    End If
    If KeyCode = 13 Then
        If rstemp.RecordCount > 0 Then
            OkButton_Click
        Else
            CancelButton_Click
        End If
    End If

Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub OkButton_Click()
On Error GoTo Err
    CnFlg = False
    Me.Hide
Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub
Private Sub cmbColName_Click()
On Error GoTo Err
If bNoDetails = True Then CancelButton_Click
If cmbColName.ListIndex <> -1 Then
    With rstemp
        If .Fields(cmbColName.Text).Type = adDBTimeStamp Or _
                .Fields(cmbColName.ListIndex).Type = adDBTime Or _
                .Fields(cmbColName.ListIndex).Type = adDate Then
            txtSel.Visible = False
            txtSel.Text = ""
            dtpDateSel.Visible = True
            dtpDateSel.value = pdate
        Else
            txtSel.Visible = True
            txtSel.Text = ""
            txtSel.Tag = .Fields(cmbColName.ListIndex).Type
            dtpDateSel.Visible = False
        End If
    End With
    ReLoad_Data
    Set grid.DataSource = rstemp
    
    For I = 0 To cnt
        On Error Resume Next
        If IsNumeric(grid.Columns(I).Text) = True And (InStr(1, grid.Columns(I).Caption, "Qt") > 0 Or InStr(1, grid.Columns(I).Caption, "Qua") > 0) Then
           grid.Columns(I).NumberFormat = "#0.000"
           grid.Columns(I).Alignment = dbgRight
        End If
    Next
    SplitWidth
    AutoAlign
    Call SplitAlignment
    Call mAlignment
End If


Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub cmbColName_KeyPress(KeyAscii As Integer)
On Error GoTo Err
'If bNoDetails = True Then CancelButton_Click
'If KeyAscii = 13 Then
'    Set Grid.DataSource = Rs
'    Call AutoAlign
'    lblRows.Caption = Rs.RecordCount
'    txtSel.SetFocus
'End If
'Call OkButton_Click
Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub dtpDateSel_KeyUp(KeyCode As Integer, Shift As Integer)
On Error GoTo Err

If KeyCode = vbKeyReturn Then
    txtSel.Text = Format(dtpDateSel.value, "MM-dd-yyyy")
End If


Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub Form_Activate()
Dim j As Integer
On Error GoTo Err
'Check_FAParam
ReLoad_Data

If bNoDetails = True Then CancelButton_Click: Exit Sub
With rstemp
    If .RecordCount > 0 Then
        cnt = .Fields.Count - 1
        Call SplitWidth
        Call SplitAlignment
        For I = 0 To cnt
           If ColArr(I) <> 0 Then cmbColName.AddItem .Fields(I).Name
           If .Fields(I).Name = DefaultCol Then j = I
        Next I
        cmbColName.ListIndex = j
        Set grid.DataSource = rstemp
        'For Quantity Should be in 3 Digit Format
        For I = 0 To cnt
        On Error Resume Next
            If IsNumeric(grid.Columns(I).Text) = True And (InStr(1, grid.Columns(I).Caption, "Qt") > 0 Or InStr(1, grid.Columns(I).Caption, "Qua") > 0) Then
               grid.Columns(I).NumberFormat = "#0.000"
               grid.Columns(I).Alignment = dbgRight
            End If
        Next
        rstemp.MoveFirst
        Call AutoAlign
        Call mAlignment
        lblRows.Caption = .RecordCount
    End If
End With
Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Err
If bNoDetails = True Then CancelButton_Click
    If KeyCode = 116 Then
        On Error Resume Next
        Set grid.DataSource = Nothing
        txtSel = ""
        OkButton.Default = False
        lblRows.Caption = 0
        cmbColName.SetFocus
    End If
    If KeyCode = 27 Then Call CancelButton_Click
Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub Form_Load()
Cmb = 0
On Error GoTo Err
    If bNoDetails = True Then CancelButton_Click
    Set Con = New Connection
    Con.Open connectstring
    
    Set grid.DataSource = Nothing
    cmbColName.Tag = DefaultCol
    Me.Caption = sTitle
    cmbColName.Clear
    Me.Left = (Screen.Width - Me.Width) / 2
    Me.Top = (Screen.Height - Me.Height) / 2
Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
If rstemp.State = 1 Then rstemp.Close: Set rstemp = Nothing
End Sub

Private Sub grid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Err
    If KeyCode = 13 Then Call OkButton_Click
    If KeyCode = 116 Then
        Exit Sub
    End If
     If KeyCode = 27 Then Call CancelButton_Click


Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub


Private Sub txtSel_KeyPress(KeyAscii As Integer)
'If KeyAscii = 8 Then
'    Command1_Click
'End If
End Sub

