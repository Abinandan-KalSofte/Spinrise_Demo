Attribute VB_Name = "arrivalregister"
Dim rs1 As Recordset
Dim ResultRs As Recordset
Dim Rs As Recordset
Dim rptv As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim C1 As Integer
Dim Cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s As String
Dim z As Integer
Dim rp As New repform
Dim sTransport As String
Public Sub arrregReport(a As String, B As String, footerstr As String)
Dim Str As String
Dim tot5, tot6, tot7, gtot5, gtot6, gtot7 As Double
Dim r As String
Dim s As String
Dim temp1 As String

pg = 1
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring

Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Close
'Open "c:\carr.txt" For Output As #1
 Open KALFOLDERDATA & "\carr.TXT" For Output As #1
pg1 = 1
Call arrregHeader(CStr(a), CStr(B), CInt(pg1))
co = 9
 
Set rs2 = New Recordset
'rs2.Open "select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & a & "' and '" & B & "' and a.carcode*=b.carcode and divcode='" & Divcode & "' order by a.arrdate,a.lotno", DB, adOpenStatic

    rs2.Open "select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from  rm_arrival a left join po_car b on  a.carcode=b.carcode  inner join fa_slmas c on a.supcd=c.slcode inner join rm_area d  on  a.areacode=d.areacode   where a.arrdate between '" & a & "' and '" & B & "'  and divcode='" & Divcode & "' order by a.arrdate,a.lotno", DB, adOpenStatic

 
If rs2.RecordCount = 0 Then
    MsgBox "No records Found ", vbInformation, head
    Screen.MousePointer = 0
     Exit Sub
End If
co = 0: C1 = 0
tot5 = 0: tot6 = 0: tot7 = 0: gtot5 = 0: gtot6 = 0: gtot7 = 0
temp1 = "": Str = ""

Do While Not rs2.EOF
    If temp1 = rs2("arrdate") Then
    
    Else
        If C1 > 1 Then
            Print #1, ' Space(5) & Space(54) & String(91, "-")
            Print #1, Space(5) & Space(52) & Chr(27) & "E" & Padr("Date Total ", 20, " ") & Space(22) & Padl(INF(tot5, 0), 9, " ") & Space(1) & Padl(INF(tot6, 3), 15, " ") & Space(12) & Padl(INF(tot7, 2), 10, " ") & Chr(27) & "F"
            Print #1, 'Space(5) & Space(54) & String(91, "-")
            co = co + 3
        End If
        
        tot5 = 0: tot6 = 0: tot7 = 0
        If co >= 60 Then
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call arrregHeader(CStr(a), CStr(B), CStr(pg1))
            co = 9
        End If
        If C1 = 1 Then
            Print #1,
        End If
        C1 = 0
        Print #1, Space(5) & Padr(Format(rs2("arrdate"), "dd/mm/yy"), 8, " ")
        co = co + 2
        temp1 = rs2("arrdate")
        Str = ""
    End If
    If Str = rs2("slname") Then
        Print #1, Space(41);
    Else
        Print #1, Space(5) & Padr(rs2("slname"), 35, " ") & Space(1);
        Str = rs2("slname")
    End If
    If IsNull(rs2("LOTNO")) = True Then
        Print #1, Padl(" ", 8, " ") & Space(1) & Padl(rs2("plotno"), 8, " ") & Space(1) & Padr(rs2("carname"), 25, " ") & Space(1) & Padr(rs2("areaname"), 15, " ") & Space(1) & Padl(rs2("quantity"), 9, " ") & Space(1) & Padl(INF(rs2("netwt"), 3), 15, " ") & Space(1) & Padr(rs2("lorrynos"), 12, " ") & Space(1) & Padl(INF(rs2("freight"), 2), 10, " ")
    Else
        Print #1, Padl(rs2("lotno") & "/" & Format(rs2("lotdt"), "yy"), 8, " ") & Space(1) & Padl(rs2("plotno"), 8, " ") & Space(1) & Padr(rs2("carname"), 25, " ") & Space(1) & Padr(rs2("areaname"), 15, " ") & Space(1) & Padl(rs2("quantity"), 9, " ") & Space(1) & Padl(INF(rs2("netwt"), 3), 15, " ") & Space(1) & Padr(rs2("lorrynos"), 12, " ") & Space(1) & Padl(INF(rs2("freight"), 2), 10, " ")
    End If
    co = co + 1
    C1 = C1 + 1
    If co >= 63 Then
        Print #1, Chr(12)
        pg1 = pg1 + 1
        Call arrregHeader(CStr(a), CStr(B), CStr(pg1))
        co = 9
    End If
    ''Sub Total
    tot5 = tot5 + rs2("quantity")
    tot6 = tot6 + rs2("netwt")
    tot7 = tot7 + rs2("freight")
    ''Grand Total
    gtot5 = gtot5 + rs2("quantity")
    gtot6 = gtot6 + rs2("netwt")
    gtot7 = gtot7 + rs2("freight")
    rs2.MoveNext
    
