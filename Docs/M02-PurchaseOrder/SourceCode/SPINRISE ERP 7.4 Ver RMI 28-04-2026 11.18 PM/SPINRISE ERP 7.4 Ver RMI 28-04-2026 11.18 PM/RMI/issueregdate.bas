Attribute VB_Name = "issueregdate"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim TotRs As Recordset
Dim Namers As Recordset
Dim VarName As String
Dim GTotrs As Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim DIVNAME As String
Public Sub IssueDReport(u As String, v As String, DIVNAME As String)
Dim rs1 As Recordset
Dim rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim xx As New Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim sr As String
Dim tot1, t1 As Double
Dim tot2, t2 As Double
Dim tot3, t3 As Double
Dim tot4, t4 As Double
Dim tot5, t5 As Double
Dim tot6, t6 As Double
Dim tot7, t7 As Double
Dim tot8, t8 As Double
Dim tot9, t9 As Double
Dim tot10, t10 As Double
Dim tot11, t11 As Double
Dim tot12, t12 As Double
Dim tot13, t13 As Double
Dim tot14, t14 As Double
Dim tot15, t15 As Double
Dim s As String
Dim dt, dt1, DAY, vs1, chk1 As Date
Dim MON, vs, chk As String
Dim xxx As New Recordset
Dim Count, p, k As Integer
Dim cnn As Connection
Set cnn = New Connection
Dim qtyt As Double
Dim weigh As Double
Dim amt As Double
p = 0
amt = 0
atyt = 0
weigh = 0

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs4 = New Recordset
'Ravi rs4.Open "SHAPE {select distinct a.cntcd,Qntl=cast(sum(d.isskgs*c.ratekg*100)/sum(d.isskgs) as varchar),Candy=cast(sum(d.isskgs*c.ratekg)*100/sum(d.isskgs)*355.6 as varchar) from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,c.bblflg,a.docno,a.docdt,c.ratekg " & _
                         "}   AS Command5 APPEND (( SHAPE {select distinct a.cntcd,a.docno,a.docdt,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "'  group by cntcd,c.bblflg,a.docno,a.docdt,c.ratekg " & _
                         "}   AS Command6 APPEND ({select distinct a.cntcd ,d.docno,a.docdt,c.varcode,c.catcd,c.lotno,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by a.cntcd ,d.docno,c.varcode,a.docdt,c.catcd,c.lotno,c.bblflg,c.ratekg " & _
                         "}   AS Command7 RELATE 'cntcd' TO 'cntcd','docno' TO 'docno','docdt' TO 'docdt') AS Command7) AS Command6 RELATE 'cntcd' TO 'cntcd') AS Command6 ", cnn, adOpenStatic, adLockBatchOptimist
'original
'rs4.Open "SHAPE {select distinct a.cntcd,Qntl=(sum(d.actisskgs*c.ratekg*100)/sum(d.actisskgs-TAREWT/BALES) ),Candy=(ratecy) from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & Divcode & "' and a.isstype='P' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by cntcd,ratecy  ORDER BY a.cntcd" & _
'                         "}   AS Command5 APPEND (( SHAPE {select  a.cntcd,a.docno,a.docdt,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.actisskgs-TAREWT/BALES) 'netkgs',c.ratekg 'rate/quintal',(isnull(c.ratecy,0)/355.616)*sum(d.actisskgs) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where d.isstype='P' and c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by cntcd,c.bblflg,a.docno,a.docdt,c.ratekg,c.ratecy  ORDER BY a.cntcd,a.docdt" & _
'                         "}   AS Command6 APPEND ({select  a.cntcd ,d.docno,a.docdt,c.varcode,c.catcd,c.lotno,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.actisskgs-TAREWT/BALES) 'netkgs',c.ratekg 'rate/quintal',(isnull(c.ratecy,0)/355.616)*sum(d.actisskgs-TAREWT/BALES) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & Divcode & "' and d.isstype='P'  and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by a.cntcd ,d.docno,c.varcode,a.docdt,c.catcd,c.lotno,c.bblflg,c.ratekg,c.ratecy ORDER BY a.cntcd,a.docdt" & _
'                         "}   AS Command7 RELATE 'cntcd' TO 'cntcd','docno' TO 'docno','docdt' TO 'docdt') AS Command7) AS Command6 RELATE 'cntcd' TO 'cntcd') AS Command6 ", cnn, adOpenStatic, adLockBatchOptimistic

