Attribute VB_Name = "RMI_STORELEDGER1"
Dim opf As New Recordset
Dim opf1 As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9, op10 As Double
Dim rsP As New Recordset
Dim Namers As Recordset
Dim VarName As String, varnm1 As String, varnm2
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim A As Integer, i As Integer
Dim co As Integer


Public Sub stockledger_stock1(F_Date As String, T_Date As String, Catcd As String)
Dim RS1 As New Recordset
Dim rs2 As New Recordset
Dim rs3 As New Recordset
Dim tmprs As New Recordset, tmprs1 As New Recordset
Dim rs As New Recordset
Dim RPTV As Report.ReportView
Dim recp_bales As Double, op_bales As Double, sop_bales As Double
Dim iss_bales As Double
Dim close_bales As Double, TCLOSE_BALES As Double
Dim recp_wt As Double, recp1_wt As Double, op_wt As Double, sop_wt As Double
Dim iss_wt As Double, iss1_wt As Double
Dim iss_rate As Double, iss1_rate As Double
Dim recp_rate As Double, recp1_rate As Double
Dim close_wt As Double, tclose_wt As Double
Dim recp_val As Double, recp1_val As Double, op_val As Double, sop_val As Double
Dim iss_val As Double, iss1_val As Double
Dim close_val As Double, tclose_val As Double
Dim clotot As Double
Dim cnn As Connection
Set cnn = New Connection
Dim prev As String, LTNo, ltno1, varnm
Dim bal As Integer, j As Integer, k As Integer, J1, K1
Dim isbal, rbal As Double
Dim gop_bale As Double, gclose_bales As Double, grecp_bale As Double, giss_bale As Double
Dim gop_wt As Double, gclose_wt As Double, grecp_wt As Double, giss_wt As Double
Dim gop_val As Double, gclose_val As Double, grecp_val As Double, giss_val As Double

Dim str As String

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

Set RPTV = New Report.ReportView
A = FreeFile
Close
Open "C:\sv.TXT" For Output As #A
pg1 = 1
co = 0
Print #A, Chr(15)
co = co + 1
i = 0: j = 0: k = 0
Call PartyHeader(pg1, co, F_Date, T_Date, Catcd)

