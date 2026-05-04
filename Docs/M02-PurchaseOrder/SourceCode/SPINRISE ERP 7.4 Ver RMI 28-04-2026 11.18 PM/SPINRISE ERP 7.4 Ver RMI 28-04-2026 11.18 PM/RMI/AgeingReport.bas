Attribute VB_Name = "AgeingReport"
Dim Rs As New Recordset
Dim rstQry As New Recordset
Dim rstQry1 As New Recordset
Dim rstQry2 As New Recordset
Dim a As Integer
Dim iInd As Integer
Dim db As New Connection
Dim pgcnt As Integer
Dim lncnt As Integer
Dim rptv As New ReportView
Dim strSQL As String

Public Sub Customized_Ageing_Countwise(U As String, userFooter As String)
    
    Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12 As Double
    Dim valtot As Double
    Dim Baltot As Double
    Dim dtFromDate As String
    Dim dtToDate As String
    Dim dtITDate As String
    valtot = 0
    Baltot = 0
    iInd = 1
    tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0


    dtFromDate = ""
    dtToDate = ""
    Set db = New Connection
    db.Open "Provider=msdatashape;" & connectstring

    Set Rs = New Recordset
    Rs.Open "Select * from sysobjects where name='RMI_Temp_AgeingReport'", db, adOpenStatic, adLockReadOnly

    If Rs.RecordCount > 0 Then
       db.Execute "Drop table RMI_Temp_AgeingReport"
    End If
    db.Execute "Create table RMI_Temp_AgeingReport(Variety varchar(50) null,Bales1 numeric(12,0) null,Value1 numeric(15,3) null,Bales2 numeric(12,0) null,Value2 numeric(15,3) null,Bales3 numeric(12,0) null,Value3 numeric(15,3) null,Bales4 numeric(12,0) null,Value4 numeric(15,3) null,Bales5 numeric(12,0) null,Value5 numeric(15,3) null,Bales6 numeric(12,0) null,Value6 numeric(15,3) null)"

    Set rstQry = New Recordset
    rstQry.Open "select Varcode from rm_var", db, adOpenStatic

    Do While Not rstQry.EOF
        db.Execute "Insert into RMI_Temp_AgeingReport (Variety) values ('" & rstQry("Varcode") & "')"
        rstQry.MoveNext
    Loop

    '1st Period
    dtFromDate = Format(DateAdd("d", -90, U), "yyyy-mm-dd")
    dtToDate = Format(DateAdd("d", -0, U), "yyyy-mm-dd")
    dtITDate = Format(DateAdd("d", -0, U), "yyyy-mm-dd")

    strSQL = gStockStatement_Age(dtFromDate, dtToDate, dtITDate, False, U)
    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly

    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeingReport set Bales1 =" & (Rs(1)) & " , value1 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop

    '2nd Period

    dtFromDate = Format(DateAdd("d", -180, U), "yyyy-mm-dd")
    dtToDate = Format(DateAdd("d", -91, U), "yyyy-mm-dd")

    strSQL = gStockStatement_Age(dtFromDate, dtToDate, dtITDate, False, U)

    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly

    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeingReport set Bales2 =" & (Rs(1)) & " , value2 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop

    '3rd Period
    dtFromDate = Format(DateAdd("d", -270, U), "yyyy-mm-dd")
    dtToDate = Format(DateAdd("d", -181, U), "yyyy-mm-dd")

    strSQL = gStockStatement_Age(dtFromDate, dtToDate, dtITDate, False, U)

    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly

    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeingReport set Bales3 =" & (Rs(1)) & " , value3 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop

     '4th Period
    dtFromDate = Format(DateAdd("d", -365, U), "yyyy-mm-dd")
    dtToDate = Format(DateAdd("d", -271, U), "yyyy-mm-dd")
    strSQL = gStockStatement_Age(dtFromDate, dtToDate, dtITDate, False, U)


    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly

    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeingReport set Bales4 =" & (Rs(1)) & " , value4 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop

    '5th Period
    dtFromDate = Format(DateAdd("d", -366, U), "yyyy-mm-dd")
    dtToDate = Format(DateAdd("d", -366, U), "yyyy-mm-dd")
    strSQL = gStockStatement_Age(dtFromDate, dtToDate, dtITDate, True, U)

    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly

    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeingReport set Bales5 =" & (Rs(1)) & " , value5 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop

    strSQL = ""
    strSQL = strSQL + Chr(13) + " SELECT a.variety,ISNULL(bales1,0) AS b1,ISNULL(value1,0) AS v1,ISNULL(bales2,0) AS b2,ISNULL(value2,0) AS v2,"
    strSQL = strSQL + Chr(13) + " ISNULL(bales3,0) AS b3,ISNULL(value3,0) AS v3,ISNULL(bales4,0) AS b4,ISNULL(value4,0) AS v4,ISNULL(bales5,0) AS b5,"
    strSQL = strSQL + Chr(13) + " ISNULL(value5,0) AS v5, ISNULL(bales1,0) +ISNULL(bales2,0)+ISNULL(bales3,0)+ISNULL(bales4,0)+ISNULL(bales5,0) AS b6,"
    strSQL = strSQL + Chr(13) + " ISNULL(value1,0) +ISNULL(value2,0)+ISNULL(value3,0)+ISNULL(value4,0)+ISNULL(value5,0) AS v6"
    strSQL = strSQL + Chr(13) + " FROM RMI_Temp_AgeingReport a where ISNULL(bales1,0) +ISNULL(bales2,0)+ISNULL(bales3,0)+ISNULL(bales4,0)+ISNULL(bales5,0) > 0"


    Set rstQry1 = New Recordset
    rstQry1.Open strSQL, db, adOpenStatic



    If rstQry1.EOF Then
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If

    Set rptv = New ReportView
    Close #a
    a = FreeFile

    pgcnt = 1
    lncnt = 0

    Open "d:\CWS_Ageing.txt" For Output As #a

    Call CWS_Ageing_Head(U, pgcnt)

    Do While Not rstQry1.EOF
        If lncnt > PageLen Then
            pgcnt = pgcnt + 1
            Print #a, Space(6) + String(151, "-")
            Print #a, Chr(12)

            Call CWS_Ageing_Head(U, pgcnt)
        End If


        Print #a, Space(6) + Padr(rstQry1("variety"), 8, " ") + Space(1) + Padl(rstQry1("b1"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v1"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b2"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v2"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b3"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v3"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b4"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v4"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b5"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v5"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b6"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v6"), 2), "0.00"), 13, " ")
        lncnt = lncnt + 1

       tot1 = tot1 + rstQry1("b1")
       tot2 = tot2 + rstQry1("b2")
       tot3 = tot3 + rstQry1("b3")
       tot4 = tot4 + rstQry1("b4")
       tot5 = tot5 + rstQry1("b5")
       tot6 = tot6 + rstQry1("b6")
       tot7 = tot7 + Round(rstQry1("v1"), 2)
       tot8 = tot8 + Round(rstQry1("v2"), 2)
       tot9 = tot9 + Round(rstQry1("v3"), 2)
       tot10 = tot10 + Round(rstQry1("v4"), 2)
       tot11 = tot11 + Round(rstQry1("v5"), 2)
       tot12 = tot12 + Round(rstQry1("v6"), 2)


       rstQry1.MoveNext
    Loop

    If lncnt > PageLen Then
        pgcnt = pgcnt + 1
        Print #a, Space(2) + String(146, "-")
        Print #a, Chr(12)

        Call CWS_Ageing_Head(U, pgcnt)
    End If

    Print #a, Space(6) + String(151, "-")
    Print #a, Space(6) + Padr("Total", 8, " ") + Space(1) + Padl(tot1, 6, " ") + Space(1) + Padl(Format(tot7, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot2, 6, " ") + Space(1) + Padl(Format(tot8, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot3, 6, " ") + Space(1) + Padl(Format(tot9, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot4, 6, " ") + Space(1) + Padl(Format(tot10, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot5, 6, " ") + Space(1) + Padl(Format(tot11, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot6, 6, " ") + Space(1) + Padl(Format(tot12, "0.00"), 13, " ")
    Print #a, Space(6) + String(151, "-")
    Print #a, Space(6) + Padr("", 8, " ") + Space(1) + Padl(Round((tot1 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot2 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot3 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot4 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot5 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 13, " ")
    Print #a, Space(6) + String(151, "=")

