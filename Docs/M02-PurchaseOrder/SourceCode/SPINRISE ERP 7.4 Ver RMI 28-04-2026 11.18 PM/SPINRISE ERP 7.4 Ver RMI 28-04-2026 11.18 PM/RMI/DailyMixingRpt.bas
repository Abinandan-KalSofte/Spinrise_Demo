Attribute VB_Name = "DailyMixingRpt"
Dim Rs As Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim tot As Double
Dim cntname As String
'Dim rp As New MixingRep
'Dim DIVNAME As String
Public Sub DailyMixingReport(F_Date As String, MIXNO As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
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
Dim Cnn As Connection
Set Cnn = New Connection
Dim T_Date As String
Dim ClsTot  As Double
Dim ClsTot1 As Double
Dim Totkg   As Double
Dim Totkg1  As Double
Dim Isskg   As Double
Dim Isskg1  As Double

T_Date = F_Date
PageLen = 60
Set rs1 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs4 = New Recordset
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0
tot12 = 0: tot13 = 0: tot14 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot10 = 0: gtot12 = 0: gtot13 = 0: gtot14 = 0

ClsTot = 0: ClsTot1 = 0: Totkg = 0: Totkg1 = 0
Isskg = 0: Isskg1 = 0
Dim ISSTYPE As String

Set Rs = New Recordset

Rs.Open "select Isnull(Ordno,0)as Mixlotno,isnull(cntcd,'')as Cntcd,A.ISSTYPE,* From rm_MixingHd A where DOCNO='" & MIXNO & "' AND docdt='" & Format(F_Date, "YYYY-MM-DD") & "' AND  DOCNO IN " & _
        " (SELECT DISTINCT DOCNO FROM RM_MixingDt WHERE CATCD IN ('P','V') AND DOCDT='" & Format(F_Date, "YYYY-MM-DD") & "')", Cnn, adOpenStatic

If Rs.RecordCount = 0 Then
    MsgBox "NO Mixing Detail Found For This Selection", vbInformation, head
    Exit Sub
End If
ISSTYPE = Rs("ISSTYPE")

Set rsi = New Recordset
rsi.Open "select issue_desc from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
issdesc = ""
If rsi.RecordCount > 0 Then
    issdesc = "  Unit : " + rsi(0)
End If
Set rsg = New Recordset
rsg.Open "select DESCRIPTION from IG_PRODUCT where PRODUCT_CODE='" & Trim(Rs("cntcd")) & "'", DB, adOpenStatic
If rsg.RecordCount > 0 Then
cntname = rsg!Description
Else
cntname = " "
End If

    c = 0
    pg1 = 0
    Set rptv = New Report.ReportView
    a = FreeFile
    Close
   ' Open "c:\per_conoils.TXT" For Output As #a
   
Open KALFOLDERDATA & "\per_conoils.TXT" For Output As #a
    Print #a,
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(5) + "Daily Mixing Report as on " & Format(F_Date, "DD/MM/YY") & Space(23) + Format(pdate, "dd/mm/yy") + Space(3) + "Pg.:" + Padl(1, 3, " ")
    Print #a, Space(5) + String(75, "-")
    Print #a, Space(5) + "Lot No. : " & Padr(Rs!mixlotno, 15, " ") & "Count : " & Padr(cntname, 10, " ") & Padl(issdesc, 32, " ")
    Print #a, Space(5) + String(75, "-")


Rs.MoveFirst

Set rswst = New Recordset
rswst.Open "select isnull(sum(wkgs),0) from rm_mixingwaste where divcode='" & Divcode & "' and docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "YYYY-MM-DD") & "'", Cnn, adOpenStatic
wkgs = 0
If rswst.RecordCount > 0 Then
    wkgs = rswst(0)
End If

Set rs3 = New Recordset
rs3.Open "select isnull(oilcode1,'') Oilcode1,isnull(oilwt1,0) as Oilwt1,isnull(oilcode2,'') as Oilcode2,isnull(oilwt2,0) as Oilwt2,isnull(tint,0) as Tint,isnull(wtrwt,0) as Wtrwt,isnull(Tintwt,0) as TintWt from rm_MixingHd where docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "YYYY-MM-DD") & "'", Cnn, adOpenStatic


Set rs4 = New Recordset
rs4.Open "select sum(kgs) isskgs from rm_MixingDt where docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "YYYY-MM-DD") & "'", Cnn, adOpenStatic

totkgs = rs4(0)

If rs3.RecordCount > 0 Then
''Please Print Mixing Oil Details
Print #a, Space(5) & Padr("Tint", 10, " ") & Padr(rs3!Tint, 14, " ")
Print #a,
Print #a, Space(5) & Padr("Tint Wt.", 10, " ") & Padl(Format((rs3!tintwt * 100 / rs4!issKgs), "####0.00") & " %", 10, " ") & Padl(Format(rs3!tintwt, "###0.000") & " Kgs", 14, " ")
Print #a,
Print #a, Space(5) & Padr("Oil1", 10, " ") & Padl(Format((rs3!oilwt1 * 100 / rs4!issKgs), "####0.00") & " %", 10, " ") & Padl(Format(rs3!oilwt1, "###0.000") & " Ltr", 14, " ")
Print #a,
Print #a, Space(5) & Padr("Oil2", 10, " ") & Padl(Format((rs3!oilwt2 * 100 / rs4!issKgs), "####0.00") & " %", 10, " ") & Padl(Format(rs3!oilwt2, "###0.000") & " Ltr", 14, " ")
Print #a,
Print #a, Space(5) & Padr("Water", 10, " ") & Padl(Format((rs3!wtrwt * 100 / rs4!issKgs), "####0.00") & " %", 10, " ") & Padl(Format(rs3!wtrwt, "###0.000") & " Ltr", 14, " ")
Print #a,
Print #a, Space(5) & Padr("Waste", 10, " ") & Padl(Format((wkgs * 100 / rs4!issKgs), "####0.00") & " %", 10, " ") & Padl(Format(wkgs, "###0.000") & " Kgs", 14, " ")
Print #a,
End If
SR = "('P','V')"
Varcode = ""
    Set RS2 = New Recordset
   '''''rs2.Open "select distinct varcode from rm_issb where docno=" & rs("docno") & " and docdt='" & Format(rs("docdt"), "YYYY-MM-DD") & "'", cnn, adOpenStatic
    RS2.Open "select distinct varcode from rm_MixingDt where docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "YYYY-MM-DD") & "'", Cnn, adOpenStatic
    While Not RS2.EOF
        If Varcode = "" Then
            Varcode = "('" + RS2("Varcode") + "'"
        Else
            Varcode = Varcode + ",'" + RS2("varcode") + "'"
        End If
        RS2.MoveNext
    Wend
Varcode = Varcode + ")"

''This Query For Viscose AND Polyster Variety Stock statement which is issued BY THIS Mixing Number
' total Issue Calculation
Set rs4 = New Recordset
'rs4.Open "select a.varcode,varname,sum(isskgs)isskgs from rm_issb a,rm_var b where a.varcode=b.varcode and docno=" & rs("docno") & " and docdt='" & Format(rs("docdt"), "YYYY-MM-DD") & "' Group by a.varcode,varname ", cnn, adOpenStatic
rs4.Open "select a.varcode,varname,sum(kgs)isskgs,A.CATCD from rm_MixingDt a,rm_var b where A.ISSTYPE='" & ISSTYPE & "' AND a.varcode=b.varcode and docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "YYYY-MM-DD") & "' Group by a.varcode,varname,A.CATCD ORDER BY A.CATCD DESC", Cnn, adOpenStatic



''''' Single Document No Issue Calculation

Set rs5 = New Recordset

rs5.Open "select a.varcode,varname,sum(kgs)isskgs,A.CATCD from rm_MixingDt a,rm_var b where A.ISSTYPE='" & ISSTYPE & "' AND a.varcode=b.varcode and docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "YYYY-MM-DD") & "' Group by a.varcode,varname,A.CATCD ORDER BY A.CATCD DESC", Cnn, adOpenStatic

''For Day Opening
Set rs1 = New Recordset
rs1.Open "select x.catcd as Category,sum(x.opisskgs)-(sum(x.opprodkgs)) as openingkgs,sum(x.inkgs) as TransferIn,sum(x.outkgs) as TransferOut," & _
        "((sum(x.opisskgs)-(sum(x.opprodkgs)))+sum(x.inkgs))- (sum(x.outkgs)) as Closekgs from " & _
        "(select catcd,isnull(sum(isskgs),0) as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_mixingstock where ISSTYPE='" & ISSTYPE & "' AND issdt<'" & Format(F_Date, "yyyy-mm-dd") & "' group by catcd " & _
        "Union All select catcd,0 as opisskgs,isnull(sum(kgs),0) as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_mixingdt a,rm_mixinghd b where  B.ISSTYPE='" & ISSTYPE & "'AND a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.docno=b.docno and a.docdt=b.docdt " & _
        "and a.docdt<'" & Format(F_Date, "yyyy-mm-dd") & "' and catcd in " & SR & " group by catcd " & _
        "Union All select catcd,0 as opisskgs,0 as opprodkgs, " & _
        "isnull(sum(isskgs),0) as inkgs,0 as outkgs," & _
        "0 as closekgs from rm_mixingstock where  ISSTYPE='" & ISSTYPE & "'AND issdt='" & Format(F_Date, "yyyy-mm-dd") & "' group by catcd " & _
        "Union All select catcd,0 as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,isnull(sum(kgs),0) as outkgs,0 as closekgs from " & _
        "rm_mixingdt a,rm_mixinghd b where  B.ISSTYPE='" & ISSTYPE & "'AND a.divcode='" & Divcode & "' and a.docno=b.docno and a.docdt=b.docdt and " & _
        "a.docdt='" & Format(F_Date, "yyyy-mm-dd") & "' and catcd in " & SR & "  group by catcd)x group by catcd ORDER BY CATCD DESC ", Cnn, adOpenStatic


''Please Print Stock Details Here
''UptoThis Issue Opening

    

Print #a, Space(5) & CENTRE("Viscose", 35, " ") & Space(5) & CENTRE("Polyester", 40, " ")
Print #a,
rs1.MoveFirst
    Set rsc = New Recordset
    rsc.Open "SELECT ISNULL(SUM(KGS),0)""TotQty"" FROM RM_MIXINGDT  WHERE isstype='" & ISSTYPE & "' and catcd='V'  and  DOCNO<" & Rs("DOCNO") & " AND DOCDT='" & Format(Rs("DOCDT"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    iskgs1 = 0
    If rsc.RecordCount > 0 Then
        issKgs1 = rsc("TotQty")
    End If
    issKgs1 = val(rs1!Openingkgs) + val(rs1!transferin) - issKgs1
Print #a, Space(5) & Padr("Opening", 20, " ") & Padl(Format(issKgs1, "###0.00") & " Kgs.", 15, " ");
rs1.MoveLast
    Set rsc = New Recordset
    rsc.Open "SELECT ISNULL(SUM(KGS),0)""TotQty"" FROM RM_MIXINGDT  WHERE isstype='" & ISSTYPE & "' and catcd='P'  and  DOCNO<" & Rs("DOCNO") & " AND DOCDT='" & Format(Rs("DOCDT"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    iskgs2 = 0
    If rsc.RecordCount > 0 Then
        issKgs2 = rsc("TotQty")
    End If
    issKgs2 = val(rs1!Openingkgs) + val(rs1!transferin) - issKgs2
Print #a, Space(5) & Padr("Opening", 20, " ") & Padl(Format(issKgs2, "###0.00") & " Kgs.", 15, " ")
Print #a,
rs4.MoveFirst
Print #a, Space(5) & Padr("Issue for Lot", 20, " ") & Padl(Format(rs4!issKgs, "###0.00") & " Kgs.", 15, " ");
Isskg = rs4!issKgs
rs4.MoveLast
Print #a, Space(5) & Padr("Issue for Lot", 20, " ") & Padl(Format(rs4!issKgs, "###0.00") & " Kgs.", 15, " ")
Isskg1 = rs4!issKgs
Print #a,
ClsTot = issKgs1 - Isskg
rs1.MoveFirst '''''''''
Print #a, Space(5) & Padr("Closing", 20, " ") & Padl(Format(ClsTot, "#0.00") & " Kgs.", 15, " ");

ClsTot1 = issKgs2 - Isskg1
rs1.MoveLast '''''''''
Print #a, Space(5) & Padr("Closing", 20, " ") & Padl(Format(ClsTot1, "#.00") & " Kgs.", 15, " ")

Print #a,



If rs5.RecordCount > 0 Then
''please Print Variety wise Issue Quantity Here
    Print #a, Space(20) & String(43, "-")
    Print #a, Space(20) & Padr("Variety", 20, " ") & Space(1) & Padl("Kgs", 15, " ") & Space(1) & Padl("%", 6, " ")
    Print #a, Space(20) & String(43, "-")
    tot = 0
    rs5.MoveFirst
    While Not rs5.EOF
        X = Round((rs5("ISSKGS") / totkgs) * 100, 2)
        Print #a, Space(20) & Padr(rs5!VarName, 20, " ") & Space(1) & Padl(INF(rs5!issKgs, 2), 15, " ") & Space(1) & Padl(Format(X, "#.00"), 6, " ")
        tot = tot + rs5!issKgs
        Print #a,
        rs5.MoveNext
    Wend
    Print #a, Space(20) & String(43, "-")
    Print #a, Space(20) & Padr("Lot Quantity", 20, " ") & Space(1) & Padl(INF(tot, 2), 15, " ") & Space(1) & Padl(Format("100", "#.00"), 6, " ")
    Print #a, Space(20) & String(43, "-")
End If
    Print #a, Chr(12)
    Call footermod(CInt(a), rp.UserFooter1.SelectedStr, 85)
    Close #a
    a = FreeFile
'    Open "c:\per_conoils.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type per_conoils.TXT>PRN"
'    Close #a
'    RPTV.txtfile = "c:\per_conoils.TXT"
'    RPTV.Batfile = "c:\per_conoils.bat"
Call KALBATPROCESS("per_conoils")
    Screen.MousePointer = 0
End Sub

Public Sub header()
    Print #a,
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(5) + "Daily Mixing Report as on " & Date1 & Space(9) + Format(pdate, "dd/mm/yy") + Space(3) + "Pg.:" + Padl(CStr(pg), 3, " ")
    Print #a, Space(5) + String(80, "-")

End Sub
Public Sub PrdMixingReport(F_Date As String, T_Date As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
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
Dim Cnn As Connection
Set Cnn = New Connection

PageLen = 60
Set rs1 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs4 = New Recordset
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0
tot12 = 0: tot13 = 0: tot14 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot10 = 0: gtot12 = 0: gtot13 = 0: gtot14 = 0


    Set Rs = New Recordset
    Rs.Open "select docno,docdt,Isnull(Ordno,0)as Mixlotno,isnull(cntcd,'')as Cntcd,DESCRIPTION From rm_issh A,RM_ISSUETYPE B,IG_PRODUCT C where A.CNTCD*=C.PRODUCT_CODE AND docdt>='" & Format(F_Date, "YYYY-MM-DD") & "' and docdt<='" & Format(T_Date, "YYYY-MM-DD") & "' AND B.ISSTYPE='P' AND a.ISSTYPE=b.ISSUE_CODE AND DOCNO IN " & _
        " (SELECT DISTINCT DOCNO FROM RM_ISSB WHERE CATCD IN ('P','V') AND DOCDT>='" & Format(F_Date, "YYYY-MM-DD") & "') and docdt<='" & Format(T_Date, "YYYY-MM-DD") & "' ORDER BY DOCDT", Cnn, adOpenStatic

    If Rs.RecordCount = 0 Then
        MsgBox "NO Mixing Detail Found Between This Date", vbInformation, head
        Exit Sub
    End If

    co = 0
    pg1 = 1
    Set rptv = New Report.ReportView
        
    a = FreeFile
    Close
   ' Open "c:\MixingReg.TXT" For Output As #a
    Open KALFOLDERDATA & "\MixingReg.TXT" For Output As #a
    Print #a,
    Call MixingRegHeader(F_Date, T_Date, pg1)
    vbales = 0
    vqty = 0
    pbales = 0
    pqty = 0
    vgqty = 0
    vgbales = 0
    Pgqty = 0
    Pgbales = 0
    subtot = 0
    subqty = 0
    DOCDT = ""
    g = 0
    While Not Rs.EOF

          Set rsg = New Recordset

          rsg.Open " SELECT VARNAME,SUM(BALES)AS BALES,SUM(QUANTITY)AS QUANTITY FROM( " & _
                   " select varname,count(baleno) AS BALES,0 AS QUANTITY from rm_issb A,RM_VAR B where A.VARCODe=B.VARCODE AND docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "'  and a.catcd='V' AND A.ISSUED='Y' GROUP BY VARNAME " & _
                   " Union All " & _
                   " select varname,0 AS BALES,sum(ACTisskgs) AS QUANTITY from rm_issb A,RM_VAR B where A.VARCODe=B.VARCODE AND docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "'  and a.catcd='V' GROUP BY VARNAME)X Group by varname order by varname", DB, adOpenStatic
          
          Set rsg1 = New Recordset

          rsg1.Open " SELECT VARNAME,SUM(BALES)AS BALES,SUM(QUANTITY)AS QUANTITY FROM( " & _
                   " select varname,count(baleno) AS BALES,0 AS QUANTITY from rm_issb A,RM_VAR B where A.VARCODe=B.VARCODE AND docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "'  and a.catcd='P' AND A.ISSUED='Y' GROUP BY VARNAME " & _
                   " Union All " & _
                   " select varname,0 AS BALES,sum(ACTisskgs) AS QUANTITY from rm_issb A,RM_VAR B where A.VARCODe=B.VARCODE AND docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "'  and a.catcd='P' GROUP BY VARNAME)X Group by varname order by varname", DB, adOpenStatic
          If DOCDT <> Rs("docdt") Then
                Print #a, Space(3) + Padr(Format(Rs("docdt"), "DD/MM/YYYY"), 10, " ") + Space(1) + Padr(Rs("MIXLOTNO"), 5, " ") + Space(1) + Padr(Rs("DESCRIPTION"), 15, " ") + Space(1) + Padl(" ", 7, " ") + Space(1);
          Else
                Print #a, Space(3) + Padr(" ", 10, " ") + Space(1) + Padr(Rs("MIXLOTNO"), 5, " ") + Space(1) + Padr(Rs("DESCRIPTION"), 15, " ") + Space(1) + Padl(" ", 7, " ") + Space(1);
                g = g + 1
          End If
          DOCDT = Rs("docdt")
          If rsg.RecordCount > 0 Then
            subtot = rsg("bales")
            subqty = rsg("quantity")
            vbales = vbales + rsg("bales")
            vqty = vqty + rsg("quantity")
            vgbales = vgbales + rsg("bales")
            vgqty = vgqty + rsg("quantity")
            Print #a, Padr(rsg("VARNAME"), 18, " ") + Space(1) + Padl(rsg("BALES"), 4, " ") + Space(1) + Padl(Format(rsg("Quantity"), "#.000"), 12, " ") + Space(2);
          Else
            Print #a, Padr(" ", 18, " ") + Space(1) + Padl(" ", 4, " ") + Space(1) + Padl(" ", 12, " ") + Space(2);
          End If
          
          If rsg1.RecordCount > 0 Then
            subtot = subtot + rsg1("bales")
            subqty = subqty + rsg1("quantity")
            pbales = pbales + rsg1("bales")
            pqty = pqty + rsg1("quantity")
            Pgbales = Pgbales + rsg1("bales")
            Pgqty = Pgqty + rsg1("quantity")
            Print #a, Padr(rsg1("VARNAME"), 18, " ") + Space(1) + Padl(rsg1("BALES"), 4, " ") + Space(1) + Padl(Format(rsg1("Quantity"), "#.000"), 12, " ") + Space(1) + Padl(subtot, 4, " ") + Space(1) + Padl(Format(subqty, "#.000"), 12, " ")
          Else
            Print #a, Padr(" ", 18, " ") + Space(1) + Padl(" ", 4, " ") + Space(1) + Padl(" ", 12, " ") + Space(1) + Padl(subtot, 4, " ") + Space(1) + Padl(Format(subqty, "#.000"), 12, " ")
          End If
          subtot = 0
          subqty = 0
          Rs.MoveNext
          co = co + 1
            If co > 60 Then
                co = 0
                Print #a,
                Print #a, Space(3) & String(133, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                Call MixingRegHeader(F_Date, T_Date, pg1)
            End If
          
          If Rs.EOF = False Then
            If DOCDT <> Rs("docdt") Then
                If g > 0 Then
                    ''day total
                    TOTBALES = val(vbales) + val(pbales)
                    totqty = val(vqty) + val(pqty)
                    Print #a,
                    Print #a, Space(3) + String(133, "-")
                    Print #a, Space(3) + Padr(" ", 10, " ") + Space(1) + Padr(" ", 5, " ") + Space(1) + Padr(" ", 15, " ") + Space(1) + Padl(" ", 7, " ") + Space(1) + Padr("Day Total ", 18, " ") + Space(1) + Padl(vbales, 4, " ") + Space(1) + Padl(Format(vqty, "#.000"), 12, " ") + Space(1) + Padr(" ", 18, " ") + Space(2) + Padl(pbales, 4, " ") + Space(1) + Padl(Format(pqty, "#.000"), 12, " ") + Space(1) + Padl(TOTBALES, 4, " ") + Space(1) + Padl(Format(totqty, "#.000"), 12, " ")
                    Print #a, Space(3) + String(133, "-")
                    pbales = 0
                    pqty = 0
                    vbales = 0
                    vqty = 0
                    co = co + 4
                    If co > 60 Then
                        co = 0
                        Print #a,
                        Print #a, Space(3) & String(133, "-")
                        Print #a, Chr(12)
                        pg1 = pg1 + 1
                        Call MixingRegHeader(F_Date, T_Date, pg1)
                    End If
                    g = 0
                End If
            End If
         End If
         If Rs.EOF = True Then
                If g > 0 Then
                    ''day total
                    TOTBALES = val(vbales) + val(pbales)
                    totqty = val(vqty) + val(pqty)
                    Print #a,
                    Print #a, Space(3) + String(133, "-")
                    Print #a, Space(3) + Padr(" ", 10, " ") + Space(1) + Padr(" ", 5, " ") + Space(1) + Padr(" ", 15, " ") + Space(1) + Padl(" ", 7, " ") + Space(1) + Padr("Day Total", 18, " ") + Space(1) + Padl(vbales, 4, " ") + Space(1) + Padl(Format(vqty, "#.00"), 12, " ") + Space(1) + Padr(" ", 18, " ") + Space(2) + Padl(pbales, 4, " ") + Space(1) + Padl(Format(pqty, "#.00"), 12, " ") + Space(1) + Padl(TOTBALES, 4, " ") + Space(1) + Padl(Format(totqty, "#.00"), 12, " ")
                    Print #a, Space(3) + String(133, "-")
                    co = co + 4
                    If co > 60 Then
                        co = 0
                        Print #a, Space(3) & String(133, "-")
                        Print #a, Chr(12)
                        pg1 = pg1 + 1
                        Call MixingRegHeader(F_Date, T_Date, pg1)
                    End If
                End If
         End If
    Wend
    TOTBALES = val(vgbales) + val(Pgbales)
    totqty = val(vgqty) + val(Pgqty)
    Print #a, Space(3) + String(133, "-")
    Print #a, Space(3) + Padr(" ", 10, " ") + Space(1) + Padr(" ", 5, " ") + Space(1) + Padr(" ", 15, " ") + Space(1) + Padl(" ", 7, " ") + Space(1) + Padr("Grand Total", 18, " ") + Space(1) + Padl(vgbales, 4, " ") + Space(1) + Padl(Format(vgqty, "#.000"), 12, " ") + Space(1) + Padr(" ", 18, " ") + Space(2) + Padl(Pgbales, 4, " ") + Space(1) + Padl(Format(Pgqty, "#.000"), 12, " ") + Space(1) + Padl(TOTBALES, 4, " ") + Space(1) + Padl(Format(totqty, "#.000"), 12, " ")
    Print #a, Space(3) + String(133, "-")
    Print #a, Chr(12)
    Close #a
    a = FreeFile
'    Open "c:\mixingReg.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type mixingreg.TXT>PRN"
'    Close #a
'    RPTV.txtfile = "c:\mixingreg.TXT"
'    RPTV.Batfile = "c:\mixingreg.bat"
Call KALBATPROCESS("mixingreg")
    Screen.MousePointer = 0
End Sub

Private Sub MixingRegHeader(FD As String, TD As String, pg As Integer)
    Print #a,
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 133, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(3) + "Issue List : From " & Format(FD, "DD/MM/YY") & " To " & Format(TD, "DD/MM/YY") & Space(73) + Format(pdate, "dd/mm/yy") + Space(3) + "Pg.:" + Padl(CStr(pg), 3, " ")
    Print #a, Space(3) + String(133, "-")
    Print #a, Space(3) + Space(43) + CENTRE("Viscose", 34, " ") + Space(1) + CENTRE("Polyster", 34, " ") + Space(1) + CENTRE("Total", 17, " ")
    Print #a, Space(3) + Padr("Date", 10, " ") + Space(1) + Padr("Lotno", 5, " ") + Space(1) + Padr("Count", 15, " ") + Space(1) + Padl(" ", 7, " ") + Space(1) + Padr("Item", 18, " ") + Space(1) + Padl("Bales", 4, " ") + Space(1) + Padl("Quantity", 12, " ") + Space(2) + Padr("Item", 18, " ") + Space(1) + Padl("Bales", 4, " ") + Space(1) + Padl("Quantity", 12, " ") + Space(1) + Padl("Bales", 4, " ") + Space(1) + Padl("Quantity", 12, " ")
    Print #a, Space(3) + String(133, "-")
    co = 8
End Sub

Private Sub MixingRegNew(FD As String, TD As String, pg As Integer)
    Print #a,
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 133, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(3) + "Mixing List: From " & Format(FD, "DD/MM/YY") & " To " & Format(TD, "DD/MM/YY") & Space(73) + Format(pdate, "dd/mm/yy") + Space(3) + "Pg.:" + Padl(CStr(pg), 3, " ")
    Print #a, Space(3) + String(133, "-")
    Print #a, Space(3) + Padr("    ", 8, " ") + Space(1) + Padr("     ", 5, " ") + Space(1) + Padr("     ", 17, " ") + Space(1) + Padr("          ", 15, " ") + Space(1) + Padl("       ", 8, " ") + Space(1) + Padr("    ", 17, " ") + Space(1) + Padl("Consumption", 14, " ") + Space(1) + Padl("Up to Date", 13, " ") + Space(1) + Padr("<-------Oil-------->", 20, " ")
    Print #a, Space(3) + Padr("Date", 8, " ") + Space(1) + Padr("LotNo", 5, " ") + Space(1) + Padr("Count", 17, " ") + Space(1) + Padr("TintColour", 15, " ") + Space(1) + Padl("TintQty", 8, " ") + Space(1) + Padr("Item", 17, " ") + Space(1) + Padl("Quantity", 14, " ") + Space(1) + Padl("Quantity", 13, " ") + Space(1) + Padr("Name", 13, " ") + Space(1) + Padl("Qty", 6, " ") + Space(1) + Padl("Water", 7, " ")
    Print #a, Space(3) + String(133, "-")
End Sub
Public Sub MixingReport(F_Date As String, T_Date As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
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
Dim Cnn As Connection
Set Cnn = New Connection

PageLen = 60
Set rs1 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs4 = New Recordset
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0
tot12 = 0: tot13 = 0: tot14 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot10 = 0: gtot12 = 0: gtot13 = 0: gtot14 = 0


    Set Rs = New Recordset
    Rs.Open "select DOCNO,docdt,Isnull(Ordno,0)as Mixlotno,isnull(cntcd,'')as Cntcd,DESCRIPTION From rm_MIXINGHD A,RM_ISSUETYPE B,IG_PRODUCT C where A.CNTCD*=C.PRODUCT_CODE AND docdt>='" & Format(F_Date, "YYYY-MM-DD") & "' and docdt<='" & Format(T_Date, "YYYY-MM-DD") & "' AND B.ISSTYPE='P' AND a.ISSTYPE=b.ISSUE_CODE AND DOCNO IN " & _
        " (SELECT DISTINCT DOCNO FROM RM_MixingDt WHERE CATCD IN ('P','V') AND DOCDT>='" & Format(F_Date, "YYYY-MM-DD") & "') and docdt<='" & Format(T_Date, "YYYY-MM-DD") & "' ORDER BY DOCDT", Cnn, adOpenStatic

    If Rs.RecordCount = 0 Then
        MsgBox "No Mixing Detail Found Between This Date", vbInformation, head
        Exit Sub
    End If

    c = 0
    pg1 = 1
    Set rptv = New Report.ReportView
        
    a = FreeFile
    Close
    'Open "c:\MixingReg.TXT" For Output As #a
     Open KALFOLDERDATA & "\MixingReg.TXT" For Output As #a
    Print #a,
    Call MixingRegNew(F_Date, T_Date, pg1)
    vbales = 0
    vqty = 0
    pbales = 0
    pqty = 0
    vgqty = 0
    vgbales = 0
    Pgqty = 0
    Pgbales = 0
    subtot = 0
    subqty = 0
    DOCDT = ""
    g = 0
    While Not Rs.EOF
          
          '',TINT,TINTWT,OILCODE1,OILCODE2,OILWT1,OILWT2,WTRWT
          '',ISNULL(TINT,'')TINT,ISNULL(TINTWT,0)TINTWT,ISNULL(OILCODE1,'')OILCODE1,ISNULL(OILCODE2,'')OILCODE2,ISNULL(OILWT1,0)OILWT1,ISNULL(OILWT2,0)OILWT2,ISNULL(WTRWT,0)WTRWT,
          Set rsg = New Recordset
          rsg.Open "select varname,sum(kgs) AS QUANTITY from rm_mixingdt A,RM_VAR B where A.VARCODe=B.VARCODE AND docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "'  GROUP BY VARNAME order by varname", DB, adOpenStatic
                   
          Set rshd = New Recordset
          rshd.Open "SELECT ISNULL(TINT,'')TINT,ISNULL(TINTWT,0)TINTWT,ISNULL(OILCODE1,'')OILCODE1,ISNULL(OILCODE2,'')OILCODE2,ISNULL(OILWT1,0)OILWT1,ISNULL(OILWT2,0)OILWT2,ISNULL(WTRWT,0)WTRWT FROM RM_MIXINGHD WHERE DOCNO=" & Rs("DOCNO") & " AND DOCDT='" & Format(Rs("DOCDT"), "YYYY-MM-DD") & "' AND ORDNO='" & Rs("MIXLOTNO") & "' AND CNTCD='" & Rs("CNTCD") & "'", DB, adOpenStatic
          Tint = "": tintwt = 0: oilcode1 = "": oilcode2 = "": oilwt1 = 0: oilwt2 = 0: wtrwt = 0
          
          If rshd.RecordCount > 0 Then
                Tint = rshd("TINT"): tintwt = rshd("TINTWT"): oilwt1 = rshd("OILWT1"): oilwt2 = rshd("OILWT2"): wtrwt = rshd("WTRWT")
                
                Set oilrs = New Recordset
                oilrs.Open "select * from rm_oil where oilcode='" & rshd("oilcode1") & "'", DB, adOpenStatic
                If oilrs.RecordCount > 0 Then
                    oilcode1 = oilrs("oildesc")
                End If
                
                Set oilrs = New Recordset
                oilrs.Open "select * from rm_oil where oilcode='" & rshd("oilcode2") & "'", DB, adOpenStatic
                If oilrs.RecordCount > 0 Then
                    oilcode2 = oilrs("oildesc")
                End If
                
          End If
                    
          Set rsdt = New Recordset
          rsdt.Open "SELECT ISNULL(SUM(KGS),0)""TotQty"" FROM RM_MIXINGDT a,rm_mixinghd b WHERE a.divcode=b.divcode and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and  a.DOCNO<=" & Rs("DOCNO") & " AND a.DOCDT<='" & Format(Rs("DOCDT"), "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and ordno='" & Rs("mixlotno") & "'", DB, adOpenStatic
          UpToDateQty = 0
          If rsdt.RecordCount > 0 Then
            UpToDateQty = rsdt("TotQty")
          End If
          rsg.MoveFirst
          If DOCDT <> Rs("docdt") Then
                Print #a,
                Print #a, Space(3) + Padr(Format(Rs("DOCDT"), "DD/MM/YY"), 8, " ") + Space(1) + Padr(Rs("mixlotno"), 5, " ") + Space(1) + Padr(Rs("DESCRIPTION"), 17, " ") + Space(1) + Padr(Tint, 15, " ") + Space(1) + Padl(INF(tintwt, 3), 8, " ") + Space(1) + Padl(rsg("varname"), 17, " ") + Space(1) + Padl(INF(rsg("Quantity"), 3), 14, " ") + Space(1) + Padl(INF(UpToDateQty, 3), 13, " ") + Space(1) + Padr(oilcode1, 13, " ") + Space(1) + Padl(INF(oilwt1, 3), 6, " ") + Space(1) + Padl(INF(wtrwt, 3), 7, " ")
                c = c + 2
          Else
                Print #a, Space(3) + Padr(" ", 8, " ") + Space(1) + Padr(Rs("mixlotno"), 5, " ") + Space(1) + Padr(Rs("DESCRIPTION"), 17, " ") + Space(1) + Padr(Tint, 15, " ") + Space(1) + Padl(INF(tintwt, 3), 8, " ") + Space(1) + Padl(rsg("varname"), 17, " ") + Space(1) + Padl(INF(rsg("Quantity"), 3), 14, " ") + Space(1) + Padl(INF(UpToDateQty, 3), 13, " ") + Space(1) + Padr(oilcode1, 13, " ") + Space(1) + Padl(INF(oilwt1, 3), 6, " ") + Space(1) + Padl(INF(wtrwt, 3), 7, " ")
                c = c + 1
                g = g + 1
          End If
          
            If rsg.EOF = False Then rsg.MoveNext
            While Not rsg.EOF
                If rsg.AbsolutePosition > 2 Then
                    oilcode2 = ""
                    oilwt2 = 0
                End If
                Print #a, Space(3) + Padr("", 8, " ") + Space(1) + Padr("", 5, " ") + Space(1) + Padr("", 17, " ") + Space(1) + Padr("", 15, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(rsg("varname"), 17, " ") + Space(1) + Padl(INF(rsg("Quantity"), 3), 14, " ") + Space(1) + Padl(" ", 13, " ") + Space(1) + Padr(oilcode2, 13, " ") + Space(1) + Padl(INF(oilwt2, 3), 6, " ") '+ Space(1) + Padl(INF(wtrwt, 3), 7, " ")
                c = c + 1
                If c > 60 Then
                    c = 0
                    Print #a,
                    Print #a, Space(3) & String(133, "-")
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    Call MixingRegNew(F_Date, T_Date, pg1)
                End If
                rsg.MoveNext
            Wend
            
            c = c + 1
            If c > 60 Then
                c = 0
                Print #a,
                Print #a, Space(3) & String(133, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                Call MixingRegNew(F_Date, T_Date, pg1)
            End If
          
          DOCDT = Rs("docdt")
          Rs.MoveNext
    Wend
    Print #a, Space(3) + String(133, "-")
    Print #a, Chr(12)
    Print #a, Chr(12)
 Call footermod(CInt(a), rp.UserFooter1.SelectedStr, 85)
    Close #a
    a = FreeFile
'    Open "c:\mixingReg.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type mixingreg.TXT>PRN"
'    Close #a
'    RPTV.txtfile = "c:\mixingreg.TXT"
'    RPTV.Batfile = "c:\mixingreg.bat"
Call KALBATPROCESS("mixingreg")
    Screen.MousePointer = 0
End Sub
Private Sub MixingRegNewCustom(FD As String, TD As String, pg As Integer)
    Print #a, Chr(18)
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    Print #a, Space(3) + "Mixing List: From " & Format(FD, "DD/MM/YY") & " To " & Format(TD, "DD/MM/YY") & Space(169) + Format(pdate, "dd/mm/yy") + Space(3) + "Pg.:" + Padl(CStr(pg), 3, " ")
    Print #a, Space(3) + String(229, "-")
    Print #a, Space(3) + Chr(27) + "E" + Padr("Date", 10, " ") + Space(1) + Padr("Lot.No.", 15, " ") + Space(1) + Padr("Count", 25, " ") + Space(1) + CENTRE("<-----------------Tint Detail----------------->", 46, " ") + Space(1) + CENTRE("<-----LV-40---->", 16, " ") + Space(1) + CENTRE("<----2152P----->", 16, " ") + Space(1) + CENTRE("<----Water----->", 16, " ") + Space(1) + Padl("PSF", 12, " ") + Space(1) + Padl("VSF", 12, " ") + Space(1) + Padl("<------Waste------>", 19, " ") + Space(1) + Padl("Total", 15, " ") + Space(1) + Padl("Up To Date", 15, " ") + Chr(27) + "F"
    Print #a, Space(3) + Chr(27) + "E" + Padr("", 10, " ") + Space(1) + Padr("", 15, " ") + Space(1) + Padr("", 25, " ") + Space(1) + Padr("Colour", 25, " ") + Space(1) + Padl("Gms", 10, " ") + Space(1) + Padl("Quantity", 10, " ") + Space(1) + Padl("%", 5, " ") + Space(1) + Padl("Quantity", 10, " ") + Space(1) + Padl("%", 5, " ") + Space(1) + Padl("Quantity", 10, " ") + Space(1) + Padl("%", 5, " ") + Space(1) + Padl("Quantity", 10, " ") + Space(1) + Padl("Quantity", 12, " ") + Space(1) + Padl("Quantity", 12, " ") + Space(1) + Padl("PSF", 9, " ") + Space(1) + Padl("VSF", 9, " ") + Space(1) + Padl("Quantity", 15, " ") + Space(1) + Padl("Quantity", 15, " ") + Chr(27) + "F"
    Print #a, Space(3) + String(229, "-")
    co = 9
End Sub
Public Sub MixingReportCustom(F_Date As String, T_Date As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
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
Dim Cnn As Connection
Set Cnn = New Connection

PageLen = 60
Set rs1 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs4 = New Recordset
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0
tot12 = 0: tot13 = 0: tot14 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot10 = 0: gtot12 = 0: gtot13 = 0: gtot14 = 0
    
    Set Rs = New Recordset
    Rs.Open "select docno,docdt,isnull(ordno,0)as Mixlotno,isnull(cntcd,'')CntCd,Description,isnull(tint,'')tint,isnull(tintwt,0)tintwt,isnull(oilwt1,0)oilwt1,isnull(oilwt2,0)oilwt2,isnull(wtrwt,0)wtrwt,isnull(cat1,'')cat1,isnull(cat2,'')cat2,isnull(catper1,0)catper1,isnull(catper2,0)catper2 from rm_mixinghd a,RM_ISSUETYPE B,IG_PRODUCT C where A.CNTCD*=C.PRODUCT_CODE AND docdt>='" & Format(F_Date, "YYYY-MM-DD") & "' and docdt<='" & Format(T_Date, "YYYY-MM-DD") & "' AND B.ISSTYPE='P' AND a.ISSTYPE=b.ISSUE_CODE AND DOCNO IN " & _
            " (SELECT DISTINCT DOCNO FROM RM_MixingDt WHERE CATCD IN ('P','V') AND DOCDT>='" & Format(F_Date, "YYYY-MM-DD") & "') and docdt<='" & Format(T_Date, "YYYY-MM-DD") & "' ORDER BY DOCDT", Cnn, adOpenStatic


    If Rs.RecordCount = 0 Then
        MsgBox "No Mixing Detail Found Between This Date", vbInformation, head
        Exit Sub
    End If

    co = 0
    pg1 = 1
    Set rptv = New Report.ReportView
       
    a = FreeFile
    Close
'    Open "c:\MixingReg.TXT" For Output As #a
 Open KALFOLDERDATA & "\MixingReg.TXT" For Output As #a
    Print #a,
    Call MixingRegNewCustom(F_Date, T_Date, pg1)
    vbales = 0
    vqty = 0
    pbales = 0
    pqty = 0
    vgqty = 0
    vgbales = 0
    Pgqty = 0
    Pgbales = 0
    subtot = 0
    subqty = 0
    DOCDT = ""
    g = 0
    While Not Rs.EOF
          
          '',TINT,TINTWT,OILCODE1,OILCODE2,OILWT1,OILWT2,WTRWT
          '',ISNULL(TINT,'')TINT,ISNULL(TINTWT,0)TINTWT,ISNULL(OILCODE1,'')OILCODE1,ISNULL(OILCODE2,'')OILCODE2,ISNULL(OILWT1,0)OILWT1,ISNULL(OILWT2,0)OILWT2,ISNULL(WTRWT,0)WTRWT,

          Set rsg = New Recordset
          rsg.Open "select sum(kgs) AS QUANTITY from rm_mixingdt where docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "'", Cnn, adOpenStatic
                   
          Tint = "": tintwt = 0: oilcode1 = "": oilcode2 = "": oilwt1 = 0: oilwt2 = 0: wtrwt = 0
          ''isnull(tint,'')tint,isnull(tintwt,0)tintwt,isnull(oilwt1,0)oilwt1,isnull(oilwt2,0)oilwt2,isnull(wtrwt,0)wtrwt
          Tint = Rs("TINT"): tintwt = Rs("TINTWT"): oilwt1 = Rs("OILWT1"): oilwt2 = Rs("OILWT2"): wtrwt = Rs("WTRWT")
          PSFPER = 0
          VSFPER = 0
          If UCase(Rs("CAT1")) = "P" Then
            PSFPER = Rs("CATPER1")
          Else
            VSFPER = Rs("CATPER1")
          End If
          
          If UCase(Rs("CAT2")) = "V" Then
            If Rs("CATPER2") <> 0 Then
                VSFPER = Rs("CATPER2")
            End If
          Else
            If Rs("CATPER2") <> 0 Then
                PSFPER = Rs("CATPER2")
            End If
          End If
          
          Set rswst = New Recordset
          rswst.Open "select isnull(sum(wkgs),0) from rm_mixingwaste where divcode='" & Divcode & "' and docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
          wkgs = 0
          If rswst.RecordCount > 0 Then
            wkgs = rswst(0)
          End If
          
          VSFKGS = Round(wkgs * VSFPER / 100, 3)
          PSFKGS = Round(wkgs * PSFPER / 100, 3)
              
          Set rsdt = New Recordset
          rsdt.Open "SELECT ISNULL(SUM(KGS),0)""TotQty"" FROM RM_MIXINGDT a,rm_mixinghd b WHERE a.divcode=b.divcode and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and  a.DOCNO<=" & Rs("DOCNO") & " AND a.DOCDT<='" & Format(Rs("DOCDT"), "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and ordno='" & Rs("mixlotno") & "'", DB, adOpenStatic
          
          Set rshd = New Recordset
          rshd.Open "SELECT isnull(sum(wkgs),0)""wkgs"" FROM rm_mixingwaste  WHERE DOCNO<=" & Rs("DOCNO") & " AND DOCDT<='" & Format(Rs("DOCDT"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "' and ordno='" & Rs("mixlotno") & "'", DB, adOpenStatic
          UpToDateQty = 0
          wastekgs = 0
          If rshd.RecordCount > 0 Then
                wastekgs = rshd("wkgs")
          End If
          If rsdt.RecordCount > 0 Then
            UpToDateQty = rsdt("TotQty") + wastekgs
          End If
          rsg.MoveFirst
          
          oil1per = 0
          oil2per = 0
          waterper = 0
          
          If oilwt1 > 0 Then
            oil1per = Round(oilwt1 * 100 / rsg(0), 2)
          End If
          
          If oilwt2 > 0 Then
            oil2per = Round(oilwt2 * 100 / rsg(0), 2)
          End If
                    
          If wtrwt > 0 Then
            waterper = Round(wtrwt * 100 / rsg(0), 2)
          End If
          
          Set rsg1 = New Recordset
          rsg1.Open "select isnull(sum(kgs),0) AS QUANTITY from rm_mixingdt where docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "' and catcd='P'", Cnn, adOpenStatic
          psf = 0
          If rsg1.RecordCount > 0 Then
            psf = rsg1(0)
          End If
          
          Set rsg2 = New Recordset
          rsg2.Open "select isnull(sum(kgs),0) AS QUANTITY from rm_mixingdt where docno=" & Rs("docno") & " and docdt='" & Format(Rs("docdt"), "yyyy-mm-dd") & "' and catcd='V'", Cnn, adOpenStatic
          vsf = 0
          If rsg2.RecordCount > 0 Then
            vsf = rsg2(0)
          End If
          
          totqty = psf + vsf + wkgs
          
          gms = 0
          If tintwt > 0 Then
            gms = Round(tintwt * 1000000 / totqty, 2)
          End If
                    
          If DOCDT <> Rs("docdt") Then
                Print #a,
                ''Print #a, Space(3) + Padr(Format(rs("DOCDT"), "DD/MM/YY"), 8, " ") + Space(1) + Padr(rs("mixlotno"), 5, " ") + Space(1) + Padr(rs("DESCRIPTION"), 17, " ") + Space(1) + Padr(Tint, 15, " ") + Space(1) + Padl(INF(Tintwt, 3), 8, " ") + Space(1) + Padl(rsg("varname"), 17, " ") + Space(1) + Padl(INF(rsg("Quantity"), 3), 14, " ") + Space(1) + Padl(INF(UpToDateQty, 3), 13, " ") + Space(1) + Padr(oilcode1, 13, " ") + Space(1) + Padl(INF(oilwt1, 3), 6, " ") + Space(1) + Padl(INF(wtrwt, 3), 7, " ")
                Print #a, Space(3) + Padr(Format(Rs("DOCdt"), "dd/mm/yy"), 10, " ") + Space(1) + Padr(Rs("Mixlotno"), 15, " ") + Space(1) + Padr(Rs("Description"), 25, " ") + Space(1) + Padr(Rs("tint"), 25, " ") + Space(1) + Padl(INF(gms, 2), 10, " ") + Space(1) + Padl(INF(Rs("tintwt"), 3), 10, " ") + Space(1) + Padl(INF(oil1per, 2), 5, " ") + Space(1) + Padl(INF(Rs("oilwt1"), 3), 10, " ") + Space(1) + Padl(INF(oil2per, 2), 5, " ") + Space(1) + Padl(INF(Rs("oilwt2"), 3), 10, " ") + Space(1) + Padl(INF(waterper, 2), 5, " ") + Space(1) + Padl(INF(Rs("wtrwt"), 3), 10, " ") + Space(1) + Padl(INF(psf, 3), 12, " ") + Space(1) + Padl(INF(vsf, 3), 12, " ") + Space(1) + Padl(INF(PSFKGS, 3), 9, " ") + Space(1) + Padl(INF(VSFKGS, 3), 9, " ") + Space(1) + Padl(INF(totqty, 3), 15, " ") + Space(1) + Padl(INF(UpToDateQty, 3), 15, " ")
                co = co + 2
          Else
                ''Print #a, Space(3) + Padr(" ", 8, " ") + Space(1) + Padr(rs("mixlotno"), 5, " ") + Space(1) + Padr(rs("DESCRIPTION"), 17, " ") + Space(1) + Padr(Tint, 15, " ") + Space(1) + Padl(INF(Tintwt, 3), 8, " ") + Space(1) + Padl(rsg("varname"), 17, " ") + Space(1) + Padl(INF(rsg("Quantity"), 3), 14, " ") + Space(1) + Padl(INF(UpToDateQty, 3), 13, " ") + Space(1) + Padr(oilcode1, 13, " ") + Space(1) + Padl(INF(oilwt1, 3), 6, " ") + Space(1) + Padl(INF(wtrwt, 3), 7, " ")
                Print #a, Space(3) + Padr("", 10, " ") + Space(1) + Padr(Rs("Mixlotno"), 15, " ") + Space(1) + Padr(Rs("Description"), 25, " ") + Space(1) + Padr(Rs("tint"), 25, " ") + Space(1) + Padl(INF(gms, 2), 10, " ") + Space(1) + Padl(INF(Rs("tintwt"), 3), 10, " ") + Space(1) + Padl(INF(oil1per, 2), 5, " ") + Space(1) + Padl(INF(Rs("oilwt1"), 3), 10, " ") + Space(1) + Padl(INF(oil2per, 2), 5, " ") + Space(1) + Padl(INF(Rs("oilwt2"), 3), 10, " ") + Space(1) + Padl(INF(waterper, 2), 5, " ") + Space(1) + Padl(INF(Rs("wtrwt"), 3), 10, " ") + Space(1) + Padl(INF(psf, 3), 12, " ") + Space(1) + Padl(INF(vsf, 3), 12, " ") + Space(1) + Padl(INF(PSFKGS, 3), 9, " ") + Space(1) + Padl(INF(VSFKGS, 3), 9, " ") + Space(1) + Padl(INF(totqty, 3), 15, " ") + Space(1) + Padl(INF(UpToDateQty, 3), 15, " ")
                co = co + 1
                g = g + 1
          End If

          If co > 60 Then
            co = 0
            Print #a,
            Print #a, Space(3) & String(229, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            Call MixingRegNewCustom(F_Date, T_Date, pg1)
          End If
          
          DOCDT = Rs("docdt")
          Rs.MoveNext
    Wend
    Print #a, Space(3) + String(229, "-")
    Print #a, Chr(12)
    Close #a
    a = FreeFile
'    Open "c:\mixingReg.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type mixingreg.TXT>PRN"
'    Close #a
'    RPTV.txtfile = "c:\mixingreg.TXT"
'    RPTV.Batfile = "c:\mixingreg.bat"
Call KALBATPROCESS("mixingreg")
    Screen.MousePointer = 0
End Sub