prev = ""
Set rs = New Recordset

   Set tmprs1 = New Recordset
   'tmprs1.Open "select distinct lotno from rm_lot where varcode='" & rs("varcode") & "' order by lotno", cnn, adOpenStatic
   tmprs1.Open "select distinct lotno,catcd from rm_lot order by lotno", cnn, adOpenStatic
   Do Until tmprs1.EOF
   Set tmprs = New Recordset
    J1 = 0: K1 = 0
   tmprs.Open "select a.varcode,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            "b.lotno=" & tmprs1("lotno") & " and  b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0 group by b.varcode,b.bblflg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt AND b.lotno=" & tmprs1("lotno") & " and  c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.varcode,b.bblflg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where (BALES-ISNULL(ISSBAL,0)>0 ) and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.lotno=" & tmprs1("lotno") & " AND  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=" & tmprs1("lotno") & " and  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.opflg,b.bblflg))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic

   Do Until tmprs.EOF
   op_bales = IIf(tmprs(1) > 0, tmprs(1), tmprs(2))
   sop_bales = sop_bales + IIf(tmprs(1) > 0, tmprs(1), tmprs(2))
   op_wt = tmprs(3)
   sop_wt = tmprs(3) + sop_wt
   'str = "select distinct LOTDT,sum(NETWT),sum(BALES),ROUND((ISNULL(RATECY,0)/355.616),2),(sum(NETWT))*ROUND((ISNULL(RATECY,0)/355.616),2) as closingrate from rm_lot where  varcode='" & rs(0) & "'and lotno=" & tmprs1("lotno") & " AND LOTDT between  '" & Format(F_Date, "YYYY-MM-DD") & "' and '" & Format(T_Date, "YYYY-MM-DD") & "'  AND LOTYEAR ='" & Year(yfdate) & "'  AND NETWT > 0 AND BALES > 0 group by  lotdt,NETWT,BALES,RATECY,varcode"
   str = "select distinct LOTDT,sum(NETWT),sum(BALES),ROUND((ISNULL(RATECY,0)/355.616),2),(sum(NETWT))*ROUND((ISNULL(RATECY,0)/355.616),2) as closingrate from rm_lot where  lotno=" & tmprs1("lotno") & " AND LOTDT between  '" & Format(F_Date, "YYYY-MM-DD") & "' and '" & Format(T_Date, "YYYY-MM-DD") & "'  AND LOTYEAR ='" & Year(yfdate) & "'  AND NETWT > 0 AND BALES > 0 group by  lotdt,NETWT,BALES,RATECY,varcode"
   Set RS1 = New Recordset
   RS1.Open str, cnn, adOpenStatic, adLockOptimistic

   If RS1.EOF = False Then
      i = 1: k = k + 1: K1 = K1 + 1
      Do Until RS1.EOF
         If LTNo <> tmprs1("lotno") Then
         Print #A,
         op_val = RS1(3) * tmprs(3)
         If op_bales > 0 Then sop_val = (RS1(3) * tmprs(3)) + sop_val
         Print #A, Space(7) & Padl(tmprs1("lotno"), 3, "") & Space(1); RS1("lotdt") & Space(4) & Padl(IIf(tmprs(1) > 0, tmprs(1), tmprs(2)), 5, "") & Space(4) & Padl(INF(tmprs(3), 2), 11, "") & Space(2) & Padl(INF(op_val, 2), 11, "") & Space(15) & Padl(RS1(2), 5, " ") & Space(1) & Padl(INF(RS1(1), 3), 19, " ") & Space(1) & Padl(INF(RS1(4), 2), 17, " ") & Space(2) & Space(9) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Space(1) & Space(1) & Space(2) & Space(2);
         LTNo = tmprs1("lotno")
         op_bales = op_bales + RS1(2)
         op_wt = op_wt + RS1(1)
         recp1_bales = 0: recp1_wt = 0: recp1_rate = 0
         iss1_bales = 0: iss1_wt = 0: iss1_rate = 0
         Else
         Print #A, Space(11) & RS1("lotdt") & Space(10) & Space(4) & Space(11) & Space(16) & Space(12) & Padl(RS1(2), 5, " ") & Space(1) & Padl(INF(RS1(1), 3), 19, " ") & Space(1) & Padl(INF(RS1(4), 2), 17, " ") & Space(2) & Space(9) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Space(1) & Space(2) & Space(1);
         End If
         If recp_bales >= 0 Then recp_bales = recp_bales + RS1(2): recp1_bales = IIf(recp1_bales < 0, 0, recp1_bales) + RS1(2)
         If recp_wt >= 0 Then recp_wt = recp_wt + RS1(1): recp1_wt = IIf(recp1_wt < 0, 0, recp1_wt) + RS1(1)
         If recp_rate >= 0 Then recp_rate = recp_rate + RS1(4): recp1_rate = IIf(recp1_rate < 0, 0, recp1_rate) + RS1(4)
         RS1.MoveNext
      Loop
   Else
   i = 0
   End If

   Set rs2 = New Recordset
   'rs2.Open "Select distinct A.DOCDT AS LOTDT,COUNT(A.BALENO) as bale, round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as WEIGHT,round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),2) * ROUND((ISNULL(B.RATECY,0)/355.616),2) AS CLOSINGRATE,ROUND((ISNULL(RATECY,0)/355.616),2) from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt between  '" & Format(F_Date, "YYYY-MM-DD") & "' and '" & Format(T_Date, "YYYY-MM-DD") & "' and  a.catcd='C' and lotyear='" & Year(yfdate) & "' AND B.VARCODE='" & rs(0) & "' and a.lotno=" & tmprs1("lotno") & " group by a.catcd,A.DOCDT,B.RATECY", cnn
   rs2.Open "Select distinct A.DOCDT AS LOTDT,COUNT(A.BALENO) as bale, round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as WEIGHT,round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),3) * ROUND((ISNULL(B.RATECY,0)/355.616),2) AS CLOSINGRATE,ROUND((ISNULL(RATECY,0)/355.616),2) from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt between  '" & Format(F_Date, "YYYY-MM-DD") & "' and '" & Format(T_Date, "YYYY-MM-DD") & "' and  a.catcd='C' and lotyear='" & Year(yfdate) & "' and a.lotno=" & tmprs1("lotno") & " group by a.catcd,A.DOCDT,B.RATECY", cnn
   If rs2.EOF = False Then
   j = j + 1: J1 = J1 + 1
   Do Until rs2.EOF
      If LTNo <> tmprs1("lotno") Then
         Print #A,
         op_val = rs2(4) * tmprs(3)
         If op_bales > 0 Then sop_val = (rs2(4) * tmprs(3)) + sop_val
         Print #A, Space(7) & Padl(tmprs1("lotno"), 3, "") & Space(1) & rs2("lotdt") & Space(5) & Padl(IIf(tmprs(1) > 0, tmprs(1), tmprs(2)), 5, "") & Space(8) & Padl(INF(tmprs(3), 2), 12, "") & Space(1) & Space(4) & Padl(INF(op_val, 2), 12, "") & Space(18) & Space(8) & Space(20) & Space(5) & Padl(rs2(1), 9, " ") & Space(1) & Padl(INF(rs2(2), 3), 19, " ") & Space(4) & Padl(INF(rs2(3), 2), 17, " ") & Space(5) & Space(1);
         LTNo = tmprs1("lotno")
         op_bales = op_bales - rs2(1)
         op_wt = op_wt - rs2(2)
         op_val = op_val - rs2(3)
      Else
         If i = 1 Then
         Print #A,
         i = 0
         End If
         Print #A, Space(11) & rs2("lotdt") & Space(10) & Space(8) & Space(12) & Space(7) & Space(5) & Space(2) & Space(19) & Space(2) & Space(17) & Space(12) & Space(4) & Padl(rs2(1), 9, " ") & Space(3) & Padl(INF(rs2(2), 3), 17, " ") & Space(6) & Padl(INF(rs2(3), 2), 15, " ") & Space(5) & Space(1);
         op_bales = op_bales - rs2(1)
         op_wt = op_wt - rs2(2)
         op_val = op_val - rs2(3)
      End If
      If iss_bales >= 0 Then iss_bales = iss_bales + rs2(1): iss1_bales = iss1_bales + rs2(1)
      If iss_wt >= 0 Then iss_wt = iss_wt + rs2(2): iss1_wt = iss1_wt + rs2(2)
      If iss_rate >= 0 Then iss_rate = iss_rate + rs2(3): iss1_rate = iss1_rate + rs2(3)
      TCLOSE_BALES = op_bales
      tclose_wt = op_wt
      tclose_val = op_val
      Print #A, Space(1) & Padl(IIf(TCLOSE_BALES <= 0, "", TCLOSE_BALES), 3, "") & Space(9) & Padl(INF(IIf(tclose_wt <= 0, "", tclose_wt), 3), 9, "") & Space(7) & Padl(INF(IIf(tclose_val <= 0, "", tclose_val), 2), 11, "")
      rs2.MoveNext
   Loop
   Else
   If i = 1 Then
   TCLOSE_BALES = op_bales
   tclose_wt = op_wt
   tclose_val = recp_rate
   tclose_val = IIf(op_val <= 0, recp1_rate, op_val)
   Print #A, Padl(IIf(TCLOSE_BALES <= 0, "", TCLOSE_BALES), 3, "") & Space(9) & Padl(INF(IIf(tclose_wt <= 0, "", tclose_wt), 2), 9, "") & Space(7) & Padl(INF(IIf(tclose_val <= 0, recp1_rate, tclose_val), 2), 11, "")
   End If
   End If
   Dim tmprs3 As Recordset, cls
   If RS1.RecordCount = 0 And rs2.RecordCount = 0 And LTNo <> tmprs1("lotno") Then
      
      Set tmprs3 = New Recordset
      'tmprs3.Open "select distinct lotdt,ratecy from rm_lot where lotno=" & tmprs1("lotno") & " and varcode='" & rs(0) & "' and lotyear='" & Year(yfdate) & "' AND NETWT > 0 AND BALES > 0 and  catcd='C'", cnn, adOpenStatic
      tmprs3.Open "select distinct lotdt,ratecy from rm_lot where lotno=" & tmprs1("lotno") & " AND lotyear='" & Year(yfdate) & "' AND NETWT > 0 AND BALES > 0 and  catcd='" & tmprs1("catcd") & "'", cnn, adOpenStatic
      
      cls = tmprs(3) * Round((tmprs3("ratecy") / 355.616), 2)
      Print #A, Space(7) & Padl(tmprs1("lotno"), 3, "") & Space(1) & tmprs3("lotdt") & Space(5) & Padl(IIf(tmprs(1) > 0, tmprs(1), tmprs(2)), 5, "") & Space(8) & Padl(INF(IIf(tmprs(3) > 0, tmprs(3), ""), 2), 12, "") & Space(1) & Space(4) & Padl(INF(IIf(cls > 0, cls, ""), 2), 12, "") & Space(18) & Space(8) & Space(20) & Space(5) & Space(9) & Space(20) & Space(4) & Space(5) & Space(19);
      Print #A, Padl(IIf(tmprs(1) > 0, tmprs(1), tmprs(2)), 3, "") & Space(9) & Padl(INF(IIf(tmprs(3) > 0, tmprs(3), ""), 2), 9, "") & Space(7) & Padl(INF(IIf(cls > 0, cls, ""), 2), 11, "")
      'tclose_val = tclose_val + cls
      If tmprs(1) > 0 Then sop_val = sop_val + IIf(cls > 0, cls, 0)
      close_bales = tmprs(1) + close_bales
      If tmprs(1) > 0 Then close_wt = close_wt + IIf(tmprs(3) > 0, tmprs(3), 0)
      If tmprs(1) > 0 Then close_val = IIf(cls > 0, cls, 0) + close_val
      End If
   tmprs.MoveNext
   Loop
   If K1 <> 0 Or J1 <> 0 Then
   close_bales = TCLOSE_BALES + close_bales
   If op_bales > 0 Then close_wt = IIf(tclose_wt <= 0, 0, tclose_wt) + close_wt
   If op_bales > 0 Then close_val = IIf(tclose_val <= 0, 0, tclose_val) + close_val
   End If
   tmprs1.MoveNext
   Loop
   'If RS1.RecordCount <> 0 Or rs2.RecordCount <> 0 Then