'    Print #a, Space(6) + String(151, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Call footermod(CInt(a), userFooter, 85)



    Print #a, Chr(12)

    Close #a
    a = FreeFile

    Open "d:\CWS_Ageing.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "d:"
    Print #a, "type CWS_Ageing.txt>prn"
    rptv.txtfile = "d:\CWS_Ageing.txt"
    rptv.Batfile = "d:\CWS_Ageing.bat"
End Sub

'Public Sub Customized_Ageing_Countwise(U As String, userFooter As String)
'    Dim TOT, tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12 As Double
'    Dim valtot As Double
'    Dim Baltot As Double
'    Dim TOTBAL, TOTVAL As Double
'    Dim dtFromDate As String
'    Dim dtToDate As String
'    Dim dtITDate As String
'    valtot = 0
'    Baltot = 0
'    iInd = 1
'    TOT = 0: tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0
'
'
'    dtFromDate = ""
'    dtToDate = ""
'    Set DB = New Connection
'    DB.Open "Provider=msdatashape;" & connectstring
'    On Error Resume Next
'    DB.Execute "DROP TABLE TMP_RMI_STKAGEING"
'    strSQL = "EXEC SP_RMI_STKAGEING '" & Divcode & "','" & Format(yfdate, "YYYY-MM-DD") & "','" & Format(U, "YYYY-MM-DD") & "','" & Year(yfdate) & "'" '
'    Set rstQry1 = New Recordset
'    rstQry1.Open strSQL, DB, adOpenStatic
'
'    strSQL = "EXEC SP_RMI_STKAGEING1 '" & Format(U, "YYYY-MM-DD") & "'"
'
'    Set rstQry1 = New Recordset
'    rstQry1.Open strSQL, DB, adOpenStatic
'
'    If rstQry1.EOF Then
'        MsgBox "No Record Found", vbInformation, head
'        Exit Sub
'    End If
'
'    Set RPTV = New ReportView
'    Close #a
'    a = FreeFile
'
'    pgcnt = 1
'    lncnt = 0
'
'    Open "d:\CWS_Ageing.txt" For Output As #a
'
'    Call CWS_Ageing_Head(U, pgcnt)
'
'    Do While Not rstQry1.EOF
'        If lncnt > PageLen Then
'            pgcnt = pgcnt + 1
'            Print #a, Space(6) + String(151, "-")
'            Print #a, Chr(12)
'
'            Call CWS_Ageing_Head(U, pgcnt)
'        End If
'
'        TOTBAL = rstQry1("ONEto3bal") + rstQry1("THREETO6BAL") + rstQry1("SIXTO9BAL") + rstQry1("NINETO12BAL") + rstQry1("MORE12BAL")
'        TOTVAL = rstQry1("ONEto3Val") + rstQry1("THREETO6VAL") + rstQry1("SIXTO9VAL") + rstQry1("NINETO12VAL") + rstQry1("MORE12VAL")
'        Print #a, Space(6) + Padr(rstQry1("VARCODE"), 8, " ") + Space(1) + Padl(rstQry1("ONEto3bal"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("ONEto3Val"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("THREETO6BAL"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("THREETO6VAL"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("SIXTO9BAL"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("SIXTO9VAL"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("NINETO12BAL"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("NINETO12VAL"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("MORE12BAL"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("MORE12VAL"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(TOTBAL, 6, " ") + Space(1) + Padl(Format(Round(TOTVAL, 2), "0.00"), 13, " ")
'        lncnt = lncnt + 1
'
'       tot1 = tot1 + rstQry1("ONEto3bal")
'       tot2 = tot2 + rstQry1("THREETO6BAL")
'       tot3 = tot3 + rstQry1("SIXTO9BAL")
'       tot4 = tot4 + rstQry1("NINETO12BAL")
'       tot5 = tot5 + rstQry1("MORE12BAL")
'       tot6 = tot6 + TOTBAL
'       tot7 = tot7 + Round(rstQry1("ONEto3Val"), 2)
'       tot8 = tot8 + Round(rstQry1("THREETO6VAL"), 2)
'       tot9 = tot9 + Round(rstQry1("SIXTO9VAL"), 2)
'       tot10 = tot10 + Round(rstQry1("NINETO12VAL"), 2)
'       tot11 = tot11 + Round(rstQry1("MORE12VAL"), 2)
'       tot12 = tot12 + Round(TOTVAL, 2)
'
'
'       rstQry1.MoveNext
'    Loop
'
'    If lncnt > PageLen Then
'        pgcnt = pgcnt + 1
'        Print #a, Space(2) + String(146, "-")
'        Print #a, Chr(12)
'
'        Call CWS_Ageing_Head(U, pgcnt)
'    End If
'
'    Print #a, Space(6) + String(151, "-")
'    Print #a, Space(6) + Padr("Total", 8, " ") + Space(1) + Padl(tot1, 6, " ") + Space(1) + Padl(Format(tot7, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot2, 6, " ") + Space(1) + Padl(Format(tot8, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot3, 6, " ") + Space(1) + Padl(Format(tot9, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot4, 6, " ") + Space(1) + Padl(Format(tot10, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot5, 6, " ") + Space(1) + Padl(Format(tot11, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot6, 6, " ") + Space(1) + Padl(Format(tot12, "0.00"), 13, " ")
'    Print #a, Space(6) + String(151, "-")
'    Print #a, Space(6) + Padr("", 8, " ") + Space(1) + Padl(Round((tot1 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot2 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot3 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot4 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot5 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 13, " ")
'    Print #a, Space(6) + String(151, "=")
'
''    Print #a, Space(6) + String(151, "-")
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Call footermod(CInt(a), userFooter, 85)
'
'
'
'    Print #a, Chr(12)
'
'    Close #a
'    a = FreeFile
'
'    Open "d:\CWS_Ageing.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "d:"
'    Print #a, "type CWS_Ageing.txt>prn"
'    RPTV.txtfile = "d:\CWS_Ageing.txt"
'    RPTV.Batfile = "d:\CWS_Ageing.bat"
'End Sub

