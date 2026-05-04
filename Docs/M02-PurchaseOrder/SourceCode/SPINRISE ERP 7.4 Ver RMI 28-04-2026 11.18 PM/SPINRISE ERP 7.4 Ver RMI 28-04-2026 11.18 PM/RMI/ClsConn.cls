VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ClsConn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'******************************************
'DEVELOPED BY N.SOUNDARA RAJAN
'ON BEHALF OF KALPATHARU SOFTWARE SOLUTIONS
'******************************************
Public WithEvents Connection_Object As ADODB.Connection
Attribute Connection_Object.VB_VarHelpID = -1

Public Enum QueryType
    Qry_Select
    Qry_Insert
    Qry_Update
    Qry_Delete
End Enum

Private Enum SQLDataTypeEnum
    Dtype_bigint = 127
    Dtype_Binary = 173
    Dtype_Bit = 104
    Dtype_Char = 175
    Dtype_DateTime = 61
    Dtype_decimal = 106
    Dtype_Float = 62
    Dtype_Image = 34
    Dtype_int = 56
    Dtype_Money = 60
    Dtype_nchar = 239
    Dtype_ntext = 99
    Dtype_Numeric = 108
    Dtype_nvarchar = 231
    Dtype_Real = 59
    Dtype_smalldatetime = 58
    Dtype_SmallInt = 52
    Dtype_smallmoney = 122
    Dtype_sql_variant = 98
    Dtype_sysname = 231
    Dtype_Text = 35
    Dtype_TimeStamp = 189
    Dtype_tinyint = 48
    Dtype_uniqueidentifier = 36
    Dtype_VarBinary = 165
    Dtype_VarChar = 167
End Enum

'**** Local Variables ***'
Dim TransCommited As Boolean
Dim TransBegined As Boolean

Private Type Field_Props
    Ctrl_Obj As Object
    Save_Fld As String
    Disp_Fld As String
    Save_Req As Boolean
End Type

Private Type Table_Props
    Table   As String
    Field() As Field_Props
End Type

Dim Tbl As Table_Props

Public Enum TransType
    T_Insert
    T_Update
    T_Delete
    T_Nothing
End Enum
Public Current_Trans_Type As TransType

Public Property Get TransCompleted() As Boolean
On Error GoTo Saved_Error
 intervalMinutes = -1
    TransCompleted = TransCommited

Exit Property
Saved_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Saved of Class Module ClsConn", vbInformation, head
End Property

Public Sub ConnOpen(ByRef ConnObj As ADODB.Connection, Optional ConnString As String, Optional CursorLocation As CursorLocationEnum)

On Error GoTo ConnOpen_Error

If ConnString = "" Then
    ConnString = connectstring
End If

If val(CursorLocation) = 0 Then
    CursorLocation = adUseClient
End If

Set ConnObj = New ADODB.Connection
ConnObj.CursorLocation = CursorLocation
ConnObj.ConnectionString = ConnString
ConnObj.Open
 intervalMinutes = -1
Exit Sub
ConnOpen_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ConnOpen of Class Module ClsConn", vbInformation, head
End Sub

Private Sub Class_Initialize()
On Error GoTo Class_Initialize_Error

    Set Connection_Object = New ADODB.Connection
    Connection_Object.CursorLocation = adUseClient
    Connection_Object.Open connectstring
     intervalMinutes = -1
Exit Sub
Class_Initialize_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Class_Initialize of Class Module ClsConn", vbInformation, head
End Sub

Private Sub Connection_Object_BeginTransComplete(ByVal TransactionLevel As Long, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pConnection As ADODB.Connection)
On Error GoTo Conn_BeginTransComplete_Error

    TransCommited = False
    TransBegined = True

Exit Sub
Conn_BeginTransComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Conn_BeginTransComplete of Class Module ClsConn", vbInformation, head
End Sub