'    If k <> 0 Or j <> 0 Then
'      'If sop_bales >= iss_bales Then close_bales = (sop_bales + recp_bales) - iss_bales
'
'      'If sop_wt >= iss_wt Then close_wt = sop_wt + recp_wt - iss_wt
'
'      'If sop_val >= iss_rate Then close_val = sop_val + recp_rate - iss_rate
'      'close_bales = (sop_bales + recp_bales) - iss_bales
'      'close_wt = sop_wt + recp_wt - iss_wt
'      'close_val = sop_val + recp_rate - iss_rate
'      Print #A, Space(5) + String(228 - 26 + 23, "-")
'      Print #A, Space(20 + 18) & Padl(sop_bales, 7, "") & Space(5) & Padl(INF(sop_wt, 2), 15, "") & Space(2) & Padl(INF(sop_val, 2), 15, "") & Space(5) & Padl(recp_bales, 5, " ") & Space(1) & Padl(INF(recp_wt, 3), 19, " ") & Space(1) & Padl(INF(recp_rate, 2), 17, " ") & Space(3) & Padl(iss_bales, 9, " ") & Space(3) & Padl(INF(iss_wt, 3), 17, " ") & Space(2) & Padl(INF(iss_rate, 2), 19, " ") & Space(5) & Padl(IIf(IsNull(close_bales), "", close_bales), 5, " ") & Space(1) & Padl(INF(close_wt, 3), 17, " ") & Space(1) & Padl(INF(close_val, 2), 17, " ")
'      Print #A, Space(5) + String(228 - 26 + 23, "-")
      gop_bales = gop_bales + sop_bales: gop_wt = sop_wt + gop_wt: gop_val = gop_val + sop_val
      grecp_bales = grecp_bales + recp_bales: grecp_wt = recp_wt + grecp_wt: grecp_val = grecp_val + recp_rate
      giss_bales = giss_bales + iss_bales: giss_wt = iss_wt + giss_wt: giss_val = giss_val + iss_rate
      gclose_bales = gclose_bales + close_bales: gclose_wt = close_wt + gclose_wt: gclose_val = gclose_val + close_val

