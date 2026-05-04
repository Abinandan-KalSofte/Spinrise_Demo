Attribute VB_Name = "Module4"
Dim rs5 As Recordset
Dim VarName As String
Dim rptv As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14, tot15 As Double
Dim C1 As Integer
Dim Cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s1, s2 As String
Dim z As Integer
Dim a   As Integer
Dim rp As New repform1
'Dim rp1 As New datewisecottonreceiptregister
Dim INVNO   As String
Dim Invdt   As String
Dim pname   As String
Dim Station As String
Dim Rname   As String
Dim Rval    As Double
Dim val1    As Double
Dim value   As Double
Dim totVal  As Double
Dim Totval1 As Double
Dim clobales As Integer
Dim clokgs   As Double
Dim i       As Date
Dim LDT   As String
Dim Idt   As String



Public Sub viscos(U As String, v As String, W As String, X As String, c As String, cat As String)
Dim INVNO   As String
Dim Invdt   As String
Dim pname   As String
Dim stot1, stot2, stot3, stot4, stot5, stot6, stot7 As Double
Dim TEMP, temp1, temp2, temp3, temp4 As String
Dim Total As Double
Dim Rval  As Double
Dim val As Double
Dim Station As String
Dim SNO As Integer
Dim SBale, Sqty  As Double
Dim Gbale, gqty  As Double

Set rep = New ReportView
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring


Set rs5 = New Recordset
If c = "A" Then
    rs5.Open "select a.arrno,a.arrdt as arrdate,a.rebate,a.billno,a.billdt,c.slname,d.varname,e.station,a.bales""Quantity"",a.favaourablewgt,isnull(a.ratecy,0) as rate,((isnull(a.ratecy,0)-isnull(a.rebate,0))*isnull(a.favaourablewgt,0))as value1,0 as value,isnull(a.cashdisper,0) as cessper,isnull(a.cessamt,0)as cessamt,isnull(a.tradedisper,0) as qdper," & _
         " isnull(a.tradedisamt,0) as qdamt,(isnull(a.lrfrtper,0)+isnull(a.rlyfrtper,0))as frtper,(isnull(a.lrfrtamt,0)+isnull(a.rlyfrtamt,0))as frtamt,isnull(a.bedamt,0) as cenvat,isnull(sedamt,0) as edamt,isnull(a.aedamt,0) as sedamt,isnull(a.ratekg,0) as totlandcost,isnull(a.vatamt,0)as vatamt from rm_lot a,fa_slmas c,rm_var d,rm_area e where a.divcode='" & Divcode & "' and a.areacd = e.areacode and a.supcd=c.slcode and  a.varcode = d.varcode And a.Catcd = d.Catcd and " & _
         " a.opflg<>'Y' and a.arrdt between '" & U & "' and '" & v & "' and a.supcd between '" & Trim(W) & "' and '" & Trim(X) & "' order by a.billdt,a.arrno", Cnn, adOpenStatic
Else
    rs5.Open "select a.arrno,a.arrdt as arrdate,a.rebate,a.billno,a.billdt,c.slname,d.varname,e.station,a.bales""Quantity"",a.favaourablewgt,isnull(a.ratecy,0) as rate,((isnull(a.ratecy,0)-isnull(a.rebate,0))*isnull(a.favaourablewgt,0))as value1,0 as value,isnull(a.cashdisper,0) as cessper,isnull(a.cessamt,0)as cessamt,isnull(a.tradedisper,0) as qdper," & _
         " isnull(a.tradedisamt,0) as qdamt,(isnull(a.lrfrtper,0)+isnull(a.rlyfrtper,0))as frtper,(isnull(a.lrfrtamt,0)+isnull(a.rlyfrtamt,0))as frtamt,isnull(a.bedamt,0) as cenvat,isnull(sedamt,0) as edamt,isnull(a.aedamt,0) as sedamt,isnull(a.ratekg,0) as totlandcost,isnull(a.vatamt,0)as vatamt from rm_lot a,fa_slmas c,rm_var d,rm_area e where a.divcode='" & Divcode & "' and a.areacd = e.areacode and a.supcd=c.slcode and  a.varcode = d.varcode And a.Catcd = d.Catcd and " & _
         " a.opflg<>'Y' and a.arrdt between '" & U & "' and '" & v & "' and a.supcd between '" & Trim(W) & "' and '" & Trim(X) & "' and a.catcd='" & Trim(c) & "' order by a.billdt,a.arrno", Cnn, adOpenStatic
End If

        
If rs5.RecordCount = 0 Then MsgBox "No records found": Screen.MousePointer = 0: Exit Sub
Set rptv = New Report.ReportView
a = FreeFile
Close
Close #a
'Open "C:\vis1.TXT" For Output As #a
 Open KALFOLDERDATA & "\vis1.TXT" For Output As #a
pg1 = 1
co = 0: Rval = 0: SNO = 1
'Call viscoshead(CStr(u), CStr(v), pg1)
Call viscoshead(CStr(U), CStr(v), pg1, CStr(cat))
co = 7
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0
stot1 = 0: stot2 = 0: stot3 = 0: stot4 = 0: stot5 = 0: stot6 = 0
shs = 0
ghs = 0