Private Sub CWS_Ageing_Head(U As String, pgcnt As Integer)
   Print #a, Chr(18)
   Print #a, Chr(18) + Space(2) + Chr(27) + "E" + CENTRE(Trim(divname), 90, " ") + Chr(27) + "F" & Chr(15)
   Print #a, Chr(15)
   If iInd = 1 Then
        Print #a, Space(6) + "Raw Material Agewise Stock As On " & Format(U, "dd/mm/yy") & Space(87) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.No " & Padl(pgcnt, 3, " ")
   Else
        Print #a, Space(6) + "Raw Material Agewise Stock Movement As On " & Format(U, "dd/mm/yy") & Space(80) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.No " & Padl(pgcnt, 3, " ")
   End If
   
   Print #a, Space(6) + String(151, "-")
'   Print #a, Space(2) + Padr("", 20, " ") + Space(1) + Padl("1 Month To 3 Month", 20, " ") + Space(1) + Padl("3 Month To 6 Month", 20, " ") + Space(1) + Padl("6 Month To 9 Month", 20, " ") + Space(1) + Padl("9 Month To 12 Month", 20, " ") + Space(1) + Padl("More Than 12 Month", 20, " ") + Space(1) + Padl("<-------Total------>", 20, " ")
'   Print #a, Space(2) + Padr("Variety", 20, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ")
   Print #a, Space(6) + Padr("Variety", 8, " ") + Space(0) + Padl("<-1 Month - 3 Month->", 22, " ") + Chr(179) + Padl("<-3 Month - 6 Month->", 22, " ") + Chr(179) + Padl("<-6 Month - 9 Month->", 22, " ") + Chr(179) + Padl("<-9 Month -12 Month->", 22, " ") + Chr(179) + Padl("<-More Than 12 Month->", 22, " ") + Chr(179) + Space(1) + Padl("<-------Total------>", 20, " ")
   Print #a, Space(6) + Padr("       ", 8, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ")
   Print #a, Space(6) + String(151, "-")
   lncnt = 8
