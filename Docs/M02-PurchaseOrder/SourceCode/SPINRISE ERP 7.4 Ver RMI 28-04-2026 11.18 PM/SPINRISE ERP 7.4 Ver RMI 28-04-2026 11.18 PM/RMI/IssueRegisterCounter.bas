Attribute VB_Name = "IssueRegisterCounter"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim TotRs As Recordset
Dim Namers As Recordset
Dim VarName As String
Dim GTotrs As Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim CNTRS As New Recordset
Dim cntdes As String
Dim unit As String
Dim dup As String
Dim rsCat As New Recordset
Dim cnt As New Recordset
Dim divname As String
Dim rp As New rmireports

Public Sub IssueCReport(U As String, V As String, divname As String, Issto As String, ISSTYPE As String, lottype As String, isstype1 As String, lottype1 As String, fcount As String, tcount As String, footerstr As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim xx As New Recordset
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim s As String
Dim xxx As New Recordset
Dim Count As Integer
Dim Cnn As Connection
Set Cnn = New Connection
Dim qtyt As Double
Dim weigh As Double
Dim amt As Double
Dim tqtyt As Double
Dim tweigh As Double
Dim tamt As Double
Dim vqtyt As Double
Dim vweigh As Double
Dim vamt As Double
Dim sVar As String
Dim Qtot As Double
Dim Ktot As Double
Dim valtot As Double
Dim iVcnt As Integer

iVcnt = 0
amt = 0
atyt = 0
weigh = 0
tamt = 0
tatyt = 0
tweigh = 0
vamt = 0: vatyt = 0: vweigh = 0

Qtot = 0
Ktot = 0
valtot = 0

Set rs1 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.ConnectionTimeout = 0
Cnn.CommandTimeout = 0
Cnn.Open connectstring
Set rs4 = New Recordset

Set cnt = New Recordset
If Trim(ISSTYPE) = "A" Then

     If lottype = "ALL" Then
     
        cnt.Open "select DISTINCT ISNULL(cntcd,'') as cntcd from rm_issb a,rm_lot b,rm_issh h where " & _
            " a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  and issued='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and cntcd is not null " & _
            " and cntcd between '" & fcount & "' and '" & tcount & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO", DB, adOpenStatic
     Else
     
        cnt.Open "select DISTINCT ISNULL(cntcd,'') as cntcd from rm_issb a,rm_lot b,rm_issh h where " & _
            " a.docno=h.docno and a.LotType='" & lottype & "' and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  and issued='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and cntcd is not null " & _
            " and cntcd between '" & fcount & "' and '" & tcount & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO", DB, adOpenStatic
            
     End If
     
Else

     If lottype = "ALL" Then
     
        cnt.Open "select DISTINCT ISNULL(cntcd,'') as cntcd from rm_issb a,rm_lot b,rm_issh h where " & _
            " a.docno=h.docno AND a.docdt=h.docdt and a.isstype=h.isstype and a.isstype='" & ISSTYPE & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  and issued='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and cntcd is not null" & _
            " and cntcd between '" & fcount & "' and '" & tcount & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO", DB, adOpenStatic
     Else
     
        cnt.Open "select DISTINCT ISNULL(cntcd,'') as cntcd from rm_issb a,rm_lot b,rm_issh h where " & _
           " a.docno=h.docno and a.LotType='" & lottype & "' AND a.docdt=h.docdt and a.isstype=h.isstype and a.isstype='" & ISSTYPE & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  and issued='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and cntcd is not null" & _
           " and cntcd between '" & fcount & "' and '" & tcount & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO", DB, adOpenStatic
           
     End If
     
End If
If cnt.EOF = True Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If

Set rptv = New Report.ReportView
a = FreeFile
Close
'Open "C:\issc.TXT" For Output As #a

 Open KALFOLDERDATA & "\issc.TXT" For Output As #a
Print #a, Chr(15)
pg1 = 1
co = 1
Call PartyHeader(pg1, co, U, V, divname, ISSTYPE, lottype)

If cnt.EOF = True Then
    GoTo iss:
End If

dup = ""
'cnt.Open "select distinct issto,cntcd from rm_issh where issto='" & Issto & "' and divcode='" & Divcode & "' AND DOCDT BETWEEN '" & Format(u, "YYYY-MM-DD") & "' AND '" & Format(v, "YYYY-MM-DD") & "' ORDER BY cntcd", DB, adOpenStatic
Do While Not cnt.EOF
        
        Set Rs = New Recordset
        Rs.Open "SELECT DISTINCT CNTCD,CNTNAME FROM RM_COUNT WHERE CNTCD ='" & cnt("CNTCD") & "'ORDER BY CNTCD", DB, adOpenStatic
        If Rs.RecordCount > 0 Then
            cntdes = Rs("cntname")
        Else
            cntdes = " "
        End If
        
        'If rs.RecordCount > 0 Then
        'Do While Not rs.EOF
        If cnt(0) <> dup Then
                Print #a,
                Print #a, Space(5); Padr(cnt("cntcd"), 8, " "); Space(6) + Padr(cntdes, 60, " ")
                gflg = "Y" 'total
                co = co + 2
                If co >= PageLen Then
                    co = 0
                    pg1 = pg1 + 1
                    Print #a, Space(5) + String(130, "-")
                    Print #a, Chr(12)
                    Call PartyHeader(pg1, co, U, V, divname, ISSTYPE, lottype)
                    co = co + 11
                End If
                          
        End If
                dup = cnt(0)
                
                
           If Trim(ISSTYPE) = "A" Then
                Set CNTRS = New Recordset
                If lottype = "ALL" Then
                  CNTRS.Open "select distinct cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,SUM(Bales) AS BALES,bblflg,SUM(Kgs) AS KGS,ratekg, AVG(ratecandy) AS RATECANDY,SUM(Value) AS VALUE" & _
                            " FROM( " & _
                            " select distinct h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h,rm_count c where  h.cntcd=c.cntcd and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and h.cntcd='" & cnt("cntcd") & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and b.lotyear='" & Year(yfdate) & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                            " Union All " & _
                            " select distinct h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h,rm_count c where  h.cntcd=c.cntcd and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and h.cntcd='" & cnt("cntcd") & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode   AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and b.lotyear='" & Year(yfdate) & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO " & _
                            ")X " & _
                            "GROUP BY cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,bblflg,ratekg  Order By X.varcode", DB, adOpenStatic
                            Else
                  CNTRS.Open "select distinct cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,SUM(Bales) AS BALES,bblflg,SUM(Kgs) AS KGS,ratekg, AVG(ratecandy) AS RATECANDY,SUM(Value) AS VALUE" & _
                            " FROM( " & _
                            " select distinct h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h,rm_count c where  a.LotType='" & lottype & "' and h.cntcd=c.cntcd and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and h.cntcd='" & cnt("cntcd") & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and b.lotyear='" & Year(yfdate) & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                            " Union All " & _
                            " select distinct h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h,rm_count c where  a.LotType='" & lottype & "' and h.cntcd=c.cntcd and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and h.cntcd='" & cnt("cntcd") & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode   AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and b.lotyear='" & Year(yfdate) & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO " & _
                            ")X " & _
                            "GROUP BY cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,bblflg,ratekg  Order By X.varcode", DB, adOpenStatic
                                  
                            End If
            Else
                 Set CNTRS = New Recordset
                 If lottype = "ALL" Then
                  CNTRS.Open "select distinct cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,SUM(Bales) AS BALES,bblflg,SUM(Kgs) AS KGS,ratekg, AVG(ratecandy) AS RATECANDY,SUM(Value) AS VALUE" & _
                            " FROM( " & _
                            " select distinct h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h,rm_count c where h.cntcd=c.cntcd and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and h.cntcd='" & cnt("cntcd") & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.lotyear='" & Year(yfdate) & "'group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                            " Union All " & _
                            " select distinct h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h,rm_count c where h.cntcd=c.cntcd and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and h.cntcd='" & cnt("cntcd") & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode   AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.lotyear='" & Year(yfdate) & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO " & _
                            ")X " & _
                            "GROUP BY cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,bblflg,ratekg  Order By X.varcode", DB, adOpenStatic
                            Else
                            CNTRS.Open "select distinct cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,SUM(Bales) AS BALES,bblflg,SUM(Kgs) AS KGS,ratekg, AVG(ratecandy) AS RATECANDY,SUM(Value) AS VALUE" & _
                            " FROM( " & _
                            " select distinct h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h,rm_count c where a.LotType='" & lottype & "' and h.cntcd=c.cntcd and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and h.cntcd='" & cnt("cntcd") & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.lotyear='" & Year(yfdate) & "'group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                            " Union All " & _
                            " select distinct h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h,rm_count c where a.LotType='" & lottype & "' and h.cntcd=c.cntcd and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and h.cntcd='" & cnt("cntcd") & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode   AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.lotyear='" & Year(yfdate) & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO " & _
                            ")X " & _
                            "GROUP BY cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,bblflg,ratekg Order By X.varcode", DB, adOpenStatic
                            End If
            End If

                
                
                
                 
                If CNTRS.RecordCount > 0 Then
                    If CNTRS("bblflg") = "B" Then
                         unit = "Bales"
                    ElseIf CNTRS("bblflg") = "R" Then
                        unit = "Borah"
                    End If
                    sVar = CNTRS("Varcode")
                Else
                    'MsgBox "No Records Found", vbInformation, head
                    'Screen.MousePointer = 0
                    'Exit Sub
                End If
                iVcnt = 0
           Do While Not CNTRS.EOF
           
                If sVar <> CNTRS("Varcode") Then
                    If iVcnt > 1 Then
                        Print #a,
                        Print #a, Space(15); "                            Varietywise Total "; Space(3); Padl(INF(vweigh, 0), 20, " ") + Space(2) + Padl(INF(vqtyt, 3), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(vamt, 2), 18, " ")
                        co = co + 2
                    End If
                    iVcnt = 0
                    sVar = CNTRS("Varcode")
                    vamt = 0
                    vqtyt = 0
                    vweigh = 0
                    Print #a,
                    co = co + 1
                End If
                
                Set rsCat = New Recordset
                rsCat.Open "select catname from rm_cat where catcd='" & CNTRS("catcd") & "'", DB, adOpenStatic
                If Not rsCat.EOF Then
                    catname = rsCat(0)
                End If
                
                Set Namers = New Recordset
                Namers.Open "Select varname from rm_var where varcode='" & CNTRS("varcode") & "'", DB, adOpenStatic
                If Not Namers.EOF Then
                    VarName = Namers(0)
                End If
                'Print #a, Space(5) + Padr(rs2("VARNAME"), 21, " ") + Padr(rs2(2), 10, " ") + Space(4); Padr(rs2(4), 10, " ") + Padl(INF(rs2(5), 0), 7, " "); Padl(rs2("plotno"), 7, " ") + Padl(INF(bales, 0), 4, " ") + Space(2) + Padr(rs2(7), 5, " ") + Padl(INF(rs2(8), 2), 20, " ") + Padl(INF(rs2(9), 2), 10, " ") + Padl(INF(rs2("ratecandy"), 0), 12, " ") + Padl(INF(rs2(10), 2), 18, " ")
                Print #a, Space(5) + Padr(Namers("VARNAME"), 25, " ") + Space(1) + Padr(catname, 20, " "); Format(CNTRS("lotdt"), "DD/mm/YY") + Space(1); Padl(CNTRS("lotno"), 7, " "); Space(3) + Padl(CNTRS("plotno"), 7, " ") + Space(3) + Padl(INF(CNTRS("bales"), 0), 4, " ") + Space(4) + Padr(unit, 5, " ") + Padl(INF(CNTRS("kgs"), 3), 13, " ") + Padl(INF(CNTRS("ratekg"), 2), 10, " ") + Padl(INF(CNTRS("ratecandy"), 0), 12, " ") + Padl(INF(CNTRS("value"), 2), 18, " ")
                co = co + 1
                iVcnt = iVcnt + 1
                amt = amt + CNTRS("value")
                qtyt = qtyt + CNTRS("kgs")
                weigh = weigh + CNTRS("bales")
                
                vamt = vamt + CNTRS("value")
                vqtyt = vqtyt + CNTRS("kgs")
                vweigh = vweigh + CNTRS("bales")
                
                tqtyt = tqtyt + CNTRS("kgs")
                tweigh = tweigh + CNTRS("bales")
                tamt = tamt + CNTRS("value")
                
                If co >= PageLen Then
                    co = 0
                    pg1 = pg1 + 1
                    Print #a, Space(5) + String(130, "-")
                    Print #a, Chr(12)
                    Call PartyHeader(pg1, co, U, V, divname, ISSTYPE, lottype)
                    co = co + 11
                End If
        'End If
                CNTRS.MoveNext
            Loop
             If iVcnt > 1 Then
                Print #a,
                Print #a, Space(15); "                            Varietywise Total "; Space(3); Padl(INF(vweigh, 0), 20, " ") + Space(2) + Padl(INF(vqtyt, 3), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(vamt, 2), 18, " ")
                co = co + 2
            End If
                    
            vamt = 0
            vqtyt = 0
            vweigh = 0
'            Print #a,
'            Co = Co + 1
            If gflg = "Y" And CNTRS.RecordCount > 1 Then
            
                        Print #a,
                       'Print #a, Space(15); "                                  Grand Total "; Space(3); Padl(INF(tweigh, 0), 20, " ") + Space(7) + Padl(INF(tqtyt, 2), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(tamt, 2), 18, " "); Chr(27); "F"
                        Print #a, Space(15); "                              Countwise Total "; Space(3); Padl(INF(weigh, 0), 20, " ") + Space(2) + Padl(INF(qtyt, 3), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(amt, 2), 18, " ")
                       'Space(25 + 9); Padl(INF(tot, 2), 15, " ") + Chr(27) + "F"
                       'Print #a, Space(15)  + Chr(27); "E";  "  ** Total ** " + Space(18); Padl(INF(weigh, 0), 21, " ") + Space(7) + Padl(INF(qtyt, 2), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(amt, 2), 18, " "); Chr(27); "F"
                        gflg = "N"
                        
            End If
        amt = 0
        qtyt = 0
        weigh = 0
        
        cnt.MoveNext
          
        'Print #a, Space(15); Chr(27); "E"; "  ** Total ** " + Space(18); Padl(INF(weigh, 0), 21, " ") + Space(7) + Padl(INF(qtyt, 2), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(amt, 2), 18, " "); Chr(27); "F"
Loop
                
                   
                
iss:
'suji
If fcount <> tcount Then
If Not cnt.EOF Then
        If Issto = "D" Then
                Set Rs = New Recordset
                Rs.Open "SELECT DISTINCT CNTCD,CNTNAME FROM RM_COUNT WHERE CNTCD ='" & cnt("CNTCD") & "' ORDER BY CNTCD", DB, adOpenStatic
        ElseIf Issto = "M" Then
            If Trim(ISSTYPE) = "A" Then
                Set Rs = New Recordset
            If lottype = "ALL" Then
                Rs.Open "SELECT distinct a.cntcd,description as cntname from rm_issh a,ig_product z,rm_var b,rm_lot c,rm_issb d Where  a.CNTCD=' ' AND c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode AND A.ISSTO='" & Issto & "' and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and a.cntcd=z.product_code and d.DOCDT between '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(V, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by a.cntcd,description ORDER BY a.cntcd", DB, adOpenStatic
                Else
                Rs.Open "SELECT distinct a.cntcd,description as cntname from rm_issh a,ig_product z,rm_var b,rm_lot c,rm_issb d Where  d.LotType='" & lottype & "' and a.CNTCD=' ' AND c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode AND A.ISSTO='" & Issto & "' and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and a.cntcd=z.product_code and d.DOCDT between '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(V, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by a.cntcd,description ORDER BY a.cntcd", DB, adOpenStatic
                End If
            Else
                Set Rs = New Recordset
                If lottype = "ALL" Then
                Rs.Open "SELECT distinct a.cntcd,description as cntname from rm_issh a,ig_product z,rm_var b,rm_lot c,rm_issb d Where  a.CNTCD=' ' AND c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode AND A.ISSTO='" & Issto & "' and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and a.isstype = '" & ISSTYPE & "' and c.varcode = b.varcode and a.docno=d.docno and a.cntcd=z.product_code and d.DOCDT between '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(V, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by a.cntcd,description ORDER BY a.cntcd", DB, adOpenStatic
                Else
                Rs.Open "SELECT distinct a.cntcd,description as cntname from rm_issh a,ig_product z,rm_var b,rm_lot c,rm_issb d Where  d.LotType='" & lottype & "' and a.CNTCD=' ' AND c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode AND A.ISSTO='" & Issto & "' and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and a.isstype = '" & ISSTYPE & "' and c.varcode = b.varcode and a.docno=d.docno and a.cntcd=z.product_code and d.DOCDT between '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(V, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by a.cntcd,description ORDER BY a.cntcd", DB, adOpenStatic
                End If
            End If
        End If
        If Rs.RecordCount > 0 Then
            cntdes = Rs("cntname")
        Else
            cntdes = " "
        End If
                Print #a,
                Print #a, Space(5); Padr("", 8, " "); Space(6) + Padr(cntdes, 60, " ")
                gflg = "Y" 'total
                co = co + 2
                If co >= PageLen Then
                    co = 0
                    pg1 = pg1 + 1
                    Print #a, Space(5) + String(130, "-")
                    Print #a, Chr(12)
                    Call PartyHeader(pg1, co, U, V, divname, ISSTYPE, lottype)
                    co = co + 11
                End If

                dup = ""


           If Trim(ISSTYPE) = "A" Then
                Set CNTRS = New Recordset
            If lottype = "ALL" Then
                  CNTRS.Open "select distinct cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,SUM(Bales) AS BALES,bblflg,SUM(Kgs) AS KGS,ratekg, AVG(ratecandy) AS RATECANDY,SUM(Value) AS VALUE" & _
                            " FROM( " & _
                            " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and isnull(cntcd,'')= '' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and b.lotyear='" & Year(yfdate) & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                            " Union All " & _
                            " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and isnull(cntcd,'')= '' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode   AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and b.lotyear='" & Year(yfdate) & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO " & _
                            ")X " & _
                            "GROUP BY cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,bblflg,ratekg Order By x.Varcode", DB, adOpenStatic
                            Else
                            CNTRS.Open "select distinct cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,SUM(Bales) AS BALES,bblflg,SUM(Kgs) AS KGS,ratekg, AVG(ratecandy) AS RATECANDY,SUM(Value) AS VALUE" & _
                            " FROM( " & _
                            " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where a.lottype='" & lottype & "' and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and isnull(cntcd,'')= '' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and b.lotyear='" & Year(yfdate) & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                            " Union All " & _
                            " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where a.lottype='" & lottype & "' and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and isnull(cntcd,'')= '' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode   AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and b.lotyear='" & Year(yfdate) & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO " & _
                            ")X " & _
                            "GROUP BY cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,bblflg,ratekg Order By x.Varcode", DB, adOpenStatic
                            End If
            Else
                 Set CNTRS = New Recordset
                 If lottype = "ALL" Then
                  CNTRS.Open "select distinct cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,SUM(Bales) AS BALES,bblflg,SUM(Kgs) AS KGS,ratekg, AVG(ratecandy) AS RATECANDY,SUM(Value) AS VALUE" & _
                            " FROM( " & _
                            " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and isnull(cntcd,'')= '' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.lotyear='" & Year(yfdate) & "'group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                            " Union All " & _
                            " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and isnull(cntcd,'')= '' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode   AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO " & _
                            ")X " & _
                            "GROUP BY cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,bblflg,ratekg Order By x.Varcode", DB, adOpenStatic
                Else
                CNTRS.Open "select distinct cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,SUM(Bales) AS BALES,bblflg,SUM(Kgs) AS KGS,ratekg, AVG(ratecandy) AS RATECANDY,SUM(Value) AS VALUE" & _
                            " FROM( " & _
                            " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and isnull(cntcd,'')= '' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.lotyear='" & Year(yfdate) & "'group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                            " Union All " & _
                            " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where a.lottype='" & lottype & "' and a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and isnull(cntcd,'')= '' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode   AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "'and b.lotyear='" & Year(yfdate) & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO " & _
                            ")X " & _
                            "GROUP BY cntcd,X.Catcd,X.lotno,X.lotdt,plotno,X.varcode,ISSTO,bblflg,ratekg Order By x.Varcode", DB, adOpenStatic
                End If
            End If


            If CNTRS.RecordCount = 0 Then
                'MsgBox "No Record Found", vbInformation, head
                'Exit Sub
            End If



                If CNTRS.RecordCount > 0 Then
                    If CNTRS("bblflg") = "B" Then
                         unit = "Bales"
                    ElseIf CNTRS("bblflg") = "R" Then
                        unit = "Borah"
                    End If
                    sVar = CNTRS("Varcode")
                    iVcnt = 0
                End If
           Do While Not CNTRS.EOF
           
               If sVar <> CNTRS("Varcode") Then
                    If iVcnt > 1 Then
                        Print #a,
                        Print #a, Space(15); "                            Varietywise Total "; Space(3); Padl(INF(vweigh, 0), 20, " ") + Space(2) + Padl(INF(vqtyt, 3), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(vamt, 2), 18, " ")
                        co = co + 2
                    End If
                    iVcnt = 0
                    sVar = CNTRS("Varcode")
                    vamt = 0
                    vqtyt = 0
                    vweigh = 0
                    Print #a,
                    co = co + 1
                End If

                Set rsCat = New Recordset
                rsCat.Open "select catname from rm_cat where catcd='" & CNTRS("catcd") & "'", DB, adOpenStatic
                If Not rsCat.EOF Then
                    catname = rsCat(0)
                End If

                Set Namers = New Recordset
                Namers.Open "Select varname from rm_var where varcode='" & CNTRS("varcode") & "'", DB, adOpenStatic
                If Not Namers.EOF Then
                    VarName = Namers(0)
                End If
                Print #a, Space(5) + Padr(Namers("VARNAME"), 25, " ") + Space(1) + Padr(catname, 20, " "); Format(CNTRS("lotdt"), "DD/mm/YY") + Space(1); Padl(CNTRS("lotno"), 7, " "); Space(3) + Padl(CNTRS("plotno"), 7, " ") + Space(3) + Padl(INF(CNTRS("bales"), 0), 4, " ") + Space(4) + Padr(unit, 5, " ") + Padl(INF(CNTRS("kgs"), 3), 13, " ") + Padl(INF(CNTRS("ratekg"), 2), 10, " ") + Padl(INF(CNTRS("ratecandy"), 0), 12, " ") + Padl(INF(CNTRS("value"), 2), 18, " ")
                co = co + 1
                amt = amt + CNTRS("value")
                qtyt = qtyt + CNTRS("kgs")
                weigh = weigh + CNTRS("bales")
                
                vamt = vamt + CNTRS("value")
                vqtyt = vqtyt + CNTRS("kgs")
                vweigh = vweigh + CNTRS("bales")

                tqtyt = tqtyt + CNTRS("kgs")
                tweigh = tweigh + CNTRS("bales")
                tamt = tamt + CNTRS("value")

                If co >= PageLen Then
                    co = 0
                    pg1 = pg1 + 1
                    Print #a, Space(5) + String(130, "-")
                    Print #a, Chr(12)
                    Call PartyHeader(pg1, co, U, V, divname, ISSTYPE, lottype)
                    co = co + 11
                End If
        'End If
                CNTRS.MoveNext
            Loop
            If iVcnt > 1 Then
                Print #a,
                Print #a, Space(15); "                            Varietywise Total "; Space(3); Padl(INF(vweigh, 0), 20, " ") + Space(2) + Padl(INF(vqtyt, 3), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(vamt, 2), 18, " ")
                co = co + 2
            End If
                    
            vamt = 0
            vqtyt = 0
            vweigh = 0
            If gflg = "Y" And CNTRS.RecordCount > 1 Then
                        Print #a,
                        Print #a, Space(15); "                              Countwise Total "; Space(3); Padl(INF(weigh, 0), 20, " ") + Space(2) + Padl(INF(qtyt, 3), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(amt, 2), 18, " ")
                        gflg = "N"

            End If
        amt = 0
        qtyt = 0
        weigh = 0

        co = co + 2

End If
End If

    Print #a, Space(5) + String(144, "-")
    Print #a, Space(15); "                                  Grand Total "; Space(3); Padl(INF(tweigh, 0), 20, " ") + Space(2) + Padl(INF(tqtyt, 3), 20, " ") + Padl(" ", 10, " ") + Padl(" ", 12, " "); Padl(INF(tamt, 2), 18, " ")
    Print #a, Space(5) + String(144, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,

    co = co + 7
    
    If Table_Exists("TMP_RM_LOT") Then
        DB.Execute ("DROP TABLE TMP_RM_LOT")
    End If
    If Table_Exists("TMP_RM_ISSH") Then
        DB.Execute ("DROP TABLE TMP_RM_ISSH")
    End If
    If Table_Exists("TMP_RM_ISSB") Then
        DB.Execute ("DROP TABLE TMP_RM_ISSB")
    End If
    
    DB.Execute ("select RATEKG, Divcode,catcd,lotno,lotdt,lottype,varcode,LOTYEAR into TMP_RM_LOT from rm_lot where LOTYEAR ='" & Year(yfdate) & "' and DIVCODE = '" & Divcode & "'")
    DB.Execute ("select * into TMP_RM_ISSB From RM_ISSB where DIVCODE = '" & Divcode & "' and DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "'")
    DB.Execute ("select * into TMP_RM_ISSH  from RM_ISSH where cntcd BETWEEN '" & fcount & "' AND '" & tcount & "' and DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' AND DIVCODE = '" & Divcode & "'")

    Set cnt = New Recordset
    If Trim(ISSTYPE) = "A" Then
         If lottype = "ALL" Then
            cnt.Open "select DISTINCT ISNULL(h.cntcd,'') as cntcd," & _
                            "i.cntname,count(a.BALENO) AS Qty," & _
                            "isnull(sum(a.ISSKGS),0) AS Kgs,isnull(sum(isnull(b.ratekg,0)*isnull(a.ISSKGS,0)),0) AS Value" & _
                    " from TMP_RM_ISSB a,TMP_RM_LOT b,TMP_RM_ISSH h," & _
                            "rm_count i" & _
                    " where  a.docno=h.docno and " & _
                            " a.docdt=h.docdt and a.isstype=h.isstype and " & _
                            " a.divcode=h.divcode and a.lotno=b.lotno and " & _
                            " a.catcd=b.catcd and a.lotdt=b.lotdt and " & _
                            " a.divcode=b.divcode  and issued='Y' AND " & _
                            " H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND " & _
                            " h.DOCDT Between '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and " & _
                            " h.cntcd is not null  and " & _
                            " h.cntcd Between '" & fcount & "' and '" & tcount & "' AND " & _
                            " h.cntcd = i.cntcd and b.lotyear='" & Year(yfdate) & "'" & _
                    " group by h.cntcd,i.cntname", DB, adOpenStatic
         Else
            cnt.Open "select DISTINCT ISNULL(h.cntcd,'') as cntcd," & _
                            "i.cntname,count(a.BALENO) AS Qty," & _
                            "isnull(sum(a.ISSKGS),0) AS Kgs,isnull(sum(isnull(b.ratekg,0)*isnull(a.ISSKGS,0)),0) AS Value" & _
                    " from TMP_RM_ISSB a,TMP_RM_LOT b,TMP_RM_ISSH h," & _
                            "rm_count i" & _
                    " where  a.docno=h.docno and " & _
                            " a.LotType='" & lottype & "' and " & _
                            " a.docdt=h.docdt and a.isstype=h.isstype and " & _
                            " a.divcode=h.divcode and a.lotno=b.lotno and " & _
                            " a.catcd=b.catcd and a.lotdt=b.lotdt and " & _
                            " a.divcode=b.divcode  and issued='Y' AND " & _
                            " H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND " & _
                            " h.DOCDT Between '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and " & _
                            " h.cntcd is not null  and " & _
                            " h.cntcd Between '" & fcount & "' and '" & tcount & "' AND " & _
                            " h.cntcd = i.cntcd and b.lotyear='" & Year(yfdate) & "' " & _
                    " group by h.cntcd,i.cntname", DB, adOpenStatic
         End If
    Else
         If lottype = "ALL" Then
            cnt.Open "select DISTINCT ISNULL(h.cntcd,'') as cntcd," & _
                            "i.cntname,count(a.BALENO) AS Qty," & _
                            "isnull(sum(a.ISSKGS),0) AS Kgs,isnull(sum(isnull(b.ratekg,0)*isnull(a.ISSKGS,0)),0) AS Value" & _
                    " From TMP_RM_ISSB a,TMP_RM_LOT b,TMP_RM_ISSH h," & _
                            "rm_count i" & _
                    " where  a.docno=h.docno and " & _
                            " a.docdt=h.docdt and a.isstype=h.isstype and " & _
                            " a.isstype='" & ISSTYPE & "' and " & _
                            " a.divcode=h.divcode and a.lotno=b.lotno and " & _
                            " a.catcd=b.catcd and a.lotdt=b.lotdt and " & _
                            " a.divcode=b.divcode  and issued='Y' AND " & _
                            " H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND " & _
                            " h.DOCDT Between '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and " & _
                            " h.cntcd is not null  and " & _
                            " h.cntcd Between '" & fcount & "' and '" & tcount & "' AND " & _
                            " h.cntcd = i.cntcd and b.lotyear='" & Year(yfdate) & "'" & _
                    " group by h.cntcd,i.cntname", DB, adOpenStatic
         Else
            cnt.Open "select DISTINCT ISNULL(h.cntcd,'') as cntcd," & _
                            "i.cntname,count(a.BALENO) AS Qty," & _
                            "isnull(sum(a.ISSKGS),0) AS Kgs,isnull(sum(isnull(b.ratekg,0)*isnull(a.ISSKGS,0)),0) AS Value" & _
                    " From TMP_RM_ISSB a,TMP_RM_LOT b,TMP_RM_ISSH h," & _
                            "rm_count i" & _
                    " where  a.docno=h.docno and " & _
                            " a.docdt=h.docdt and a.isstype=h.isstype and " & _
                            " a.isstype='" & ISSTYPE & "' and " & _
                            " a.LotType='" & lottype & "' and " & _
                            " a.divcode=h.divcode and a.lotno=b.lotno and " & _
                            " a.catcd=b.catcd and a.lotdt=b.lotdt and " & _
                            " a.divcode=b.divcode  and issued='Y' AND " & _
                            " H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND " & _
                            " h.DOCDT Between '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and " & _
                            " h.cntcd is not null  and " & _
                            " h.cntcd Between '" & fcount & "' and '" & tcount & "' AND " & _
                            " h.cntcd = i.cntcd and b.lotyear='" & Year(yfdate) & "'" & _
                    " group by h.cntcd,i.cntname", DB, adOpenStatic
         End If
    End If
    
    If co >= PageLen Then
        co = 0
        pg1 = pg1 + 1
        Print #a, Space(5) + String(130, "-")
        Print #a, Chr(12)
    End If
                
    If Not cnt.EOF Then
        Print #a, Space(15) + Chr(27) + "E" + CENTRE("Countwise Issue List - Abstract", 35, " ")
        Print #a, Space(15) + String(78, "-")
        Print #a, Space(15) & Padr("Count", 40, " ") & Space(1) & Padl("Qty", 4, " ") + Space(1) & Padl("Kgs", 13, " ") & Space(1) & Padl("Amount", 18, " ")
        Print #a, Space(15) + String(78, "-")
        co = co + 4
        
        Do While Not cnt.EOF
            If co >= PageLen Then
                co = 0
                pg1 = pg1 + 1
                Print #a, Space(5) + String(130, "-")
                Print #a, Chr(12)
            End If
    
            Print #a, Space(15) & Padr(cnt("cntname"), 38, " ") & Space(1) & Padl(INF(cnt("Qty"), 0), 6, " ") + Space(1) & Padl(INF(cnt("kgs"), 3), 13, " ") & Space(1) & Padl(INF(cnt("value"), 2), 18, " ")
            co = co + 1
            
            Qtot = Qtot + cnt("Qty")
            Ktot = Ktot + cnt("kgs")
            valtot = valtot + cnt("value")
            
            cnt.MoveNext
        Loop
    End If
    
    If co >= PageLen Then
        co = 0
        pg1 = pg1 + 1
        Print #a, Space(5) + String(130, "-")
        Print #a, Chr(12)
    End If
            
    Print #a, Space(15) + String(78, "-")
    Print #a, Space(15) & Padr("", 39, " ") & Space(0) & Padl(INF(Qtot, 0), 6, " ") + Space(1) & Padl(INF(Ktot, 3), 13, " ") & Space(1) & Padl(INF(valtot, 2), 18, " ")
    Print #a, Space(15) + String(78, "-")
        
Call footermod(CInt(a), footerstr, 85)

Print #a, Chr(12)
Print #a, Chr(18)
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
Public Sub PartyHeader(pg1 As Integer, co As Integer, U As String, V As String, divname, ISSTYPE As String, lottype As String)
          Print #a,
'          Print #a, Space(5) + Space(Round((190 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((190 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate)
          Print #a, Space(3) + Chr(27) + "E" + "Countwise Issue List" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy"); Space(2 + 6 + 10) + Format(SR, "dd/mm/yy") + Space(1); "Pg.:"; Padl(CStr(pg1), 3, " ") + Chr(15)
          
          If ISSTYPE = "A" Then
            Print #a, Space(10) + "Issue Type: ALL"; Space(10);
          Else
            Set Rs = New Recordset
            Rs.Open "Select * from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
            Print #a, Space(10) + "Issue Type: " & Rs("issue_desc"); Space(10);
          End If
          If lottype = "A" Then
            Print #a, "Lot Type: Own Process"
          ElseIf lottype = "T" Then
            Print #a, "Lot Type: Transfer Type"
          Else
            Print #a, "Lot Type: ALL"
          End If
          

          Print #a, Space(5) + String(144, "-")
          Print #a, Space(5) + "Count         Count Name                      Lot         Mill    Party                                               Rate/"
          Print #a, Space(5) + "Variety                   Category            Date      Lot No    LotNo.    Qty    Unit    Net weight   Rate/Kg       Candy            Amount"
          Print #a, Space(5) + String(144, "- ")
          co = co + 9
End Sub

Public Sub PartyHeader1(pg1 As Integer, co As Integer, U As String, V As String, divname)
          Print #a,
'          Print #a, Space(5) + Space(Round((190 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((190 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate)
          Print #a, Space(3) + Chr(27) + "E" + "Countwise Issue List" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy"); Space(2 + 6 + 10) + Format(SR, "dd/mm/yy") + Space(1); "Pg.:"; Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #a, Space(5) + String(144, "-")
          Print #a, Space(5) + "Count         Count Name                        Lot       Mill    Party                                               Rate/"
          Print #a, Space(5) + "Variety                   Category              Date    Lot No    LotNo.    Qty    Unit    Net weight   Rate/Kg       Candy            Amount"
          Print #a, Space(5) + String(144, "- ")
          co = co + 9
End Sub
Public Sub ProcessStock(U As String, V As String, divname As String, Issto As String, ISSTYPE As String, lottype As String, isstype1 As String, lottype1 As String, fcount As String, tcount As String, footerstr As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim xx As New Recordset
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim s As String
Dim xxx As New Recordset
Dim Count As Integer
Dim Cnn As Connection
Set Cnn = New Connection
Dim qtyt As Double
Dim weigh As Double
Dim amt As Double
Dim tqtyt As Double
Dim tweigh As Double
Dim tamt As Double
Dim bolFlag As Boolean
Dim dVPnet As Double
Dim dVFnet As Double
Dim dVAnet As Double
Dim dVBale As Double
Dim dVMoi As Double

Dim dGPnet As Double
Dim dGFnet As Double
Dim dGAnet As Double
Dim dGBale As Double
Dim dGMoi As Double
 
Dim dCPnet As Double
Dim dCFnet As Double
Dim dCAnet As Double
Dim dCBale As Double
Dim dCMoi As Double

dCPnet = 0: dCFnet = 0: dCAnet = 0: dCBale = 0: dCMoi = 0
dVPnet = 0: dVFnet = 0: dVAnet = 0: dVBale = 0: dVMoi = 0
dGPnet = 0: dGFnet = 0: dGAnet = 0: dGBale = 0: dGMoi = 0

Set rs1 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs4 = New Recordset
bolFlag = False
Set cnt = New Recordset
If Trim(ISSTYPE) = "A" Then
     If lottype = "ALL" Then
        cnt.Open "select DISTINCT ISNULL(h.cntcd,'') as cntcd,g.cntname from rm_issb a,rm_lot b,rm_issh h,rm_count g where h.cntcd=g.cntcd and h.divcode=g.divcode and " & _
        " a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  and issued='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and h.cntcd is not null " & _
        " and h.cntcd between '" & fcount & "' and '" & tcount & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO,g.cntname", DB, adOpenStatic
     Else
        cnt.Open "select DISTINCT ISNULL(h.cntcd,'') as cntcd,g.cntname from rm_issb a,rm_lot b,rm_issh h ,rm_count g where h.cntcd=g.cntcd and h.divcode=g.divcode and " & _
        " a.docno=h.docno and a.LotType='" & lottype & "' and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  and issued='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and h.cntcd is not null " & _
        " and h.cntcd between '" & fcount & "' and '" & tcount & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO,g.cntname", DB, adOpenStatic
     End If
Else
     If lottype = "ALL" Then
        cnt.Open "select DISTINCT ISNULL(h.cntcd,'') as cntcd,g.cntname from rm_issb a,rm_lot b,rm_issh h,rm_count g where h.cntcd=g.cntcd and h.divcode=g.divcode and " & _
         " a.docno=h.docno AND a.docdt=h.docdt and a.isstype=h.isstype and a.isstype='" & ISSTYPE & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  and issued='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and h.cntcd is not null" & _
         " and h.cntcd between '" & fcount & "' and '" & tcount & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO,g.cntname", DB, adOpenStatic
     Else
        cnt.Open "select DISTINCT ISNULL(h.cntcd,'') as cntcd,g.cntname from rm_issb a,rm_lot b,rm_issh h ,rm_count g where h.cntcd=g.cntcd and h.divcode=g.divcode and " & _
        " a.docno=h.docno and a.LotType='" & lottype & "' AND a.docdt=h.docdt and a.isstype=h.isstype and a.isstype='" & ISSTYPE & "' and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  and issued='Y' AND H.issto='" & Issto & "' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' and h.cntcd is not null" & _
        " and h.cntcd between '" & fcount & "' and '" & tcount & "' group by h.cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO,g.cntname", DB, adOpenStatic
     End If
End If
If cnt.EOF = True Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If

    Set rptv = New Report.ReportView
    a = FreeFile
    Close
'    Open "C:\issc.TXT" For Output As #a

 Open KALFOLDERDATA & "\issc.TXT" For Output As #a
'    Print #a, Chr(15)
    pg1 = 1
    co = 1
    Count = 1
    Call ProcessHeader(pg1, co, U, V, divname)

    cnt.MoveFirst
    Varcode = ""
    Do While cnt.EOF = False
        DB.CommandTimeout = 2200
        
        Set rs1 = New Recordset
        If lottype <> "ALL" Then
'            SR = ""
'            SR = SR & Chr(13) & " select h.cntcd,a.lotno,a.lotdt,e.varname,B.varcode,b.moiture,count(a.baleno) as Bales,sum(d.Favaourablewgt) as FaKgs,"
'            SR = SR & Chr(13) & " (sum(a.actisskgs) - sum(isnull(d.tarewt,0))) as ActKgs,sum(d.pnetwt) as pnetwt from rm_issb a,rm_lot b,rm_issh h,rm_bale d,rm_var e"
'            SR = SR & Chr(13) & " where a.divcode='" & Divcode & "' and h.cntcd ='" & cnt("cntcd") & "' and  a.LotType='" & lottype & "' and a.ISSUED='Y' AND H.issto='" & Issto & "' and "
'            SR = SR & Chr(13) & " a.divcode=b.divcode and a.catcd=b.catcd and a.lottype=b.lottype and a.lotno=b.lotno and   a.lotdt=b.lotdt and"
'            SR = SR & Chr(13) & " a.varcode =b.varcode and  a.divcode=h.divcode and   a.isstype=h.isstype and  a.docno=h.docno and"
'            SR = SR & Chr(13) & " a.docdt=h.docdt  and a.divcode=d.divcode and  a.catcd=d.catcd  and a.lottype=d.lottype  and a.lotno=d.lotno and"
'            SR = SR & Chr(13) & " a.lotdt=d.lotdt and a.varcode=d.varcode and a.baleno=d.baleno and a.varcode =e.varcode and a.catcd=e.catcd and"
'            SR = SR & Chr(13) & " a.DOCDT Between '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "'  and b.lotyear='" & Year(yfdate) & "' group by h.cntcd,a.lotno,a.lotdt,B.varcode,"
'            SR = SR & Chr(13) & " e.varname,b.moiture  order by b.varcode"
            
            SR = ""
'            SR = SR & Chr(13) & "SELECT z.LOTNO,z.lotdt,z.VARCODE,z.bales,z.MOITURE,z.actkgs,z.fakgs,z.tarewt,z.pnetwt FROM ("
'            SR = SR & Chr(13) & "SELECT a_1.LOTNO, a_1.lotdt, a_1.VARCODE, COUNT(a_1.Bales) AS bales,SUM(a_1.moiture)+SUM(b_1.MOITURE)MOITURE,"
'            SR = SR & Chr(13) & "(SUM(a_1.ActKgs)+SUM(b_1.ActKgs))-(SUM(a_1.tarewt)+SUM(b_1.tarewt)) AS actkgs, SUM(a_1.fakgs)+SUM(b_1.fakgs) AS fakgs,"
'            SR = SR & Chr(13) & "SUM(a_1.tarewt)+SUM(b_1.tarewt) AS tarewt, SUM(a_1.pnetwt)+SUM(b_1.pnetwt)  AS pnetwt FROM"
'            SR = SR & Chr(13) & "(SELECT a.LOTNO, a.lotdt, a.VARCODE, 0 AS moiture, a.BALENO AS Bales, a.ACTISSKGS AS ActKgs, 0 AS fakgs, 0 AS tarewt,"
'            SR = SR & Chr(13) & "0 AS pnetwt FROM RM_ISSB AS a"
'            SR = SR & Chr(13) & "INNER JOIN RM_ISSH AS h ON a.DIVCODE = h.DIVCODE AND a.ISSTYPE = h.ISSTYPE AND a.DOCNO = h.DOCNO AND a.DOCDT = h.DOCDT"
'            SR = SR & Chr(13) & "WHERE (a.DIVCODE = '" & Divcode & "') AND (h.cntcd = '" & cnt("cntcd") & "') AND (a.LOTTYPE = '" & lottype & "') AND (a.ISSUED = 'Y') AND (h.ISSTO = '" & Issto & "')"
'            SR = SR & Chr(13) & "AND (a.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "')) AS a_1"
'            SR = SR & Chr(13) & "INNER JOIN (SELECT     b.LOTNO, b.LOTDT, b.VARCODE, b.MOITURE, d.BALENO AS Bales, 0 AS ActKgs, d.FAVAOURABLEWGT AS"
'            SR = SR & Chr(13) & "FaKgs, ISNULL(d.TAREWT,0) AS tarewt, d.PNETWT AS pnetwt FROM RM_LOT AS b"
'            SR = SR & Chr(13) & "INNER JOIN RM_BALE AS d ON b.DIVCODE = d.DIVCODE AND b.CATCD = d.CATCD AND b.LOTTYPE = d.lottype AND b.LOTNO = d.LOTNO"
'            SR = SR & Chr(13) & "AND b.LOTDT = d.lotdt AND b.VARCODE = d.VARCODE WHERE (b.DIVCODE = '" & Divcode & "') AND (b.LOTTYPE = '" & lottype & "') AND (d.ISSUED = 'Y')"
'            SR = SR & Chr(13) & "AND (b.LOTYEAR = '" & Year(yfdate) & "')) AS b_1"
'            SR = SR & Chr(13) & "ON a_1.LOTNO = b_1.LOTNO AND a_1.lotdt = b_1.LOTDT AND a_1.VARCODE = b_1.VARCODE AND a_1.Bales = b_1.Bales"
'            SR = SR & Chr(13) & "WHERE (a_1.ActKgs > 0) GROUP BY a_1.LOTNO, a_1.lotdt, a_1.VARCODE)z ORDER BY z.VARCODE"
            
            
             SR = SR & Chr(13) & "SELECT     a.DIVCODE , a.LOTNO, a.lotdt, a.VARCODE, COUNT(a.Baleno) AS bales,sum(c.moiture) MOITURE,"
             SR = SR & Chr(13) & "(sum(a.ACTISSKGS)- sum(d.tarewt)) AS actkgs, sum(d.FAVAOURABLEWGT) AS fakgs,"
             SR = SR & Chr(13) & "sum(d.tarewt) AS tarewt, sum(d.pnetwt)  AS pnetwt FROM rm_bale AS d INNER JOIN     RM_Lot AS c ON"
             SR = SR & Chr(13) & "d.DIVCODE = c.DIVCODE AND d.CATCD = c.CATCD AND d.LOTNO = c.LOTNO AND d.lotdt = c.LOTDT AND d.VARCODE = c.VARCODE AND"
             SR = SR & Chr(13) & "d.lottype = c.LOTTYPE INNER JOIN  RM_issb AS a INNER JOIN   RM_issh AS b ON a.DIVCODE = b.DIVCODE AND a.ISSTYPE = b.ISSTYPE AND a.DOCNO = b.DOCNO AND a.DOCDT = b.DOCDT ON  c.DIVCODE = a.DIVCODE AND c.LOTNO = a.LOTNO AND c.LOTDT = a.lotdt AND c.VARCODE = a.VARCODE AND d.BALENO = a.BALENO AND   d.DIVCODE = a.DIVCODE"
             SR = SR & Chr(13) & "WHERE (a.DIVCODE =  '" & Divcode & "') AND (b.cntcd ='" & cnt("cntcd") & "') AND (a.LOTTYPE = '" & lottype & "') AND (a.ISSUED = 'Y') AND"
             SR = SR & Chr(13) & "(b.ISSTO = '" & Issto & "') AND (a.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "') and c.LOTYEAR = '" & Year(yfdate) & "'"
             SR = SR & Chr(13) & "group by  a.DIVCODE , a.LOTNO, a.lotdt, a.VARCODE order  by  a.VARCODE"
                     
                      
                      
        Else
'            SR = ""
'            SR = SR & Chr(13) & " select h.cntcd,a.lotno,a.lotdt,e.varname,B.varcode,b.moiture,count(a.baleno) as Bales,sum(d.Favaourablewgt) as FaKgs,"
'            SR = SR & Chr(13) & " (sum(a.actisskgs) - sum(isnull(d.tarewt,0))) as ActKgs,sum(d.pnetwt) as pnetwt from rm_issb a,rm_lot b,rm_issh h,rm_bale d,rm_var e"
'            SR = SR & Chr(13) & " where a.divcode='" & Divcode & "' and h.cntcd ='" & cnt("cntcd") & "' and  a.ISSUED='Y' AND H.issto='" & Issto & "' and "
'            SR = SR & Chr(13) & " a.divcode=b.divcode and a.catcd=b.catcd and a.lottype=b.lottype and a.lotno=b.lotno and   a.lotdt=b.lotdt and"
'            SR = SR & Chr(13) & " a.varcode =b.varcode and  a.divcode=h.divcode and   a.isstype=h.isstype and  a.docno=h.docno and"
'            SR = SR & Chr(13) & " a.docdt=h.docdt  and a.divcode=d.divcode and  a.catcd=d.catcd  and a.lottype=d.lottype  and a.lotno=d.lotno and"
'            SR = SR & Chr(13) & " a.lotdt=d.lotdt and a.varcode=d.varcode and a.baleno=d.baleno and a.varcode =e.varcode and a.catcd=e.catcd and"
'            SR = SR & Chr(13) & " a.DOCDT Between '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "'  and b.lotyear='" & Year(yfdate) & "' group by h.cntcd,a.lotno,a.lotdt,B.varcode,"
'            SR = SR & Chr(13) & " e.varname,b.moiture  order by b.varcode"

            SR = ""
'            SR = SR & Chr(13) & "SELECT z.LOTNO,z.lotdt,z.VARCODE,z.bales,z.MOITURE,z.actkgs,z.fakgs,z.tarewt,z.pnetwt FROM ("
'            SR = SR & Chr(13) & "SELECT a_1.LOTNO, a_1.lotdt, a_1.VARCODE, COUNT(a_1.Bales) AS bales,SUM(a_1.moiture)+SUM(b_1.MOITURE)MOITURE,"
'            SR = SR & Chr(13) & "(SUM(a_1.ActKgs)+SUM(b_1.ActKgs))-(SUM(a_1.tarewt)+SUM(b_1.tarewt)) AS actkgs, SUM(a_1.fakgs)+SUM(b_1.fakgs) AS fakgs,"
'            SR = SR & Chr(13) & "SUM(a_1.tarewt)+SUM(b_1.tarewt) AS tarewt, SUM(a_1.pnetwt)+SUM(b_1.pnetwt)  AS pnetwt FROM"
'            SR = SR & Chr(13) & "(SELECT a.LOTNO, a.lotdt, a.VARCODE, 0 AS moiture, a.BALENO AS Bales, a.ACTISSKGS AS ActKgs, 0 AS fakgs, 0 AS tarewt,"
'            SR = SR & Chr(13) & "0 AS pnetwt FROM RM_ISSB AS a"
'            SR = SR & Chr(13) & "INNER JOIN RM_ISSH AS h ON a.DIVCODE = h.DIVCODE AND a.ISSTYPE = h.ISSTYPE AND a.DOCNO = h.DOCNO AND a.DOCDT = h.DOCDT"
'            SR = SR & Chr(13) & "WHERE (a.DIVCODE = '" & Divcode & "') AND (h.cntcd = '" & cnt("cntcd") & "') AND (a.ISSUED = 'Y') AND (h.ISSTO = '" & Issto & "')"
'            SR = SR & Chr(13) & "AND (a.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "')) AS a_1"
'            SR = SR & Chr(13) & "INNER JOIN (SELECT     b.LOTNO, b.LOTDT, b.VARCODE, b.MOITURE, d.BALENO AS Bales, 0 AS ActKgs, d.FAVAOURABLEWGT AS"
'            SR = SR & Chr(13) & "FaKgs, ISNULL(d.TAREWT,0) AS tarewt, d.PNETWT AS pnetwt FROM RM_LOT AS b"
'            SR = SR & Chr(13) & "INNER JOIN RM_BALE AS d ON b.DIVCODE = d.DIVCODE AND b.CATCD = d.CATCD AND b.LOTTYPE = d.lottype AND b.LOTNO = d.LOTNO"
'            SR = SR & Chr(13) & "AND b.LOTDT = d.lotdt AND b.VARCODE = d.VARCODE WHERE (b.DIVCODE = '" & Divcode & "') AND (d.ISSUED = 'Y')"
'            SR = SR & Chr(13) & "AND (b.LOTYEAR = '" & Year(yfdate) & "')) AS b_1"
'            SR = SR & Chr(13) & "ON a_1.LOTNO = b_1.LOTNO AND a_1.lotdt = b_1.LOTDT AND a_1.VARCODE = b_1.VARCODE AND a_1.Bales = b_1.Bales"
'            SR = SR & Chr(13) & "WHERE (a_1.ActKgs > 0) GROUP BY a_1.LOTNO, a_1.lotdt, a_1.VARCODE)z ORDER BY z.VARCODE"
''
             SR = SR & Chr(13) & "SELECT     a.DIVCODE , a.LOTNO, a.lotdt, a.VARCODE, COUNT(a.Baleno) AS bales,sum(c.moiture) MOITURE,"
             SR = SR & Chr(13) & "(sum(a.ACTISSKGS)- sum(d.tarewt)) AS actkgs, sum(d.FAVAOURABLEWGT) AS fakgs,"
             SR = SR & Chr(13) & "sum(d.tarewt) AS tarewt, sum(d.pnetwt)  AS pnetwt FROM rm_bale AS d INNER JOIN     RM_Lot AS c ON"
             SR = SR & Chr(13) & "d.DIVCODE = c.DIVCODE AND d.CATCD = c.CATCD AND d.LOTNO = c.LOTNO AND d.lotdt = c.LOTDT AND d.VARCODE = c.VARCODE AND"
             SR = SR & Chr(13) & "d.lottype = c.LOTTYPE INNER JOIN  RM_issb AS a INNER JOIN   RM_issh AS b ON a.DIVCODE = b.DIVCODE AND a.ISSTYPE = b.ISSTYPE AND a.DOCNO = b.DOCNO AND a.DOCDT = b.DOCDT ON  c.DIVCODE = a.DIVCODE AND c.LOTNO = a.LOTNO AND c.LOTDT = a.lotdt AND c.VARCODE = a.VARCODE AND d.BALENO = a.BALENO AND   d.DIVCODE = a.DIVCODE"
             SR = SR & Chr(13) & "WHERE (a.DIVCODE =  '" & Divcode & "') AND (b.cntcd ='" & cnt("cntcd") & "')  AND (a.ISSUED = 'Y') AND"
             SR = SR & Chr(13) & "(b.ISSTO = '" & Issto & "') AND (a.DOCDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "') and c.LOTYEAR = '" & Year(yfdate) & "'"
             SR = SR & Chr(13) & "group by  a.DIVCODE , a.LOTNO, a.lotdt, a.VARCODE order  by  a.VARCODE"

            
        End If
        rs1.Open SR, DB, adOpenStatic

         If rs1.EOF = False Then
            rs1.MoveFirst
            dCPnet = 0: dCFnet = 0: dCAnet = 0: dCBale = 0: dCMoi = 0
            Print #a, Space(11) & Chr(27) + "E" + Padr(cnt("cntname"), 50, " ") + Chr(27) + "F"
            co = co + 1
            s = ""
            dVPnet = 0: dVFnet = 0: dVAnet = 0: dVBale = 0: dVMoi = 0
            co = co + 1
            Count = 0
            bolFlag = False
            Do While rs1.EOF = False
                If co > 64 Then
                    Print #a, Space(11) + String(125, "=")
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    co = 1
                    Call ProcessHeader(pg1, co, U, V, divname)
                    If co >= 10 And bolFlag = True Then
                        Print #a,
                        Print #a, Space(11) + Chr(27) + "E" & Padr("** Varietywise Total **", 26, " ") & Space(0) & Padr("", 4, " ") & Space(1) & Padl(INF(dVBale, 0), 8, " ") & Space(1) & Padl(INF(dVMoi, 2), 9, " ") & Space(1) & Padl(INF(dVPnet, 3), 13, " ") & Space(1) & Padl(INF(dVFnet, 3), 13, " ") & Space(1) & Padl(INF(dVAnet, 3), 13, " ") & Space(1) & Padr("", 8, " ") + Chr(27) + "F"
                        Print #a,
