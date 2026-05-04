Attribute VB_Name = "IssueRegisterMixNo"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim divname As String
Dim rp As New rmireports



Public Sub IssueMReport(U As String, V As String, divname As String, ISSTYPE As String, lottype As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim PageLen As Integer
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
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
Dim s As String
Dim mix As String
Dim Cnn As Connection
Set Cnn = New Connection
PageLen = 60
Set rs1 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs4 = New Recordset
Cnn.CommandTimeout = 1000
                        


If Trim(ISSTYPE) = "A" Then
    If lottype = "ALL" Then
'        rs4.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratekg*355.616),0)as ratecandy,a.mixgrpcd,a.cntcode from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.isskgs,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',sum(isnull(b.isskgs,0))*ratekg 'Amount',ratekg,round(ratekg*355.616,0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode  " & _
'         "from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e Where  b.lottype=e.lottype and b.divcode=e.divcode and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt and a.divcode = '" & Divcode & "' and A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE and C.DOCDT = B.DOCDT " & _
'         "and  c.docno=b.docno and  d.cntcd=*a.cntcode and a.rejflg='N' and c.docdt  between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "' and b.issued='Y' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd,c.cntcd) a  group by a.varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd,a.mixgrpcd,a.cntcode order by a.cntcode ", Cnn, adOpenStatic
 ' Added on 20-09-19 by mariyaiya
          rs4.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratekg*355.616),0)as ratecandy,a.mixgrpcd,a.cntcode from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.isskgs,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',sum(isnull(b.isskgs,0))*ratekg 'Amount',ratekg,round(ratekg*355.616,0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode  " & _
         "from rm_lot a inner join rm_issb b on A.DIVCODE = B.divcode  and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt inner join rm_issh c on  C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE  and C.DOCDT = B.DOCDT and  c.docno=b.docno right outer join rm_count d on   d.cntcd=a.cntcode   inner join rm_bale e on  b.lottype=e.lottype and b.divcode=e.divcode and b.lotno=e.lotno  and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt  Where a.divcode = '" & Divcode & "'  " & _
         "  and a.rejflg='N' and c.docdt  between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "' and b.issued='Y' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd,c.cntcd) a  group by a.varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd,a.mixgrpcd,a.cntcode order by a.cntcode ", Cnn, adOpenStatic

         Else
'         rs4.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratekg*355.616),0)as ratecandy,a.mixgrpcd,a.cntcode from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.isskgs,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',sum(isnull(b.isskgs,0))*ratekg 'Amount',ratekg,round(ratekg*355.616,0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode  " & _
'         "from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e Where b.lottype='" & lottype & "' and b.divcode=e.divcode and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt and a.divcode = '" & Divcode & "' and A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE and C.DOCDT = B.DOCDT " & _
'         "and  c.docno=b.docno and  d.cntcd=*a.cntcode and a.rejflg='N' and c.docdt  between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "' and b.issued='Y' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd,c.cntcd) a  group by a.varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd,a.mixgrpcd,a.cntcode order by a.cntcode ", Cnn, adOpenStatic
    
    rs4.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratekg*355.616),0)as ratecandy,a.mixgrpcd,a.cntcode from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.isskgs,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',sum(isnull(b.isskgs,0))*ratekg 'Amount',ratekg,round(ratekg*355.616,0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode  " & _
          "from rm_lot a inner join rm_issb b on A.DIVCODE = B.divcode  and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt inner join rm_issh c on  C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE  and C.DOCDT = B.DOCDT and  c.docno=b.docno right outer join rm_count d on   d.cntcd=a.cntcode   inner join rm_bale e on  b.lottype=e.lottype and b.divcode=e.divcode and b.lotno=e.lotno  and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt  Where b.lottype='" & lottype & "' and a.divcode = '" & Divcode & "'  " & _
         " a.rejflg='N' and c.docdt  between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "' and b.issued='Y' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd,c.cntcd) a  group by a.varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd,a.mixgrpcd,a.cntcode order by a.cntcode ", Cnn, adOpenStatic

         End If

