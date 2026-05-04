Attribute VB_Name = "issregdatewise"
'Dim DIVNAME As String
Dim totbal, vTotBal As Double
Dim netwt, vNetWt As Double
Dim invwt, vInvwt As Double

Dim gtotbal As Double
Dim gnetwt As Double
Dim pg As Integer
Dim f As Integer
Dim rp As New repform1
Dim iCount As Integer

Public Sub IssueDateReport(U As String, V As String, issuetype As String, lottype As String, footerstr As String)
    Dim iTotal As Integer
    Dim sVarcode As String
    totbal = 0
    netwt = 0
    invwt = 0
    vTotBal = 0
    vNetWt = 0
    vInvwt = 0
    ginvwt = 0
    gtotbal = 0
    gnetwt = 0
    iCount = 0
    Dim irow   As Integer
    iCnt = 0
    Set REP = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    totVal = 0
    Date1 = Format(U, "yyyy-mm-dd")
    Date2 = Format(V, "yyyy-mm-dd")
    cnt = 0
    Close
'    Open "c:\dateiss.txt" For Output As #f
    
 Open KALFOLDERDATA & "\dateiss.TXT" For Output As #f
    Set rs2 = New Recordset
    If Trim(issuetype) = "A" Then
        If lottype = "ALL" Then
            rs2.Open "select distinct a.docno,a.docdt  from  rm_issh a,rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and a.divcode=b.divcode and a.docdt between'" & Date1 & "' and  '" & Date2 & "' and a.divcode='" & Divcode & "'", cn, adOpenStatic, adLockOptimistic
        Else
            rs2.Open "select distinct a.docno,a.docdt   from  rm_issh a,rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and a.divcode=b.divcode and a.docdt between'" & Date1 & "' and  '" & Date2 & "' and b.lottype='" & lottype & "' and a.divcode='" & Divcode & "'", cn, adOpenStatic, adLockOptimistic
        End If
    Else
        If lottype = "ALL" Then
            rs2.Open "select distinct a.docno,a.docdt  from  rm_issh a,rm_issuetype b,rm_issb c where a.docno=c.docno and a.docdt=c.docdt and a.divcode=c.divcode and a.isstype=c.isstype and a.isstype=b.issue_code and a.docdt between'" & Date1 & "' and  '" & Date2 & "' and b.issue_code='" & issuetype & "' and a.divcode='" & Divcode & "'", cn, adOpenStatic, adLockOptimistic
        Else
            rs2.Open "select distinct a.docno,a.docdt   from  rm_issh a,rm_issuetype b,rm_issb c where a.docno=c.docno and a.docdt=c.docdt and a.divcode=c.divcode and a.isstype=c.isstype and a.isstype=b.issue_code and a.docdt between'" & Date1 & "' and  '" & Date2 & "' and b.issue_code='" & issuetype & "' and c.lottype='" & lottype & "' and a.divcode='" & Divcode & "'", cn, adOpenStatic, adLockOptimistic
        End If
    End If
    
    If rs2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
         Close #f
        Screen.MousePointer = 0
        Exit Sub
    End If
    pg = 1
    Call prnhead1(pg, U, V)
    cnt = 10
    irow = 0
    rs2.MoveFirst
    Do While Not rs2.EOF
            gmix = 0
            Print #f, Space(5); Padr(Format(CStr(rs2(1)), "dd/mm/yy"), 8, " ");
            
            If cnt >= PageLen Then
                Print #f,
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead1(pg, U, V)
                cnt = 10
            End If
            cnt = cnt + 1
                Set rs4 = New Recordset
                ''rs4.Open "select a.docno,a.docdt,b.varname,count(a.baleno)as bales,sum(a.isskgs) as netwt, isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c, rm_issuetype d where docdt='" & Format(rs2(0), "yyyy-mm-dd") & "' and a.isstype like 'P%' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno and a.isstype=d.issue_code group by b.varname, a.docno, a.docdt", cn, adOpenStatic, adLockOptimistic
                If Trim(issuetype) = "A" Then
                    If lottype = "ALL" Then
                        rs4.Open "SELECT x.DOCNO,x.DOCDT,VARNAME,SUM(BALES)AS BALES,SUM(NETWT)AS NETWT,SUM(INVWT)AS INVWT FROM( select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' group by b.varname, a.docno, a.docdt " & _
                             " Union All select a.docno, a.docdt, b.varname, 0 AS BALES, sum(c.favaourablewgt) as netwt,isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' group by b.varname, a.docno, a.docdt)X GROUP BY x.DOCNO,x.DOCDT,VARNAME", DB, adOpenStatic