'      recp_bales = 0: recp1_bales = 0: sop_bales = 0
'      recp_wt = 0: recp1_wt = 0: sop_wt = 0
'      recp_rate = 0: recp1_rate = 0: sop_val = 0
'      iss_bales = 0: iss1_bales = 0
'      iss_wt = 0: iss1_wt = 0: i = 0: j = 0
'      iss_rate = 0: iss1_rate = 0
'      close_bales = 0: close_wt = 0: close_val = 0
'      tclose_wt = 0: TCLOSE_BALES = 0: tclose_val = 0
'      End If
'
Print #A, Space(5) + String(228 - 26 + 23, "-")
Print #A, Space(6) & Padr("Grand Total", 11, "") & Space(7) & Padl(gop_bales, 7, "") & Space(5) & Padl(INF(gop_wt, 2), 15, "") & Space(2) & Padl(INF(gop_val, 2), 15, "") & Space(5) & Padl(grecp_bales, 5, " ") & Space(1) & Padl(INF(grecp_wt, 3), 19, " ") & Space(1) & Padl(INF(grecp_val, 2), 17, " ") & Space(3) & Padl(giss_bales, 9, " ") & Space(3) & Padl(INF(giss_wt, 3), 17, " ") & Space(2) & Padl(INF(giss_val, 2), 19, " ") & Space(5) & Padl(IIf(IsNull(gclose_bales), "", gclose_bales), 5, " ") & Space(1) & Padl(INF(gclose_wt, 3), 17, " ") & Space(1) & Padl(INF(gclose_val, 2), 17, " ")
Print #A, Space(5) + String(228 - 26 + 23, "-")
err1:
      
   
Close #A
A = FreeFile
Open "c:\sv.bat" For Output As #A
Print #A, "cd\"
Print #A, "c:"
Print #A, "cd\"
Print #A, "type sv.txt>prn"
Close #A
RPTV.txtfile = "c:\sv.txt"
RPTV.Batfile = "c:\sv.bat"
End Sub

