VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ClsSpdGen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'******************************************
'DEVELOPED BY N.SOUNDARA RAJAN
'ON BEHALF OF KALPATHARU SOFTWARE SOLUTIONS
'******************************************

'*** Constants
Const SPD_HLIGHT_COLOR = &HC0FFFF
Const SPD_ORD_COLOR = 16777215

Dim SPD_HEADER_COLOR As String '&H8000000F
Dim SPD_HEADER_HLIGHT_COLOR As String '&H80000010

'*** Spread Sheet
Public WithEvents Spd As fpSpread
Attribute Spd.VB_VarHelpID = -1

'*** Grid Hirearchy Type
Public Enum Grid_Hierarchy_Type
    Hierarchy_Parent
'    Hierarchy_Child
    Hierarchy_None
End Enum

'*** Label Display Type
Public Enum DispType
    Col_Disp
    Col_Sum
    Col_TextDisp
End Enum

'*** Label Properties
Private Type LblProps
    lbl As Label
    Caption As String
    Type As DispType
    ColNo As Long
End Type

'*** Label Array
Dim ColInfo() As LblProps

'*** Local Variables
Dim Spd_AdditionalTag  As String
Dim Spd_LockCols As String
Dim Deny_Locked_Cols As Boolean
Dim Save_AdditionalTag As Boolean
Dim AdditionalTag_Col_Name As String
Dim AdditionalTag_Type As DataTypeEnum
Dim Hirearchy_Type As Grid_Hierarchy_Type
Dim ValidateCols As String
Dim IsShadowHighLight As Boolean

Dim Parent_Rel_ColNo As Long
Dim Child_Rel_ColNo As Long

Dim RsParent As Recordset
Dim RsChild As Recordset

Dim ChildClass As ClsSpdGen

'*** Public Varaibles
Public HasChild As Boolean
Public Cell_HighLight_After_Focus_Lost As Boolean

'*** Events
Event SpdAdditionalChange(Col As Long, Row As Long)
Event AfterInsert(Row As Long, RtnID As Integer)
Event AfterRowFill(Row As Long)

'*** Default Connection
Dim conn As Connection

Private Sub Class_Initialize()
On Error GoTo Class_Initialize_Error

SPD_HEADER_COLOR = &H8000000F
SPD_HEADER_HLIGHT_COLOR = &H80000010

Exit Sub
Class_Initialize_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Class_Initialize of Class Module ClsSpdGen", vbInformation, head
End Sub

Private Sub Spd_Change(ByVal Col As Long, ByVal Row As Long)
On Error GoTo Spd_Change_Error

    If Row <= 0 Or Col <= 0 Then
        Exit Sub
    End If
    
    '*** MINIMUM VALUE CHECKING
    With Spd
        .Row = Row: .Col = Col
        If val(.Text) < .TypeNumberMin Then
            .Text = val(.TypeNumberMin)
        End If
    End With
    
    '*** Event Raising Process Done Here
    RaiseEvent SpdAdditionalChange(Col, Row)
    
    '*** Label Information Display Done Here
    Call DispInfo(Row)

Exit Sub
Spd_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Spd_Change of Class Module ClsSpdGen", vbInformation, head
End Sub

Private Sub Spd_GotFocus()
Dim i As Integer
Dim J As Integer
On Error GoTo Spd_GotFocus_Error
    
    With Spd
    
    
    
    .ShadowColor = SPD_HEADER_HLIGHT_COLOR
    
    .Row = .ActiveRow: .Col = .ActiveCol
    
    If .Lock = True Then
        i = .ActiveRow: J = val(.ActiveCol) + 1
        
        If J > .MaxCols Then J = 1
        
        While J <= .MaxCols
                        
            If J = .ActiveCol Then
                If i = .ActiveRow Then
                    GoTo Focus
                End If
            End If
            
            .Row = i: .Col = J
            If .Lock = True Then
                J = J + 1
            Else
                .Row = i: .Col = J
                .Action = ActionActiveCell
                GoTo Focus
            End If
            
            If J > .MaxCols Then
            
                J = 1
                
                If i >= .MaxRows Then
                    i = 1
                Else
                    i = i + 1
                End If
                
            End If
        Wend
    End If
    
Focus:
    Call DispInfo(.ActiveRow)
    'SpdSetFocus Spd, Spd.ActiveCol, Spd.ActiveRow
    SpdHighlight Spd, .ActiveRow, .ActiveCol
    Spd.SetFocus
    End With
Exit Sub
Spd_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Spd_GotFocus of Class Module ClsSpdGen", vbInformation, head
End Sub

Private Sub Spd_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
Dim i As Integer
On Error GoTo Spd_LeaveCell_Error
    If Col = 1 Then
        Col = 2
    End If

    If NewRow <= 0 Then Exit Sub
    If NewCol <= 0 Then Exit Sub
    
    '***
    'SpreadCellMove NewRow, NewCol, Row, Col
    '***
    
    Call DispInfo(NewRow)
    SpdHighlight Spd, NewRow, NewCol
    
Exit Sub
Spd_LeaveCell_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Spd_LeaveCell of Class Module ClsSpdGen", vbInformation, head
End Sub

Private Sub Spd_LostFocus()
On Error GoTo Spd_LostFocus_Error

    Spd.ShadowColor = SPD_HEADER_COLOR
    
    If Cell_HighLight_After_Focus_Lost = False Then
        SpdHighlight Spd, 0, 0
    End If

Exit Sub
Spd_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Spd_LostFocus of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Static Sub SpdHighlight(ByRef Spd As fpSpread, NewRow As Long, NewCol As Long, Optional OldRow As Long, Optional OldCol As Long)
Dim sOldClr As Variant
Dim sOldCol As Long
On Error GoTo ErrPath
    
    Spd.BlockMode = True
    
    DoEvents
    Spd.Row = 1
    Spd.Col = 1
    Spd.Row2 = Spd.MaxRows
    Spd.Col2 = Spd.MaxCols
    Spd.BackColor = SPD_ORD_COLOR
    Spd.FontBold = False
    
    If NewRow > 0 Then
        Spd.Row = NewRow
        Spd.Col = NewCol
        Spd.Row2 = NewRow
        Spd.Col2 = NewCol
        sOldClr = Spd.BackColor
        
        Spd.BackColor = &HC0FFFF
        Spd.FontBold = True
    End If
    Spd.BlockMode = False

Exit Sub
ErrPath:
    MsgBox err.Description
End Sub
Public Sub SpdClear(Optional sSpd As Object = Nothing)
On Error GoTo SpdClear_Error

    If sSpd Is Nothing Then
        Spd.MaxRows = 0
        Spd.MaxRows = 1
    Else
        sSpd.MaxRows = 0
        sSpd.MaxRows = 1
    End If

Exit Sub
SpdClear_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdClear of Module SpdGenMod"
End Sub
Public Sub SpdFill(ByRef Spd As fpSpread, query As String, conn As ADODB.Connection, Optional TagColNos As String, Optional TagColNames As String)
Dim Cn As New ADODB.Connection
Dim Rs As New ADODB.Recordset
Dim LockedCols As String
Dim i As Integer

Dim ColNames As Collection
Dim ColNos As Collection

On Error GoTo SpdFill_Error

LockedCols = GetLockedColsString

If TagColNos <> " " Then
    Split_String_Into_Collection TagColNos, ColNos
    Split_String_Into_Collection TagColNames, ColNames
End If

