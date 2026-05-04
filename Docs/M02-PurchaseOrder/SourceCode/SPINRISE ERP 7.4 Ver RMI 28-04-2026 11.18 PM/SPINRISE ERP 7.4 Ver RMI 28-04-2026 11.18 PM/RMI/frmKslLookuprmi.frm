VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDatGrd.ocx"
Begin VB.Form Lookuprmi 
   BackColor       =   &H009E9A5F&
   Caption         =   "Form1"
   ClientHeight    =   5985
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9465
   LinkTopic       =   "Form1"
   ScaleHeight     =   5985
   ScaleWidth      =   9465
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton OkButton 
      BackColor       =   &H009E9A5F&
      Caption         =   "&Ok"
      Default         =   -1  'True
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
      Left            =   30
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   5430
      Width           =   3495
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
      Left            =   5895
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5445
      Width           =   3495
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
      Left            =   2070
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   0
      Width           =   4815
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H009E9A5F&
      Caption         =   "Sorting"
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   7080
      TabIndex        =   1
      Top             =   0
      Width           =   1800
   End
   Begin VB.TextBox Text1 
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
      Height          =   400
      Left            =   60
      TabIndex        =   0
      Top             =   360
      Width           =   9375
   End
   Begin MSDataGridLib.DataGrid Grid 
      Height          =   4575
      Left            =   60
      TabIndex        =   2
      Top             =   800
      Width           =   9375
      _ExtentX        =   16536
      _ExtentY        =   8070
      _Version        =   393216
      BackColor       =   14869698
      HeadLines       =   1
      RowHeight       =   15
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
      Left            =   3975
      TabIndex        =   7
      Top             =   5430
      Width           =   1320
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
      Left            =   4455
      TabIndex        =   6
      Top             =   5670
      Width           =   120
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
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   60
      TabIndex        =   5
      Top             =   30
      Width           =   1950
   End
End
Attribute VB_Name = "Lookuprmi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim n As Integer, i As Integer, cnt As Integer
Dim Qry As String, WAlign  As String
Dim Rs As Recordset
Dim CON As Connection
Dim ColArr(25) As Long
Dim CnFlg As Boolean
Private Sub CancelButton_Click()
On Error Resume Next
'    Set Rs = New Recordset
'    Rs.Open "Select * From #fa_KslTmpTable Where 1=2", CON, adOpenStatic
'    Set Rs = Nothing
    If Rs.State = adStateOpen Then Rs.Close
    CnFlg = True
    Unload Me
End Sub
Public Property Let Query(ByVal vNewValue As Variant)
'   Query
    Qry = vNewValue
End Property


Private Sub cmbColName_Click()
'Call cmbColName_DblClick
End Sub

Private Sub cmbColName_DblClick()
Text1.SetFocus
End Sub

Private Sub cmbColName_KeyPress(KeyAscii As Integer)
Text1.SetFocus
End Sub

'Private Sub cmbColName_KeyPress(KeyAscii As Integer)
''    If KeyAscii = 13 Then
''        On Error Resume Next
''        Set rs = New Recordset
''        rs.Open "Select * From #fa_KslTmpTable", con, adOpenStatic
''        Set Grid.DataSource = rs
''        Call AutoAlign
''        lblRows.Caption = rs.RecordCount
''        Text1.SetFocus
''    End If
'End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 116 Then
        On Error Resume Next
        Set grid.DataSource = Nothing
        Text1 = ""
        OkButton.Default = False
        lblRows.Caption = 0
        cmbColName.SetFocus
    End If
    If KeyCode = 27 Then Call CancelButton_Click
    If KeyCode = vbKeyEscape Then Call CancelButton_Click
End Sub
Private Sub Form_Load()

         
    Set CON = New Connection
    CON.Open connectstring
     Set grid.DataSource = Nothing
    On Error Resume Next
    
    CON.Execute "DROP TABLE #fa_KslTmpTable"
    CON.Execute "SELECT * INTO #fa_KslTmpTable FROM (" & Qry & ")KslTmp"
    Me.Left = (Screen.Width - Me.Width) / 2
    Me.Top = (Screen.Height - Me.Height) / 2

    Set Rs = New Recordset
    Rs.Open "Select * FROM #fa_KslTmpTable", CON, adOpenStatic
    If Rs.RecordCount > 0 Then
        
        For i = 0 To Rs.Fields.Count - 1
            cmbColName.AddItem Rs.Fields(i).Name
        Next i
    cnt = Rs.Fields.Count - 1
    Call SplitWidth
    

    
    
    'Set Grid.DataSource = rs
    'lblRows.Caption = rs.RecordCount
      
    'Set Grid.DataSource = rs
    'lblRows.Caption = rs.RecordCount
    For i = 0 To Rs.Fields.Count - 1
        grid.Columns(i).Width = 4500 '2500
    Next
    End If
