Attribute VB_Name = "supplierassessment"
Dim Rs As Recordset, rs1 As Recordset, RS2 As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot1 As Double, tot2 As Double, tot3 As Double, tot4 As Double, tot5 As Double
Dim tot6 As Double, tot7 As Double, tot8 As Double, tot9 As Double
Dim CON, con1, over1 As Double
Dim TEMP As Double
Dim cnn As Connection
Dim dblQuality, dblDelivery As Double
Dim Pg As Integer
Dim Co As Integer, Sno As Integer
Dim a As Integer
Dim conqty As Double
Dim rp As New rmireports2


Public Sub BRKassessment(f1 As String, t1 As String, BRK1 As String, BRK2 As String)
Dim var As Double
tot1 = 0: tot2 = 0
tot3 = 0: tot4 = 0
tot5 = 0: tot6 = 0
tot7 = 0: tot8 = 0
tot9 = 0: tot10 = 0
Sno = 0: pend1 = 0
CON = 0: con1 = 0: over1 = 0
TEMP = 0
rec = 0: rt = 0
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set RPTV = New Report.ReportView
Close #11
'Open "C:\supplassess.TXT" For Output As #11
Open KALFOLDERDATA & "\supplassess.TXT" For Output As #11
Pg = 1
Co = 0
a = FreeFile
Call header(Pg)
Set Rs = New Recordset
Rs.Open "select distinct BRKCD,slname from rm_arrival a,fa_slmas b where a.BRKCD=b.slcode and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and BRKCD BETWEEN '" & BRK1 & "' AND '" & BRK2 & "'", cnn, adOpenStatic, adLockBatchOptimistic
'rs.Open "select distinct BRKCD,slname from rm_arrival a,fa_slmas b where a.BRKCD=b.slcode ", cnn, adOpenStatic, adLockBatchOptimistic
If Rs.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If