Loop

If C1 > 1 Then
    Print #1, ' Space(5) & Space(54) & String(91, "-")
    Print #1, Space(5) & Space(52) & Chr(27) & "E" & Padr("Date Total ", 20, " ") & Space(22) & Padl(INF(tot5, 0), 9, " ") & Space(1) & Padl(INF(tot6, 3), 15, " ") & Space(12) & Padl(INF(tot7, 2), 10, " ") & Chr(27) & "F"
    Print #1, ' Space(5) & Space(54) & String(91, "-")
End If

Print #1, Space(5) & String(145, "-")
Print #1, Space(5) & Space(52) & Chr(27) & "E" & Padr("** Grand Total ** ", 20, " ") & Space(22) & Padl(INF(gtot5, 0), 9, " ") & Space(1) & Padl(INF(gtot6, 3), 15, " ") & Space(12) & Padl(INF(gtot7, 2), 10, " ") & Chr(27) & "F"
Print #1, Space(5) & String(145, "-")
Print #1,
Print #1,
Print #1,
Call footermod(CInt(1), footerstr, 85)
Print #1, Chr(12)
Close #1
Call KALBATPROCESS("carr")
End Sub
Public Sub arrregHeader(a As String, B As String, pg1 As Integer)
Print #1, Chr(18)
Print #1, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1, Chr(15)
Print #1, Space(5) & Chr(27) & "E" & Padr("Arrival List", 16, " ") & Chr(27) & "F" & " from " & Padr(Format(a, "dd/mm/yy"), 8, " ") & " to " & Padr(Format(B, "dd/mm/yy"), 8, " ") & Space(78) & Padr(Format(pdate, "dd/mm/yy"), 8, " ") & Space(3) & "Pg. :" & Padl(pg1, 3, " ")
Print #1, Space(5) & CENTRE("Option : Datewise", 145, " ")
Print #1, Space(5) & String(145, "-")
Print #1, Space(5) & Padr("Date", 8, " ") & Space(28) & Padl("Mill", 8, " ") & Space(1) & Padl("Supplier", 8, " ") & Space(1) & Padr(" ", 25, " ") & Space(1) & Padr(" ", 15, " ") & Space(1) & Padl(" ", 9, " ") & Space(1) & Padl(" ", 15, " ") & Space(1) & Padr(" ", 12, " ") & Space(1) & Padl("Lorry", 10, " ")
Print #1, Space(5) & Padr("Supplier Name", 35, " ") & Space(1) & Padl("Lot No.", 8, " ") & Space(1) & Padl("Lot No.", 8, " ") & Space(1) & Padr("Carrier Name", 25, " ") & Space(1) & Padr("Station", 15, " ") & Space(1) & Padl("Qty", 9, " ") & Space(1) & Padl("Kgs", 15, " ") & Space(1) & Padr("Lorry No", 13, " ") & Space(1) & Padl("Freight", 9, " ")
Print #1, Space(5) & String(145, "-")
End Sub
Public Sub FreightDetails(sFromDate As String, sToDate As String, iFromLot As Integer, iToLot As Integer, sFromTrans As String, sToTrans As String, iFlg As String)
Dim Str As String
Dim tot5, tot6, tot7, gtot5, gtot6, gtot7 As Double
Dim r As String
Dim s As String
Dim sLotYear As String
Dim temp1 As String
Dim iCnt As Integer

pg = 1
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring

Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Close
'Open "c:\carr.txt" For Output As #1
 Open KALFOLDERDATA & "\carr.TXT" For Output As #1
pg1 = 1