End Sub
Private Sub CWS_Ageing_Head1(U As String, v As String, pgcnt As Integer)
   Print #a, Chr(18)
   Print #a, Chr(18) + Space(2) + Chr(27) + "E" + CENTRE(Trim(divname), 90, " ") + Chr(27) + "F" & Chr(15)
   Print #a, Chr(15)
   Print #a, Space(6) + "Raw Material Agewise Stock Movement from " & Format(U, "dd/mm/yy") & " to " & Format(v, "dd/mm/yy") & Space(69) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.No " & Padl(pgcnt, 3, " ")
   
   Print #a, Space(6) + String(151, "-")
'   Print #a, Space(2) + Padr("", 20, " ") + Space(1) + Padl("1 Month To 3 Month", 20, " ") + Space(1) + Padl("3 Month To 6 Month", 20, " ") + Space(1) + Padl("6 Month To 9 Month", 20, " ") + Space(1) + Padl("9 Month To 12 Month", 20, " ") + Space(1) + Padl("More Than 12 Month", 20, " ") + Space(1) + Padl("<-------Total------>", 20, " ")
'   Print #a, Space(2) + Padr("Variety", 20, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ")
   Print #a, Space(6) + Padr("Variety", 8, " ") + Space(0) + Padl("<-1 Month - 3 Month->", 22, " ") + Chr(179) + Padl("<-3 Month - 6 Month->", 22, " ") + Chr(179) + Padl("<-6 Month - 9 Month->", 22, " ") + Chr(179) + Padl("<-9 Month -12 Month->", 22, " ") + Chr(179) + Padl("<-More Than 12 Month->", 22, " ") + Chr(179) + Space(1) + Padl("<-------Total------>", 20, " ")
   Print #a, Space(6) + Padr("       ", 8, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ")
   Print #a, Space(6) + String(151, "-")
   lncnt = 8