Else
If lottype = "ALL" Then
'rs4.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratekg*355.616),0)as ratecandy,a.mixgrpcd,a.cntcode from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.isskgs,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',sum(isnull(b.isskgs,0))*ratekg 'Amount',ratekg,round(ratekg*355.616,0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode  " & _
'         "from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_issuetype f  Where  b.isstype='" & ISSTYPE & "' and b.lottype=e.lottype and b.lotno=e.lotno and b.divcode=e.divcode and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt and a.divcode = '" & Divcode & "' and f.isstype=(select isstype from rm_issuetype where issue_code='" & ISSTYPE & "') and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE and c.isstype=f.issue_code and b.isstype=f.issue_code  AND C.DOCDT = B.DOCDT " & _
'         "and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt  between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd,c.cntcd) a group by a.varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd,a.mixgrpcd,a.cntcode order by a.cntcode ", Cnn, adOpenStatic

rs4.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratekg*355.616),0)as ratecandy,a.mixgrpcd,a.cntcode from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.isskgs,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',sum(isnull(b.isskgs,0))*ratekg 'Amount',ratekg,round(ratekg*355.616,0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode  " & _
         "from rm_lot a inner join rm_issb b on A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.    lotno  and  a.lotdt = b.lotdt inner join rm_issh c on  C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE  and C.DOCDT = B.DOCDT and  c.docno=b.docno  right outer join rm_count d on d.cntcd=a.cntcode inner join rm_bale e on b.lottype=e.lottype and b.lotno=e.lotno and b.divcode=e.divcode and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt  inner join rm_issuetype f on  c.isstype=f.issue_code and b.isstype=f.issue_code Where  b.isstype='" & ISSTYPE & "' and a.divcode = '" & Divcode & "' and f.isstype=(select isstype from rm_issuetype where issue_code='" & ISSTYPE & "') and   " & _
         "   c.docdt  between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd,c.cntcd) a group by a.varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd,a.mixgrpcd,a.cntcode order by a.cntcode ", Cnn, adOpenStatic

