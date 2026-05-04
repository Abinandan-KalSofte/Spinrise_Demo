Attribute VB_Name = "StockAbsStatement"
Dim opf As New Recordset
Dim opf1 As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9, op10 As Double
Dim rsP As New Recordset
Dim Namers As Recordset
Dim VarName As String
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Dim RSV As New Recordset
Dim VTOT As Double, vtot1 As Double, vtot2 As Double, vtot3 As Double, VTOT4 As Double
Dim VTOT5 As Double, VTOT6 As Double, VTOT7 As Double, VTOT8 As Double, VTOT9 As Double
Dim VTOT10 As Double, VTOT11 As Double, VTOT12 As Double, VTOT13 As Double, VTOT14 As Double, VTOT15 As Double


Public Sub StockAbsStatement1(F_Date As String, T_Date As String, catcd As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
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

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
SR = catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
        Set RPTV = New Report.ReportView
        a = FreeFile
        Close #a
       ' Open "C:\sv.TXT" For Output As #a
       Open KALFOLDERDATA & "\sv.TXT" For Output As #a

        pg1 = 1
        Co = 0
        
        Print #a, Chr(15)
        Co = Co + 1
        Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)
Set rs1 = New Recordset
If Trim(SR) <> "A" Then
            rs1.Open "select a.varcode,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.varcode,case when b.bblflg = 'B' then count(*) else 0 end as opbales, case when b.bblflg    IN ('R','H') then count(*) else 0 end as opboras,sum(isnull(e.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.divcode=e.divcode and (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            "b.catcd = '" & SR & "'  and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0 group by b.varcode,b.bblflg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "')and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.varcode,b.bblflg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*) else 0 end as recbales, " & _
            "case when b.bblflg    IN ('R','H') then count(*) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(e.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b ,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.divcode=e.divcode and b.catcd=e.catcd and  " & _
            " (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg    IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "')  and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.opflg,b.bblflg))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic

Else
            rs1.Open "select a.varcode,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.varcode,case when b.bblflg = 'B' then count(*) else 0 end as opbales, case when b.bblflg   IN ('R','H') then count(*) else 0 end as opboras,sum(isnull(e.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.divcode=e.divcode and (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and (B.rejflg='N' or B.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            " b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0 group by b.varcode,b.bblflg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg    IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "')and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.varcode,b.bblflg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*) else 0 end as recbales, " & _
            "case when b.bblflg    IN ('R','H') then count(*) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(e.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b ,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.divcode=e.divcode and b.catcd=e.catcd and  " & _
            " (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg    IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "')  and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.opflg,b.bblflg))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic
End If



If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Close #a
    Exit Sub
End If

Set RSV = New Recordset
If SR = "A" Then

RSV.Open " select sum(x.opkgs) OpenKgs,sum(x.opbales) OpenBales,sum(x.opboras) opboras,sum(x.issbales) IssBales," & _
         " sum(x.isskgs) IssKgs,sum(recboras) as recboras,sum(x.clobales) ClosBales,sum(x.clokgs) CloKgs,sum(x.reckgs) RecKgs,sum(x.recbales) RecBales,sum(x.recvalue) RecValue ," & _
         " sum(x.opvalue) OpenVal,sum(cloboras) as cloboras,sum(x.issvalue) IsValue,sum(x.Closevalue) CloVal From (select sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs, " & _
         "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs, " & _
         "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs, " & _
         "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
         "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
         "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
         " ,a.lotno, sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
         " ((select sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,lotno,sum(recvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
         "select case when b.bblflg = 'B' then count(*) else 0 end as opbales, case when b.bblflg    IN ('R','H') then count(*) else 0 end as opboras,sum(isnull(e.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,round(sum(isnull(e.netwt,0)),3) * ISNULL(B.RATEKG,0) AS RECVALUE,0 as issvalue from rm_lot b,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.divcode=e.divcode and b.catcd=e.catcd and (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
         " (opflg='Y' or b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "') AND BALES >0  group by b.bblflg ,b.lotno,b.ratekg " & _
         "union select 0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg    IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round(sum(isnull(e.netwt,0)),3) * isnull(b.ratekg,0)  as issvalue from rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
         "AND BALES >0 group by b.bblflg,b.lotno,b.ratekg) a  group by lotno" & _
         " Union All " & _
         "select 0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*) else 0 end as recbales, " & _
         "case when b.bblflg    IN ('R','H') then count(*) else 0 end as recboras, " & _
         "case when 'N' = 'N' then sum(isnull(e.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,case when 'N' = 'N' then sum(isnull(e.netwt,0)) else 0 end * isnull(b.ratekg,0) as recvalue,0 as issvalue " & _
         "from rm_lot b,rm_bale e where  opflg='N' and lotyear= '" & Year(yfdate) & "' and b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.divcode=e.divcode and " & _
         " (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and  (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
         " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
         " group by b.opflg,b.bblflg,b.lotno,b.ratekg " & _
         " Union All " & _
         "select 0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg    IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(isnull(e.netwt,0)) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round(sum(isnull(e.netwt,0)),3) * isnull(b.ratekg,0)  as issvalue from " & _
         "rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.opflg,b.bblflg,b.lotno,b.ratekg))a group by a.lotno )x ", cnn, adOpenStatic, adLockBatchOptimistic
