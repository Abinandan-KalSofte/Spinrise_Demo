Attribute VB_Name = "newlotwisestockledger"
Dim rs1 As Recordset
Dim ResultRs As Recordset
Dim Rs As Recordset
Dim rs2 As Recordset
Dim rptv As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6 As Double
Dim tot7, tot8, tot9, tot10, tot11, tot12, tot14, tot15 As Double
Dim C1 As Integer
Dim Cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s As String
Dim z As Integer
Dim rp As New repform1


Public Sub LotstockledgerReport(a1 As String, A2 As String, str1 As String, LtNF As Double, LtNT As Double, pRecType As String, footerstr As String)
Dim PlotNo, RatCy, sLname

Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Date1 = Format(yfdate, "yyyy-mm-dd") 'financial year from date
Date2 = Format(yldate, "yyyy-mm-dd") 'financial year to date
a3 = Format(a1, "yyyy-mm-dd")        'from date (a1)
A4 = Format(A2, "yyyy-mm-dd")        'To date(a2)
DB.CommandTimeout = 2000
Cnn.CommandTimeout = 2000
str1 = Trim(Mid$(str1, 1, InStr(1, str1, "-") - 1))
vrectype = Trim(Left(pRecType, 3))
If str1 <> "ALL" Then
 Set Rs = New Recordset
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        If vrectype = "A" Then
            Rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
                 "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
                 "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
                 "else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
                 "from ((" & _
                 "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                 "(select B.varcode,b.LOTNO,B.lotdt,case when b.bblflg ='B' then SUM(Bales) else 0 end as opbales, case when b.bblflg   IN ('R','H') then SUM(Bales) else 0 end as opboras,sum(isnull(b.Favaourablewgt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where (b.rejflg='N' or b.rejdt>'" & A4 & "') and B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & Date2 & "') and B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and (OPFLG='Y' or b.lotdt < '" & a3 & "') and (B.transfertype='' or b.transfertype='JR')  group by B.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
                 " Union " & _
                 "select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.ISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and (B.transfertype='' or b.transfertype='JR') and c.lotno=e.lotno and c.catcd=e.catcd and b.varcode=c.varcode and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & a3 & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & a3 & "'  and docdt between '" & Date1 & "' and '" & Date2 & "' group by B.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
                 " )a  group by varcode,LOTNO,lotdt " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(bales) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(bales) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b where ISNULL(OPFLG,'N')='N' AND (b.rejflg='N' or b.rejdt>'" & A4 & "') AND  b.lotdt between '" & a3 & "' and '" & A4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & A4 & "') and  B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt <= '" & A4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'and (B.transfertype='' or b.transfertype='JR') " & _
                 "group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & A4 & "') and B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt<'" & A4 & "' and  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'and (B.transfertype='' or b.transfertype='JR')  group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras1,round((sum(isnull(C.ISSKGS,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e,RM_ISSUETYPE G where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "'  and  c.docdt BETWEEN '" & a3 & "' AND '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and G.isstype in ('J','P') and c.isstype=g.issue_code and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                 "and (B.transfertype='' or b.transfertype='JR') " & _
                 "group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "union all select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ACTISSKGS,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e,rm_issuetype g where(e.rejflg='N' or e.rejdt>'" & A4 & "') AND   E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  c.docdt between '" & a3 & "' and '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and c.isstype=g.issue_code and g.isstype in  ('T','S') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and (B.transfertype='' or b.transfertype='JR')" & _
                 "and b.varcode=c.varcode group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "))a  where a.lotno between '" & LtNF & "'  and '" & LtNT & "' group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
        Else
            Rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
                 "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
                 "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
                 "else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
                 "from ((" & _
                 "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                 "(select B.varcode,b.LOTNO,B.lotdt,case when b.bblflg ='B' then SUM(Bales) else 0 end as opbales, case when b.bblflg   IN ('R','H') then SUM(Bales) else 0 end as opboras,sum(isnull(b.Favaourablewgt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where (b.rejflg='N' or b.rejdt>'" & A4 & "') and B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & Date2 & "') and B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and (OPFLG='Y' or b.lotdt < '" & a3 & "') and " & tmptypestr & "='" & vrectype & "'  group by B.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
                 " Union " & _
                 "select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.ISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and " & tmptypestr & " = '" & vrectype & "' and c.lotno=e.lotno and c.catcd=e.catcd and b.varcode=c.varcode and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & a3 & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & a3 & "'  and docdt between '" & Date1 & "' and '" & Date2 & "' group by B.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
                 " )a  group by varcode,LOTNO,lotdt " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(bales) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(bales) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b where ISNULL(OPFLG,'N')='N' AND (b.rejflg='N' or b.rejdt>'" & A4 & "') AND  b.lotdt between '" & a3 & "' and '" & A4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & A4 & "') and  B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt <= '" & A4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'and " & tmptypestr & "='" & vrectype & "' " & _
                 "group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & A4 & "') and B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt<'" & A4 & "' and  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'and " & tmptypestr & "='" & vrectype & "'  group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras1,round((sum(isnull(C.ISSKGS,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e,RM_ISSUETYPE G where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "'  and  c.docdt BETWEEN '" & a3 & "' AND '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and G.isstype in ('J','P') and c.isstype=g.issue_code and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                 "and " & tmptypestr & "='" & vrectype & "' " & _
                 "group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "union all select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ACTISSKGS,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e,rm_issuetype g where(e.rejflg='N' or e.rejdt>'" & A4 & "') AND   E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  c.docdt between '" & a3 & "' and '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and c.isstype=g.issue_code and g.isstype in  ('T','S') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and " & tmptypestr & "='" & vrectype & "'" & _
                 "and b.varcode=c.varcode group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "))a  where a.lotno between '" & LtNF & "'  and '" & LtNT & "' group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
        End If
    Else
        Rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
             "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
             "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
             "else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
             "from ((" & _
             "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
             "(select B.varcode,b.LOTNO,B.lotdt,case when b.bblflg ='B' then SUM(Bales) else 0 end as opbales, case when b.bblflg   IN ('R','H') then SUM(Bales) else 0 end as opboras,sum(isnull(b.Favaourablewgt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where (b.rejflg='N' or b.rejdt>'" & A4 & "') and B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & Date2 & "') and B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and (OPFLG='Y' or b.lotdt < '" & a3 & "')  group by B.varcode,b.LOTNO,b.lotdt,b.bblflg" & _
             " Union " & _
             "select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.ISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and b.varcode=c.varcode and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & a3 & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & a3 & "'  and docdt between '" & Date1 & "' and '" & Date2 & "' group by B.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
             " )a  group by varcode,LOTNO,lotdt " & _
             "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(bales) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(bales) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.Favaourablewgt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b where ISNULL(OPFLG,'N')='N' AND  b.lotdt between '" & a3 & "' and '" & A4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & A4 & "') and  B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt <= '" & A4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'  group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
             "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.Favaourablewgt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & A4 & "') and B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and b.lotdt<'" & A4 & "' and  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'  group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
             "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras1,round((sum(isnull(C.ISSKGS,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e,RM_ISSUETYPE G where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "'  and  c.docdt BETWEEN '" & a3 & "' AND '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and G.isstype in ('J','P') and c.isstype=g.issue_code and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
             "group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
             "union all select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ACTISSKGS,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e,rm_issuetype g where(e.rejflg='N' or e.rejdt>'" & A4 & "') AND   E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  c.docdt between '" & a3 & "' and '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and c.isstype=g.issue_code and g.isstype in  ('T','S') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
             "and b.varcode=c.varcode group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
             "))a  where a.lotno between '" & LtNF & "'  and '" & LtNT & "' group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
    End If
Else
 Set Rs = New Recordset
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
            Rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
                 "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
                 "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
                 "else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
                 "from ((" & _
                 "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                 "(select B.varcode,b.LOTNO,B.lotdt,case when b.bblflg ='B' then SUM(Bales) else 0 end as opbales, case when b.bblflg   IN ('R','H') then SUM(Bales) else 0 end as opboras,sum(isnull(b.Favaourablewgt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where   B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & Date2 & "') and B.lotyear IN ('" & Year(yfdate) & "') and (OPFLG='Y' or b.lotdt < '" & a3 & "') and  (b.LotType='A')  group by B.varcode,b.LOTNO,b.lotdt,b.bblflg" & _
                 " Union " & _
                 "select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.ISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and b.varcode=c.varcode and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & a3 & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & a3 & "'  and docdt between '" & Date1 & "' and '" & Date2 & "' and (b.LotType='A') group by B.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
                 " )a  group by varcode,LOTNO,lotdt " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(bales) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(bales) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.Favaourablewgt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b where ISNULL(OPFLG,'N')='N' AND  b.lotdt between '" & a3 & "' and '" & A4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & A4 & "') and  B.lotyear IN ('" & Year(yfdate) & "')  and b.lotdt <= '" & A4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & Date2 & "' and  (b.LotType='A')  group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.Favaourablewgt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & A4 & "') and B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt<'" & A4 & "' and  b.lotdt Between '" & Date1 & "' and '" & Date2 & "' and  (b.LotType='A') group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras1,round((sum(isnull(C.ISSKGS,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e,RM_ISSUETYPE G where  E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  c.docdt BETWEEN '" & a3 & "' AND '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and G.isstype in ('J','P') and c.isstype=g.issue_code and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and  (b.LotType='A') group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "union all select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ACTISSKGS,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e,rm_issuetype g where  E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  c.docdt between '" & a3 & "' and '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and c.isstype=g.issue_code and g.isstype in  ('T','S') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and  (b.LotType='A') " & _
                 "and b.varcode=c.varcode group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                 "))a  where a.lotno between '" & LtNF & "'  and '" & LtNT & "' group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
        Else
            tmptypestr = "b.TransferType"
                Rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
                     "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
                     "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
                     "else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
                     "from ((" & _
                     "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                     "(select B.varcode,b.LOTNO,B.lotdt,case when b.bblflg ='B' then SUM(Bales) else 0 end as opbales, case when b.bblflg   IN ('R','H') then SUM(Bales) else 0 end as opboras,sum(isnull(b.Favaourablewgt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where   B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & Date2 & "') and B.lotyear IN ('" & Year(yfdate) & "') and (OPFLG='Y' or b.lotdt < '" & a3 & "') and (b.TransferType='" & vrectype & "')  group by B.varcode,b.LOTNO,b.lotdt,b.bblflg" & _
                     " Union " & _
                     "select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.ISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and b.varcode=c.varcode and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & a3 & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & a3 & "'  and docdt between '" & Date1 & "' and '" & Date2 & "' and (b.TransferType='" & vrectype & "') group by B.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
                     " )a  group by varcode,LOTNO,lotdt " & _
                     "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(bales) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(bales) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.Favaourablewgt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b where ISNULL(OPFLG,'N')='N' AND  b.lotdt between '" & a3 & "' and '" & A4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & A4 & "') and  B.lotyear IN ('" & Year(yfdate) & "')  and b.lotdt <= '" & A4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & Date2 & "' and (b.TransferType='" & vrectype & "')  group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                     "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.Favaourablewgt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & A4 & "') and B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt<'" & A4 & "' and  b.lotdt Between '" & Date1 & "' and '" & Date2 & "' and (b.TransferType='" & vrectype & "') group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                     "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras1,round((sum(isnull(C.ISSKGS,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e,RM_ISSUETYPE G where  E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  c.docdt BETWEEN '" & a3 & "' AND '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and G.isstype in ('J','P') and c.isstype=g.issue_code and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and (b.TransferType='" & vrectype & "') group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                     "union all select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ACTISSKGS,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e,rm_issuetype g where  E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  c.docdt between '" & a3 & "' and '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and c.isstype=g.issue_code and g.isstype in  ('T','S') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and (b.TransferType='" & vrectype & "')  " & _
                     "and b.varcode=c.varcode group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
                     "))a  where a.lotno between '" & LtNF & "'  and '" & LtNT & "' group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
            
        End If
    Else
        Rs.Open "select varcode,lotno,lotdt,sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales1,0)) issbales1,sum(isnull(issboras1,0)) issboras1, sum(isnull(isskgs1,0)) isskgs1,sum(isnull(issbales2,0)) issbales2,sum(isnull(issboras2,0)) issboras2, sum(isnull(isskgs2,0)) isskgs2,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from " & _
             "(select varcode,a.LOTNO,a.lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales1,0)) issbales1,sum(isnull(a.issboras1,0)) issboras1,sum(isnull(a.isskgs1,0)) isskgs1,sum(isnull(a.issbales2,0)) issbales2,sum(isnull(a.issboras2,0)) issboras2,sum(isnull(a.isskgs2,0)) isskgs2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs," & _
             "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales1,0)) - sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0))" & _
             "else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales1,0))-sum(isnull(a.issbales2,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras1,0))-sum(isnull(a.issboras2,0)) else sum(isnull(a.recboras,0)) -  (sum(isnull(a.issboras1,0))- sum(isnull(a.issboras2,0))) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0))- sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs1,0))-sum(isnull(a.isskgs2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
             "from ((" & _
             "select varcode,LOTNO,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
             "(select B.varcode,b.LOTNO,B.lotdt,case when b.bblflg ='B' then SUM(Bales) else 0 end as opbales, case when b.bblflg   IN ('R','H') then SUM(Bales) else 0 end as opboras,sum(isnull(b.Favaourablewgt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where   B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>'" & Date2 & "') and B.lotyear IN ('" & Year(yfdate) & "') and (OPFLG='Y' or b.lotdt < '" & a3 & "')  group by B.varcode,b.LOTNO,b.lotdt,b.bblflg" & _
             " Union " & _
             "select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.ISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and b.varcode=c.varcode and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & a3 & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & a3 & "'  and docdt between '" & Date1 & "' and '" & Date2 & "' group by B.varcode,b.LOTNO,b.lotdt,b.bblflg " & _
             " )a  group by varcode,LOTNO,lotdt " & _
             "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then  sum(bales) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(bales) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.Favaourablewgt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b where ISNULL(OPFLG,'N')='N' AND b.lotdt between '" & a3 & "' and '" & A4 & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & A4 & "') and  B.lotyear IN ('" & Year(yfdate) & "')  and b.lotdt <= '" & A4 & "'   AND  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'  group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
             "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.Favaourablewgt,0)) else 0 end as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B  where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & A4 & "') and B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt<'" & A4 & "' and  b.lotdt Between '" & Date1 & "' and '" & Date2 & "'  group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
             "Union All select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales1,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras1,round((sum(isnull(C.ISSKGS,0))),3) as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,0 AS TRANBALES,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e,RM_ISSUETYPE G where  E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  c.docdt BETWEEN '" & a3 & "' AND '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and G.isstype in ('J','P') and c.isstype=g.issue_code and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
             "union all select B.varcode,b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales1,0 as issboras1,0 as isskgs1,0 AS ISSBALES2,0 AS ISSBORAS2,0 AS ISSKGS2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ACTISSKGS,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e,rm_issuetype g where  E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  c.docdt between '" & a3 & "' and '" & A4 & "' and lotyear IN ('" & Year(yfdate) & "') and c.isstype=g.issue_code and g.isstype in  ('T','S') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
             "and b.varcode=c.varcode group by B.varcode,b.LOTNO,b.lotdt,b.opflg,b.bblflg " & _
             "))a  where a.lotno between '" & LtNF & "'  and '" & LtNT & "' group by varcode,a.LOTNO,a.lotdt ) xx group by varcode,lotno,lotdt order by lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
    End If
         
         
         
End If
If Rs.RecordCount = 0 Then
MsgBox "No Records Found", vbInformation, head
Screen.MousePointer = 0
Exit Sub
End If
Set rptv = New Report.ReportView
z = FreeFile
Close #z
Close
'Open "C:\lot.txt" For Output As #z

 Open KALFOLDERDATA & "\lot.TXT" For Output As #z
pg1 = 1
co = 0
Count = 0
Call LotstockRepHeader(pg1, co, str1, a1, A2)
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
            rs1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,ROUND(ISNULL(A.RATEKG,0),4) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.lotyear IN ('" & Year(yfdate) & "') AND A.lotno = '" & Rs![lotno] & "' and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", DB, adOpenStatic
            Set rs2 = New Recordset
            rs2.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,ISNULL(A.RATEKG,0) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE and lotyear IN ('" & Year(yfdate) & "') AND A.lotno = '" & Rs![lotno] & "' and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                sLname = rs1![sLname]
                RATECY = rs1![RATECY]
                PlotNo = rs1![PlotNo]
                ArrDate = rs1![LOTDT]
            Else
                sLname = " "
                RATECY = " "
                PlotNo = " "
                ArrDate = " "
          End If
           
           If rs1.RecordCount > 0 And Rs.EOF = False Then
                opval = IIf(IsNull(Rs("opkgs")), 0, Round(Rs("opkgs"), 0)) * rs1("RATEKG")
                recval = IIf(IsNull(Rs("reckgs")), 0, Round(Rs("reckgs"), 0)) * rs1("RATEKG")
                issval_unit1 = IIf(IsNull(Rs("isskgs1")), 0, Round(Rs("isskgs1"), 0)) * rs1("RATEKG")
                'without round off
                issval_unit2 = IIf(IsNull(Rs("isskgs2")), 0, Round(Rs("isskgs2"), 0)) * rs1("RATEKG")
                'calculating the issue unit value with round off
                
                If Rs("clokgs") < 0 Then
                    gclokgs = 0
                Else
                    gclokgs = Rs("clokgs")
                End If
''                cloval = gclokgs * rs1("ratekg") '' IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * RS1("RATEKG")

                cloval = Round(gclokgs, 0) * rs1("ratekg") '' IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * RS1("RATEKG")
                
                TRANSVAL = IIf(IsNull(Rs("TRANkgs")), 0, Round(Rs("TRANkgs"), 0)) * rs1("RATEKG")
                PlotNo = IIf(IsNull(rs1("Plotno")), 0, rs1("plotno"))
                Set rs3 = New Recordset
                rs3.Open "SELECT rateunit FROM rm_cont a,RM_ARRIVAL b WHERE a.CONTNO=b.contno AND a.CONTDT=b.contdt AND a.DIVCODE=b.divcode AND a.SUPCD=b.supcd AND b.lotno=" & Rs("lotno") & " AND b.lotdt='" & Format(Rs("lotdt"), "yyyy-MM-dd") & "' AND a.DIVCODE='" & Divcode & "'", DB, adOpenStatic
                If rs3.RecordCount > 0 Then
                    If rs3("rateunit") = "KILOGRAMS" Then
                        RatCy = IIf(IsNull(rs1("ratecy")), 0, rs1("ratecy")) * 355.6187
                    ElseIf rs3("rateunit") = "CANDY" Then
                        RatCy = IIf(IsNull(rs1("ratecy")), 0, rs1("ratecy"))
                    Else
                        RatCy = IIf(IsNull(rs1("ratecy")), 0, rs1("ratecy"))
                    End If
                Else
                    RatCy = IIf(IsNull(rs1("ratecy")), 0, rs1("ratecy"))
                End If
                sLname = IIf(IsNull(rs1("Slname")), "", rs1("Slname"))
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
                PlotNo = 0
                RatCy = 0
                sLname = ""
            End If
            
            If rs1.RecordCount > 0 And Rs.EOF = False Then
                opval = IIf(IsNull(Rs("opkgs")), 0, Round(Rs("opkgs"), 0)) * rs2("RATEKG")
                recval = IIf(IsNull(Rs("reckgs")), 0, Round(Rs("reckgs"), 0)) * rs2("RATEKG")
                issval_unit1 = IIf(IsNull(Rs("isskgs1")), 0, Round(Rs("isskgs1"), 0)) * rs2("RATEKG")
                issval_unit2 = IIf(IsNull(Rs("isskgs2")), 0, Round(Rs("isskgs2"), 0)) * rs2("RATEKG")
                cloval = Round(gclokgs, 0) * rs2("RATEKG")
                TRANSVAL = IIf(IsNull(Rs("TRANkgs")), 0, Round(Rs("TRANkgs"), 0)) * rs1("RATEKG")
                RTKG = rs1("RATEKG")
            Else
                opval = 0
                recval = 0
                issval_unit1 = 0
                issval_unit2 = 0
                cloval = 0
                tot15 = 0
            End If
           'calculating the total value
           
           'If Rs("opbales") <> 0 Or Rs("opbORAs") <> 0 Or Rs("recbales") <> 0 Or Rs("recbORAs") <> 0 Or Rs("issbales1") <> 0 Or Rs("issbORAS1") <> 0 Or Rs("issbales2") <> 0 Or Rs("issbORAS2") <> 0 Or Rs("clobales") <> 0 Or Rs("clobORAS") <> 0 Then
           'If Rs("clobales") + Rs("clobORAS") > 0 Then
                tot = tot + Rs("opbales") + Rs("OPBORAS")
                tot1 = tot1 + Rs("opkgs")
                tot2 = tot2 + opval
                tot3 = tot3 + Rs("recbales") + Rs("recbORAS")
                tot4 = tot4 + Rs("reckgs")
                tot5 = tot5 + recval
                tot6 = tot6 + Rs("issbales1") + Rs("issbORAS1")
                tot7 = tot7 + Rs("isskgs1")
                tot8 = tot8 + issval_unit1
                tot9 = tot9 + Rs("issbales2") + Rs("issbORAS2")
                tot10 = tot10 + Rs("isskgs2")
                tot11 = tot11 + issval_unit2
                tot12 = tot12 + Rs("clobales") + Rs("clobORAs")
                tot13 = tot13 + gclokgs
                tot14 = tot14 + cloval
                tot15 = tot15 + Rs("TRANBALES") + Rs("TRANBORAS")
                tot16 = tot16 + Rs("TRANKGS")
                tot17 = tot17 + TRANSVAL
               
                If Rs("opbales") + Rs("OPBORAS") > 0 Or Round(Rs("opkgs"), 0) > 0 Or opval > 0 Or Rs("recbales") + Rs("RECBORAS") > 0 Or Round(Rs("reckgs"), 0) > 0 Or recvalue > 0 Or Rs("issbales1") + Rs("issbORAS1") > 0 Or Round(Rs("isskgs1"), 0) > 0 Or issval_unit1 > 0 Or Rs("TRANbales") + Rs("TRANbORAS") > 0 Or Round(Rs("TRANkgs"), 0) > 0 Or tranasvalue > 0 Or Rs("clobales") + Rs("CLOBORAS") > 0 Or Round(gclokgs, 0) > 0 Or cloval > 0 Then
                    Print #z, Space(0) + Padl(Format(Rs("lotdt"), "DD/MM/YY"), 8, " ") + Space(1) + Padl(Rs("lotno"), 5, " ") + Space(1) + Padl(CStr(PlotNo), 5, " ") + Space(1) + Padr(CStr(sLname), 27, " ") + Space(1) + Padl(INF(Round(CDbl(RatCy), 0), 0), 7, " ") + Space(1) + Padl(INF(RTKG, 4), 8, " ") + Space(1) + Padr(Rs("varcode"), 7, " ") + Space(1) + Padl(INF(Rs("opbales") + Rs("OPBORAS"), 0), 5, " ") + Space(1) + Padl(INF(Round(Rs("opkgs"), 3), 3), 12, " ") + Space(1) + Padl(INF(Round(opval, 2), 2), 14, " ") + Space(1) + Padl(INF(Rs("recbales") + Rs("RECBORAS"), 0), 4, " ") + Space(1) + Padl(INF(Round(Rs("reckgs"), 3), 3), 11, " ");
                    Print #z, Space(1) + Padl(INF(Round(recval, 2), 2), 13, " ") + Space(1) + Padl(INF(Rs("issbales1") + Rs("issbORAS1"), 0), 5, " ") + Padl(INF(Round(Rs("isskgs1"), 3), 3), 12, " ") + Padl(INF(Round(issval_unit1, 2), 2), 14, " ") + Space(1);
                    Print #z, Padl(INF(Rs("TRANbales") + Rs("TRANbORAS"), 0), 4, " ") + Space(1) + Padl(INF(Round(Rs("TRANkgs"), 3), 3), 10, " ") + Space(1) + Padl(INF(Round(TRANSVAL, 2), 2), 12, " ") + Space(1); Padl(INF(Rs("clobales") + Rs("CLOBORAS"), 0), 5, " ") + Space(1) + Padl(INF(Round(gclokgs, 3), 3), 12, " ") + Space(1) + Padl(INF(Round(cloval, 3), 3), 14, " ")
                co = co + 1
               End If
            
            'End If
                If co >= PageLen Then
                  Print #z, String(233, "-")
                  Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call LotstockRepHeader(pg1, co, str1, a1, A2)
                End If
                Rs.MoveNext
                If rs1.EOF = False Then
                rs1.MoveNext
                End If
        Loop

Print #z, Space(0); String(233, "-")
Print #z, Padr("", 8, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padr("** Grand Total **", 27, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padr("", 4, " ") + Space(1) + Padl(INF(tot, 0), 8, " ") + Space(1) + Padl("                     ", 8, " ") + Space(1) + Padl(INF(Round(tot2, 2), 2), 18, " ") + Space(1) + Padl("                    ", 0, " ") + Space(1) + Padl(INF(Round(tot4, 3), 3), 15, " ") + Space(1) + Padl("                    ", 10, " ") + Space(1) + Padl(INF(Round(tot6, 0), 0), 8, " ") + Padl("                     ", 8, " ") + Padl(INF(Round(tot8, 2), 2), 18, " ") + Space(1) + Padl("                     ", 0, " ") + Space(1) + Padl(INF(Round(tot16, 3), 3), 14, " ") + Space(1) + Padl("                      ", 8, " ") + Space(1) + Padl(INF(Round(tot12, 0), 0), 9, " ") + Space(1) + Padl("                      ", 8, " ") + Space(1) + Padl(INF(Round(tot14, 3), 3), 18, " ")
Print #z, Padl("", 8, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padr("                 ", 27, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padr("", 7, " ") + Space(1) + Padl("         ", 0, " ") + Space(1) + Padl(INF(Round(tot1, 3), 3), 17, " ") + Space(1) + Padl("                    ", 10, " ") + Space(1) + Padl(INF(Round(tot3, 0), 0), 8, " ") + Space(1) + Padl("                     ", 5, " ") + Space(1) + Padl(INF(Round(tot5, 2), 2), 19, " ") + Space(1) + Padl("                    ", 0, " ") + Padl(INF(Round(tot7, 3), 3), 17, " ") + Padl("                    ", 10, " ") + Space(1) + Padl(INF(Round(tot15, 0), 0), 8, " ") + Space(1) + Padl("                      ", 4, " ") + Space(1) + Padl(INF(Round(tot17, 2), 2), 17, " ") + Space(1) + Padl("                     ", 0, " ") + Space(1) + Padl(INF(Round(tot13, 3), 3), 18, " ") + Space(1) + Padl("                     ", 14, " ")
Print #z, Space(0); String(233, "-")
Print #z, Chr(12)
 Call footermod(CInt(z), footerstr, 85)
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

Public Sub LotstockRepHeader(pg1 As Integer, co As Integer, s As String, a1 As String, A2 As String)
    Print #z, Chr(18)
    Print #z, Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
    Print #z, Chr(15)
    SR = CStr(Format((pdate), "dd/mm/yy")) + Space(0)
    Print #z, Space(0) & Chr(27) + "E" + "Lotwise Stock Transactions" + Chr(27) + "F" + Space(1) + "from" + Space(1) + Format(Trim(a1), "DD/MM/YY"); Space(1); "to"; Space(1); Format(Trim(A2), "DD/MM/YY"); CENTRE("Option: " & s, 150, " "); Space(4) + CStr(SR) + Space(4) + "Pg.:" + Padl(CStr(pg1), 3, "  ") '+ Chr(15)
    Print #z, Space(0); String(233, "-")
    Print #z, Padr("", 8, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padr("", 30, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padr("", 5, " ") + Space(0) + Padr("<--------OPENING BALANCE-------->", 33, " ") + Space(1) + Padr("<----------RECEIPT----------->", 30, " ") + Space(2) + Padr("<-----------ISSUED----------->", 30, " ") + Space(1) + Padr("<---------TRANSFER--------->", 29, " ") + Space(1) + Padr("<------------CLOSING----------->", 32, " ")
    Print #z, Padr("RECEIVED", 8, " ") + Space(1) + Padl("MILL", 5, " ") + Space(1) + Padl("SUPP.", 5, " ") + Space(1) + Padr("SUPPLIER NAME", 27, " ") + Space(1) + Padl("CANDY", 7, " ") + Space(1) + Padl("RATE", 8, " ") + Space(1) + Padr("VAR", 7, " ") + Space(1) + Padl("QTY", 5, " ") + Space(1) + Padl("KGS", 12, " ") + Space(1) + Padl("VALUE", 14, " ") + Space(1) + Padl("QTY", 4, " ") + Space(1) + Padl("KGS", 11, " ") + Space(1) + Padl("VALUE", 13, " ") + Space(1) + Padl("QTY", 5, " ") + Padl("KGS", 12, " ") + Padl("VALUE", 14, " ") + Space(1) + Padl("QTY", 4, " ") + Space(1) + Padl("KGS", 10, " ") + Space(1) + Padl("VALUE", 12, " ") + Space(1) + Padl("QTY", 5, " ") + Space(1) + Padl("KGS", 12, " ") + Space(1) + Padl("VALUE", 12, " ")
    Print #z, Padr("DATE", 8, " ") + Space(1) + Padl("LOT", 5, " ") + Space(1) + Padl("LOT", 5, " ") + Space(1) + Padr("", 27, " ") + Space(1) + Padl("RATE", 7, " ") + Space(1) + Padl("/KG", 8, " ") + Space(1) + Padr("CODE", 7, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 12, " ") + Space(1) + Padl("", 14, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl("", 11, " ") + Space(1) + Padl("", 13, " ") + Space(1) + Padl("", 5, " ") + Padl("", 12, " ") + Padl("", 14, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 12, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 12, " ") + Space(1) + Padl("", 12, " ")
    Print #z, Padr("", 8, " ") + Space(1) + Padl("NO.", 5, " ") + Space(1) + Padl("NO.", 5, " ") + Space(1) + Padr("", 27, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padr("", 7, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 12, " ") + Space(1) + Padl("", 14, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl("", 11, " ") + Space(1) + Padl("", 13, " ") + Space(1) + Padl("", 5, " ") + Padl("", 12, " ") + Padl("", 14, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 12, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 12, " ") + Space(1) + Padl("", 12, " ")
    Print #z, Space(0); String(233, "-")
    co = co + 10
End Sub

Public Sub LotstockRepHeader1(pg1 As Integer, co As Integer, s As String, a1 As String, U As Integer)
Print #z, Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
Print #z, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #z, Space(2) & Chr(27) + "E" + "Lotwise Stock Transactions" + Chr(27) + "F" + " As On " + Format(Trim(a1), "DD/MM/YYYY"); Space(152); "Dt:" + CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ") + Chr(15)
Print #z, Space(2) + Chr(218) + String(10, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(36, Chr(196)) + Chr(194) + String(10, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(5, Chr(196)) + String(9, Chr(196)) + String(13, Chr(196)) + Chr(194) + String(10, Chr(196)) + String(7, Chr(196)) + String(10, Chr(196)) + Chr(194) + String(10, Chr(196)) + String(18, Chr(196)) + String(27, Chr(196)) + Chr(194) + String(5, Chr(196)) + String(9, Chr(196)) + String(13, Chr(196)) + Chr(191)
Print #z, Space(2) + Chr(179) + Padr("RECEIVED", 10, " ") + Chr(179) + Padl("MILL", 5, " ") + Chr(179) + Padl("PARTY", 5, " ") + Chr(179) + Padr("SUPPLIER NAME", 36, " ") + Chr(179) + CENTRE("CANDY", 10, " ") + Space(1) + Chr(179) + Padl("VAR", 5, " ") + Chr(179) + CENTRE("OPENING BALANCE", 28, " ") + Space(0) + Chr(179) + CENTRE("RECEIPT", 26, " ") + Chr(179) + CENTRE("ISSUED", 54, " ") + Space(1) + Chr(179) + CENTRE("CLOSING", 28, " ") + Space(0) + Chr(179)
Print #z, Space(2) + Chr(179) + CENTRE("DATE", 10, " ") + Chr(179) + Padl("LOT", 5, " ") + Chr(179) + Padl("LOT", 5, " ") + Chr(179) + String(36, " ") + Chr(179) + CENTRE("RATE", 10, " ") + Chr(179) + Padl("CODE", 5, " ") + Chr(179) + String(5, " ") + String(9, " ") + String(13, "  ") + Chr(179) + String(27, "  ") + Chr(195) + String(9, Chr(196)) + String(5, Chr(196)) + String(13, Chr(196)) + Chr(194) + String(7, Chr(196)) + String(5, Chr(196)) + String(15, Chr(196)) + Chr(180) + String(27, " ") + Chr(179)
Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, " ") + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, " ") + String(8, " ") + String(14, " ") + Chr(179) + String(5, " ") + String(8, " ") + String(14, " ") + Chr(179) + CENTRE("UNIT 1", 20, " ") + Space(7) + Chr(179) + CENTRE("UNIT 2", 20, " ") + Space(7) + Chr(179) + String(27, " ") + Chr(179)
Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + String(5, "  ") + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(195) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(13, Chr(196)) + Chr(180)
Print #z, Space(2) + Chr(179) + String(10, " ") + Chr(179) + String("NO", 5) + Chr(179) + String("NO", 5) + Chr(179) + String(36, " ") + Chr(179) + String(10, " ") + Chr(179) + String(5, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 12, " ") + Chr(179) + Padl("BALES", 5, " ") + Chr(179) + Padl("KGS", 8, " ") + Chr(179) + Padl("VALUE", 13, " ") + Chr(179)
Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
co = co + 10
End Sub

Public Sub LotstockledgerReport1(str1 As String, a1 As String, LtNF As Integer, LtNT As Integer, U As Integer)
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Date1 = Format(yfdate, "yyyy-mm-dd")
Date2 = Format(yldate, "yyyy-mm-dd")
   If str1 = "C" Then
    Set Rs = New Recordset
    Rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) end as clokgs " & _
        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs   from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "'  AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.ACTISSKGS,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyearIN ('" & Year(yfdate) & "','" & Year(yldate) & "')and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear IN ('" & Year(yfdate) & "') AND b.catcd = '" & Trim(str1) & "' and LOTYEAR IN ('" & Year(yfdate) & "')  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(C.ACTISKGS,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b,rm_issb c,rm_bale e,RM_ISSUETYPE G  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear IN ('" & Year(yfdate) & "')  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and C.ISSTYPE=G.ISSUE_CODE AND G.isstype='P' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(C.ACTISSKGS,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e " & _
        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Trim(str1) & "' and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear IN ('" & Year(yfdate) & "') and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ACTISSKGS,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & str1 & "' and  docdt between '" & Date1 & "' and '" & Date2 & "' and lotyear IN ('" & Year(yfdate) & "') and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt ))a  group by a.varcode,lotno,lotdt  ORDER BY LOTNO", DB, adOpenStatic
       
Else
     If str1 = "A" Then
     Set Rs = New Recordset
       Rs.Open " select a.varcode,lotno,lotdt,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opborahs,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recborahs,sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.issbales_unit1,0)) issbales_unit1,sum(isnull(a.issboras_unit1,0)) issborahs_unit1,sum(isnull(a.isskgs_unit1,0)) isskgs_unit1," & _
        " sum(isnull(a.issbales_unit2,0)) issbales_unit2,sum(isnull(a.issboras_unit2,0)) issborahs_unit2,sum(isnull(a.isskgs_unit2,0)) isskgs_unit2,sum(isnull(a.tranbales,0)) tranbales,sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales_unit1,0))- sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) else sum(isnull(a.recbales,0)) - sum(isnull(a.issbales_unit1,0))- " & _
        " sum(isnull(a.issbales_unit2,0))- sum(isnull(a.tranbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0))  else sum(isnull(a.recboras,0)) - sum(isnull(a.issboras_unit1,0))- sum(isnull(a.issboras_unit2,0))- sum(isnull(a.tranboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 " & _
        " then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0)) - sum(isnull(a.isskgs_unit1,0))- sum(isnull(a.isskgs_unit2,0))- sum(isnull(a.trankgs,0))  end as clokgs " & _
        " From ((select varcode,lotno,lotdt, sum(opbales) opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from " & _
        " (select b.varcode,lotno,lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear IN ('" & Year(yfdate) & "') AND OPFLG='Y' and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' AND BALES >0   group by b.varcode,b.bblflg,lotno,lotdt  Union " & _
        " select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(C.ACTISSKGS,0))),3) as isskgs,0 as tranbales,0 as tranboras,0 as trankgs  from rm_lot b,rm_issb c,rm_bale e where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(a1, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'AND BALES >0 " & _
        " group by b.varcode,b.lotno,b.lotdt,b.bblflg) a  group by varcode,lotno,lotdt Union All select b.varcode,lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales_unit1,0 as issboras_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issboras_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs" & _
        " from rm_lot b  where OPFLG='N' AND  (B.rejflg='N' or B.rejdt>'" & Format(a1, "yyyy-mm-dd") & "') and B.lotyear IN ('" & Year(yfdate) & "') AND LOTYEAR IN ('" & Year(yfdate) & "')  and b.lotno between  '" & LtNF & "'  and '" & LtNT & "'and b.lotdt <= '" & Format(a1, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg,lotno,lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit2,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras_unit2,round((sum(isnull(C.ACTISSKGS,0))),3) as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs " & _
        " from rm_lot b,rm_issb c,rm_bale e  where b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and B.OPFLG='Y' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear IN ('" & Year(yfdate) & "','" & Year(yfdate) & "')  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='Q' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt Union All select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales_unit1,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras_unit1,round((sum(isnull(C.ACTISSKGS,0))),3) as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e " & _
        " where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear IN ('" & Year(yfdate) & "','" & Year(yfdate) & "') and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='P' " & _
        " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt union all " & _
        "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales_unit1,0 as issborahs_unit1,0 as isskgs_unit1,0 as issbales_unit2,0 as issborahs_unit2,0 as isskgs_unit2,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as transbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras,round((sum(isnull(C.ACTISSKGS,0))),3) as trankgs  from rm_lot b,rm_issb c,rm_bale e  where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  docdt between '" & Date1 & "' and '" & Date2 & "' and lotyear IN ('" & Year(yfdate) & "','" & Year(yfdate) & "')  and b.lotdt=e.lotdt and c.lottype=e.lottype and b.lotno between  '" & LtNF & "'  and '" & LtNT & "' and docdt <= '" & Format(a1, "yyyy-mm-dd") & "' and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and isstype='T'  group by b.varcode,b.opflg,b.bblflg,b.lotno,b.lotdt))a " & _
        " group by a.varcode,lotno,lotdt  ORDER BY LOTNO", DB, adOlpenStatic
     
End If
End If
Set rptv = New Report.ReportView
z = FreeFile
Close #z
Close
'Open "C:\lot.txt" For Output As #z
Open KALFOLDERDATA & "\lot.TXT" For Output As #z
pg1 = 1
co = 0
Count = 0

Call LotstockRepHeader(pg1, co, str1, a1, CStr(U))
    
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
            rs1.Open " SELECT LOTDT,PLOTNO,RATECY,B.SLNAME,A.RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.LOTYEAR IN ('" & Year(yfdate) & "','" & Year(yfdate) & "') AND A.lotno = '" & Rs![lotno] & "' and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", DB, adOpenStatic
         
            
            If rs1.RecordCount > 0 Then
            sLname = rs1![sLname]
            RATECY = rs1![RATECY]
            PlotNo = rs1![PlotNo]
            ArrDate = rs1![LOTDT]
            Else
            sLname = " "
            RATECY = " "
            PlotNo = " "
            ArrDate = " "
            
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
           co = co + 1
           If co >= 59 Then
           Print #z, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(36, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(12, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(13, Chr(196)) + Chr(225)
           co = co + 1
           Else
           Print #z, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(36, Chr(196)) + Chr(197) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(13, Chr(196)) + Chr(180)
           co = co + 1
            End If
                
                If co >= PageLen Then
                  Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call LotstockRepHeader(pg1, co, str1, a1, CStr(U))
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