Else
'rs4.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratekg*355.616),0)as ratecandy,a.mixgrpcd,a.cntcode from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.isskgs,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',sum(isnull(b.isskgs,0))*ratekg 'Amount',ratekg,round(ratekg*355.616,0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode  " & _
'         "from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_issuetype f  Where b.lottype='" & lottype & "' and b.isstype='" & ISSTYPE & "' and b.divcode=e.divcode and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt and a.divcode = '" & Divcode & "' and f.isstype=(select isstype from rm_issuetype where issue_code='" & ISSTYPE & "') and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE and c.isstype=f.issue_code and b.isstype=f.issue_code  AND C.DOCDT = B.DOCDT " & _
'         "and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt  between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd,c.cntcd) a group by a.varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd,a.mixgrpcd,a.cntcode order by a.cntcode ", Cnn, adOpenStatic

    rs4.Open "select distinct a.cntcd,a.docno,a.docdt,a.varcode,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratekg*355.616),0)as ratecandy,a.mixgrpcd,a.cntcode from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),sum(isnull(b.isskgs,0)) 'netkgs',a.plotno,avg(a.ratekg)'quintal',sum(isnull(b.isskgs,0))*ratekg 'Amount',ratekg,round(ratekg*355.616,0)  ratecandy,isnull(c.docno,0) as docno,catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode  " & _
        "from rm_lot a inner join rm_issb b on A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.    lotno  and  a.lotdt = b.lotdt inner join rm_issh c on  C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE  and C.DOCDT = B.DOCDT and  c.docno=b.docno  right outer join rm_count d on d.cntcd=a.cntcode inner join rm_bale e on b.lottype=e.lottype and b.lotno=e.lotno and b.divcode=e.divcode and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt  inner join rm_issuetype f on  c.isstype=f.issue_code and b.isstype=f.issue_code Where  b.lottype='" & lottype & "' and b.isstype='" & ISSTYPE & "' and a.divcode = '" & Divcode & "' and f.isstype=(select isstype from rm_issuetype where issue_code='" & ISSTYPE & "') and   " & _
         "  c.docdt  between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno,c.docno,a.catcd,c.cntcd) a group by a.varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,a.docno,a.catcd,a.mixgrpcd,a.cntcode order by a.cntcode ", Cnn, adOpenStatic

End If
End If

If rs4.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If

Dim FLG As String
Dim Str As String
Set rptv = New Report.ReportView
a = FreeFile
Close
'Open "C:\issc.TXT" For Output As #a
Open KALFOLDERDATA & "\issc.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, co, U, V, divname)
co = 8
rs4.MoveFirst
    
    Do While Not rs4.EOF
        If FLG <> rs4("cntcode") Then
            Print #a, Space(0) & Padl(rs4("cntcode"), 10, " ")
            Print #a,
            FLG = rs4("cntcode")
            co = co + 2
        End If
        
         Set rsa = New Recordset
         If Trim(ISSTYPE) = "A" Then
            rsa.Open "SELECT COUNT(BALENO) FROM rm_issh h,RM_ISSB a WHERE h.docno=a.docno and h.docdt=a.docdt and h.divcode=a.divcode and h.isstype=a.isstype and a.divcode='" & Divcode & "' and h.docno='" & rs4("docno") & "' and h.docdt='" & Format(rs4("docdt"), "yyyy-mm-dd") & "' and a.lotno='" & rs4("lotno") & "' and  a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and cntcd='" & rs4("cntcode") & "' and ISSUED='Y'", DB, adOpenStatic
         Else
            rsa.Open "SELECT COUNT(BALENO) FROM rm_issh h,RM_ISSB a WHERE h.docno=a.docno and h.docdt=a.docdt and h.divcode=a.divcode and h.isstype=a.isstype and a.divcode='" & Divcode & "' and h.docno='" & rs4("docno") & "' and h.docdt='" & Format(rs4("docdt"), "yyyy-mm-dd") & "' and a.lotno='" & rs4("lotno") & "' and  a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and cntcd='" & rs4("cntcode") & "' and ISSUED='Y' and a.isstype='" & ISSTYPE & "'", DB, adOpenStatic
         End If
        If rsa.RecordCount > 0 Then
            bales = rsa(0)
        Else
            bales = 0
        End If
'        Set rx = New Recordset
'        rx.Open "select ratecy from rm_lot where lotno='" & rs4("lotno") & "' and divcode='" & Divcode & "'", cnn, adOpenStatic
'
       ' If Not rx.EOF Then
            Print #a, Space(0) + Padr((CStr(rs4("docdt"))), 10, " ") & Space(2) & Padr(IIf(IsNull(rs4("catcd")), " ", rs4("catcd")), 9, " ") & Space(2) & Padr(rs4("lotno"), 6, " ") & Space(2) & Padl(INF(rs4("bale"), 0), 6, " ") & Space(2) + Padl(INF(" ", 0), 6, " ") & Space(2) + Padl(INF(rs4("NETKG"), 3), 13, " ") & Space(2) & Padl(INF(rs4("ratecandy"), 0), 11, " ") & Space(2) & Padl(INF(rs4("AMOUNT"), 2), 15, " ")
'        Else
'            Print #a, Space(0) + Padr((CStr(rs4("docdt"))), 10, " ") & Space(2) & Padr(IIf(IsNull(rs4("catcd")), " ", rs4("catcd")), 9, " ") & Space(2) & Padr(rs4("lotno"), 6, " ") & Space(2) & Padl(INF(rs4("BALE"), 0), 6, " ") & Space(2) + Padl(INF(" ", 0), 6, " ") & Space(2) + Padl(INF(rs4("NETKG"), 3), 13, " ") & Space(2) & Padl(INF(" ", 0), 11, " ") & Space(2) & Padl(INF(rs4("AMOUNT"), 2), 15, " ")
'        End If
        
        tot1 = tot1 + rs4("bale") 'IIf(IsNull(rs4("BALE")), 0, rs4("BALE"))
        tot2 = tot2 + IIf(IsNull(rs4("NETKG")), 0, rs4("NETKG"))
        tot3 = tot3 + IIf(IsNull(rs4("AMOUNT")), 0, rs4("AMOUNT"))
        tot4 = tot4 + rs4("bale") 'IIf(IsNull(rs4("BALE")), 0, rs4("BALE"))
        tot5 = tot5 + IIf(IsNull(rs4("NETKG")), 0, rs4("NETKG"))
        tot6 = tot6 + IIf(IsNull(rs4("AMOUNT")), 0, rs4("AMOUNT"))
        tot7 = tot7 + IIf(IsNull(rs4("ratequin")), 0, rs4("ratequin"))
        tot8 = tot8 + 1
        co = co + 1
        If co > PageLen Then
            Print #a, Space(0) + String(90, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call PartyHeader(pg1, co, U, V, divname)
            co = 8
        End If
        rs4.MoveNext
        If Not rs4.EOF Then
            If FLG <> rs4("cntcode") Then
                Print #a,
                Print #a, Space(6) & Chr(27) & "E" & " ** Mixing Total ** " + Space(5) + Padl(INF(tot1, 0), 6, " ") + Space(8) + Padl(INF(tot2, 3), 15, " ") + Space(13) + Padl(INF(tot3, 2), 17, " ") & Chr(27) & "F"
                tot9 = tot3 / tot2
                If tot9 <> 0 Then
                    Print #a,
                    Print #a, Space(6) & Chr(27) & "E" + "    Average Rate :  " + Space(19) + Padl(INF(tot9, 3), 15, " ") & Chr(27) & "F"
                    Print #a,
                    tot1 = 0
                    tot2 = 0
                    tot3 = 0
                    tot9 = 0
                    co = co + 5
                End If
            End If
        End If
    Loop
    Print #a, Space(0) + String(90, "-")
    Print #a,
    Print #a, Space(6) & Chr(27) & "E" & " ** Mixing Total ** " + Space(5) + Padl(INF(tot1, 0), 6, " ") + Space(8) + Padl(INF(tot2, 3), 15, " ") + Space(13) + Padl(INF(tot3, 2), 17, " ") & Chr(27) & "F"
    tot9 = tot3 / tot2
    If tot9 <> 0 Then
        Print #a,
        Print #a, Space(6) & Chr(27) & "E" & "    Average Rate :  " + Space(19) + Padl(INF(tot9, 3), 15, " ") & Chr(27) & "F"
        Print #a,
        tot1 = 0
        tot2 = 0
        tot3 = 0
        tot9 = 0
        co = co + 5
    End If
   
    If co > PageLen Then
        Print #a, Space(0) + String(90, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call PartyHeader(pg1, co, U, V, divname)
        co = co + 8
    End If

Print #a, Space(0) + String(90, "-")
Print #a,
Print #a, Space(6) & Chr(27) & "E" & " ** Grand Total **  " + Space(5) + Padl(INF(tot4, 0), 6, " ") + Space(8) + Padl(INF(tot5, 3), 15, " ") + Space(13) + Padl(INF(tot6, 2), 17, " ") & Chr(27) & "F"
Print #a,
Print #a, Space(0) + String(90, "-")
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "C:\issc.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type issc.txt>prn"
'Close #a
'RPTV.txtfile = "C:\issc.txt"
'RPTV.Batfile = "C:\issc.bat"
Call KALBATPROCESS("issc")
End Sub

Public Sub PartyHeader(pg1 As Integer, co As Integer, U As String, V As String, divname As String)
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 90, " ") + Chr(27) + "F"
          Print #a,
          SR = Format(CStr(pdate), "dd/MM/yy") + Space(2)
          Print #a, Space(0) + Chr(27) + "E" + "Mix Numberwise Issue List" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy") & Chr(27) & "F" & Space(5) & "     " & SR & "Pg.:" + Space(1) + Padl(CStr(pg1), 3, " ")
          Print #a, Space(0) + String(90, "-")
          Print #a, Space(0) + "Mixing No."
          Print #a, Space(0) + "   Date     Category   Lot No   Bales   Borah     Net weight   Rate/Candy           Amount"
          Print #a, Space(0) + String(90, "- ")
End Sub
