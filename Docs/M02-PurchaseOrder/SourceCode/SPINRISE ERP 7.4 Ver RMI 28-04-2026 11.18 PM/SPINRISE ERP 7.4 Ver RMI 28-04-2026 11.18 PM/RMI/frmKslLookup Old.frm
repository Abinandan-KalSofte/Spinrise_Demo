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
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6195
   ScaleWidth      =   9570
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
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
      Width           =   6270
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
      Left            =   120
      TabIndex        =   0
      ToolTipText     =   "Enter the Criteria to Filter"
      Top             =   480
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
      Format          =   59441153
      CurrentDate     =   39352
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
Dim n As Integer, i As Integer, cnt As Integer
Dim Qry As String, WAlign  As String
Dim Rs As Recordset
Dim CON As Connection
Dim ColArr(25) As Long
Dim CnFlg As Boolean
Dim DefaultCol As String
Dim sTitle As String
Dim rsTemp As New ADODB.Recordset
Dim bNoDetails As Boolean

Public Property Let Query(ByVal vNewValue As Variant)
'Query
Dim iPos As Integer
On Error GoTo Query_Error

cmbColName.clear
iPos = InStr(1, UCase(vNewValue), "ORDER BY")
If iPos > 0 Then
    vNewValue = Mid(vNewValue, 1, iPos - 1)
End If
Qry = "SELECT * FROM (" & vNewValue & ") Temp "

Exit Property
Query_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Query of Form LookUp", vbInformation, head
Screen.MousePointer = 0
End Property

Public Function Fields(iColIndex As Variant) As Variant
On Error GoTo Err
    
    If rsTemp.State = 1 Then
        If rsTemp.RecordCount > 0 Then Fields = rsTemp(iColIndex): Exit Function
    End If


Exit Function
Err:
    MsgBox Err.Description, vbCritical, head
End Function

Public Function Record() As Collection
On Error GoTo Err
    Dim ReturnRow As New Collection
    If rsTemp.State = 1 Then
        If rsTemp.RecordCount > 0 Then
            For i = 0 To rsTemp.Fields.Count - 1
                ReturnRow.ADD rsTemp(i).value, rsTemp(i).Name
            Next
            Set Record = ReturnRow
        End If
    End If
Exit Function
Err:
    MsgBox Err.Description, vbCritical, head
End Function


Public Property Let DefCol(ByVal C As String)

On Error GoTo Err
    
    DefaultCol = C

Exit Property
Err:
    MsgBox Err.Description, vbCritical, head
End Property

Public Property Let ALIGN(ByVal W As String)
On Error GoTo ALIGN_Error

    WAlign = W

Exit Property
ALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ALIGN of Form LookUp", vbInformation, head
Screen.MousePointer = 0
End Property

Public Property Let Title(ByVal t As String)
On Error GoTo Title_Error

    sTitle = t

Exit Property
Title_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Title of Form LookUp", vbInformation, head
Screen.MousePointer = 0
End Property

Private Sub SplitWidth()
Dim S As String
Dim J As Long
On Error GoTo SplitWidth_Error

On Error GoTo Err

    cnt = 0
    For J = 1 To Len(WAlign)
        If Mid$(WAlign, J, 1) <> "," Then
            S = S & Mid(WAlign, J, 1)
        Else
            ColArr(cnt) = CLng(S)
             cnt = cnt + 1
            S = ""
        End If
    Next J
    ColArr(cnt) = CLng(val(S))


Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head

Exit Sub
SplitWidth_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SplitWidth of Form LookUp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub AutoAlign()
On Error GoTo Err

    For i = 0 To cnt
           grid.Columns(i).Width = ColArr(i)
    Next i
    grid.Columns(0).Width = ColArr(0)

Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
Exit Sub
AutoAlign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure AutoAlign of Form LookUp", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Property Get Cancel() As Boolean
On Error GoTo Err

    Cancel = CnFlg


Exit Property
Err:
    MsgBox Err.Description, vbCritical, head
End Property

Public Property Let clear(ByVal Param As Boolean)
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
    sQry = Qry
Else
    sQry = nQry
End If
rsQry.Open sQry & IIf(cmbColName.Text <> "" And Check1.value = 1, " ORDER BY [" & cmbColName.Text & "] ASC", ""), CON, adOpenStatic, adLockReadOnly
If rsQry.EOF And rsQry.BOF Then
    SendKeys "{BACKSPACE}"
    If (rsQry.EOF And rsQry.BOF) And Trim(txtSel.Text) = "" Then
        MsgBox "No Details to List", vbInformation, head
        bNoDetails = True
        GoTo FINISH
        Exit Sub
    End If
Else
    Set rsTemp = rsQry.Clone
    rsTemp.ActiveConnection = Nothing
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

Private Sub grid_DblClick()
Call OkButton_Click
End Sub

