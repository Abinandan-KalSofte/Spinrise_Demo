Attribute VB_Name = "BankStament"
Dim Rs As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim c1 As Integer
Dim Db As Connection
Dim pg1 As Integer
Dim co As Integer
Dim LoDQty, LodValue As Double
Dim RelQty, RelValue As Double
Dim d1, d2 As String
Dim z As Integer
Public Sub Bankstatement(d1 As String, d2 As String)
    Screen.MousePointer = 11
    Set Db = New Connection
    Db.Provider = "MSDATASHAPE"
    Db.Open connectstring
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #11
    Open "C:\BSP.TXT" For Output As #11
    pg1 = 1
    co = 0
    Print #11, Chr(15)
    z = FreeFile
    totlodqty = 0
    totrelqty = 0
    totlodvalue = 0
    totrelvalue = 0
    d1 = d1
    d2 = d2
    Set rs1 = New Recordset
    rs1.Open "select distinct z.varname Variety from rm_lot a,rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.lotdt is not null and b.lotdt between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d2, "yyyy-mm-dd") & "'", Db, adOpenStatic
    If rs1.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    pg1 = 1
    Call BankHeader(pg1, CStr(d1), CStr(d2))
    Set Rs = New Recordset
    Rs.Open "select distinct z.varname Variety,z.varcode from rm_lot a,rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.LODGDATE is not null and b.LODGDATE between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d2, "yyyy-mm-dd") & "'", Db, adOpenStatic
    Do While Not Rs.EOF
        Print #11, Space(5); Padr(Rs("variety"), 20, " ")
        co = co + 1
        If co >= pagelen Then
            Print #11, Space(5) + String(70, "-"); Chr(12)
            co = 0
            pg1 = pg1 + 1
            Call BankHeader(pg1, CStr(d1), CStr(d2))
        End If
        Set ResultRs = New Recordset
        ResultRs.Open "select b.lodgdate 'Date',isnull(a.plotno,0)'Plotno',a.lotno, 'LotNo',(Count(baleno))'LodQty',avg(isnull(b.lodgvalue,0)) 'lodRate',avg(b.lodgvalue)*(count(baleno)) 'lodValue' from rm_lot a, rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.lodgdate is not null and b.lodgdate  between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d2, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and z.varcode='" & Rs("varcode") & "'group by b.lodgdate,a.plotno,a.lotno ", Db, adOpenStatic
        Do While Not ResultRs.EOF
            Print #11, Space(6); Padr(Format(ResultRs("Date"), "dd/mm/yyyy"), 10, " "); Space(11); Padl(ResultRs("lotno"), 7, " "); Space(2); Padl(ResultRs("pLotNo"), 6, " "); Space(1); Padl(ResultRs("lodqty"), 7, " "); Padl(INF(ResultRs("lodrate"), 2), 12, " "); Space(1); Padl(INF(ResultRs("lodValue"), 2), 12, " ") '; Space(7); Padr(pdate, 10, " "); Padl(ResultRs("relqty"), 8, "  "); Space(1); Padl(INF(ResultRs("relrate"), 2), 11, " "); Space(1); Padl(INF(ResultRs("relValue"), 2), 13, " ")
            co = co + 1
            If co >= pagelen Then
                Print #11, Space(5) + String(70, "-"); Chr(12)
                co = 0
                pg1 = pg1 + 1
                Call BankHeader(pg1, CStr(d1), CStr(d2))
            End If
            totlodqty = totlodqty + IIf(IsNull(ResultRs("lodqty")), 0, ResultRs("lodqty"))
            totlodvalue = totlodvalue + IIf(IsNull(ResultRs("lodvalue")), 0, ResultRs("lodvalue"))
            ResultRs.MoveNext
        Loop
        Rs.MoveNext
    Loop
    Print #11, Space(5); String(70, "-")
    Print #11, Space(25); "Total "; Space(4); Padl(INF(totlodqty, 0), 15, " "); Space(3); Padl(INF(totlodvalue, 2), 22, " ")
    Print #11, Space(5); String(70, "-")
    '-------------------==============================Release --------------------------
    Set Rs = New Recordset
    Rs.Open "select distinct z.varname Variety,z.varcode from rm_lot a,rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.relDATE is not null and b.relDATE between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d2, "yyyy-mm-dd") & "'", Db, adOpenStatic
    If Rs.RecordCount > 0 Then
          Print #11,
          Print #11,
          Print #11,
          Print #11, Space(5) + "RELEASE"
          Print #11, Space(5) + String(70, "-")
          Print #11, Space(5) + "Variety                  Mill   Party  " & "   <-------- Release --------->" '"          <-------------Release------------>"
          Print #11, Space(5) + "Lod.Date               Lot No  Lot No     Qty        Rate        Value         " ' Date        Qty        Rate         Value"
          'Print #11, Space(8) + "Date      Party Name                              Lot No      Qty        Rate        Value          Qty        Rate         Value"
          Print #11, Space(5) + String(70, "-")
    Do While Not Rs.EOF
        Print #11, Space(5); Padr(Rs("variety"), 20, " ")
        Set ResultRs = New Recordset
        ResultRs.Open "select b.reldate 'Date',isnull(a.plotno,0)'Plotno',a.lotno, 'LotNo',(Count(baleno))'relQty',avg(isnull(b.relvalue,0)) 'lodRate',avg(b.relvalue)*(count(baleno)) 'RElValue' from rm_lot a, rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.reldate is not null and b.reldate  between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d2, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and z.varcode='" & Rs("varcode") & "'group by b.reldate,a.plotno,a.lotno ", Db, adOpenStatic
        Do While Not ResultRs.EOF
            Print #11, Space(6); Padr(Format(ResultRs("Date"), "dd/mm/yyyy"), 10, " "); Space(11); Padl(ResultRs("lotno"), 7, " "); Space(2); Padl(ResultRs("pLotNo"), 6, " "); Space(1); Padl(ResultRs("relqty"), 7, " "); Padl(INF(ResultRs("lodrate"), 2), 12, " "); Space(1); Padl(INF(ResultRs("relValue"), 2), 12, " ")
            co = co + 1
            If co >= pagelen Then
                Print #11, Space(5) + String(70, "-"); Chr(12)
                co = 0
                pg1 = pg1 + 1
                Call BankHeader(pg1, CStr(d1), CStr(d2))
            End If
            totrelqty = totrelqty + IIf(IsNull(ResultRs("relqty")), 0, ResultRs("relqty"))
            totrelvalue = totrelvalue + IIf(IsNull(ResultRs("relvalue")), 0, ResultRs("relvalue"))
            ResultRs.MoveNext
        Loop
        Rs.MoveNext
    Loop
    Print #11, Space(5); String(70, "-")
    Print #11, Space(25); "Total "; Space(4); Padl(INF(totrelqty, 0), 15, " "); Space(3); Padl(INF(totrelvalue, 2), 22, " ")
    Print #11, Space(5); String(70, "-")
    End If
    Print #11,
    Print #11,
    Print #11, Space(5); "BALANCE:"
    Print #11, Space(15); "Qty      "; Padl((totlodqty - totrelqty), 7, " ")
    Print #11, Space(15); "Value"; Padl(INF((totlodvalue - totrelvalue), 2), 11, " ")
    'Print #11, Space(10); ; Space(2);
    Print #11, Chr(12)
    Close #11
    z = FreeFile
    Open "c:\BSP.bat" For Output As #11
    Print #11, "cd\"
    Print #11, "c:"
    Print #11, "cd\"
    Print #11, "type BSP.TXT>prn"
    Close #11
    RPTV.txtfile = "c:\BSP.TXT"
    RPTV.Batfile = "c:\BSP.bat"
    Screen.MousePointer = 0
End Sub
Public Sub BankHeader(pg1 As Integer, d1 As String, d2 As String)
          Print #11, Chr(18)
          Print #11, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 70, " ") + Chr(27) + "F"
          Print #11,
          sr = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #11, Space(3) + Chr(27) + "E" + "Bank Statement Varietywise" + Chr(27) + "F" + " from" + Space(2) + Format(Trim(d1), "DD/MM/YYYY") + Space(2) + "to" + Space(2) + Format(Trim(d2), "DD/MM/YYYY")
          Print #11, Space(51) + "Dt: "; CStr(sr) + "Pg.: " + Padl(CStr(pg1), 3, " ")
          Print #11, Space(5) + String(70, "-")
          Print #11, Space(5) + "Variety                  Mill   Party  " & "   <--------Lodgement--------->" '"          <-------------Release------------>"
          Print #11, Space(5) + "Lod.Date               Lot No  Lot No     Qty        Rate        Value         " ' Date        Qty        Rate         Value"
          'Print #11, Space(8) + "Date      Party Name                              Lot No      Qty        Rate        Value          Qty        Rate         Value"
          Print #11, Space(5) + String(70, "-")
          co = co + 9
End Sub