Set Cn = New ADODB.Connection
'Cn = conn
Cn.Open connectstring

Set Rs = New ADODB.Recordset
Rs.CursorLocation = adUseClient
Rs.Open query, Cn, adOpenStatic, adLockReadOnly
Set Rs.ActiveConnection = Nothing

Spd.MaxRows = 0
If Not Rs.EOF Then
    While Not Rs.EOF
        Spd.MaxRows = Spd.MaxRows + 1
        Spd.Row = Spd.MaxRows
        
        For i = 1 To Spd.MaxCols
            Spd.Col = i
            
            If Rs.Fields(i - 1).Type = adDecimal Or Rs.Fields(i - 1).Type = adCurrency Or Rs.Fields(i - 1).Type = adNumeric Then
                If Not IsNull(Rs.Fields(i - 1)) Then
                    Spd.Text = val(Rs.Fields(i - 1))
                Else
                    Spd.Text = 0
                End If
            Else
                If Not IsNull(Rs.Fields(i - 1)) Then
                    Spd.Text = Rs.Fields(i - 1)
                Else
                    Spd.Text = ""
                End If
                
            End If
            
            If i = Rs.Fields.Count Then
                Exit For
            End If
        Next i
        
        If Not ColNos.Count = 0 Then
            For i = 1 To ColNos.Count
                Spd.Col = ColNos.item(i)
                Spd.CellTag = Rs.Fields(ColNames(i)).value
            Next i
        End If
        
        Rs.MoveNext
    Wend
End If

If LockedCols <> "" Then
'    SpdLockUnlockCols True, LockedCols
End If

Exit Sub
SpdFill_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdFill of Module SpdGenMod"
End Sub
Public Sub Split_String_Into_Collection(ByVal str As String, ByRef Col As Collection)
On Error GoTo StringIntoCollection_Error
    
    Set Col = New Collection
    
    While Len(str) > 0
        If InStr(1, str, ",") > 0 Then
            Col.ADD Trim(Mid(str, 1, InStr(1, str, ",") - 1))
        Else
            Col.ADD Trim(str)
        End If
        str = Mid(str, Len(Col.item(Col.Count)) + 2, Len(str))
    Wend

Exit Sub
StringIntoCollection_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure StringIntoCollection of Module SpdGenMod", vbInformation, head
End Sub
Public Sub SpdLockUnlock(ByRef Spd As fpSpread, isLock As Boolean, LockUnLockAll As Boolean, Optional StartCol As Long, Optional EndCol As Long, Optional StartRow As Long, Optional EndRow As Long)
On Error GoTo SpdLockUnlock_Error

    If LockUnLockAll = True Then
        StartCol = 1
        EndCol = Spd.MaxCols
        StartRow = 1
        EndRow = Spd.MaxRows
    End If
    
    Spd.BlockMode = True
    
    Spd.Col = StartCol
    Spd.Col2 = EndCol
    Spd.Row = StartRow
    Spd.Row2 = EndRow
    
    Spd.Lock = isLock
    Spd.BlockMode = False
    
    If isLock = False Then
        SpdLockUnlockCols True, Spd_LockCols
    End If

Exit Sub
SpdLockUnlock_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdLockUnlock of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Function SpdSetFocus(ByRef Spd As fpSpread, sCol As Long, sRow As Long)
On Error GoTo ErrPath
    
    Spd.Row = sRow
    Spd.Col = sCol
    Spd.Action = ActionActiveCell
    Spd.SetFocus
    SpdHighlight Spd, sRow, sCol
    
Exit Function
ErrPath:
    MsgBox err.Description
End Function
Public Sub SpdSave(Optional sConn As ADODB.Connection = Nothing, Optional PrimaryKeyField As String, Optional PrimaryKeyValue As Integer, Optional Save_Based_On_Additional_Tag_Empty_Check As Boolean = False)
Dim i, J As Integer

Dim RsNxt As Recordset

Dim SpdConn As Connection
Dim ColInfo As Collection

Dim TblName As String
Dim FldName As String
Dim StrSave As String
Dim StrMain As String
Dim StrBody As String
Dim StrCols As String

On Error GoTo SpdSave_Error

Set SpdConn = New ADODB.Connection
Set SpdConn = sConn

TblName = "": FldName = ""
StrSave = "": StrMain = ""
StrBody = "": StrCols = ""

Set ColInfo = New Collection

If Save_Based_On_Additional_Tag_Empty_Check = True Then
    If Spd_AdditionalTag = "" Then
        Exit Sub
    End If
End If

'*** Getting Table Name
TblName = Spd.Tag
StrMain = "Insert Into " & TblName & "("

If Not IsMissing(PrimaryKeyField) Then
    If Trim(PrimaryKeyField) <> "" Then
        StrMain = StrMain & PrimaryKeyField & ","
    End If
End If
'*** *** ***

'*** Columns Build
For i = 1 To Spd.MaxCols
    Spd.Row = 0: Spd.Col = i
    If Trim(Spd.ColID) <> "" And val(Spd.GetColItemData(i)) = 1 Then
    
        If Spd.ColID <> AdditionalTag_Col_Name Then
            StrCols = StrCols & Spd.ColID & ","
        End If
    
        ColInfo.ADD i
    End If
Next i

'*** Additional Tag Column
If Save_AdditionalTag = True Then
    StrCols = StrCols & AdditionalTag_Col_Name & ","
End If

If Len(StrCols) > 0 Then
    StrCols = Mid(StrCols, 1, Len(StrCols) - 1)
Else
    MsgBox "No Columns Defined in " & Spd.Name, vbInformation, "Kalsofte"
    Exit Sub
End If
'*** *** ***

StrMain = StrMain & StrCols & ") "
StrMain = StrMain & "Values ("

If Spd.MaxRows <= 0 Then
    MsgBox "Enter the values.", vbInformation, "Kalsofte."
    Exit Sub
End If

'*** Primary Key Value Build
If Not IsMissing(PrimaryKeyField) Then
    If Trim(PrimaryKeyField) <> "" Then
        If Not IsMissing(PrimaryKeyValue) Then
            StrBody = StrBody & val(PrimaryKeyValue) & ","
        Else
            StrBody = StrBody & "0,"
        End If
    End If
End If
'*** *** ***

StrMain = StrMain & StrBody