End Sub
Public Sub Customized_Ageing_Movement(U As String, v As String, userFooter As String)
    Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12 As Double
    Dim valtot As Double
    Dim Baltot As Double
    Dim dtFromDate As String
    Dim dtToDate As String
    
    Dim dtIFDate As String
    Dim dtITDate As String
    
    valtot = 0
    Baltot = 0
    iInd = 2
    
    tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0
    tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0
    tot13 = 0: tot14 = 0: tot15 = 0: tot16 = 0: tot17 = 0: tot18 = 0
    
    dtFromDate = ""
    dtToDate = ""
    Set db = New Connection
    db.Open "Provider=msdatashape;" & connectstring
    
    Set Rs = New Recordset
    Rs.Open "Select * from sysobjects where name='RMI_Temp_AgeMovementRpt'", db, adOpenStatic, adLockReadOnly

    If Rs.RecordCount > 0 Then
       db.Execute "Drop table RMI_Temp_AgeMovementRpt"
    End If
    db.Execute "Create table RMI_Temp_AgeMovementRpt(Variety varchar(50) null,Bales1 numeric(12,0) null,Value1 numeric(15,3) null,Bales2 numeric(12,0) null,Value2 numeric(15,3) null,Bales3 numeric(12,0) null,Value3 numeric(15,3) null,Bales4 numeric(12,0) null,Value4 numeric(15,3) null,Bales5 numeric(12,0) null,Value5 numeric(15,3) null,Bales6 numeric(12,0) null,Value6 numeric(15,3) null)"
    
    Set rstQry = New Recordset
    rstQry.Open "select Varcode from rm_var", db, adOpenStatic
    
    Do While Not rstQry.EOF
        db.Execute "Insert into RMI_Temp_AgeMovementRpt (Variety) values ('" & rstQry("Varcode") & "')"
        rstQry.MoveNext
    Loop

    '1st Period
    dtFromDate = Format(DateAdd("m", -3, v) + 1, "yyyy-mm-dd")
    dtToDate = Format(DateAdd("m", -0, v), "yyyy-mm-dd")
    dtIFDate = Format(U, "yyyy-mm-dd")
    dtITDate = Format(v, "yyyy-mm-dd")
    strSQL = ""
    strSQL = gStockStatement_AgeMovement(dtFromDate, dtToDate, dtIFDate, dtITDate, False)
        
    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly
    
    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeMovementRpt set Bales1 =" & (Rs(1)) & " , value1 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop
    
    '2nd Period
    dtFromDate = Format(DateAdd("m", -6, v) + 1, "yyyy-mm-dd")
    dtToDate = Format(DateAdd("m", -3, v), "yyyy-mm-dd")
    dtIFDate = Format(U, "yyyy-mm-dd")
    dtITDate = Format(v, "yyyy-mm-dd")
    strSQL = ""
    strSQL = gStockStatement_AgeMovement(dtFromDate, dtToDate, dtIFDate, dtITDate, False)
    
    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly
    
    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeMovementRpt set Bales2 =" & (Rs(1)) & " , value2 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop
   
    '3rd Period
    dtFromDate = Format(DateAdd("m", -9, v) + 1, "yyyy-mm-dd")
    dtToDate = Format(DateAdd("m", -6, v), "yyyy-mm-dd")
    dtIFDate = Format(U, "yyyy-mm-dd")
    dtITDate = Format(v, "yyyy-mm-dd")
    strSQL = ""
    strSQL = gStockStatement_AgeMovement(dtFromDate, dtToDate, dtIFDate, dtITDate, False)
    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly
    
    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeMovementRpt set Bales3 =" & (Rs(1)) & " , value3 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop
    
     '4th Period
    dtFromDate = Format(DateAdd("m", -12, v) + 1, "yyyy-mm-dd")
    dtToDate = Format(DateAdd("m", -9, v), "yyyy-mm-dd")
    dtIFDate = Format(U, "yyyy-mm-dd")
    dtITDate = Format(v, "yyyy-mm-dd")
    strSQL = ""
    strSQL = gStockStatement_AgeMovement(dtFromDate, dtToDate, dtIFDate, dtITDate, False)
    
    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly
    
    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeMovementRpt set Bales4 =" & (Rs(1)) & " , value4 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop
   
    '5th Period
    dtFromDate = Format(DateAdd("m", -12, v) + 1, "yyyy-mm-dd")
    dtToDate = Format(DateAdd("m", -12, v) + 1, "yyyy-mm-dd")
    dtIFDate = Format(U, "yyyy-mm-dd")
    dtITDate = Format(v, "yyyy-mm-dd")
    strSQL = ""
    strSQL = gStockStatement_AgeMovement(dtFromDate, dtToDate, dtIFDate, dtITDate, True)
    
    
    Set Rs = New Recordset
    Rs.Open strSQL, db, adOpenStatic, adLockReadOnly
    
    Do While Rs.EOF = False
        db.Execute "Update RMI_Temp_AgeMovementRpt set Bales5 =" & (Rs(1)) & " , value5 =" & Rs(2) & " where Variety='" & Rs(0) & "'"
        Rs.MoveNext
    Loop
    
    strSQL = ""
    strSQL = strSQL + Chr(13) + " SELECT a.variety,ISNULL(bales1,0) AS b1,ISNULL(value1,0) AS v1,ISNULL(bales2,0) AS b2,ISNULL(value2,0) AS v2,"
    strSQL = strSQL + Chr(13) + " ISNULL(bales3,0) AS b3,ISNULL(value3,0) AS v3,ISNULL(bales4,0) AS b4,ISNULL(value4,0) AS v4,ISNULL(bales5,0) AS b5,"
    strSQL = strSQL + Chr(13) + " ISNULL(value5,0) AS v5, ISNULL(bales1,0) +ISNULL(bales2,0)+ISNULL(bales3,0)+ISNULL(bales4,0)+ISNULL(bales5,0) AS b6,"
    strSQL = strSQL + Chr(13) + " ISNULL(value1,0) +ISNULL(value2,0)+ISNULL(value3,0)+ISNULL(value4,0)+ISNULL(value5,0) AS v6"
    strSQL = strSQL + Chr(13) + " FROM RMI_Temp_AgeMovementRpt a where ISNULL(bales1,0) +ISNULL(bales2,0)+ISNULL(bales3,0)+ISNULL(bales4,0)+ISNULL(bales5,0) > 0"
    
    
    Set rstQry1 = New Recordset
    rstQry1.Open strSQL, db, adOpenStatic
   
   

    If rstQry1.EOF Then
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
    
    Set rptv = New ReportView
    Close #a
    a = FreeFile
    
    pgcnt = 1
    lncnt = 0
    
    Open "d:\CWS_Ageing.txt" For Output As #a
    
    Call CWS_Ageing_Head1(U, v, pgcnt)
    
    Do While Not rstQry1.EOF
        If lncnt > PageLen Then
            pgcnt = pgcnt + 1
            Print #a, Space(6) + String(151, "-")
            Print #a, Chr(12)
            
            Call CWS_Ageing_Head1(U, v, pgcnt)
        End If
        
        
        Print #a, Space(6) + Padr(rstQry1("variety"), 8, " ") + Space(1) + Padl(rstQry1("b1"), 6, " ") + Space(1) + Padl(Format(rstQry1("v1"), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b2"), 6, " ") + Space(1) + Padl(Format(rstQry1("v2"), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b3"), 6, " ") + Space(1) + Padl(Format(rstQry1("v3"), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b4"), 6, " ") + Space(1) + Padl(Format(rstQry1("v4"), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b5"), 6, " ") + Space(1) + Padl(Format(rstQry1("v5"), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b6"), 6, " ") + Space(1) + Padl(Format(rstQry1("v6"), "0.00"), 13, " ")
        lncnt = lncnt + 1
       
       tot1 = tot1 + rstQry1("b1")
       tot2 = tot2 + rstQry1("b2")
       tot3 = tot3 + rstQry1("b3")
       tot4 = tot4 + rstQry1("b4")
       tot5 = tot5 + rstQry1("b5")
       tot6 = tot6 + rstQry1("b6")
       tot7 = tot7 + rstQry1("v1")
       tot8 = tot8 + rstQry1("v2")
       tot9 = tot9 + rstQry1("v3")
       tot10 = tot10 + rstQry1("v4")
       tot11 = tot11 + rstQry1("v5")
       tot12 = tot12 + rstQry1("v6")
       
       
       rstQry1.MoveNext
    Loop
    
    If lncnt > PageLen Then
        pgcnt = pgcnt + 1
        Print #a, Space(2) + String(146, "-")
        Print #a, Chr(12)
        
        Call CWS_Ageing_Head1(U, v, pgcnt)
    End If
        
    Print #a, Space(6) + String(151, "-")
    Print #a, Space(6) + Padr("Total", 8, " ") + Space(1) + Padl(tot1, 6, " ") + Space(1) + Padl(Format(tot7, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot2, 6, " ") + Space(1) + Padl(Format(tot8, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot3, 6, " ") + Space(1) + Padl(Format(tot9, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot4, 6, " ") + Space(1) + Padl(Format(tot10, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot5, 6, " ") + Space(1) + Padl(Format(tot11, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot6, 6, " ") + Space(1) + Padl(Format(tot12, "0.00"), 13, " ")
    Print #a, Space(6) + String(151, "-")
    Print #a, Space(6) + Padr("", 8, " ") + Space(1) + Padl(Round((tot1 / tot6) * 100, 0), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot2 / tot6) * 100, 0), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot3 / tot6) * 100, 0), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot4 / tot6) * 100, 0), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot5 / tot6) * 100, 0), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 13, " ")
    Print #a, Space(6) + String(151, "=")