rs4.Open "SHAPE {select  b.docdt,Qntl=cast(sum(b.isskgs*a.ratekg*100)/sum(b.isskgs) as varchar),Candy=cast(sum(b.isskgs*a.ratekg)*100/sum(b.isskgs)*355.6 as varchar)from rm_lot a,rm_issb b,rm_issh c,fa_slmas d Where b.docdt = C.docdt and a.lotno = b.lotno and a.catcd=b.catcd and a.cntcode = c.cntcd and c.docno=b.docno Group By b.docdt" & _
                         "}   AS Command5 APPEND (( SHAPE {select d.docdt,a.docno,Bale=(case when c.bblflg='B' then sum(d.baleno) end),Bora=(case when c.bblflg='R' then sum(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount'from rm_issh a,rm_lot c,rm_issb d Where a.DOCNO = d.DOCNO and d.docdt = a.docdt group by d.docdt,c.bblflg,a.docno,c.ratekg" & _
                         "}   AS Command6 APPEND ({select e.slname,d.docno,c.varcode,a.docdt,c.lotno,Bale=(case when c.bblflg='B' then d.baleno end),Bora=(case when c.bblflg='R' then d.baleno end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount'from rm_issh a,rm_var b,rm_lot c,rm_issb d,fa_slmas e Where C.varcode = b.varcode and c.supcd = e.slcode and a.docno=d.docno group by e.slname,c.varcode,a.docdt,c.catcd,c.lotno,c.bblflg,c.ratekg,d.docno,d.baleno" & _
                         "}   AS Command7 RELATE 'docno' TO 'docno','docdt' TO 'docdt') AS Command7) AS Command6 RELATE 'docdt' TO 'docdt') AS Command6 ", cnn, adOpenStatic, adLockBatchOptimistic
If rs4.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
    Set RPTV = New Report.ReportView
    a = FreeFile
    Close #a
    Open "C:\issc.TXT" For Output As #a
    Print #a, Chr(15)
    pg1 = 1
    co = 1
    Call PartyHeader(pg1, co, u, v, DIVNAME)
        Set rs = New Recordset
        rs.Open "select distinct a.docdt,a.docno from rm_issh a,rm_count z,rm_var b,rm_lot c,rm_issb d Where a.isstype='P' and c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and a.cntcd=z.cntcd and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by a.docdt,a.docno ORDER BY a.docdt", db, adOpenStatic
        vs = Empty
        dt = rs("docdt")
        MON = Format(dt, "mmmm")
        vs1 = Empty
        dt1 = rs("docdt")
Do While Not rs.EOF
    dt = Empty
    dt = rs("docdt")
    MON = Format(dt, "mmmm")
If chk <> MON Then
    Print #a, Space(5) + Chr(27); "E"; Padr(CStr(Format(dt, "mmmm")), 9, " ") + Space(3) + "'" + Format(dt, "yyyy") + Chr(27) + "F"
    chk = Format(dt, "mmmm")
End If
        dt = Empty
        DAY = rs("docdt")
If chk1 <> dt1 Then
    Print #a, Space(5) + Padr(rs("docdt"), 10, " ")
    chk1 = rs("docdt")
End If
        co = co + 1
If co >= 50 Then
    co = 0
    pg1 = pg1 + 1
    Print #a, Space(5) + String(130, "-")
    Print #a, Chr(12)
    Call PartyHeader(pg1, co, u, v, DIVNAME)
End If
 
    Set rs2 = New Recordset
                                   
