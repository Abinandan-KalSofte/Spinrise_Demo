Attribute VB_Name = "IssueRegisterVariety"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim str1 As String
Dim cntdes As String

Dim VN As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co, z As Integer
Dim rp As New repform1
Dim rp1 As New rmireports

Public Sub IssueVReport(U As String, v As String, FVar As String, TVar As String, ISSTYPE As String, lottype As String)
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim str1 As String
Dim cntdes As String
Dim VN As New Recordset
Dim pg1 As Integer

Dim co As Integer
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
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
Dim ra As Double

Dim Cnn As Connection
Dim rsCat As Recordset
Dim numers As Recordset

 
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs1 = New Recordset

If Trim(ISSTYPE) = "A" Then
If lottype = "ALL" Then
    rs1.Open "select distinct X.varcode,cntcd,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
         " FROM( " & _
         " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         " Union All " & _
         "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         ")X  " & _
         " GROUP BY X.varcode,cntcd,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT ORDER BY X.VARCODE,X.CNTCD,X.LOTNO", DB, adOpenStatic
         Else
         rs1.Open "select distinct X.varcode,cntcd,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
         " FROM( " & _
         " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.varcode = b.varcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         " Union All " & _
         "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.varcode = b.varcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         ")X  " & _
         " GROUP BY X.varcode,cntcd,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT ORDER BY X.VARCODE,X.CNTCD,X.LOTNO", DB, adOpenStatic
         End If
Else

   If lottype = "ALL" Then
    rs1.Open "select distinct X.varcode,cntcd,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
         " FROM( " & _
         " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         " Union All " & _
         "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         ")X " & _
         " GROUP BY X.varcode,cntcd,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT ORDER BY X.VARCODE,X.CNTCD,X.LOTNO", DB, adOpenStatic
    ElseIf Trim(issuetype) = "JR" And lottype = "A" Then
         rs1.Open "select distinct X.varcode,cntcd,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
         " FROM( " & _
         " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         " Union All " & _
         "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         ")X " & _
         " GROUP BY X.varcode,cntcd,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT ORDER BY X.VARCODE,X.CNTCD,X.LOTNO", DB, adOpenStatic
    Else
          rs1.Open "select distinct X.varcode,cntcd,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
         " FROM( " & _
         " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         " Union All " & _
         "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
         ")X " & _
         " GROUP BY X.varcode,cntcd,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT ORDER BY X.VARCODE,X.CNTCD,X.LOTNO", DB, adOpenStatic
    End If
         
End If

If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
'Set rs = New Recordset
'Set rs = RS1("command4").UnderlyingValue
Set rptv = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\iss.TXT" For Output As #a
 Open KALFOLDERDATA & "\iss.TXT" For Output As #a
pg1 = 1
co = 0
Call PartyHeader(pg1, co, U, v)
co = 9
str1 = ""
tot4 = 0
If Not rs1.EOF Then
    rs1.MoveFirst
End If
    Print #a,
    co = co + 1
    If co >= pagelen Then
        Print #a, Space(5) + String(140, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call PartyHeader(pg1, co, U, v)
        co = 9
    End If
    tot1 = 0
    tot2 = 0
    tot3 = 0
    Set VN = New Recordset
    VN.Open "Select isnull(varname,'') as varname from rm_var where varcode='" & rs1("varcode") & "'", DB, adOpenStatic
    str1 = rs1(0)
    Set rsCat = New Recordset
    rsCat.Open "select catname from rm_cat where catcd='" & rs1("catcd") & "'", DB, adOpenStatic
    catname = ""
    If Not rsCat.EOF Then
        catname = rsCat(0)
    End If
    VarName = VN("VARNAME")
    Print #a, Space(5) + Chr(27) + "E" + Padr((CStr(VN("varname"))), 20, " ") + Space(5) + Padr((CStr(catname)), 20, " ") + Chr(27) + "F"
    co = co + 1
    If co >= pagelen Then
        Print #a, Space(5) + String(140, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call PartyHeader(pg1, co, U, v)
        co = 9
    End If
      rs1.MoveFirst
      
      Do While Not rs1.EOF
      
        Set VN = New Recordset
        VN.Open "Select isnull(varname,'') as varname from rm_var where varcode='" & rs1("varcode") & "'", DB, adOpenStatic
      
        If VarName <> VN("VARNAME") Then
            Set GTotrs = New Recordset
            GTotrs.Open "select Bale=count(b.baleno),Sum (b.actisskgs) 'netkgs', round(Avg(a.ratekg) ,2)'rate/quintal',sum(b.actisskgs)*avg(a.ratekg) 'Amount',round(avg(ratekg)*355.616,0) as ratecandy from rm_lot a,rm_issb b,rm_issh c Where  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE  AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and c.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.varcode='" & str1 & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic
            If Not GTotrs.EOF Then
                    Print #a, Space(5) + String(140, "-")
                    Print #a, Space(15) + Chr(27) + "E" + Space(12) + " Variety Total " + Space(28) + Padl(CStr(INF(tot1, 0)), 6, " ") + Padl(" ", 8, " ") + Padl(INF(tot2, 3), 17, " ") + Padl(" ", 12, " ") + Padl(" ", 3, " "); Padl(INF(tot3, 2), 27, " ") + Chr(27) + "F"
                    co = co + 3
                    If co >= pagelen Then
                        Print #a, Space(5) + String(140, "-")
                        Print #a, Chr(12)
                        pg1 = pg1 + 1
                        co = 11
                        Call PartyHeader(pg1, co, U, v)
                    Else
                        Print #a, Space(5) + String(140, "-")
                    End If
             End If
             tot1 = 0
             tot2 = 0
             tot3 = 0
             Set rsCat = New Recordset
             rsCat.Open "select catname from rm_cat where catcd='" & rs1("catcd") & "'", DB, adOpenStatic
             catname = ""
             If Not rsCat.EOF Then
                catname = rsCat(0)
             End If
             Print #a, Space(5) + Chr(27) + "E" + Padr((CStr(VN("varname"))), 20, " ") + Space(5) + Padr((CStr(catname)), 20, " ") + Chr(27) + "F"
        End If
        VarName = VN("VARNAME")
        If Trim(ISSTYPE) = "A" Then
            Set rsa = New Recordset
            rsa.Open "SELECT COUNT(BALENO) FROM rm_issh h,RM_ISSB a WHERE h.docno=a.docno and h.docdt=a.docdt and h.divcode=a.divcode and h.isstype=a.isstype and a.divcode='" & Divcode & "' and A.varcode='" & rs1("varcode") & "' and A.LOTDT='" & Format(rs1("LOTDT"), "YYYY-MM-DD") & "' AND a.lotno='" & rs1("lotno") & "' and  a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and cntcd='" & rs1("cntcd") & "' and ISSUED='Y'", DB, adOpenStatic
        Else
            Set rsa = New Recordset
            rsa.Open "SELECT COUNT(BALENO) FROM rm_issh h,RM_ISSB a WHERE h.docno=a.docno and h.docdt=a.docdt and h.divcode=a.divcode and h.isstype=a.isstype and a.divcode='" & Divcode & "' and A.varcode='" & rs1("varcode") & "' and A.LOTDT='" & Format(rs1("LOTDT"), "YYYY-MM-DD") & "' AND a.lotno='" & rs1("lotno") & "' and  a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and cntcd='" & rs1("cntcd") & "' and ISSUED='Y' and a.isstype='" & ISSTYPE & "'", DB, adOpenStatic
        End If
        If rsa.RecordCount > 0 Then
            bales = rsa(0)
        Else
            bales = 0
        End If
        ra = rs1("ratekg") * 355.616
                
            
        If rs1("issto") = "D" Then
                Set Namers = New Recordset
                Namers.Open "SELECT DISTINCT CNTCD,CNTNAME FROM RM_COUNT WHERE CNTCD ='" & rs1("CNTCD") & "'ORDER BY CNTCD", DB, adOpenStatic
        ElseIf rs1("issto") = "M" Then
                Set Namers = New Recordset
                ''Namers.Open "SELECT distinct a.cntcd,description as cntname from rm_issh a,ig_product z,rm_var b,rm_lot c,rm_issb d Where  a.cntcd='" & RS1("CNTCD") & "' AND c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode AND A.ISSTO='" & Issto & "' and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and a.cntcd=z.product_code and d.DOCDT between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by a.cntcd,description ORDER BY a.cntcd", DB, adOpenStatic
                Namers.Open "SELECT DESCRIPTION FROM IG_PRODUCT WHERE PRODUCT_CODE='" & rs1("CNTCD") & "'", DB, adOpenStatic
        End If
        If Namers.RecordCount > 0 Then
            cntdes = Namers("DESCRIPTION")
        Else
            cntdes = " "
        End If
        If cntdes <> CNTDES1 Then
            Print #a, Space(5) + Padr("", 20, " ") + Space(5) + Padr(cntdes, 16, " ") + Space(1) + Padl(rs1("lotno") & "-" & Format(rs1("LOTDT"), "DD/MM/YY"), 14, " ") + Space(1) + Padl(rs1("plotno"), 6, " ") + Space(7) + Padl(rs1("bales"), 3, " ") + Space(5) + Padr(rs1("unit"), 5, " ") + Space(5) + Padl(INF(rs1("Kgs"), 3), 10, " ") + Space(5) + Padl(INF(rs1("ratekg"), 2), 7, " ") + Space(5) + Padl(INF(ra, 0), 10, " ") + Padl(INF(rs1("Value"), 2), 15, " ")
        Else
            Print #a, Space(5) + Padr("", 20, " ") + Space(5) + Padr("", 16, " ") + Space(1) + Padl(rs1("lotno") & "-" & Format(rs1("LOTDT"), "DD/MM/YY"), 14, " ") + Space(1) + Padl(rs1("plotno"), 6, " ") + Space(7) + Padl(rs1("bales"), 3, " ") + Space(5) + Padr(rs1("unit"), 5, " ") + Space(5) + Padl(INF(rs1("Kgs"), 3), 10, " ") + Space(5) + Padl(INF(rs1("ratekg"), 2), 7, " ") + Space(5) + Padl(INF(ra, 0), 10, " ") + Padl(INF(rs1("Value"), 2), 15, " ")
        End If
        CNTDES1 = cntdes
        tot1 = tot1 + rs1!bales
        tot2 = tot2 + IIf(IsNull(rs1(9)), 0, rs1(9))
        tot3 = tot3 + IIf(IsNull(rs1(11)), 0, rs1(11))
        tot4 = tot4 + rs1!bales
        tot5 = tot5 + IIf(IsNull(rs1(9)), 0, rs1(9))
        tot6 = tot6 + IIf(IsNull(rs1(11)), 0, rs1(11))
        
        tot8 = tot8 + 1
        co = co + 1
        If co >= pagelen Then
            Print #a, Space(5) + String(140, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 11
            Call PartyHeader(pg1, co, U, v)
        End If
    rs1.MoveNext