Do While Not Rs.EOF
   If Co > 56 Then
        Print #11, Space(1) & String(92, "-")
        Print #11, Chr(12)
        Co = 0
        Pg = Pg + 1
        Print #11,
        Call header(Pg)
   End If
   Set rs1 = New Recordset
   'rs1.Open "select a.passed,sum(ordqty) as ordqty,sum(recqty) as recqty,case when a.passed='Y' then isnull(sum(passbl),0) end 'nconf',case when isnull(a.passed,0) ='N' then isnull(sum(passbl),0) end 'conqty' from rm_arrival a,rm_cont b where a.contno=b.contno and a.contdt=b.contdt and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and a.supcd='" & rs("supcd") & "' and a.contno='" & rs("contno") & "' group by a.passed", cnn, adOpenStatic, adLockBatchOptimistic
   rs1.Open "select a.passed,sum(ordqty) as ordqty,sum(recqty) as recqty,case when a.passed='Y' then isnull(sum(passbl),0) end 'nconf',case when isnull(a.passed,0) ='N' then isnull(sum(passbl),0) end 'conqty' from rm_arrival a,rm_cont b where a.contno=b.contno and a.contdt=b.contdt and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and a.BRKCD='" & Rs("BRKCD") & "' group by a.passed", cnn, adOpenStatic, adLockBatchOptimistic
   Set RS2 = New Recordset
   RS2.Open "select sum(isnull(intime,0)) as intime,sum(isnull(pending,0)) as pending from (select sum(quantity) as intime,0 as pending from rm_arrival a,rm_cont b where a.contno=b.contno and a.contdt=b.contdt and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "'  and arrdate<=duedate and a.BRKCD='" & Rs("BRKCD") & "' union select 0 as intime,sum(quantity) as pending from rm_arrival a,rm_cont b where a.contno=b.contno and a.contdt=b.contdt and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and a.BRKCD='" & Rs("BRKCD") & "' and arrdate>duedate and a.BRKCD='" & Rs("BRKCD") & "')a", cnn, adOpenStatic, adLockBatchOptimistic
      Sno = Sno + 1
      conqty = rs1("ordqty") - IIf(IsNull(rs1("nconf")), 0, rs1("nconf"))
      'nconf = rs1("recqty") - rs1("conqty")
      rec = IIf(IsNull(rs1("recqty")), 0, rs1("recqty")) - IIf(IsNull(rs1("nconf")), 0, rs1("nconf"))
      CON = (conqty / rs1("recqty") * 0.8) * 100
      CON2 = (RS2("intime") / rs1("recqty") * 0.2) * 100
     ' over1 = CON + CON2
       
      
   If RS2.RecordCount > 0 Then
     pend1 = (rs1("ordqty") - rs1("recqty")) + RS2("pending")
     'rt = Val(((IIf(IsNull(rs1("conqty")), 0, rs1("conqty")) / IIf(IIf(IsNull(rs1("recqty")), 0, rs1("recqty")) = 0, 1, rs1("recqty"))) * 100) * 0.8) + Val(((rs2("intime") / IIf(rec = 0, 1, rec)) * 100) * 0.2)
     
     
     rt = val(((IIf(IsNull(conqty), 0, conqty) / IIf(IIf(IsNull(rs1("recqty")), 0, rs1("recqty")) = 0, 1, rs1("recqty"))) * 100) * 0.8) + val(((RS2("intime") / IIf(rec = 0, 1, rec)) * 100) * 0.2)
     'dt = Right(rs("arrdate"), 1)
     Print #11, Space(1) & Padl(Sno, 3, " ") & Space(2) & Padr(Rs("SLNAME"), 26, " ") & Padl(rs1("ordqty"), 5, " ") & Space(1) + Padl(rs1("recqty"), 8, " ") + Space(1) + Padl(conqty, 9, " ") + Space(1) + Padl(rs1("nconf"), 9, " ") + Padl(rs1("recqty"), 8, " ") + Space(2) + Padl(RS2("InTime"), 8, " ") & Space(2) & Padl(RS2("pending"), 8, " ") & Space(2) & Padl(INF(over1, 2), 7, " ")

      Co = Co + 1
   Else
      pend1 = (rs1("ordqty") - rs1("recqty"))
      
      rt = val(((conqty / IIf(rs1("recqty") = 0, 1, rs1("recqty"))) * 100) * 0.8)
      
      Print #11, Space(1) & Padl(Sno, 3, " ") & Space(2) & Padl(Rs("contno"), 8, " ") & Padl(rs1("ordqty"), 5, " ") & Space(1) + Padl(rs1("recqty"), 8, " ") + Space(1) + Padl(conqty, 9, " ") + Space(1) + Padl(rs1("nconf"), 9, " ") + Padl(rs1("recqty"), 8, " ") + Space(2) + Padl(RS2("InTime"), 8, " ") & Space(2) & Padl(RS2("pending"), 8, " ") & Space(2) & Padl(INF(over1, 2), 7, " ")
      Co = Co + 1
   End If
   tot1 = tot1 + IIf(IsNull(rs1("ordqty")), 0, rs1("ordqty")) 'order qty
   tot2 = tot2 + val(pend1) 'pending
   tot3 = tot3 + IIf(IsNull(rs1("recqty")), 0, rs1("recqty")) 'recqty
   tot4 = tot4 + IIf(IsNull(conqty), 0, conqty)
   tot5 = tot5 + val(IIf(IsNull(rs1("nconf")), 0, rs1("nconf"))) 'nconf
   tot6 = tot6 + val(rec) 'recqty
   If RS2.RecordCount > 0 Then tot7 = tot7 + RS2("intime")
   If RS2.RecordCount > 0 Then tot8 = tot8 + RS2("pending")
   tot9 = tot9 + Abs(val(pendl) - val(rec))
   pend1 = 0: rec = 0: rt = 0
   Rs.MoveNext
Loop
tot10 = ((tot4 / IIf(tot3 = 0, 0, tot3)) * 100) * 0.8 'Rating
If Co > 56 Then
        Print #11, Space(1) & String(102, "-")
        Print #11, Chr(12)
        Pg = Pg + 1
        Co = 0
        Print #11,
        Call header(Pg)
End If
Print #11, Space(1) & String(102, "-")
tot10 = (((tot4 / tot3) * 0.8 * 100))
tot11 = (((tot7 / tot3) * 0.2 * 100))
tot12 = tot10 + tot11


Print #11, Space(2); CENTRE("Total", 29, " "); Space(1); IIf(tot1 = 0, "    0", Padl(tot1, 5, " ")) + Space(1); IIf(tot3 = 0, "       0", Padl(tot3, 8, " ")) + Space(2) + Padl(tot4, 8, " ") + Space(2) + Padl(tot5, 8, " ") + Space(1) + IIf(tot3 = 0, "        0", Padl(tot3, 7, " ")) + Space(3) + IIf(tot7 = 0, "        ", Padl(tot7, 7, " ")) + Space(3) + IIf(tot8 = 0, "       0", Padl(tot8, 7, " ")) + Space(1) + Padl(INF(tot12, 2), 7, " ")