Private Sub Connection_Object_CommitTransComplete(ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pConnection As ADODB.Connection)
On Error GoTo Conn_CommitTransComplete_Error

    TransCommited = True
    TransBegined = False
    
    If Current_Trans_Type = T_Insert Then
        MsgBox "Record(s) Saved Sucessfully.", vbInformation, "Kalsofte"
        Exit Sub
    ElseIf Current_Trans_Type = T_Update Then
        MsgBox "Record(s) Updated Sucessfully.", vbInformation, "Kalsofte"
        Exit Sub
    ElseIf Current_Trans_Type = T_Delete Then
        MsgBox "Record(s) Deleted Sucessfully.", vbInformation, "Kalsofte"
        Exit Sub
    End If
 intervalMinutes = -1
Exit Sub
Conn_CommitTransComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Conn_CommitTransComplete of Class Module ClsConn", vbInformation, head
End Sub

Private Sub Connection_Object_WillExecute(Source As String, CursorType As ADODB.CursorTypeEnum, LockType As ADODB.LockTypeEnum, Options As Long, adStatus As ADODB.EventStatusEnum, ByVal pCommand As ADODB.Command, ByVal pRecordset As ADODB.Recordset, ByVal pConnection As ADODB.Connection)
Dim TmpTransSrc As String
Dim TmpStr As String
On Error GoTo Conn_WillExecute_Error

 intervalMinutes = -1
TmpTransSrc = Trim(Source)
TmpStr = Mid(TmpTransSrc, 1, 6)

If UCase(TmpStr) = "INSERT" Then
    Current_Trans_Type = T_Insert
ElseIf UCase(TmpStr) = "UPDATE" Then
    Current_Trans_Type = T_Update
ElseIf UCase(TmpStr) = "DELETE" Then
    Current_Trans_Type = T_Delete
Else
    'Current_Trans_Type = T_Nothing
    Current_Trans_Type = Current_Trans_Type
End If

Exit Sub
Conn_WillExecute_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Conn_WillExecute of Class Module ClsConn", vbInformation, head
End Sub
Public Sub Insert(TableName As String, Values As String, Optional Column_Names As String = "", Optional ByRef Identity_Variable As Integer = 0)
Dim Insert_String As String
Dim Select_String As String
Dim RsTmp As Recordset
Dim Rs As Recordset
Dim Identity_Field_Names As String
Dim i As Integer
On Error GoTo Insert_Error

If Column_Names = "" Then
    
    '*** Getting Identity Column Names in the Given Table
    Set Rs = New Recordset
    Rs.Open "Select C.Name,  C.AutoVal " & _
        " From SysObjects S " & _
        " Inner Join SysColumns C On C.Id = S.ID " & _
        " Where S.Name = '" & TableName & "' And C.AutoVal is Not Null   " & _
        " Order By C.ColID ", Connection_Object, adOpenStatic, adLockReadOnly
    
    Identity_Field_Names = ""
    
    If Not Rs.EOF Then
        While Not Rs.EOF
            Identity_Field_Names = Identity_Field_Names & "'" & Rs.Fields(0).value & "',"
            Rs.MoveNext
        Wend
        
        Identity_Field_Names = Mid(Identity_Field_Names, 1, Len(Identity_Field_Names) - 1)
    End If
    
    Select_String = ""
    Select_String = Select_String & Chr(13) & " select C.Name  As Field_Name"
    Select_String = Select_String & Chr(13) & " From SysObjects S"
    Select_String = Select_String & Chr(13) & " Inner Join SysColumns C On C.Id = S.ID"
    Select_String = Select_String & Chr(13) & " Where S.Name = '" & TableName & "'"
    
    If Identity_Field_Names <> "" Then
        Select_String = Select_String & Chr(13) & " And C.Name Not In (" & Identity_Field_Names & ")"
    End If
    
    Select_String = Select_String & Chr(13) & " Order By C.ColID"
    
    Set Rs = New Recordset
    Rs.Open Select_String, Connection_Object, adOpenStatic, adLockReadOnly
    
    '*** Building Column Names
    If Not Rs.EOF Then
        While Not Rs.EOF
            Column_Names = Column_Names & Rs.Fields("Field_Name") & ","
            Rs.MoveNext
        Wend
    End If
    
    Column_Names = Mid(Column_Names, 1, Len(Column_Names) - 1)
End If

