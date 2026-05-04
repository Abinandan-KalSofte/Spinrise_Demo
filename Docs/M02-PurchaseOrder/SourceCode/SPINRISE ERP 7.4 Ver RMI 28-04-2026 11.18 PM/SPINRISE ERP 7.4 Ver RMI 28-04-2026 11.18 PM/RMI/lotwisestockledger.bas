Attribute VB_Name = "lotwisestockledger"
Dim RS1 As Recordset
Dim ResultRs As Recordset
Dim rs As Recordset
Dim rs2 As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6 As Double
Dim tot7, tot8, tot9, tot10, tot11, tot12, tot14, tot15 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim y As String
Dim pg1 As Integer
Dim co As Integer
Dim s As String
Dim z As Integer

Public Sub LotstockledgerReport112(a1 As String, A2 As String, str1 As String, LtNF As Integer, LtNT As Integer)
'Public Sub LotstockledgerReport(str1 As String, a1 As String, LtNF As Integer, LtNT As Integer, u As Integer)
Set cnn = New Connection
'str1 = str
'a1 = a
'developed by D.parimalam
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Date1 = Format(yfdate, "yyyy-mm-dd")
date2 = Format(yldate, "yyyy-mm-dd")
str1 = Left(str1, 1)
   If str1 = "C" Then
Set rs = New Recordset
          