'Print #11, Space(2); CENTRE("Total", 29, " "); Space(1); IIf(tot1 = 0, "    0", Padl(tot1, 5, " ")) + Space(1); IIf(tot3 = 0, "       0", Padl(tot3, 8, " ")) + Space(2) + Padl(tot4, 8, " ") + Space(2) + Padl(tot5, 8, " ") + Space(1) + IIf(tot3 = 0, "        0", Padl(tot3, 7, " ")) + Space(3) + IIf(tot7 = 0, "        ", Padl(tot7, 7, " ")) + Space(3) + IIf(tot8 = 0, "       0", Padl(tot8, 7, " ")) + Space(1)




'Print #11, Space(15) & IIf(tot1 = 0, "    0", Padl(tot1, 5, " ")) + Space(3) + IIf(tot2 = 0, "      ", Padl(tot2, 7, " ")) + Space(2) + IIf(tot3 = 0, "       0", Padl(tot3, 8, " ")) + Space(2) + IIf(tot4 = 0, "         ", Padl(tot4, 9, " ")) + Space(2) + IIf(tot5 = 0, "        0", Padl(tot5, 9, " ")) + Space(2) + IIf(tot7 = 0, "        ", Padl(tot7, 8, " ")) + Space(3) + IIf(tot8 = 0, "       0", Padl(tot8, 8, " ")) + Space(1) + "       " + Space(1) + IIf(tot9 = 0, "      ", Padl(INF(tot9, 2), 7, " ")) + Space(1) + IIf(tot10 = 0, "       ", Padl(INF(tot10, 2), 8, " "))
Print #11, Space(1) & String(102, "-")
Co = Co + 3
Print #11,
Print #11, Chr(27) & "E" & Space(1) + "Rating Method  :  " & Chr(27) & "F"
Co = Co + 2
If Co > 56 Then
        Print #11, Space(1) & String(92, "-")
        Print #11, Chr(12)
        Co = 0
        Pg = Pg + 1
        Print #11,
        Call header(Pg)
End If
Print #11,
Print #11, Space(1) + "Total Qty Received       : " + Padl(tot3, 7, " ") + "      Total Qty Received       : " + Padl(tot3, 7, " ")
Print #11, Space(1) + "Total Qty Conformed      : " + Padl(tot4, 7, " ") + "      Total Received In Time   : " + Padl(tot7, 7, " ")
Co = Co + 3
'Modified on 07/10/2005 by pari
conper = 100 / tot3 * IIf(tot6 = 0, 0, tot6)
conrate = conper * 0.8
CONPER1 = Round(100 / tot3 * IIf(tot7 = 0, 0, tot7), 2)
conrate1 = Round(CONPER1 * 0.2, 2)
ptot1 = (tot4 / IIf(tot3 = 0, 0, tot3)) * 100
'Print #11, SPACE(1) + "% Qty Conformed          : " + Padl(INF((tot4 / IIf(tot3 = 0, 1, tot3)) * 102, 2), 7, " ") + " % " + "   % Qty Received In Time   : " + Padl(IIf(var = 0, " 0.0000", INF(var, 2)), 7, " ") + " %" ''IIf(tot7 > 0, Padl((tot6 / tot7) * 102, 7, " "), "0")
Print #11, Space(1) + "% Qty Conformed          : " + IIf(Trim(Padl(INF(conper, 2), 7, " ")) = "", "      0", Padl(INF(conper, 2), 7, " ")) + " % " + "   % Qty Received In Time   : " + Padl(INF(CONPER1, 2), 7, " "); " %" ''IIf(tot7 > 0, Padl((tot6 / tot7) * 102, 7, " "), "0")
Co = Co + 1
If tot3 > 0 Then
    var = ((tot3 / IIf(tot6 = 0, 1, tot6)) * 100) * 0.2
Else
    var = 0