Insert_String = "Insert Into " & TableName & " (" & Column_Names & ") Values (" & Values & ")"
Connection_Object.Execute Insert_String

Set RsTmp = New ADODB.Recordset
RsTmp.Open "Select Ident_Current('" & TableName & "') As NxtID", Connection_Object, adOpenStatic, adLockReadOnly

If Not IsMissing(Identity_Variable) Then
    Identity_Variable = val(RsTmp!NxtID)
End If

Exit Sub
Insert_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Insert of Class Module ClsConn", vbInformation, head
End Sub
Public Sub Delete(Optional TableName As String = "", Optional WhereCondition As String = "")
Dim Delete_String As String
Dim Select_String As String
Dim Select_Parent As String
Dim Rs As Recordset
Dim RsParent As Recordset
On Error GoTo Delete_Error

If TableName = "" Then
    TableName = Tbl.Table
End If

If WhereCondition <> "" Then
    WhereCondition = " Where " & WhereCondition
Else
    WhereCondition = ""
End If

'*** Getting The Related Tables List
Select_String = ""
Select_String = Select_String & Chr(13) & " Select Distinct ChildTable, ChildColumn, ParentTable, ParentColumn"
Select_String = Select_String & Chr(13) & " From  ("
Select_String = Select_String & Chr(13) & " Select"
Select_String = Select_String & Chr(13) & " Upper(T.Name) ChildTable , Upper(C.Name) ChildColumn ,"
Select_String = Select_String & Chr(13) & " IsNull(Upper(Tr.Name),'') ParentTable, IsNull(Upper(Cr.Name),'') ParentColumn"
Select_String = Select_String & Chr(13) & " From sysobjects T"
Select_String = Select_String & Chr(13) & " Inner Join SysColumns C on T.Id = C.Id"
Select_String = Select_String & Chr(13) & " Inner Join Sysforeignkeys K on K.Fkeyid= T.Id and K.fkey = C.ColId"
Select_String = Select_String & Chr(13) & " Inner Join SysColumns Cr on Cr.Id = K.RkeyId and K.Rkey = Cr.ColId"
Select_String = Select_String & Chr(13) & " Inner Join sysobjects Tr on Tr.Id = Cr.Id"
Select_String = Select_String & Chr(13) & " ) a"
Select_String = Select_String & Chr(13) & " where ParentTable = '" & TableName & "'"

Set Rs = New Recordset
Rs.Open Select_String, Connection_Object, adOpenStatic, adLockReadOnly

If Not Rs.EOF Then
    While Not Rs.EOF
    
        '*** Value From The Table To Delete In Child
        Select_Parent = "Select " & Rs!ParentColumn & " From " & Rs!ParentTable & WhereCondition
        Set RsParent = New ADODB.Recordset
        RsParent.Open Select_Parent, Connection_Object, adOpenStatic, adLockReadOnly
        
        If Not RsParent.EOF Then
            While Not RsParent.EOF
            
                '*** Delete String For The Child Table
                'Delete_String = "Delete " & Rs!Childtable & " Where " & Rs!ChildColumn & " = " & RsParent.Fields(0).Value
                'Connection_Object.Execute Delete_String
                
                Delete Rs!Childtable, Rs!ChildColumn & " = " & RsParent.Fields(0).value
                
                RsParent.MoveNext
                                
            Wend
        End If
        Rs.MoveNext
    Wend
End If

'*** Delete Statement
Delete_String = "Delete From " & TableName & WhereCondition
Connection_Object.Execute Delete_String

Current_Trans_Type = T_Delete