rs.Open "select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1, sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))-  sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, " & _
        " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0  then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) end as clokgs  From " & _
        "((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
       " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(A2, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "'  AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(A2, "yyyy-mm-dd ") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt " & _
       " Union  select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(A2, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(A2, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & Format(A2, "yyyy-mm-dd") & "'  and docdt between '" & Date1 & "' and '" & date2 & "'AND BALES >0  group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt " & _
       " Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b  where (BALES-ISNULL(ISSBAL,0)>0 ) and (B.rejflg='N' or B.rejdt>'" & Format(A2, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "' and  b.lotdt Between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(A2, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt,b.ratekg " & _
       " Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and DOCdt <= '" & Format(A2, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' and docdt between '" & Date1 & "' and '" & date2 & "' " & _
       " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt " & _
       " Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(A2, "yyyy-mm-dd") & "'  and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' and docdt between '" & Date1 & "' and '" & date2 & "'group by b.varcode, " & _
       " b.opflg , b.bblflg, b.lotno, b.lotdt " & _
       " union all select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & " ' and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(A2, "yyyy-mm-dd") & "'" & _
       " and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T' and docdt between '" & Date1 & "' and '" & date2 & "' group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a " & _
       " group by a.varcode,lotno,lotdt order by lotno ", DB, adOpenStatic, adLockBatchOptimistic
      
Else
     If str1 = "A" Then
     Set rs = New Recordset
     rs.Open "select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1, sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))-  sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, " & _
        " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0  then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) end as clokgs  From " & _
        "((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
       " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(A2, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND  OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(A2, "yyyy-mm-dd ") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt " & _
       " Union  select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(A2, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(A2, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(A2, "yyyy-mm-dd") & "'  and docdt between '" & Date1 & "' and '" & date2 & "'AND BALES >0  group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt " & _
       " Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b  where (BALES-ISNULL(ISSBAL,0)>0 ) and (B.rejflg='N' or B.rejdt>'" & Format(A2, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND  b.lotdt Between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(A2, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt,b.ratekg " & _
       " Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and DOCdt <= '" & Format(A2, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' and docdt between '" & Date1 & "' and '" & date2 & "' " & _
       " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt " & _
       " Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(A2, "yyyy-mm-dd") & "'  and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' and docdt between '" & Date1 & "' and '" & date2 & "'group by b.varcode, " & _
       " b.opflg , b.bblflg, b.lotno, b.lotdt " & _
       " union all select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(A2, "yyyy-mm-dd") & "'" & _
       " and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T' and docdt between '" & Date1 & "' and '" & date2 & "' group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a " & _
       " group by a.varcode,lotno,lotdt order by lotno ", DB, adOpenStatic, adLockBatchOptimistic
     
     
     
'       rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
'        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
'        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
'        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
'        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
'        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
'        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
'        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs" & _
'        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e " & _
'        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
'        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T'  group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a " & _
'        " group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOlpenStatic
     
End If
End If
Set RPTV = New Report.ReportView
z = FreeFile
Close #z
Close
Open "C:\lot.txt" For Output As #z
pg1 = 1
co = 0
Count = 0

'Call LotstockRepHeader12(PG1, co, s, a1, A2)
    
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      tot4 = 0
      tot5 = 0
      tot6 = 0
      tot7 = 0
      tot8 = 0
      tot9 = 0
      tot10 = 0
      tot11 = 0
      tot12 = 0
      tot13 = 0
      tot14 = 0
      tot15 = 0
      
      'by parim
'      Do While Not rs.EOF
'        Set RS1 = New Recordset
'        RS1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,A.RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' and A.lotno = '" & rs![lotno] & "' and a.lotdt='" & Format(rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno,a.lotdt ", db, adOpenStatic
'
'            'If RS1.RecordCount = 0 Then
'            'MsgBox "No records to print in this ledger"
'            'End If
'
'
'            If RS1.RecordCount > 0 Then
'            slname = RS1![slname]
'            ratecy = RS1![ratecy]
'            Plotno = RS1![Plotno]
'            arrdate = RS1![lotDt]
'            Else
'            slname = " "
'            ratecy = " "
'            Plotno = " "
'            arrdate = " "
'
'            End If
            
                 
      'by nithya
        Do While Not rs.EOF
            Set RS1 = New Recordset
            RS1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,ROUND(ISNULL(A.RATEKG,0),2) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' AND A.lotno = '" & rs![lotno] & "' and a.lotdt='" & Format(rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", DB, adOpenStatic
            Set rs2 = New Recordset
            rs2.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,ISNULL(A.RATEKG,0) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' AND A.lotno = '" & rs![lotno] & "' and a.lotdt='" & Format(rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", DB, adOpenStatic
            If RS1.RecordCount > 0 Then
            Slname = RS1![Slname]
            ratecy = RS1![ratecy]
            PlotNo = RS1![PlotNo]
            arrdate = RS1![lotdt]
            Else
            Slname = " "
            ratecy = " "
            PlotNo = " "
            arrdate = " "
            
            End If
           
           If RS1.RecordCount > 0 And rs.EOF = False Then
                opval = IIf(IsNull(rs("opkgs")), 0, rs("opkgs")) * RS1("RATEKG")
                recval = IIf(IsNull(rs("reckgs")), 0, rs("reckgs")) * RS1("RATEKG")
                issval_unit1 = IIf(IsNull(rs("isskgs_unit1")), 0, rs("isskgs_unit1")) * RS1("RATEKG")
                'without round off
                issval_unit2 = IIf(IsNull(rs("isskgs_unit2")), 0, rs("isskgs_unit2")) * RS1("RATEKG")
                'calculating the issue unit value with round off
                'tot15 = Round(issval_unit2, 2)
                cloval = IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * RS1("RATEKG")
                
               TRANSVAL = IIf(IsNull(rs("TRANkgs")), 0, rs("TRANkgs")) * RS1("RATEKG")
                
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
                               
            End If
      
      
      
      
            'by nithya
            If RS1.RecordCount > 0 And rs.EOF = False Then
                opval = IIf(IsNull(rs("opkgs")), 0, rs("opkgs")) * rs2("RATEKG")
                'opval = IsNull(rs("OPKGS"), 0) * RS1("RATEKG")
                
                recval = IIf(IsNull(rs("reckgs")), 0, rs("reckgs")) * rs2("RATEKG")
                'recval = IsNull(rs("RECKGS"), 0) * RS1("RATEKG")
                issval_unit1 = IIf(IsNull(rs("isskgs_unit1")), 0, rs("isskgs_unit1")) * RS1("RATEKG")
                'issval_unit1 = IsNull(rs("ISSKGS_UNIT1"), 0) * RS1("RATEKG")
                'without round off
                issval_unit2 = IIf(IsNull(rs("isskgs_unit2")), 0, rs("isskgs_unit2")) * RS1("RATEKG")
                'issval_unit2 = IsNull(rs("ISSKGS_UNIT2"), 0) * RS1("RATEKG")
                
                'calculating the issue unit value with round off
                'tot15 = Round(issval_unit2, 2)
                cloval = IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * rs2("RATEKG")
                'cloval = IsNull(rs("clokgs"), 0) * RS1("RATEKG")
                
               TRANSVAL = IIf(IsNull(rs("TRANkgs")), 0, rs("TRANkgs")) * RS1("RATEKG")
               ' TRANSVAL = IsNull(rs("TRANSKGS"), 0) * RS1("RATEKG")
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
                               
            End If
               'calculating the total value
               tot = tot + rs("opbales")
               tot1 = tot1 + rs("opkgs")
               tot2 = tot2 + opval
               tot3 = tot3 + rs("recbales")
               tot4 = tot4 + rs("reckgs")
               tot5 = tot5 + recval
               tot6 = tot6 + rs("issbales_unit1")
               tot7 = tot7 + rs("isskgs_unit1")
               tot8 = tot8 + issval_unit1
               tot9 = tot9 + rs("issbales_unit2")
               tot10 = tot10 + rs("isskgs_unit2")
               tot11 = tot11 + issval_unit2
               'tot15 for total value for issval_unit2
               'tot11 for grandtotal
               'tot11 = tot11 + tot15
               tot12 = tot12 + rs("clobales")
               tot13 = tot13 + rs("clokgs")
               tot14 = tot14 + cloval
               tot15 = tot15 + rs("TRANBALES")
               tot16 = tot16 + rs("TRANKGS")
               tot17 = tot17 + TRANSVAL
            Print #z, Space(0) + Padl(Format(rs("lotdt"), "DD/MM/YY"), 8, " ") + Space(1) + Padl(rs("lotno"), 5, " ") + Space(1) + Padl(RS1("Plotno"), 4, " ") + Space(1) + Padr(RS1("slname"), 30, " ") + Space(1) + Padl(INF(Round(RS1("ratecy"), 0), 0), 7, " ") + Space(1) + Padl(rs("varcode"), 5, " ") + Space(1) + Padl(rs("opbales"), 5, " ") + Space(1) + Padl(INF(Round(rs("opkgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(opval, 0), 0), 12, " ") + Space(1) + Padl(rs("recbales"), 4, " ") + Space(1) + Padl(INF(Round(rs("reckgs"), 0), 0), 8, " ");
            Print #z, Space(1) + Padl(INF(Round(recval, 0), 0), 10, " ") + Space(1) + Padl(rs("issbales_unit1"), 5, " ") + Space(1) + Padl(INF(Round(rs("isskgs_unit1"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit1, 0), 0), 12, " ") + Space(1) + Padl(rs("issbales_unit2"), 5, " ") + Space(1) + Padl(INF(Round(rs("isskgs_unit2"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit2, 0), 0), 12, " ") + Space(1);
            Print #z, Padl(rs("TRANbales"), 4, " ") + Space(1) + Padl(INF(Round(rs("TRANkgs"), 0), 0), 6, " ") + Space(1) + Padl(INF(Round(TRANSVAL, 0), 0), 10, " ") + Space(1); Padl(rs("clobales"), 5, " ") + Space(1) + Padl(INF(Round(rs("clokgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Space(1)
             co = co + 1
                  If co >= pagelen Then
                  Print #z, String(227, "-")
                  Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                  ' Call LotstockRepHeader(PG1, co, str1, a1, A2)
                End If
                rs.MoveNext
                If RS1.EOF = False Then
                RS1.MoveNext
                End If

        Loop
Print #z, Space(0); String(227, "-")
'Print #z, Chr(27) & "E" & Space(0) + Chr(179) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(tot, 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(Round(tot2, 0), 12, " ") + Space(1) + Padl(tot3, 4, " ") + Space(1) + Padl(Round(tot4, 0), 8, " ") + Space(1) + Padl(Round(tot5, 0), 10, " ") + Space(1) + Padl(tot6, 5, " ") + Space(1) + Padl(Round(tot7, 0), 8, " ") + Space(1) + Padl(Round(tot8, 0), 12, " ") + Space(1) + Padl(tot9, 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(Round(tot11, 0), 12, " ") + Space(0) + Padl(tot15, 5, " ") + Space(0) + Padl(Round(tot16, 0), 7, " ") + Space(1) + Padl(Round(tot17, 0), 10, " ") + Space(1) + Padl(tot12, 5, " ") + Space(1) + Padl(Round(tot13, 0), 8, " ") + Space(1) + Padl(Round(tot14, 0), 13, " ") + Space(1) & Chr(27) & "F"
'Print #z, Chr(27) & "E" & Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(tot, 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(Round(tot2, 0), 12, " ") + Space(1) + Padl(tot3, 4, " ") + Space(1) + Padl(Round(tot4, 0), 8, " ") + Space(1) + Padl(Round(tot5, 0), 10, " ") + Space(1) + Padl(tot6, 5, " ") + Space(1) + Padl(Round(tot7, 0), 8, " ") + Space(1) + Padl(Round(tot8, 0), 12, " ") + Space(1) + Padl(tot9, 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(Round(tot11, 0), 12, " ") + Space(0) + Padl(tot15, 5, " ") + Space(0) + Padl(Round(tot16, 0), 7, " ") + Space(1) + Padl(Round(tot17, 0), 10, " ") + Space(1) + Padl(tot12, 5, " ") + Space(0) + Padl(Round(tot13, 0), 8, " ") + Space(1) + Padl(Round(tot14, 0), 13, " ") + Space(1) & Chr(27) & "F"

'Print #z, Chr(27) & "E" & Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(tot, 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(Round(tot2, 0), 12, " ") + Space(1) + Padl(tot3, 4, " ") + Space(1) + Padl(Round(tot4, 0), 8, " ") + Space(1) + Padl(Round(tot5, 0), 10, " ") + Space(1) + Padl(tot6, 5, " ") + Space(1) + Padl(Round(tot7, 0), 8, " ") + Space(1) + Padl(Round(tot8, 0), 12, " ") + Space(1) + Padl(tot9, 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(Round(tot11, 0), 12, " ") + Space(0) + Padl(tot15, 5, " ") + Space(0) + Padl(Round(tot16, 0), 7, " ") + Space(1) + Padl(Round(tot17, 0), 10, " ") + Space(1) + Padl(tot12, 5, " ") + Space(1) + Padl(Round(tot13, 0), 9, " ") + Space(1) + Padl(Round(tot14, 0), 13, " ") + Space(1) & Chr(27) & "F"

'without inf
'Print #z, Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(tot, 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(Round(tot2, 0), 12, " ") + Space(1) + Padl(tot3, 4, " ") + Space(1) + Padl(Round(tot4, 0), 8, " ") + Space(1) + Padl(Round(tot5, 0), 10, " ") + Space(1) + Padl(tot6, 5, " ") + Space(1) + Padl(Round(tot7, 0), 8, " ") + Space(1) + Padl(Round(tot8, 0), 12, " ") + Space(1) + Padl(tot9, 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(Round(tot11, 0), 12, " ") + Space(0) + Padl(tot15, 5, " ") + Space(0) + Padl(Round(tot16, 0), 7, " ") + Space(1) + Padl(Round(tot17, 0), 10, " ") + Space(1) + Padl(tot12, 5, " ") + Space(1) + Padl(Round(tot13, 0), 9, " ") + Space(1) + Padl(Round(tot14, 0), 13, " ") + Space(1)  '& Chr(27) & "F"
'with inf


'Print #z, Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(INF(tot, 0), 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(INF(Round(tot2, 0), 0), 12, " ") + Space(1) + Padl(INF(Round(tot3, 0), 0), 4, " ") + Space(1) + Padl(INF(Round(tot4, 0), 0), 8, " ") + Space(1) + Padl(INF(Round(tot5, 0), 0), 10, " ") + Space(1) + Padl(INF(Round(tot6, 0), 0), 5, " ") + Space(1) + Padl(INF(Round(tot7, 0), 0), 8, " ") + Space(1) + Padl(INF(Round(tot8, 0), 0), 12, " ") + Space(1) + Padl(INF(Round(tot9, 0), 0), 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(INF(Round(tot11, 0), 0), 12, " ") + Space(0) + Padl(INF(Round(tot15, 5, 0), 0), " ") + Space(0) + Padl(INF(Round(tot16, 0), 0), 7, " ") + Space(1) + Padl(INF(Round(tot17, 0), 0), 10, " ") + Space(1);
'Print #z, Padl(INF(Round(tot12, 0), 0), 5, " ") + Space(1) + Padl(INF(Round(tot13, 0), 0), 9, " ") + Space(1) + Padl(INF(Round(tot14, 0), 0), 13, " ") + Space(1) '& Chr(27) & "F"



Print #z, Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(4, " ") + Space(0) + Padl(INF(tot, 0), 7, " ") + Space(1) + Space(9) + Space(1) + Padl(INF(Round(tot2, 0), 0), 12, " ") + Space(1) + Space(4) + Space(0) + Padl(INF(Round(tot4, 0), 0), 9, " ") + Space(1) + Space(10) + Space(0) + Padl(INF(Round(tot6, 0), 0), 6, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot8, 0), 0), 12, " ") + Space(1) + Space(5) + Space(0) + Padl(INF(Round(tot10, 0), 0), 9, " ") + Space(1) + Space(11) + Space(0) + Padl(INF(Round(tot15, 0), 0), 6, " ") + Space(0) + Space(5) + Space(1) + Padl(INF(Round(tot17, 0), 0), 12, " ") + Space(1); Space(2) + Space(0) + Padl(INF(Round(tot13, 0), 0), 13, " ") + Space(1) + Space(13) + Space(1)


Print #z, Space(1) + Space(5) + Space(5) + Padr(" ", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Space(12) + Space(0) + Padl(INF(Round(tot3, 0), 0), 5, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot5, 0), 0), 10, " ") + Space(1) + Space(5) + Space(0) + Padl(INF(Round(tot7, 0), 0), 9, " ") + Space(1) + Space(12) + Space(0) + Padl(INF(Round(tot9, 0), 0), 6, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot11, 0), 0), 12, " ") + Space(0) + Space(3) + Space(0) + Padl(INF(Round(tot16, 0), 0), 9, " ") + Space(1) + Space(9) + Space(0); Padl(INF(Round(tot12, 0), 0), 7, " ") + Space(1) + Space(9) + Space(0) + Padl(INF(Round(tot14, 0), 0), 14, " ") + Space(1)




Print #z, Space(0); String(227, "-")
Print #z, Chr(12)
Close #z
z = FreeFile
Open "c:\Lot.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type Lot.TXT>prn"
Close #z
RPTV.txtfile = "c:\Lot.TXT"
RPTV.Batfile = "c:\Lot.bat"
Screen.MousePointer = 0
End Sub
Public Sub LotstockRepHeader112(pg1 As Integer, co As Integer, s As String, a1 As String, A2 As String)
'by pari
Print #z, Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
Print #z, Chr(15)
sr = CStr(Format((pdate), "dd/mm/yyyy")) + Space(0)
Print #z, Space(0) & Chr(27) + "E" + "Lotwise Stock Ledger" + Chr(27) + "F" + Space(1) + "from" + Space(1) + Format(Trim(a1), "DD/MM/YYYY"); Space(1); "to"; Space(1); Format(Trim(a1), "DD/MM/YYYY"); Space(150); Space(0) + CStr(sr) + Space(4) + "Pg.:" + Padl(CStr(pg1), 3, "  ") '+ Chr(15)
Print #z, Space(0); String(227, "-")
Print #z, "RECEIVED  MILL PARTY     SUPPLIER NAME               CANDY   VAR      OPENING BALANCE                 RECEIPT          <---------------------ISSUED----------------------->        TRANSFER                    CLOSING         "
Print #z, "    DATE   LOT  LOT                                   RATE  CODE <--------------------------><-----------------------> <----------Unit I---------> <---------Unit II---------><---------------------> <--------------------------->"
Print #z, "            NO   NO                                              BALES       KGS       VALUE BALES      KGS      VALUE BALES      KGS        VALUE BALES     KGS         VALUE BALES   KGS      VALUE BALES       KGS         VALUE"
'Print #z, Space(0) + Padr("RECEIVED", 8, " ") + Space(1) + Padr("M.LOT", 5, " ") + Space(1) + Padr("P.LOT", 4, " ") + Space(1) + Padr("PARTY NAME", 30, " ") + Space(1) + CENTRE("CANDY", 10, " ") + Space(1) + Padl("VAR", 5, " ") + Space(1) + CENTRE("OPENING BALANCE", 28, " ") + Space(1) + CENTRE("RECEIPT", 26, " ") + Space(1) + CENTRE("ISSUED", 54, " ") + Space(1) + CENTRE("TRANSFER", 28, " ") + Space(1); CENTRE("CLOSING", 28, " ")
'Print #z, Space(0) + CENTRE("DATE", 8, " ") + Space(1) + Padl("NO.", 5, " ") + Space(1) + Padl("NO.", 4, " ") + Space(1) + String(30, " ") + Space(1) + CENTRE("RATE", 10, " ") + Space(1) + Padl("CODE", 5, " "); " <------------------------>"; " <------------------------>"; " <---------Unit I--------->"; " <---------Unit II-------->"; " <------------------------>"; " <------------------------>"
'Print #z, Space(0) + Space(1) + String(8, " ") + Space(1) + String(5, " ") + Space(1) + String(4, " ") + Space(1) + String(30, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 12, " ") + Space(1) + Padl("BALE", 4, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 12, " ") + Space(1) + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 12, " ") + Space(1) + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 12, " ") + Space(1) + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 13, " ") + Space(1) + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 13, " ")
Print #z, Space(0); String(227, "-")
co = co + 10
End Sub
Public Sub LotstockRepHeader1(pg1 As Integer, co As Integer, s As String, a1 As String, u As Integer)
'by pari
Print #z, Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
Print #z, Chr(15)
sr = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #z, Space(2) & Chr(27) + "E" + "Lotwise Stock Ledger" + Chr(27) + "F" + " As On " + Format(Trim(a1), "DD/MM/YYYY"); Space(152); "Dt:" + CStr(sr) + "Pg.:" + Padl(CStr(pg1), 3, "  ") + Chr(15)
'Print #z, Chr(15)
Print #z, Space(2) + Chr(218) + String(10, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(36, Chr(196)) + Chr(194) + String(10, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(5, Chr(196)) + String(9, Chr(196)) + String(13, Chr(196)) + Chr(194) + String(10, Chr(196)) + String(7, Chr(196)) + String(10, Chr(196)) + Chr(194) + String(10, Chr(196)) + String(18, Chr(196)) + String(27, Chr(196)) + Chr(194) + String(5, Chr(196)) + String(9, Chr(196)) + String(13, Chr(196)) + Chr(191)

Print #z, Space(2) + Chr(179) + Padr("RECEIVED", 10, " ") + Chr(179) + Padl("MILL", 5, " ") + Chr(179) + Padl("PARTY", 5, " ") + Chr(179) + Padr("SUPPLIER NAME", 36, " ") + Chr(179) + CENTRE("CANDY", 10, " ") + Space(1) + Chr(179) + Padl("VAR", 5, " ") + Chr(179) + CENTRE("OPENING BALANCE", 28, " ") + Space(0) + Chr(179) + CENTRE("RECEIPT", 26, " ") + Chr(179) + CENTRE("ISSUED", 54, " ") + Space(1) + Chr(179) + CENTRE("CLOSING", 28, " ") + Space(0) + Chr(179)


Print #z, Space(2) + Chr(179) + CENTRE("DATE", 10, " ") + Chr(179) + Padl("LOT", 5, " ") + Chr(179) + Padl("LOT", 5, " ") + Chr(179) + String(36, " ") + Chr(179) + CENTRE("RATE", 10, " ") + Chr(179) + Padl("CODE", 5, " ") + Chr(179) + String(5, " ") + String(9, " ") + String(13, "  ") + Chr(179) + String(27, "  ") + Chr(195) + String(9, Chr(196)) + String(5, Chr(196)) + String(13, Chr(196)) + Chr(194) + String(7, Chr(196)) + String(5, Chr(196)) + String(15, Chr(196)) + Chr(180) + String(27, " ") + Chr(179)


Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, " ") + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, " ") + String(8, " ") + String(14, " ") + Chr(179) + String(5, " ") + String(8, " ") + String(14, " ") + Chr(179) + CENTRE("UNIT 1", 20, " ") + Space(7) + Chr(179) + CENTRE("UNIT 2", 20, " ") + Space(7) + Chr(179) + String(27, " ") + Chr(179)
Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, "  ") + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(195) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(13, Chr(196)) + Chr(180)
Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String("NO", 5) + Chr(179) + String("NO", 5) + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 13, " ") + Chr(179)
'Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(179) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197)
'oldPrint #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(225)
Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
co = co + 10
End Sub

Public Sub LotstockledgerReport1(str1 As String, a1 As String, LtNF As Integer, LtNT As Integer, u As Integer)
Set cnn = New Connection
'str1 = str
'a1 = a
'developed by D.parimalam
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Date1 = Format(yfdate, "yyyy-mm-dd")
date2 = Format(yldate, "yyyy-mm-dd")
   If str1 = "C" Then
    Set rs = New Recordset
     
    rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) end as clokgs " & _
        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "'  AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "' and LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e " & _
        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & str1 & "' and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt ))a  group by a.varcode,lotno,lotdt  ORDER BY LOTNO", DB, adOpenStatic
       
