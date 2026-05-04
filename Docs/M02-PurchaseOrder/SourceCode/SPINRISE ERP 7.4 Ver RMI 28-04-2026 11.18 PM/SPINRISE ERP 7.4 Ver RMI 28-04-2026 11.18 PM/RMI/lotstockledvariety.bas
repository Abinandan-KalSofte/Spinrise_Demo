Attribute VB_Name = "Module2"
Public Sub varstockledgerReport(a1 As String, A2 As String, str1 As String, LtNF As Integer, LtNT As Integer)
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Date1 = Format(yfdate, "yyyy-mm-dd") 'financial year from date
date2 = Format(yldate, "yyyy-mm-dd") 'financial year to date
A3 = Format(a1, "yyyy-mm-dd")        'from date (a1)
a4 = Format(A2, "yyyy-mm-dd")        'To date(a2)
str1 = Left(str1, 1)
If str1 = "C" Then
 Set rs = New Recordset
 rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
         "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
         "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
         "else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
         "from ((" & _
         "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
         "(select varcode,b.LOTNO,lotdt,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & date2 & "') and B.lotyear = '" & Year(a1) & "' AND b.catcd = '" & Trim(str1) & "' and b.lotdt < '" & A3 & "'  group by varcode,b.LOTNO,b.lotdt,b.bblflg" & _
         " Union " & _
         "select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & A3 & "') and B.lotyear='" & Year(Date1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & A3 & "'  and docdt between '" & Date1 & "' and '" & date2 & "' group by varcode,b.LOTNO,b.lotdt,b.bblflg " & _
         " )a  group by varcode,LOTNO,lotdt " & _
         "Union All select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b  where b.lotdt between '" & A3 & "' and '" & a4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & a4 & "') and B.lotyear='" & Year(Date1) & "' AND b.catcd = '" & Trim(str1) & "' and b.lotdt <= '" & a4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & date2 & "'  group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & a4 & "') and B.lotyear='" & Year(Date1) & "' AND b.catcd = '" & Trim(str1) & "' and b.lotdt<'" & a4 & "' and  b.lotdt Between '" & Date1 & "' and '" & date2 & "'  group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "'  and  c.docdt BETWEEN '" & A3 & "' AND '" & a4 & "' and lotyear='" & Year(Date1) & "' and c.isstype = 'P' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 AS ISSBALES1,0 AS ISSBORAS1,0 AS ISSKGS1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as isskgs2,  0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "'  and  c.docdt BETWEEN '" & A3 & "' AND '" & a4 & "' and lotyear='" & Year(Date1) & "' and c.isstype = 'Q' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "union all select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  c.docdt between '" & A3 & "' and '" & a4 & "' and lotyear='" & Year(Date1) & "' and c.isstype = 'T' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "))a  where a.lotno between '" & LtNF & "'  and '" & LtNT & "' group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
        