Do While Not rs5.EOF
    If INVNO = rs5("billno") Then
        'Print #a, Space(15);
        Print #a, Space(3) + Padl(" ", 4, " ") + Space(1) + Padr(" ", 10, " ") + Space(1);
    Else
        If co >= PageLen Then
            Print #a, Space(3) & String(223, "-");
            Print #a, Chr(12) + Chr(18)
            pg1 = pg1 + 1
            Call viscoshead(CStr(U), CStr(v), pg1, CStr(cat))
            co = 7
        End If
        
        If i > 1 Then
            Print #a, Space(55) + String(171, "-")
            ''Print #a, Space(60) + Padr("** Sub Total **", 17, " ") + Space(17) & Padl(SBale, 7, " ") + Space(1) + Padl(Format(Sqty, "0.000"), 14, " ") + Space(21) + Padl(INF(Stot1, 2), 12, " ") & Space(2) & Padl(INF(Stot2, 2), 12, " ") & Space(2) & Padl(INF(Stot3, 2), 12, " ") & Space(2) & Padl(INF(Stot4, 2), 12, " ") & Space(2) & Padl(INF(Stot5, 2), 12, " ") & Space(2) & Padl(INF(Stot6, 2), 12, " ")
            Print #a, Space(59) + Padr("** Sub Total **", 17, " ") + Space(1) + Padl(SBale, 5, " ") + Space(1) + Padl(Format(Sqty, "0.000"), 13, " ") + Space(21) + Padl(INF(stot1, 2), 15, " ") + Space(1) + Padl(INF(stot2, 2), 13, " ") + Space(1) + Padl(INF(stot3, 2), 11, " ") + Space(1) + Padl(INF(stot4, 2), 11, " ") + Space(1) + Padl(INF(stot5, 2), 13, " ") + Space(1) + Padl(INF(stot6, 2), 16, " ")
            Print #a, Space(55) + String(171, "-")
            co = co + 3
        End If
        Print #a, Space(3) + Padl(SNO, 4, " ") + Space(1) + Padr(rs5("billno"), 10, " ") + Space(1);
        If IsNull(rs5("BillNo")) Then
        INVNO = ""
        Else
        INVNO = rs5("billno")
        End If
        Invdt = ""
        pname = ""
        Station = ""
    End If
    stot1 = 0: stot2 = 0: stot3 = 0: stot4 = 0: stot5 = 0: stot6 = 0: stot7 = 0
    i = 0
    If Invdt = rs5("billdt") Then
        Print #a, Space(9);
    Else
        Print #a, Padr(Format(rs5("billdt"), "dd-mm-yy"), 8, " ") + Space(1);
        Invdt = rs5("billdt")
    End If
    
    If pname = rs5("slname") Then
        Print #a, Space(31);
    Else
        Print #a, Padr(rs5("slname"), 30, " ") + Space(1);
        pname = rs5("slname")
    End If
    
    If Station = rs5("station") Then
        Print #a, Space(18);
    Else
        Print #a, Padr(rs5("Station"), 17, " ") + Space(1);
        Station = rs5("station")
    End If
    
    
    Set rst = New Recordset
    rst.Open "select ratekg,value from rm_cont a,rm_rateunit b where a.rateunit=b.unitname and contno in (select distinct contno from rm_arrival where arrno=" & rs5("arrno") & " and arrdate='" & Format(rs5("arrdate"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "') and divcode='" & Divcode & "' and   contdt in (select distinct contdt from rm_arrival where arrno=" & rs5("arrno") & " and arrdate='" & Format(rs5("arrdate"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "')", DB, adOpenStatic
    
    If rst.RecordCount > 0 Then
        Rval = IIf(IsNull(rs5("rate")), 0, rs5("rate")) / IIf(IsNull(rst("value")), 0, rst("value"))
        val = rst("ratekg") * IIf(IsNull(rs5("favaourablewgt")), 0, rs5("favaourablewgt"))
    Else
        val = IIf(IsNull(rs5("favaourablewgt")), 0, rs5("favaourablewgt"))
    End If
    
   ' val = Round((Rval - IIf(IsNull(rs5("rebate")), 0, rs5("rebate"))) * IIf(IsNull(rs5("favaourablewgt")), 0, rs5("favaourablewgt")))

    Total = Round(val + (rs5("cenvat") + rs5("edamt") + rs5("sedamt") + rs5("vatamt")))
    Print #a, Padr(rs5("varname"), 15, " ") + Space(3) + Padl(rs5("quantity"), 5, " ") + Space(1) + Padl(Format(rs5("favaourablewgt"), "0.000"), 13, " ") + Space(1) + Padl(INF(Rval, 2), 8, " ") + Space(1) + Padl(rs5("Rebate"), 10, " ") + Space(1) + Padl(INF(val, 2), 15, " ") + Space(1) + Padl(INF(rs5("cenvat"), 2), 13, " ") + Space(1) + Padl(INF(rs5("edamt"), 2), 11, " ") + Space(1) + Padl(INF(rs5("sedamt"), 2), 11, " ") + Space(1) + Padl(INF(rs5("vatamt"), 2), 13, " ") + Space(1) + Padl(INF(Total, 2), 16, " ") + Space(1) + Padl(INF(rs5("totlandcost"), 3), 8, " ")
    co = co + 1
    i = i + 1
    SNO = SNO + 1
    Print #a,
    co = co + 1
    If co >= PageLen Then
        Print #a, Space(3) & String(223, "-");
        Print #a, Chr(12) + Chr(18)
        pg1 = pg1 + 1
        Call viscoshead(CStr(U), CStr(v), pg1, CStr(cat))
        co = 7
    End If
    
    ''Sub Total
    SBale = SBale + rs5("quantity")
    Sqty = Sqty + rs5("favaourablewgt")
    stot1 = stot1 + val
    stot2 = stot2 + rs5("cenvat")
    stot3 = stot3 + rs5("edamt")
    stot4 = stot4 + rs5("sedamt")
    stot5 = stot5 + IIf(IsNull(rs5("vatamt")), 0, rs5("vatamt"))
    stot6 = stot6 + Total
    stot7 = stot7 + rs5("totlandcost")
    
    ''Grand total
    Gbale = Gbale + rs5("quantity")
    gqty = gqty + rs5("favaourablewgt")
    tot1 = tot1 + val
    tot2 = tot2 + rs5("cenvat")
    tot3 = tot3 + rs5("edamt")
    tot4 = tot4 + rs5("sedamt")
    tot5 = tot5 + IIf(IsNull(rs5("vatamt")), 0, rs5("vatamt"))
    tot6 = tot6 + Total
    tot7 = tot7 + rs5("totlandcost")
    rs5.MoveNext
Loop
If i > 1 Then
   Print #a, Space(55) + String(171, "-")
   ''Print #a, Space(59) + Padr("** Sub Total **", 17, " ") + Space(17) & Padl(SBale, 7, " ") + Space(1) + Padl(Format(Sqty, "0.000"), 14, " ") + Space(21) + Padl(INF(Stot1, 2), 12, " ") & Space(2) & Padl(INF(Stot2, 2), 12, " ") & Space(2) & Padl(INF(Stot3, 2), 11, " ") & Space(2) & Padl(INF(Stot4, 2), 11, " ") & Space(2) & Padl(INF(Stot5, 2), 12, " ") & Space(2) & Padl(INF(Stot6, 2), 12, " ")
               Print #a, Space(59) + Padr("** Sub Total **", 17, " ") + Space(1) + Padl(SBale, 5, " ") + Space(1) + Padl(Format(Sqty, "0.000"), 13, " ") + Space(21) + Padl(INF(stot1, 2), 15, " ") + Space(1) + Padl(INF(stot2, 2), 13, " ") + Space(1) + Padl(INF(stot3, 2), 11, " ") + Space(1) + Padl(INF(stot4, 2), 11, " ") + Space(1) + Padl(INF(stot5, 2), 13, " ") + Space(1) + Padl(INF(stot6, 2), 16, " ")
   Print #a, Space(55) + String(171, "-")
End If

Print #a, Space(3) & String(223, "-")
Print #a, Space(59) + Chr(27) + "E" + Padr("** Grand Total **", 17, " ") + Space(17) + Padl(Gbale, 7, " ") + Space(1) + Padl(Format(gqty, "0.000"), 13, " ") + Space(21) & Padl(INF(tot1, 2), 15, " ") & Space(1) & Padl(INF(tot2, 2), 13, " ") & Space(1) & Padl(INF(tot3, 2), 11, " ") & Space(1) & Padl(INF(tot4, 2), 11, " ") & Space(1) & Padl(INF(tot5, 2), 13, " ") & Space(1) & Padl(INF(tot6, 2), 16, " ") + Chr(27) + "F"
''Print #a, Space(3) + Padl("S.No", 4, " ") + Space(1) + Padr("Inv.No", 10, " ") + Space(1) + Padr("Date", 8, " ") + Space(1) + Padr("Party Name", 30, " ") + Space(1) + Padr("Station", 17, " ") + Space(1) + Padr("Quality", 17, " ") + Space(1) + Padl("Bales", 5, " ") + Space(1) + Padl("Quantity", 14, " ") + Space(1) + Padl("Rate", 8, " ") + Space(1) + Padl("Rebate", 10, " ") + Space(1) + Padl("Value", 12, " ") + Space(1) + Padl("8%", 13, " ") + Space(1) + Padl("2%", 11, " ") + Space(1) + Padl("1%", 11, " ") + Space(1) + Padl("4%", 13, " ") + Space(1) +Padl(INF(tot6, 2), 12, " ")
Print #a, Space(3) & String(223, "-")
Print #a, Chr(12) + Chr(18)
 Call footermod(CInt(a), rp1.UserFooter1.SelectedStr, 85)
Close #a
a = FreeFile
'Open "c:\vis1.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type vis1.TXT>prn"
'Close #a
'RPTV.txtfile = "c:\vis1.TXT"
'RPTV.Batfile = "c:\vis1.bat"
Call KALBATPROCESS("vis1")
Screen.MousePointer = 0

End Sub

Public Sub viscoshead(U As String, v As String, pg1 As Integer, Category As String)
Print #a,
Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
Print #a, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
''Print #a, Space(3) + Chr(27) + "E" + "Raw Material Receipt Register Viscose From" + Space(1) + Padr(Format(u, "dd/mm/yy"), 8, " ") + Space(1) + "To" + Space(1) + Format(v, "dd/mm/yy") + Chr(27) + "F" + Space(142) + Format(SR, "dd/mm/yy") + Space(3) + "Pg. :" + Padl(CStr(pg1), 2, " ")
Print #a, Space(3) + Chr(27) + "E" + "Raw Material Receipt List Viscose From" + Space(1) + Padr(Format(U, "dd/mm/yy"), 8, " ") + Space(1) + "To" + Space(1) + Format(v, "dd/mm/yy") + Space(5) + "Category : " + Padr(CStr(Category), 25, " ") + Chr(27) + "F" + Space(142 - 47) + Format(SR, "dd/mm/yy") + Space(3) + "Pg. :" + Padl(CStr(pg1), 2, " ")
Print #a, Space(3) + String(223, "-")
Print #a, Space(3) + Padl(" ", 4, " ") + Space(1) + Padr(" ", 10, " ") + Space(1) + Padr(" ", 8, " ") + Space(1) + Padr(" ", 30, " ") + Space(1) + Padr(" ", 17, " ") + Space(1) + Padr(" ", 17, " ") + Space(1) + Padl(" ", 5, " ") + Space(1) + Padl(" ", 13, " ") + Space(1) + Padl(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 15, " ") + Space(1) + Padl("Cenvat", 13, " ") + Space(1) + Padl("Edu Cess", 11, " ") + Space(1) + Padl("HSC.Cess", 11, " ") + Space(1) + Padl("VAT", 13, " ") + Space(1) + Padl("Total", 16, " ") + Space(1) + Padl("Landed", 8, " ")
Print #a, Space(3) + Padl("S.No", 4, " ") + Space(1) + Padr("Inv.No", 10, " ") + Space(1) + Padr("Date", 8, " ") + Space(1) + Padr("Party Name", 30, " ") + Space(1) + Padr("Station", 17, " ") + Space(1) + Padr("Quality", 17, " ") + Space(1) + Padl("Bales", 5, " ") + Space(1) + Padl("Quantity", 13, " ") + Space(1) + Padl("Rate", 8, " ") + Space(1) + Padl("Rebate", 10, " ") + Space(1) + Padl("Value", 15, " ") + Space(1) + Padl("8%", 13, " ") + Space(1) + Padl("2%", 11, " ") + Space(1) + Padl("1%", 11, " ") + Space(1) + Padl("4%", 13, " ") + Space(1) + Padl("Value", 16, " ") + Space(1) + Padl("Cost", 8, " ")
Print #a, Space(3) & String(223, "-")
End Sub

Public Sub Polysterwise(U As String, v As String, W As String, X As String, z As String, Category As String)
Dim INVNO   As String
Dim Invdt   As String
Dim pname   As String
Dim Station As String
Dim Rname   As String
Dim Rval    As Double
Dim val1    As Double
Dim value   As Double
Dim totVal  As Double
Dim Totval1 As Double
Dim SNO     As Integer

Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rptv = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\Ply.TXT" For Output As #a

 Open KALFOLDERDATA & "\Ply.TXT" For Output As #a
pg1 = 1
co = 0: SNO = 1
Call Polysterhead(CStr(U), CStr(v), pg1, CStr(Category))
co = 8
val1 = 0: totVal = 0: Totval1 = 0: Rval = 0
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0: tot13 = 0

Set rs5 = New Recordset
If z = "A" Then
    rs5.Open "select a.arrno,a.arrdt""arrdate"",a.billno,a.billdt,c.slname,d.varname,e.station,a.bales""quantity"",a.netwt,isnull(a.ratecy,0) as rate,isnull(a.cashdisper,0) as cessper," & _
        "isnull(a.cashdisamt,0) as cessamt,isnull(a.tradedisper,0) as qdper,isnull(a.tradedisamt,0) as qdamt," & _
        "(isnull(a.lrfrtper,0)+isnull(a.rlyfrtper,0))as frtper,(isnull(a.lrfrtamt,0)+isnull(a.rlyfrtamt,0)) as frtamt,isnull(a.bedamt,0) as cenvat," & _
        "isnull(sedamt,0) as edamt,isnull(a.aedamt,0) as sedamt,isnull(a.ratekg,0) as totlandcost from rm_lot a,fa_slmas c,rm_var d,rm_area e " & _
        "where a.divcode='" & Divcode & "' and " & _
        " a.supcd=c.slcode and " & _
        " a.areacd = e.areacode and a.varcode = d.varcode And a.Catcd = d.Catcd " & _
        " and a.opflg<>'Y' and a.arrdt between '" & U & "' and '" & v & "' and a.supcd between '" & W & "' and '" & X & "' order by a.arrno,a.arrdt", Cnn, adOpenStatic
Else
    rs5.Open "select a.arrno,a.arrdt""arrdate"",a.billno,a.billdt,c.slname,d.varname,e.station,a.bales""quantity"",a.netwt,isnull(a.ratecy,0) as rate,isnull(a.cashdisper,0) as cessper," & _
        "isnull(a.cashdisamt,0) as cessamt,isnull(a.tradedisper,0) as qdper,isnull(a.tradedisamt,0) as qdamt," & _
        "(isnull(a.lrfrtper,0)+isnull(a.rlyfrtper,0))as frtper,(isnull(a.lrfrtamt,0)+isnull(a.rlyfrtamt,0)) as frtamt,isnull(a.bedamt,0) as cenvat," & _
        "isnull(sedamt,0) as edamt,isnull(a.aedamt,0) as sedamt,isnull(a.ratekg,0) as totlandcost from rm_lot a,fa_slmas c,rm_var d,rm_area e " & _
        "where a.divcode='" & Divcode & "' and " & _
        " a.supcd=c.slcode and " & _
        " a.areacd = e.areacode and a.varcode = d.varcode And a.Catcd = d.Catcd " & _
        " and a.opflg<>'Y' and a.arrdt between '" & U & "' and '" & v & "' and a.supcd between '" & W & "' and '" & X & "' and a.catcd='" & z & "' order by a.arrno,a.arrdt", Cnn, adOpenStatic
End If
        
If rs5.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Do While Not rs5.EOF
    
    If INVNO = rs5("billno") Then
        Print #a, Space(10);
    Else
        Print #a, Space(3) + Padl(SNO, 4, " ") + Space(1) + Padr(rs5("billno"), 10, " ") + Space(1);
        INVNO = rs5("billno")
        Invdt = ""
        pname = ""
        Station = ""
    End If
    
    If Invdt = rs5("billdt") Then
        Print #a, Space(9);
    Else
        Print #a, Padr(Format(rs5("billdt"), "dd/mm/yy"), 8, " ") + Space(1);
        Invdt = rs5("billdt")
    End If
    
    If pname = rs5("slname") Then
        Print #a, Space(26);
    Else
        Print #a, Padr(rs5("slname"), 25, " ") + Space(1);
        pname = rs5("slname")
    End If
    
    If Station = rs5("station") Then
        Print #a, Space(11);
    Else
        Print #a, Padr(rs5("station"), 10, " ") + Space(1);
        Station = rs5("station")
    End If
    
    Set rst = New Recordset
    rst.Open "select value from rm_cont a,rm_rateunit b where a.rateunit=b.unitname and contno=(select distinct contno from rm_arrival where arrno=" & rs5("arrno") & " and arrdate='" & Format(rs5("arrdate"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "') and divcode='" & Divcode & "' and   contdt=(select distinct contdt from rm_arrival where arrno=" & rs5("arrno") & " and arrdate='" & Format(rs5("arrdate"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "')", DB, adOpenStatic
    
    Rval = IIf(IsNull(rs5("rate")), 0, rs5("rate")) / IIf(IsNull(rst("value")), 0, rst("value"))
    
    val1 = Round(IIf(IsNull(rs5("netwt")), 0, rs5("netwt")) * Rval)
    totVal = Round(val1 - (rs5("cessamt") + rs5("qdamt") + rs5("frtamt")))
    Totval1 = Round(totVal + (rs5("cenvat") + rs5("edamt") + rs5("sedamt") + rs5("frtamt")))
    Print #a, Padr(rs5("varname"), 13, " ") + Space(1) + Padl(rs5("quantity"), 5, " ") + Space(1) + Padl(Format(rs5("netwt"), "0.0"), 9, " ") + Space(1) + Padl(INF(Rval, 2), 6, " ") + Space(1) + Padl(INF(val1, 0), 10, " ") + Space(1) + Padl(Format(rs5("cessper"), "0.0"), 5, " ") + Space(1) + Padl(Round(rs5("cessamt")), 8, " ") + Space(1) + Padl(Format(rs5("qdper"), "0.0"), 5, " ") + Space(1) + Padl(Round(rs5("qdamt")), 10, " ") + Space(1) + Padl(Format(rs5("frtper"), "0.00"), 5, " ") + Space(1) + Padl(Round(rs5("frtamt")), 10, " ") + Space(1) + Padl(INF(totVal, 0), 10, " ") + Space(1) + Padl(Round(rs5("cenvat")), 9, " ") + Space(1) + Padl(Round(rs5("edamt")), 8, " ") + Space(1) + Padl(Round(rs5("sedamt")), 8, " ") + Space(1) + Padl(Round(rs5("frtamt")), 11, " ") + Space(1) + Padl(INF(Totval1, 0), 12, " ") + Space(1) + Padl(INF(rs5("totlandcost"), 0), 7, " ")
    co = co + 1
    SNO = SNO + 1
    
    ''Grand Total
    tot1 = tot1 + rs5("quantity")
    tot2 = tot2 + rs5("netwt")
    tot3 = tot3 + val1
    tot4 = tot4 + rs5("cessamt")
    tot5 = tot5 + rs5("qdamt")
    tot6 = tot6 + rs5("frtamt")
    tot7 = tot7 + totVal
    tot8 = tot8 + rs5("cenvat")
    tot9 = tot9 + rs5("edamt")
    tot10 = tot10 + rs5("sedamt")
    tot11 = tot11 + rs5("frtamt")
    tot12 = tot12 + Totval1
    
    If co >= PageLen Then
        Print #a, Space(3) & String(230, "-");
        Print #a, Chr(12) + Chr(18)
        pg1 = pg1 + 1
        Call Polysterhead(CStr(U), CStr(v), pg1, CStr(Category))
        co = 8
    End If
    Print #a,
    co = co + 1
    If co >= PageLen Then
        Print #a, Space(3) & String(230, "-");
        Print #a, Chr(12) + Chr(18)
        pg1 = pg1 + 1
        Call Polysterhead(CStr(U), CStr(v), pg1, CStr(Category))
        co = 8
    End If
    
    rs5.MoveNext
        
Loop
    
If co >= PageLen Then
    Print #a, Space(3) & String(230, "-")
    Print #a, Chr(12) + Chr(18)
    pg1 = pg1 + 1
    Call Polysterhead(CStr(U), CStr(v), pg1, CStr(Category))
    co = 8
End If

Print #a, Space(3) & String(230, "-")
Print #a, Space(23) + Chr(27) + "E" + "  **  Grand Total  **  " + Space(33) & Padl(Round(tot1), 5, " ") & Space(1) & Padl(Format(tot2, "0.0"), 9, " ") & Space(3) & Padl(INF(Round(tot3), 0), 15, " ") & Space(2) & Padl(Round(tot4), 13, " ") & Space(2) & Padl(Round(tot5), 15, " ") & Space(2) & Padl(Round(tot6), 15, " ") & Space(1) & Padl(INF(Round(tot7), 0), 10, " ") & Space(1) & Padl(Round(tot8), 9, " ") & Space(1) & Padl(Round(tot9), 8, " ") & Space(1) & Padl(Round(tot10), 8, " ") & Space(1) & Padl(Round(tot11), 11, " ") & Space(1) & Padl(INF(tot12, 0), 12, " ") + Chr(27) + "F"
Print #a, Space(3) & String(230, "-")
Print #a, Chr(12) + Chr(18)
Close #a
a = FreeFile
'Open "c:\Ply.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type Ply.TXT>prn"
'Close #a
'RPTV.txtfile = "c:\Ply.TXT"
'RPTV.Batfile = "c:\Ply.bat"
a = FreeFile
Call KALBATPROCESS("Ply")
Screen.MousePointer = 0
End Sub

Public Sub Polysterhead(U As String, v As String, pg1 As Integer, Category As String)

Print #a,
Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
Print #a, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
''Print #a, Space(3) + Chr(27) + "E" + "Raw Material Receipt Register Polyster" + Chr(27) + "F" + Space(1) + "From" + Space(1) + Padr(Format(u, "dd/mm/yy"), 8, " ") + Space(1) + "To" + Space(1) + Format(v, "dd/mm/yy") + Space(148) + Format(SR, "dd/mm/yy") + Space(3) + "Pg. :" + Padl(CStr(pg1), 2, " ")
Print #a, Space(3) + Chr(27) + "E" + "Raw Material Receipt List Polyster" + Chr(27) + "F" + Space(1) + "From" + Space(1) + Padr(Format(U, "dd/mm/yy"), 8, " ") + Space(1) + "To" + Space(1) + Format(v, "dd/mm/yy") + Space(5) + "Category : " & Padr(Category, 25, " ") + Space(148 - 48) + Format(SR, "dd/mm/yy") + Space(3) + "Pg. :" + Padl(CStr(pg1), 2, " ")
Print #a, Space(3) + String(230, "-")
Print #a, Space(3) + Padl(" ", 4, " ") + Space(1) + Padr(" ", 10, " ") + Space(1) + Padr(" ", 8, " ") + Space(1) + Padr(" ", 25, " ") + Space(1) + Padr(" ", 10, " ") + Space(1) + Padr(" ", 15, " ") + Space(1) + Padl(" ", 5, " ") + Space(1) + Padl(" ", 7, " ") + Space(1) + Padl(" ", 6, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padl("Less", 5, " ") + Space(1) + Padl("CD", 8, " ") + Space(1) + Padl("Less", 5, " ") + Space(1) + Padl("QD", 10, " ") + Space(1) + Padl("Less", 5, " ") + Space(1) + Padl("Freight", 10, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 9, " ") + Space(1) + Padl("Edu Cess", 8, " ") + Space(1) + Padl("HSC.Cess", 8, " ") + Space(1) + Padl("ADD", 11, " ") + Space(1) + Padl("Total", 12, " ") + Space(1) + Padl("Landed", 7, " ")
Print #a, Space(3) + Padl("S.No", 4, " ") + Space(1) + Padr("Inv.No", 10, " ") + Space(1) + Padr("Date", 8, " ") + Space(1) + Padr("Party Name", 25, " ") + Space(1) + Padr("Station", 10, " ") + Space(1) + Padr("Quality", 13, " ") + Space(1) + Padl("Bales", 5, " ") + Space(1) + Padl("Qty", 9, " ") + Space(1) + Padl("Rate", 6, " ") + Space(1) + Padl("Value", 10, " ") + Space(1) + Padl("CD", 5, " ") + Space(1) + Padl("Amount", 8, " ") + Space(1) + Padl("QD", 5, " ") + Space(1) + Padl("Amount", 10, " ") + Space(1) + Padl("Frt", 5, " ") + Space(1) + Padl("Amount", 10, " ") + Space(1) + Padl("Value", 10, " ") + Space(1) + Padl("Cenvat", 9, " ") + Space(1) + Padl("Amount", 8, " ") + Space(1) + Padl("Amount", 8, " ") + Space(1) + Padl("Freight", 11, " ") + Space(1) + Padl("Value", 12, " ") + Space(1) + Padl("Cost", 7, " ")
Print #a, Space(3) & String(230, "-")

End Sub

Public Sub StkstmtPolyster(F_Date As String, T_Date As String, SR As String, vr As String, pRecType As String, footerstr As String)

'Dim INVNO   As String
'Dim Invdt   As String
'Dim pname   As String
'Dim Station As String
'Dim Rname   As String
'Dim Rval    As Double
'Dim val1    As Double
'Dim Value   As Double
'Dim totVal  As Double
'Dim Totval1 As Double
'Dim clobales As Integer
'Dim clokgs   As Double
'Dim I       As Date
'Dim LDT   As String
'Dim Idt   As String

tot1 = 0: tot2 = 0
vrectype = Trim(Left(pRecType, 3))
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rptv = New Report.ReportView
Close #a
a = FreeFile
Close #a
'Open "C:\StkPly.TXT" For Output As #a
 Open KALFOLDERDATA & "\StkPly.TXT" For Output As #a
pg1 = 1
co = 0
Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
co = 9
If SR = "A" Then
    Call AllStkstmtPolyster(F_Date, T_Date, SR, vr, pRecType, footerstr)
    Exit Sub
End If
Set rs5 = New Recordset

If vr = "ALL" Then
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    Else
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    End If
Else
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "' and b.varcode ='" & vr & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and b.varcode='" & vr & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.varcode='" & vr & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and b.varcode='" & vr & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    Else
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "' and b.varcode ='" & vr & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and b.varcode='" & vr & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.varcode='" & vr & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and b.varcode='" & vr & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    End If
End If
     

    If rs5.RecordCount > 0 Then
        Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr(" ", 26, " ") + Space(1) + Padl(" ", 6, " ") + Space(1) + Padl(INF(rs5("recbales"), 0), 10, " ") + Space(2) + Padl(INF(rs5("recKgs"), 2), 16, " ") + Space(2) + Padl(INF(rs5("IssBales"), 0), 10, " ") + Space(1) + Padl(INF(rs5("IssKgs"), 2), 13, " ") + Space(2) + Padl(INF(rs5("Clobales"), 0), 10, " ") + Space(4) + Padl(INF(rs5("clokgs"), 2), 15, " ") + Chr(27) + "F"
        co = co + 1
        clobales = rs5("clobales")
        clokgs = rs5("clokgs")
    Else
        Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("Opening Balance On " & Format(F_Date, "dd/mm/yy"), 37, " ") + Space(1) + Padl(" ", 6, " ") + Space(2) + Padl(" ", 16, " ") + Space(2) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 13, " ") + Space(2) + "         0" + Space(4) + "           0.00" + Chr(27) + "F"
        co = co + 1
        clobales = 0
        clokgs = 0
    End If
    
    If co >= PageLen Then
        Print #a, Space(5) & String(140, "-")
        Print #a, Chr(12) + Chr(18)
        pg1 = pg1 + 1
        Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
        co = 9
    End If
    
    For i = F_Date To T_Date
        If i <> F_Date Then
            Set rsg = New Recordset
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "a.LotType"
                Else
                    tmptypestr = "a.TransferType"
                End If
                rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "'", DB, adOpenStatic
            Else
                rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
            End If
            While Not rsg.EOF
                clobales = clobales + rsg("bales")
                clokgs = clokgs + rsg("NETWT")
                If LDT = rsg("lotdt") Then
                    Print #a, Space(14);
                Else
                    Print #a, Space(5) + Padr(Format(rsg("LOTDT"), "DD/MM/YY"), 8, " ") + Space(1);
                    LDT = rsg("lotdt")
                End If
                Print #a, Padl(rsg("BILLNO"), 10, " ") + Space(1) + Padr(rsg("SLNAME"), 26, " ") + Space(1) + Padl(rsg("LOTNO"), 6, " ") + Space(1) + Padl(INF(rsg("BALES"), 0), 10, " ") + Space(2) + Padl(INF(rsg("NETWT"), 2), 16, " ") + Space(2) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 13, " ") + Space(2) + Padl(clobales, 10, " ") + Space(4) + Padl(INF(clokgs, 2), 15, " ")
                co = co + 1
                rsg.MoveNext
            Wend

            If co >= PageLen Then
                Print #a, Space(5) & String(140, "-")
                Print #a, Chr(12) + Chr(18)
                pg1 = pg1 + 1
                Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
                co = 9
            End If

            Set rsg = New Recordset
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "c.LotType"
                Else
                    tmptypestr = "c.TransferType"
                End If
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-m-dd") & "' and a.varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            Else
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-m-dd") & "' and a.varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "'  GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            End If
            'rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B where A.DOCNO=B.DOCNO AND A.DOCDT=B.DOCDT AND  A.ISSTYPE=B.ISSTYPE AND A.docdt='" & Format(i, "yyyy-m-dd") & "' and varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "' GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, adOpenStatic
            While Not rsg.EOF
                clobales = clobales - rsg("bales")
                clokgs = clokgs - rsg("NETWT")
                If Idt = rsg("docdt") Then
                    Print #a, Space(14);
                Else
                    Print #a, Space(5) + Padr(Format(rsg("docdt"), "DD/MM/YY"), 8, " ") + Space(1);
                    Idt = rsg("docdt")
                End If
                Print #a, Padl(rsg("docNO"), 10, " ") + Space(1) + Padr(" ", 26, " ") + Space(1) + Padl(rsg("ordno"), 6, " ") + Space(1) + Padl(" ", 10, " ") + Space(2) + Padl(" ", 16, " ") + Space(2) + Padl(INF(rsg("bales"), 0), 10, " ") + Space(1) + Padl(INF(rsg("netwt"), 2), 13, " ") + Space(2) + Padl(clobales, 10, " ") + Space(4) + Padl(INF(clokgs, 2), 15, " ")
                co = co + 1
                rsg.MoveNext
            Wend
        End If
        tot1 = tot1 + clobales
        tot2 = tot2 + clokgs
    Next
    
If co >= PageLen Then
    Print #a, Space(5) & String(140, "-")
    Print #a, Chr(12) + Chr(18)
    pg1 = pg1 + 1
    Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
    co = 9
End If
Print #a, Space(5) & String(140, "-")
Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("Closing Balance On " & Format(T_Date, "dd/mm/yy"), 37, " ") + Space(1) + Padl(" ", 6, " ") + Space(2) + Padl(" ", 16, " ") + Space(2) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 13, " ") + Space(2) + Padl(tot1, 10, " ") + Space(4) + Padl(INF(tot2, 2), 15, " ") + Chr(27) + "F"
Print #a, Space(5) & String(140, "-")

Print #a, Chr(12) + Chr(18)
 Call footermod(CInt(a), footerstr, 85)
Close #a
a = FreeFile
'Open "c:\StkPly.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type StkPly.TXT>prn"
'Close #a
'RPTV.txtfile = "c:\StkPly.TXT"
'RPTV.Batfile = "c:\StkPly.bat"
Call KALBATPROCESS("StkPly")
Screen.MousePointer = 0
End Sub

Public Sub StkPolysterhead(U As String, v As String, pg1 As Integer, vr As String)
Dim Rs  As Recordset

Set Rs = New Recordset

Print #a,
Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
Print #a, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #a, Space(5) + Chr(27) + "E" + "Raw Material Item Ledger" + Chr(27) + "F" + Space(1) + "From" + Space(1) + Padr(Format(U, "dd/mm/yy"), 8, " ") + Space(1) + "To" + Space(1) + Format(v, "dd/mm/yy") + Space(72) + Format(SR, "dd/mm/yy") + Space(3) + "Pg. :" + Padl(CStr(pg1), 2, " ")
If vr = "ALL" Then
    Rs.Open "Select varname from rm_var where varcode='" & vr & "'", DB, adOpenStatic
Else
    Rs.Open "Select varname from rm_var where varcode='" & vr & "'", DB, adOpenStatic
End If
    If Not Rs.EOF Then
        Print #a, Space(5) + Padr(Rs("varname"), 25, " ")
    Else
'        MsgBox "No Records Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
        Print #a, Space(5) + Padr("ALL", 25, " ")
    End If
Print #a, Space(5) + String(140, "-")
Print #a, Space(5) + Padr(" ", 8, " ") + Space(1) + Padl(" ", 6, " ") + Space(1) + Padr(" ", 30, " ") + Space(1) + Padl(" ", 6, " ") + Space(1) + Padr("<---------Received---------->", 29, " ") + Space(1) + Padr("<---------Issue--------->", 26, " ") + Space(1) + Padr("<------Closing Balance------>", 29, " ")
Print #a, Space(5) + Padr("Date", 8, " ") + Space(1) + Padl("Inv/Iss.No", 10, " ") + Space(1) + Padr("Party Name", 26, " ") + Space(1) + Padl("Lot No", 6, " ") + Space(1) + Padl("Bales", 10, " ") + Space(2) + Padl("Kgs", 16, " ") + Space(2) + Padl("Bales", 10, " ") + Space(1) + Padl("Kgs", 13, " ") + Space(2) + Padl("Bales", 10, " ") + Space(4) + Padl("Kgs", 15, " ")
Print #a, Space(5) & String(140, "-")

End Sub
Public Sub AllStkstmtPolyster(F_Date As String, T_Date As String, SR As String, vr As String, pRecType As String, footerstr As String)
Set rs5 = New Recordset
vrectype = Trim(Left(pRecType, 3))
If vr = "ALL" Then
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "(b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and " & tmptypestr & "='" & vrectype & "' and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and " & tmptypestr & "='" & vrectype & "'  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'" & _
            " and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "'  and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    Else
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "')  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "'" & _
            "  and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  and b.divcode='" & Divcode & "'  group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    End If
Else
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.varcode ='" & vr & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and " & tmptypestr & "='" & vrectype & "'  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.varcode='" & vr & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and " & tmptypestr & "='" & vrectype & "' and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.varcode='" & vr & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'" & _
            "  and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and b.varcode='" & vr & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "' and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    Else
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.varcode ='" & vr & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "')  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.varcode='" & vr & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.varcode='" & vr & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "'" & _
            " and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.varcode='" & vr & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    End If
End If
     

    If rs5.RecordCount > 0 Then
        Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr(" ", 26, " ") + Space(1) + Padl(" ", 6, " ") + Space(1) + Padl(INF(rs5("recbales"), 0), 10, " ") + Space(2) + Padl(INF(rs5("recKgs"), 2), 16, " ") + Space(2) + Padl(INF(rs5("IssBales"), 0), 10, " ") + Space(1) + Padl(INF(rs5("IssKgs"), 2), 13, " ") + Space(2) + Padl(INF(rs5("Clobales"), 0), 10, " ") + Space(4) + Padl(INF(rs5("clokgs"), 2), 15, " ") + Chr(27) + "F"
        co = co + 1
        clobales = rs5("clobales")
        clokgs = rs5("clokgs")
    Else
        Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("Opening Balance On " & Format(F_Date, "dd/mm/yy"), 37, " ") + Space(1) + Padl(" ", 6, " ") + Space(2) + Padl(" ", 16, " ") + Space(2) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 13, " ") + Space(2) + "         0" + Space(4) + "           0.00" + Chr(27) + "F"
        co = co + 1
        clobales = 0
        clokgs = 0
    End If
    
    If co >= PageLen Then
        Print #a, Space(5) & String(140, "-")
        Print #a, Chr(12) + Chr(18)
        pg1 = pg1 + 1
        Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
        co = 9
    End If
    
    For i = F_Date To T_Date
        'If i <> F_Date Then
            Set rsg = New Recordset
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "a.LotType"
                Else
                    tmptypestr = "a.TransferType"
                End If
                rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "'", DB, adOpenStatic
            Else
                If vr = "ALL" Then
                    rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                Else
                    rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                End If
            End If
'            If rsg.RecordCount = 0 Then
'                clobales = 0
'                clokgs = 0
'            End If
            While Not rsg.EOF
                clobales = clobales + rsg("bales")
                clokgs = clokgs + rsg("NETWT")
                If LDT = rsg("lotdt") Then
                    Print #a, Space(14);
                Else
                    Print #a, Space(5) + Padr(Format(rsg("LOTDT"), "DD/MM/YY"), 8, " ") + Space(1);
                    LDT = rsg("lotdt")
                End If
                Print #a, Padl(rsg("BILLNO"), 10, " ") + Space(1) + Padr(rsg("SLNAME"), 26, " ") + Space(1) + Padl(rsg("LOTNO"), 6, " ") + Space(1) + Padl(INF(rsg("BALES"), 0), 10, " ") + Space(2) + Padl(INF(rsg("NETWT"), 2), 16, " ") + Space(2) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 13, " ") + Space(2) + Padl(clobales, 10, " ") + Space(4) + Padl(INF(clokgs, 2), 15, " ")
                co = co + 1
                rsg.MoveNext
            Wend

            If co >= PageLen Then
                Print #a, Space(5) & String(140, "-")
                Print #a, Chr(12) + Chr(18)
                pg1 = pg1 + 1
                Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
                co = 9
            End If

            Set rsg = New Recordset
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "c.LotType"
                Else
                    tmptypestr = "c.TransferType"
                End If
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-mm-dd") & "' and a.varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "' and " & tmptypestr & "='" & vrectype & "' GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            Else
            If vr = "ALL" Then
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "'  and c.lotyear='" & Year(yfdate) & "' GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            Else
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-mm-dd") & "' and a.varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "'  GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            End If
            End If
            'rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B where A.DOCNO=B.DOCNO AND A.DOCDT=B.DOCDT AND  A.ISSTYPE=B.ISSTYPE AND A.docdt='" & Format(i, "yyyy-m-dd") & "' and varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "' GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, adOpenStatic
'            If rsg.RecordCount = 0 Then
'                clobales = 0
'                clokgs = 0
'            End If
            While Not rsg.EOF
                clobales = clobales - rsg("bales")
                clokgs = clokgs - rsg("NETWT")
                If Idt = rsg("docdt") Then
                    Print #a, Space(14);
                Else
                    Print #a, Space(5) + Padr(Format(rsg("docdt"), "DD/MM/YY"), 8, " ") + Space(1);
                    Idt = rsg("docdt")
                End If
                Print #a, Padl(rsg("docNO"), 10, " ") + Space(1) + Padr(" ", 26, " ") + Space(1) + Padl(rsg("ordno"), 6, " ") + Space(1) + Padl(" ", 10, " ") + Space(2) + Padl(" ", 16, " ") + Space(2) + Padl(INF(rsg("bales"), 0), 10, " ") + Space(1) + Padl(INF(rsg("netwt"), 2), 13, " ") + Space(2) + Padl(clobales, 10, " ") + Space(4) + Padl(INF(clokgs, 2), 15, " ")
                co = co + 1
                rsg.MoveNext
            Wend
        'End If
        tot1 = tot1 + clobales
        tot2 = tot2 + clokgs
    Next
    
If co >= PageLen Then
    Print #a, Space(5) & String(140, "-")
    Print #a, Chr(12) + Chr(18)
    pg1 = pg1 + 1
    Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
    co = 9
End If
Print #a, Space(5) & String(140, "-")
Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("Closing Balance On " & Format(T_Date, "dd/mm/yy"), 37, " ") + Space(1) + Padl(" ", 6, " ") + Space(2) + Padl(" ", 16, " ") + Space(2) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 13, " ") + Space(2) + Padl(INF(tot1, 0), 10, " ") + Space(4) + Padl(INF(tot2, 2), 15, " ") + Chr(27) + "F"
Print #a, Space(5) & String(140, "-")

Print #a, Chr(12) + Chr(18)
 Call footermod(CInt(a), footerstr, 85)
Close #a
a = FreeFile
'Open "c:\StkPly.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type StkPly.TXT>prn"
'Close #a
'RPTV.txtfile = "c:\StkPly.TXT"
'RPTV.Batfile = "c:\StkPly.bat"
Call KALBATPROCESS("StkPly")
Screen.MousePointer = 0

End Sub
Public Sub StkstmtPolysterCrystal(F_Date As String, T_Date As String, SR As String, vr As String, pRecType As String, footerstr As String)

'Dim INVNO   As String
'Dim Invdt   As String
'Dim pname   As String
'Dim Station As String
'Dim Rname   As String
'Dim Rval    As Double
'Dim val1    As Double
'Dim Value   As Double
'Dim totVal  As Double
'Dim Totval1 As Double
'Dim clobales As Integer
'Dim clokgs   As Double
'Dim I       As Date
'Dim LDT   As String
'Dim Idt   As String

tot1 = 0: tot2 = 0
vrectype = Trim(Left(pRecType, 3))
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
'Set RPTV = New Report.ReportView
'Close #a
'a = FreeFile
'Close #a
'Open "C:\StkPly.TXT" For Output As #a
'Open KALFOLDERDATA & "\StkPly.TXT" For Output As #a
pg1 = 1
co = 0
'Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
co = 9
If SR = "A" Then
    Call AllStkstmtPolysterCrystal(F_Date, T_Date, SR, vr, pRecType, footerstr)
    Exit Sub
End If
Set rs5 = New Recordset

If vr = "ALL" Then
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    Else
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    End If
Else
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "' and b.varcode ='" & vr & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and b.varcode='" & vr & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.varcode='" & vr & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and b.varcode='" & vr & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    Else
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "' and b.varcode ='" & vr & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and b.varcode='" & vr & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.varcode='" & vr & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and b.varcode='" & vr & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    End If
End If
     

    If rs5.RecordCount > 0 Then
        co = co + 1
        clobales = rs5("clobales")
        clokgs = rs5("clokgs")
    Else
        co = co + 1
        clobales = 0
        clokgs = 0
    End If
    
    
    If Table_Exists("Temp_itemwiseLedger") Then
    DB.Execute "Drop table Temp_itemwiseLedger"
    End If
    Dim strSQL As String
    strSQL = "Create Table Temp_itemwiseLedger (idate varchar(12),isno varchar(20),Supplier varchar(120),Lotno varchar(18),recbal decimal(12,2),reckg decimal(12,3),issbal decimal(12,2),isskg decimal(12,3),closbal decimal(12,2),closekg decimal(15,3))"
    DB.Execute strSQL
     

    
    
    For i = F_Date To T_Date
        If i <> F_Date Then
            Set rsg = New Recordset
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "a.LotType"
                Else
                    tmptypestr = "a.TransferType"
                End If
                rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "'", DB, adOpenStatic
            Else
                rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
            End If
            While Not rsg.EOF
                clobales = clobales + rsg("bales")
                clokgs = clokgs + rsg("NETWT")
                If LDT = rsg("lotdt") Then
                    Print #a, Space(14);
                Else
                    LDT = rsg("lotdt")
                End If
                
                strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,supplier,lotno,recbal,reckg,closbal,closekg) VALUES('" & Format(rsg("lotdt"), "dd/mm/yy") & "','" & rsg("BILLNO") & "','" & rsg("SLNAME") & "','" & rsg("LOTNO") & "'," & rsg("bales") & "," & rsg("netwt") & "," & clobales & "," & clokgs & ")"
                DB.Execute strSQL
                co = co + 1
                rsg.MoveNext
            Wend


            Set rsg = New Recordset
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "c.LotType"
                Else
                    tmptypestr = "c.TransferType"
                End If
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-m-dd") & "' and a.varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            Else
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-m-dd") & "' and a.varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "'  GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            End If
            While Not rsg.EOF
                clobales = clobales - rsg("bales")
                clokgs = clokgs - rsg("NETWT")
                If Idt = rsg("docdt") Then
                    Print #a, Space(14);
                Else
                    Idt = rsg("docdt")
                End If
                strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,lotno,issbal,isskg,closbal,closekg) VALUES('" & Format(rsg("docdt"), "dd/mm/yy") & "','" & rsg("docno") & "','" & rsg("ordno") & "'," & rsg("bales") & "," & rsg("netwt") & "," & clobales & "," & clokgs & ")"
           
                 DB.Execute strSQL
                co = co + 1
                rsg.MoveNext
            Wend
        End If
        tot1 = tot1 + clobales
        tot2 = tot2 + clokgs
    Next
    
Screen.MousePointer = 0
End Sub


Public Sub AllStkstmtPolysterCrystal(F_Date As String, T_Date As String, SR As String, vr As String, pRecType As String, footerstr As String)
Set rs5 = New Recordset
vrectype = Trim(Left(pRecType, 3))
If vr = "ALL" Then
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "(b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and " & tmptypestr & "='" & vrectype & "' and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and " & tmptypestr & "='" & vrectype & "'  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'" & _
            " and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "'  and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    Else
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "')  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "'" & _
            "  and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  and b.divcode='" & Divcode & "'  group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    End If
Else
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.varcode ='" & vr & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and " & tmptypestr & "='" & vrectype & "'  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.varcode='" & vr & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and " & tmptypestr & "='" & vrectype & "' and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.varcode='" & vr & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and " & tmptypestr & "='" & vrectype & "'" & _
            "  and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and b.varcode='" & vr & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "' and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    Else
        rs5.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.varcode ='" & vr & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0   and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "')  and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.varcode='" & vr & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and b.divcode='" & Divcode & "' group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.varcode='" & vr & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "'" & _
            " and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.varcode='" & vr & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(F_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.divcode='" & Divcode & "' group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", Cnn, adOpenStatic
    End If
End If
     

    If rs5.RecordCount > 0 Then
'        Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr(" ", 26, " ") + Space(1) + Padl(" ", 6, " ") + Space(1) + Padl(INF(rs5("recbales"), 0), 10, " ") + Space(2) + Padl(INF(rs5("recKgs"), 2), 16, " ") + Space(2) + Padl(INF(rs5("IssBales"), 0), 10, " ") + Space(1) + Padl(INF(rs5("IssKgs"), 2), 13, " ") + Space(2) + Padl(INF(rs5("Clobales"), 0), 10, " ") + Space(4) + Padl(INF(rs5("clokgs"), 2), 15, " ") + Chr(27) + "F"
        co = co + 1
        clobales = rs5("clobales")
        clokgs = rs5("clokgs")
    Else
'        Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 8, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("Opening Balance On " & Format(F_Date, "dd/mm/yy"), 37, " ") + Space(1) + Padl(" ", 6, " ") + Space(2) + Padl(" ", 16, " ") + Space(2) + Padl(" ", 10, " ") + Space(1) + Padl(" ", 13, " ") + Space(2) + "         0" + Space(4) + "           0.00" + Chr(27) + "F"
        co = co + 1
        clobales = 0
        clokgs = 0
    End If
    
    If co >= PageLen Then
'        Print #a, Space(5) & String(140, "-")
'        Print #a, Chr(12) + Chr(18)
        pg1 = pg1 + 1
'        Call StkPolysterhead(CStr(F_Date), CStr(T_Date), pg1, CStr(vr))
        co = 9
    End If
    
    If Table_Exists("Temp_itemwiseLedger") Then
        DB.Execute "Drop table Temp_itemwiseLedger"
    End If
    Dim strSQL As String
    strSQL = "Create Table Temp_itemwiseLedger (idate datetime,isno varchar(20),Supplier varchar(120),Lotno varchar(18),recbal decimal(12,2),reckg decimal(12,3),issbal decimal(12,2),isskg decimal(12,3),closbal decimal(12,2),closekg decimal(15,3))"
    DB.Execute strSQL
    
    
    
    
    
    For i = F_Date To T_Date
        'If i <> F_Date Then
            Set rsg = New Recordset
            If vrectype <> "A" Then
                If vrectype = "A" Then
                    tmptypestr = "a.LotType"
                Else
                    tmptypestr = "a.TransferType"
                End If
                rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "'", DB, adOpenStatic
            Else
                If vr = "ALL" Then
                    rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                Else
                    rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt='" & Format(i, "YYYY-MM-DD") & "' AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                End If
            End If
            While Not rsg.EOF
                clobales = clobales + rsg("bales")
                clokgs = clokgs + rsg("NETWT")
                If LDT = rsg("lotdt") Then
                Else
                    LDT = rsg("lotdt")
                End If
                

                strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,supplier,lotno,recbal,reckg,closbal,closekg) VALUES('" & Format(rsg("lotdt"), "yyyy/mm/dd") & "','" & rsg("BILLNO") & "','" & rsg("SLNAME") & "','" & rsg("LOTNO") & "'," & rsg("bales") & "," & rsg("netwt") & "," & clobales & "," & clokgs & ")"
                DB.Execute strSQL
    
                co = co + 1
                rsg.MoveNext
            Wend


            Set rsg = New Recordset
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "c.LotType"
                Else
                    tmptypestr = "c.TransferType"
                End If
                If vr = "ALL" Then
                    SstrVarcode = ""
                Else
                    SstrVarcode = "and a.varcode='" & vr & "'"
                End If
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-mm-dd") & "' " & SstrVarcode & " AND A.DIVCODE='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "' and " & tmptypestr & "='" & vrectype & "' GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            Else
            If vr = "ALL" Then
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "'  and c.lotyear='" & Year(yfdate) & "' GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            Else
                rsg.Open "select A.docdt,A.docno,ORDNO,count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A,RM_ISSH B,rm_lot c where a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and A.DOCNO=B.DOCNO " & _
                     "AND A.DOCDT=B.DOCDT AND  A.docdt='" & Format(i, "yyyy-mm-dd") & "' and a.varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "'  GROUP BY A.DOCNO,A.DOCDT,ORDNO", DB, dbopenstatic
            End If
            End If
            While Not rsg.EOF
                clobales = clobales - rsg("bales")
                clokgs = clokgs - rsg("NETWT")
                If Idt = rsg("docdt") Then
                Else
                    Idt = rsg("docdt")
                End If
                
                  strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,lotno,issbal,isskg,closbal,closekg) VALUES('" & Format(rsg("docdt"), "yyyy/mm/dd") & "','" & rsg("docno") & "','" & rsg("ordno") & "'," & rsg("bales") & "," & rsg("netwt") & "," & clobales & "," & clokgs & ")"
                  DB.Execute strSQL
    

                co = co + 1
                rsg.MoveNext
            Wend
        tot1 = tot1 + clobales
        tot2 = tot2 + clokgs
    Next
    
If co >= PageLen Then
    pg1 = pg1 + 1

    co = 9
End If

Screen.MousePointer = 0

End Sub