Public Sub StockqtyReport(F_Date As String, T_Date As String, Catcd As String)
Dim RS1 As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim sr As String
Dim totbale_r As Double
Dim totbale_i As Double
Dim totiss_val, totrec_val, totrec_wt, totiss_wt As Double
Dim clotot As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim cnn As Connection
Set cnn = New Connection
Dim prev As String
Dim bal As Integer
Dim isbal, rbal As Integer




cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
'sr = Catcd
'sr = Mid$(sr, 1, InStr(sr, "-") - 1)
        Set RPTV = New Report.ReportView
        A = FreeFile
        Close #A
        Close
        Open "C:\sv.TXT" For Output As #A
        pg1 = 1
        co = 0
        Print #A, Chr(15)
        co = co + 1
        Call PartyHeader(pg1, co, F_Date, T_Date, Catcd)

prev = ""
Set rs = New Recordset
rs.Open "select distinct a.VARNAME,a.varcode from rm_var a,rm_lot b where a.varcode = b.varcode  and arrdt between  ' " & Format(F_Date, "yyyy/mm/dd") & "'  and  ' " & Format(T_Date, "yyyy/mm/dd") & "' ", cnn, adOpenStatic

bal = 0


Do While Not rs.EOF

totbale_r = Empty
totbale_i = Empty
totrec_val = Empty
totiss_val = Empty
clotot = Empty
totiss_wt = Empty
totrec_wt = Empty

Print #A,
Set RS1 = New Recordset
'rs1.Open "select  distinct a.lotdt,b.docdt,a.arrdt,a.bales 'recpt_bales', a.NETWT as recpt_netweight, (NETWT * RATEKG)  as recpt_rate,  a.ISSBAL as   'issu_bales', a.ISSWT as issu_weight, a.ISSWT * a.RATEKG as issu_rate  ,dOCDT from rm_lot a ,rm_issb b, rm_var c where  c.varname='" & rs("VarName") & "' and a.VARCODE= c.varcode and a.lotno = b.lotno and a.lotdt =b.lotdt group by a.ARRDT,a.bales,a.netwt,a.ratekg,a.ISSBAL,a.ISSWT,b.dOCDT,a.lotdt", cnn, adOpenStatic
RS1.Open "select  distinct a.LOTDT, " & _
"sum(isnull(a.BALES,0)) recpt_bales, " & _
"case when a.OPFLG='Y' then sum(isnull(a.netwt,0)) else 0 end recpt_netweight, " & _
"case when a.OPFLG='N' then sum(isnull(a.netwt,0)) else 0 end issu_netweight, " & _
"a.RATEKG,(sum(a.NETWT)*avg(a.RATEKG)) recpt_rate, " & _
"sum(isnull(a.ISSBAL,0)) as issu_bales,sum(isnull(a.ISSWT,0)) as issu_weight,sum(a.ISSWT)*avg(a.RATEKG) as issu_rate " & _
"from RM_LOT a,rm_issb b,rm_var c " & _
"Where a.LOTNO = b.LOTNO " & _
"and a.CATCD=b.CATCD " & _
"and a.lotdt=b.lotdt and a.varcode='" & rs(1) & "' " & _
"and a.CATCD=c.CATCD and c.varcode=a.varcode " & _
"group by  a.LOTDT,a.BALES,a.netwt,a.ISSWT,a.ISSBAL,a.OPFLG,a.RATEKG", cnn, adOpenStatic, adLockOptimistic


Do While Not RS1.EOF

cbal = ""
cwt = ""
cval = ""
isbal = CInt(RS1("issu_bales"))
rbal = CInt(RS1("recpt_bales"))

If isbal <> 0 And rbal <> 0 Then