Else
     If str1 = "A" Then
     Set rs = New Recordset
       rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs" & _
        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e " & _
        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T'  group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a " & _
        " group by a.varcode,lotno,lotdt  ORDER BY LOTNO", DB, adOlpenStatic
     
End If
End If
Set RPTV = New Report.ReportView
z = FreeFile
Close #z
Close
Open "C:\lot.txt" For Output As #z
pg1 = 1
co = 0
Count = 0

'Call LotstockRepHeader(PG1, co, s, a1, CStr(u))
    
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      tot4 = 0
      tot5 = 0
      tot6 = 0
      tot7 = 0
      tot8 = 0
      tot9 = 0
      tot10 = 0
      tot11 = 0
      tot12 = 0
      tot13 = 0
      tot14 = 0
      tot15 = 0
      
        Do While Not rs.EOF
            Set RS1 = New Recordset
            RS1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,A.RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' AND A.lotno = '" & rs![lotno] & "' and a.lotdt='" & Format(rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", DB, adOpenStatic
         
            
            If RS1.RecordCount > 0 Then
            Slname = RS1![Slname]
            ratecy = RS1![ratecy]
            PlotNo = RS1![PlotNo]
            arrdate = RS1![lotdt]
            Else
            Slname = " "
            ratecy = " "
            PlotNo = " "
            arrdate = " "
            
            End If
            
            If RS1.RecordCount > 0 And rs.EOF = False Then
                opval = IIf(IsNull(rs("opkgs")), 0, rs("opkgs")) * RS1("RATEKG")
                recval = IIf(IsNull(rs("reckgs")), 0, rs("reckgs")) * RS1("RATEKG")
                issval_unit1 = IIf(IsNull(rs("isskgs_unit1")), 0, rs("isskgs_unit1")) * RS1("RATEKG")
                'without round off
                issval_unit2 = IIf(IsNull(rs("isskgs_unit2")), 0, rs("isskgs_unit2")) * RS1("RATEKG")
                'calculating the issue unit value with round off
                'tot15 = Round(issval_unit2, 2)
                cloval = IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * RS1("RATEKG")
                
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
                               
            End If
               'calculating the total value
               tot = tot + rs("opbales")
               tot1 = tot1 + rs("opkgs")
               tot2 = tot2 + opval
               tot3 = tot3 + rs("recbales")
               tot4 = tot4 + rs("reckgs")
               tot5 = tot5 + recval
               tot6 = tot6 + rs("issbales_unit1")
               tot7 = tot7 + rs("isskgs_unit1")
               tot8 = tot8 + issval_unit1
               tot9 = tot9 + rs("issbales_unit2")
               tot10 = tot10 + rs("isskgs_unit2")
               tot11 = tot11 + issval_unit2
               'tot15 for total value for issval_unit2
               'tot11 for grandtotal
               'tot11 = tot11 + tot15
               tot12 = tot12 + rs("clobales")
               tot13 = tot13 + rs("clokgs")
               tot14 = tot14 + cloval
            
            
            'Print #z, Space(2) + Chr(179) + Padl(rs("lotdt"), 10, " ") + Chr(179) + Padl(rs("lotno"), 5, " ") + Chr(179) + Padl(RS1("Plotno"), 5, " ") + Chr(179) + Padr(RS1("slname"), 36, " ") + Chr(179) + Padl(INF(Round(RS1("ratecy"), 0), 0), 10, " ") + Chr(179) + Padl(rs("varcode"), 5, " ") + Chr(179) + Padl(rs("opbales"), 5, " ") + Chr(179) + Padl(INF(rs("opkgs"), 0), 8, " ") + Chr(179) + Padl(INF(opval, 0), 12, " ") + Chr(179) + Padl(rs("recbales"), 4, " ") + Chr(179) + Padl(INF(rs("reckgs"), 0), 8, " ");
            
            
            Print #z, Space(2) + Chr(179) + Padl(rs("lotdt"), 10, " ") + Chr(179) + Padl(rs("lotno"), 5, " ") + Chr(179) + Padl(RS1("Plotno"), 5, " ") + Chr(179) + Padr(RS1("slname"), 36, " ") + Chr(179) + Padl(INF(Round(RS1("ratecy"), 0), 0), 10, " ") + Chr(179) + Padl(rs("varcode"), 5, " ") + Chr(179) + Padl(rs("opbales"), 5, " ") + Chr(179) + Padl(INF(Round(rs("opkgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(opval, 0), 0), 12, " ") + Chr(179) + Padl(rs("recbales"), 5, " ") + Chr(179) + Padl(INF(Round(rs("reckgs"), 0), 0), 8, " ");
            
            'with roundoff
            'Print #z, Chr(179) + Padl(INF(Round(recval, 0), 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit1"), 4, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit1"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit1, 0), 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit2"), 4, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit2"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot15, 0), 0), 13, " ") + Chr(179) + Padl(rs("clobales"), 4, " ") + Chr(179) + Padl(INF(Round(rs("clokgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Chr(179)
             
            'Print #z, Chr(179) + Padl(INF(recval, 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit1"), 4, " ") + Chr(179) + Padl(INF(rs("isskgs_unit1"), 0), 8, " ") + Chr(179) + Padl(INF(issval_unit1, 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit2"), 4, " ") + Chr(179) + Padl(INF(rs("isskgs_unit2"), 0), 8, " ") + Chr(179) + Padl(INF(issval_unit2, 0), 13, " ") + Chr(179) + Padl(rs("clobales"), 4, " ") + Chr(179) + Padl(INF(rs("clokgs"), 0), 8, " ") + Chr(179) + Padl(INF(cloval, 0), 13, " ") + Chr(179)
            
            Print #z, Chr(179) + Padl(INF(Round(recval, 0), 0), 12, " ") + Chr(179) + Padl(rs("issbales_unit1"), 5, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit1"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit1, 0), 0), 12, " ") + Chr(179) + Padl(rs("issbales_unit2"), 5, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit2"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit2, 0), 0), 12, " ") + Chr(179) + Padl(rs("clobales"), 5, " ") + Chr(179) + Padl(INF(Round(rs("clokgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Chr(179)
            
            'roundPrint #z, Chr(179) + Padl(INF(Round(recval, 0), 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit1"), 4, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit1"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit1, 0), 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit2"), 4, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit2"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit2, 0), 0), 13, " ") + Chr(179) + Padl(rs("clobales"), 4, " ") + Chr(179) + Padl(INF(Round(rs("clokgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Chr(179)
            
           'line printing
           co = co + 1
           If co >= 59 Then
           Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
           co = co + 1
           Else
           Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
           co = co + 1
           ' Print #z, Space(2) + Chr(192) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(225)
            End If
                
                If co >= pagelen Then
                'Print #z,
                'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(180)
                'Else
                'normal
                'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
                'Print #z, String(130, "-")
                  Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                 '  Call LotstockRepHeader(PG1, co, str1, a1, CStr(u))
                End If