'--------------------
'*** Value Build Part
'--------------------
For i = 1 To Spd.MaxRows
    StrBody = ""
    For J = 1 To ColInfo.Count
        Spd.Row = 0: Spd.Col = ColInfo.item(J)
        If Spd.ColID <> "" And val(Spd.GetColItemData(ColInfo.item(J))) = 1 Then
        
            If Spd.ColID <> AdditionalTag_Col_Name Then
        
                If Spd.CellNote = Spd.ColID Then
                    Spd.Row = i
                    Spd.Col = ColInfo.item(J)
                    If Spd.CellType = CellTypeNumber Or Spd.CellType = CellTypeCurrency Or Spd.CellType = CellTypePercent Then
                        StrBody = StrBody & val(Spd.Text) & ","
                    ElseIf Spd.CellType = CellTypeCheckBox Or Spd.CellType = CellTypeButton Then
                        StrBody = StrBody & val(Spd.value) & ","
                    ElseIf Spd.CellType = CellTypeEdit Or Spd.CellType = CellTypeStaticText Or Spd.CellType = CellTypeDate Or Spd.CellType = CellTypeNumber Then
                        StrBody = StrBody & "'" & Spd.Text & "',"
                    End If
                Else
                    Spd.Row = i
                    Spd.Col = ColInfo.item(J)
                    StrBody = StrBody & val(Spd.CellTag) & ","
                End If
                
            End If                  '* Additional Tag Check
        End If                  '* Empty Check
    Next J                  '* Column Loop
    
    '*** Additional Tag Column Name Adding
    If Save_AdditionalTag = True Then
        If AdditionalTag_Type = adCurrency Or AdditionalTag_Type = adDecimal _
            Or AdditionalTag_Type = adInteger Or AdditionalTag_Type = adDouble _
            Or AdditionalTag_Type = adNumeric Then
            
            StrBody = StrBody & val(SpdAdditionalTag) & ","
            
        ElseIf AdditionalTag_Type = adVarChar Or AdditionalTag_Type = adChar _
            Or AdditionalTag_Type = adDate Or AdditionalTag_Type = adDate Then
            
            StrBody = StrBody & "'" & SpdAdditionalTag & "',"
            
        Else
            StrBody = StrBody & "'" & SpdAdditionalTag & "',"
        End If
    End If
    '*** *** ***
    
    '* Main Save String Build Part
    StrBody = Mid(StrBody, 1, Len(StrBody) - 1)
    StrSave = StrMain & StrBody & ")"
    '
    SpdConn.Execute StrSave
    '*****************
    'Record(s) Saved Here
    '*****************
    
    Set RsNxt = New ADODB.Recordset
    RsNxt.Open "Select IsNull(@@Identity, 0) As NxtID", SpdConn, adOpenStatic, adLockReadOnly
        
    If Not RsNxt.EOF Then
        RaiseEvent AfterInsert(CLng(i), val(RsNxt!NxtID))
    Else
        RaiseEvent AfterInsert(CLng(i), 0)
    End If
    
Next i                  '* Row Loop

Exit Sub
SpdSave_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdSave of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Sub SetCols(ColNo As Long, Display_FieldName As String, Optional Save_FieldName As String = "", Optional Save_Required As Boolean = False, Optional IsReqdForReport As Boolean = True)
Dim Save_Req As Integer
On Error GoTo SetCols_Error

    Spd.Row = 0
    Spd.Col = ColNo
    
    Spd.CellNote = Display_FieldName
    
    If Save_FieldName = "" Then
        Spd.ColID = Display_FieldName
    Else
        Spd.ColID = Save_FieldName
    End If
    
    If Save_Required = True Then
        Save_Req = 1
    Else
        Save_Req = 0
    End If
    
    Spd.SetColItemData ColNo, CInt(Save_Req)
    
    If IsReqdForReport = True Then
        InsertCols ColNo
    End If
    
    AssignDecimals ColNo
    
Exit Sub
SetCols_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SetCols of Class Module ClsSpdGen", vbInformation, head
End Sub

Public Sub SetTableName(TableName As String)

On Error GoTo SetTableName_Error

    Spd.Tag = TableName

Exit Sub
SetTableName_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SetTableName of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Sub SpdDataSource(query As String, Connnection_Object As ADODB.Connection, Optional FillAdditionalTagAlso As Boolean = True)
Dim Rs As ADODB.Recordset
Dim Cn As ADODB.Connection
Dim i, J As Integer
On Error GoTo SpdDataSource_Error

'*** Connection
Set Cn = New Connection
Set Cn = Connnection_Object

'*** RecordSet
Set Rs = New ADODB.Recordset
Rs.CursorLocation = adUseClient
Rs.Open query, Cn, adOpenStatic, adLockReadOnly
Set Rs.ActiveConnection = Nothing

'*** Data Fill Part
Spd.MaxRows = 0
If Not Rs.EOF Then
    While Not Rs.EOF
        Spd.MaxRows = Spd.MaxRows + 1
        For i = 0 To Rs.Fields.Count - 1
            For J = 1 To Spd.MaxCols
                Spd.Row = 0: Spd.Col = J
                
                If UCase(Spd.CellNote) = UCase(Rs.Fields(i).Name) Then
                    Spd.Row = Spd.MaxRows:  Spd.Col = J
                    
                    If Rs.Fields(i).Type = adCurrency Or Rs.Fields(i).Type = adDouble Or Rs.Fields(i).Type = adInteger Or Rs.Fields(i).Type = adNumeric Then
                        If Not IsNull(Rs.Fields(i).value) Then
                            Spd.Text = val(Rs.Fields(i).value)
                        Else
                            Spd.Text = 0
                        End If
                        
                    Else
                        If Not IsNull(Rs.Fields(i).value) Then
                            Spd.Text = Rs.Fields(i).value
                        Else
                            Spd.Text = 0
                        End If
                    End If
                End If
                
                
                If UCase(Spd.ColID) = UCase(Rs.Fields(i).Name) Then
                    
                    Spd.Row = Spd.MaxRows: Spd.Col = J
                                        
                    If Rs.Fields(i).Type = adCurrency Or Rs.Fields(i).Type = adDouble Or Rs.Fields(i).Type = adInteger Or Rs.Fields(i).Type = adNumeric Then
                        If Not IsNull(Rs.Fields(i).value) Then
                            Spd.CellTag = val(Rs.Fields(i).value)
                        Else
                            Spd.CellTag = 0
                        End If
                    Else
                        If Not IsNull(Rs.Fields(i).value) Then
                            Spd.CellTag = Rs.Fields(i).value
                        Else
                            Spd.CellTag = ""
                        End If
                    End If                  '* Field Type Check
                End If                  '* Field Name Check
            Next J                  '* Column Loop
            RaiseEvent AfterRowFill(CLng(val(Spd.MaxRows)))
        Next i                  '* Row Loop
        Rs.MoveNext         '* Record Set Move
    Wend                '* RecordSet Loop
End If              '* Eof Check
'*** *** *** *** ***

'*** Additional Tag Fill Part
If Save_AdditionalTag = True And FillAdditionalTagAlso = True Then
    Rs.Filter = adFilterNone
    If Not Rs.EOF Then
        If Not IsNull(Rs.Fields(AdditionalTag_Col_Name)) Then
            SpdAdditionalTag = Rs.Fields(AdditionalTag_Col_Name)
        End If
    Else
        SpdAdditionalTag = ""
    End If
End If
'*** *** *** *** ***

If Spd.MaxRows = 0 Then
    Spd.MaxRows = 1
End If

Exit Sub
SpdDataSource_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdDataSource of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Sub SpdLockUnlockCols(isLock As Boolean, LockCols As String)
Dim ColsCol As New Collection
Dim i As Integer
On Error GoTo ErrPath
    

    Call Split_String_Into_Collection(LockCols, ColsCol)

    If ColsCol.Count = 0 Then Exit Sub

    For i = 1 To ColsCol.Count
        Spd.BlockMode = True
        Spd.Col = ColsCol.item(i)
        Spd.Col2 = ColsCol.item(i)
        Spd.Row = -1
        Spd.Lock = isLock
        Spd.BlockMode = False
    Next i
    
Exit Sub
ErrPath:
    MsgBox err.Description
End Sub
Property Let SpdAdditionalTag(New_SpdAdditionalTag As String)
On Error GoTo SpdAdditionalTag_Error

    Spd_AdditionalTag = New_SpdAdditionalTag
    
Exit Property
SpdAdditionalTag_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdAdditionalTag of Class Module ClsSpdGen", vbInformation, head
End Property