'    Print #a, Space(6) + String(151, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Call footermod(CInt(a), userFooter, 85)
    Print #a, Chr(12)
    
    Close #a
    a = FreeFile
    
    Open "d:\CWS_Ageing.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "d:"
    Print #a, "type CWS_Ageing.txt>prn"
    rptv.txtfile = "d:\CWS_Ageing.txt"
    rptv.Batfile = "d:\CWS_Ageing.bat"
End Sub
Public Sub Customized_Ageingwise_NewReport(U As String, userFooter As String, a1 As String, A2 As String, a3 As String, A4 As String, A5 As String)
    Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12 As Double
    Dim valtot As Double
    Dim Baltot As Double
    Dim dtFromDate As String
    Dim dtToDate As String
    Dim dtITDate As String
    valtot = 0
    Baltot = 0
    iInd = 1
    tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0


    dtFromDate = ""
    dtToDate = ""
    Set db = New Connection
    db.Open "Provider=msdatashape;" & connectstring

    Set Rs = New Recordset
    Rs.Open "Select * from sysobjects where name='RMI_Temp_AgeingReport'", db, adOpenStatic, adLockReadOnly

  '  If Rs.RecordCount > 0 Then
    db.Execute "delete from TMP_RMIAgeing"
'    End If
    
    Set rstQry = New Recordset
         rstQry.Open "exec  KSP_RMIAGEING_MIS  '" & Divcode & "' ,'" & Format(U, "yyyy-MM-dd") & "'," & val(a1) & "," & val(A2) & "," & val(a3) & "," & val(A4) & "," & val(A5) & "", db, adOpenKeyset, adLockReadOnly
      
    Set rstQry1 = New Recordset
    rstQry1.Open "Select * from TMP_RMIAgeing", db, adOpenStatic
    
        Set rptv = New ReportView
    Close #a
    a = FreeFile

    pgcnt = 1
    lncnt = 0

    Open "d:\CWS_Ageing.txt" For Output As #a

    Call CWS_Ageing_Head_NewReport(U, pgcnt)
    
    Do While Not rstQry1.EOF
     If lncnt > PageLen Then
            pgcnt = pgcnt + 1
            Print #a, Space(6) + String(151, "-")
            Print #a, Chr(12)

            Call CWS_Ageing_Head_NewReport(U, pgcnt)
        End If


        Print #a, Space(6) + Padr(rstQry1("Varcode"), 8, " ") + Space(1) + Padl(rstQry1("b1"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v1"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b2"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v2"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b3"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v3"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b4"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v4"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b5"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v5"), 2), "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(rstQry1("b6"), 6, " ") + Space(1) + Padl(Format(Round(rstQry1("v6"), 2), "0.00"), 13, " ")
        lncnt = lncnt + 1

       tot1 = tot1 + rstQry1("b1")
       tot2 = tot2 + rstQry1("b2")
       tot3 = tot3 + rstQry1("b3")
       tot4 = tot4 + rstQry1("b4")
       tot5 = tot5 + rstQry1("b5")
       tot6 = tot6 + rstQry1("b6")
       tot7 = tot7 + Round(rstQry1("v1"), 2)
       tot8 = tot8 + Round(rstQry1("v2"), 2)
       tot9 = tot9 + Round(rstQry1("v3"), 2)
       tot10 = tot10 + Round(rstQry1("v4"), 2)
       tot11 = tot11 + Round(rstQry1("v5"), 2)
       tot12 = tot12 + Round(rstQry1("v6"), 2)

 rstQry1.MoveNext
    Loop
    

    If lncnt > PageLen Then
        pgcnt = pgcnt + 1
        Print #a, Space(2) + String(146, "-")
        Print #a, Chr(12)

        Call CWS_Ageing_Head_NewReport(U, pgcnt)
    End If

    Print #a, Space(6) + String(151, "-")
    Print #a, Space(6) + Padr("Total", 8, " ") + Space(1) + Padl(tot1, 6, " ") + Space(1) + Padl(Format(tot7, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot2, 6, " ") + Space(1) + Padl(Format(tot8, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot3, 6, " ") + Space(1) + Padl(Format(tot9, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot4, 6, " ") + Space(1) + Padl(Format(tot10, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot5, 6, " ") + Space(1) + Padl(Format(tot11, "0.00"), 13, " ") + Space(1) + Chr(179) + Space(1) + Padl(tot6, 6, " ") + Space(1) + Padl(Format(tot12, "0.00"), 13, " ")
    Print #a, Space(6) + String(151, "-")
    Print #a, Space(6) + Padr("", 8, " ") + Space(1) + Padl(Round((tot1 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot2 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot3 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot4 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl(Round((tot5 / tot6) * 100, 1), 6, " ") + " %" + Padl("", 12, " ") + Space(1) + Chr(179) + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 13, " ")
    Print #a, Space(6) + String(151, "=")