Exit Sub
Delete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Delete of Class Module ClsConn", vbInformation, head
End Sub
Public Sub FillCombo(ByRef Combo_Box As ComboBox, query As String, Optional Fill_Field As String = "", Optional Conn_Obj As Connection = Nothing)
Dim RsCmb As Recordset
Dim Fld_Name As String
Dim SqlQry As String
Dim Connection As Connection
On Error GoTo FillCombo_Error

    '*** Connection
    Set Connection = New Connection
    
    If Conn_Obj Is Nothing Then
        Set Connection = Connection_Object
    Else
        Set Connection = Conn_Obj
    End If
    
    '*** Query
    SqlQry = query
    
    Set RsCmb = New Recordset
    RsCmb.Open SqlQry, Connection, adOpenStatic, adLockReadOnly
    
    '*** Field
    If Fill_Field <> "" Then
        Fld_Name = Fill_Field
    Else
        Fld_Name = RsCmb.Fields(0).Name
    End If
    
    Combo_Box.clear
    If Not RsCmb.EOF Then
        While Not RsCmb.EOF
        
            Combo_Box.AddItem RsCmb.Fields(Fld_Name)
            
            RsCmb.MoveNext
        Wend
    End If
    
    If Combo_Box.ListCount > 0 Then
        Combo_Box.ListIndex = 0
    End If

Exit Sub
FillCombo_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FillCombo of Class Module ClsConn", vbInformation, head
End Sub
Public Sub SetConn(Conn_Obj As ADODB.Connection)
On Error GoTo SetConn_Error

    Set Connection_Object = New Connection
    Set Connection_Object = Conn_Obj
    
Exit Sub
SetConn_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetConn of Class Module ClsConn", vbInformation, head
End Sub
Public Sub SetTable(Table_Name As String)
On Error GoTo SetTable_Error

    Tbl.Table = Table_Name
    
    ReDim Preserve Tbl.Field(0)

Exit Sub
SetTable_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetTable of Class Module ClsConn", vbInformation, head
End Sub
Public Sub SetCols(Control As Object, Save_Column_Name As String, Optional Display_Column_Name As String = "", Optional Save As Boolean = True)
On Error GoTo SetCols_Error

If Display_Column_Name = "" Then Display_Column_Name = Save_Column_Name

If UBound(Tbl.Field()) = 0 And Tbl.Field(0).Save_Fld <> "" Then
    ReDim Preserve Tbl.Field(UBound(Tbl.Field()) + 1)
ElseIf UBound(Tbl.Field()) > 0 Then
    ReDim Preserve Tbl.Field(UBound(Tbl.Field()) + 1)
End If

With Tbl.Field(UBound(Tbl.Field))
    Set .Ctrl_Obj = Control
    .Disp_Fld = Display_Column_Name
    .Save_Fld = Save_Column_Name
    .Save_Req = Save
End With

Exit Sub
SetCols_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetCols of Class Module ClsConn", vbInformation, head
End Sub
Public Sub FillData(Optional Condition As String = "")
Dim query As String
Dim Rs As Recordset
Dim i As Integer
On Error GoTo FillData_Error

query = BuildSelectQry(Condition)

Set Rs = New Recordset
Rs.Open query, Connection_Object, adOpenStatic, adLockReadOnly

If Not Rs.EOF Then
    For i = 0 To UBound(Tbl.Field)
    
        If TypeOf Tbl.Field(i).Ctrl_Obj Is TextBox Then
            Tbl.Field(i).Ctrl_Obj.Text = Rs.Fields(Tbl.Field(i).Disp_Fld)
            
        ElseIf TypeOf Tbl.Field(i).Ctrl_Obj Is Label Then
            Tbl.Field(i).Ctrl_Obj.Caption = Rs.Fields(Tbl.Field(i).Disp_Fld)
            
        ElseIf TypeOf Tbl.Field(i).Ctrl_Obj Is DTPicker Then
            Tbl.Field(i).Ctrl_Obj.value = Rs.Fields(Tbl.Field(i).Disp_Fld)
            
        Else
            Tbl.Field(i).Ctrl_Obj.Text = Rs.Fields(Tbl.Field(i).Disp_Fld)
        End If
        
    Next i
End If

Exit Sub
FillData_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FillData of Class Module ClsConn", vbInformation, head
End Sub
Public Function BuildQuery(QryType As QueryType, Optional WhereCondition As String) As String
Dim i As Integer
On Error GoTo BuildQuery_Error

BuildQuery = ""

If QryType = Qry_Select Then
    BuildQuery = BuildSelectQry(WhereCondition)
ElseIf QryType = Qry_Insert Then
    BuildQuery = BuildInsertQry()
End If