Property Get SpdAdditionalTag() As String
On Error GoTo SpdAdditionalTag_Error

    SpdAdditionalTag = Spd_AdditionalTag

Exit Property
SpdAdditionalTag_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdAdditionalTag of Class Module ClsSpdGen", vbInformation, head
End Property
Public Sub SetRecSet(ByRef Spd As fpSpread, RecSet As Recordset, Optional TagColNos As String, Optional TagColNames As String)
Dim Cn As New ADODB.Connection
Dim Rs As New ADODB.Recordset
Dim i As Integer

Dim ColNames As Collection
Dim ColNos As Collection

On Error GoTo SpdFill_Error

If TagColNos <> " " Then
    Split_String_Into_Collection TagColNos, ColNos
    Split_String_Into_Collection TagColNames, ColNames
End If

Set Rs = New ADODB.Recordset
Set Rs = RecSet

Spd.MaxRows = 0
If Not Rs.EOF Then
    While Not Rs.EOF
        Spd.MaxRows = Spd.MaxRows + 1
        Spd.Row = Spd.MaxRows
        
        For i = 1 To Spd.MaxCols
            Spd.Col = i
            
            If Rs.Fields(i - 1).Type = adDecimal Or Rs.Fields(i - 1).Type = adCurrency Or Rs.Fields(i - 1).Type = adNumeric Then
                Spd.Text = val(Rs.Fields(i - 1).value)
            Else
                Spd.Text = Rs.Fields(i - 1).value
            End If
            
            If i = Rs.Fields.Count Then
                Exit For
            End If
        Next i
        
        If Not ColNos.Count = 0 Then
            For i = 1 To ColNos.Count
                Spd.Col = ColNos.item(i)
                Spd.CellTag = Rs.Fields(ColNames(i)).value
            Next i
        End If
        
        Rs.MoveNext
    Wend
End If

Exit Sub
SpdFill_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdFill of Module SpdGenMod"
End Sub

Public Function BuildSelectQry(Connnection_Object As ADODB.Connection, Optional WhereCondition As String = "", Optional GetAdditionalTagAlso As Boolean = True, Optional OrderBy As String = "") As String
Dim Select_String As String
Dim Where_String As String
Dim Order_String As String
Dim Table_String As String
Dim Table_Name As String
Dim RsParent As Recordset
Dim SqlParent As String
Dim Cn As ADODB.Connection
Dim i As Integer
On Error GoTo BuilSelectQry_Error

'*** Variables Initial Values
Select_String = ""
Table_String = Chr(13) & " From " & Spd.Tag
Table_Name = Spd.Tag

'*** Condition Build
If WhereCondition <> "" Then
    Where_String = vbCrLf & " Where " & WhereCondition
End If

'*** Order By
If OrderBy <> "" Then
    Order_String = vbCrLf & " Order By " & OrderBy
End If

'*** Connection Open
Set Cn = New ADODB.Connection
Set Cn = Connnection_Object

'*** Main Query Building Part
For i = 1 To Spd.MaxCols
    Spd.Row = 0: Spd.Col = i
    If Spd.ColID <> "" Then
    
        If Spd.ColID <> AdditionalTag_Col_Name Then
    
            If Spd.CellNote = Spd.ColID Then
            
                If IsExistInTable(Spd.ColID, Table_Name) = True Then
                    Select_String = Select_String & Table_Name & "." & Spd.ColID & ", "
                End If
                
            Else
                
                SqlParent = ""
                SqlParent = SqlParent & Chr(13) & " Select Distinct ChildTable, ChildColumn, ParentTable, ParentColumn"
                SqlParent = SqlParent & Chr(13) & " From  ("
                SqlParent = SqlParent & Chr(13) & " Select"
                SqlParent = SqlParent & Chr(13) & " Upper(T.Name) ChildTable , Upper(C.Name) ChildColumn ,"
                SqlParent = SqlParent & Chr(13) & " IsNull(Upper(Tr.Name),'') ParentTable, IsNull(Upper(Cr.Name),'') ParentColumn"
                SqlParent = SqlParent & Chr(13) & " From sysobjects T"
                SqlParent = SqlParent & Chr(13) & " Inner Join SysColumns C on T.Id = C.Id"
                SqlParent = SqlParent & Chr(13) & " Inner Join Sysforeignkeys K on K.Fkeyid= T.Id and K.fkey = C.ColId"
                SqlParent = SqlParent & Chr(13) & " Inner Join SysColumns Cr on Cr.Id = K.RkeyId and K.Rkey = Cr.ColId"
                SqlParent = SqlParent & Chr(13) & " Inner Join sysobjects Tr on Tr.Id = Cr.Id"
                SqlParent = SqlParent & Chr(13) & " ) a"
                SqlParent = SqlParent & Chr(13) & " where ChildTable = '" & Table_Name & "'"
                SqlParent = SqlParent & Chr(13) & " And ChildColumn = '" & Spd.ColID & "'"
    
                Set RsParent = New Recordset
                RsParent.CursorLocation = adUseClient
                RsParent.Open SqlParent, Cn, adOpenStatic, adLockReadOnly
                Set RsParent.ActiveConnection = Nothing
                
                If Not RsParent.EOF Then
                    While Not RsParent.EOF
                        If IsExistInTable(Spd.ColID, Table_Name) = True Then
                            Select_String = Select_String & Table_Name & "." & Spd.ColID & ", "
                        End If
                        
                        If IsExistInTable(Spd.CellNote, RsParent!ParentTable) = True Then
                            Select_String = Select_String & RsParent!ParentTable & "." & Spd.CellNote & ", "
                        
                            Table_String = Table_String & vbCrLf & " Inner Join " & RsParent!ParentTable & " On " & RsParent!ParentTable & "." & RsParent!ParentColumn & " = " & RsParent!Childtable & "." & RsParent!ChildColumn
                        End If
                        
                        RsParent.MoveNext
                    Wend
                Else
                    Select_String = Select_String & Table_Name & "." & Spd.ColID & ", "
                End If          '** RsParent Eof Check
            End If          '** CellNote, ColID Check
        End If          '** Additional Tag Check
    End If          '** Empty Check
Next i          '** Column Loop
'*** *** ***

'*** Additional Tag Column Building Part
If Save_AdditionalTag = True And GetAdditionalTagAlso = True Then
    Select_String = Select_String & "Convert(Varchar(50), " & Table_Name & "." & AdditionalTag_Col_Name & ") As " & AdditionalTag_Col_Name & ", "
End If
'*** *** ***

'*** Final Query Building Part
If Len(Select_String) > 0 Then
    Select_String = Mid(Select_String, 1, Len(Select_String) - 2)
    Select_String = "Select " & Select_String
Else
    MsgBox "No Columns Defined.", vbInformation, "Kalsofte."
End If
'*** Returning
BuildSelectQry = Select_String & Table_String & Where_String & Order_String
'*** *** ***

Exit Function
BuilSelectQry_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BuilSelectQry of Class Module ClsSpdGen", vbInformation, head
End Function

Public Sub SpdDataSourceAdv(Connection_Object As ADODB.Connection, Optional WhereCondition As String = "", Optional FillAdditionalTagAlso As Boolean = True, Optional OrderBy As String = "")
Dim SqlQuery As String
On Error GoTo SpdDataSourceAdv_Error

    SqlQuery = BuildSelectQry(Connection_Object, WhereCondition, FillAdditionalTagAlso, OrderBy)
    SpdDataSource SqlQuery, Connection_Object
    
