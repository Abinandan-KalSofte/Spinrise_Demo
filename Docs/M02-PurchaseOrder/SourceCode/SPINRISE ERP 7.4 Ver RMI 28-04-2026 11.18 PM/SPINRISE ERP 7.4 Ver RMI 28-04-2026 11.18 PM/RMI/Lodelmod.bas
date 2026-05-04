Attribute VB_Name = "Lodrelmod"
Dim rs As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim c1 As Integer
Dim DB As Connection
Dim pg1 As Integer
Dim co As Integer
Dim LoDQty, LodValue As Double
Dim RelQty, RelValue As Double
Dim d1, d2 As String
Dim z As Integer
Public Sub LodReleaseReport(d1 As String)
    Screen.MousePointer = 11
    Set DB = New Connection
    DB.Provider = "MSDATASHAPE"
    DB.Open connectstring
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
'    Set rs1 = New Recordset
'    rs1.Open "select distinct z.varname Variety from rm_lot a,rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.lotdt is not null and b.lotdt between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d1, "yyyy-mm-dd") & "'", Db, adOpenStatic
'    If rs1.RecordCount = 0 Then
'        MsgBox "No Record Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
        pg1 = 1
        'Set Rs = New Recordset
        'Rs.Open "SELECT * FROM PP_DIVMAS", Db
        Y = 0
        Print #11, Chr(27); "E"; CENTRE(DIVNAME, 80, " "); Chr(27); "F"
        Set ResultRs = New Recordset
        ResultRs.Open "select z.VARname,(Count(baleno))'LodQty',avg(isnull(b.lodgvalue,0)) 'lodRate',avg(b.lodgvalue)*(count(baleno)) 'lodValue' from rm_lot a, rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.lodgdate is not null and b.lodgdate  between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(d1, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' group by z.varname ", DB, adOpenStatic
        If ResultRs.RecordCount > 0 Then
        Print #11, Space(5); "LODGEMENT"; Space(52); "Date  "; Padr(Format(d1, "dd/mm/yyyy"), 10, " ")
        Y = 1
            Print #11, Space(5); String(77, "-")
            Print #11, Space(5); "S.No  Description                 Qty           Rate(Rs.)          Value(Rs.)"
            Print #11, Space(5); String(77, "-")
            Do While Not ResultRs.EOF
                i = i + 1
                Print #11, Space(6); Padl(i, 3, " "); Space(2); Padr(ResultRs("varname"), 22, " "); Space(2); Padl(ResultRs("lodqty"), 7, " "); Space(4); Padl(INF(ResultRs("lodrate"), 2), 16, " "); Space(1); Padl(INF(ResultRs("lodValue"), 2), 19, " ")
                totlodqty = totlodqty + IIf(IsNull(ResultRs("lodqty")), 0, ResultRs("lodqty"))
                totlodvalue = totlodvalue + IIf(IsNull(ResultRs("lodvalue")), 0, ResultRs("lodvalue"))
                ResultRs.MoveNext
            Loop
            Print #11, Space(5); String(77, "-")
            Print #11, Space(17); " ** Total  ** "; Space(4); Padl(INF(totlodqty, 0), 7, " "); Space(18); Padl(INF(totlodvalue, 2), 22, " ")
            Print #11, Space(5); String(77, "-")
       End If
    '-------------------==============================Release --------------------------
        Set ResultRs = New Recordset
        ResultRs.Open "select z.VARname,(Count(baleno))'RELQty',avg(isnull(b.RELvalue,0)) 'RELRate',avg(b.RELvalue)*(count(baleno)) 'RELValue' from rm_lot a, rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.RELdate is not null and b.RELdate  between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d1, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' group by z.varname ", DB, adOpenStatic
        If ResultRs.RecordCount > 0 Then
            Y = 1
            Print #11, Space(5); "RELEASE  "; Space(52); "Date  "; Padr(Format(d1, "dd/mm/yyyy"), 10, " ")
            Set ResultRs = New Recordset
            ResultRs.Open "select z.VARname,(Count(baleno))'RELQty',avg(isnull(b.RELvalue,0)) 'RELRate',avg(b.RELvalue)*(count(baleno)) 'RELValue' from rm_lot a, rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.RELdate is not null and b.RELdate  between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d1, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' group by z.varname ", DB, adOpenStatic
            Print #11, Space(5); String(77, "-")
            Print #11, Space(5); "S.No  Description                Qnty           Rate(Rs.)          Value(Rs.)"
            Print #11, Space(5); String(77, "-")
            i = 0
            Do While Not ResultRs.EOF
                i = i + 1
                Print #11, Space(6); Padl(i, 3, " "); Space(2); Padr(ResultRs("varname"), 22, " "); Space(2); Padl(ResultRs("relqty"), 7, " "); Space(4); Padl(INF(ResultRs("relrate"), 2), 16, " "); Space(1); Padl(INF(ResultRs("relValue"), 2), 19, " ")
                totrelqty = totlodqty + IIf(IsNull(ResultRs("RELqty")), 0, ResultRs("relqty"))
                totrelvalue = totlodvalue + IIf(IsNull(ResultRs("relvalue")), 0, ResultRs("relvalue"))
                ResultRs.MoveNext
            Loop
            Print #11, Space(5); String(77, "-")
            Print #11, Space(17); " ** Total  ** "; Space(4); Padl(INF(totrelqty, 0), 7, " "); Space(18); Padl(INF(totrelvalue, 2), 22, " ")
            Print #11, Space(5); String(77, "-")
        
    'Print #11, Space(5); String(70, "-")
    'Print #11, Space(25); "Total "; Space(4); Padl(INF(totrelqty, 0), 15, " "); Space(3); Padl(INF(totrelvalue, 2), 22, " ")
    'Print #11, Space(5); String(70, "-")
    End If
    If Y = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Close #11
        Exit Sub
    End If
        
    
    Print #11, Chr(12)
    Close #11
    z = FreeFile
    Open "C:\BSP.bat" For Output As #11
    Print #11, "cd\"
    Print #11, "C:"
    Print #11, "cd\"
    Print #11, "type BSP.TXT>prn"
    Close #11
    RPTV.txtfile = "C:\BSP.TXT"
    RPTV.Batfile = "C:\BSP.bat"
    Screen.MousePointer = 0
End Sub