Else
RSV.Open " select sum(x.opkgs) OpenKgs,sum(x.opbales) OpenBales,sum(x.opboras) opboras,sum(x.issbales) IssBales," & _
         " sum(x.isskgs) IssKgs,sum(recboras) as recboras,sum(x.clobales) ClosBales,sum(x.clokgs) CloKgs,sum(x.reckgs) RecKgs,sum(x.recbales) RecBales,sum(x.recvalue) RecValue ," & _
         " sum(x.opvalue) OpenVal,sum(cloboras) as cloboras,sum(x.issvalue) IsValue,sum(x.Closevalue) CloVal From (select sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs, " & _
         "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs, " & _
         "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs, " & _
         "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
         "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
         "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
         " ,a.lotno, sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
         " ((select sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,lotno,sum(recvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
         "select case when b.bblflg = 'B' then count(*) else 0 end as opbales, case when b.bblflg    IN ('R','H') then count(*) else 0 end as opboras,sum(isnull(e.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,round(sum(isnull(e.netwt,0)),3) * ISNULL(B.RATEKG,0) AS RECVALUE,0 as issvalue from rm_lot b,rm_bale e where b.catcd='" & SR & "' and b.lotno=e.lotno and b.lotdt=e.lotdt and b.divcode=e.divcode and b.catcd=e.catcd and (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
         "(opflg='Y' or b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "') AND BALES >0  group by b.bblflg ,b.lotno,b.ratekg " & _
         "union select 0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round(sum(isnull(e.netwt,0)),3) * isnull(b.ratekg,0)  as issvalue from rm_lot b,rm_issb c,rm_bale e where  b.catcd='" & SR & "' and (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
         "AND BALES >0 group by b.bblflg,b.lotno,b.ratekg) a  group by lotno" & _
         " Union All " & _
         "select 0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*) else 0 end as recbales, " & _
         "case when b.bblflg    IN ('R','H') then count(*) else 0 end as recboras, " & _
         "case when 'N' = 'N' then sum(isnull(e.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,case when 'N' = 'N' then sum(isnull(e.netwt,0)) else 0 end * isnull(b.ratekg,0) as recvalue,0 as issvalue " & _
         "from rm_lot b,rm_bale e where     opflg='N' and lotyear= '" & Year(yfdate) & "' and b.catcd='" & SR & "' and b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.divcode=e.divcode and " & _
         " (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and  (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
         " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
         " group by b.opflg,b.bblflg,b.lotno,b.ratekg " & _
         " Union All " & _
         "select 0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg    IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(isnull(e.netwt,0)) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round(sum(isnull(e.netwt,0)),3) * isnull(b.ratekg,0)  as issvalue from " & _
         "rm_lot b,rm_issb c,rm_bale e where  b.catcd='" & SR & "' and (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.opflg,b.bblflg,b.lotno,b.ratekg))a group by a.lotno )x ", cnn, adOpenStatic, adLockBatchOptimistic


