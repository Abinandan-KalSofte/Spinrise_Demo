Attribute VB_Name = "NewModule"
Sub CmbLoadData(recsource, cod, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, dt, cb1 As Object, cb2 As Object)
    '''From To option
    dt.ConnectionString = connectstring
    dt.RecordSource = "select Distinct " & codname & "+' --- '+" & cod & "  FLD," & cod & " from " & recsource & " order by 2 "
    dt.Refresh
    LB1.Caption = lbcp1
    LB2.Caption = lbcp2
    WindowState = 2
    Set cb1.RowSource = dt
    Set cb2.RowSource = dt
    cb1.ListField = "FLD"
    cb2.ListField = "FLD"
    If Not dt.Recordset.BOF Then
        dt.Recordset.MoveFirst
        cb1.Text = dt.Recordset(0)
        dt.Recordset.MoveLast
        cb2.Text = dt.Recordset(0)
    End If

End Sub
Sub CmbLoadDataSingleField(recsource, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, dt, cb1 As Object, cb2 As Object)
    '''From To option
    dt.ConnectionString = connectstring
    dt.RecordSource = "select Distinct " & codname & "  FLD from " & recsource & " order by 1 "
    dt.Refresh
    LB1.Caption = lbcp1
    LB2.Caption = lbcp2
    WindowState = 2
    Set cb1.RowSource = dt
    Set cb2.RowSource = dt
    cb1.ListField = "FLD"
    cb2.ListField = "FLD"
    If Not dt.Recordset.BOF Then
        dt.Recordset.MoveFirst
        cb1.Text = dt.Recordset(0)
        dt.Recordset.MoveLast
        cb2.Text = dt.Recordset(0)
    Else
        MsgBox "No Record(s) Found", vbInformation, head
        cb1.Text = ""
        cb2.Text = ""
        Exit Sub
    End If

End Sub
Sub CmbLoadDataSingleCmb(recsource, cod, codname, lbcp1, LB1 As Object, dt, cb1 As Object)
'''From To option
On Error Resume Next
dt.ConnectionString = connectstring
dt.RecordSource = "select Distinct " & codname & "+' --- '+" & cod & "  FLD," & cod & " from " & recsource & " order by 2 "

LB1.Caption = lbcp1
WindowState = 2
Set cb1.RowSource = dt
cb1.ListField = "FLD"
If Not dt.Recordset.BOF Then
  dt.Recordset.MoveFirst
  cb1.Text = dt.Recordset(0)
End If
End Sub

Public Function CryClear()
    CrySelectionFormula = ""
    CryReportTitle = ""
    CryParaTotal = 0
    FrmRpt.PVFile = ""
        
End Function