End If
'Print #11, SPACE(1) + "Rating For Quality (80%) : " + Padl(INF(((tot4 / IIf(tot3 = 0, 1, tot3)) * 102) * 0.8, 2), 7, " "); " % " + "   Rating For Delivery(20%) : " + Padl(INF(var, 2), 7, " ") + " %" ''Padl(((tot3 / iif(tot4=0,1,tot4)) * 102) * 0.02, 7, " ")
Print #11, Space(1) + "Rating For Quality (80%) : " + IIf(Trim(Padl(INF(conrate, 2), 7, " ")) = "", "      0", Padl(INF(conrate, 2), 7, " ")); " % " + "   Rating For Delivery(20%) : " + Padl(INF(conrate1, 2), 7, " ") + " %" ''Padl(((tot3 / iif(tot4=0,1,tot4)) * 102) * 0.02, 7, " ")
Print #11,
TEMP = conrate + conrate1
Print #11, Chr(27) & "E" & Space(25) + "Overall Supplier Rating : " + Padl(INF(TEMP, 2), 8, " ") + " %" & Chr(27) & "F"
Print #11,
Print #11,
Print #11,
Print #11, Chr(27) & "E" & Space(15) + "Cotton Clerk" + Space(20) + "FM" + Space(20) + "MD" & Chr(27) & "F" + Chr(12)
Co = Co + 7
Close #11
a = FreeFile
Close #11
'Open "c:\supplassess.bat" For Output As #11
'Print #11, "cd\"
'Print #11, "c:"
'Print #11, "cd\"
'Print #11, "type supplassess.TXT>prn"
'Close #11
'RPTV.txtfile = "c:\supplassess.TXT"
'RPTV.Batfile = "c:\supplassess.bat"
Call KALBATPROCESS("supplassess")
Screen.MousePointer = 0
End Sub

Public Sub header(Pg As Integer)
Print #11,
Print #11, Chr(14) + CENTRE(DIVNAME, 43, " ") + Chr(14)
Print #11,
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #11, Space(1) + Chr(27) + "E" + CENTRE("Broker Assessment Record", 80, " ")
Print #11, Space(1) + CENTRE("Assessment Period From " + Padl(Format(f1, "dd/MM/YY"), 10, " ") + " To " + Padl(Format(t1, "dd/MM/yy"), 12, " "), 80, " ")
Print #11,
Print #11, Space(1) + CENTRE("Date Of Assessment " + Padl(Format(pdate, "dd/MM/YY"), 12, " "), 80, " ") + Chr(27) + "F";
Print #11, Chr(27) & Chr(205) & Chr(27) & Chr(77)

'Print #11, SPACE(1) + Chr(27) + "E" + "Supplier Assessment Record" + Chr(27) + "F" + Space(2); "From" + Space(2) + Format(f1, "DD/MM/YYYY") + Space(2) + "To" + Space(2) + Format(t1, "DD/MM/YYYY") + Space(50) + CStr(sr) + "Pg.No : " + CStr(PG)
Print #11, Space(1) + String(102, "-")
'Print #11, SPACE(1) + "SNo" + Space(1) + "Broker Name" + Space(17) + " Order" + Space(1) + "Pending " + "Received" + Space(1) + "Conformed" + Space(1) + "Non-Conf." + Space(1) + "Received" + Space(1) + "Received" + Space(1) + "Received " & "Pending " & "Pending " & " Overall"
'Print #11, SPACE(1) & Space(34) & "   Qty" + Space(1) + "Current" + Space(4) + "Qty" + Space(6) + "Qty" + Space(7) + "Qty" + Space(6) + "Qty" + Space(4) + " in Time" + Space(4) + " Late" + Space(1) + "Current" + Space(3) + " Late " + "  Rating %"
Print #11, Space(1); "SNo  Broker Name               Order Received Confirmed Non-Conf.Received  <---Received-----> Overall"
Print #11, Space(1); "                                 Qty      Qty       Qty      Qty      Qty   In Time      Late Rating %"
Print #11, Space(1) & String(102, "-")
Co = Co + 11
End Sub
Public Sub supHEADER(Pg As Integer, sup1 As String)
Print #11,
Print #11, Chr(14) & CENTRE(DIVNAME, 90, " ") & Chr(14)
Print #11,
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #11, Chr(27) + "E" + Space(5) + CENTRE("Supplier Assessment Record", 92, " ")
Set rsa = New Recordset
rsa.Open "select slname from fa_slmas where slcode='" & sup1 & "'", db, adOpenStatic
If rsa.RecordCount > 0 Then
    sup2 = rsa(0)