Loop
        Print #a,
        co = co + 1
        If co >= pagelen Then
            Print #a, Space(5) + String(140, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call PartyHeader(pg1, co, U, v)
            co = 9
        End If
        If rs1.RecordCount > 1 Then
            Set GTotrs = New Recordset
            GTotrs.Open "select Bale=count(b.baleno),Sum (b.actisskgs) 'netkgs', round(Avg(a.ratekg) ,2)'rate/quintal',sum(b.actisskgs)*avg(a.ratekg) 'Amount',round(avg(ratekg)*355.616,0) as ratecandy from rm_lot a,rm_issb b,rm_issh c Where  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE  AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and c.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.varcode='" & str1 & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic
            If Not GTotrs.EOF Then
            ''        Print #a, Space(15) + " Variety Total " + Space(40) + Padl(CStr(INF(tot1, 0)), 6, " ") + Padl(" ", 8, " ") + Padl(INF(tot2, 3), 17, " ") + Padl(" ", 12, " ") + Padl(" ", 3, " "); Padl(INF(tot3, 2), 27, " ")
                    Print #a, Space(5) + String(140, "-")
                    Print #a, Space(15) + Chr(27) + "E" + Space(12) + " Variety Total " + Space(28) + Padl(CStr(INF(tot1, 0)), 6, " ") + Padl(" ", 8, " ") + Padl(INF(tot2, 3), 17, " ") + Padl(" ", 12, " ") + Padl(" ", 3, " "); Padl(INF(tot3, 2), 27, " ") + Chr(27) + "F"
                    co = co + 1
                    If co >= pagelen Then
                        Print #a, Space(5) + String(140, "-")
                        Print #a, Chr(12)
                        pg1 = pg1 + 1
                        co = 11
                        Call PartyHeader(pg1, co, U, v)
                    End If

                    End If
             End If
            Print #a, Space(5) + String(140, "-")
            Set GTotrs = New Recordset
            GTotrs.Open "select Bale=count(b.baleno),Sum (b.actisskgs) 'netkgs',round(Avg(a.ratekg),2)'rate/quintal',sum(b.actisskgs)*avg(a.ratekg) 'Amount',round(avg(ratekg)*355.616,0) as ratecandy from rm_lot a,rm_issb b,rm_issh c Where  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE and b.isstype='PR' AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and c.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.rejflg='N'and a.lotyear='" & Year(yfdate) & "' ", DB, adOpenStatic
            If Not GTotrs.EOF Then
                'Print #a, Space(15) + " Variety Total " + Space(40) + Padl(CStr(INF(tot1, 0)), 6, " ") + Padl(" ", 8, " ") + Padl(INF(tot2, 3), 17, " ") + Padl(" ", 12, " ") + Padl(" ", 3, " "); Padl(INF(tot3, 2), 27, " ")
                Print #a, Space(15) + " Grand   Total " + Space(42) + Padl(CStr(INF(tot4, 0)), 6, " ") + Padl(" ", 8, " ") + Padl(INF(tot5, 3), 17, " ") + Padl(" ", 12, " ") + Padl(" ", 3, " "); Padl(INF(tot6, 2), 27, " ")
            End If
            
Print #a, Space(5) + String(140, "-") + Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "C:\iss.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type iss.txt>prn"
'Close #a
'RPTV.txtfile = "C:\iss.txt"
'RPTV.Batfile = "C:\iss.bat"
Call KALBATPROCESS("iss")
End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, U As String, v As String)
          Print #a,
          Print #a,
          Print #a, Space(3) + Chr(15) + Chr(27) + "E" + CENTRE(divname, 138, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + Chr(27) + "E" + "Variety Issue List " + Chr(27) + "F" + "From" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "To" & Space(1) & Format(v, "dd/mm/yy") & Space(65) + CStr(Format(Date, "dd/MM/yy")); Space(2) + "Pg.:" + Padl(CStr(pg1), 3, " ")
          Print #a, Space(5) + String(140, "-")
          Print #a, Space(5) + Chr(27) + "E" + Padr("Variety", 20, " ") + Space(5) + Padr(" Category", 16, " ") + Space(5) + Padr("Mill", 5, " ") + Space(5) + Padr("Party", 5, " ") + Chr(27) + "F"
          Print #a, Space(5) + Chr(27) + "E" + Padr(" ", 20, " ") + Space(5) + Padr("MixCount", 16, " ") + Space(1) + Padl("Lot No.", 14, " ") + Space(1) + Padl("Lot No.", 6, " ") + Space(5) + Padl("Qty", 3, " ") + Space(5) + Padr("Unit", 5, " ") + Space(5) + Padl("Net Weight", 10, " ") + Space(5) + Padl("Rate/Kg", 7, " ") + Space(5) + Padl("Rate/Candy", 10, " ") + Padl("Amount", 15, " ") + Chr(27) + "F"
          Print #a, Space(5) + String(140, "-")