'    Print #a, Space(6) + String(151, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Call footermod(CInt(a), userFooter, 85)



    Print #a, Chr(12)

    Close #a
    a = FreeFile

    Open "d:\CWS_Ageing.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "d:"
    Print #a, "type CWS_Ageing.txt>prn"
    rptv.txtfile = "d:\CWS_Ageing.txt"
    rptv.Batfile = "d:\CWS_Ageing.bat"
End Sub



Private Sub CWS_Ageing_Head_NewReport(U As String, pgcnt As Integer)
   Print #a, Chr(18)
   Print #a, Chr(18) + Space(2) + Chr(27) + "E" + CENTRE(Trim(divname), 90, " ") + Chr(27) + "F" & Chr(15)
   Print #a, Chr(15)
   If iInd = 1 Then
        Print #a, Space(6) + "Raw Material Agewise Stock As On " & Format(U, "dd/mm/yy") & Space(87) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.No " & Padl(pgcnt, 3, " ")
   Else
        Print #a, Space(6) + "Raw Material Agewise Stock Movement As On " & Format(U, "dd/mm/yy") & Space(80) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.No " & Padl(pgcnt, 3, " ")
   End If
   
   Print #a, Space(6) + String(151, "-")
'   Print #a, Space(2) + Padr("", 20, " ") + Space(1) + Padl("1 Month To 3 Month", 20, " ") + Space(1) + Padl("3 Month To 6 Month", 20, " ") + Space(1) + Padl("6 Month To 9 Month", 20, " ") + Space(1) + Padl("9 Month To 12 Month", 20, " ") + Space(1) + Padl("More Than 12 Month", 20, " ") + Space(1) + Padl("<-------Total------>", 20, " ")
'   Print #a, Space(2) + Padr("Variety", 20, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Value", 13, " ") + Space(1) + Padl("Bales", 6, " ")
   Print #a, Space(6) + Padr("Variety", 8, " ") + Space(0) + Padl("<-1 Month - 2 Month->", 22, " ") + Chr(179) + Padl("<-2 Month - 6 Month->", 22, " ") + Chr(179) + Padl("<-6 Month - 9 Month->", 22, " ") + Chr(179) + Padl("<-9 Month -12 Month->", 22, " ") + Chr(179) + Padl("<-More Than 12 Month->", 22, " ") + Chr(179) + Space(1) + Padl("<-------Total------>", 20, " ")
   Print #a, Space(6) + Padr("       ", 8, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ") + Space(1) + Chr(179) + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Values", 13, " ")
   Print #a, Space(6) + String(151, "-")
   lncnt = 8
End Sub
