Attribute VB_Name = "DailyMixingRpt"
Dim rs As Recordset
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim DIVNAME As String
Public Sub DailyMixingReport(F_Date As String, MIXNO As String)
Dim rs1 As Recordset
Dim rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim pagelen As Integer
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14 As Double
Dim gtot1, gtot10, gtot2, gtot14, gtot3, gtot12, gtot13 As Double
Dim s As String
Dim mix As String
Dim cnn As Connection
Set cnn = New Connection
Dim T_Date As String

T_Date = F_Date
pagelen = 60
Set rs1 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs4 = New Recordset
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0
tot12 = 0: tot13 = 0: tot14 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot10 = 0: gtot12 = 0: gtot13 = 0: gtot14 = 0

Set rs = New Recordset
rs.Open "select Isnull(Ordno,0)as Mixlotno,isnull(cntcd,'')as Cntcd From rm_issh A,RM_ISSUETYPE B where DOCNO='" & MIXNO & "' AND docdt='" & Format(F_Date, "YYYY-MM-DD") & "' AND B.ISSTYPE='P' AND a.ISSTYPE=b.ISSUE_CODE AND DOCNO IN " & _
        " (SELECT DISTINCT DOCNO FROM RM_ISSB WHERE CATCD IN ('P','V') AND DOCDT='" & Format(F_Date, "YYYY-MM-DD") & "')", cnn, adOpenStatic

If rs.RecordCount = 0 Then
    MsgBox "NO Mixing Detail Found For This Selection", vbInformation, head
    Exit Sub
End If
Call header

'Print #a, Space(5) + "Lot No. : "  &  & "Count : " &  &

Set rsg = New Recordset
rsg.Open "select cntname from rm_count where cntcd='" & Trim(rs("cntcd")) & "'", db, adOpenStatic

Print #a, Space(5) + String(80, "-")


rs.MoveFirst
Set rs3 = New Recordset
rs3.Open "select isnull(oilcode,'') Oilcode,isnull(oilwt,0) as Oilwt,isnull(oilcode1,'') as Oilcode1,isnull(oilwt1,0) as Oilwt1,isnull(tint,0) as Tint,isnull(wtrwt,0) as Wtrwt from rm_issh where docno=" & rs("docno") & " and docdt='" & Format(rs("docdt"), "YYYY-MM-DD") & "'", cnn, adOpenStatic


Set rs4 = New Recordset
rs4.Open "select sum(netwt) from rm_issb where docno=" & rs("docno") & " and docdt='" & Format(rs("docdt"), "YYYY-MM-DD") & "'", cnn, adOpenStatic

If rs3.RecordCount > 0 Then
''Please Print Mixing Oil Details
    

End If


SR = "('P','V')"
varcode = ""
    
    Set rs2 = New Recordset
    rs2.Open "select distinct varcode from rm_issb where docno=" & rs("docno") & " and docdt='" & Format(rs("docdt"), "YYYY-MM-DD") & "'", cnn, adOpenStatic
    While Not rs2.EOF
        If varcode = "" Then
            varcode = "('" + rs2("Varcode") + "'"
        Else
            varcode = varcode + ",'" + rs2("varcode") + "'"
        End If
        rs2.MoveNext
    Wend
varcode = varcode + ")"

''This Query For Viscose AND Polyster Variety Stock statement which is issued BY THIS Mixing Number



Set rs4 = New Recordset
rs4.Open "select varcode,sum(netwt) from rm_issb where docno=" & rs("docno") & " and docdt='" & Format(rs("docdt"), "YYYY-MM-DD") & "' Group by varcode ", cnn, adOpenStatic


Set rs1 = New Recordset
rs1.Open "select a.CATCD,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select CATCD, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.CATCD,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd in " & SR & "  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0 AND B.VARCODE IN " & varcode & "  and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.CATCD,b.bblflg ,b.ratekg " & _
            "union select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  AND B.VARCODE IN " & varcode & " and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd in " & SR & " and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.CATCD,b.bblflg,b.ratekg) a  group by CATCD" & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd in " & SR & " AND B.VARCODE IN " & varcode & " and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
            " group by b.CATCD,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.CATCD,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd in " & SR & " AND B.VARCODE IN " & varcode & " and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  group by b.CATCD,b.opflg,b.bblflg,b.ratekg))a group by a.CATCD", cnn, adOpenStatic, adLockBatchOptimistic


''Please Print Stock Details Here






If rs4.RecordCount > 0 Then
''please Print Variety wise Issue Quantity Here


End If

End Sub

Public Sub header()
    Print #a,
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(5) + "Daily Mixing Report as on " & Date1 & Space(9) + Format(pdate, "dd/mm/yy") + Space(3) + "Pg.:" + Padl(CStr(pg), 3, " ")
    Print #a, Space(5) + String(80, "-")

End Sub
