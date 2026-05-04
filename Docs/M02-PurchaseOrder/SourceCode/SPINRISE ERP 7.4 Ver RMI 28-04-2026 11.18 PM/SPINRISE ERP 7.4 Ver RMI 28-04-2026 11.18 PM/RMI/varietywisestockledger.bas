Attribute VB_Name = "varietywisestockledger"
Dim rs1 As Recordset
Dim ResultRs As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6 As Double
Dim tot7, tot8, tot9, tot10, tot11, tot12, tot14, tot15 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim z As Integer
'By Parimalam
Public Sub VarietystockledgerReport(a1 As String, A2 As String, str1 As String, LtNF As Integer, LtNT As Integer)
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Date1 = Format(yfdate, "yyyy-mm-dd") 'financial year from date
Date2 = Format(yldate, "yyyy-mm-dd") 'financial year to date
a3 = Format(a1, "yyyy-mm-dd")        'from date (a1)
a4 = Format(A2, "yyyy-mm-dd")        'To date(a2)
str1 = Left(str1, 1)
If str1 = "C" Then
 Set Rs = New Recordset
 Rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
         "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
         "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
         "else sum(isnull(a.recbales,0))-  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
         "from ((" & _
         "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
         "(select b.varcode,b.LOTNO,lotdt,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>='" & a3 & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt < '" & a3 & "'  group by b.varcode,b.LOTNO,b.lotdt,b.bblflg" & _
         " Union " & _
         "select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >='" & a3 & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & a3 & "'  and docdt between '" & Date1 & "' and '" & Date2 & "' group by b.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
         " )a  group by varcode,LOTNO,lotdt " & _
         "Union All select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b  where b.lotdt between '" & a3 & "' and '" & a4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & a4 & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt <= '" & a4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'  group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & a4 & "') and B.lotyear in ('" & Year(yfdate) & "','" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt<'" & a4 & "' and  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'  group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras1,round((sum(isnull(e.netwt,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "'  and  c.docdt BETWEEN '" & a3 & "' AND '" & a4 & "' and lotyear in ('" & Year(yfdate) & "','" & Year(yfdate) & "') and left(c.isstype,1)<> 'T' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 AS ISSBALES1,0 AS ISSBORAS1,0 AS ISSKGS1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales2,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras2,round((sum(isnull(e.netwt,0))),3) as isskgs2,  0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "'  and  c.docdt BETWEEN '" & a3 & "' AND '" & a4 & "' and lotyear in ('" & Year(yfdate) & "','" & Year(yfdate) & "') and c.isstype = 'Q' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "union all select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(e.netwt,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  c.docdt between '" & a3 & "' and '" & a4 & "' and lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') and left(c.isstype,1) ='T' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "))a  group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by varcode,lotno", db, adOpenStatic, adLockBatchOptimistic
        
Else
     If str1 = "A" Then
     Set Rs = New Recordset
     Rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
         "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
         "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
         "else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
         "from ((" & _
         "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
         "(select b.varcode,b.LOTNO,lotdt,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>='" & a3 & "') and B.lotyear in ('" & Year(yfdate) & "','" & Year(yfdate) & "') and b.lotdt < '" & a3 & "'  group by b.varcode,b.LOTNO,b.lotdt,b.bblflg" & _
         " Union " & _
         "select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >='" & a3 & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & a3 & "'  and docdt between '" & Date1 & "' and '" & Date2 & "' group by b.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
         " )a  group by varcode,LOTNO,lotdt " & _
         "Union All select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b  where b.lotdt between '" & a3 & "' and '" & a4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & a4 & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "')  and b.lotdt <= '" & a4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'  group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & a4 & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') and b.lotdt<'" & a4 & "' and  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'  group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras1,round((sum(isnull(e.netwt,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.docdt BETWEEN '" & a3 & "' AND '" & a4 & "' and lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') and left(c.isstype,1) = 'P' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "Union All select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 AS ISSBALES1,0 AS ISSBORAS1,0 AS ISSKGS1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales2,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras2,round((sum(isnull(e.netwt,0))),3) as isskgs2,  0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.docdt BETWEEN '" & a3 & "' AND '" & a4 & "' and lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') and left(c.isstype,1) = 'Q' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "union all select b.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(e.netwt,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.docdt between '" & a3 & "' and '" & a4 & "' and lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') and left(c.isstype,1)= 'T' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
         "))a group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by varcode,lotno", db, adOpenStatic, adLockBatchOptimistic
        
End If
End If
Set RPTV = New Report.ReportView
z = FreeFile
Close #z
Close
'Open "C:\lot.txt" For Output As #z
Open KALFOLDERDATA & "\lot.TXT" For Output As #z
pg1 = 1
Co = 0
Count = 0
Call LotstockRepHeader(pg1, Co, S, a1, A2)
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
        Do While Not Rs.EOF
            Set rs1 = New Recordset
            rs1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,ROUND(ISNULL(A.RATEKG,0),2) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR in('" & Year(yfdate) & "','" & Year(yfdate) & "') AND A.lotno = '" & Rs![LOTNO] & "' and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", db, adOpenStatic
            Set RS2 = New Recordset
            RS2.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,ISNULL(A.RATEKG,0) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR in('" & Year(yfdate) & "','" & Year(yfdate) & "') AND A.lotno = '" & Rs![LOTNO] & "' and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", db, adOpenStatic
            If rs1.RecordCount > 0 Then
            Slname = rs1![Slname]
            RATECY = rs1![RATECY]
            PlotNo = rs1![PlotNo]
            arrdate = rs1![LOTDT]
            Else
            Slname = " "
            RATECY = " "
            PlotNo = " "
            arrdate = " "
          End If
           If rs1.RecordCount > 0 And Rs.EOF = False Then
                opval = IIf(IsNull(Rs("opkgs")), 0, Rs("opkgs")) * rs1("RATEKG")
                recval = IIf(IsNull(Rs("reckgs")), 0, Rs("reckgs")) * rs1("RATEKG")
                issval_unit1 = IIf(IsNull(Rs("isskgs1")), 0, Rs("isskgs1")) * rs1("RATEKG")
                'without round off
                issval_unit2 = IIf(IsNull(Rs("isskgs2")), 0, Rs("isskgs2")) * rs1("RATEKG")
                'calculating the issue unit value with round off
                cloval = IIf(IsNull(Rs("clokgs")), 0, Rs("clokgs")) * rs1("RATEKG")
                TRANSVAL = IIf(IsNull(Rs("TRANkgs")), 0, Rs("TRANkgs")) * rs1("RATEKG")
                
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
            End If
            'by nithya
            If rs1.RecordCount > 0 And Rs.EOF = False Then
                opval = IIf(IsNull(Rs("opkgs")), 0, Rs("opkgs")) * RS2("RATEKG")
                recval = IIf(IsNull(Rs("reckgs")), 0, Rs("reckgs")) * RS2("RATEKG")
                issval_unit1 = IIf(IsNull(Rs("isskgs1")), 0, Rs("isskgs1")) * rs1("RATEKG")
                issval_unit2 = IIf(IsNull(Rs("isskgs2")), 0, Rs("isskgs2")) * rs1("RATEKG")
                cloval = IIf(IsNull(Rs("clokgs")), 0, Rs("clokgs")) * RS2("RATEKG")
                TRANSVAL = IIf(IsNull(Rs("TRANkgs")), 0, Rs("TRANkgs")) * rs1("RATEKG")
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
            End If
           'calculating the total value
           If Rs("opbales") <> 0 Or Rs("recbales") <> 0 Or Rs("issbales1") <> 0 Or Rs("issbales2") <> 0 Or Rs("clobales") <> 0 Then
            tot = tot + Rs("opbales")
            tot1 = tot1 + Rs("opkgs")
            tot2 = tot2 + opval
            tot3 = tot3 + Rs("recbales")
            tot4 = tot4 + Rs("reckgs")
            tot5 = tot5 + recval
            tot6 = tot6 + Rs("issbales1")
            tot7 = tot7 + Rs("isskgs1")
            tot8 = tot8 + issval_unit1
            tot9 = tot9 + Rs("issbales2")
            tot10 = tot10 + Rs("isskgs2")
            tot11 = tot11 + issval_unit2
            tot12 = tot12 + Rs("clobales")
            tot13 = tot13 + Rs("clokgs")
            tot14 = tot14 + cloval
            tot15 = tot15 + Rs("TRANBALES")
            tot16 = tot16 + Rs("TRANKGS")
            tot17 = tot17 + TRANSVAL
               
            'Print #z, Space(0) + Padl(Format(Rs("lotdt"), "DD/MM/YY"), 8, " ") + Space(1) + Padl(Rs("lotno"), 5, " ") + Space(1) + Padl(rs1("Plotno"), 4, " ") + Space(1) + Padr(rs1("slname"), 30, " ") + Space(1) + Padl(INF(Round(rs1("ratecy"), 0), 0), 7, " ") + Space(1) + Padl(Rs("varcode"), 5, " ") + Space(1) + Padl(Rs("opbales"), 5, " ") + Space(1) + Padl(INF(Round(Rs("opkgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(opval, 0), 0), 12, " ") + Space(1) + Padl(Rs("recbales"), 4, " ") + Space(1) + Padl(INF(Round(Rs("reckgs"), 0), 0), 8, " ");
            'Print #z, Space(1) + Padl(INF(Round(recval, 0), 0), 10, " ") + Space(1) + Padl(Rs("issbales1"), 5, " ") + Space(1) + Padl(INF(Round(Rs("isskgs1"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit1, 0), 0), 12, " ") + Space(1) + Padl(Rs("issbales2"), 5, " ") + Space(1) + Padl(INF(Round(Rs("isskgs2"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit2, 0), 0), 12, " ") + Space(1);
            'Print #z, Padl(Rs("TRANbales"), 4, " ") + Space(1) + Padl(INF(Round(Rs("TRANkgs"), 0), 0), 6, " ") + Space(1) + Padl(INF(Round(TRANSVAL, 0), 0), 10, " ") + Space(1); Padl(Rs("clobales"), 5, " ") + Space(1) + Padl(INF(Round(Rs("clokgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Space(1)
            
            
            Print #z, Space(0) + Padl(Rs("varcode"), 5, " ") + Space(1) + Padl(Format(Rs("lotdt"), "DD/MM/YY"), 8, " ") + Space(1) + Padl(Rs("lotno"), 5, " ") + Space(1) + Padl(" ", 4, " ") + Space(1) + Space(1) + Padl(Rs("opbales"), 5, " ") + Space(1) + Padl(INF(Round(Rs("opkgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(opval, 0), 0), 12, " ") + Space(1) + Padl(Rs("recbales"), 4, " ") + Space(1) + Padl(INF(Round(Rs("reckgs"), 0), 0), 8, " ");
            Print #z, Space(1) + Padl(INF(Round(recval, 0), 0), 10, " ") + Space(1) + Padl(Rs("issbales1"), 5, " ") + Space(1) + Padl(INF(Round(Rs("isskgs1"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit1, 0), 0), 12, " ") + Space(1) + Padl(Rs("issbales2"), 5, " ") + Space(1) + Padl(INF(Round(Rs("isskgs2"), 0), 0), 8, " ") + Space(1) + Padl(INF(Round(issval_unit2, 0), 0), 12, " ") + Space(1);
            Print #z, Padl(Rs("TRANbales"), 4, " ") + Space(1) + Padl(INF(Round(Rs("TRANkgs"), 0), 0), 6, " ") + Space(1) + Padl(INF(Round(TRANSVAL, 0), 0), 10, " ") + Space(1); Padl(Rs("clobales"), 5, " ") + Space(1) + Padl(INF(Round(Rs("clokgs"), 0), 0), 9, " ") + Space(1) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Space(1)
            
            
            
            Co = Co + 1
            End If
                If Co >= PageLen Then
                  Print #z, String(190, "-")
                  Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, str1, a1, A2)
                End If
                Rs.MoveNext
                If rs1.EOF = False Then
                rs1.MoveNext
                End If
        Loop