Exit Function
BuildQuery_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BuildQuery of Class Module ClsConn", vbInformation, head
End Function
Public Sub SaveData(Optional ByRef Identity_Variable As Integer = 0)
Dim query As String
Dim RsTmp As Recordset
On Error GoTo SaveData_Error

    query = BuildInsertQry
    Connection_Object.Execute query
    
    Set RsTmp = New ADODB.Recordset
    RsTmp.Open "Select Ident_Current('" & Tbl.Table & "') As NxtID", Connection_Object, adOpenStatic, adLockReadOnly
    
    If Not IsMissing(Identity_Variable) Then
        Identity_Variable = val(RsTmp!NxtID)
    End If

Exit Sub
SaveData_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SaveData of Form frmPara", vbInformation, head
End Sub

Private Function BuildInsertQry() As String

Dim Identity_Field_Names As String

Dim Insert_String  As String
Dim Select_String As String
Dim Values_String As String

Dim Column_Names As String
Dim Table_Name As String

Dim Rs As Recordset
Dim i As Integer
On Error GoTo BuildInsertQry_Error
    
    Table_Name = Tbl.Table
    
    '*** Getting Identity Column Names in the Given Table
    Set Rs = New Recordset
    Rs.Open "Select C.Name, C.AutoVal " & _
        " From SysObjects S " & _
        " Inner Join SysColumns C On C.Id = S.ID " & _
        " Where S.Name = '" & Table_Name & "' And C.AutoVal is Not Null   " & _
        " Order By C.ColID ", Connection_Object, adOpenStatic, adLockReadOnly
    
    Identity_Field_Names = ""
    
    If Not Rs.EOF Then
        While Not Rs.EOF
            Identity_Field_Names = Identity_Field_Names & "'" & Rs.Fields(0).value & "',"
            Rs.MoveNext
        Wend
        
        Identity_Field_Names = Mid(Identity_Field_Names, 1, Len(Identity_Field_Names) - 1)
    End If
    
    Select_String = ""
    Select_String = Select_String & Chr(13) & " select C.Name  As Field_Name, C.XType"
    Select_String = Select_String & Chr(13) & " From SysObjects S"
    Select_String = Select_String & Chr(13) & " Inner Join SysColumns C On C.Id = S.ID"
    Select_String = Select_String & Chr(13) & " Where S.Name = '" & Table_Name & "'"
    If Identity_Field_Names <> "" Then
        Select_String = Select_String & Chr(13) & " And C.Name Not In (" & Identity_Field_Names & ")"
    End If
    Select_String = Select_String & Chr(13) & " Order By C.ColID"
    
    
    Set Rs = New Recordset
    Rs.Open Select_String, Connection_Object, adOpenStatic, adLockReadOnly
    
    '*** Building Column Names
    If Not Rs.EOF Then
        While Not Rs.EOF
            For i = 0 To UBound(Tbl.Field)
                If Tbl.Field(i).Save_Fld = Rs.Fields("Field_Name") And Tbl.Field(i).Save_Req = True Then
                    Column_Names = Column_Names & Rs.Fields("Field_Name") & ","
                    
                    If Rs.Fields("XType") = Dtype_VarChar Then
                        Values_String = Values_String & "'" & GetControlValue(Tbl.Field(i).Ctrl_Obj) & "',"
                    
                    ElseIf Rs.Fields("XType") = Dtype_DateTime Then
                        Values_String = Values_String & "'" & GetControlValue(Tbl.Field(i).Ctrl_Obj) & "',"
                        
                    ElseIf Rs.Fields("XType") = Dtype_int Or Rs.Fields("XType") = Dtype_Money Or Rs.Fields("XType") = Dtype_Numeric Or Rs.Fields("XType") = Dtype_SmallInt Or Rs.Fields("XType") = Dtype_smallmoney Then
                        Values_String = Values_String & val(GetControlValue(Tbl.Field(i).Ctrl_Obj)) & ","
                    End If
                    
                    Exit For
                    
                End If
            Next i
            Rs.MoveNext
        Wend
    End If
    
    Column_Names = Mid(Column_Names, 1, Len(Column_Names) - 1)
    Values_String = Mid(Values_String, 1, Len(Values_String) - 1)