'''                 rs2.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratecandy),0)as ratecandy from " & _
'''                         "(select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',(sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0)))*round((isnull(a.ratecy,0)/355.616),2) 'Amount',(isnull(ratecy,0)/355.616) as ratekg,round((ratecy),0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end  " & _
'''                         "from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e  Where  b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt and a.divcode = '" & Divcode & "' and b.isstype='P' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT " & _
'''                         "and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt  between '" & Format(u, "YYYY-MM-DD") & "'  and '" & Format(v, "YYYY-MM-DD") & "'  and c.cntcd='" & rs(0) & "' and c.docno='" & rs1(0) & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd) a  group by varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd", db, adOpenStatic
        rs2.Open "select distinct a.slname,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,sum(isnull(a.netkgs,0)) netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,avg(ratecandy) as ratecandy from " & _
                 "(select C.DOCDT,f.slname, d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',(sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0)))*(isnull(a.ratecy,0)/355.616) 'Amount',(isnull(ratecy,0)/355.616) as ratekg,(ratecy)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end " & _
                 "from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,fa_slmas f  Where a.supcd=f.slcode and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt and a.divcode = '01' and b.isstype='P' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT " & _
                 "and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt  between '" & Format(u, "YYYY-MM-DD") & "'  and '" & Format(v, "YYYY-MM-DD") & "'  and c.docno='" & rs(1) & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,f.slname,a.plotno,c.docno,a.catcd) a  group by varcode,a.lotno,A.DOCDT,A.slname,unit,a.plotno,a.docno,a.catcd", cnn, adOpenStatic
                
Do While Not rs2.EOF
     Set Namers = New Recordset
         Namers.Open "Select varname from rm_var where varcode='" & rs2(3) & "'", db, adOpenStatic
If Not Namers.EOF Then
     VarName = Namers(0)
End If
If chk1 <> DAY Then
   If p > 1 Then
      t1 = t1 + weigh
      t2 = t2 + qtyt
      t3 = t3 + amt
      Print #a,
      'Print #a, Space(67) + String(88, "-")
      Print #a, Space(65); Chr(27); "E"; "  ** Day Total ** " + Space(7) + Padl(INF(weigh, 0), 10, " ") + Space(6) + Padl(INF(qtyt, 2), 15, " ") + Padl(" ", 10, " ") + Padl(" ", 10, " ") + Space(5) + Padl(INF(amt, 2), 9, " "); Chr(27); "F"
      'Print #a, Space(67) + String(88, "-")
      Print #a,
      t4 = t4 + t1
      t5 = t5 + t2
      t6 = t6 + t3
      weigh = 0
      qtyt = 0
      amt = 0
   End If
End If
If chk <> MON Then
      Print #a, Space(65) + String(90, "-")
      t4 = t4 + weigh
      t5 = t5 + qtyt
      t6 = t6 + amt
      Print #a, Space(65); Chr(27); "E"; "** Monthwise Total ** " + Space(7) + Padl(INF(t4, 0), 6, " ") + Space(6) + Padl(INF(t5, 2), 15, " "); Padl(" ", 10, " ") + Padl(" ", 10, " ") + Space(5) + Padl(INF(t6, 2), 9, " "); Chr(27); "F"
      t4 = 0
      t5 = 0
      t6 = 0
      Print #a, Space(5) + String(150, "-")
End If
If chk1 <> DAY Then
      p = 0
      Print #a, Space(5) + Padr(rs("docdt"), 10, " ")
End If
      Print #a, Space(5) + Padr(rs2("docno"), 3, " ") + Space(8) + Padr(rs2("catcd"), 8, " ") + Space(3) + Padl(rs2("lotno"), 5, " ") + Space(3) + Padl(rs2("plotno"), 5, " ") + Space(3) + Padr((CStr(rs2("slname"))), 35, " ") + Space(9) + Padr((CStr(VarName)), 8, " ") + Space(2) + Padl(INF(rs2(6), 0), 3, " ") + Space(4) + Padr(rs2(7), 5, " ") + Padl(INF(rs2("netkg"), 2), 12, " ") + Space(4) + Padl(INF(rs2(9), 2), 5, " ") + Space(2) + Padl(INF(rs2("ratecandy"), 0), 10, " ") + Space(1) + Padl(INF(rs2("amount"), 2), 12, " ")
      qtyt = qtyt + rs2("netkg")
      weigh = weigh + rs2("bale")
      amt = amt + rs2("amount")
      p = p + 1
      co = co + 1
If co >= 50 Then
      co = 0
      pg1 = pg1 + 1
      Print #a, Space(5) + String(130, "-")
      Print #a, Chr(12)
      Call PartyHeader(pg1, co, u, v, DIVNAME)
End If
      rs2.MoveNext
      Loop