Print #z, Space(0); String(190, "-")
Print #z, Space(1) + Padr("Grand Total", 20, " ") + Space(1) + String(1, " ") + Space(0) + Padl(INF(tot, 0), 7, " ") + Space(1) + Space(9) + Space(1) + Padl(INF(Round(tot2, 0), 0), 12, " ") + Space(1) + Space(4) + Space(0) + Padl(INF(Round(tot4, 0), 0), 9, " ") + Space(1) + Space(10) + Space(0) + Padl(INF(Round(tot6, 0), 0), 6, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot8, 0), 0), 12, " ") + Space(1) + Space(5) + Space(0) + Padl(INF(Round(tot10, 0), 0), 9, " ") + Space(1) + Space(11) + Space(0) + Padl(INF(Round(tot15, 0), 0), 6, " ") + Space(0) + Space(5) + Space(1) + Padl(INF(Round(tot17, 0), 0), 12, " ") + Space(1); Space(2) + Space(0) + Padl(INF(Round(tot13, 0), 0), 13, " ") + Space(1) + Space(13) + Space(1) '& Chr(27) & "F"
Print #z, Space(6) + String(12, " ") + Space(1) + String(5, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(Round(tot1, 0), 0), 9, " ") + Space(1) + Space(12) + Space(0) + Padl(INF(Round(tot3, 0), 0), 5, " ") + Space(1) + Space(8) + Space(0) + Padl(INF(Round(tot5, 0), 0), 11, " ") + Space(1) + Space(5) + Space(0) + Padl(INF(Round(tot7, 0), 0), 9, " ") + Space(1) + Space(12) + Space(0) + Padl(INF(Round(tot9, 0), 0), 6, " ") + Space(1) + Space(8) + Space(1) + Padl(INF(Round(tot11, 0), 0), 12, " ") + Space(0) + Space(3) + Space(0) + Padl(INF(Round(tot16, 0), 0), 9, " ") + Space(1) + Space(9) + Space(0); Padl(INF(Round(tot12, 0), 0), 7, " ") + Space(1) + Space(9) + Space(0) + Padl(INF(Round(tot14, 0), 0), 14, " ") + Space(1) '& Chr(27) & "F"
Print #z, Space(0); String(190, "-")

            Set opf = New Recordset
            opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg,Bales,Rejdt,lotno,lotdt,Netwt,netwt*cast(b.ratekg as decimal (12,4)) as Value,Areacd,VArcode FROM RM_LOT B,rm_area a WHERE a.areacode=b.areacd and LOTYEAR='" & Year(yfdate) & "'  and rejflg='Y' and divcode='" & Divcode & "' and rejdt between '" & Format(a3, "yyyy-mm-dd") & "' and '" & Format(a4, "yyyy-mm-dd") & "'", db, adOpenStatic
                If opf.RecordCount > 0 Then
                    Print #z, Space(5) & "Rejection Details"
                    Print #z, Space(5) + String(68, "-")
                    Print #z, Space(5) & "Variety             Lotno   Lotdt    Rejected Bales     Rejected Date"
                    Print #z, Space(5) + String(68, "-")
                    cbales = 0
                    ckgs = 0
                    cval = 0
                    
                    Do While opf.EOF = False
                        Print #z, Space(5) & Padr(opf("Varcode"), 18, " ") & Space(2) & Padr(opf("lotno"), 7, " ") & Space(1) & Padr(Format(opf("lotdt"), "dd-mm-yy"), 8, " ") & Space(2) & Padl(INF(opf("bales"), 0), 13, " ") & Space(5) & Padl(Format(opf("rejdt"), "dd-mm-yy"), 8, " ")
                        cbales = cbales + opf("bales")
                        ckgs = ckgs + opf("netwt")
                        cval = cval + opf("value")
                        opf.MoveNext
                    Loop
                   cbales = tot12 - cbales
                    ckgs = tot13 - ckgs
                    cval = tot14 - cval
                    
                    Print #z, Space(5) + String(68, "-")
                    Print #z,
                    Print #z, Space(5) & "Closing Bales   Closing Weight    "
                    Print #z, Space(5) + String(50, "-")
                    Print #z, Space(5) & Padl(INF(cbales, 0), 13, " ") & Space(2) & Padl(INF(ckgs, 3), 15, " ") & Space(2) & Padl(INF(cval, 3), 15, " ")
                    Print #z, Space(5) + String(50, "-")
               End If