'                        S = rs1("varname")
                        co = co + 3
                        dVPnet = 0: dVFnet = 0: dVAnet = 0: dVBale = 0: dVMoi = 0
                        Count = 0
                    End If
                End If
            
                Set Rs = New Recordset
                Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rs1("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rs1("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
                If Rs.EOF = False Then
                    sLotYear = Format(Rs("AYFDATE"), "YY")
                Else
                    sLotYear = Format(rs1("LOTDT"), "YY")
                End If
                
                amt = rs1("bales") * IIf(IsNull(rs1("Moiture")), 0, rs1("Moiture"))
                If Varcode <> rs1("varcode") Then
                    Set rsVar = New Recordset
                    rsVar.Open "select varname from rm_var where varcode='" & rs1("varcode") & "'", DB
                End If
                Varcode = rs1("varcode")
                
                If s <> rsVar("VarName") Then
                    If co > 15 And bolFlag = True Then
                        Print #a,
                        Print #a, Space(11) + Chr(27) + "E" & Padr("** Varietywise Total **", 26, " ") & Space(0) & Padr("", 4, " ") & Space(1) & Padl(INF(dVBale, 0), 8, " ") & Space(1) & Padl(INF(dVMoi, 2), 9, " ") & Space(1) & Padl(INF(dVPnet, 3), 13, " ") & Space(1) & Padl(INF(dVFnet, 3), 13, " ") & Space(1) & Padl(INF(dVAnet, 3), 13, " ") & Space(1) & Padr("", 8, " ") + Chr(27) + "F"
                        Print #a,
'                        S = rs1("varname")
                        co = co + 3
                        dVPnet = 0: dVFnet = 0: dVAnet = 0: dVBale = 0: dVMoi = 0
                        Count = 0
                    End If
                    s = rsVar("varname")
                    Print #a, Space(11) & Padr(rsVar("varname"), 20, " ") & Space(2) & Padr(rs1("lotno") & "/" & sLotYear, 8, " ") & Space(2) & Padl(INF(rs1("bales"), 0), 8, " ") & Space(2) & Padl(INF(amt, 2), 8, " ") & Space(2) & Padl(INF(rs1("pnetwt"), 3), 13, " ") & Space(2) & Padl(INF(rs1("fakgs"), 3), 13, " ") & Space(2) & Padl(INF(rs1("actkgs"), 3), 13, " ") & Space(2) & Padr(Format(rs1("lotdt"), "dd/MM/yy"), 8, " ") & Space(2) & Padl(INF(pdate - rs1("lotdt"), 0), 8, " ")
                    bolFlag = True
                Else
                    Print #a, Space(11) & Padr("            ", 20, " ") & Space(2) & Padr(rs1("lotno") & "/" & sLotYear, 8, " ") & Space(2) & Padl(INF(rs1("bales"), 0), 8, " ") & Space(2) & Padl(INF(amt, 2), 8, " ") & Space(2) & Padl(INF(rs1("pnetwt"), 3), 13, " ") & Space(2) & Padl(INF(rs1("fakgs"), 3), 13, " ") & Space(2) & Padl(INF(rs1("actkgs"), 3), 13, " ") & Space(2) & Padr(Format(rs1("lotdt"), "dd/MM/yy"), 8, " ") & Space(2) & Padl(INF(pdate - rs1("lotdt"), 0), 8, " ")
                    bolFlag = True
                End If
                
                dVPnet = dVPnet + IIf(IsNull(rs1("pnetwt")), 0, rs1("pnetwt"))
                dVFnet = dVFnet + IIf(IsNull(rs1("FaKgs")), 0, rs1("FaKgs"))
                dVAnet = dVAnet + IIf(IsNull(rs1("ActKgs")), 0, rs1("ActKgs"))
                dVBale = dVBale + IIf(IsNull(rs1("bales")), 0, rs1("bales"))
                dVMoi = dVMoi + amt
                
                dCPnet = dCPnet + IIf(IsNull(rs1("pnetwt")), 0, rs1("pnetwt"))
                dCFnet = dCFnet + IIf(IsNull(rs1("FaKgs")), 0, rs1("FaKgs"))
                dCAnet = dCAnet + IIf(IsNull(rs1("ActKgs")), 0, rs1("ActKgs"))
                dCBale = dCBale + IIf(IsNull(rs1("bales")), 0, rs1("bales"))
                dCMoi = dCMoi + amt
                
                dGPnet = dGPnet + IIf(IsNull(rs1("pnetwt")), 0, rs1("pnetwt"))
                dGFnet = dGFnet + IIf(IsNull(rs1("FaKgs")), 0, rs1("FaKgs"))
                dGAnet = dGAnet + IIf(IsNull(rs1("ActKgs")), 0, rs1("ActKgs"))
                dGBale = dGBale + IIf(IsNull(rs1("bales")), 0, rs1("bales"))
                dGMoi = dGMoi + amt
                Count = Count + 1
                co = co + 1
                               
                rs1.MoveNext
            Loop
        End If
        If co > 64 Then
            Print #a, Space(11) + String(125, "=")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 1
            Call ProcessHeader(pg1, co, U, V, divname)
        End If
        
        Print #a,
        Print #a, Space(11) + Chr(27) + "E" & Padr("** Varietywise Total **", 26, " ") & Space(0) & Padr("", 4, " ") & Space(2) & Padl(INF(dVBale, 0), 8, " ") & Space(1) & Padl(INF(dVMoi, 2), 9, " ") & Space(2) & Padl(INF(dVPnet, 3), 13, " ") & Space(2) & Padl(INF(dVFnet, 3), 13, " ") & Space(2) & Padl(INF(dVAnet, 3), 13, " ") & Space(2) & Padr("", 8, " ") + Chr(27) + "F"
        Print #a,
        Print #a, Space(11) + Chr(27) + "E" & Padr("** Countwise Total **", 24, " ") & Space(0) & Padr("", 6, " ") & Space(2) & Padl(INF(dCBale, 0), 8, " ") & Space(1) & Padl(INF(dCMoi, 2), 9, " ") & Space(2) & Padl(INF(dCPnet, 3), 13, " ") & Space(2) & Padl(INF(dCFnet, 3), 13, " ") & Space(2) & Padl(INF(dCAnet, 3), 13, " ") & Space(2) & Padr("", 8, " ") + Chr(27) + "F"
        Print #a,
        Count = 1
        co = co + 5
        cnt.MoveNext
    Loop
        If co > 64 Then
            Print #a, Space(11) + String(125, "=")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 1
            Call ProcessHeader(pg1, co, U, V, divname)
        End If
        
    Print #a, Space(11) + String(125, "-")
    Print #a, Space(11) + Chr(27) + "E" & Padr("** Grand Total **", 24, " ") & Space(0) & Padr("", 6, " ") & Space(2) & Padl(INF(dGBale, 0), 8, " ") & Space(1) & Padl(INF(dGMoi, 2), 9, " ") & Space(2) & Padl(INF(dGPnet, 3), 13, " ") & Space(2) & Padl(INF(dGFnet, 3), 13, " ") & Space(2) & Padl(INF(dGAnet, 3), 13, " ") & Space(2) & Padr("", 8, " ") + Chr(27) + "F"
    Print #a, Space(11) + String(125, "-")
    Print #a, Space(11) + Chr(27) + "E" & Padr("** Average Moisture & Months **", 31, " ") & Space(1) & Padl(INF(dGMoi / dGBale, 2), 8, " ")
    Print #a, Space(11) + String(125, "=")
    
Call footermod(CInt(a), footerstr, 85)

Print #a, Chr(12)
Print #a, Chr(18)
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

Public Sub ProcessHeader(pg1 As Integer, co As Integer, U As String, V As String, divname)
    Print #a,
    Print #a, Chr(18)
    Print #a, Space(1) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    SR = CStr(pdate)
    Print #a, Space(11) + Chr(15) + Chr(27) + "E" + "Process Stock " + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy"); Space(68) + Format(SR, "dd/mm/yy") + Space(1); "Pg.:"; Padl(CStr(pg1), 3, " ") + Chr(15)
    Print #a, Space(11) + String(125, "-")
    Print #a, Space(11) & Chr(27) + "E" + Padr("Count", 20, " ") & Space(2) & Padr("Mill", 8, " ") & Space(2) & Padl("Qty", 8, " ") & Space(2) & Padl("Total", 8, " ") & Space(2) & Padl("Supplier", 13, " ") & Space(2) & Padl("Accounting", 13, " ") & Space(2) & Padl("Actual", 13, " ") & Space(2) & Padr("Receipt", 8, " ") & Space(2) & Padl("Duration", 8, " ") ''& Space(2) & Padl("Total", 8, " ")
    Print #a, Space(11) & Padr("Variety", 20, " ") & Space(2) & Padr("Lot No.", 8, " ") & Space(2) & Padl("", 8, " ") & Space(2) & Padl("Moisture", 8, " ") & Space(2) & Padl("Weight", 13, " ") & Space(2) & Padl("Weight", 13, " ") & Space(2) & Padl("Weight", 13, " ") & Space(2) & Padr("Date", 8, " ") & Space(2) & Padl("Days", 8, " ") ''& Space(2) & Padl("Months", 8, " ") + Chr(27) + "F"
    Print #a, Space(11) + String(125, "-")
    co = co + 9
End Sub