End Sub
Public Sub CottRecn4(a As String, ISSTYPE As String, ab As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim Sname   As String
Dim VName   As String
Dim Mno     As String
Dim slno, r, r1 As Integer
Dim varno1, supplier1, cntname1 As String
Dim issrs As Recordset
Dim value, totrate1, gtotrate1, tgtotrate1 As Double
Dim totper1, gtotper1, tgtotper1 As Double
Dim strvarcode As String
Dim Rate, ratekg12 As Double
Dim MIXNO As String
Dim pertotal, pertotal1, pertotal2 As Double
Dim tot4, tot5, tot6, tot7, tot8, tot9 As Double
Dim gtot2, gtot3, gtot4, gtot5, gtot6 As Double
Dim ntot1, ntot2, ntot3, ntot4, ntot5, Ntotper1, Ntotrate1 As Double
Dim gtot1 As Double
Dim mixlot, mixgrp, mixcnt As String
Dim lotmix, lotno1, lotmonth, lotcat, lotyear As String
Dim rs55 As New Recordset
Dim RS78 As New Recordset
Set Cnn = New Connection
Cnn.Open connectstring
    
Set rs1 = New Recordset
    
If Trim(ISSTYPE) = "A" Then
    rs1.Open "select distinct isnull(ordno,'') as ordno, isnull(mixgrp,'') as mixgrp, isnull(cntcd,'') as cntcd, isnull(issto,'') as issto,(select mixgrpname from rm_mixgrp where a.mixgrp=mixgrpcd)as mixname " & _
        " from rm_issh a, rm_issuetype b where  A.DIVCODE='" & Divcode & "' AND  a.isstype=b.issue_code and docdt = '" & Format(a, "dd-mmm-yy") & "' and b.isstype='P'", DB, adOpenStatic
Else
    rs1.Open "select distinct isnull(ordno,'') as ordno, isnull(mixgrp,'') as mixgrp, isnull(cntcd,'') as cntcd, isnull(issto,'') as issto,(select mixgrpname from rm_mixgrp where a.mixgrp=mixgrpcd)as mixname " & _
        " from rm_issh a , rm_issuetype b where  A.DIVCODE='" & Divcode & "' AND  a.isstype=b.issue_code and docdt = '" & Format(a, "dd-mmm-yy") & "' and a.isstype = '" & ISSTYPE & "'", DB, adOpenStatic
End If

If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
    
    
    vrectype = Trim(Left(ab, 3))
        If vrectype = "A" Then
            tmptypestr = "d.LotType"
        Else
            tmptypestr = "d.TransferType"
        End If

tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0

Set rptv = New Report.ReportView
z = FreeFile

Close #z
'Open "C:\CotRecn78.TXT" For Output As #z
Open KALFOLDERDATA & "\CotRecn78.TXT" For Output As #z
pg1 = 1
co = 0
r1 = 0: r2 = 0
I = 0: U = 0
Call CottRecnHeader4(pg1, CInt(co), a, "")
    
pertotal = 0
      
Do While Not rs1.EOF
    mixlot = rs1("ordno")
    mixgrp = rs1("mixname")
    If IsNull(rs1("MIXNAME")) = True Then
        mixgrp = rs1("MIXGRP")
    End If
    If rs1("MIXNAME") = "" Then
        mixgrp = rs1("MIXGRP")
    End If
    If mixlot = "" And mixgrp = "" Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
    
    
    'TO Find the Count Name
    If rs1!Issto = "D" Then
        Set issrs = New Recordset
        issrs.Open "Select cntname from rm_count where cntcd= '" & rs1!cntcd & "' ", DB, adOpenStatic
        If issrs.RecordCount > 0 Then
          cntname1 = issrs!cntname
        Else
           cntname1 = ""
        End If
    Else
       Set issrs = New Recordset
        issrs.Open "Select description from ig_product where DIVCODE='" & Divcode & "' AND product_code= '" & rs1!cntcd & "' ", DB, adOpenStatic
       If issrs.RecordCount > 0 Then
          cntname1 = issrs!Description
        Else
           cntname1 = ""
        End If
    End If
                
    'To find percentage total
    Set RS2 = New Recordset
    If vrectype <> "ALL" Then
    qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.docdt=c.docdt and b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and d.lotyear='" & Year(yfdate) & "'AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(a.FAVAOURABLEWGT) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.docdt=c.docdt and b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and c.DIVCODE=a.divcode and A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and d.lotyear='" & Year(yfdate) & "' AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype group by b.lotno,b.lotdt,b.catcd ,D.weightFlg" & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
          ''rs2.Open "select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(A.netwt) as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c  Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd ORDER BY B.CATCD", DB, adOpenStatic
          Else
          qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.docdt=c.docdt and b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and d.lotyear='" & Year(yfdate) & "' AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(a.FAVAOURABLEWGT) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where  b.docdt=c.docdt and b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and c.DIVCODE=a.divcode and A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and d.lotyear='" & Year(yfdate) & "' AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype group by b.lotno,b.lotdt,b.catcd,D.WeightFlg " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
          
          End If
        
    RS2.Open qry, DB, adOpenStatic
    
    pertotal = 0
                 

    Do While Not RS2.EOF
        pertotal = Round(pertotal, 3) + Round(RS2!netwt, 3)
        RS2.MoveNext
    Loop
   
If RS2.EOF = False Then
    RS2.MoveFirst
    End If
    ' End percentagr total
    If Mno = mixlot Then
        Print #z, Space(19) + Space(17)
    Else
    
        If I > 1 Then
            'totrate1 = Abs(totrate1 / r)
            totrate1 = tot5 / tot4
            Print #z, Space(5) + Space(22) + String(120, "-")
            Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
            Print #z, Space(5) + Space(22) + String(120, "-")
            co = co + 3
        End If
        
        If U > 1 Then
            If Ntotper1 >= 100 Then
                Ntotper1 = 100
            ElseIf Ntotper1 <= 100 Then
                Ntotper1 = 100
            End If
            'Ntotrate1 = Abs(Ntotrate1 / r2)
            Ntotrate1 = ntot5 / ntot4
            Print #z, Space(5) + Space(22) + String(120, "-")
            Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Total", 18, " ") & Space(12) & Padl(ntot1, 10, " ") & Space(1) & Padl(INF(ntot2, 3), 15, " ") & Space(1) & Padl(INF(ntot3, 3), 9, " ") & Space(0) & Padl(INF(ntot4, 3), 14, " ") & Space(1) & Padl(INF(Ntotrate1, 2), 11, " ") & Space(2) & Padl(Format(Round(Ntotper1, 0), "0.00"), 10, " ") & Padl(INF(ntot5, 2), 16, " ") + Chr(27) + "F"
            Print #z, Space(5) + Space(22) + String(120, "-")
            co = co + 3
            r2 = 0
        End If
        U = 0
        I = 0
        ntot1 = 0: ntot2 = 0: ntot3 = 0: ntot4 = 0: ntot5 = 0: Ntotper1 = 0: Ntotrate1 = 0
        tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
        
        
        If co >= 60 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, "")
        End If

        MIXNO = rs1("ordno")
        If Not RS2.BOF = True Then
        RS2.MoveFirst
        Print #z, Space(5) & Chr(27) + "E" + Padr(RS2("lotno") & "/" & Format(RS2("lotdt"), "yy"), 14, "") & Space(8) & Padr(mixgrp, 17, " ") + Chr(27) + "F"
        End If
        Mno = mixlot
        VName = " "
        Sname = " "
    End If
    co = co + 1
    
    Set rs5 = New Recordset
    rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname,A.CATCD from rm_issb a,rm_issh b,RM_ISSUETYPE C where a.docdt=b.docdt and " & _
        " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND b.ordno = '" & mixlot & "' and b.docdt = '" & Format(a, "dd-mmm-yy") & "' and C.isstype like 'P' " & _
        " and a.docno=b.docno AND A.DIVCODE='" & Divcode & "' ORDER BY A.CATCD,A.VARCODE", DB, adOpenStatic
    r1 = rs5.RecordCount 'For Rate Average
    
  
        Do While Not rs5.EOF
        If VName = rs5("Varname") Then
            Print #z, Space(30)
        Else
            If co >= 64 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, "")
            End If
            
            If I > 1 Then
                'totrate1 = Abs(totrate1 / r)
                totrate1 = tot5 / tot4
                Print #z, Space(5) + Space(22) + String(120, "-")
                Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
                Print #z, Space(5) + Space(22) + String(120, "-")
                co = co + 3
            End If
            I = 0
            tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
            
            Print #z,
            Print #z, Chr(27) + "E" + Space(5) & Padr(rs5!VarName, 25, " ") + Chr(27) + "F"
            ''''Print #z, Space(5) & Padr(rs5!VarName, 25, " ") ''org code
            VName = rs5("Varname")
            Sname = " "
        End If
        
        co = co + 2
        varno1 = rs5!Varcode
                          
        Set RS2 = New Recordset
'        Qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
'              " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c Where  C.DIVCODE='" & Divcode & "' AND B.ISSUED='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode = '" & rs5!varcode & "' and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & RS1("MIXGRP") & "' and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd " & _
'              " UNION " & _
'              " select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(b.actisskgs) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c Where  C.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode = '" & rs5!varcode & "' and c.ordno = '" & mixlot & "'  AND C.MIXGRP='" & RS1("MIXGRP") & "' and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd " & _
'              " )X  GROUP BY X.LOTNO,X.LOTDT,X.CATCD ORDER BY X.CATCD"
If vrectype <> "ALL" Then
        qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.docdt=c.docdt and b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.varcode = '" & rs5!Varcode & "' and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and d.lotyear='" & Year(yfdate) & "'AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype  group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(a.FAVAOURABLEWGT) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.docdt=c.docdt and b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and c.DIVCODE=a.divcode and A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and b.varcode = '" & rs5!Varcode & "' and " & tmptypestr & "= '" & Trim(vrectype) & " '  and d.lotyear='" & Year(yfdate) & "' AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype group by b.lotno,b.lotdt,b.catcd,D.WeightFlg " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"

          
          Else
          qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.docdt=c.docdt and b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and b.varcode = '" & rs5!Varcode & "' and  b.varcode=a.varcode   and d.lotyear='" & Year(yfdate) & "' AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(a.FAVAOURABLEWGT) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.docdt=c.docdt and b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and c.DIVCODE=a.divcode and A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and b.varcode = '" & rs5!Varcode & "' and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode  and d.lotyear='" & Year(yfdate) & "' AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype group by b.lotno,b.lotdt,b.catcd,D.WeightFlg " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"

          End If
          
        RS2.Open qry, DB, adOpenStatic
        
        ''rs2.Open "select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(A.netwt) as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode = '" & rs5!varcode & "' and c.ordno = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd"
                                                            
        r = 0

        Do While Not RS2.EOF
            r = r + 1
            Set RS78 = New Recordset
            RS78.Open "SELECT isnull(round(ratekg,2),0) ratekg FROM rm_lot where DIVCODE='" & Divcode & "' AND  lotno = '" & RS2!lotno & "' and lotdt ='" & Format(RS2!LOTDT, "dd-mmm-yy") & "' and varcode = '" & rs5!Varcode & "' ", DB, adOpenStatic
            ratekg12 = 0
            Do While Not RS78.EOF
            ratekg12 = Round(val(RS78!ratekg), 2)
            RS78.MoveNext
            Loop
            value = val(ratekg12) * val(RS2!netwt)
            Rate = Round(val(ratekg12), 2)
            pertotal1 = 0
            If Not pertotal = 0 Then
            pertotal1 = (val(RS2("netwt")) / pertotal) * 100
            Else
            pertotal1 = 0
            End If
            pertotal1 = Round(pertotal1, 2)
                                    
            Call lot(RS2("catcd"), RS2("lotno"), RS2("lotdt"), lotmix)
            Call supplier3(RS2("catcd"), RS2("lotno"), RS2("lotdt"), rs5!Varcode, supplier1)
                                
            If Sname = supplier1 Then
                Print #z, Space(50);
            Else
                Print #z, Space(5) & Padr(supplier1, 44, "") & Space(1);
                Sname = supplier1
            End If
            'Rate = value / rs2("netwt")
            
            Print #z, Padr(RS2("lotno") & "/" & Format(RS2("lotdt"), "yy"), 10, "") & Space(1) & Padl(RS2("qty"), 6, " ") & Space(1) & Padl(INF(RS2("grwt"), 3), 15, " ") & Space(1) & Padl(INF(RS2("tarewt"), 3), 9, " ") & Space(0) & Padl(INF(RS2("netwt"), 3), 14, " ") & Space(1) & Padl(INF(Rate, 2), 11, " ") & Space(2) & Padl(INF(pertotal1, 2), 10, " ") & Padl(INF(value, 2), 16, " ")
            co = co + 1
            I = I + 1
            U = U + 1
            r2 = r2 + 1
            ''Sub Total
            tot1 = tot1 + val(RS2!QTY)
            tot2 = tot2 + val(RS2!GRWT)
            tot3 = tot3 + val(RS2!TAREWT)
            tot4 = tot4 + val(RS2!netwt)
            tot5 = tot5 + Round(val(value), 2)
            totper1 = totper1 + val(pertotal1)
            totrate1 = totrate1 + Rate
                            
            ''Net Total
            ntot1 = ntot1 + val(RS2!QTY)
            ntot2 = ntot2 + val(RS2!GRWT)
            ntot3 = ntot3 + val(RS2!TAREWT)
            ntot4 = ntot4 + val(RS2!netwt)
            ntot5 = ntot5 + Round(val(value), 2)
            Ntotper1 = Ntotper1 + val(pertotal1)
            Ntotrate1 = Ntotrate1 + Rate
            
            ''Grand Total
            gtot1 = gtot1 + val(RS2!QTY)
            gtot2 = gtot2 + val(RS2!GRWT)
            gtot3 = gtot3 + val(RS2!TAREWT)
            gtot4 = gtot4 + val(RS2!netwt)
            gtot5 = gtot5 + Round(value, 2)
            gtotper1 = gtotper1 + val(pertotal1)
            gtotrate1 = gtotrate1 + Rate
                    
            If co >= 64 Then
                VName = " "
                Sname = " "
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, "")
            End If
            RS2.MoveNext
        Loop
        rs5.MoveNext
    Loop
    
  
 ' Else
' MsgBox "No Record Found", vbInformation, head
 'Screen.MousePointer = 0
 'Exit Sub
'End If
    
        If co >= 64 Then
        Print #z, Space(5) & String(142, "-")
        Print #z, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call CottRecnHeader4(pg1, CInt(co), a, "")
    End If
    rs1.MoveNext
Loop

'  If rs5.EOF = True Then
'   MsgBox "No Record(s) Found", vbInformation, head
'   Close #z
'   Screen.MousePointer = 0
'   Exit Sub
'   End If
 'Else
' MsgBox "No Record Found", vbInformation, head
' Screen.MousePointer = 0
' Exit Sub
'End If

If co >= 64 Then
    Print #z, Space(5) & String(142, "-")
    Print #z, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call CottRecnHeader4(pg1, CInt(co), a, "")
End If

If I > 1 Then
    'totrate1 = Abs(totrate1 / r)
    totrate1 = tot5 / tot4
    Print #z, Space(5) + Space(22) + String(120, "-")
    Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
End If

If Ntotper1 >= 100 Then
    Ntotper1 = 100
ElseIf Ntotper1 <= 100 Then
    Ntotper1 = 100
End If

If co >= 58 Then
    Print #z, Space(5) & String(142, "-")
    Print #z, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call CottRecnHeader4(pg1, CInt(co), a, "")
End If

If U > 1 Then
    'Ntotrate1 = Abs(Ntotrate1 / r2)
    Ntotrate1 = ntot5 / ntot4
    Print #z, Space(5) + Space(22) + String(120, "-")
    Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Total", 18, " ") & Space(12) & Padl(ntot1, 10, " ") & Space(1) & Padl(INF(ntot2, 3), 15, " ") & Space(1) & Padl(INF(ntot3, 3), 9, " ") & Space(0) & Padl(INF(ntot4, 3), 14, " ") & Space(1) & Padl(INF(Ntotrate1, 2), 11, " ") & Space(2) & Padl(Format(Round(Ntotper1, 2), "0.00"), 10, " ") & Padl(INF(ntot5, 2), 16, " ") + Chr(27) + "F"
End If


Print #z, Space(5) & String(142, "-")
Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("** Grand Total **", 18, " ") & Space(12) & Padl(gtot1, 10, " ") & Space(1) & Padl(INF(gtot2, 3), 15, " ") & Space(1) & Padl(INF(gtot3, 3), 9, " ") & Space(0) & Padl(INF(gtot4, 3), 14, " ") & Space(1) & Space(11) & Space(2) & Space(10) & Padl(INF(gtot5, 2), 16, " ") + Chr(27) + "F"
Print #z, Space(5) & String(142, "-")

Print #z,
Print #z,
Print #z,
Print #z,
 Call footermod(CInt(z), rp.UserFooter1.SelectedStr, 85)
'Print #z, Space(15) + Space(5) & "_______________                ______________                __________________                __________________"
'Print #z, Space(15) + Space(5) & "  Prepared by                    Checked by                    Factory Manager                   General Manager"
Print #z, Chr(12) + Chr(18)
                  
Close #z
z = FreeFile
'Open "c:\CotRec78.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type CotRecn1.TXT>prn"
'Close #z
'z = FreeFile
'RPTV.txtfile = "c:\CotRecn78.TXT"
'RPTV.Batfile = "c:\CotRec78.bat"
Call KALBATPROCESS("CotRecn78")
Screen.MousePointer = 0

End Sub

Public Sub CottRecn4_Periodical(a As String, B As String, ISSTYPE As String, rectype As String, footerstr As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim Sname   As String
Dim VName   As String
Dim Mno     As String
Dim slno, r, r1 As Integer
Dim varno1, supplier1, cntname1 As String
Dim issrs As Recordset
Dim value, totrate1, gtotrate1, tgtotrate1 As Double
Dim totper1, gtotper1, tgtotper1 As Double
Dim strvarcode As String
Dim Rate, ratekg12 As Double
Dim MIXNO As String
Dim pertotal, pertotal1, pertotal2 As Double
Dim tot4, tot5, tot6, tot7, tot8, tot9 As Double
Dim gtot2, gtot3, gtot4, gtot5, gtot6 As Double
Dim ntot1, ntot2, ntot3, ntot4, ntot5, Ntotper1, Ntotrate1 As Double
Dim gtot1 As Double
Dim mixlot, mixgrp, mixcnt, ltype As String
Dim lotmix, lotno1, lotmonth, lotcat, lotyear As String
Dim rs55 As New Recordset
Dim RS78 As New Recordset

Set Cnn = New Connection
Cnn.ConnectionTimeout = 1200
Cnn.Open connectstring
Cnn.CommandTimeout = 2400
DB.CommandTimeout = 2400
ltype = Trim(Mid(rectype, 1, 3))
  
Set rs1 = New Recordset
    
If Trim(ISSTYPE) = "A" Then
        rs1.Open "select distinct isnull(ordno,'') as ordno, isnull(mixgrp,'') as mixgrp, isnull(cntcd,'') as cntcd, isnull(issto,'') as issto,(select mixgrpname from rm_mixgrp where a.mixgrp=mixgrpcd and A.DIVCODE='" & Divcode & "')as mixname " & _
            " from rm_issh a, rm_issuetype b where A.DIVCODE='" & Divcode & "' AND  a.isstype=b.issue_code and docdt Between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and b.isstype='P'", DB, adOpenStatic
Else
        rs1.Open "select distinct isnull(ordno,'') as ordno, isnull(mixgrp,'') as mixgrp, isnull(cntcd,'') as cntcd, isnull(issto,'') as issto,(select mixgrpname from rm_mixgrp where a.mixgrp=mixgrpcd and A.DIVCODE='" & Divcode & "')as mixname " & _
            " from rm_issh a , rm_issuetype b where  A.DIVCODE='" & Divcode & "' AND  a.isstype=b.issue_code and docdt Between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and a.isstype = '" & ISSTYPE & "'", DB, adOpenStatic
End If

If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
    
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0

Set rptv = New Report.ReportView
z = FreeFile
Close
Close #z
'Open "C:\CotRecn78.TXT" For Output As #z
 Open KALFOLDERDATA & "\CotRecn78.TXT" For Output As #z
pg1 = 1
co = 0
r1 = 0: r2 = 0
I = 0: U = 0
Call CottRecnHeader4(pg1, CInt(co), a, B)
    
pertotal = 0
    
'Do While Not rs1.EOF
If rs1.EOF = False Then
    mixlot = rs1("ordno")
    mixgrp = rs1("mixname")
    If IsNull(rs1("MIXNAME")) = True Then
        mixgrp = rs1("MIXGRP")
    End If
    If rs1("MIXNAME") = "" Then
        mixgrp = rs1("MIXGRP")
    End If
    
    
    
    'TO Find the Count Name
    If rs1!Issto = "D" Then
        Set issrs = New Recordset
        issrs.Open "Select cntname from rm_count where DIVCODE='" & Divcode & "' AND cntcd= '" & rs1!cntcd & "' ", DB, adOpenStatic
        If issrs.RecordCount > 0 Then
          cntname1 = issrs!cntname
        Else
           cntname1 = ""
        End If
    Else
       Set issrs = New Recordset
       issrs.Open "Select description from ig_product where DIVCODE='" & Divcode & "' AND product_code= '" & rs1!cntcd & "' ", DB, adOpenStatic
       If issrs.RecordCount > 0 Then
          cntname1 = issrs!Description
        Else
           cntname1 = ""
        End If
    End If
                
    
    Set RS2 = New Recordset
   If ltype = "ALL" Then

        qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
              " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A,rm_issb b  Where A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno  And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno  and a.DIVCODE=d.DIVCODE and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and b.baleno=a.baleno and  b.varcode=a.varcode and a.divcode=b.divcode group by b.lotno,b.lotdt,b.catcd " & _
              " UNION " & _
              " select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(a.favaourablewgt) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b ,Rm_lot d  Where a.lotno=d.lotno and a.lotdt=d.lotdt and a.catcd=d.catcd and a.lottype=d.lottype  and  A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.LOTDT=B.LOTDT   and a.lotno=b.lotno  and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and b.baleno=a.baleno and  b.varcode=a.varcode and a.divcode=b.divcode group by b.lotno,b.lotdt,b.catcd, d.WeightFlg " & _
              " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
    Else
    
        qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
              " select sum(d.grwt)  as grwt, sum(d.tarewt) as tarewt,sum(d.favaourablewgt) as netwt,0 as qty,a.lotno,a.lotdt,a.catcd from  rm_issb a,rm_bale d Where  a.LOTNO = d.LOTNO And a.LOTDT = d.LOTDT  and a.DIVCODE=d.DIVCODE And a.lottype = d.lottype And a.Varcode = d.Varcode And a.catcd = d.catcd And a.baleno = d.baleno and a.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and  a.LotType='" & ltype & "' and a.DIVCODE='" & Divcode & "'" & _
              " AND a.issued='Y' group by a.lotno,a.lotdt,a.catcd " & _
              " Union All select distinct 0 as grwt,0 as tarewt,0 as netwt, 0 as qty, a.lotno,a.lotdt,a.catcd from  rm_issb a,rm_issh b Where a.docNo = b.docNo And a.DOCDT = b.DOCDT And a.Divcode = b.Divcode And a.ISSTYPE = b.ISSTYPE " & _
              " and a.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and  lottype='" & ltype & "' and a.DIVCODE='" & Divcode & "' AND a.issued='Y' and b.ordno = '" & mixlot & "' AND b.MIXGRP='" & rs1("MIXGRP") & "') x group by lotno,lotdt,catcd order by catcd"
              ''rs2.Open "select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(A.netwt) as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c  Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd ORDER BY B.CATCD", DB, adOpenStatic
    End If
    
    RS2.Open qry, DB, adOpenStatic
    
    pertotal = 0
                 
    Do While Not RS2.EOF
        pertotal = Round(pertotal, 3) + Round(RS2!netwt, 3)
        RS2.MoveNext
    Loop
    
    ' End percentagr total
    If Mno = mixlot Then
        Print #z, Space(19) + Space(17)
    Else
    
        If I > 1 Then
            'totrate1 = Abs(totrate1 / r)
            If tot5 <> 0 Then
                totrate1 = tot5 / tot4
            End If
            Print #z, Space(5) + Space(22) + String(120, "-")
            Print #z, Space(5) + Space(24) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
            Print #z, Space(5) + Space(22) + String(120, "-")
            co = co + 3
        End If
        
        If U > 1 Then
            If Ntotper1 >= 100 Then
                Ntotper1 = 100
            ElseIf Ntotper1 <= 100 Then
                Ntotper1 = 100
            End If
            'Ntotrate1 = Abs(Ntotrate1 / r2)
            If ntot5 <> 0 Then
            Ntotrate1 = ntot5 / ntot4
            End If
            Print #z, Space(5) + Space(22) + String(120, "-")
            Print #z, Space(5) + Space(24) + Chr(27) + "E" + Padr("Total", 18, " ") & Space(12) & Padl(ntot1, 10, " ") & Space(1) & Padl(INF(ntot2, 3), 15, " ") & Space(1) & Padl(INF(ntot3, 3), 9, " ") & Space(0) & Padl(INF(ntot4, 3), 14, " ") & Space(1) & Padl(INF(Ntotrate1, 2), 11, " ") & Space(2) & Padl(Format(Round(Ntotper1, 0), "0.00"), 10, " ") & Padl(INF(ntot5, 2), 16, " ") + Chr(27) + "F"
            Print #z, Space(5) + Space(22) + String(120, "-")
            co = co + 3
            r2 = 0
        End If
        U = 0
        I = 0
        ntot1 = 0: ntot2 = 0: ntot3 = 0: ntot4 = 0: ntot5 = 0: Ntotper1 = 0: Ntotrate1 = 0
        tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
        
        
        If co >= 54 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, B)
        End If

        MIXNO = rs1("ordno")
        Print #z, Space(5) & Chr(27) + "E" + Padr(mixlot, 14, " ") & Space(8) & Padr(mixgrp, 17, " ") + Chr(27) + "F"
        Mno = mixlot
        VName = " "
        Sname = " "
    End If
    co = co + 1
    
    Set rs5 = New Recordset
    If ltype = "ALL" Then
        rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname,A.CATCD from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
            " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND b.docdt Between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and C.isstype like 'P' " & _
            " and a.docno=b.docno  and A.DIVCODE=b.DIVCODE AND A.DIVCODE='" & Divcode & "' ORDER BY A.CATCD,A.VARCODE", DB, adOpenStatic
    Else
        rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname,A.CATCD from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
            " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND b.docdt Between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and C.isstype like 'P' " & _
            " and a.docno=b.docno  and A.DIVCODE=b.DIVCODE AND A.DIVCODE='" & Divcode & "' and a.lottype='" & ltype & "' ORDER BY A.CATCD,A.VARCODE", DB, adOpenStatic
    End If
    r1 = rs5.RecordCount 'For Rate Average
        
    Do While Not rs5.EOF
        If VName = rs5("Varname") Then
            Print #z, Space(30)
        Else
            If co >= 54 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, B)
            End If
            
            If I > 1 Then
                'totrate1 = Abs(totrate1 / r)
                If tot5 <> 0 Then
                    totrate1 = tot5 / tot4
                End If
                Print #z, Space(5) + Space(22) + String(120, "-")
                Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
                Print #z, Space(5) + Space(22) + String(120, "-")
                co = co + 3
            End If
            I = 0
            tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
            
'            Print #z,
            Print #z, Chr(27) + "E" + Space(5) & Padr(rs5!VarName, 25, " ") + Chr(27) + "F"
            ''''Print #z, Space(5) & Padr(rs5!VarName, 25, " ") ''org code
            VName = rs5("Varname")
            Sname = " "
        End If
        
        co = co + 2
        varno1 = rs5!Varcode


        Set DB = New Connection
        DB.CommandTimeout = 1000
        DB.Open connectstring
        
        Set RS2 = New Recordset
    If Trim(ISSTYPE) = "A" Then
        If ltype = "ALL" Then
            qry = ""
            qry = qry + Chr(13) & "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD"
            qry = qry + Chr(13) & " FROM ("
            qry = qry + Chr(13) & "select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,"
            qry = qry + Chr(13) & "rm_issb b  Where A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno and A.isqty > 0"
            qry = qry + Chr(13) & "AND A.LOTDT=B.LOTDT and a.lottype=b.lottype and a.baleno=b.baleno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "'"
            qry = qry + Chr(13) & "and b.baleno=a.baleno and b.varcode=a.varcode and b.varcode = '" & rs5!Varcode & "'"
            qry = qry + Chr(13) & "and a.divcode=b.divcode "
            qry = qry + Chr(13) & "group by b.lotno,b.lotdt,b.catcd"
            qry = qry + Chr(13) & "UNION  select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(B.ISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,"
            qry = qry + Chr(13) & "rm_issb b ,Rm_lot d Where a.lotno=d.lotno and a.lotdt=d.lotdt and a.catcd=d.catcd and a.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' and D.lotyear ='" & Year(yfdate) & "' AND A.lotno =b.lotno  And A.isqty > 0"
            qry = qry + Chr(13) & "AND A.LOTDT=B.LOTDT and a.lottype=b.lottype and a.baleno=b.baleno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "'"
            qry = qry + Chr(13) & "and b.baleno=a.baleno and b.varcode=a.varcode and b.varcode = '" & rs5!Varcode & "'"
            qry = qry + Chr(13) & "and a.divcode=b.divcode "
            qry = qry + Chr(13) & "group by b.lotno,b.lotdt,b.catcd,weightflg   )X"
            qry = qry + Chr(13) & "Group by x.lotno,x.lotdt,x.catcd order by catcd"
        Else
            qry = ""
            qry = qry + Chr(13) & "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD"
            qry = qry + Chr(13) & " FROM ("
            qry = qry + Chr(13) & "select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,"
            qry = qry + Chr(13) & "rm_issb b Where A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno  And A.isqty > 0"
            qry = qry + Chr(13) & "AND A.LOTDT=B.LOTDT and a.lottype=b.lottype and a.baleno=b.baleno  and b.docdt between '" & Format(a, "YYYY/MM/DD") & "' and '" & Format(B, "YYYY/MM/DD") & "'"
            qry = qry + Chr(13) & "and b.baleno=a.baleno and b.varcode=a.varcode and b.varcode = '" & rs5!Varcode & "' "
            qry = qry + Chr(13) & "and a.divcode=b.divcode and a.lottype='" & ltype & "' group by b.lotno,b.lotdt,b.catcd"
            qry = qry + Chr(13) & " UNION  select case when weightflg='M' then sum(B.grwt) else sum(isnull(B.pgrswt,0)) end as grwt,"
            qry = qry + Chr(13) & " case when weightflg='M' then sum(B.tarewt) else sum(isnull(B.ptarewt,0)) end as tarewt,"
            qry = qry + Chr(13) & " sum(C.ISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd"
            qry = qry + Chr(13) & " from RM_LOT A,RM_BALE B,RM_ISSB C Where a.LOTNO = b.LOTNO"
            qry = qry + Chr(13) & " AND A.LOTDT=B.LOTDT AND A.LOTTYPE =B.LOTTYPE AND A.CATCD=B.CATCD AND A.VARCODE= B.VARCODE AND A.dIVCODE=B.DIVCODE"
            qry = qry + Chr(13) & " AND b.LOTNO = C.LOTNO And b.LOTDT = C.LOTDT And b.lottype = C.lottype And b.catcd = C.catcd And b.Varcode = C.Varcode"
            qry = qry + Chr(13) & " AND B.dIVCODE=C.DIVCODE AND B.BALENO=C.BALENO AND A.LOTYEAR='" & Year(yfdate) & "' AND C.DOCDT BETWEEN '" & Format(a, "YYYY/MM/DD") & "' and '" & Format(B, "YYYY/MM/DD") & "'"
            qry = qry + Chr(13) & " AND A.LOTTYPE='" & ltype & "' AND A.VARCODE='" & rs5!Varcode & "' and A.DIVCODE='" & Divcode & "' AND B.issued='Y'"
            qry = qry + Chr(13) & " GROUP BY B.LOTNO,B.LOTDT,B.CATCD,WEIGHTFLG )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
        End If

    Else
            
            If ltype = "ALL" Then
                qry = ""
                qry = qry + Chr(13) & "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD"
                qry = qry + Chr(13) & " FROM ("
                qry = qry + Chr(13) & "select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,"
                qry = qry + Chr(13) & "rm_issb b  Where A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno and A.isqty > 0"
                qry = qry + Chr(13) & "AND A.LOTDT=B.LOTDT and a.lottype=b.lottype and a.baleno=b.baleno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "'"
                qry = qry + Chr(13) & "and b.baleno=a.baleno and b.varcode=a.varcode and b.varcode = '" & rs5!Varcode & "' AND B.ISSTYPE='" & Trim(ISSTYPE) & "'"
                qry = qry + Chr(13) & "and a.divcode=b.divcode "
                qry = qry + Chr(13) & "group by b.lotno,b.lotdt,b.catcd"
                qry = qry + Chr(13) & "UNION  select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(B.ISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,"
                qry = qry + Chr(13) & "rm_issb b ,Rm_lot d Where a.lotno=d.lotno and a.lotdt=d.lotdt and a.catcd=d.catcd and a.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' and D.lotyear ='" & Year(yfdate) & "' AND A.lotno =b.lotno  And A.isqty > 0"
                qry = qry + Chr(13) & "AND A.LOTDT=B.LOTDT and a.lottype=b.lottype and a.baleno=b.baleno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "'"
                qry = qry + Chr(13) & "and b.baleno=a.baleno and b.varcode=a.varcode and b.varcode = '" & rs5!Varcode & "' AND B.ISSTYPE='" & Trim(ISSTYPE) & "'"
                qry = qry + Chr(13) & "and a.divcode=b.divcode "
                qry = qry + Chr(13) & "group by b.lotno,b.lotdt,b.catcd,weightflg   )X"
                qry = qry + Chr(13) & "Group by x.lotno,x.lotdt,x.catcd order by catcd"
            Else
                qry = ""
                qry = qry + Chr(13) & "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD"
                qry = qry + Chr(13) & " FROM ("
                qry = qry + Chr(13) & "select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,"
                qry = qry + Chr(13) & "rm_issb b Where A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno  And A.isqty > 0"
                qry = qry + Chr(13) & "AND A.LOTDT=B.LOTDT and a.lottype=b.lottype and a.baleno=b.baleno  and b.docdt between '" & Format(a, "YYYY/MM/DD") & "' and '" & Format(B, "YYYY/MM/DD") & "'"
                qry = qry + Chr(13) & "and b.baleno=a.baleno and b.varcode=a.varcode and b.varcode = '" & rs5!Varcode & "'  AND B.ISSTYPE='" & Trim(ISSTYPE) & "'"
                qry = qry + Chr(13) & "and a.divcode=b.divcode and a.lottype='" & ltype & "' group by b.lotno,b.lotdt,b.catcd"
                qry = qry + Chr(13) & " UNION  select case when weightflg='M' then sum(B.grwt) else sum(isnull(B.pgrswt,0)) end as grwt,"
                qry = qry + Chr(13) & " case when weightflg='M' then sum(B.tarewt) else sum(isnull(B.ptarewt,0)) end as tarewt,"
                qry = qry + Chr(13) & " sum(C.ISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd"
                qry = qry + Chr(13) & " from RM_LOT A,RM_BALE B,RM_ISSB C Where a.LOTNO = b.LOTNO"
                qry = qry + Chr(13) & " AND A.LOTDT=B.LOTDT AND A.LOTTYPE =B.LOTTYPE AND A.CATCD=B.CATCD AND A.VARCODE= B.VARCODE AND A.dIVCODE=B.DIVCODE"
                qry = qry + Chr(13) & " AND b.LOTNO = C.LOTNO And b.LOTDT = C.LOTDT And b.lottype = C.lottype And b.catcd = C.catcd And b.Varcode = C.Varcode"
                qry = qry + Chr(13) & " AND B.dIVCODE=C.DIVCODE AND B.BALENO=C.BALENO AND A.LOTYEAR='" & Year(yfdate) & "' AND C.DOCDT BETWEEN '" & Format(a, "YYYY/MM/DD") & "' and '" & Format(B, "YYYY/MM/DD") & "'"
                qry = qry + Chr(13) & " AND A.LOTTYPE='" & ltype & "' AND A.VARCODE='" & rs5!Varcode & "' and A.DIVCODE='" & Divcode & "' AND B.issued='Y' AND C.ISSTYPE='" & Trim(ISSTYPE) & "'"
                qry = qry + Chr(13) & " GROUP BY B.LOTNO,B.LOTDT,B.CATCD,WEIGHTFLG )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
            End If
        End If
        
        
        
        
        RS2.Open qry, DB, adOpenStatic

                                                            
         r = 0
        Do While Not RS2.EOF
            r = r + 1
            Set RS78 = New Recordset
            RS78.Open "SELECT isnull(ratekg,0) ratekg FROM rm_lot where DIVCODE='" & Divcode & "' AND  lotno = '" & RS2!lotno & "' and lotdt ='" & Format(RS2!LOTDT, "dd-mmm-yy") & "' and varcode = '" & rs5!Varcode & "' ", DB, adOpenStatic
            ratekg12 = 0
            Do While Not RS78.EOF
            ratekg12 = RS78!ratekg
            RS78.MoveNext
            Loop
            value = val(ratekg12) * val(RS2!netwt)
            Rate = Round(val(ratekg12), 2)
            pertotal1 = 0
            If val(RS2("netwt")) <> 0 And pertotal <> 0 Then
            pertotal1 = Round((val(RS2("netwt")) / pertotal) * 100, 2)
            pertotal1 = pertotal1
            End If
            Call lot(RS2("catcd"), RS2("lotno"), RS2("lotdt"), lotmix)
            Call supplier3(RS2("catcd"), RS2("lotno"), RS2("lotdt"), rs5!Varcode, supplier1)
                                
            Set Rs = New Recordset
            Rs.Open "select ayfdate from pp_year where Ayfdate <='" & Format(RS2("lotdt"), "YYYY-MM-DD") & "' and ayldate >='" & Format(RS2("lotdt"), "YYYY-MM-DD") & "'", DB, adOpenStatic
            If Rs.EOF = False Then
                s = Format(Rs("ayfdate"), "yy")
            Else
                s = Format(RS2("lotdt"), "yy")
            End If
        
            If Sname = supplier1 Then
                Print #z, Space(50);
            Else
                Print #z, Space(5) & Padr(supplier1, 44, "") & Space(1);
                Sname = supplier1
            End If
            'Rate = value / rs2("netwt")
            
            Print #z, Padr(RS2("lotno") & "/" & s, 10, "") & Space(1) & Padl(RS2("qty"), 6, " ") & Space(1) & Padl(INF(RS2("grwt"), 3), 15, " ") & Space(1) & Padl(INF(RS2("tarewt"), 3), 9, " ") & Space(0) & Padl(INF(RS2("netwt"), 3), 14, " ") & Space(1) & Padl(INF(Rate, 2), 11, " ") & Space(2) & Padl(INF(pertotal1, 2), 10, " ") & Padl(INF(value, 2), 16, " ")
            co = co + 1
            I = I + 1
            U = U + 1
            r2 = r2 + 1
            ''Sub Total
            tot1 = tot1 + val(RS2!QTY)
            tot2 = tot2 + val(RS2!GRWT)
            tot3 = tot3 + val(RS2!TAREWT)
            tot4 = tot4 + val(RS2!netwt)
            tot5 = tot5 + Round(val(value), 2)
            totper1 = totper1 + val(pertotal1)
            totrate1 = totrate1 + Rate
                            
            ''Net Total
            ntot1 = ntot1 + val(RS2!QTY)
            ntot2 = ntot2 + val(RS2!GRWT)
            ntot3 = ntot3 + val(RS2!TAREWT)
            ntot4 = ntot4 + val(RS2!netwt)
            ntot5 = ntot5 + Round(val(value), 2)
            Ntotper1 = Ntotper1 + val(pertotal1)
            Ntotrate1 = Ntotrate1 + Rate
            
            ''Grand Total
            gtot1 = gtot1 + val(RS2!QTY)
            gtot2 = gtot2 + val(RS2!GRWT)
            gtot3 = gtot3 + val(RS2!TAREWT)
            gtot4 = gtot4 + val(RS2!netwt)
            gtot5 = gtot5 + Round(value, 2)
            gtotper1 = gtotper1 + val(pertotal1)
            gtotrate1 = gtotrate1 + Rate
                    
            If co >= 54 Then
                VName = " "
                Sname = " "
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, B)
            End If
            RS2.MoveNext
        Loop
        rs5.MoveNext
    Loop
    If co >= 54 Then
        Print #z, Space(5) & String(142, "-")
        Print #z, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call CottRecnHeader4(pg1, CInt(co), a, B)
    End If
    rs1.MoveNext