Print #z, Chr(12)
Close #z
z = FreeFile
'Open "c:\Lot.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type Lot.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\Lot.TXT"
'RPTV.Batfile = "c:\Lot.bat"
Call KALBATPROCESS("Lot")

Screen.MousePointer = 0
End Sub
Public Sub LotstockRepHeader(pg1 As Integer, Co As Integer, S As String, a1 As String, A2 As String)
Print #z, Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
Print #z, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(0)
Print #z, Space(0) & Chr(27) + "E" + "Varietywise Stock Ledger" + Chr(27) + "F" + Space(1) + "from" + Space(1) + Format(Trim(a1), "DD/MM/YYYY"); Space(1); "to"; Space(1); Format(Trim(A2), "DD/MM/YYYY"); Space(105); Space(0) + CStr(SR) + Space(9) + "Pg.:" + Padl(CStr(pg1), 3, "  ") '+ Chr(15)
Print #z, Space(0); String(190, "-")
Print #z, " VAR  RECEIVED  MILL            OPENING BALANCE                 RECEIPT               <---------------------ISSUED----------------------->        TRANSFER                    CLOSING         "
Print #z, " CODE     DATE   LOT       <--------------------------> <-----------------------> <----------Unit I---------> <---------Unit II---------><---------------------> <--------------------------->"
Print #z, "                  NO       BALES       KGS       VALUE BALES      KGS      VALUE BALES      KGS        VALUE BALES     KGS         VALUE BALES   KGS      VALUE BALES       KGS         VALUE"