co = 9
Set rs2 = New Recordset
rs2.Open "select Distinct B.lotno,B.lotdt,A.lorrynos,B.Bales, B.lrFrtAmt ,D.Station,A.CARCODE from RM_ARRIVAL A, RM_LOT B,PO_CAR C ,Rm_Area D where A.Arrno=B.Arrno and A.Arrdate=B.Arrdt and A.Divcode=B.Divcode and a.carcode=C.Carcode And B.areacd=D.AreaCode and B.lotno between " & val(iFromLot) & " And " & val(iToLot) & " AND B.lotdt between '" & Format(sFromDate, "YYYY/MM/DD") & "' and '" & Format(sToDate, "YYYY/MM/DD") & "' AND C.Carcode between '" & Trim(sFromTrans) & "' and '" & Trim(sToTrans) & "' and a.divcode='" & Divcode & "' Order By b.Lotdt,b.Lotno", DB, adOpenStatic
If rs2.RecordCount = 0 Then
    MsgBox "No records Found ", vbInformation, head
    Screen.MousePointer = 0
     Exit Sub
End If
co = 0: C1 = 0
tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: gtot6 = 0: gtot7 = 0
temp1 = "": Str = ""
iCnt = 0
If iFlg = 1 Then
    Call FreightDetailHeader(CStr(sFromDate), CStr(sToDate), CInt(pg1))
    Do While Not rs2.EOF
       
        If co >= 59 Then
            Print #1, Space(2) & String(80, "-")
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call FreightDetailHeader(CStr(sFromDate), CStr(sToDate), CStr(pg1))
            co = 9
        End If
      
        Set Rs = New Recordset
        Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rs2("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rs2("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
        If Rs.EOF = False Then
            sLotYear = Format(Rs("AYFDATE"), "YY")
        Else
            sLotYear = Format(rs2("LOTDT"), "YY")
        End If
        'Print #1, Space(2) & Padl(RS2("lotno") & "/" & sLotYear, 8, " ") & Space(2) & Padl(Format(RS2("lotdt"), "DD/MM/YY"), 8, " ") & Space(2) & Padr(RS2("lorrynos"), 16, " ") & Space(2) & Padl(RS2("Bales"), 8, " ") & Space(2) & Padl(INF(RS2("LRFRTAMT"), 2), 12, " ") & Space(2) & Padr(RS2("Station"), 16, " ")
        Print #1, Space(2) & Padl(rs2("lotno") & "/" & sLotYear, 8, " ") & Space(2) & Padl(Format(rs2("lotdt"), "DD/MM/YY"), 8, " ") & Space(2) & Padr(rs2("slname"), 20, "") & Space(2) & Padr(rs2("lorrynos"), 16, " ") & Space(2) & Padl(rs2("Bales"), 8, " ") & Space(2) & Padl(INF(rs2("LRFRTAMT"), 2), 12, " ") & Space(2) & Padr(rs2("Station"), 16, " ")
        co = co + 1
        C1 = C1 + 1
        If co >= 63 Then
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call FreightDetailHeader(CStr(sFromDate), CStr(sToDate), CStr(pg1))
            co = 9
        End If
        ''Sub Total
        tot5 = tot5 + rs2("bales")
        tot6 = tot6 + rs2("lrfrtamt")
        rs2.MoveNext
    Loop
    
    Print #1, Space(2) & String(80, "-")
    Print #1, Space(2) & Padl("", 8, " ") & Space(0) & Padl("Grand Total", 11, " ") & Space(1) & Padr("", 16, " ") & Space(2) & Padl(tot5, 8, " ") & Space(2) & Padl(INF(tot6, 2), 12, " ")
    Print #1, Space(2) & String(80, "=")
    Print #1,
    Print #1,
    Print #1,
    'Call footermod(CInt(1), footerstr, 85)
    Print #1, Chr(12)
    Screen.MousePointer = 0
    Close #1
Else
    Call FreightDetailHeader1(CStr(sFromDate), CStr(sToDate), CInt(pg1))
    Set rs2 = New Recordset
    'RS2.Open "select Distinct B.lotno,B.lotdt,A.lorrynos,B.Bales, B.lrFrtAmt ,D.Station,A.CARCODE from RM_ARRIVAL A, RM_LOT B,PO_CAR C ,Rm_Area D where A.Arrno=B.Arrno and A.Arrdate=B.Arrdt and A.Divcode=B.Divcode and a.carcode=C.Carcode And B.areacd=D.AreaCode and B.lotno between " & val(iFromLot) & " And " & val(iToLot) & " AND B.lotdt between '" & Format(sFromDate, "YYYY/MM/DD") & "' and '" & Format(sToDate, "YYYY/MM/DD") & "' AND C.Carcode between '" & Trim(sFromTrans) & "' and '" & Trim(sToTrans) & "' and a.divcode='" & Divcode & "' Order By A.CARCODE,b.lotdt,b.lotno ", DB, adOpenStatic
    rs2.Open "select Distinct B.lotno,B.lotdt,A.lorrynos,B.Bales, B.lrFrtAmt ,D.Station,A.CARCODE,E.slname from RM_ARRIVAL A, RM_LOT B,PO_CAR C ,Rm_Area D,fa_slmas E where E.slcode=C.slcode and A.Arrno=B.Arrno and A.Arrdate=B.Arrdt and A.Divcode=B.Divcode and a.carcode=C.Carcode And B.areacd=D.AreaCode and B.lotno between " & val(iFromLot) & " And " & val(iToLot) & " AND B.lotdt between '" & Format(sFromDate, "YYYY/MM/DD") & "' and '" & Format(sToDate, "YYYY/MM/DD") & "' AND C.Carcode between '" & Trim(sFromTrans) & "' and '" & Trim(sToTrans) & "' and a.divcode='" & Divcode & "' Order By A.CARCODE,b.lotdt,b.lotno ", DB, adOpenStatic
    If rs2.EOF = True Then Exit Sub
    sTransport = rs2("carcode")
    Print #1, Space(3) & Padr(getMasterName("Carname", "PO_CAR", "carcode", rs2("carcode")), 40, " ")
    Print #1,
    co = co + 2
    Do While Not rs2.EOF
        If sTransport <> rs2("carcode") Then
                        
            If iCnt > 1 Then
                Print #1,
                Print #1, Space(2) & Padl("", 8, " ") & Space(23) & Padl(" Sub Total", 9, " ") & Space(3) & Padr("", 16, " ") & Space(2) & Padl(tot7, 8, " ") & Space(2) & Padl(INF(tot8, 2), 12, " ")
                Print #1,
                iCnt = 0
            Else
                Print #1,
            End If
            iCnt = 0
            tot8 = 0
            tot7 = 0
            co = co + 3
            If co >= 59 Then
                Print #1, Space(2) & String(80, "-")
                 Print #1, Chr(12)
                 pg1 = pg1 + 1
                 Call FreightDetailHeader1(CStr(sFromDate), CStr(sToDate), CStr(pg1))
                 co = 9
            End If
            
            Print #1, Space(2) & Padr(getMasterName("Carname", "PO_CAR", "carcode", rs2("carcode")), 40, " ")
            sTransport = rs2("carcode")
            Print #1,
            co = co + 2
        End If
        
        Set Rs = New Recordset
        Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rs2("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rs2("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
        If Rs.EOF = False Then
            sLotYear = Format(Rs("AYFDATE"), "YY")
        Else
            sLotYear = Format(rs2("LOTDT"), "YY")
        End If
           
        'Print #1, Space(2) & Padl(RS2("lotno") & "/" & sLotYear, 8, " ") & Space(2) & Padl(Format(RS2("lotdt"), "DD/MM/YY"), 8, " ") & Space(2) & Padr(RS2("lorrynos"), 16, " ") & Space(2) & Padl(RS2("Bales"), 8, " ") & Space(2) & Padl(INF(RS2("LRFRTAMT"), 2), 12, " ") & Space(2) & Padr(RS2("Station"), 16, " ")
         Print #1, Space(2) & Padl(rs2("lotno") & "/" & sLotYear, 8, " ") & Space(2) & Padl(Format(rs2("lotdt"), "DD/MM/YY"), 8, " ") & Space(2) & Padr(rs2("slname"), 20, "") & Space(2) & Padr(rs2("lorrynos"), 16, " ") & Space(2) & Padl(rs2("Bales"), 8, " ") & Space(2) & Padl(INF(rs2("LRFRTAMT"), 2), 12, " ") & Space(2) & Padr(rs2("Station"), 16, " ")
              co = co + 1
        C1 = C1 + 1
        
        If co >= 60 Then
            Print #1, Space(2) & String(80, "-")
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call FreightDetailHeader1(CStr(sFromDate), CStr(sToDate), CStr(pg1))
            co = 9
        End If
        iCnt = iCnt + 1
        ''Sub Total
        tot7 = tot7 + rs2("bales")
        tot8 = tot8 + rs2("lrfrtamt")
        
        tot5 = tot5 + rs2("bales")
        tot6 = tot6 + rs2("lrfrtamt")
        rs2.MoveNext
    Loop
    Print #1,
    Print #1, Space(2) & Padl("", 8, " ") & Space(23) & Padl(" Sub Total", 9, " ") & Space(3) & Padr("", 16, " ") & Space(2) & Padl(tot7, 8, " ") & Space(2) & Padl(INF(tot8, 2), 12, " ")
    Print #1,
            
    Print #1, Space(2) & String(80, "-")
    Print #1, Space(2) & Padl("", 8, " ") & Space(23) & Padl("Grand Total", 11, " ") & Space(1) & Padr("", 16, " ") & Space(2) & Padl(tot5, 8, " ") & Space(2) & Padl(INF(tot6, 2), 12, " ")
    Print #1, Space(2) & String(80, "=")
    Print #1,
    Print #1,
    Print #1,
    'Call footermod(CInt(1), footerstr, 85)
    Print #1, Chr(12)
    Screen.MousePointer = 0
    Close #1
End If
'Open "c:\carr.bat" For Output As #1
'Print #1, "cd\"
'Print #1, "c:"
'Print #1, "cd\"
'Print #1, "type carr.txt>prn"
'rev.txtfile = "c:\carr.txt"
'rev.Batfile = "c:\carr.bat"
Close #1
'1 = FreeFile
Call KALBATPROCESS("carr")
End Sub
Public Sub FreightDetailHeader(a As String, B As String, pg1 As Integer)
Print #1, Chr(18)
Print #1, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1, Chr(18)
Print #1, Space(2) & Chr(27) & "E" & Padr("Freight Details from", 20, " ") & Chr(27) & "F" & " from " & Padr(Format(a, "dd/mm/yy"), 8, " ") & " to " & Padr(Format(B, "dd/mm/yy"), 8, " ") & Space(11) & Padr(Format(pdate, "dd/mm/yy"), 8, " ") & Space(2) & "Pg. No. :" & Padl(pg1, 3, " ")
Print #1, Space(2) & String(80, "-")
Print #1, Space(2) & Padl("Lot No.", 8, " ") & Space(2) & Padl("Lot Date", 8, " ") & Space(2) & Padr("Supplier Name", 20, " ") & Space(2) & Padr("Lorry Number", 12, " ") & Space(3) & Padr("No of Bales", 12, " ") & Space(1) & Padl("Frt Amount", 12, " ") & Space(2) & Padr("Station", 16, " ")
Print #1, Space(2) & String(80, "-")
co = co + 7
End Sub
Public Sub FreightDetailHeader1(a As String, B As String, pg1 As Integer)
Print #1, Chr(18)
Print #1, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1, Chr(18)
Print #1, Space(2) & Chr(27) & "E" & Padr("Freight Details from", 20, " ") & Chr(27) & "F" & " from " & Padr(Format(a, "dd/mm/yy"), 8, " ") & " to " & Padr(Format(B, "dd/mm/yy"), 8, " ") & Space(11) & Padr(Format(pdate, "dd/mm/yy"), 8, " ") & Space(2) & "Pg. No. :" & Padl(pg1, 3, " ")
Print #1, Space(2) & String(80, "-")
Print #1, Space(2) & Padl(" Transporter Name", 17, " ") & Space(0)
Print #1, Space(2) & Padl("Lot No.", 8, " ") & Space(2) & Padl("Lot Date", 8, " ") & Space(2) & Padr("Supplier Name", 20, " ") & Space(2) & Padr("Lorry Number", 12, " ") & Space(3) & Padr("No of Bales", 12, " ") & Space(1) & Padl("Frt Amount", 12, " ") & Space(2) & Padr("Station", 18, " ")
Print #1, Space(2) & String(80, "-")
co = co + 8
End Sub