Exit Sub
SpdDataSourceAdv_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdDataSourceAdv of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Function GetTotal(ColID As Long) As Double
Dim Total As Double
Dim i As Integer
On Error GoTo SpdGetTotal_Error

    Total = 0
    
    For i = 1 To Spd.MaxRows
        Spd.Row = i
        Spd.Col = ColID
        Total = Total + val(Spd.Text)
    Next i
    
GetTotal = Total
Exit Function
SpdGetTotal_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdGetTotal of Class Module ClsSpdGen", vbInformation, head
End Function
Public Sub AssignSpread(SpdSheet As fpSpread, Optional DenyLockedCols As Boolean = False, Optional Connection_Object As Connection = Nothing, Optional IsSaveAdditionalTag As Boolean = False, Optional AdditionalTagColName As String = "", Optional AdditionalTagType As DataTypeEnum = adVarChar)
Dim LockCols As String
Dim i As Integer
On Error GoTo AssignSPD_Error

    '
    '*** Sheet Assign
    '
    Set Spd = SpdSheet
    
    '
    '*** Labels
    '
    ReDim Preserve ColInfo(0)
    
    '
    '*** Connection
    '
    Set conn = New Connection
    If Connection_Object Is Nothing Then
        'MsgBox "A"
        conn.Open connectstring
    Else
        Set conn = Connection_Object
        'MsgBox "A"
    End If
    
    '
    '*** Local Properties
    '
    Save_AdditionalTag = IsSaveAdditionalTag
    AdditionalTag_Col_Name = AdditionalTagColName
    AdditionalTag_Type = AdditionalTagType
    Hirearchy = Hierarchy_None
    IsShadowHighLight = True
    
    If AdditionalTagColName = "" Then Save_AdditionalTag = False
    If Save_AdditionalTag = False Then AdditionalTag_Col_Name = ""
    
    '
    '*** Properties
    '
    'Spd.LockBackColor = &HC0C0C0
    Spd.LockForeColor = ColorConstants.vbBlack
    
    Spd.EditModePermanent = True
    Spd.ForeColor = ColorConstants.vbBlack
    
    Deny_Locked_Cols = DenyLockedCols
    Deny_Locked_Cols = False                '*** Default
    '
    '*** Getting Locked Columns
    '
    LockCols = ""
    With Spd
        For i = 1 To Spd.MaxCols
            Spd.Col = i
            If Spd.Lock = True Then
                LockCols = LockCols & i & ","
            End If
        Next i
        If Len(LockCols) > 0 Then
            LockCols = Mid(LockCols, 1, Len(LockCols) - 1)
            Spd_LockCols = LockCols
        End If
    End With
    
Exit Sub
AssignSPD_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure AssignSpd of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Sub SpdLockUnlockAdv(isLock As Boolean, LockUnLockAll As Boolean)
On Error GoTo SpdLockUnlockAdv_Error
    
    Call SpdLockUnlock(Spd, isLock, LockUnLockAll)
    
Exit Sub
SpdLockUnlockAdv_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdLockUnlockAdv of Class Module ClsSpdGen", vbInformation, head
End Sub
Private Sub SpreadCellMove(NewRow As Long, NewCol As Long, Optional Row As Long = 0, Optional Col As Long = 0)
Dim i As Integer
On Error GoTo SpreadCellMove_Error

If Deny_Locked_Cols = True Then
        
        Spd.Row = NewRow
        Spd.Col = NewCol
        
        i = NewCol
        For i = NewCol + 1 To Spd.MaxCols
            Spd.Row = NewRow
            Spd.Col = i

            If Spd.Lock = False Then
                If Spd.ColHidden = False Then
                    Spd.Row = NewRow
                    Spd.Col = i
                    Spd.Action = ActionActiveCell
                    SpdHighlight Spd, NewRow, CLng(i)
                    Exit Sub
                End If
            End If

            If i = Spd.MaxCols Then
                If NewRow < Spd.MaxRows Then
                    NewRow = NewRow + 1
                End If
                i = 1
            End If

            If i = Spd.ActiveCol Then
                Spd.Row = NewRow
                Spd.Col = Spd.ActiveCol
                Spd.Action = ActionActiveCell
                SpdHighlight Spd, NewRow, CLng(i)
                Exit For
            End If

        Next i
                
        
        '***
    Else
        If Row > 0 And Col > 0 Then
            SpdHighlight Spd, NewRow, NewCol, Row, Col
        Else
            SpdHighlight Spd, NewRow, NewCol
        End If
    End If
    

Exit Sub
SpreadCellMove_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpreadCellMove of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Sub AssignLabels(ByRef Disp_Label As Label, ColNo As Long, Display_Type As DispType, Optional Caption As String = "", Optional Caption_Required As Boolean = True, Optional AutoSize_Required As Boolean = True)
Dim i As Integer
On Error GoTo AssignLables_Error
    
    If Spd Is Nothing Then
        MsgBox "Assign the sheet before ColInfo.", vbInformation, "Kalsofte."
        Exit Sub
    End If
    
    Spd.Row = 0: Spd.Col = ColNo
    
    If UBound(ColInfo()) = 0 Then
        If ColInfo(0).lbl Is Nothing Then
            i = UBound(ColInfo())
        Else
            i = UBound(ColInfo()) + 1
        End If
    Else
        i = UBound(ColInfo()) + 1
    End If
    
    ReDim Preserve ColInfo(i)
    Set ColInfo(i).lbl = Disp_Label
    ColInfo(i).Type = Display_Type
    ColInfo(i).ColNo = ColNo
    
    If Caption_Required = True Then
        If Caption = "" Then
            If ColInfo(i).Type = Col_Sum Then
                ColInfo(i).Caption = "Total " & Spd.Text
            Else
                ColInfo(i).Caption = Spd.Text
            End If
        Else
            ColInfo(i).Caption = Caption
        End If
    End If
    
    '*** Properties
    ColInfo(i).lbl.Caption = ""
    ColInfo(i).lbl.AutoSize = AutoSize_Required

Exit Sub
AssignLables_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure AssignLables of Class Module ClsSpdGen", vbInformation, head
End Sub
Private Sub DispInfo(Row As Long)
Dim i As Integer
On Error GoTo DispInfo_Error

    For i = 0 To UBound(ColInfo())
        If Not ColInfo(i).lbl Is Nothing Then
            If ColInfo(i).Type = Col_Disp Then
                Spd.Row = Row: Spd.Col = ColInfo(i).ColNo
                If ColInfo(i).Caption <> "" Then
                    ColInfo(i).lbl.Caption = ColInfo(i).Caption & " : " & val(Spd.Text)
                Else
                    ColInfo(i).lbl.Caption = Spd.Text
                End If
            ElseIf ColInfo(i).Type = Col_Sum Then
                If ColInfo(i).Caption <> "" Then
                    ColInfo(i).lbl.Caption = ColInfo(i).Caption & " : " & GetTotal(ColInfo(i).ColNo)
                Else
                    ColInfo(i).lbl.Caption = GetTotal(ColInfo(i).ColNo)
                End If
            ElseIf ColInfo(i).Type = Col_TextDisp Then
                Spd.Row = Row: Spd.Col = ColInfo(i).ColNo
                If ColInfo(i).Caption <> "" Then
                    ColInfo(i).lbl.Caption = ColInfo(i).Caption & Spd.Text
                Else
                    ColInfo(i).lbl.Caption = Spd.Text
                End If
            End If
        End If
    Next i