End If
         Set RsUnit = New Recordset
         RsUnit.Open "select distinct isstype from rm_issb where docdt between '" & Format(F_Date, "YYYY/MM/DD") & "' and '" & Format(T_Date, "YYYY/MM/DD") & "' order by isstype", cnn
         If RsUnit.EOF = False Then
            ISSPB = 0
            ISSPR = 0
            ISSPKGS = 0
            ISSPVAL = 0
            ISSQB = 0
            ISSQR = 0
            ISSQKGS = 0
            ISSQVAL = 0
            ISSTB = 0
            ISSTR = 0
            ISSTKGS = 0
            ISSTVAL = 0

             RsUnit.MoveFirst
             Do While Not RsUnit.EOF
                Set rsIss = New Recordset
                rsIss.Open " select sum(x.issbales) IssBales," & _
                " sum(x.isskgs) IssKgs,sum(issboras) as issboras," & _
                " sum(x.issvalue) IsValue,sum(x.Closevalue) CloVal From (select sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs, " & _
                "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs, " & _
                "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs, " & _
                "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                " ,a.lotno, sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,lotno,sum(recvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select case when b.bblflg = 'B' then count(*) else 0 end as opbales, case when b.bblflg    IN ('R','H') then count(*) else 0 end as opboras,sum(isnull(e.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,round(sum(isnull(e.netwt,0)),3) *isnull(b.ratekg,0) as recvalue,0 as issvalue from rm_lot b,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.divcode=e.divcode and b.catcd=e.catcd and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                " (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "')  and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  group by b.bblflg ,b.lotno,b.ratekg " & _
                "union select 0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg    IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*isnull(b.ratekg,0) as issvalue from rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and c.isstype='" & RsUnit("Isstype") & "' and  (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                " group by b.bblflg,b.lotno,b.ratekg) a  group by lotno" & _
                " Union All " & _
                "select 0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*) else 0 end as recbales, " & _
                "case when b.bblflg    IN ('R','H') then count(*) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(e.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,(case when 'N' = 'N' then sum(isnull(e.netwt,0)) else 0 end )*round(isnull(b.ratekg,0),2) as recvalue,0 as issvalue " & _
                "from rm_lot b,rm_bale e where   opflg='N' and lotyear= '" & Year(yfdate) & "' and b.lotno=e.lotno and b.lotdt=e.lotdt and b.divcode=e.divcode and b.catcd=e.catcd and  " & _
                "  (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                " group by b.opflg,b.bblflg,b.lotno,b.ratekg " & _
                " Union All " & _
                "select 0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*isnull(b.ratekg,0)  as issvalue from " & _
                "rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  c.isstype='" & RsUnit("Isstype") & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.opflg,b.bblflg,b.lotno,b.ratekg))a group by a.lotno)x ", cnn, adOpenStatic, adLockBatchOptimistic

                If RsUnit("Isstype") = "P" Then
                    'l = rs1("lotno")
                    ISSPB = ISSPB + rsIss("IssBales")
                    ISSPR = ISSPR + rsIss("IssBoras")
                    ISSPKGS = ISSPKGS + rsIss("IssKgs")
                    ISSPVAL = ISSPVAL + rsIss("IsValue")
                ElseIf RsUnit("Isstype") = "Q" Then
                    ISSQB = ISSQB + rsIss("IssBales")
                    ISSQR = ISSQR + rsIss("IssBoras")
                    ISSQKGS = ISSQKGS + rsIss("IssKgs")
                    ISSQVAL = ISSQVAL + rsIss("IsValue")
                ElseIf RsUnit("Isstype") = "T" Then
                    ISSTB = ISSTB + rsIss("IssBales")
                    ISSTR = ISSTR + rsIss("IssBoras")
                    ISSTKGS = ISSTKGS + rsIss("IssKgs")
                    ISSTVAL = ISSTVAL + rsIss("IsValue")
                End If
                RsUnit.MoveNext
            Loop
         End If
         OpenAvg = IIf(IsNull(RSV("OpenVal")), 0, RSV("OpenVal")) / IIf(RSV("OpenKgs") = 0, 1, RSV("OpenKgs"))
         RecAvg = IIf(IsNull(RSV("RecValue")), 0, RSV("RecValue")) / IIf(RSV("RecKgs") = 0, 1, RSV("RecKgs"))
         CloAvg = IIf(IsNull(RSV("CloVal")), 0, RSV("CloVal")) / IIf(RSV("CloKgs") = 0, 1, RSV("CloKgs"))

         IssPAvg = ISSPVAL / IIf(ISSPKGS = 0, 1, ISSPKGS)
         IssQAvg = ISSQVAL / IIf(ISSQKGS = 0, 1, ISSQKGS)
         ISSBAL = ISSPB + ISSQB
         issbor = ISSPR + ISSQR
         issKgs = ISSPKGS + ISSQKGS
         IssVal = Round(ISSPVAL, 0) + Round(ISSQVAL, 0)
         IssAvg = (IssPAvg + IssQAvg) / 2
         IssTAvg = ISSTVAL / IIf(ISSTKGS = 0, 1, ISSTKGS)
         totbal = RSV("OpenBales") + RSV("RecBales")
         totbor = RSV("OpBoras") + RSV("RecBoras")
         totkgs = Round(RSV("OpenKgs"), 0) + Round(RSV("RecKgs"), 0)
         totVal = RSV("OpenVal") + RSV("RecValue")
         totAvg = totVal / IIf(totkgs = 0, 1, totkgs)
        
         
        Print #a, Space(3) & Padr("OPENING", 15, " ") & Space(1) & Padl(INF(Round(RSV("OpenBales"), 0), 0), 10, " ") & Padl(INF(Round(RSV("opboras"), 0), 0), 10, " ") & Space(1) & Padl(INF(Round(RSV("OpenKgs"), 0), 0), 12, " ") & Space(1) & Space(1) & Padl(INF(Round(RSV("Openval"), 0), 0), 18, " ") & Space(1) & Padl(Round(OpenAvg, 2), 15, " ") + Space(1)
        Print #a, Space(3) + String(85, Chr(196))
        Print #a, Space(3) + Space(17) + Space(1) + Space(10) + Space(1) + Space(1) + Space(12) + Space(1) + Space(1) + Space(18) + Space(1) + Space(15) + Space(1)
        Print #a, Space(3) & Padr("RECEIPT", 15, " ") & Space(1) & Padl(INF(Round(RSV("RecBales"), 0), 0), 10, " ") & Padl(INF(Round(RSV("RecBoras"), 0), 0), 10, " ") & Space(1) & Padl(INF(Round(RSV("RecKgs"), 0), 0), 12, " ") & Space(1) & Space(1) & Padl(INF(Round(RSV("Recvalue"), 0), 0), 18, " ") & Space(1) & Padl(Round(RecAvg, 2), 15, " ") + Space(1)
        Print #a, Space(3) + String(85, Chr(196))
        Print #a, Space(3) + Space(17) + Space(1) + Space(10) + Space(1) + Space(1) + Space(12) + Space(1) + Space(1) + Space(15) + Space(1) + Space(15) + Space(1)
        Print #a, Space(3) & Padr("TOTAL", 15, " ") & Space(1) & Padl(INF(totbal, 0), 10, " ") & Padl(INF(totbor, 0), 10, " ") & Space(1) & Padl(INF(Round(totkgs, 0), 0), 12, " ") & Space(1) & Space(1) & Padl(INF(Round(totVal, 0), 0), 18, " ") & Space(1) & Padl(Round(totAvg, 2), 15, " ") + Space(1)
        Print #a, Space(3) + String(85, Chr(196))
        Print #a, Space(3) + Space(17) + Space(1) + Space(10) + Space(1) + Space(1) + Space(12) + Space(1) + Space(1) + Space(15) + Space(1) + Space(15) + Space(1)
        Print #a, Space(3) & Padr("ISSUED UNIT 1", 15, " ") & Space(1) & Padl(INF(ISSPB, 0), 10, " ") & Padl(INF(ISSPR, 0), 10, " ") & Space(1) & Padl(INF(Round(ISSPKGS, 0), 0), 12, " ") & Space(1) & Space(1) & Padl(INF(Round(ISSPVAL, 0), 0), 18, " ") & Space(1) & Padl(Round(IssPAvg, 2), 15, " ") + Space(1)
        Print #a, Space(3) & Padr("ISSUED UNIT 2", 15, " ") & Space(1) & Padl(INF(ISSQB, 0), 10, " ") & Padl(INF(ISSQR, 0), 10, " ") & Space(1) & Padl(INF(Round(ISSQKGS, 0), 0), 12, " ") & Space(1) & Space(1) & Padl(INF(Round(ISSQVAL, 0), 0), 18, " ") & Space(1) & Padl(Round(IssQAvg, 2), 15, " ") + Space(1)
        Print #a, Space(3) + String(85, Chr(196))
        Print #a, Space(3) & Padr("ISSUED TOTAL", 15, " ") & Space(1) & Padl(INF(ISSBAL, 0), 10, " ") & Padl(INF(issbor, 0), 10, " ") & Space(1) & Padl(INF(Round(issKgs, 0), 0), 12, " ") & Space(1) & Space(1) & Padl(INF(Round(IssVal, 0), 0), 18, " ") & Space(1) & Padl(Round(IssAvg, 2), 15, " ") + Space(1)
        Print #a, Space(3) + String(85, Chr(196))
        Print #a, Space(3) + Space(17) + Space(1) + Space(10) + Space(1) + Space(1) + Space(12) + Space(1) + Space(1) + Space(15) + Space(1) + Space(15) + Space(1)
        Print #a, Space(3) & Padr("RETURN", 15, " ") + Space(1) + Space(10) + Space(1) + Space(1) + Space(12) + Space(1) + Space(1) + Space(15) + Space(1) + Space(15) + Space(1)
        Print #a, Space(3) + String(85, Chr(196))
        Print #a, Space(3) + Space(17) + Space(1) + Space(10) + Space(1) + Space(1) + Space(12) + Space(1) + Space(1) + Space(15) + Space(1) + Space(15) + Space(1)
        Print #a, Space(3) & Padr("TRANSFER", 15, " ") & Space(1) & Padl(INF(ISSTB, 0), 10, " ") & Padl(INF(ISSTR, 0), 10, " ") & Space(1) & Padl(INF(Round(ISSTKGS, 0), 0), 12, " ") & Space(1) & Space(1) & Padl(INF(Round(ISSTVAL, 0), 0), 18, " ") & Space(1) & Padl(Round(IssTAvg, 2), 15, " ") + Space(1)
        Print #a, Space(3) + Space(13) + Space(1) + Space(10) + Space(1) + Space(1) + Space(12) + Space(1) + Space(1) + Space(15) + Space(1) + Space(15) + Space(1)
        Print #a, Space(3) + String(85, Chr(196))
        Print #a, Space(3) & Padr("CLOSING", 15, " ") & Space(1) & Padl(INF(RSV("ClosBales"), 0), 10, " ") & Padl(INF(RSV("cloboras"), 0), 10, " ") & Space(1) & Padl(INF(Round(RSV("CloKgs"), 0), 0), 12, " ") & Space(1) & Space(1) & Padl(INF(Round(RSV("Cloval"), 0), 0), 18, " ") & Space(1) & Padl(Round(CloAvg, 2), 15, " ") + Space(1)
        Print #a, Space(3) + Space(17) + Space(1) + Space(10) + Space(1) + Space(1) + Space(12) + Space(1) + Space(1) + Space(15) + Space(1) + Space(15) + Space(1)
        Print #a, Space(3) + String(85, Chr(196))
        Print #a, Chr(12)
        Print #a, Chr(18)
        Close #a
        a = FreeFile