'                        rs4.Open "select a.docno,a.docdt, b.varname, count(a.baleno) AS BALES, sum(c.favaourablewgt) as netwt,isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docdt='" & RS2(0) & "' and a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' group by b.varname, a.docno, a.docdt", DB, adOpenStatic
                    Else
                        rs4.Open "SELECT x.DOCNO,x.DOCDT,VARNAME,SUM(BALES)AS BALES,SUM(NETWT)AS NETWT,SUM(INVWT)AS INVWT FROM( select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and lottype='" & lottype & "' group by b.varname, a.docno, a.docdt " & _
                             " Union All select a.docno, a.docdt, b.varname, 0 AS BALES, sum(c.favaourablewgt) as netwt,isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and a.lottype='" & lottype & "' group by b.varname, a.docno, a.docdt)X GROUP BY x.DOCNO,x.DOCDT,VARNAME", DB, adOpenStatic
                    End If
                Else
                    If lottype = "ALL" Then
                        rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(BALES)AS BALES,SUM(NETWT)AS NETWT,SUM(INVWT)AS INVWT FROM( select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' group by b.varname, a.docno, a.docdt " & _
                             " Union All select a.docno, a.docdt, b.varname, 0 AS BALES, sum(c.favaourablewgt) as netwt,isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' group by b.varname, a.docno, a.docdt)X  GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
                    ElseIf Trim(issuetype) = "JR" And lottype = "A" Then
                        rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(BALES)AS BALES,SUM(NETWT)AS NETWT,SUM(INVWT)AS INVWT FROM( select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' group by b.varname, a.docno, a.docdt " & _
                             " Union All select a.docno, a.docdt, b.varname, 0 AS BALES, sum(c.favaourablewgt) as netwt,isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' group by b.varname, a.docno, a.docdt)X  GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
                    Else
                        rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(BALES)AS BALES,SUM(NETWT)AS NETWT,SUM(INVWT)AS INVWT FROM( select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' and lottype='" & lottype & "' group by b.varname, a.docno, a.docdt " & _
                             " Union All select a.docno, a.docdt, b.varname, 0 AS BALES, sum(c.favaourablewgt) as netwt,isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docno='" & rs2(0) & "' and docdt='" & Format(rs2(1), "yyyy-mm-dd") & "' and a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' and a.lottype='" & lottype & "' group by b.varname, a.docno, a.docdt)X  GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
                    End If
                End If
                docNo = ""
                If rs4.EOF = False Then sVarcode = rs4("Varname")
                iCount = 0
                irow = 0
                vTotBal = 0: vNetWt = 0: vInvwt = 0
                Do While Not rs4.EOF
                If iCount > 0 Then
                If sVarcode <> rs4("VARNAME") Then
                    If irow > 1 Then
                        
                        Print #f, Space(53) & String(32, "-")
                        Print #f, Space(23) + " ** Varietywise Total ** " & Space(4) + Padl(CStr(vTotBal), 6, " ") + Space(6) + Padl(Format(CStr(vNetWt), "0.000"), 9, " ") + Space(3) + Padl(Format(CStr(vInvwt), "0.000"), 9, " ")
                        Print #f, Space(53) & String(32, "-")
                        
'                        Print #f,
                        vTotBal = 0: vNetWt = 0: vInvwt = 0
                        cnt = cnt + 3
                        irow = 0
                    End If
                    Print #f,
                    vTotBal = 0: vNetWt = 0: vInvwt = 0
                    irow = 0
                    cnt = cnt + 1
                     sVarcode = rs4("Varname")
                End If
                     If docNo = rs4("docno") Then
                        Print #f, Space(15); Padl(" ", 7, " "); Space(5); Padr(rs4("varname"), 25, " ") & Padl(rs4("bales"), 6, " ") & Space(6); Padl(Format(rs4("netwt"), "0.000"), 9, " ") & Space(3); IIf(rs4("invwt") = 0, Padl(Format(rs4("netwt"), "0.000"), 9, " "), Padl(Format(rs4("invwt"), "0.000"), 9, " "))
                     Else
                        Print #f, Space(15); Padl(rs4("docno"), 7, " "); Space(5); Padr(rs4("varname"), 25, " ") & Padl(rs4("bales"), 6, " ") & Space(6); Padl(Format(rs4("netwt"), "0.000"), 9, " ") & Space(3); IIf(rs4("invwt") = 0, Padl(Format(rs4("netwt"), "0.000"), 9, " "), Padl(Format(rs4("invwt"), "0.000"), 9, " "))
                     End If
               Else
'               If sVarcode <> rs4("VARNAME") Then
'                 If iRow > 1 Then
'                     Print #f, Space(53) & String(32, "-")
'                     Print #f, Space(26) + " ** Varietywise Total ** " & Space(4) + Padl(CStr(totbal), 6, " ") + Space(6) + Padl(Format(CStr(netwt), "0.000"), 9, " ") + Space(3) + Padl(Format(CStr(invwt), "0.000"), 9, " ")
'                     Print #f, Space(53) & String(32, "-")
'
'                     Print #f,
'                     iRow = 0
'                 End If
'               End If
                    If docNo = rs4("docno") Then
                        Print #f, Space(4); Padl(" ", 5, " "); Space(0); Padr(rs4("varname"), 25, " ") & Padl(rs4("bales"), 6, " ") & Space(6); Padl(Format(rs4("netwt"), "0.000"), 9, " ") & Space(3); IIf(rs4("invwt") = 0, Padl(Format(rs4("netwt"), "0.000"), 9, " "), Padl(Format(rs4("invwt"), "0.000"), 9, " "))
                     Else
                        Print #f, Space(2); Padl(rs4("docno"), 7, " "); Space(5); Padr(rs4("varname"), 25, " ") & Padl(rs4("bales"), 6, " ") & Space(6); Padl(Format(rs4("netwt"), "0.000"), 9, " ") & Space(3); IIf(rs4("invwt") = 0, Padl(Format(rs4("netwt"), "0.000"), 9, " "), Padl(Format(rs4("invwt"), "0.000"), 9, " "))
                     End If
                     
                     
               End If
                    iCount = iCount + 1
                    irow = irow + 1
                     docNo = rs4("docno")
                     cnt = cnt + 1
                     If cnt >= PageLen Then
                        Print #f,
                        Print #f, Space(5) & String(80, "-")
                        Print #f, Chr(12)
                        pg = pg + 1
                        cnt = 0
                        Call prnhead1(pg, U, V)
                        cnt = 10
                    End If
                     totbal = totbal + rs4("bales")
                     netwt = netwt + rs4("netwt")
                     invwt = invwt + IIf(rs4("invwt") = 0, rs4("netwt"), rs4("invwt"))
                     vTotBal = vTotBal + rs4("bales")
                     vNetWt = vNetWt + rs4("netwt")
                     vInvwt = vInvwt + IIf(rs4("invwt") = 0, rs4("netwt"), rs4("invwt"))
                     
                     rs4.MoveNext
            Loop
                     
'                     Print #f,
                     If irow > 1 Then
                        Print #f, Space(53) & String(32, "-")
                        Print #f, Space(23) + " ** Varietywise Total ** " & Space(4) + Padl(CStr(vTotBal), 6, " ") + Space(6) + Padl(Format(CStr(vNetWt), "0.000"), 9, " ") + Space(3) + Padl(Format(CStr(vInvwt), "0.000"), 9, " ")
                        Print #f, Space(53) & String(32, "-")
                         cnt = cnt + 3
'                        Print #f,
                        irow = 0
                     End If
                     
                     If iCount > 1 Then
                     Print #f, Space(53) & String(32, "-")
                     Print #f, Space(26) + " ** Datewise Total ** " & Space(4) + Padl(CStr(totbal), 6, " ") + Space(6) + Padl(Format(CStr(netwt), "0.000"), 9, " ") + Space(3) + Padl(Format(CStr(invwt), "0.000"), 9, " ")
                     Print #f, Space(53) & String(32, "-")
                     
'                     Print #f,
                     End If
                     iCount = 0
                     gtotbal = gtotbal + totbal
                     gnetwt = gnetwt + netwt
                     ginvwt = ginvwt + invwt
                     totbal = 0
                     netwt = 0
                     invwt = 0
'            Print #f,
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead1(pg, U, V)
                cnt = 10
            End If
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead1(pg, U, V)
                cnt = 10
            End If
        rs2.MoveNext
        
      Loop
      Print #f, Space(5) & String(80, "-")
      Print #f, Space(30) + " ** Grand Total ** " & Space(3) + Padl(CStr(gtotbal), 6, " ") + Space(6) + Padl(Format(CStr(gnetwt), "0.000"), 9, " ") + Space(3) + Padl(Format(CStr(ginvwt), "0.000"), 9, " ")
      Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead1(pg, U, V)
                cnt = 10
            End If
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead1(pg, U, V)
                cnt = 10
            End If
    'Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead1(pg, U, V)
                cnt = 10
            End If
            
    'Abstract
    If lottype = "ALL" Then
        If Trim(issuetype) = "A" Then
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT lottype,SUM(BALES)AS BALES,SUM(NETWT)AS NETWT,SUM(INVWT)AS INVWT FROM("
            SqlStr = SqlStr + Chr(13) & "select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(V, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(c.favaourablewgt) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(V, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
        Else
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT lottype,SUM(BALES)AS BALES,SUM(NETWT)AS NETWT,SUM(INVWT)AS INVWT FROM("
            SqlStr = SqlStr + Chr(13) & "select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where isstype='" & issuetype & "' and docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(V, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(c.favaourablewgt) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where isstype='" & issuetype & "' and docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(V, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
        End If

        Set rs4 = New Recordset
        rs4.Open SqlStr, DB, adOpenStatic
    
        If rs4.RecordCount > 0 Then
            Print #f,
            Print #f,
            Print #f, Space(5) & "Issue List Abstract - Lottypewise"
            Print #f, Space(5) & String(66, "-")
            Print #f, Space(5) & "Lot Type         Bales                Net.Wt           Invoice Wt."
            Print #f, Space(5) & String(66, "-")
            
            Do While Not rs4.EOF
                Print #f, Space(5) & Padr(rs4("lottype"), 10, " ") & Space(2) & Padl(rs4("bales"), 10, " ") & Space(2) & Padl(Format(rs4("netwt"), "0.000"), 20, " ") & Space(2) & Padl(Format(rs4("invwt"), "0.000"), 20, " ")
                totbale = totbale + rs4("bales")
                totnetwt = totnetwt + rs4("netwt")
                totinvwt = totinvwt + rs4("invwt")
                rs4.MoveNext
            Loop
            Print #f, Space(5) & String(66, "-")
            Print #f, Space(5) & Padr("", 10, " ") & Space(2) & Padl(totbale, 10, " ") & Space(2) & Padl(Format(totnetwt, "0.000"), 20, " ") & Space(2) & Padl(Format(totinvwt, "0.000"), 20, " ")
            Print #f, Space(5) & String(66, "-")
        End If
    End If
    Print #f,
    Print #f,
    Print #f,
    Call footermod(CInt(f), footerstr, 80)
    Print #f, Chr(12)
    Close #f
'    Open "c:\dateiss.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type dateiss.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\dateiss.txt"
'    Rep.Batfile = "c:\dateiss.bat"
f = FreeFile
Call KALBATPROCESS("dateiss")
    Screen.MousePointer = 0
End Sub

 Sub prnhead1(pg As Integer, uh As String, vh As String)
    Print #f,
    Date1 = Format(uh, "dd-mm-yyyy")
    Date2 = Format(vh, "dd-mm-yyyy")
    Print #f, Chr(18)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + divname, 80, " " + Chr(27) + "F")
    Print #f,
    Print #f,
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Datewise Issues List" + " from " & Format(Date1, "dd/mm/yy") & Space(1) + "to " & Format(Date2, "dd/mm/yy") & Space(10) & Format(Now, "dd/mm/yy") + Space(3) + "Pg. : " & Padl(pg, 3, " ")
    Print #f, Space(5) & String(80, "-")
    Print #f, Space(5) & "Date" + Space(4) + "Issue No."; Space(5); "Item Description" + Space(10) + "Bales" + Space(8) + "Net.Wt." + Space(1) + "Invoice Wt."
    Print #f, Space(5) & String(80, "-")
 End Sub
    
Public Sub IssueDateLotwiseReport(U As String, V As String, MFlotNo As Integer, MTlotno As Integer, SFlotno As String, Stlotno As String, FromVar As String, ToVar As String)
    Dim iTotal As Integer
    Dim dt As String
    
    totbal = 0
    netwt = 0
    invwt = 0
    ginvwt = 0
    gtotbal = 0
    gnetwt = 0
    iCount = 0
    Set REP = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    totVal = 0
    Date1 = Format(U, "yyyy-mm-dd")
    Date2 = Format(V, "yyyy-mm-dd")
    cnt = 0
    Close
'    Open "c:\dateiss.txt" For Output As #f
    Open KALFOLDERDATA & "\dateiss.TXT" For Output As #f
    Set rs2 = New Recordset
    rs2.Open "select distinct a.docdt from rm_issb a, rm_var b,rm_lot p where docdt between '" & U & "' and '" & V & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and p.lotno between " & MFlotNo & " and " & MTlotno & " and p.plotno between '" & SFlotno & "' and '" & Stlotno & "' and a.varcode between '" & FromVar & "' and '" & ToVar & "' and a.divcode = p.divcode and a.lotno = p.lotno and a.LOTDT = p.LOTDT And a.Varcode = p.Varcode and p.lotyear='" & Year(yfdate) & "' group by b.varname, a.docno, a.docdt,p.plotno,p.lotno", DB, adOpenStatic
    
    If rs2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
         Close #f
        Screen.MousePointer = 0
        Exit Sub
    End If
    pg = 1
    Call prnhead2(pg, U, V)
    cnt = 10
    rs2.MoveFirst
    Do While Not rs2.EOF
            gmix = 0
'            Print #f, Space(5); Padr(Format(CStr(RS2(0)), "dd/mm/yy"), 8, " ");
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(105, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead2(pg, U, V)
                cnt = 10
            End If
                Set rs4 = New Recordset
                rs4.Open "select distinct  a.docdt, b.varname, count(a.baleno)as bales,sum(isnull(a.actisskgs,0)) as Iss_wt,sum(isnull(a.isskgs,0)) as net_wt,p.PlotNo , p.LOTNO from rm_issb a, rm_var b,rm_lot p where docdt='" & Format(rs2(0), "yyyy-mm-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and p.lotno between " & MFlotNo & " and " & MTlotno & " and p.plotno between '" & SFlotno & "' and '" & Stlotno & "' and a.varcode between '" & FromVar & "' and '" & ToVar & "' and a.divcode = p.divcode and a.lotno = p.lotno and a.LOTDT = p.LOTDT And a.Varcode = p.Varcode group by b.varname, a.docdt,p.plotno,p.lotno", DB, adOpenStatic

                docNo = ""
                iCount = 0
                Do While Not rs4.EOF
                    If dt = "" Then
                        Print #f, Space(5) & Padr(Format(CStr(rs2(0)), "dd/mm/yy"), 8, " ") & Space(2) & Padl(rs4("lotno"), 12, " ") & Space(2) & Padl(rs4("plotno"), 16, " ") & Space(5) & Padr(rs4("varname"), 25, " ") & Padl(rs4("bales"), 6, " ") & Space(8) & Padl(Format(rs4("net_wt"), "0.000"), 9, " ") & Space(3) & Padl(Format(rs4("iss_wt"), "0.000"), 9, " ")
                    ElseIf dt = Format(rs2(0), "yyyy-mm-dd") Then
                        Print #f, Space(5) & Space(8) & Space(2) & Padl(rs4("lotno"), 12, " ") & Space(2) & Padl(rs4("plotno"), 16, " ") & Space(5) & Padr(rs4("varname"), 25, " ") & Padl(rs4("bales"), 6, " ") & Space(8) & Padl(Format(rs4("net_wt"), "0.000"), 9, " ") & Space(3) & Padl(Format(rs4("iss_wt"), "0.000"), 9, " ")
                        iCount = iCount + 1
                    ElseIf dt <> Format(rs2(0), "yyyy-mm-dd") Then
                        Print #f, Space(5) & Padr(Format(CStr(rs2(0)), "dd/mm/yy"), 8, " ") & Space(2) & Padl(rs4("lotno"), 12, " ") & Space(2) & Padl(rs4("plotno"), 16, " ") & Space(5) & Padr(rs4("varname"), 25, " ") & Padl(rs4("bales"), 6, " ") & Space(8) & Padl(Format(rs4("net_wt"), "0.000"), 9, " ") & Space(3) & Padl(Format(rs4("iss_wt"), "0.000"), 9, " ")
                    End If
                     
                     cnt = cnt + 1
                     If cnt >= PageLen Then
                        Print #f, Space(5) & String(105, "-")
                        Print #f, Chr(12)
                        pg = pg + 1
                        cnt = 0
                        Call prnhead2(pg, U, V)
                        cnt = 10
                    End If
                     totbal = totbal + rs4("bales")
                     netwt = netwt + rs4("net_wt")
                     invwt = invwt + rs4("iss_wt")
                     dt = Format(rs2(0), "yyyy-mm-dd")
                     rs4.MoveNext
            Loop
                     
                     Print #f,
                     If iCount > 1 Then
                     Print #f, Space(75) & String(35, "-")
                     Print #f, Space(50) + Padr(" ** Datewise Total ** ", 25, " ") + Padl(CStr(totbal), 6, " ") + Space(8) + Padl(Format(CStr(netwt), "0.000"), 9, " ") + Space(3) + Padl(Format(CStr(invwt), "0.000"), 9, " ")
                     Print #f, Space(75) & String(35, "-")
                     
                     Print #f,
                     End If
                     iCount = 0
                     gtotbal = gtotbal + totbal
                     gnetwt = gnetwt + netwt
                     ginvwt = ginvwt + invwt
                     totbal = 0
                     netwt = 0
                     invwt = 0
            Print #f,
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(105, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead2(pg, U, V)
                cnt = 10
            End If
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(105, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead2(pg, U, V)
                cnt = 10
            End If
        rs2.MoveNext
        
      Loop
      Print #f, Space(5) & String(105, "-")
      Print #f, Space(50) + Padr(" ** Grand Total ** ", 25, " ") & Padl(CStr(gtotbal), 6, " ") + Space(8) + Padl(Format(CStr(gnetwt), "0.000"), 9, " ") + Space(3) + Padl(Format(CStr(ginvwt), "0.000"), 9, " ")
      Print #f, Space(5) & String(105, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(105, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead2(pg, U, V)
                cnt = 10
            End If
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(105, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead2(pg, U, V)
                cnt = 10
            End If
    'Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(105, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead2(pg, U, V)
                cnt = 10
            End If
            
    
    'Call footermod(CInt(f), footerstr, 80)
    Print #f, Chr(12)
    Close #f
'    Open "c:\dateiss.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type dateiss.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\dateiss.txt"
'    Rep.Batfile = "c:\dateiss.bat"
f = FreeFile
Call KALBATPROCESS("dateiss")
    Screen.MousePointer = 0
End Sub

 Sub prnhead2(pg As Integer, uh As String, vh As String)
    Print #f,
    Date1 = Format(uh, "dd-mm-yyyy")
    Date2 = Format(vh, "dd-mm-yyyy")
    Print #f, Chr(18)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + divname, 108, " " + Chr(27) + "F")
    Print #f,
    Print #f,
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Datewise \ Lotwise Issues List" + " from " & Format(Date1, "dd/mm/yy") & Space(1) + "to " & Format(Date2, "dd/mm/yy") & Space(20) & Format(Now, "dd/mm/yy") + Space(3) + "Pg. : " & Padl(pg, 3, " ")
    Print #f, Space(5) & String(105, "-")
    Print #f, Space(5) & Padr("Date", 8, " ") + Space(2) + Padl("Mill Lot No.", 12, " ") & Space(2) & Padl("Supplier Lot No.", 16, " ") + Space(5) + Padr("Variety", 25, " ") + Padl("Qty", 6, " ") + Space(8) + Padl("Net.Wt.", 9, " ") + Space(3) + Padl("Iss.Wt.", 9, " ")
    Print #f, Space(5) & String(105, "-")
 End Sub
    