Private Sub txtSel_Change()
On Error GoTo Err
If bNoDetails = True Then CancelButton_Click
If Trim(txtSel) = "" Then
        ReLoad_Data
        If rsTemp.RecordCount > 0 Then
            Set grid.DataSource = rsTemp
            lblRows.Caption = rsTemp.RecordCount
            Call AutoAlign
            txtSel.Locked = False
'            txtSel.SetFocus
        End If
        Exit Sub
    End If
    If cmbColName.Text = "" Then Exit Sub
    If Check1.value = 0 Then
        ReLoad_Data Qry & " where [" & cmbColName.Text & "] LIKE '%" & Replace(Trim(txtSel), "'", "''") & "%'"
    Else
    
    If dtpDateSel.Visible = False Then
        ReLoad_Data Qry & " where [" & cmbColName.Text & "] LIKE '" & Replace(Trim(txtSel), "'", "''") & "%'"
    Else
        ReLoad_Data Qry & " where [" & cmbColName.Text & "] = '" & Trim(txtSel) & "'"
    End If
    End If
    If rsTemp.RecordCount > 0 Then
        Set grid.DataSource = rsTemp
        Call AutoAlign
        lblRows.Caption = rsTemp.RecordCount
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
        If rsTemp.EOF = False Then rsTemp.MoveNext
        If rsTemp.EOF Then rsTemp.MoveLast
    ElseIf KeyCode = vbKeyUp Then
        If rsTemp.BOF = False Then rsTemp.MovePrevious
        If rsTemp.BOF Then rsTemp.MoveFirst
    End If
    If KeyCode = 13 Then
        If rsTemp.RecordCount > 0 Then
            OkButton_Click
        Else
            CancelButton_Click
        End If
    End If
    If KeyCode = vbKeyEscape And Shift = 2 Then
        KeyCode = 0
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
    With rsTemp
        If .Fields(cmbColName.Text).Type = adDBTimeStamp Or _
                .Fields(cmbColName.ListIndex).Type = adDBTime Or _
                .Fields(cmbColName.ListIndex).Type = adDate Then
            txtSel.Visible = False
            txtSel.Text = ""
            dtpDateSel.Visible = True
        Else
            txtSel.Visible = True
            txtSel.Text = ""
            txtSel.Tag = .Fields(cmbColName.ListIndex).Type
            dtpDateSel.Visible = False
        End If
    End With
    ReLoad_Data
    Set grid.DataSource = rsTemp
    SplitWidth
    AutoAlign
End If
    'txtSel.SetFocus

Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub cmbColName_KeyPress(KeyAscii As Integer)
On Error GoTo Err
If bNoDetails = True Then CancelButton_Click
If KeyAscii = 13 Then
    Set grid.DataSource = Rs
    Call AutoAlign
    lblRows.Caption = Rs.RecordCount
    txtSel.SetFocus
End If
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
Dim J As Integer
On Error GoTo Err
ReLoad_Data
If bNoDetails = True Then CancelButton_Click: Exit Sub
With rsTemp
    If .RecordCount > 0 Then
        cnt = .Fields.Count - 1
        Call SplitWidth
        For i = 0 To cnt
           If ColArr(i) <> 0 Then cmbColName.AddItem .Fields(i).Name
           If .Fields(i).Name = DefaultCol Then J = i
        Next i
        cmbColName.ListIndex = J
            'Set grid.DataSource = rsTemp

            For i = 0 To cnt
        On Error Resume Next
            If grid.Columns(i).Caption = "Amount" Then
                If IsNumeric(grid.Columns(i).value) = True And InStr(1, grid.Columns(i).Caption, "Amount") > 0 Then
                   grid.Columns(i).NumberFormat = "#0.00"
                   grid.Columns(i).Alignment = dbgRight
                End If
            End If
        Next

        rsTemp.MoveFirst
        Call AutoAlign
        lblRows.Caption = .RecordCount
    End If
End With
dtpDateSel.MinDate = yfdate
dtpDateSel.MaxDate = yldate
dtpDateSel.value = pdate
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

    If KeyCode = vbKeyBack And Shift = 2 Then KeyCode = 0
Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
End Sub

Private Sub Form_Load()
On Error GoTo Err
    If bNoDetails = True Then CancelButton_Click
    Set CON = New Connection
    CON.Open connectstring
    
    Set grid.DataSource = Nothing
    cmbColName.Tag = DefaultCol
    Me.Caption = sTitle
    cmbColName.clear
    Me.Left = (Screen.Width - Me.Width) / 2
    Me.Top = (Screen.Height - Me.Height) / 2
Exit Sub
Err:
    MsgBox Err.Description, vbCritical, head
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
If rsTemp.State = 1 Then rsTemp.Close: Set rsTemp = Nothing
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
On Error GoTo txtSel_KeyPress_Error

If KeyAscii = 127 Then
    KeyAscii = 0
End If
If KeyAscii = 13 Then
    Call OkButton_Click
End If

Exit Sub
txtSel_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtSel_KeyPress of Form LookUp", vbInformation, head
Screen.MousePointer = 0
End Sub