'  If rs1("arrdt") <> Empty And rs1("docdt") = Empty Then
'      If prev <> rs("varname") Then Print #a, Space(5) & rs("varname")
'        prev = rs("varname")
'         If prevarrdt <> rs1("arrdt") Then
'           'Print #a, Space(24) & rs1("arrdt") & Space(14) & Padr(rs1("recpt_bales"), 5, "") & Space(20) & Padl(rs1("recpt_netweight"), 12, "; ") & Space(17) & Padl(rs1("recpt_rate"), 12, "") & rs1("docdt") & Padr(rs1("recpt_bales"), 5, "") & Space(23) & Padl(rs1("recpt_netweight"), 12, "") & Space(17) & Padl(rs1("recpt_rate"), 12, "") & ""
'           Print #a, Space(5 + 20 + 2) & rs1("arrdt") & Space(2) & Padl(rs1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(rs1("recpt_netweight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("recpt_rate"), 2), 19, " ") & Space(2) & Space(9) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19)
'           prevarrdt = rs1("arrdt")
'         Else
'           Print #a, Space(5 + 20 + 2) & Space(10) & Space(2) & Padl(rs1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(rs1("recpt_netweight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("recpt_rate"), 2), 19, " ") & Space(2) & Padl(rs1("issu_bales"), 9, " ") & Space(2) & Padl(INF(rs1("issu_weight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("issu_rate"), 2), 19, " ") & Space(2) & Padl(IIf(IsNull(cbal), "", cbal), 5, " ") & Space(2) & Padl(INF(cwt, 3), 19, " ") & Space(2) & Padl(INF(cval, 2), 19, " ")
'         End If
'  ElseIf rs1("docdt") <> Empty And rs1("arrdt") = Empty Then
'        If prev <> rs("varname") Then Print #a, Space(5) & rs("varname")
'           prev = rs("varname")
'           If prevarrdt <> rs1("arrdt") Then
'            'Print #a, Space(5 + 20 + 2) & rs1("arrdt") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Space(9) & Space(2) & sapce(19) & Space(2) & Space(19) & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19)
'            Print #a, Space(5 + 20 + 2) & rs1("arrdt") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Padl(rs1("issu_bales"), 9, " ") & Space(2) & Padl(INF(rs1("issu_weight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("issu_rate"), 2), 19, " ") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19)
'           Else
'             Print #a, Space(5 + 20 + 2) & Space(10) & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Padl(rs1("issu_bales"), 9, " ") & Space(2) & Padl(INF(rs1("issu_weight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("issu_rate"), 2), 19, " ") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19)
'           End If
'
'  'ElseIf rs1("arrdt") = rs1("docdt") Then
'
'  Else
'
       If prev <> rs("varname") Then Print #A, Space(5) & Padr(rs("varname"), 20, " ")
       prev = rs("varname")

            cbal = RS1("recpt_bales") - RS1("issu_bales")
            If RS1("recpt_netweight") = 0 Then
                cwt = RS1("issu_weight")
            Else
                cwt = RS1("recpt_netweight") - RS1("issu_weight")
            End If
                cval = RS1("recpt_rate") - RS1("issu_rate")
            If prevarrdt <> RS1("lotdt") Then
               Print #A, Space(5 + 20 + 2) & RS1("lotdt") & Space(2) & Padl(RS1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(RS1("recpt_netweight"), 3), 19, " ") & Space(2) & Padl(INF(RS1("recpt_rate"), 2), 19, " ") & Space(2) & Padl(RS1("issu_bales"), 9, " ") & Space(2) & Padl(INF(RS1("issu_weight"), 3), 19, " ") & Space(2) & Padl(INF(RS1("issu_rate"), 2), 19, " ") & Space(2) & Padl(IIf(IsNull(cbal), "", cbal), 5, " ") & Space(2) & Padl(INF(cwt, 3), 19, " ") & Space(2) & Padl(INF(cval, 2), 19, " ")
               prevarrdt = RS1("lotdt")
            Else
               Print #A, Space(5 + 20 + 2) & Space(10) & Space(2) & Padl(RS1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(RS1("recpt_netweight"), 3), 19, " ") & Space(2) & Padl(INF(RS1("recpt_rate"), 2), 19, " ") & Space(2) & Padl(RS1("issu_bales"), 9, " ") & Space(2) & Padl(INF(RS1("issu_weight"), 3), 19, " ") & Space(2) & Padl(INF(RS1("issu_rate"), 2), 19, " ") & Space(2) & Padl(IIf(IsNull(cbal), "", cbal), 5, " ") & Space(2) & Padl(INF(cwt, 3), 19, " ") & Space(2) & Padl(INF(cval, 2), 19, " ")

            End If


End If
Print #A,

