Attribute VB_Name = "ModuleFunctionKeys"
Dim fkeycon As Connection
Dim fkeyrs As Recordset
Dim ls_Form As String
   
Public Function showForm4FunctionKey(asFunctionKey As String)
        
    Set fkeycon = New Connection
    fkeycon.CursorLocation = adUseClient
    fkeycon.Open "PROVIDER=MSDataShape;" + connectstring
    Set fkeyrs = New Recordset
    fkeyrs.Open "select Formname from pp_functionkeys where divcode = '" & Divcode & "' and functionkey = '" & asFunctionKey & "' and ModuleNo = " & ModuleNo, fkeycon
    ls_Form = ""
    If fkeyrs.RecordCount > 0 Then
        ls_Form = UCase(fkeyrs(0))
    End If
    If Not fkeyrs.EOF Then
        fkeyrs.MoveFirst
        ls_Form = UCase(fkeyrs(0))
    End If
    
    Select Case ls_Form
    
        Case ""
            Exit Function

    End Select
    
End Function