'               tot = tot + rs("opbales")
'               tot1 = tot1 + rs("opkgs")
'               tot2 = tot2 + opval
'               tot3 = tot3 + rs("recbales")
'               tot4 = tot4 + rs("reckgs")
'               tot5 = tot5 + recval
'               tot6 = tot6 + rs("issbales_unit1")
'               tot7 = tot7 + rs("isskgs_unit1")
'               tot8 = tot8 + issval_unit1
'               tot9 = tot9 + rs("issbales_unit2")
'               tot10 = tot10 + rs("isskgs_unit2")
'               tot11 = tot11 + issval_unit2
'               tot12 = tot12 + rs("clobales")
'               tot13 = tot13 + rs("clokgs")
'               tot14 = tot14 + cloval
'
                  
          
                rs.MoveNext
                
                
                'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
                
                
                If RS1.EOF = False Then
                RS1.MoveNext
                End If

        Loop

        'Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(225)
               
'                If co >= pagelen Then
'                   Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
'                   Print #z, Chr(12)
'                   pg1 = pg1 + 1
'                   co = 0
'                   Call LotstockRepHeader(pg1, co, s, a1, u)
'                End If
'
        'Print #z, Space(2) + Chr(179) + Space(10) + Chr(179) + Space(5) + Chr(179) + Space(5) + Chr(179) + Padr("Grand Total", 36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl(tot, 4, " ") + Chr(179) + Padl(INF(Round(tot1), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot2), 0), 13, " ") + Chr(179) + Padl(tot3, 4, " ") + Chr(179) + Padl(INF(Round(tot4), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot5), 0), 13, " ") + Chr(179) + Padl(tot6, 4, " ") + Chr(179) + Padl(INF(Round(tot7), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot8), 0), 13, " ") + Chr(179) + Padl(tot9, 4, " ") + Chr(179) + Padl(INF(Round(tot10), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot11), 0), 13, " ") + Chr(179) + Padl(tot12, 4, " ") + Chr(179) + Padl(INF(Round(tot13), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot14), 0), 13, " ") + Chr(179)
        
        
        'Grandtotal printing
        Print #z, Space(2) + Chr(179) + Space(10) + Chr(179) + Space(5) + Chr(179) + Space(5) + Chr(179) + Padr("Grand Total", 36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl(tot, 5, " ") + Chr(179) + Padl(Round(tot1, 0), 8, " ") + Chr(179) + Padl(Round(tot2, 0), 12, " ") + Chr(179) + Padl(tot3, 4, " ") + Chr(179) + Padl(Round(tot4, 0), 8, " ") + Chr(179) + Padl(Round(tot5, 0), 12, " ") + Chr(179) + Padl(tot6, 5, " ") + Chr(179) + Padl(Round(tot7, 0), 8, " ") + Chr(179) + Padl(Round(tot8, 0), 12, " ") + Chr(179) + Padl(tot9, 5, " ") + Chr(179) + Padl(Round(tot10, 0), 8, " ") + Chr(179) + Padl(Round(tot11, 0), 12, " ") + Chr(179) + Padl(tot12, 5, " ") + Chr(179) + Padl(Round(tot13, 0), 8, " ") + Chr(179) + Padl(Round(tot14, 0), 13, " ") + Chr(179)
        
        
        
        
        'Print #z, Space(2) + Chr(179) + Space(10) + Chr(179) + Space(5) + Chr(179) + Space(5) + Chr(179) + Padr("Grand Total", 36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl(tot, 5, " ") + Chr(179) + Padl(tot1, 8, " ") + Chr(179) + Padl(tot2, 12, " ") + Chr(179) + Padl(tot3, 4, " ") + Chr(179) + Padl(tot4, 8, " ") + Chr(179) + Padl(tot5, 13, " ") + Chr(179) + Padl(tot6, 4, " ") + Chr(179) + Padl(tot7, 8, " ") + Chr(179) + Padl(tot8, 13, " ") + Chr(179) + Padl(tot9, 4, " ") + Chr(179) + Padl(tot10, 8, " ") + Chr(179) + Padl(tot11, 13, " ") + Chr(179) + Padl(tot12, 4, " ") + Chr(179) + Padl(tot13, 8, " ") + Chr(179) + Padl(tot14, 13, " ") + Chr(179)
        
        'Print #z, Space(60) & Chr(27) & "E" + "** Grand Total ** " + Padl(INF(Round(tot), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot1), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot2), 0), 10, " ") + Chr(179) + Padl(INF(Round(tot3), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot4), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot5), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot6), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot7), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot8), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot9), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot10), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot11), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot12), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot13), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot14), 0), 8, " ") + Chr(179)
        'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(180)
        Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
        'old Print #z, Space(2) + Chr(192) + String(10, Chr(196))+chr(179) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(225)
        
        
        'co = co + 1
'        If co >= pagelen Then
'                   'Print #z, Space(5) & String(225, "-")
'                   Print #z, Chr(12)
'                   pg1 = pg1 + 1
'                   co = 0
'                   Call LotstockRepHeader(pg1, co, s, a1, u)
'                End If
               
        'End If

Print #z, Chr(12)
Close #z
z = FreeFile
Open "c:\Lot.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type Lot.TXT>prn"
Close #z
RPTV.txtfile = "c:\Lot.TXT"
RPTV.Batfile = "c:\Lot.bat"
Screen.MousePointer = 0
End Sub


'rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
'        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
'        " sum(isnull(a.issbales_unit2,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
'        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0)) end as clokgs " & _
'        " From ((select varcode,lotno,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2 from " & _
'        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "'  and b.lotdt < '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
'        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs  from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
'        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt  Union All  select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2 " & _
'        " from rm_lot b  where (BALES-ISNULL(ISSBAL,0)>0 ) and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "' and b.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt  Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2 " & _
'        " from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt  Union All  select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2  from rm_lot b,rm_issb c,rm_bale e " & _
'        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a where lotno between  '" & LtNF & "'  and '" & LtNT & "' group by a.varcode,lotno,lotdt ", db, adOpenStatic