Else
     If str1 = "A" Then
     Set rs = New Recordset
     rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
         "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
         "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
         "else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
         "from ((" & _
         "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
         "(select varcode,b.LOTNO,lotdt,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & date2 & "') and B.lotyear = '" & Year(a1) & "' and b.lotdt < '" & A3 & "'  group by varcode,b.LOTNO,b.lotdt,b.bblflg" & _
         " Union " & _
         "select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & A3 & "') and B.lotyear='" & Year(Date1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & A3 & "'  and docdt between '" & Date1 & "' and '" & date2 & "' group by varcode,b.LOTNO,b.lotdt,b.bblflg " & _
         " )a  group by varcode,LOTNO,lotdt " & _
         "Union All select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b  where b.lotdt between '" & A3 & "' and '" & a4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & a4 & "') and B.lotyear='" & Year(Date1) & "'  and b.lotdt <= '" & a4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & date2 & "'  group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & a4 & "') and B.lotyear='" & Year(Date1) & "' and b.lotdt<'" & a4 & "' and  b.lotdt Between '" & Date1 & "' and '" & date2 & "'  group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales1,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras1,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.docdt BETWEEN '" & A3 & "' AND '" & a4 & "' and lotyear='" & Year(Date1) & "' and c.isstype = 'P' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 AS ISSBALES1,0 AS ISSBORAS1,0 AS ISSKGS1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales2,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras2,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as isskgs2,  0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.docdt BETWEEN '" & A3 & "' AND '" & a4 & "' and lotyear='" & Year(Date1) & "' and c.isstype = 'Q' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "union all select varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as tranboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.docdt between '" & A3 & "' and '" & a4 & "' and lotyear='" & Year(Date1) & "' and c.isstype = 'T' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "))a  where a.lotno between '" & LtNF & "'  and '" & LtNT & "' group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
        
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
'Call LotstockRepHeader(PG1, co, s, a1, A2)
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
                issval_unit1 = IIf(IsNull(rs("isskgs1")), 0, rs("isskgs1")) * RS1("RATEKG")
                'without round off
                issval_unit2 = IIf(IsNull(rs("isskgs2")), 0, rs("isskgs2")) * RS1("RATEKG")
                'calculating the issue unit value with round off
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
                recval = IIf(IsNull(rs("reckgs")), 0, rs("reckgs")) * rs2("RATEKG")
                issval_unit1 = IIf(IsNull(rs("isskgs1")), 0, rs("isskgs1")) * RS1("RATEKG")
                issval_unit2 = IIf(IsNull(rs("isskgs2")), 0, rs("isskgs2")) * RS1("RATEKG")
                cloval = IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * rs2("RATEKG")
                TRANSVAL = IIf(IsNull(rs("TRANkgs")), 0, rs("TRANkgs")) * RS1("RATEKG")
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
            End If
           'calculating the total value
           If rs("opbales") <> 0 Or rs("recbales") <> 0 Or rs("issbales1") <> 0 Or rs("issbales2") <> 0 Or rs("clobales") <> 0 Then
            tot = tot + rs("opbales")
            tot1 = tot1 + rs("opkgs")
            tot2 = tot2 + opval
            tot3 = tot3 + rs("recbales")
            tot4 = tot4 + rs("reckgs")
            tot5 = tot5 + recval
            tot6 = tot6 + rs("issbales1")
            tot7 = tot7 + rs("isskgs1")
            tot8 = tot8 + issval_unit1
            tot9 = tot9 + rs("issbales2")
            tot10 = tot10 + rs("isskgs2")
            tot11 = tot11 + issval_unit2
            tot12 = tot12 + rs("clobales")
            tot13 = tot13 + rs("clokgs")
            tot14 = tot14 + cloval
            tot15 = tot15 + rs("TRANBALES")
            tot16 = tot16 + rs("TRANKGS")
            tot17 = tot17 + TRANSVAL
               
            Print #z, Space(0) + Padl(Format(rs("lotdt"), "DD/MM/YY"), 8, " ") + Space(1) + Padl(rs("lotno"), 5, " ") + Space(1) + Padl(RS1("Plotno"), 4, " ") + Space(1) + Padr(RS1("slname"), 30, " ") + Space(1) + Padl(INF(Round(RS1("ratecy"), 0), 0), 7, " ") + Space(1) + Padl(rs("varcode"), 5, " ") + Space(1) + Padl(rs("opbales"), 5, " ") + Space(1) + Padl(INF(Round(rs("opkgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(opval, 0), 0), 12, " ") + Space(1) + Padl(rs("recbales"), 4, " ") + Space(1) + Padl(INF(Round(rs("reckgs"), 0), 0), 8, " ");
            Print #z, Space(1) + Padl(INF(Round(recval, 0), 0), 10, " ") + Space(1) + Padl(rs("issbales1"), 5, " ") + Space(1) + Padl(INF(Round(rs("isskgs1"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit1, 0), 0), 12, " ") + Space(1) + Padl(rs("issbales2"), 5, " ") + Space(1) + Padl(INF(Round(rs("isskgs2"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit2, 0), 0), 12, " ") + Space(1);
            Print #z, Padl(rs("TRANbales"), 4, " ") + Space(1) + Padl(INF(Round(rs("TRANkgs"), 0), 0), 6, " ") + Space(1) + Padl(INF(Round(TRANSVAL, 0), 0), 10, " ") + Space(1); Padl(rs("clobales"), 5, " ") + Space(1) + Padl(INF(Round(rs("clokgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Space(1)
            
            co = co + 1
            End If
                If co >= pagelen Then
                  Print #z, String(227, "-")
                  Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                 '  Call LotstockRepHeader(PG1, co, str1, a1, A2)
                End If
                rs.MoveNext
                If RS1.EOF = False Then
                RS1.MoveNext
                End If
        Loop
