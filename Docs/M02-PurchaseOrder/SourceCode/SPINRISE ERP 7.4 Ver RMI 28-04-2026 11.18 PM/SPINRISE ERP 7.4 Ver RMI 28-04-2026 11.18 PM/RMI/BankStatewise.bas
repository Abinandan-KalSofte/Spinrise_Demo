Attribute VB_Name = "BankStDatewise"
Dim Rs As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim c1 As Integer
Dim Db As Connection
Dim pg1 As Integer
Dim co As Integer
Dim d1, d2 As String
Dim z As Integer
Public Sub BankstatementDatewise(d1 As String, d2 As String)
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
    d1 = d1
    d2 = d2
    Set rs1 = New Recordset
    rs1.Open "select distinct b.lodgdate 'Date' from rm_lot a,rm_bale b,rm_var z where a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.lodgdate is not null and b.lodgdate between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d2, "yyyy-mm-dd") & "'", Db, adOpenStatic
    If rs1.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    pg1 = 1
    Call BankDateHeader(pg1, CStr(d1), CStr(d2))
    Set Rs = New Recordset
    Rs.Open "select distinct b.lodgdate 'Date' from rm_lot a, rm_bale b,rm_var z,fa_slmas f where a.supcd=f.slcode and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.lodgdate is not null and b.lodgdate  between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d2, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' group by z.varname,b.lodgdate,f.slname,a.lotno,z.varcode ", Db, adOpenStatic
    Do While Not Rs.EOF
        Print #11, Space(5); Padr(Rs("date"), 20, " ")
        co = co + 1
        If co >= pagelen Then
            Print #11, Space(5) + String(132, "-"); Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call BankDateHeader(pg1, CStr(d1), CStr(d2))
        End If
        Set ResultRs = New Recordset
        ResultRs.Open "select z.varname,b.lodgdate 'Date',f.slname 'Party Name',a.lotno, 'LotNo',(select count(baleno) from rm_bale where openkey='Y')'LodQty',avg(isnull(b.lodgvalue,0)) 'lodRate',avg(b.lodgvalue)*(select count(baleno) from rm_bale where openkey='Y') 'lodValue',(select count(baleno) from rm_bale where openkey='N')'RelQty',avg(isnull(b.RELVALUE,0)) 'RelRate',avg(isnull(RELVALUE,0))*(select count(baleno) from rm_bale where openkey='N') 'RelValue' from rm_lot a, rm_bale b,rm_var z,fa_slmas f where a.supcd=f.slcode and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode  and a.varcode=z.varcode and b.lodgdate is not null and b.lodgdate  between '" & Format(d1, "yyyy-mm-dd") & "' and '" & Format(d2, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and b.lodgdate='" & Format(Rs("date"), "yyyy-mm-dd") & "'group by b.lodgdate,f.slname,a.lotno,z.varname ", Db, adOpenStatic
        Do While Not ResultRs.EOF
            Print #11, Space(5); Padr(ResultRs("varname"), 18, " "); Space(2); Padr(ResultRs("Party Name"), 33, " "); Space(1); Padl(ResultRs("LotNo"), 5, " "); Space(1); Padl(ResultRs("lodqty"), 8, " "); Padl(INF(ResultRs("lodrate"), 2), 12, " "); Space(1); Padl(INF(ResultRs("lodValue"), 2), 12, " "); Space(5); Padl(ResultRs("relqty"), 8, "  "); Space(1); Padl(INF(ResultRs("relrate"), 2), 11, " "); Space(1); Padl(INF(ResultRs("relValue"), 2), 13, " ")
            co = co + 1
            If co >= pagelen Then
                Print #11, Space(5) + String(132, "-"); Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call BankDateHeader(pg1, CStr(d1), CStr(d2))
            End If
            ResultRs.MoveNext
        Loop
        Rs.MoveNext
    Loop
    Print #11, Space(5) + String(132, "-"); Chr(12)
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
Public Sub BankDateHeader(pg1 As Integer, d1 As String, d2 As String)
          Print #11, Chr(18)
          Print #11, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 73.3333333333333, " ") + Chr(27) + "F"
          Print #11,
          sr = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #11, Space(3) + Chr(27) + "E" + "Bank Statement" + Chr(27) + "F" + " from" + Space(2) + Format(Trim(d1), "DD/MM/YYYY") + Space(2) + "to" + Space(2) + Format(Trim(d2), "DD/MM/YYYY");
          Print #11, Space(6) + "Dt: "; CStr(sr) + "Pg.: " + Padl(CStr(pg1), 3, " ")
          Print #11, Space(5) + Chr(27) + "E" + CENTRE("Option : Datewise", 73.3333333333333, " ") + Chr(27) + "F"; Chr(15)
          Print #11, Space(5) + String(132, "-")
          Print #11, Space(5) + "Date                                                          " & "   <--------Lodgement--------->"; "          <----------Release---------->"
          Print #11, Space(5) + "Variety                Party Name                    Lot No      Qty        Rate        Value          Qty        Rate         Value"
          Print #11, Space(5) + String(132, "-")
          co = co + 9
End Sub