End If
Print #11, Space(5) + CENTRE("Supplier : " + sup2, 92, " ")
Print #11, Space(5) + CENTRE("Assessment Period From " + Padl(Format(f1, "dd/MM/yy"), 8, " ") + " To " + Padl(Format(t1, "dd/MM/yy"), 8, " "), 92, " ")
Print #11,
Print #11, Space(5) + CENTRE("Date Of Assessment " + Padl(Format(pdate, "dd/MM/yy"), 8, " "), 92, " ") + Chr(27) + "F"
'Print #11, Space(5) + Chr(27) + "E" + "Supplier Assessment Record" + Chr(27) + "F" + Space(2); "From" + Space(2) + Format(f1, "DD/MM/YYYY") + Space(2) + "To" + Space(2) + Format(t1, "DD/MM/YYYY") + Space(50) + CStr(sr) + "Pg.No : " + CStr(PG)
Print #11, Space(5) + String(92, "-")
'Print #11, Space(5) + "SNo" + Space(1) + "Broker Name" + Space(17) + " Order" + Space(1) + "Pending " + "Received" + Space(1) + "Conformed" + Space(1) + "Non-Conf." + Space(1) + "Received" + Space(1) + "Received" + Space(1) + "Received " & "Pending " & "Pending " & " Overall"
'Print #11, Space(5) & Space(34) & "   Qty" + Space(1) + "Current" + Space(4) + "Qty" + Space(6) + "Qty" + Space(7) + "Qty" + Space(6) + "Qty" + Space(4) + " in Time" + Space(4) + " Late" + Space(1) + "Current" + Space(3) + " Late " + "  Rating %"
Print #11, Space(5); "Purchase  Order  Received  Confirmed  Non-Conf. Received  <---Received---->  Pending Pending"
Print #11, Space(5); "Order No.   Qty       Qty        Qty       Qty       Qty  In Time     Late   Current    Late"
Print #11, Space(5) & String(92, "-")
Co = Co + 11
End Sub
Public Sub supassessment(f1 As String, t1 As String, sup1 As String, footerstr As String)
Dim Lrs_temp As New ADODB.Recordset
Dim LInTimeQty As Double
Dim LOutTimeQty As Double
Dim var As Double
Dim TEMP As Double
Dim RsCancl As ADODB.Recordset

Dim Ltotal_OrderQty As Double
Dim Ltotal_RecvdQty As Double
Dim Ltotal_ConformedQty As Double
Dim Ltotal_RejQty As Double
Dim Ltotal_InTimeQty As Double
Dim Ltotal_outTimeQty As Double
Dim LCanclQty As Double
Dim LNonqty As Double
Dim Ltotal_Conqty As Double
Dim Ltotal_Nonqty As Double
Dim LConqty As Double
tot1 = 0: tot2 = 0
tot3 = 0: tot4 = 0
tot5 = 0: tot6 = 0
tot7 = 0: tot8 = 0
tot9 = 0: tot10 = 0
Sno = 0: pend1 = 0
rec = 0: rt = 0
TEMP = 0
LNonqty = 0
LConqty = 0
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

Set RPTV = New Report.ReportView
Close


'Open "C:\supplassess.TXT" For Output As #11
Open KALFOLDERDATA & "\supplassess.TXT" For Output As #11
Pg = 1
Co = 0
a = FreeFile

Call supHEADER(Pg, sup1)

Set Rs = New Recordset
Rs.Open "select distinct contno,contdt ,slname,duedate from rm_cont  a,fa_slmas b where a.supcd=b.slcode and CONTDT between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and supcd = '" & sup1 & "' AND DIVCODE ='" & Divcode & "' AND CONTNO IN (SELECT CONTNO FROM RM_ARRIVAL WHERE CONTDT between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and supcd = '" & sup1 & "' AND DIVCODE ='" & Divcode & "') ORDER BY CONTDT,CONTNO", cnn, adOpenStatic, adLockBatchOptimistic
If Rs.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If

Do While Not Rs.EOF
    If Co > 56 Then
        Print #11, Space(5) & String(92, "-")
        Print #11, Chr(12)
        Co = 0
        Pg = Pg + 1
        Print #11,
        Call supHEADER(Pg, sup1)
    End If
    
    'Order Qty
    Set rs1 = New Recordset
    rs1.Open "SELECT ISNULL(SUM(ORDQTY),0) AS ORDQTY FROM RM_CONT " & _
             "Where " & _
             "contno=" & Rs("contno") & " and " & _
             "contdt ='" & Format(Rs("contdt"), "yyyy-mm-dd") & "' and " & _
             "divcode='" & Divcode & "'", cnn, adOpenDynamic, adLockReadOnly

    'Recvd Qty
    Set RS2 = New Recordset
    RS2.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt = '" & Format(Rs("contdt"), "yyyy/mm/dd") & "' and " & _
             "Divcode='" & Divcode & "'", cnn, adOpenDynamic, adLockReadOnly
    
    
    'nonconfirmed Qty
     If Lrs_temp.State Then Lrs_temp.Close
    Lrs_temp.Open "SELECT isnull(Sum(passbl),0) recvdqty FROM RM_ARRIVAL  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt = '" & Format(Rs("contdt"), "yyyy/mm/dd") & "' and  " & _
             "Divcode='" & Divcode & "'  and passed='Y' ", cnn, adOpenDynamic, adLockReadOnly
    If Lrs_temp.RecordCount > 0 Then
    'LNonqty = Lrs_temp(0)
    LConqty = Lrs_temp(0)
    End If
    
    'Cancel Qty
    Set RsCancl = New Recordset
    RsCancl.Open "SELECT isnull(CancelBales,0) CancelQty FROM RM_CONT  Where Contno = " & Rs("Contno") & _
    " And contdt = '" & Format(Rs("contdt"), "yyyy/mm/dd") & "' and Divcode = '" & Divcode & "'", cnn, adOpenDynamic, adLockReadOnly
    
    
    LCanclQty = IIf(IsNull(RsCancl("CancelQty")), 0, RsCancl("CancelQty"))
        