Exit Sub
DispInfo_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DispInfo of Class Module ClsSpdGen", vbInformation, head
End Sub
Private Sub InsertCols(ColNo As Long)
Dim Rs As Recordset
Dim CnDb As Connection
Dim SqlQry As String
Dim FldDesc As String
Dim Decimals As Integer
Dim Disp As Integer
On Error GoTo InsertCols_Error

    '*****
    Set CnDb = New Connection
    Set CnDb = conn
    
    If CnDb.State <= 0 Then Exit Sub
    
    Spd.Row = 0: Spd.Col = ColNo
    DoEvents
    SqlQry = "Select T.TableID, T.Table_Name, IsNull(F.Field_Name, '') As Field_Name, IsNull(F.Field_Desc, '') As Field_Desc"
    SqlQry = SqlQry & Chr(13) & " From PPC_Tables T"
    SqlQry = SqlQry & Chr(13) & " Left Outer Join PPC_Fields F On F.TableID = T.TableID "
    SqlQry = SqlQry & Chr(13) & " Where T.Table_Name = '" & Spd.Tag & "'"
    
    Set Rs = New ADODB.Recordset
    Rs.CursorLocation = adUseClient
    Rs.Open SqlQry, CnDb, adOpenStatic, adLockReadOnly
    Set Rs.ActiveConnection = Nothing
    
    If Not Rs.EOF Then
        Rs.Filter = 0
        Rs.Filter = "Field_Name = '" & Spd.ColID & "'"
        
        If Spd.ColID <> Spd.CellNote Then
            FldDesc = ""
        Else
            FldDesc = Spd.Text
        End If
        
        Spd.BlockMode = True
        Spd.Row = -1
        Spd.Row2 = -1
        Spd.Col = ColNo
        Spd.Col2 = ColNo
        If Spd.CellType = CellTypeNumber Or Spd.CellType = CellTypePercent Or Spd.CellType = CellTypeCurrency Then
            Decimals = Spd.TypeNumberDecPlaces
        Else
            Decimals = 0
        End If
        
        If Spd.ColHidden = True Then
            Disp = 0
        Else
            Disp = 1
        End If
        
        Spd.BlockMode = False
        
        If Not Rs.EOF Then
            'If Spd.ColID <> Rs!Field_Desc Then
            '    SqlQry = "Update PPC_Fields Set Field_Desc = '" & FldDesc & "'"
            '    SqlQry = SqlQry & " Where Field_Name = '" & Spd.ColID & "' And TableID = " & Val(Rs!TableId) & ""
            '    Debug.Print SqlQry
            '    CnDb.Execute SqlQry
            '    Exit Sub
            'End If
        Else
            Rs.Filter = adFilterNone
            SqlQry = "Insert Into PPC_Fields(TableID, Field_Name, Field_Desc, Decimals, Disp) "
            SqlQry = SqlQry & "Values(" & Rs!TableId & ", '" & Spd.ColID & "', '" & FldDesc & "', " & val(Decimals) & ", " & val(Disp) & ")"
            Debug.Print SqlQry
            CnDb.Execute SqlQry
            Exit Sub
        End If
    End If
    
'    If Spd.Tag <> "" And Spd.ColID <> "" And Spd.ColID = Spd.CellNote Then
'        SqlQry = ""
'        SqlQry = " Select * "
'        SqlQry = SqlQry & Chr(13) & " From SysProperties P"
'        SqlQry = SqlQry & Chr(13) & " Inner Join SysObjects O On O.ID = P.ID"
'        SqlQry = SqlQry & Chr(13) & " Inner Join SysColumns C On C.ID = P.ID And C.ColID = P.SmallID"
'        SqlQry = SqlQry & Chr(13) & " Where O.Name = '" & Spd.Tag & "' And C.Name = '" & Spd.ColID & "'"
'        Rs.Open SqlQry, CnDb, adOpenStatic, adLockReadOnly
'        Spd.Row = 0: Spd.Col = ColNo
'
'        If Rs.EOF = True Then
'
'            SqlQry = " EXECUTE sp_addextendedproperty 'MS_Description', '" & Spd.Text & "', 'user', 'dbo', 'table', '" & Spd.Tag & "', 'column', '" & Spd.ColID & "'"
'            Debug.Print SqlQry
'            'Cndb.Execute sqlqry
'        End If
'    End If
    '*****
    
Exit Sub
InsertCols_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure InsertCols of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Function IsTextExists(ColNo As Long, SearchString As String, StartRow As Long, Optional OmitRow As Long = 0) As Boolean
Dim i As Integer
On Error GoTo IsAlreadyExistsInCol_Error

IsTextExists = False

With Spd
    For i = StartRow To .MaxRows
        .Row = i
        If .Row <> OmitRow Then
            .Col = ColNo
            If SearchString = .Text Then
                IsTextExists = True
                Exit Function
            End If
        End If
    Next i
End With

Exit Function
IsAlreadyExistsInCol_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure IsAlreadyExistsInCol of Class Module ClsSpdGen", vbInformation, head
End Function
Public Sub SpdLockUnlockRow(isLock As Boolean, lRow As Long, Optional ColNos As String = "")
Dim Cols As Collection
Dim LockCols As Collection
Dim i As Integer

On Error GoTo SpdLockUnlockRow_Error

    Spd.BlockMode = True
    Spd.Col = -1
    Spd.Col2 = -1
    Spd.Row = lRow
    Spd.Row2 = lRow
    Spd.Lock = isLock
    Spd.BlockMode = False
            
    If isLock = False Then
        Split_String_Into_Collection Spd_LockCols, LockCols
        If LockCols.Count = 0 Then Exit Sub
        For i = 1 To LockCols.Count
            Spd.BlockMode = True
            Spd.Col = LockCols.item(i)
            Spd.Col2 = LockCols.item(i)
            Spd.Row = lRow
            Spd.Row2 = lRow
            Spd.Lock = True
            Spd.BlockMode = False
        Next i
    End If
    
Exit Sub
SpdLockUnlockRow_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdLockUnlockRow of Class Module ClsSpdGen", vbInformation, head
End Sub
Private Sub AssignDecimals(ColNo As Long)
Dim CnDb As Connection
Dim SqlStr As String
Dim RsDeci As Recordset
Dim Deci As Integer
On Error GoTo AssignDecimals_Error

    Set CnDb = New Connection
    Set CnDb = conn
    
    Spd.Row = 0
    Spd.Col = ColNo
    
    SqlStr = ""
    SqlStr = "Select IsNull(F.Decimals, 0) As Decimals "
    SqlStr = SqlStr & Chr(13) & " From PPC_Tables T"
    SqlStr = SqlStr & Chr(13) & " Inner Join PPC_Fields F On F.TableID = T.TableID "
    SqlStr = SqlStr & Chr(13) & " Where T.Table_Name = '" & Spd.Tag & "' And F.Field_Name = '" & Spd.ColID & "'"
    
    Set RsDeci = New Recordset
    RsDeci.Open SqlStr, CnDb, adOpenStatic, adLockReadOnly
    
    If Not RsDeci.EOF Then
        Spd.BlockMode = True
            Spd.Row = -1
            Spd.Row2 = -1
            Spd.Col = ColNo
            Spd.Col2 = ColNo
            
            If Spd.CellType = CellTypeCurrency Or Spd.CellType = CellTypeNumber Or Spd.CellType = CellTypePercent Then
                Spd.TypeNumberDecPlaces = val(RsDeci!Decimals)
            End If
        Spd.BlockMode = False
    End If