'If rs1("arrdt") <> Empty And rs1("docdt") = Empty Then
'    If isbal <> 0 And rbal <> 0 Then
'        If prev <> rs("varname") Then Print #a, Space(5) & rs("varname")
'        prev = rs("varname")
'   End If
'If prevarrdt <> rs1("arrdt") Then
'        Print #a, Space(24) & rs1("arrdt") & Space(14) & Padr(rs1("recpt_bales"), 5, "") & Space(20) & Padl(rs1("recpt_netweight"), 12, "; ") & Space(17) & Padl(rs1("recpt_rate"), 12, "") & rs1("docdt") & Padr(rs1("recpt_bales"), 5, "") & Space(23) & Padl(rs1("recpt_netweight"), 12, "") & Space(17) & Padl(rs1("recpt_rate"), 12, "") & ""
'   Else
'        Print #a, Space(24) & Space(5) & Space(14) & Padr(rs1("recpt_bales"), 5, "") & Space(20) & Padl(rs1("recpt_netweight"), 12, "") & Space(17) & Padl(rs1("recpt_rate"), 12, "") & rs1("docdt") & Padr(rs1("recpt_bales; "), 5, "") & Space(23) & Padl(rs1("recpt_netweight"), 12, "") & Space(17) & Padl(rs1("recpt_rate"), 12, "") & ""
'   End If
'   prevarrdt = rs1("arrdt")
'Print #a,
'ElseIf rs1("docdt") <> Empty And rs1("arrdt") = Empty Then
'    If isbal <> 0 And rbal <> 0 Then
'        If prev <> rs("varname") Then Print #a, Space(5) & rs("varname")
'        prev = rs("varname")
'    End If
'    Print #a, Space(24) & rs1("docdt") & Space(54) & Padr(rs1("issu_bales"), 5, " ") & Space(2) & Padl(rs1("issu_weight"), 10, " ") & Space(2) & Padl(rs1("issu_rate"), 10, " ") & Space(2) & Padr(rs1("issu_bales"), 5, " ") & Space(2) & Padl(rs1("issu_weight"), 10, " ") & Space(2) & Padl(rs1("issu_rate"), 10, " ")
'    Print #a,
'ElseIf rs1("arrdt") = rs1("docdt") Then
'
'    If isbal <> 0 And rbal <> 0 Then
'       If prev <> rs("varname") Then Print #a, Space(5) & rs("varname")
'       prev = rs("varname")
'    End If
'    cbal = rs1("recpt_bales") - rs1("issu_bales")
'    cwt = rs1("recpt_netweight") - rs1("issu_weight")
'    cval = rs1("recpt_rate") - rs1("issu_rate")
'    Print #a, Space(31) & rs1("arrdt") & Space(9) & Padr(rs1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(rs1("recpt_netweight"), 3), 12, " ") & Space(2) & Padl(INF(rs1("recpt_rate"), 2), 12, " ") & Space(8) & Padr(rs1("issu_bales"), 5, " ") & Space(2) & Padl(INF(rs1("issu_weight"), 3), 12, " ") & Space(2) & Padl(INF(rs1("issu_rate"), 2), 12, " ") & Space(8) & Padr(cbal, 5, " ") & Space(2) & Padl(INF(cwt, 3), 12, " ") & Space(2) & Padl(INF(cval, 2), 12, " ") '**********CLOSING
'    Print #a,
'Else
'If isbal <> 0 And rbal <> 0 Then
'       If prev <> rs("varname") Then Print #a, Space(5) & rs("varname")
'       prev = rs("varname")
'    End If
'    cbal = rs1("recpt_bales") - rs1("issu_bales")
'    If rs1("recpt_netweight") = 0 Then
'        cwt = rs1("issu_weight")
'    Else
'        cwt = rs1("recpt_netweight") - rs1("issu_weight")
'    End If
'    cval = rs1("recpt_rate") - rs1("issu_rate")
'    If prevarrdt <> rs1("arrdt") Then
'        Print #a, Space(31) & rs1("arrdt") & Space(9) & Padr(rs1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(rs1("recpt_netweight"), 3), 12, " ") & Space(2) & Padl(INF(rs1("recpt_rate"), 2), 12, " ") & rs1("docdt") & Padr(rs1("issu_bales"), 5, " ") & Space(2) & Padl(INF(rs1("issu_weight"), 3), 12, " ") & Space(2) & Padl(INF(rs1("issu_rate"), 2), 12, " ") & Space(8) & Padr(IIf(IsNull(cbal), "", cbal), 5, " ") & Space(2) & Padl(INF(cwt, 3), 12, " ") & Space(2) & Padl(INF(cval, 2), 12, " ") '**********CLOSING
'        prevarrdt = rs1("arrdt")
'    Else
'        Print #a, Space(31) & Space(8) & Space(9) & Padr(rs1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(rs1("recpt_netweight"), 3), 12, " ") & Space(2) & Padl(INF(rs1("recpt_rate"), 2), 12, " ") & rs1("docdt") & Padr(rs1("issu_bales"), 5, " ") & Space(2) & Padl(INF(rs1("issu_weight"), 3), 12, " ") & Space(2) & Padl(INF(rs1("issu_rate"), 2), 12, " ") & Space(8) & Padr(cbal, 5, " ") & Space(2) & Padl(INF(cwt, 3), 12, " ") & Space(2) & Padl(INF(cval, 2), 12, " ")
'    End If
'    Print #a,
'End If
'

      totbale_r = totbale_r + CDbl(RS1("recpt_bales"))
      totbale_i = totbale_i + CDbl(RS1("issu_bales"))
      totrec_val = totrec_val + RS1("recpt_rate")
      totiss_val = totiss_val + RS1("issu_rate")
      clotot = clotot + Val(IIf(IsNull(cval), 0, cval))
      totiss_wt = totiss_wt + RS1("recpt_netweight")
      totrec_wt = totrec_wt + RS1("issu_netweight")