'        Open "c:\sv.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type sv.txt>prn"
'        Close #a
'        RPTV.txtfile = "c:\sv.txt"
'        RPTV.Batfile = "c:\sv.bat"
Call KALBATPROCESS("sv")
End Sub
                
                
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String)
          Print #a, Chr(18)
          Print #a, Space(3) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          'Print #A, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(8) & Padr(w, 40, " ") & Space(5) + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          'Print #A, Space(3) + Chr(27) + "E" + "Stock Abstract Report" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(5) + sr + "Pg.No :" + Space(1) + CStr(pg1)
          Print #a, Space(3) + "Stock Abstract Report" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy") & Space(12) + Format(SR, "dd/mm/yy") + Space(5) + "Pg.:" + Space(1) + Padl(CStr(pg1), 3, " ")
          Print #a, Space(3) + String(85, Chr(196))
          Print #a, Space(3) + Padr("Index", 15, " ") + Space(6) + Padr("Bales", 9, " ") + Padr("Borahs", 7, " ") + Space(0) + Padl("Kgs", 12, " ") + Space(1) + Space(1) + Padl("Value", 18, " ") + Space(1) + Padl("Avg. Rate/Kg.", 15, " ") + Space(1)
          Print #a, Space(3) + String(85, Chr(196))
          Co = Co + 9
End Sub