Exit Sub
AssignDecimals_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure AssignDecimals of Class Module ClsSpdGen", vbInformation, head
End Sub
Private Function GetLockedColsString() As String
Dim i As Integer
On Error GoTo GetLockedColsString_Error

    GetLockedColsString = ""

    For i = 1 To Spd.MaxCols
        Spd.Row = Spd.MaxRows
        Spd.Col = i
        
        If Spd.Lock = True Then
            GetLockedColsString = GetLockedColsString & i & ","
        End If
    Next i
    
    If Len(GetLockedColsString) > 0 Then
        GetLockedColsString = Mid(GetLockedColsString, 1, Len(GetLockedColsString) - 1)
    End If

Exit Function
GetLockedColsString_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GetLockedColsString of Class Module ClsSpdGen", vbInformation, head
End Function
Public Function GetColString(ColNo As Long, Optional SingleQuotesRequired As Boolean = True, Optional OmitRow As Long = 0) As String
Dim i As Integer
Dim ColStr As String
On Error GoTo GetColString_Error
ColStr = ""
With Spd
    For i = 1 To .MaxRows
        If i <> OmitRow Then
            .Row = i: .Col = ColNo
            If SingleQuotesRequired = True Then
                ColStr = ColStr & "'" & .Text & "',"
            Else
                ColStr = ColStr & .Text & ","
            End If
        End If
    Next i
    
    If Len(ColStr) > 0 Then
        ColStr = Mid(ColStr, 1, Len(ColStr) - 1)
    End If
End With
GetColString = ColStr
Exit Function
GetColString_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GetColString of Class Module ClsSpdGen", vbInformation, head
End Function
Public Function GetRowFromItemData(ItemData As Long, Optional SpdObj As fpSpread = Nothing) As Long
Dim Sprd As fpSpread
Dim i As Integer
On Error GoTo GetRowFromItemData_Error

If SpdObj Is Nothing Then
    Set Sprd = Spd
Else
    Set Sprd = SpdObj
End If

With Sprd
    For i = 1 To .MaxRows
        If val(ItemData) = val(.GetRowItemData(i)) Then
            GetRowFromItemData = val(i)
            Exit Function
        End If
    Next i
End With


Exit Function
GetRowFromItemData_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GetRowFromItemData of Class Module ClsSpdGen", vbInformation, head
End Function
Public Function GetRowItemDataCount(ItemData As Long, Optional SpdObj As fpSpread = Nothing) As Long
Dim Sprd As fpSpread
Dim i As Integer
Dim cnt As Long
On Error GoTo GetRowItemDataCount_Error
    
If SpdObj Is Nothing Then
    Set Sprd = Spd
Else
    Set Sprd = SpdObj
End If

cnt = 0

With Sprd
    For i = 1 To .MaxRows
        If val(ItemData) = val(.GetRowItemData(i)) Then
            cnt = cnt + 1
        End If
    Next i
End With
    
GetRowItemDataCount = cnt
Exit Function
GetRowItemDataCount_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GetRowItemDataCount of Class Module ClsSpdGen", vbInformation, head
End Function
Property Let Hirearchy(New_Hirearchy As Grid_Hierarchy_Type)
On Error GoTo Hirearchy_Error

    Hirearchy_Type = New_Hirearchy

Exit Property
Hirearchy_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Hirearchy of Class Module ClsSpdGen", vbInformation, head
End Property

Property Get Hirearchy() As Grid_Hierarchy_Type
On Error GoTo SpdAdditionalTag_Error

    Hirearchy = Hirearchy_Type

Exit Property
SpdAdditionalTag_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdAdditionalTag of Class Module ClsSpdGen", vbInformation, head
End Property
Public Sub Relation(ChildGridClass As ClsSpdGen, ParentColNo As Long, ChildColNo As Long)
Dim SqlParent As String
Dim SqlChild As String
On Error GoTo Relation_Error

    '*** ERROR CHECKINGS
    If Spd Is Nothing Then
        RaiseError "Must Assign the Grid Before proceeding Relations.", "00001"
        Exit Sub
    End If
    If conn Is Nothing Then
        RaiseError "Connection Requires to perform relation Operations.", "00002"
        Exit Sub
    End If
    If ParentColNo > Spd.MaxCols Then
        RaiseError "Specied Column Number Exceeded the actual columns Index in Parent Grid.", "00003"
        Exit Sub
    ElseIf ChildColNo > ChildGridClass.Spd.MaxCols Then
        RaiseError "Specied Column Number Exceeded the actual columns Index in Child Grid.", "00004"
        Exit Sub
    End If

    ChildClass = ChildGridClass
    HasChild = True
    
    Parent_Rel_ColNo = ParentColNo
    Child_Rel_ColNo = ChildColNo
    
    SqlParent = BuildSelectQry(conn, "1=2")
    SqlChild = ChildClass.BuildSelectQry(conn, "1=2")
    
    Set RsParent = New Recordset
    RsParent.CursorLocation = adUseClient
    RsParent.Open SqlParent, conn, adOpenStatic, adLockReadOnly
    Set RsParent.ActiveConnection = Nothing
    
    Set RsChild = New Recordset
    RsChild.CursorLocation = adUseClient
    RsChild.Open SqlChild, conn, adOpenStatic, adLockReadOnly
    Set RsChild.ActiveConnection = Nothing

Exit Sub
Relation_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Relation of Class Module ClsSpdGen", vbInformation, head
End Sub
Private Sub RaiseError(Optional ErrMsg As String = "", Optional ErrNumber As String = 0)
Dim ErrStr As String
On Error GoTo RaiseError_Error

    If ErrNumber <> "" Then
        ErrStr = "Err Number : " & ErrNumber & vbCrLf
    ElseIf val(err.Number) > 0 Then
        ErrStr = "Err Number : " & err.Number & vbCrLf
    End If
    
    If ErrMsg <> "" Then
        ErrStr = ErrStr & ErrMsg & vbCrLf
    ElseIf err.Description <> "" Then
        ErrStr = ErrStr & err.Description & vbCrLf
    End If
    
    MsgBox ErrStr, vbCritical, "ClsSpdGen"
    
    err.clear
    
Exit Sub
RaiseError_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure RaiseError of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Function AssignValidateCols(ParamArray ColNums() As Variant)
Dim i As Integer
Dim ColNos() As Integer
On Error GoTo AssignValidateCols_Error

    ValidateCols = ""
    
    If UBound(ColNums) < 0 Then
        For i = 1 To Spd.MaxCols
            ReDim Preserve ColNos(i - 1)
            ColNos(i - 1) = i
        Next i
    Else
        For i = 0 To UBound(ColNums())
            ReDim Preserve ColNos(i)
            ColNos(i) = ColNums(i)
        Next i
    End If
    
    For i = 0 To UBound(ColNos())
        ValidateCols = ValidateCols & ColNos(i) & ","
    Next i
    
    If Len(ValidateCols) > 0 Then
        ValidateCols = Mid(ValidateCols, 1, Len(ValidateCols) - 1)
    End If

Exit Function
AssignValidateCols_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure AssignValidateCols of Class Module ClsSpdGen", vbInformation, head
End Function

Public Function SpdIsValidRow(Optional sRow As Long = 0, Optional ChkAll As Boolean = True, Optional ChkAllRows As Boolean = False, Optional ChkColsStr As String) As Boolean
Dim i, J As Integer
Dim StartRow As Integer
Dim EndRow As Integer
Dim ChkCols  As Collection
On Error GoTo ErrPath