'updated for all
'rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
'        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
'        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
'        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
'        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
'        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
'        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
'        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs" & _
'        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e " & _
'        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a  group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOpenStatic



'Updated for Cotton

'rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
'        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
'        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
'        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) end as clokgs " & _
'        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
'        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "'  AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
'        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
'        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "' and LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e " & _
'        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
'        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = 'C' and  docdt between '2005-04-01' and '2006-03-31' and lotyear='2005'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '2'  and '36' and b.lotdt <= '2005-09-27' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T'  group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt ))a  group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOpenStatic







'Dim rs1 As Recordset
'Dim ResultRs As Recordset
'Dim rs As Recordset
'Dim rs2 As Recordset
'Dim RPTV As Report.ReportView
'Dim re As String
'Dim tot, tot1, tot2, tot3, tot4, tot5, tot6 As Double
'Dim tot7, tot8, tot9, tot10, tot11, tot12, tot14, tot15 As Double
'Dim c1 As Integer
'Dim cnn As Connection
'Dim str1, a1 As String
'Dim y As String
'Dim PG1 As Integer
'Dim co As Integer
'Dim s As String
'Dim z As Integer
'Public Sub LotstockledgerReport(str1 As String, a1 As String, LtNF As Integer, LtNT As Integer, u As Integer)
'Set cnn = New Connection
''str1 = str
''a1 = a
''developed by D.parimalam
'cnn.Provider = "MSDATASHAPE"
'cnn.Open connectstring
'Date1 = Format(yfdate, "yyyy-mm-dd")
'date2 = Format(yldate, "yyyy-mm-dd")
'   If str1 = "C" Then
'    Set rs = New Recordset
'
'    rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
'        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
'        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
'        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) end as clokgs " & _
'        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
'        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "'  AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
'        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
'        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "' and LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and DOCdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e " & _
'        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
'        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & str1 & "' and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt ))a  group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOpenStatic
'
'Else
'     If str1 = "A" Then
'     Set rs = New Recordset
'       rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
'        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
'        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
'        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
'        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
'        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
'        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
'        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs" & _
'        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e " & _
'        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
'        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T'  group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a " & _
'        " group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOlpenStatic
'
'End If
'End If
'Set RPTV = New Report.ReportView
'z = FreeFile
'Close #z
'Close
'Open "C:\lot.txt" For Output As #z
'PG1 = 1
'co = 0
'Count = 0
'
'Call LotstockRepHeader(PG1, co, s, a1, u)
'
'      tot = 0
'      tot1 = 0
'      tot2 = 0
'      tot3 = 0
'      tot4 = 0
'      tot5 = 0
'      tot6 = 0
'      tot7 = 0
'      tot8 = 0
'      tot9 = 0
'      tot10 = 0
'      tot11 = 0
'      tot12 = 0
'      tot13 = 0
'      tot14 = 0
'      tot15 = 0
'
'      'by parim
''      Do While Not rs.EOF
''        Set RS1 = New Recordset
''        RS1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,A.RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' and A.lotno = '" & rs![lotno] & "' and a.lotdt='" & Format(rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno,a.lotdt ", db, adOpenStatic
''
''            'If RS1.RecordCount = 0 Then
''            'MsgBox "No records to print in this ledger"
''            'End If
''
''
''            If RS1.RecordCount > 0 Then
''            slname = RS1![slname]
''            ratecy = RS1![ratecy]
''            Plotno = RS1![Plotno]
''            arrdate = RS1![lotDt]
''            Else
''            slname = " "
''            ratecy = " "
''            Plotno = " "
''            arrdate = " "
''
''            End If
'
'
'      'by nithya
'        Do While Not rs.EOF
'            Set rs1 = New Recordset
'            rs1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,ROUND(ISNULL(A.RATEKG,0),2) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' AND A.lotno = '" & rs![lotno] & "' and a.lotdt='" & Format(rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", db, adOpenStatic
'            Set rs2 = New Recordset
'            rs2.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,ISNULL(A.RATEKG,0) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' AND A.lotno = '" & rs![lotno] & "' and a.lotdt='" & Format(rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", db, adOpenStatic
'            If rs1.RecordCount > 0 Then
'            slname = rs1![slname]
'            ratecy = rs1![ratecy]
'            Plotno = rs1![Plotno]
'            arrdate = rs1![lotDt]
'            Else
'            slname = " "
'            ratecy = " "
'            Plotno = " "
'            arrdate = " "
'
'            End If
'
'           If rs1.RecordCount > 0 And rs.EOF = False Then
'                opval = IIf(IsNull(rs("opkgs")), 0, rs("opkgs")) * rs1("RATEKG")
'                recval = IIf(IsNull(rs("reckgs")), 0, rs("reckgs")) * rs1("RATEKG")
'                issval_unit1 = IIf(IsNull(rs("isskgs_unit1")), 0, rs("isskgs_unit1")) * rs1("RATEKG")
'                'without round off
'                issval_unit2 = IIf(IsNull(rs("isskgs_unit2")), 0, rs("isskgs_unit2")) * rs1("RATEKG")
'                'calculating the issue unit value with round off
'                'tot15 = Round(issval_unit2, 2)
'                cloval = IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * rs1("RATEKG")
'
'               TRANSVAL = IIf(IsNull(rs("TRANkgs")), 0, rs("TRANkgs")) * rs1("RATEKG")
'
'            Else
'                opval = 0
'                recval = 0
'                issval_unit1 = 0
'                issval_unit2 = 0
'                cloval = 0
'                tot15 = 0
'
'            End If
'
'
'
'
'            'by nithya
'            If rs1.RecordCount > 0 And rs.EOF = False Then
'                opval = IIf(IsNull(rs("opkgs")), 0, rs("opkgs")) * rs2("RATEKG")
'                'opval = IsNull(rs("OPKGS"), 0) * RS1("RATEKG")
'
'                recval = IIf(IsNull(rs("reckgs")), 0, rs("reckgs")) * rs2("RATEKG")
'                'recval = IsNull(rs("RECKGS"), 0) * RS1("RATEKG")
'                issval_unit1 = IIf(IsNull(rs("isskgs_unit1")), 0, rs("isskgs_unit1")) * rs1("RATEKG")
'                'issval_unit1 = IsNull(rs("ISSKGS_UNIT1"), 0) * RS1("RATEKG")
'                'without round off
'                issval_unit2 = IIf(IsNull(rs("isskgs_unit2")), 0, rs("isskgs_unit2")) * rs1("RATEKG")
'                'issval_unit2 = IsNull(rs("ISSKGS_UNIT2"), 0) * RS1("RATEKG")
'
'                'calculating the issue unit value with round off
'                'tot15 = Round(issval_unit2, 2)
'                cloval = IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * rs2("RATEKG")
'                'cloval = IsNull(rs("clokgs"), 0) * RS1("RATEKG")
'
'               TRANSVAL = IIf(IsNull(rs("TRANkgs")), 0, rs("TRANkgs")) * rs1("RATEKG")
'               ' TRANSVAL = IsNull(rs("TRANSKGS"), 0) * RS1("RATEKG")
'            Else
'                opval = 0
'                recval = 0
'                issval_unit1 = 0
'                issval_unit2 = 0
'                cloval = 0
'                tot15 = 0
'
'            End If
'               'calculating the total value
'               tot = tot + rs("opbales")
'               tot1 = tot1 + rs("opkgs")
'               tot2 = tot2 + opval
'               tot3 = tot3 + rs("recbales")
'               tot4 = tot4 + rs("reckgs")
'               tot5 = tot5 + recval
'               tot6 = tot6 + rs("issbales_unit1")
'               tot7 = tot7 + rs("isskgs_unit1")
'               tot8 = tot8 + issval_unit1
'               tot9 = tot9 + rs("issbales_unit2")
'               tot10 = tot10 + rs("isskgs_unit2")
'               tot11 = tot11 + issval_unit2
'               'tot15 for total value for issval_unit2
'               'tot11 for grandtotal
'               'tot11 = tot11 + tot15
'               tot12 = tot12 + rs("clobales")
'               tot13 = tot13 + rs("clokgs")
'               tot14 = tot14 + cloval
'               tot15 = tot15 + rs("TRANBALES")
'               tot16 = tot16 + rs("TRANKGS")
'               tot17 = tot17 + TRANSVAL
'            Print #z, Space(0) + Padl(Format(rs("lotdt"), "DD/MM/YY"), 8, " ") + Space(1) + Padl(rs("lotno"), 5, " ") + Space(1) + Padl(rs1("Plotno"), 4, " ") + Space(1) + Padr(rs1("slname"), 30, " ") + Space(1) + Padl(INF(Round(rs1("ratecy"), 0), 0), 7, " ") + Space(1) + Padl(rs("varcode"), 5, " ") + Space(1) + Padl(rs("opbales"), 5, " ") + Space(1) + Padl(INF(Round(rs("opkgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(opval, 0), 0), 12, " ") + Space(1) + Padl(rs("recbales"), 4, " ") + Space(1) + Padl(INF(Round(rs("reckgs"), 0), 0), 8, " ");
'            Print #z, Space(1) + Padl(INF(Round(recval, 0), 0), 10, " ") + Space(1) + Padl(rs("issbales_unit1"), 5, " ") + Space(1) + Padl(INF(Round(rs("isskgs_unit1"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit1, 0), 0), 12, " ") + Space(1) + Padl(rs("issbales_unit2"), 5, " ") + Space(1) + Padl(INF(Round(rs("isskgs_unit2"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit2, 0), 0), 12, " ") + Space(1);
'            Print #z, Padl(rs("TRANbales"), 4, " ") + Space(1) + Padl(INF(Round(rs("TRANkgs"), 0), 0), 6, " ") + Space(1) + Padl(INF(Round(TRANSVAL, 0), 0), 10, " ") + Space(1); Padl(rs("clobales"), 5, " ") + Space(1) + Padl(INF(Round(rs("clokgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Space(1)
'             co = co + 1
'                  If co >= pagelen Then
'                  Print #z, String(227, "-")
'                  Print #z, Chr(12)
'                   PG1 = PG1 + 1
'                   co = 0
'                   Call LotstockRepHeader(PG1, co, str1, a1, u)
'                End If
'                rs.MoveNext
'                If rs1.EOF = False Then
'                rs1.MoveNext
'                End If
'
'        Loop
'Print #z, Space(0); String(227, "-")
''Print #z, Chr(27) & "E" & Space(0) + Chr(179) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(tot, 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(Round(tot2, 0), 12, " ") + Space(1) + Padl(tot3, 4, " ") + Space(1) + Padl(Round(tot4, 0), 8, " ") + Space(1) + Padl(Round(tot5, 0), 10, " ") + Space(1) + Padl(tot6, 5, " ") + Space(1) + Padl(Round(tot7, 0), 8, " ") + Space(1) + Padl(Round(tot8, 0), 12, " ") + Space(1) + Padl(tot9, 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(Round(tot11, 0), 12, " ") + Space(0) + Padl(tot15, 5, " ") + Space(0) + Padl(Round(tot16, 0), 7, " ") + Space(1) + Padl(Round(tot17, 0), 10, " ") + Space(1) + Padl(tot12, 5, " ") + Space(1) + Padl(Round(tot13, 0), 8, " ") + Space(1) + Padl(Round(tot14, 0), 13, " ") + Space(1) & Chr(27) & "F"
''Print #z, Chr(27) & "E" & Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(tot, 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(Round(tot2, 0), 12, " ") + Space(1) + Padl(tot3, 4, " ") + Space(1) + Padl(Round(tot4, 0), 8, " ") + Space(1) + Padl(Round(tot5, 0), 10, " ") + Space(1) + Padl(tot6, 5, " ") + Space(1) + Padl(Round(tot7, 0), 8, " ") + Space(1) + Padl(Round(tot8, 0), 12, " ") + Space(1) + Padl(tot9, 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(Round(tot11, 0), 12, " ") + Space(0) + Padl(tot15, 5, " ") + Space(0) + Padl(Round(tot16, 0), 7, " ") + Space(1) + Padl(Round(tot17, 0), 10, " ") + Space(1) + Padl(tot12, 5, " ") + Space(0) + Padl(Round(tot13, 0), 8, " ") + Space(1) + Padl(Round(tot14, 0), 13, " ") + Space(1) & Chr(27) & "F"
'
''Print #z, Chr(27) & "E" & Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(tot, 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(Round(tot2, 0), 12, " ") + Space(1) + Padl(tot3, 4, " ") + Space(1) + Padl(Round(tot4, 0), 8, " ") + Space(1) + Padl(Round(tot5, 0), 10, " ") + Space(1) + Padl(tot6, 5, " ") + Space(1) + Padl(Round(tot7, 0), 8, " ") + Space(1) + Padl(Round(tot8, 0), 12, " ") + Space(1) + Padl(tot9, 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(Round(tot11, 0), 12, " ") + Space(0) + Padl(tot15, 5, " ") + Space(0) + Padl(Round(tot16, 0), 7, " ") + Space(1) + Padl(Round(tot17, 0), 10, " ") + Space(1) + Padl(tot12, 5, " ") + Space(1) + Padl(Round(tot13, 0), 9, " ") + Space(1) + Padl(Round(tot14, 0), 13, " ") + Space(1) & Chr(27) & "F"
'
''without inf
''Print #z, Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(tot, 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(Round(tot2, 0), 12, " ") + Space(1) + Padl(tot3, 4, " ") + Space(1) + Padl(Round(tot4, 0), 8, " ") + Space(1) + Padl(Round(tot5, 0), 10, " ") + Space(1) + Padl(tot6, 5, " ") + Space(1) + Padl(Round(tot7, 0), 8, " ") + Space(1) + Padl(Round(tot8, 0), 12, " ") + Space(1) + Padl(tot9, 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(Round(tot11, 0), 12, " ") + Space(0) + Padl(tot15, 5, " ") + Space(0) + Padl(Round(tot16, 0), 7, " ") + Space(1) + Padl(Round(tot17, 0), 10, " ") + Space(1) + Padl(tot12, 5, " ") + Space(1) + Padl(Round(tot13, 0), 9, " ") + Space(1) + Padl(Round(tot14, 0), 13, " ") + Space(1)  '& Chr(27) & "F"
''with inf
'
'
''Print #z, Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Padl(INF(tot, 0), 5, " ") + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Padl(INF(Round(tot2, 0), 0), 12, " ") + Space(1) + Padl(INF(Round(tot3, 0), 0), 4, " ") + Space(1) + Padl(INF(Round(tot4, 0), 0), 8, " ") + Space(1) + Padl(INF(Round(tot5, 0), 0), 10, " ") + Space(1) + Padl(INF(Round(tot6, 0), 0), 5, " ") + Space(1) + Padl(INF(Round(tot7, 0), 0), 8, " ") + Space(1) + Padl(INF(Round(tot8, 0), 0), 12, " ") + Space(1) + Padl(INF(Round(tot9, 0), 0), 5, " ") + Space(1) + Padl(Round(tot10, 0), 8, " ") + Space(1) + Padl(INF(Round(tot11, 0), 0), 12, " ") + Space(0) + Padl(INF(Round(tot15, 5, 0), 0), " ") + Space(0) + Padl(INF(Round(tot16, 0), 0), 7, " ") + Space(1) + Padl(INF(Round(tot17, 0), 0), 10, " ") + Space(1);
''Print #z, Padl(INF(Round(tot12, 0), 0), 5, " ") + Space(1) + Padl(INF(Round(tot13, 0), 0), 9, " ") + Space(1) + Padl(INF(Round(tot14, 0), 0), 13, " ") + Space(1) '& Chr(27) & "F"
'
'
'
'Print #z, Chr(27) & "E" & Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(4, " ") + Space(0) + Padl(INF(tot, 0), 7, " ") + Space(1) + Space(9) + Space(1) + Padl(INF(Round(tot2, 0), 0), 12, " ") + Space(1) + Space(4) + Space(0) + Padl(INF(Round(tot4, 0), 0), 9, " ") + Space(1) + Space(10) + Space(0) + Padl(INF(Round(tot6, 0), 0), 6, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot8, 0), 0), 12, " ") + Space(1) + Space(5) + Space(0) + Padl(INF(Round(tot10, 0), 0), 9, " ") + Space(1) + Space(11) + Space(0) + Padl(INF(Round(tot15, 0), 0), 6, " ") + Space(0) + Space(5) + Space(1) + Padl(INF(Round(tot17, 0), 0), 12, " ") + Space(1); Space(2) + Space(0) + Padl(INF(Round(tot13, 0), 0), 13, " ") + Space(1) + Space(13) + Space(1) & Chr(27) & "F"
'
'
'Print #z, Chr(27) & "E" & Space(1) + Space(5) + Space(5) + Padr(" ", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Space(12) + Space(0) + Padl(INF(Round(tot3, 0), 0), 5, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot5, 0), 0), 10, " ") + Space(1) + Space(5) + Space(0) + Padl(INF(Round(tot7, 0), 0), 9, " ") + Space(1) + Space(12) + Space(0) + Padl(INF(Round(tot9, 0), 0), 6, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot11, 0), 0), 12, " ") + Space(0) + Space(3) + Space(0) + Padl(INF(Round(tot16, 0), 0), 9, " ") + Space(1) + Space(9) + Space(0); Padl(INF(Round(tot12, 0), 0), 7, " ") + Space(1) + Space(9) + Space(0) + Padl(INF(Round(tot14, 0), 0), 14, " ") + Space(1) & Chr(27) & "F"
'
'
'
'
'Print #z, Space(0); String(227, "-")
'Print #z, Chr(12)
'Close #z
'z = FreeFile
'Open "c:\Lot.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type Lot.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\Lot.TXT"
'RPTV.Batfile = "c:\Lot.bat"
'Screen.MousePointer = 0
'End Sub
'Public Sub LotstockRepHeader(PG1 As Integer, co As Integer, s As String, a1 As String, u As Integer)
''by pari
'TEMP = Left(DIVNAME, 32)
'Print #z, Chr(27) + "E" + CENTRE(TEMP, 130, " ") + Chr(27) + "F"
'Print #z, Chr(15)
'sr = CStr(Format((pdate), "dd/mm/yyyy")) + Space(0)
'Print #z, Space(0) & Chr(27) + "E" + "Lotwise Stock Ledger" + Chr(27) + "F" + " As On " + Format(Trim(a1), "DD/MM/YYYY"); Space(158); Space(6) + CStr(sr) + Space(4) + "Pg.:" + Padl(CStr(PG1), 3, "  ") '+ Chr(15)
'Print #z, Space(0); String(227, "-")
'Print #z, "RECEIVED  MILL PARTY     SUPPLIER NAME               CANDY   VAR      OPENING BALANCE                 RECEIPT          <---------------------ISSUED----------------------->        TRANSFER                    CLOSING         "
'Print #z, "    DATE   LOT  LOT                                   RATE  CODE <--------------------------><-----------------------> <----------Unit I---------> <---------Unit II---------><---------------------> <--------------------------->"
'Print #z, "            NO   NO                                              BALES       KGS       VALUE BALES      KGS      VALUE BALES      KGS        VALUE BALES     KGS         VALUE BALES   KGS      VALUE BALES       KGS         VALUE"
''Print #z, Space(0) + Padr("RECEIVED", 8, " ") + Space(1) + Padr("M.LOT", 5, " ") + Space(1) + Padr("P.LOT", 4, " ") + Space(1) + Padr("PARTY NAME", 30, " ") + Space(1) + CENTRE("CANDY", 10, " ") + Space(1) + Padl("VAR", 5, " ") + Space(1) + CENTRE("OPENING BALANCE", 28, " ") + Space(1) + CENTRE("RECEIPT", 26, " ") + Space(1) + CENTRE("ISSUED", 54, " ") + Space(1) + CENTRE("TRANSFER", 28, " ") + Space(1); CENTRE("CLOSING", 28, " ")
''Print #z, Space(0) + CENTRE("DATE", 8, " ") + Space(1) + Padl("NO.", 5, " ") + Space(1) + Padl("NO.", 4, " ") + Space(1) + String(30, " ") + Space(1) + CENTRE("RATE", 10, " ") + Space(1) + Padl("CODE", 5, " "); " <------------------------>"; " <------------------------>"; " <---------Unit I--------->"; " <---------Unit II-------->"; " <------------------------>"; " <------------------------>"
''Print #z, Space(0) + Space(1) + String(8, " ") + Space(1) + String(5, " ") + Space(1) + String(4, " ") + Space(1) + String(30, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 12, " ") + Space(1) + Padl("BALE", 4, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 12, " ") + Space(1) + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 12, " ") + Space(1) + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 12, " ") + Space(1) + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 13, " ") + Space(1) + Padl("BALE", 5, " ") + Padl("KGS", 8, " ") + Padl("VALUE", 13, " ")
'Print #z, Space(0); String(227, "-")
'co = co + 10
'End Sub
'Public Sub LotstockRepHeader1(PG1 As Integer, co As Integer, s As String, a1 As String, u As Integer)
''by pari
'Print #z, Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
'Print #z, Chr(15)
'sr = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
'Print #z, Space(2) & Chr(27) + "E" + "Lotwise Stock Ledger" + Chr(27) + "F" + " As On " + Format(Trim(a1), "DD/MM/YYYY"); Space(152); "Dt:" + CStr(sr) + "Pg.:" + Padl(CStr(PG1), 3, "  ") + Chr(15)
''Print #z, Chr(15)
'Print #z, Space(2) + Chr(218) + String(10, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(36, Chr(196)) + Chr(194) + String(10, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(5, Chr(196)) + String(9, Chr(196)) + String(13, Chr(196)) + Chr(194) + String(10, Chr(196)) + String(7, Chr(196)) + String(10, Chr(196)) + Chr(194) + String(10, Chr(196)) + String(18, Chr(196)) + String(27, Chr(196)) + Chr(194) + String(5, Chr(196)) + String(9, Chr(196)) + String(13, Chr(196)) + Chr(191)
'
'Print #z, Space(2) + Chr(179) + Padr("RECEIVED", 10, " ") + Chr(179) + Padl("MILL", 5, " ") + Chr(179) + Padl("PARTY", 5, " ") + Chr(179) + Padr("SUPPLIER NAME", 36, " ") + Chr(179) + CENTRE("CANDY", 10, " ") + Space(1) + Chr(179) + Padl("VAR", 5, " ") + Chr(179) + CENTRE("OPENING BALANCE", 28, " ") + Space(0) + Chr(179) + CENTRE("RECEIPT", 26, " ") + Chr(179) + CENTRE("ISSUED", 54, " ") + Space(1) + Chr(179) + CENTRE("CLOSING", 28, " ") + Space(0) + Chr(179)
'
'
'Print #z, Space(2) + Chr(179) + CENTRE("DATE", 10, " ") + Chr(179) + Padl("LOT", 5, " ") + Chr(179) + Padl("LOT", 5, " ") + Chr(179) + String(36, " ") + Chr(179) + CENTRE("RATE", 10, " ") + Chr(179) + Padl("CODE", 5, " ") + Chr(179) + String(5, " ") + String(9, " ") + String(13, "  ") + Chr(179) + String(27, "  ") + Chr(195) + String(9, Chr(196)) + String(5, Chr(196)) + String(13, Chr(196)) + Chr(194) + String(7, Chr(196)) + String(5, Chr(196)) + String(15, Chr(196)) + Chr(180) + String(27, " ") + Chr(179)
'
'
'Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, " ") + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, " ") + String(8, " ") + String(14, " ") + Chr(179) + String(5, " ") + String(8, " ") + String(14, " ") + Chr(179) + CENTRE("UNIT 1", 20, " ") + Space(7) + Chr(179) + CENTRE("UNIT 2", 20, " ") + Space(7) + Chr(179) + String(27, " ") + Chr(179)
'Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, "  ") + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(195) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(13, Chr(196)) + Chr(180)
'Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String("NO", 5) + Chr(179) + String("NO", 5) + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 13, " ") + Chr(179)
''Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(179) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197)
''oldPrint #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(225)
'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
'co = co + 10
'End Sub
'
'Public Sub LotstockledgerReport1(str1 As String, a1 As String, LtNF As Integer, LtNT As Integer, u As Integer)
'Set cnn = New Connection
''str1 = str
''a1 = a
''developed by D.parimalam
'cnn.Provider = "MSDATASHAPE"
'cnn.Open connectstring
'Date1 = Format(yfdate, "yyyy-mm-dd")
'date2 = Format(yldate, "yyyy-mm-dd")
'   If str1 = "C" Then
'    Set rs = New Recordset
'
'    rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
'        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
'        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
'        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) end as clokgs " & _
'        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
'        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "'  AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
'        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
'        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "' and LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e " & _
'        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
'        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & str1 & "' and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt ))a  group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOpenStatic
'
'Else
'     If str1 = "A" Then
'     Set rs = New Recordset
'       rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
'        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
'        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
'        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
'        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
'        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
'        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
'        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs" & _
'        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
'        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e " & _
'        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
'        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
'        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  docdt between '" & Date1 & "' and '" & date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T'  group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a " & _
'        " group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOlpenStatic
'
'End If
'End If
'Set RPTV = New Report.ReportView
'z = FreeFile
'Close #z
'Close
'Open "C:\lot.txt" For Output As #z
'PG1 = 1
'co = 0
'Count = 0
'
'Call LotstockRepHeader(PG1, co, s, a1, u)
'
'      tot = 0
'      tot1 = 0
'      tot2 = 0
'      tot3 = 0
'      tot4 = 0
'      tot5 = 0
'      tot6 = 0
'      tot7 = 0
'      tot8 = 0
'      tot9 = 0
'      tot10 = 0
'      tot11 = 0
'      tot12 = 0
'      tot13 = 0
'      tot14 = 0
'      tot15 = 0
'
'        Do While Not rs.EOF
'            Set rs1 = New Recordset
'            rs1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,A.RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' AND A.lotno = '" & rs![lotno] & "' and a.lotdt='" & Format(rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", db, adOpenStatic
'
'
'            If rs1.RecordCount > 0 Then
'            slname = rs1![slname]
'            ratecy = rs1![ratecy]
'            Plotno = rs1![Plotno]
'            arrdate = rs1![lotDt]
'            Else
'            slname = " "
'            ratecy = " "
'            Plotno = " "
'            arrdate = " "
'
'            End If
'
'            If rs1.RecordCount > 0 And rs.EOF = False Then
'                opval = IIf(IsNull(rs("opkgs")), 0, rs("opkgs")) * rs1("RATEKG")
'                recval = IIf(IsNull(rs("reckgs")), 0, rs("reckgs")) * rs1("RATEKG")
'                issval_unit1 = IIf(IsNull(rs("isskgs_unit1")), 0, rs("isskgs_unit1")) * rs1("RATEKG")
'                'without round off
'                issval_unit2 = IIf(IsNull(rs("isskgs_unit2")), 0, rs("isskgs_unit2")) * rs1("RATEKG")
'                'calculating the issue unit value with round off
'                'tot15 = Round(issval_unit2, 2)
'                cloval = IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * rs1("RATEKG")
'
'            Else
'                opval = 0
'                recval = 0
'                issval_unit1 = 0
'                issval_unit2 = 0
'                cloval = 0
'                tot15 = 0
'
'            End If
'               'calculating the total value
'               tot = tot + rs("opbales")
'               tot1 = tot1 + rs("opkgs")
'               tot2 = tot2 + opval
'               tot3 = tot3 + rs("recbales")
'               tot4 = tot4 + rs("reckgs")
'               tot5 = tot5 + recval
'               tot6 = tot6 + rs("issbales_unit1")
'               tot7 = tot7 + rs("isskgs_unit1")
'               tot8 = tot8 + issval_unit1
'               tot9 = tot9 + rs("issbales_unit2")
'               tot10 = tot10 + rs("isskgs_unit2")
'               tot11 = tot11 + issval_unit2
'               'tot15 for total value for issval_unit2
'               'tot11 for grandtotal
'               'tot11 = tot11 + tot15
'               tot12 = tot12 + rs("clobales")
'               tot13 = tot13 + rs("clokgs")
'               tot14 = tot14 + cloval
'
'
'            'Print #z, Space(2) + Chr(179) + Padl(rs("lotdt"), 10, " ") + Chr(179) + Padl(rs("lotno"), 5, " ") + Chr(179) + Padl(RS1("Plotno"), 5, " ") + Chr(179) + Padr(RS1("slname"), 36, " ") + Chr(179) + Padl(INF(Round(RS1("ratecy"), 0), 0), 10, " ") + Chr(179) + Padl(rs("varcode"), 5, " ") + Chr(179) + Padl(rs("opbales"), 5, " ") + Chr(179) + Padl(INF(rs("opkgs"), 0), 8, " ") + Chr(179) + Padl(INF(opval, 0), 12, " ") + Chr(179) + Padl(rs("recbales"), 4, " ") + Chr(179) + Padl(INF(rs("reckgs"), 0), 8, " ");
'
'
'            Print #z, Space(2) + Chr(179) + Padl(rs("lotdt"), 10, " ") + Chr(179) + Padl(rs("lotno"), 5, " ") + Chr(179) + Padl(rs1("Plotno"), 5, " ") + Chr(179) + Padr(rs1("slname"), 36, " ") + Chr(179) + Padl(INF(Round(rs1("ratecy"), 0), 0), 10, " ") + Chr(179) + Padl(rs("varcode"), 5, " ") + Chr(179) + Padl(rs("opbales"), 5, " ") + Chr(179) + Padl(INF(Round(rs("opkgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(opval, 0), 0), 12, " ") + Chr(179) + Padl(rs("recbales"), 5, " ") + Chr(179) + Padl(INF(Round(rs("reckgs"), 0), 0), 8, " ");
'
'            'with roundoff
'            'Print #z, Chr(179) + Padl(INF(Round(recval, 0), 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit1"), 4, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit1"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit1, 0), 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit2"), 4, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit2"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot15, 0), 0), 13, " ") + Chr(179) + Padl(rs("clobales"), 4, " ") + Chr(179) + Padl(INF(Round(rs("clokgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Chr(179)
'
'            'Print #z, Chr(179) + Padl(INF(recval, 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit1"), 4, " ") + Chr(179) + Padl(INF(rs("isskgs_unit1"), 0), 8, " ") + Chr(179) + Padl(INF(issval_unit1, 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit2"), 4, " ") + Chr(179) + Padl(INF(rs("isskgs_unit2"), 0), 8, " ") + Chr(179) + Padl(INF(issval_unit2, 0), 13, " ") + Chr(179) + Padl(rs("clobales"), 4, " ") + Chr(179) + Padl(INF(rs("clokgs"), 0), 8, " ") + Chr(179) + Padl(INF(cloval, 0), 13, " ") + Chr(179)
'
'            Print #z, Chr(179) + Padl(INF(Round(recval, 0), 0), 12, " ") + Chr(179) + Padl(rs("issbales_unit1"), 5, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit1"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit1, 0), 0), 12, " ") + Chr(179) + Padl(rs("issbales_unit2"), 5, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit2"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit2, 0), 0), 12, " ") + Chr(179) + Padl(rs("clobales"), 5, " ") + Chr(179) + Padl(INF(Round(rs("clokgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Chr(179)
'
'            'roundPrint #z, Chr(179) + Padl(INF(Round(recval, 0), 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit1"), 4, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit1"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit1, 0), 0), 13, " ") + Chr(179) + Padl(rs("issbales_unit2"), 4, " ") + Chr(179) + Padl(INF(Round(rs("isskgs_unit2"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit2, 0), 0), 13, " ") + Chr(179) + Padl(rs("clobales"), 4, " ") + Chr(179) + Padl(INF(Round(rs("clokgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Chr(179)
'
'           'line printing
'           co = co + 1
'           If co >= 59 Then
'           Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
'           co = co + 1
'           Else
'           Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
'           co = co + 1
'           ' Print #z, Space(2) + Chr(192) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(193) + String(20, Chr(196)) + Chr(225)
'            End If
'
'                If co >= pagelen Then
'                'Print #z,
'                'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(180)
'                'Else
'                'normal
'                'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
'                'Print #z, String(130, "-")
'                  Print #z, Chr(12)
'                   PG1 = PG1 + 1
'                   co = 0
'                   Call LotstockRepHeader(PG1, co, str1, a1, u)
'                End If
'
''               tot = tot + rs("opbales")
''               tot1 = tot1 + rs("opkgs")
''               tot2 = tot2 + opval
''               tot3 = tot3 + rs("recbales")
''               tot4 = tot4 + rs("reckgs")
''               tot5 = tot5 + recval
''               tot6 = tot6 + rs("issbales_unit1")
''               tot7 = tot7 + rs("isskgs_unit1")
''               tot8 = tot8 + issval_unit1
''               tot9 = tot9 + rs("issbales_unit2")
''               tot10 = tot10 + rs("isskgs_unit2")
''               tot11 = tot11 + issval_unit2
''               tot12 = tot12 + rs("clobales")
''               tot13 = tot13 + rs("clokgs")
''               tot14 = tot14 + cloval
''
'
'
'                rs.MoveNext
'
'
'                'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
'
'
'                If rs1.EOF = False Then
'                rs1.MoveNext
'                End If
'
'        Loop
'
'        'Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(225)
'
''                If co >= pagelen Then
''                   Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
''                   Print #z, Chr(12)
''                   pg1 = pg1 + 1
''                   co = 0
''                   Call LotstockRepHeader(pg1, co, s, a1, u)
''                End If
''
'        'Print #z, Space(2) + Chr(179) + Space(10) + Chr(179) + Space(5) + Chr(179) + Space(5) + Chr(179) + Padr("Grand Total", 36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl(tot, 4, " ") + Chr(179) + Padl(INF(Round(tot1), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot2), 0), 13, " ") + Chr(179) + Padl(tot3, 4, " ") + Chr(179) + Padl(INF(Round(tot4), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot5), 0), 13, " ") + Chr(179) + Padl(tot6, 4, " ") + Chr(179) + Padl(INF(Round(tot7), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot8), 0), 13, " ") + Chr(179) + Padl(tot9, 4, " ") + Chr(179) + Padl(INF(Round(tot10), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot11), 0), 13, " ") + Chr(179) + Padl(tot12, 4, " ") + Chr(179) + Padl(INF(Round(tot13), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot14), 0), 13, " ") + Chr(179)
'
'
'        'Grandtotal printing
'        Print #z, Space(2) + Chr(179) + Space(10) + Chr(179) + Space(5) + Chr(179) + Space(5) + Chr(179) + Padr("Grand Total", 36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl(tot, 5, " ") + Chr(179) + Padl(Round(tot1, 0), 8, " ") + Chr(179) + Padl(Round(tot2, 0), 12, " ") + Chr(179) + Padl(tot3, 4, " ") + Chr(179) + Padl(Round(tot4, 0), 8, " ") + Chr(179) + Padl(Round(tot5, 0), 12, " ") + Chr(179) + Padl(tot6, 5, " ") + Chr(179) + Padl(Round(tot7, 0), 8, " ") + Chr(179) + Padl(Round(tot8, 0), 12, " ") + Chr(179) + Padl(tot9, 5, " ") + Chr(179) + Padl(Round(tot10, 0), 8, " ") + Chr(179) + Padl(Round(tot11, 0), 12, " ") + Chr(179) + Padl(tot12, 5, " ") + Chr(179) + Padl(Round(tot13, 0), 8, " ") + Chr(179) + Padl(Round(tot14, 0), 13, " ") + Chr(179)
'
'
'
'
'        'Print #z, Space(2) + Chr(179) + Space(10) + Chr(179) + Space(5) + Chr(179) + Space(5) + Chr(179) + Padr("Grand Total", 36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl(tot, 5, " ") + Chr(179) + Padl(tot1, 8, " ") + Chr(179) + Padl(tot2, 12, " ") + Chr(179) + Padl(tot3, 4, " ") + Chr(179) + Padl(tot4, 8, " ") + Chr(179) + Padl(tot5, 13, " ") + Chr(179) + Padl(tot6, 4, " ") + Chr(179) + Padl(tot7, 8, " ") + Chr(179) + Padl(tot8, 13, " ") + Chr(179) + Padl(tot9, 4, " ") + Chr(179) + Padl(tot10, 8, " ") + Chr(179) + Padl(tot11, 13, " ") + Chr(179) + Padl(tot12, 4, " ") + Chr(179) + Padl(tot13, 8, " ") + Chr(179) + Padl(tot14, 13, " ") + Chr(179)
'
'        'Print #z, Space(60) & Chr(27) & "E" + "** Grand Total ** " + Padl(INF(Round(tot), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot1), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot2), 0), 10, " ") + Chr(179) + Padl(INF(Round(tot3), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot4), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot5), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot6), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot7), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot8), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot9), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot10), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot11), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot12), 0), 4, " ") + Chr(179) + Padl(INF(Round(tot13), 0), 8, " ") + Chr(179) + Padl(INF(Round(tot14), 0), 8, " ") + Chr(179)
'        'Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(180)
'        Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
'        'old Print #z, Space(2) + Chr(192) + String(10, Chr(196))+chr(179) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(225)
'
'
'        'co = co + 1
''        If co >= pagelen Then
''                   'Print #z, Space(5) & String(225, "-")
''                   Print #z, Chr(12)
''                   pg1 = pg1 + 1
''                   co = 0
''                   Call LotstockRepHeader(pg1, co, s, a1, u)
''                End If
'
'        'End If
'
'Print #z, Chr(12)
'Close #z
'z = FreeFile
'Open "c:\Lot.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type Lot.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\Lot.TXT"
'RPTV.Batfile = "c:\Lot.bat"
'Screen.MousePointer = 0
'End Sub
'
'