'Loop
End If
'new
If ltype <> "T" Then
If rs1.EOF Then
    mixlot = ""
    mixgrp = ""
    mixgrp = ""
    mixgrp = ""

    'To find percentage total
    Set RS2 = New Recordset
    If ltype = "ALL" Then
    qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b  Where A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno  And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and b.baleno=a.baleno  and  b.varcode=a.varcode and a.lottype=b.LOTTYPE and a.DIVCODE=b.DIVCODE and A.CATCD=b.CATCD and a.VARCODE=b.VARCODE group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(b.isskgs) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b  Where   A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.LOTDT=B.LOTDT   and a.lotno=b.lotno  and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode=a.varcode and a.lottype=b.LOTTYPE and a.DIVCODE=b.DIVCODE and A.CATCD=b.CATCD and a.VARCODE=b.VARCODE group by b.lotno,b.lotdt,b.catcd " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
          ''rs2.Open "select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(A.netwt) as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c  Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd ORDER BY B.CATCD", DB, adOpenStatic
    Else
    qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b  Where A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and  b.varcode=a.varcode and a.lottype='" & ltype & "' and a.lottype=b.LOTTYPE and a.DIVCODE=b.DIVCODE and A.CATCD=b.CATCD and a.VARCODE=b.VARCODE group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(b.isskgs) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b Where   A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.LOTDT=B.LOTDT   and a.lotno=b.lotno  and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode=a.varcode and a.lottype='" & ltype & "' and a.lottype=b.LOTTYPE and a.DIVCODE=b.DIVCODE and A.CATCD=b.CATCD and a.VARCODE=b.VARCODE group by b.lotno,b.lotdt,b.catcd " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
    End If
    RS2.Open qry, DB, adOpenStatic

    pertotal = 0

    Do While Not RS2.EOF
        pertotal = Round(pertotal, 3) + Round(RS2!netwt, 3)
        RS2.MoveNext
    Loop

    ' End percentagr total
    If Mno = mixlot Then
        Print #z, Space(19) + Space(17)
    Else

        If I > 1 Then
            'totrate1 = Abs(totrate1 / r)
            If tot5 <> 0 Then
                totrate1 = tot5 / tot4
            End If
            Print #z, Space(5) + Space(22) + String(120, "-")
            Print #z, Space(5) + Space(24) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
            Print #z, Space(5) + Space(22) + String(120, "-")
            co = co + 3
        End If

        If U > 1 Then
            If Ntotper1 >= 100 Then
                Ntotper1 = 100
            ElseIf Ntotper1 <= 100 Then
                Ntotper1 = 100
            End If
            'Ntotrate1 = Abs(Ntotrate1 / r2)
            If ntot5 <> 0 Then
            Ntotrate1 = ntot5 / ntot4
            End If
            Print #z, Space(5) + Space(22) + String(120, "-")
            Print #z, Space(5) + Space(24) + Chr(27) + "E" + Padr("Total", 18, " ") & Space(12) & Padl(ntot1, 10, " ") & Space(1) & Padl(INF(ntot2, 3), 15, " ") & Space(1) & Padl(INF(ntot3, 3), 9, " ") & Space(0) & Padl(INF(ntot4, 3), 14, " ") & Space(1) & Padl(INF(Ntotrate1, 2), 11, " ") & Space(2) & Padl(Format(Round(Ntotper1, 0), "0.00"), 10, " ") & Padl(INF(ntot5, 2), 16, " ") + Chr(27) + "F"
            Print #z, Space(5) + Space(22) + String(120, "-")
            co = co + 3
            r2 = 0
        End If
        U = 0
        I = 0
        ntot1 = 0: ntot2 = 0: ntot3 = 0: ntot4 = 0: ntot5 = 0: Ntotper1 = 0: Ntotrate1 = 0
        tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0


        If co >= 54 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, B)
        End If

        MIXNO = ""
        Print #z, Space(5) & Chr(27) + "E" + Padr(mixlot, 14, " ") & Space(8) & Padr(mixgrp, 17, " ") + Chr(27) + "F"
        Mno = mixlot
        VName = " "
        Sname = " "
    End If
    co = co + 1

    Set rs5 = New Recordset
    rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname,A.CATCD from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
        " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND isnull(b.ordno,'') = '' and b.docdt Between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "'" & _
        " and a.docno=b.docno AND A.DIVCODE='" & Divcode & "' and a.DIVCODE=b.DIVCODE ORDER BY A.CATCD,A.VARCODE", DB, adOpenStatic
    r1 = rs5.RecordCount 'For Rate Average

    Do While Not rs5.EOF
        If VName = rs5("Varname") Then
            Print #z, Space(30)
        Else
            If co >= 54 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, B)
            End If

            If I > 1 Then
                'totrate1 = Abs(totrate1 / r)
                If tot5 <> 0 Then
                    totrate1 = tot5 / tot4
                End If
                Print #z, Space(5) + Space(22) + String(120, "-")
                Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
                Print #z, Space(5) + Space(22) + String(120, "-")
                co = co + 3
            End If
            I = 0
            tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0

            Print #z,
            Print #z, Chr(27) + "E" + Space(5) & Padr(rs5!VarName, 25, " ") + Chr(27) + "F"
            ''''Print #z, Space(5) & Padr(rs5!VarName, 25, " ") ''org code
            VName = rs5("Varname")
            Sname = " "
        End If

        co = co + 2
        varno1 = rs5!Varcode

        Set RS2 = New Recordset
        qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
              " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c Where  b.divcode=c.divcode and C.DIVCODE='" & Divcode & "' AND B.ISSUED='Y' AND A.lotno =b.lotno And A.LOTDT=B.LOTDT and a.lotno=b.lotno and c.docdt=b.docdt and b.docno = c.docno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode = '" & rs5!Varcode & "' and isnull(C.ordno,'')='' AND isnull(C.MIXGRP,'')='' and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd " & _
              " UNION " & _
              " select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(b.actisskgs) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c Where  b.divcode=c.divcode and C.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and a.lotno=b.lotno  and b.docdt=c.docdt and b.docno = c.docno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(B, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode = '" & rs5!Varcode & "' and isnull(C.ordno,'')=''  AND isnull(C.MIXGRP,'')='' and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd " & _
              " )X  GROUP BY X.LOTNO,X.LOTDT,X.CATCD ORDER BY X.CATCD"
        RS2.Open qry, DB, adOpenStatic

        ''rs2.Open "select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(A.netwt) as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode = '" & rs5!varcode & "' and c.ordno = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd"

         r = 0
        Do While Not RS2.EOF
            r = r + 1
            Set RS78 = New Recordset
            RS78.Open "SELECT isnull(ratekg,0) ratekg FROM rm_lot where DIVCODE='" & Divcode & "' AND  lotno = '" & RS2!lotno & "' and lotdt ='" & Format(RS2!LOTDT, "dd-mmm-yy") & "' and varcode = '" & rs5!Varcode & "' ", DB, adOpenStatic
            ratekg12 = 0
            Do While Not RS78.EOF
            ratekg12 = val(RS78!ratekg)
            RS78.MoveNext
            Loop
            value = val(ratekg12) * val(RS2!netwt)
            Rate = Round(val(ratekg12), 2)
            pertotal1 = 0
            If val(RS2("netwt")) <> 0 And pertotal <> 0 Then
            pertotal1 = Round((val(RS2("netwt")) / pertotal) * 100, 2)
            pertotal1 = Round(pertotal1, 2)
            End If

            Call lot(RS2("catcd"), RS2("lotno"), RS2("lotdt"), lotmix)
            Call supplier3(RS2("catcd"), RS2("lotno"), RS2("lotdt"), rs5!Varcode, supplier1)

            If Sname = supplier1 Then
                Print #z, Space(50);
            Else
                Print #z, Space(5) & Padr(supplier1, 44, "") & Space(1);
                Sname = supplier1
            End If
            'Rate = value / rs2("netwt")

            Print #z, Padr(lotmix, 10, "") & Space(1) & Padl(RS2("qty"), 6, " ") & Space(1) & Padl(INF(RS2("grwt"), 3), 15, " ") & Space(1) & Padl(INF(RS2("tarewt"), 3), 9, " ") & Space(0) & Padl(INF(RS2("netwt"), 3), 14, " ") & Space(1) & Padl(INF(Rate, 2), 11, " ") & Space(2) & Padl(INF(pertotal1, 2), 10, " ") & Padl(INF(value, 2), 16, " ")
            co = co + 1
            I = I + 1
            U = U + 1
            r2 = r2 + 1
            ''Sub Total
            tot1 = tot1 + val(RS2!QTY)
            tot2 = tot2 + val(RS2!GRWT)
            tot3 = tot3 + val(RS2!TAREWT)
            tot4 = tot4 + val(RS2!netwt)
            tot5 = tot5 + Round(val(value), 2)
            totper1 = totper1 + val(pertotal1)
            totrate1 = totrate1 + Rate

            ''Net Total
            ntot1 = ntot1 + val(RS2!QTY)
            ntot2 = ntot2 + val(RS2!GRWT)
            ntot3 = ntot3 + val(RS2!TAREWT)
            ntot4 = ntot4 + val(RS2!netwt)
            ntot5 = ntot5 + Round(val(value), 2)
            Ntotper1 = Ntotper1 + val(pertotal1)
            Ntotrate1 = Ntotrate1 + Rate

            ''Grand Total
            gtot1 = gtot1 + val(RS2!QTY)
            gtot2 = gtot2 + val(RS2!GRWT)
            gtot3 = gtot3 + val(RS2!TAREWT)
            gtot4 = gtot4 + val(RS2!netwt)
            gtot5 = gtot5 + Round(value, 2)
            gtotper1 = gtotper1 + val(pertotal1)
            gtotrate1 = gtotrate1 + Rate

            If co >= 54 Then
                VName = " "
                Sname = " "
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader4(pg1, CInt(co), a, B)
            End If
            RS2.MoveNext
        Loop
        rs5.MoveNext
    Loop
    If co >= 54 Then
        Print #z, Space(5) & String(142, "-")
        Print #z, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call CottRecnHeader4(pg1, CInt(co), a, B)
    End If
End If
End If
''new
'
If co >= 54 Then
    Print #z, Space(5) & String(142, "-")
    Print #z, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call CottRecnHeader4(pg1, CInt(co), a, B)
End If
'
If I > 1 Then
    'totrate1 = Abs(totrate1 / r)
    totrate1 = tot5 / tot4
    Print #z, Space(5) + Space(22) + String(120, "-")
    Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
End If
''
If Ntotper1 >= 100 Then
    Ntotper1 = 100
ElseIf Ntotper1 <= 100 Then
    Ntotper1 = 100
End If

If co >= 54 Then
    Print #z, Space(5) & String(142, "-")
    Print #z, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call CottRecnHeader4(pg1, CInt(co), a, B)
End If

If U > 1 Then
    Ntotrate1 = Abs(Ntotrate1 / r2)
    Ntotrate1 = ntot5 / ntot4
    Print #z, Space(5) + Space(22) + String(120, "-")
    Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Total", 18, " ") & Space(12) & Padl(ntot1, 10, " ") & Space(1) & Padl(INF(ntot2, 3), 15, " ") & Space(1) & Padl(INF(ntot3, 3), 9, " ") & Space(0) & Padl(INF(ntot4, 3), 14, " ") & Space(1) & Padl(INF(Ntotrate1, 2), 11, " ") & Space(2) & Padl(Format(Round(Ntotper1, 2), "0.00"), 10, " ") & Padl(INF(ntot5, 2), 16, " ") + Chr(27) + "F"
End If


Print #z, Space(5) & String(142, "-")
Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("** Grand Total **", 18, " ") & Space(12) & Padl(gtot1, 10, " ") & Space(1) & Padl(INF(gtot2, 3), 15, " ") & Space(1) & Padl(INF(gtot3, 3), 9, " ") & Space(0) & Padl(INF(gtot4, 3), 14, " ") & Space(1) & Space(11) & Space(2) & Space(10) & Padl(INF(gtot5, 2), 16, " ") + Chr(27) + "F"
Print #z, Space(5) & String(142, "-")

Print #z,
Print #z,
Print #z,
Print #z,
Call footermod(CInt(z), footerstr, 80)
'Print #z, Space(15) + Space(5) & "_______________                ______________                __________________                __________________"
'Print #z, Space(15) + Space(5) & "  Prepared by                    Checked by                    Factory Manager                   General Manager"
Print #z, Chr(12) + Chr(18)
                  
Close #z
z = FreeFile
'Open "c:\CotRec78.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type CotRecn1.TXT>prn"
'Close #z
'z = FreeFile
'RPTV.txtfile = "c:\CotRecn78.TXT"
'RPTV.Batfile = "c:\CotRec78.bat"
Call KALBATPROCESS("CotRecn78")
Screen.MousePointer = 0
End Sub

Public Sub CottRecnHeader4(pg1 As Integer, co As Integer, a As String, B As String)
Print #z, Chr(18)
Print #z, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #z,
Print #z, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
'Print #z, Space(5) & Chr(27) + "E" + "Raw Material Lotwise Issue Report" + Chr(27) + "F" + Space(1) + "from " + Format(a, "dd/mm/yy") + " to " + Format(b, "dd/mm/yy") + Space(58) + CStr(SR) + Space(2) + "Pg. :" + Padl(CStr(pg1), 3, "  ")
Print #z, Space(5) & Chr(27) + "E" + "Raw Material Lotwise Issue Report" + Chr(27) + "F" + Space(1) + "As on" + Format(B, "dd/mm/yy") + Space(59) + CStr(SR) + Space(2) + "Pg. :" + Padl(CStr(pg1), 3, "  ")
Print #z, Space(5) & String(142, "-")
Print #z, Space(5) & "MixLot No             MixGroup "
Print #z, Space(5) & "Variety Name"
Print #z, Space(5) & "Supplier                                    Lot No.        Qty        Gross Wt    Tare Wt       Net Wt     Rate/Kg    Mixing %           Value"
Print #z, Space(5) & String(142, "-")
co = 10
End Sub

Public Sub supplier3(catcd, lotno, LOTDT, Varcode, supplier1)
Dim lotno1, lotmonth, lotcat, lotyear As String
Dim rssupplier As Recordset
Set rssupplier = New Recordset
rssupplier.Open "select SLNAME from rm_lot A,FA_SLMAS B where " & _
                     " lotno = " & lotno & " and lotdt = '" & Format(LOTDT, "dd-mmm-yy") & "'  " & _
                     " and catcd= '" & catcd & "' and varcode= '" & Varcode & "' AND  A.SUPCD=B.SLCODE", DB, adOpenStatic
    If rssupplier.RecordCount > 0 Then
        supplier1 = rssupplier!sLname
    End If
End Sub