If ChkAllRows = True Then
    StartRow = 1: EndRow = Spd.MaxRows
End If

If ChkAllRows = False And sRow > 0 Then
    StartRow = sRow: EndRow = sRow
ElseIf ChkAllRows = False And sRow = 0 Then
    StartRow = Spd.MaxRows: EndRow = Spd.MaxRows
End If

For i = StartRow To EndRow

    If ChkAll = False And ChkColsStr = "" Then
        Split_String_Into_Collection ValidateCols, ChkCols
    Else
        Split_String_Into_Collection ChkColsStr, ChkCols
    End If

    If ChkAll = True Then
        Set ChkCols = New Collection
        For J = 1 To Spd.MaxCols
            ChkCols.ADD J
        Next J
    End If
    
    SpdIsValidRow = False
    Spd.Row = i
    For J = 1 To ChkCols.Count
        Spd.Col = CLng(ChkCols.item(J))
        If Spd.CellType = CellTypeEdit Or Spd.CellType = CellTypeStaticText Or CellTypeComboBox Then
            If Spd.Text = "" Then Exit Function
        ElseIf Spd.CellType = CellTypeCurrency Or Spd.CellType = CellTypeNumber Then
            If val(Spd.Text) = 0 Then Exit Function
        End If
    Next J
    
Next i

SpdIsValidRow = True
    
Exit Function
ErrPath:
    MsgBox err.Description
End Function
Public Sub AddRow()
On Error GoTo AddRow_Error

    If ValidateCols <> "" Then
        If SpdIsValidRow(Spd.MaxRows, False, , ValidateCols) = True Then
            Spd.MaxRows = Spd.MaxRows + 1
        End If
    Else
        If SpdIsValidRow(Spd.MaxRows, True) = True Then
            Spd.MaxRows = Spd.MaxRows + 1
        End If
    End If

Exit Sub
AddRow_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure AddRow of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Sub SpdDataSourceRS(ByRef RecSet As Recordset, Optional FillAdditionalTagAlso As Boolean = True)
Dim Rs As ADODB.Recordset
Dim Cn As ADODB.Connection
Dim i, J As Integer
On Error GoTo SpdDataSource_Error

'*** Connection
'Set Cn = New Connection
'Set Cn = Connnection_Object

'*** RecordSet
'Set Rs = New ADODB.Recordset
'Rs.CursorLocation = adUseClient
'Rs.Open Query, Cn, adOpenStatic, adLockReadOnly
'Set Rs.ActiveConnection = Nothing

Set Rs = New ADODB.Recordset
Set Rs = RecSet

'*** Data Fill Part
Spd.MaxRows = 0
If Not Rs.EOF Then
    While Not Rs.EOF
        Spd.MaxRows = Spd.MaxRows + 1
        For i = 0 To Rs.Fields.Count - 1
            For J = 1 To Spd.MaxCols
                Spd.Row = 0: Spd.Col = J
                
                If UCase(Spd.CellNote) = UCase(Rs.Fields(i).Name) Then
                    Spd.Row = Spd.MaxRows:  Spd.Col = J
                    
                    If Rs.Fields(i).Type = adCurrency Or Rs.Fields(i).Type = adDouble Or Rs.Fields(i).Type = adInteger Or Rs.Fields(i).Type = adNumeric Then
                        If Not IsNull(Rs.Fields(i).value) Then
                            Spd.Text = val(Rs.Fields(i).value)
                        Else
                            Spd.Text = 0
                        End If
                        
                    Else
                        If Not IsNull(Rs.Fields(i).value) Then
                            Spd.Text = Rs.Fields(i).value
                        Else
                            Spd.Text = 0
                        End If
                    End If
                End If
                
                If UCase(Spd.ColID) = UCase(Rs.Fields(i).Name) Then
                    
                    Spd.Row = Spd.MaxRows: Spd.Col = J
                                        
                    If Rs.Fields(i).Type = adCurrency Or Rs.Fields(i).Type = adDouble Or Rs.Fields(i).Type = adInteger Or Rs.Fields(i).Type = adNumeric Then
                        If Not IsNull(Rs.Fields(i).value) Then
                            Spd.CellTag = val(Rs.Fields(i).value)
                        Else
                            Spd.CellTag = 0
                        End If
                    Else
                        If Not IsNull(Rs.Fields(i).value) Then
                            Spd.CellTag = Rs.Fields(i).value
                        Else
                            Spd.CellTag = ""
                        End If
                    End If                  '* Field Type Check
                End If                  '* Field Name Check
            Next J                  '* Column Loop
            RaiseEvent AfterRowFill(CLng(val(Spd.MaxRows)))
        Next i                  '* Row Loop
        Rs.MoveNext         '* Record Set Move
    Wend                '* RecordSet Loop
End If              '* Eof Check
'*** *** *** *** ***

'*** Additional Tag Fill Part
If Save_AdditionalTag = True And FillAdditionalTagAlso = True Then
    Rs.Filter = adFilterNone
    If Not Rs.EOF Then
        If Not IsNull(Rs.Fields(AdditionalTag_Col_Name)) Then
            SpdAdditionalTag = Rs.Fields(AdditionalTag_Col_Name)
        End If
    Else
        SpdAdditionalTag = ""
    End If
End If
'*** *** *** *** ***

If Spd.MaxRows = 0 Then
    Spd.MaxRows = 1
End If

Exit Sub
SpdDataSource_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SpdDataSource of Class Module ClsSpdGen", vbInformation, head
End Sub
Public Function IsExistInTable(FieldName As String, TableName As String, Optional Cn As Connection = Nothing) As Boolean
Dim str As String
Dim Rs As Recordset
On Error GoTo IsExistInTable_Error

If Cn Is Nothing Then
    Set Cn = conn
End If

str = ""
str = str & Chr(13) & " Select O.Name As TableName, C.Name As FieldName"
str = str & Chr(13) & " From SysObjects O"
str = str & Chr(13) & " Inner Join SysColumns C On C.Id = O.Id"
str = str & Chr(13) & " Where O.Name = '" & TableName & "' And C.Name  = '" & FieldName & "'"

Set Rs = New Recordset
Rs.Open str, Cn, adOpenStatic, adLockReadOnly

If Not Rs.EOF Then
    IsExistInTable = True
Else
    IsExistInTable = False
End If

Exit Function
IsExistInTable_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure IsExistInTable of Class Module ClsSpdGen", vbInformation, head
End Function
Property Let EnableShadowHighLight(New_EnableShadowHighLight As Boolean)
On Error GoTo EnableShadowHighLight_Error

    IsShadowHighLight = New_EnableShadowHighLight
    
    If IsShadowHighLight = False Then
        SPD_HEADER_HLIGHT_COLOR = SPD_HEADER_COLOR
    Else
        SPD_HEADER_HLIGHT_COLOR = &H80000010
    End If

Exit Property
EnableShadowHighLight_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure EnableShadowHighLight of Class Module ClsSpdGen", vbInformation, head
End Property

Property Get EnableShadowHighLight() As Boolean
On Error GoTo EnableShadowHighLight_Error

    EnableShadowHighLight = IsShadowHighLight


Exit Property
EnableShadowHighLight_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure EnableShadowHighLight of Class Module ClsSpdGen", vbInformation, head
End Property