'    If Rs.RecordCount = 0 Then
'        MsgBox "No Record(s) Found", vbInformation, head
'        Set Rs = Nothing
'        Call CancelButton_Click
'        Me.Hide
'        Exit Sub
'    End If
    Call AutoAlign
    Text1.Text = ""
    cmbColName = cmbColName.List(0)
    Text1.SetFocus
    
End Sub
Private Sub grid_KeyDown(KeyCode As Integer, Shift As Integer)
  If KeyCode = 13 Then Call OkButton_Click
  'If KeyCode = vbEnter Then Call OkButton_Click
    If KeyCode = 116 Then
        Set Rs = New Recordset
        Rs.Open "Select * FROM #fa_KslTmpTable order by 1 ", CON, adOpenStatic
        If Rs.RecordCount > 0 Then
            Set grid.DataSource = Rs
            lblRows.Caption = Rs.RecordCount
             Call AutoAlign
             Text1.SetFocus
        End If
        Exit Sub
    End If
 If KeyCode = 27 Then Call CancelButton_Click
End Sub

Private Sub OkButton_Click()
    If Rs.EOF = False Then If grid.Row = -1 Then Exit Sub
    CnFlg = False
    Me.Hide
End Sub
Private Sub Text1_Change()
    ' Filter
    
    If Trim(Text1) = "" Then
        Set Rs = New Recordset
        Rs.Open "Select * FROM #fa_KslTmpTable order by 1 ", CON, adOpenStatic
        If Rs.RecordCount > 0 Then
            Set grid.DataSource = Rs
            lblRows.Caption = Rs.RecordCount
            Call AutoAlign
             Text1.SetFocus
             Exit Sub
        Else
            MsgBox "No Record(s) found", vbInformation, head
            Call CancelButton_Click
            Exit Sub
        End If
        
        Exit Sub
   
    End If
    If cmbColName.Text = "" Then
        MsgBox "No Record(s) found", vbInformation, head
        Call CancelButton_Click
        Exit Sub
    End If
    If Check1.value = 0 Then
        Set Rs = New Recordset
        Rs.Open "Select * FROM #fa_KslTmpTable WHERE [" & cmbColName.Text & "] LIKE '" & Replace(Trim(Text1), "'", "''") & "%' order by [" & cmbColName.Text & "]", CON, adOpenStatic
    Else
        Set Rs = New Recordset
        Rs.Open "Select * FROM #fa_KslTmpTable WHERE [" & cmbColName.Text & "] LIKE '%" & Replace(Trim(Text1), "'", "''") & "%' order by [" & cmbColName.Text & "]", CON, adOpenStatic
    End If
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
        Call AutoAlign
        lblRows.Caption = Rs.RecordCount
    ElseIf Len(Trim(Text1)) > 0 Then
        MsgBox "No Matching Record(s)", vbCritical, head
        SendKeys "{BACKSPACE}"
   
    Else
        Set grid.DataSource = Nothing
        lblRows.Caption = 0
    End If
End Sub
Public Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    If KeyCode = 40 Then grid.SetFocus
    If KeyCode = 13 Then OkButton_Click
    If KeyCode = 116 Then
       ' Set rs = New Recordset
        'rs.Open "Select * FROM #fa_KslTmpTable", con, adOpenStatic
        If Rs.RecordCount > 0 Then
        '    Set Grid.DataSource = rs
         '   lblRows.Caption = rs.RecordCount
             Call AutoAlign
             Text1.Visible = True
             Text1.SetFocus
        End If
        Exit Sub
    End If
     If KeyCode = 27 Then Call CancelButton_Click
End Sub
Public Function Fields(n As Integer) As Variant
    On Error Resume Next
    If Rs.RecordCount > 0 Then Fields = Rs(n): Exit Function
End Function
Public Property Let DefCol(ByVal C As String)
    On Error Resume Next
    cmbColName.Text = C
End Property
Public Property Let ALIGN(ByVal W As String)
    WAlign = W
    Call SplitWidth
End Property
Private Sub SplitWidth()
    Dim S As String
    Dim j As Long
    cnt = 0
    For j = 1 To Len(WAlign)
        If Mid$(WAlign, j, 1) <> "," Then
            S = S & Mid(WAlign, j, 1)
        Else
            ColArr(cnt) = CLng(S)
            cnt = cnt + 1
            S = ""
        End If
    Next j
    ColArr(cnt) = CLng(val(S))
End Sub
Private Sub AutoAlign()
    For i = 0 To cnt
        grid.Columns(i).Width = ColArr(i)
    Next i
    On Error Resume Next
   Text1.SetFocus
End Sub
Public Property Get Cancel() As Boolean
    Cancel = CnFlg
End Property
Public Property Let clear(ByVal Param As Boolean)
    If Param = True Then Unload Me
End Property
Public Property Let TVisible(ByVal Param As Boolean)
   ' If Param = True Then Text1.SetFocus
End Property