Insert_String = "Insert Into " & Table_Name & " (" & Column_Names & ") Values (" & Values_String & ")"

BuildInsertQry = Insert_String

Exit Function
BuildInsertQry_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BuildInsertQry of Class Module ClsConn", vbInformation, head
End Function
Private Function BuildSelectQry(Optional WhereCondition As String = "") As String
Dim RsParent As Recordset
Dim SqlParent As String
Dim Select_String As String
Dim Table_String As String
Dim Where_String As String
Dim i As Integer
On Error GoTo BuildSelectQry_Error

Select_String = ""
Table_String = vbCrLf & "From " & Tbl.Table

If WhereCondition <> "" Then
    Where_String = vbCrLf & "Where " & WhereCondition
End If

For i = 0 To UBound(Tbl.Field())

    If Tbl.Field(i).Save_Fld = Tbl.Field(i).Disp_Fld Then
        Select_String = Select_String & vbCrLf & Tbl.Table & "." & Tbl.Field(i).Disp_Fld & ", "
    ElseIf Tbl.Field(i).Save_Fld <> Tbl.Field(i).Disp_Fld Then
    
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
        SqlParent = SqlParent & Chr(13) & " where ChildTable = '" & Tbl.Table & "'"
        SqlParent = SqlParent & Chr(13) & " And ChildColumn = '" & Tbl.Field(i).Save_Fld & "'"

        Set RsParent = New Recordset
        RsParent.Open SqlParent, Connection_Object, adOpenStatic, adLockReadOnly
        
        If Not RsParent.EOF Then
            While Not RsParent.EOF
                Select_String = Select_String & vbCrLf & Tbl.Table & "." & Tbl.Field(i).Save_Fld & ", "
                Select_String = Select_String & vbCrLf & RsParent!ParentTable & "." & Tbl.Field(i).Disp_Fld & ", "
                
                Table_String = Table_String & vbCrLf & " Inner Join " & RsParent!ParentTable & " On " & RsParent!ParentTable & "." & RsParent!ParentColumn & " = " & RsParent!Childtable & "." & RsParent!ChildColumn
                
                RsParent.MoveNext
            Wend
        Else
            Select_String = Select_String & Tbl.Table & "." & Tbl.Field(i).Save_Fld & ", "
        End If
    End If
Next i

If Len(Select_String) > 0 Then
    Select_String = Mid(Select_String, 1, Len(Select_String) - 2)
    Select_String = "Select " & Select_String
Else
    MsgBox "No Columns Defined.", vbInformation, "Kalsofte."
End If

BuildSelectQry = Select_String & Table_String & Where_String
Exit Function

Exit Function
BuildSelectQry_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BuildSelectQry of Class Module ClsConn", vbInformation, head
End Function
Private Function GetControlValue(Control_Obj As Object)
On Error GoTo GetControlValue_Error

    If TypeOf Control_Obj Is TextBox Then
        GetControlValue = Control_Obj.Text
    ElseIf TypeOf Control_Obj Is Label Then
        GetControlValue = Control_Obj.Caption
    ElseIf TypeOf Control_Obj Is DTPicker Then
        GetControlValue = Format(Control_Obj.value, "yyyy-MM-dd")
    Else
        GetControlValue = Control_Obj.Text
    End If

Exit Function
GetControlValue_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetControlValue of Class Module ClsConn", vbInformation, head
End Function
Public Function RecSetOpen(qry As String, ByRef RecSet As Recordset, Optional OpenTech As CursorTypeEnum = adOpenStatic, Optional LockTech As LockTypeEnum = adLockReadOnly, Optional cn As Connection = Nothing) As Boolean
Dim IsEof As Boolean
On Error GoTo RecSetOpen_Error

    If cn Is Nothing Then
        Set cn = Connection_Object
    End If

    Set RecSet = New Recordset
    RecSet.Open qry, cn, OpenTech, LockTech
    
    If RecSet.EOF Then
        IsEof = True
    Else
        IsEof = False
    End If
    
    RecSetOpen = IsEof
    
Exit Function
RecSetOpen_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RecSetOpen of Class Module ClsConn", vbInformation, head
End Function