'Print #z, "RECEIVED  MILL PARTY     SUPPLIER NAME               CANDY   VAR      OPENING BALANCE                 RECEIPT          <---------------------ISSUED----------------------->        TRANSFER                    CLOSING         "
'Print #z, "    DATE   LOT  LOT                                   RATE  CODE <--------------------------><-----------------------> <----------Unit I---------> <---------Unit II---------><---------------------> <--------------------------->"
'Print #z, "            NO   NO                                              BALES       KGS       VALUE BALES      KGS      VALUE BALES      KGS        VALUE BALES     KGS         VALUE BALES   KGS      VALUE BALES       KGS         VALUE"
Print #z, Space(0); String(190, "-")
Co = Co + 10
End Sub
Public Sub LotstockRepHeader1(pg1 As Integer, Co As Integer, S As String, a1 As String, U As Integer)
Print #z, Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
Print #z, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #z, Space(2) & Chr(27) + "E" + "Varietywise Stock Ledger" + Chr(27) + "F" + " As On " + Format(Trim(a1), "DD/MM/YYYY"); Space(152); "Dt:" + CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ") + Chr(15)
Print #z, Space(2) + Chr(218) + String(10, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(36, Chr(196)) + Chr(194) + String(10, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(5, Chr(196)) + String(9, Chr(196)) + String(13, Chr(196)) + Chr(194) + String(10, Chr(196)) + String(7, Chr(196)) + String(10, Chr(196)) + Chr(194) + String(10, Chr(196)) + String(18, Chr(196)) + String(27, Chr(196)) + Chr(194) + String(5, Chr(196)) + String(9, Chr(196)) + String(13, Chr(196)) + Chr(191)
Print #z, Space(2) + Chr(179) + Padr("RECEIVED", 10, " ") + Chr(179) + Padl("MILL", 5, " ") + Chr(179) + Padl("PARTY", 5, " ") + Chr(179) + Padr("SUPPLIER NAME", 36, " ") + Chr(179) + CENTRE("CANDY", 10, " ") + Space(1) + Chr(179) + Padl("VAR", 5, " ") + Chr(179) + CENTRE("OPENING BALANCE", 28, " ") + Space(0) + Chr(179) + CENTRE("RECEIPT", 26, " ") + Chr(179) + CENTRE("ISSUED", 54, " ") + Space(1) + Chr(179) + CENTRE("CLOSING", 28, " ") + Space(0) + Chr(179)
Print #z, Space(2) + Chr(179) + CENTRE("DATE", 10, " ") + Chr(179) + Padl("LOT", 5, " ") + Chr(179) + Padl("LOT", 5, " ") + Chr(179) + String(36, " ") + Chr(179) + CENTRE("RATE", 10, " ") + Chr(179) + Padl("CODE", 5, " ") + Chr(179) + String(5, " ") + String(9, " ") + String(13, "  ") + Chr(179) + String(27, "  ") + Chr(195) + String(9, Chr(196)) + String(5, Chr(196)) + String(13, Chr(196)) + Chr(194) + String(7, Chr(196)) + String(5, Chr(196)) + String(15, Chr(196)) + Chr(180) + String(27, " ") + Chr(179)
Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, " ") + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, " ") + String(8, " ") + String(14, " ") + Chr(179) + String(5, " ") + String(8, " ") + String(14, " ") + Chr(179) + CENTRE("UNIT 1", 20, " ") + Space(7) + Chr(179) + CENTRE("UNIT 2", 20, " ") + Space(7) + Chr(179) + String(27, " ") + Chr(179)
Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, "  ") + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(195) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(13, Chr(196)) + Chr(180)
Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String("NO", 5) + Chr(179) + String("NO", 5) + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 13, " ") + Chr(179)
Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
Co = Co + 10
End Sub