'Count Total
      Set TotRs = New Recordset
      TotRs.Open "select Bale=count(d.baleno),Sum (d.actisskgs) 'netkgs',avg(c.ratekg) as'ratekg',avg(ratekg)*355.616 as ratecandy, sum(d.actisskgs)*avg(c.ratekg) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where a.isstype='P' and c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "'  and '" & Format(v, "YYYY-MM-DD") & "'  and a.cntcd='" & rs(0) & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by c.bblflg", db, adOpenStatic
      rs.MoveNext
      co = co + 1
If co >= 50 Then
      co = 0
      pg1 = pg1 + 1
      Print #a, Space(5) + String(130, "-")
      Print #a, Chr(12)
      Call PartyHeader(pg1, co, u, v, DIVNAME)
End If
      Loop
'Grand total
      Set GTotrs = New Recordset
          GTotrs.Open "select Bale=count(d.baleno),Sum (d.actisskgs) 'netkgs',avg(c.ratekg) 'ratekg',avg(ratekg)*355.616 as ratecandy,sum(d.actisskgs)*avg(c.ratekg) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  and d.isstype='P' AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "'  and '" & Format(v, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by c.bblflg", db, adOpenStatic
          t1 = t1 + weigh
          t2 = t2 + qtyt
          t3 = t3 + amt
If chk1 <> DAY Then
   If p > 1 Then
        Print #a,
        'Print #a, Space(67) + String(88, "-")
        Print #a, Space(65); Chr(27); "E"; "  ** Day Total ** " + Space(7) + Padl(INF(weigh, 0), 10, " ") + Space(5) + Padl(INF(qtyt, 2), 15, " ") + Padl(" ", 10, " ") + Padl(" ", 10, " ") + Space(8) + Padl(INF(amt, 2), 9, " "); Chr(27); "F"
        'Print #a, Space(67) + String(88, "-")
        't4 = t4 + weigh
        't5 = t5 + qtyt
        't6 = t6 + amt
        Print #a,
        weigh = 0
        qtyt = 0
        amt = 0
   End If
End If
            Print #a,
            Print #a, Space(65) + String(90, "-")
            t4 = t4 + weigh
            t5 = t5 + qtyt
            t6 = t6 + amt
            Print #a, Space(65); Chr(27); "E"; "** Monthwise Total ** " + Space(7) + Padl(INF(t4, 0), 6, " ") + Space(6) + Padl(INF(t5, 2), 15, " "); Padl(" ", 10, " ") + Padl(" ", 10, " ") + Space(5) + Padl(INF(t6, 2), 9, " "); Chr(27); "F"
            t4 = 0
            t5 = 0
            t6 = 0
            Print #a, Space(5) + String(150, "-")
            Print #a, Space(65); Chr(27); "E"; "** Grand Total ** " + Space(7) + Padl(INF(t1, 0), 10, " ") + Space(6) + Padl(INF(t2, 2), 15, " "); Padl(" ", 10, " ") + Padl(" ", 10, " ") + Space(5) + Padl(INF(t3, 2), 9, " "); Chr(27); "F"
            Print #a, Space(5) + String(150, "-")

Print #a, Chr(12)
Print #a, Chr(18)
Close #a
a = FreeFile
Open "c:\issc.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type issc.txt>prn"
Close #a
RPTV.txtfile = "c:\issc.txt"
RPTV.Batfile = "c:\issc.bat"
End Sub

Public Sub PartyHeader(pg1 As Integer, co As Integer, u As String, v As String, DIVNAME)
          Print #a,
'          Print #a, Space(5) + Space(Round((190 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((190 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(6) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #a,
          sr = CStr(pdate)
          Print #a, Space(3) + Chr(27) + "E" + "Datewise Issue Register" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yy"); Space(20) + "Dt:"; Format(sr, "DD/MM/YY") + Space(1); "Pg.:"; Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #a, Space(5) + String(150, "-")
          Print #a, Space(5) + "Date"
          Print #a, Space(5) + "Issue No.  Category    Mill   Party   Supplier                                    Variety   Qty    Unit          Net     Rate"
          Print #a, Space(5) + "                     LotNo.  LotNo.   Name                                                                    weight      /Kg       Candy       Amount"
          Print #a, Space(5) + String(150, "-")
          co = co + 10
End Sub