RS1.MoveNext           '2
Loop

If RS1.RecordCount <> 0 Then

        Print #A, Space(5) + String(228 - 68 + 23, "-")
        Print #A, Space(5 + 16) & Space(10) & Space(2) & Padl(totbale_r, 5, " ") & Space(2) & Padl(INF(totrec_wt, 3), 19, " ") & Space(2) & Padl(INF(totrec_val, 2), 19, " ") & Space(2) & Padl(totbale_i, 9, " ") & Space(2) & Padl(INF(totiss_wt, 3), 19, " ") & Space(2) & Padl(INF(totiss_val, 2), 19, " ") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Padl(INF(clotot, 2), 19, " ")
        Print #A, Space(5) + String(228 - 68 + 23, "-")
        Print #A, Chr(12)
        Print #A, Chr(18)

End If

rs.MoveNext
Loop


'        Print #a,
'        Print #a, Space(5) + String(228 - 68, "-")
'        ''''Print #a, Space(5) + "** Grand Total **"; Padl(CStr(Format(IIf(tot3 = 0, " ", tot3), "###,###,##0.000")), 22, " ") + Padl(CStr(Format(IIf(tot4 = 0, " ", tot4), "###,###,##0.00")), 16, " ") + Padl((CStr(IIf(tot5 = 0, " ", tot5))), 13, " ") + Padl((CStr(IIf(tot6 = 0, " ", tot6))), 13, " ") + Padl(CStr(Format(IIf(tot7 = 0, " ", tot7), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(tot8 = 0, " ", tot8), "###,###,##0.00")), 16, " ") + Padl((CStr(IIf(tot9 = 0, " ", tot9))), 13, " ") + Padl((CStr(IIf(tot10 = 0, " ", tot10))), 13, " ") + Padl(CStr(Format(IIf(tot11 = 0, " ", tot11), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(tot12 = 0, " ", tot12), "###,###,##0.00")), 16, " ") + Space(1) + Padl((CStr(IIf(tot13 = 0, " ", tot13))), 13, " ") + Padl((CStr(IIf(tot14 = 0, " ", tot14))), 13, " ") + Padl(CStr(Format(IIf(tot15 = 0, " ", tot15), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(tot16 = 0, " ", tot16), "###,###,##0.00")), 16, " ")
'        Print #a, Space(5) + "**Item Total **" & Space(12) & Padl(INF(tot1, 0), 19, " ") + Padl(INF(tot2, 0), 9, " ") + Padl(INF(tot3, 3), 13, " ") + Padl(INF(tot13, 2), 17, " ") + Padl(INF(tot4, 0), 10, " ") + Padl(INF(tot5, 0), 9, " ") + Padl(INF(tot6, 3), 14, " ") + Padl(INF(tot14, 3), 16, " ") + Padl(INF(tot7, 0), 10, " ") + Padl(INF(tot8, 0), 9, " ") + Padl(INF(tot9, 3), 14, " ") + Padl(INF(tot15, 2), 16, " ") + Padl(INF(tot10, 0), 10, " ") + Padl(INF(tot11, 0), 9, " ") + Padl(INF(tot12, 3), 14, " ") + Padl(INF(tot16, 2), 16, " ")
''        Print #a, totbale_r & totbale_i & totrec_val & totiss_val & clotot & totiss_wt & totrec_wt

'1

        Close #A
        A = FreeFile
        Open "c:\sv.bat" For Output As #A
        Print #A, "cd\"
        Print #A, "c:"
        Print #A, "cd\"
        Print #A, "type sv.txt>prn"
        Close #A
        RPTV.txtfile = "c:\sv.txt"
        RPTV.Batfile = "c:\sv.bat"
End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, u As String, v As String, w As String)
          Print #A, Chr(18)
          Print #A, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #A,
          sr = CStr(pdate) + Space(2)
          Print #A, Space(3) + Chr(27) + "E" + "Stock statement Lotwise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(8) + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #A, Space(5) + String(228 - 26 + 23, "-")
          Print #A, Space(5) + "                   <--------------Opening Balance--------------->  <-----------Receipts------------------------>    <------------Issues------------------------------>  <--------------Closing Balance------------->"
          Print #A, Space(5) & "LotNo    lotdate   Bales/               Weight            Value   Bales/               Weight             Value     Bales/               Weight                Value   Bales/              Weight             Value "
          Print #A, Space(5); "                    Bohras                                         Bohras                                            Bohras                                             Bohras"
          Print #A, Space(5) + String(228 - 26 + 23, "-")
                   co = co + 9
End Sub