Print #z, Space(0); String(227, "-")
Print #z, Space(1) + Space(5) + Space(5) + Padr("Grand Total", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(4, " ") + Space(0) + Padl(INF(tot, 0), 7, " ") + Space(1) + Space(9) + Space(1) + Padl(INF(Round(tot2, 0), 0), 12, " ") + Space(1) + Space(4) + Space(0) + Padl(INF(Round(tot4, 0), 0), 9, " ") + Space(1) + Space(10) + Space(0) + Padl(INF(Round(tot6, 0), 0), 6, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot8, 0), 0), 12, " ") + Space(1) + Space(5) + Space(0) + Padl(INF(Round(tot10, 0), 0), 9, " ") + Space(1) + Space(11) + Space(0) + Padl(INF(Round(tot15, 0), 0), 6, " ") + Space(0) + Space(5) + Space(1) + Padl(INF(Round(tot17, 0), 0), 12, " ") + Space(1); Space(2) + Space(0) + Padl(INF(Round(tot13, 0), 0), 13, " ") + Space(1) + Space(13) + Space(1) '& Chr(27) & "F"
Print #z, Space(1) + Space(5) + Space(5) + Padr(" ", 36, " ") + Space(1) + String(10, " ") + Space(1) + String(5, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Space(12) + Space(0) + Padl(INF(Round(tot3, 0), 0), 5, " ") + Space(1) + Space(8) + Space(0) + Padl(INF(Round(tot5, 0), 0), 11, " ") + Space(1) + Space(5) + Space(0) + Padl(INF(Round(tot7, 0), 0), 9, " ") + Space(1) + Space(12) + Space(0) + Padl(INF(Round(tot9, 0), 0), 6, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot11, 0), 0), 12, " ") + Space(0) + Space(3) + Space(0) + Padl(INF(Round(tot16, 0), 0), 9, " ") + Space(1) + Space(9) + Space(0); Padl(INF(Round(tot12, 0), 0), 7, " ") + Space(1) + Space(9) + Space(0) + Padl(INF(Round(tot14, 0), 0), 14, " ") + Space(1) '& Chr(27) & "F"
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
Public Sub varstockRepHeader(pg1 As Integer, co As Integer, s As String, a1 As String, A2 As String)
Print #z, Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
Print #z, Chr(15)
sr = CStr(Format((pdate), "dd/mm/yyyy")) + Space(0)
Print #z, Space(0) & Chr(27) + "E" + "Lotwise Stock Ledger" + Chr(27) + "F" + Space(1) + "from" + Space(1) + Format(Trim(a1), "DD/MM/YYYY"); Space(1); "to"; Space(1); Format(Trim(a1), "DD/MM/YYYY"); Space(150); Space(0) + CStr(sr) + Space(4) + "Pg.:" + Padl(CStr(pg1), 3, "  ") '+ Chr(15)
Print #z, Space(0); String(227, "-")
Print #z, "RECEIVED  MILL PARTY     SUPPLIER NAME               CANDY   VAR      OPENING BALANCE                 RECEIPT          <---------------------ISSUED----------------------->        TRANSFER                    CLOSING         "
Print #z, "    DATE   LOT  LOT                                   RATE  CODE <--------------------------><-----------------------> <----------Unit I---------> <---------Unit II---------><---------------------> <--------------------------->"
Print #z, "            NO   NO                                              BALES       KGS       VALUE BALES      KGS      VALUE BALES      KGS        VALUE BALES     KGS         VALUE BALES   KGS      VALUE BALES       KGS         VALUE"
Print #z, Space(0); String(227, "-")
co = co + 10
End Sub