Public Sub LotstockledgerReport1(str1 As String, a1 As String, LtNF As Integer, LtNT As Integer, U As Integer)
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Date1 = Format(yfdate, "yyyy-mm-dd")
Date2 = Format(yldate, "yyyy-mm-dd")
   If str1 = "C" Then
    Set Rs = New Recordset
    Rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) end as clokgs " & _
        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "'  AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and LOTYEAR in('" & Year(yfdate) & "','" & Year(yfdate) & "')  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(e.netwt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "')  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(e.netwt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e " & _
        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear in('" & Year(yfdate) & "','" & Year(yfdate) & "')  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(e.netwt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & str1 & "' and  docdt between '" & Date1 & "' and '" & Date2 & "' and lotyear'" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt ))a  group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOpenStatic
       
Else
     If str1 = "A" Then
     Set Rs = New Recordset
       Rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs" & _
        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear='" & Year(a1) & "' AND LOTYEAR='" & Year(yfdate) & "'  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(e.netwt,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(e.netwt,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e " & _
        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(e.netwt,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  docdt between '" & Date1 & "' and '" & Date2 & "' and lotyear='" & Year(a1) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T'  group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a " & _
        " group by a.varcode,lotno,lotdt  ORDER BY LOTNO", db, adOlpenStatic
     
End If
End If
Set RPTV = New Report.ReportView
z = FreeFile
Close #z
Close
'Open "C:\lot.txt" For Output As #z
Open KALFOLDERDATA & "\lot.TXT" For Output As #z
pg1 = 1
Co = 0
Count = 0

Call LotstockRepHeader(pg1, Co, S, a1, CStr(U))
    
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
      
        Do While Not Rs.EOF
            Set rs1 = New Recordset
            rs1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,A.RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR='" & Year(a1) & "' AND A.lotno = '" & Rs![LOTNO] & "' and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", db, adOpenStatic
         
            
            If rs1.RecordCount > 0 Then
            Slname = rs1![Slname]
            RATECY = rs1![RATECY]
            PlotNo = rs1![PlotNo]
            arrdate = rs1![LOTDT]
            Else
            Slname = " "
            RATECY = " "
            PlotNo = " "
            arrdate = " "
            
            End If
            
            If rs1.RecordCount > 0 And Rs.EOF = False Then
                opval = IIf(IsNull(Rs("opkgs")), 0, Rs("opkgs")) * rs1("RATEKG")
                recval = IIf(IsNull(Rs("reckgs")), 0, Rs("reckgs")) * rs1("RATEKG")
                issval_unit1 = IIf(IsNull(Rs("isskgs_unit1")), 0, Rs("isskgs_unit1")) * rs1("RATEKG")
                issval_unit2 = IIf(IsNull(Rs("isskgs_unit2")), 0, Rs("isskgs_unit2")) * rs1("RATEKG")
                cloval = IIf(IsNull(Rs("clokgs")), 0, Rs("clokgs")) * rs1("RATEKG")
                
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
                               
            End If
               'calculating the total value
               tot = tot + Rs("opbales")
               tot1 = tot1 + Rs("opkgs")
               tot2 = tot2 + opval
               tot3 = tot3 + Rs("recbales")
               tot4 = tot4 + Rs("reckgs")
               tot5 = tot5 + recval
               tot6 = tot6 + Rs("issbales_unit1")
               tot7 = tot7 + Rs("isskgs_unit1")
               tot8 = tot8 + issval_unit1
               tot9 = tot9 + Rs("issbales_unit2")
               tot10 = tot10 + Rs("isskgs_unit2")
               tot11 = tot11 + issval_unit2
               tot12 = tot12 + Rs("clobales")
               tot13 = tot13 + Rs("clokgs")
               tot14 = tot14 + cloval
           Print #z, Space(2) + Chr(179) + Padl(Rs("lotdt"), 10, " ") + Chr(179) + Padl(Rs("lotno"), 5, " ") + Chr(179) + Padl(rs1("Plotno"), 5, " ") + Chr(179) + Padr(rs1("slname"), 36, " ") + Chr(179) + Padl(INF(Round(rs1("ratecy"), 0), 0), 10, " ") + Chr(179) + Padl(Rs("varcode"), 5, " ") + Chr(179) + Padl(Rs("opbales"), 5, " ") + Chr(179) + Padl(INF(Round(Rs("opkgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(opval, 0), 0), 12, " ") + Chr(179) + Padl(Rs("recbales"), 5, " ") + Chr(179) + Padl(INF(Round(Rs("reckgs"), 0), 0), 8, " ");
           Print #z, Chr(179) + Padl(INF(Round(recval, 0), 0), 12, " ") + Chr(179) + Padl(Rs("issbales_unit1"), 5, " ") + Chr(179) + Padl(INF(Round(Rs("isskgs_unit1"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit1, 0), 0), 12, " ") + Chr(179) + Padl(Rs("issbales_unit2"), 5, " ") + Chr(179) + Padl(INF(Round(Rs("isskgs_unit2"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(issval_unit2, 0), 0), 12, " ") + Chr(179) + Padl(Rs("clobales"), 5, " ") + Chr(179) + Padl(INF(Round(Rs("clokgs"), 0), 0), 8, " ") + Chr(179) + Padl(INF(Round(cloval, 0), 0), 13, " ") + Chr(179)
           Co = Co + 1
           If Co >= 59 Then
           Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
           Co = Co + 1
           Else
           Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
           Co = Co + 1
            End If
                
                If Co >= PageLen Then
                  Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, str1, a1, CStr(U))
                End If
            Rs.MoveNext
                If rs1.EOF = False Then
                rs1.MoveNext
                End If

        Loop
        Print #z, Space(2) + Chr(179) + Space(10) + Chr(179) + Space(5) + Chr(179) + Space(5) + Chr(179) + Padr("Grand Total", 36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl(tot, 5, " ") + Chr(179) + Padl(Round(tot1, 0), 8, " ") + Chr(179) + Padl(Round(tot2, 0), 12, " ") + Chr(179) + Padl(tot3, 4, " ") + Chr(179) + Padl(Round(tot4, 0), 8, " ") + Chr(179) + Padl(Round(tot5, 0), 12, " ") + Chr(179) + Padl(tot6, 5, " ") + Chr(179) + Padl(Round(tot7, 0), 8, " ") + Chr(179) + Padl(Round(tot8, 0), 12, " ") + Chr(179) + Padl(tot9, 5, " ") + Chr(179) + Padl(Round(tot10, 0), 8, " ") + Chr(179) + Padl(Round(tot11, 0), 12, " ") + Chr(179) + Padl(tot12, 5, " ") + Chr(179) + Padl(Round(tot13, 0), 8, " ") + Chr(179) + Padl(Round(tot14, 0), 13, " ") + Chr(179)
        Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
Print #z, Chr(12)
Close #z
z = FreeFile
'Open "c:\Lot.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type Lot.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\Lot.TXT"
'RPTV.Batfile = "c:\Lot.bat"
Call KALBATPROCESS("Lot")
Screen.MousePointer = 0
End Sub