'    LConqty = rs2(0) - LNonqty
'    LNonqty = LNonqty
    LNonqty = LConqty
    LConqty = RS2(0) - LConqty
    'Intime Qty
    If Lrs_temp.State Then Lrs_temp.Close
    Lrs_temp.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt ='" & Format(Rs("contdt"), "yyyy/mm/dd") & "'  and " & _
             "Divcode='" & Divcode & "' and " & _
             "Arrdate<='" & Format(Rs("duedate"), "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
    LInTimeQty = Lrs_temp(0)
                      
                      
    'Outtime Qty
    If Lrs_temp.State Then Lrs_temp.Close
    Lrs_temp.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt ='" & Format(Rs("contdt"), "yyyy/mm/dd") & "'  and " & _
             "Divcode='" & Divcode & "' and " & _
             "Arrdate>'" & Format(Rs("duedate"), "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
    LOutTimeQty = Lrs_temp(0)
    
    
    'Pending Current Qty
    
    ''select ordqty,duedate  from rm_cont where contno=20 and recqty is null and duedate<='2006-01-13'
    If Lrs_temp.State Then Lrs_temp.Close
    Lrs_temp.Open "SELECT isnull(ordqty,0)-ISNULL(recqty,0) FROM RM_cont  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt = '" & Format(Rs("contdt"), "yyyy/mm/dd") & "'and " & _
             "Divcode='" & Divcode & "' and ISNULL(ORDQTY,0)-ISNULL(RECQTY,0)>0 and  " & _
             "duedate>='" & Format(t1, "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
    If Lrs_temp.RecordCount > 0 Then
    lpencurouttimeqty = Lrs_temp(0) - LCanclQty
    Else
    lpencurouttimeqty = 0
    End If
    
    'Pending late Qty
    If Lrs_temp.State Then Lrs_temp.Close
    Lrs_temp.Open "SELECT isnull(ordqty,0)-ISNULL(recqty,0) FROM RM_cont  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt ='" & Format(Rs("contdt"), "yyyy/mm/dd") & "' and " & _
             "Divcode='" & Divcode & "' and ISNULL(ORDQTY,0)-ISNULL(RECQTY,0)>0 and " & _
             "duedate<'" & Format(t1, "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
    If Lrs_temp.RecordCount > 0 Then
        lpenlaouttimeqty = Lrs_temp(0) - LCanclQty
    Else
        lpenlaouttimeqty = 0
    End If
    
    
   ' LOutTimeQty = RS1("ORDQTY") - LInTimeQty
    
    'Footer Sum
    Ltotal_OrderQty = (Ltotal_OrderQty + rs1("Ordqty")) - LCanclQty
    Ltotal_InTimeQty = Ltotal_InTimeQty + LInTimeQty
    Ltotal_outTimeQty = (Ltotal_outTimeQty + LOutTimeQty)
    Ltotal_RecvdQty = Ltotal_RecvdQty + RS2("recvdqty")
    LTotal_PenCurOutTimeQty = val(LTotal_PenCurOutTimeQty) + val(lpencurouttimeqty)
    LTotal_PenlaOutTimeQty = val(LTotal_PenlaOutTimeQty) + val(lpenlaouttimeqty)
            ''to be altered
    Ltotal_ConformedQty = Ltotal_ConformedQty + LConqty
    Ltotal_Conqty = Ltotal_Conqty + LConqty
    Ltotal_Nonqty = Ltotal_Nonqty + LNonqty
        'to be developed
    'Ltotal_RejQty = 0
    
    Print #11, Space(3) & Padl(Rs("Contno") + "/" + Format(yfdate, "YY") + Format(yldate, "YY"), 10, " ") & Space(2) & _
                          Padl(INF((rs1("ordqty") - LCanclQty), 0), 5, " ") + Space(2) + _
                          Padl(INF(RS2("recvdqty"), 0), 8, " ") + Space(2) + _
                          Padl(INF(LConqty, 0), 9, " "); Space(2) + _
                          Padl(INF(LNonqty, 0), 9, " ") + Space(2) + _
                          Padl(INF(RS2("recvdqty"), 0), 8, " ") + _
                          Padl(INF(LInTimeQty, 0), 8, " ") & Space(1) & _
                          Padl(INF(LOutTimeQty, 0), 8, " ") & _
                          Padl(INF(lpencurouttimeqty, 0), 10, " ") & _
                          Padl(INF(lpenlaouttimeqty, 0), 8, " ")
                          
    Rs.MoveNext
Loop

tot10 = ((tot4 / IIf(tot3 = 0, 1, tot3)) * 102) * 0.8 'Rating

If Co > 56 Then
    Print #11, Space(5) & String(92, "-")
    Print #11, Chr(12)
    Pg = Pg + 1
    Co = 0
    Print #11,
    Call supHEADER(Pg, sup1)
End If
 LTotal_PenlaOutTimeQty1 = LTotal_PenlaOutTimeQty
Print #11, Space(5) & String(92, "-")
Print #11, Space(15) + _
            IIf(Ltotal_OrderQty = 0, "     ", Padl(Ltotal_OrderQty, 5, " ")) + Space(1); _
            IIf(Ltotal_RecvdQty = 0, "        ", Padl(Ltotal_RecvdQty, 9, " ")) + Space(2) + _
            Padl(INF(Ltotal_Conqty, 0), 9, " ") + Space(2) + _
            IIf(Ltotal_Nonqty = 0, "        ", Padl(Ltotal_Nonqty, 9, " ")) + Space(2) + _
            Padl(INF(Ltotal_RecvdQty, 0), 9, " ") + Space(1) + _
            IIf(Ltotal_InTimeQty = 0, "         ", Padl(Ltotal_InTimeQty, 7, " ")) + Space(0) + _
            IIf(Ltotal_outTimeQty = 0, "        ", Padl(Ltotal_outTimeQty, 9, " ")) + Space(1) + IIf(LTotal_PenCurOutTimeQty = 0, "        ", Padl(LTotal_PenCurOutTimeQty, 9, " ")) + Space(1) + IIf(LTotal_PenlaOutTimeQty = 0, "        ", Padl(LTotal_PenlaOutTimeQty, 7, " "))
            
Print #11, Space(5) & String(92, "-")
Co = Co + 3
Print #11,
Print #11, Chr(27) & "E" & Space(5) + "Rating Method  :  " & Chr(27) & "F"

Co = Co + 2

If Co > 56 Then
        Print #11, Space(5) & String(92, "-")
        Print #11, Chr(12)
        Co = 0
        Pg = Pg + 1
        Print #11,
        Call supHEADER(Pg, sup1)
End If

Print #11,
Print #11, Space(5) + "Total Qty Received       : " + Padl(INF(Ltotal_RecvdQty, 0), 7, " ") + "      Total Qty Received       : " + Padl(INF(Ltotal_RecvdQty, 0), 7, " ")
Print #11, Space(5) + "Total Qty Confirmed      : " + Padl(INF(Ltotal_RecvdQty - Ltotal_Nonqty, 0), 7, " ") + "      Total Received In Time   : " + Padl(INF(Ltotal_InTimeQty, 0), 7, " ")
Co = Co + 3
Print #11, Space(5) + "                           " + Space(7) + "      Total Pending(Late)      : " + Padl(INF(Ltotal_outTimeQty, 0), 7, " ")
Co = Co + 1
If Ltotal_RecvdQty > 0 Then
Print #11, Space(5) + "% Qty Confirmed          : " + Padl(INF((Ltotal_ConformedQty / Ltotal_RecvdQty * 100), 2), 7, " ") + " % " + "   % Qty Received In Time   : " + Padl(INF((Ltotal_InTimeQty - LTotal_PenlaOutTimeQty1) / Ltotal_RecvdQty * 100, 2), 7, " "); " %"
Co = Co + 1
Else
Print #11, Space(5) + "% Qty Confirmed          : " + Padl(INF(0, 2), 7, " ") + " % " + "   % Qty Received In Time   : " + Padl(INF(0, 2), 7, " "); " %"
End If
If tot3 > 0 Then
    var = ((tot3 / IIf(tot6 = 0, 1, tot6)) * 100) * 0.2
Else
    var = 0
End If                                                                                          'IIf(Trim(Padl(INF(rateqR, 2), 10, " ")) = "", "         0", Padl(INF(perqtyR, 2), 10, " ")); "%" '   Print #a, Space(5) + "Rating for Quality(80%) :"; Padl(INF(rateqC, 2), 10, " "); "%"; Space(2); "Rating for Quality(20%) :"; IIf(Trim(Padl(INF(rateqR, 2), 10, " ")) = "", "         0", Padl(INF(rateqR, 2), 10, " ")); "%" 'Print #11, Space(5) + "Rating For Quality (80%) : " + Padl(INF(((tot4 / IIf(tot3 = 0, 1, tot3)) * 102) * 0.8, 2), 7, " "); " % " + "   Rating For Delivery(20%) : " + Padl(INF(var, 2), 7, " ") + " %" ''Padl(((tot3 / iif(tot4=0,1,tot4)) * 102) * 0.02, 7, " ")



Set RS2 = New Recordset
RS2.Open "Select SuppAssesQuality,SuppAssesDelivery from rm_param", db, adOpenStatic
If RS2.EOF = False Then
    dblQuality = RS2(0)
    dblDelivery = RS2(1)
Else
    dblQuality = 0
    dblDelivery = 0
End If

Dim tot As Double
If Ltotal_RecvdQty > 0 Then
'Print #11, Space(5) + "Rating For Quality (80%) : " + IIf(Trim(Padl(INF(conrate, 2), 7, " ")) = "", "      0", Padl(INF(conrate, 2), 7, " ")); " % " + "   Rating For Delivery(20%) : " + Padl(INF(conrate1, 2), 7, " ") + " %" ''Padl(((tot3 / iif(tot4=0,1,tot4)) * 102) * 0.02, 7, " ")
Print #11, Space(5) + "Rating For Quality (" & dblQuality & "%) : " + Padl(INF((Ltotal_ConformedQty / Ltotal_RecvdQty * dblQuality), 2), 7, " ") + " % " + "   Rating For Delivery(" & dblDelivery & "%) : " + Padl(INF((Ltotal_InTimeQty - LTotal_PenlaOutTimeQty1) / Ltotal_RecvdQty * dblDelivery, 2), 7, " "); " %"
Print #11,
Else
Print #11, Space(5) + "Rating For Quality (" & dblQuality & "%) : " + Padl(INF(0, 2), 7, " ") + " % " + "   Rating For Delivery(" & dblDelivery & "%) : " + Padl(INF(0, 2), 7, " "); " %"
End If
If Ltotal_RecvdQty > 0 Then
tot = (Ltotal_ConformedQty / Ltotal_RecvdQty * dblQuality) + (Ltotal_InTimeQty - LTotal_PenlaOutTimeQty1) / Ltotal_RecvdQty * dblDelivery
TEMP = conrate + conrate1
Else
tot = 0
TEMP = 0
End If
'Print #11, Chr(27) & "E" & Space(25) + "Overall Supplier Rating : " + Padl(INF((Ltotal_ConformedQty / Ltotal_RecvdQty * 80) + (Ltotal_InTimeQty / Ltotal_RecvdQty * 20), 2), 8, " ") + " %" & Chr(27) & "F"
Print #11, Space(25) + "Overall Supplier Rating : " + Padl(INF(tot, 2), 8, " ") + " %"
Print #11,
Print #11,
Print #11,
Print #11,
Print #11,
Print #11, Space(5) & String(92, "-")
'Print #11, Chr(27) & "E" & Space(15) + "Cotton Clerk" + Space(20) + "FM" + Space(20) + "MD" & Chr(27) & "F"
 Call footermod(CInt(11), footerstr, 85)
Print #11, Chr(12)
Co = Co + 7

Close #11

'Open "c:\supplassess.bat" For Output As #11
'Print #11, "cd\"
'Print #11, "c:"
'Print #11, "cd\"
'Print #11, "type supplassess.TXT>prn"
'Close #11
'
'RPTV.txtfile = "c:\supplassess.TXT"
'RPTV.Batfile = "c:\supplassess.bat"
Call KALBATPROCESS("supplassess")
Screen.MousePointer = 0

End Sub

