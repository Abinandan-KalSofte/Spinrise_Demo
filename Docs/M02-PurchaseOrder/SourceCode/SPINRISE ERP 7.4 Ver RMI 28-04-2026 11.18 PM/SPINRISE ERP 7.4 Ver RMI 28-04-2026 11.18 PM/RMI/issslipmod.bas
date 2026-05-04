Attribute VB_Name = "issslipmod"
'Dim DIVNAME As String
Dim totbal As Double
Dim netwt As Double
Dim ginvwt As Double
Dim invwt As Double
Dim gtotbal As Double
Dim gnetwt As Double
Dim Pg As Integer
Dim f As Integer
Dim rs3 As Recordset
Public Sub IssueDateSlip(U As String, V As String)
    totbal = 0
    netwt = 0
    invwt = 0
    gtotbal = 0
    gnetwt = 0
    ginvwt = 0
    Set Rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    totVal = 0
    Date1 = Format(U, "yyyy-mm-dd")
    Date2 = Format(V, "yyyy-mm-dd")
    cnt = 0
    Close
    'Open "c:\dateiss1.txt" For Output As #f
    Open KALFOLDERDATA & "\dateiss1.TXT" For Output As #f
    Set RS2 = New Recordset
    RS2.Open "select distinct a.varcode, b.varname from  rm_issb a, rm_var b,RM_ISSUETYPE C where C.ISSUE_CODE=A.ISSTYPE AND a.varcode=b.varcode and docdt between'" & Date1 & "' and  '" & Date2 & "'and C.isstype='P'", Cn, adOpenStatic, adLockOptimistic
    
    If RS2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
         Close #f
        Screen.MousePointer = 0
        Exit Sub
    End If
    Pg = 1
    Call prnhead1(Pg, U, V)
    cnt = 10
    RS2.MoveFirst
    Do While Not RS2.EOF
            gmix = 0
            Print #f, Space(6); Padr(CStr(RS2(1)), 20, " ")
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                Pg = Pg + 1
                cnt = 0
                Call prnhead1(Pg, U, V)
                cnt = 10
            End If
                Set rs4 = New Recordset
                ''rs4.Open "select a.docno, a.docdt, b.varname, (a.baleno)as bales1,isnull(c.partybaleno,0) as bales,isnull((a.isskgs),0) as netwt, isnull((c.pnetwt),0) as invwt, d.isstype from rm_issb a, rm_var b, rm_bale c, rm_issuetype d where docdt between'" & Date1 & "' and  '" & date2 & "'and D.isstype like 'P' and a.varcode=b.varcode and a.varcode='" & rs2(0) & "' and a.lotno=c.lotno and a.baleno=c.baleno and a.isstype=d.issue_code order by a.varcode", cn, adOpenStatic, adLockOptimistic
                
                rs4.Open "select a.docno, a.docdt, b.varname, (a.baleno)as bales1,isnull(c.partybaleno,0) as bales,isnull((c.ACTisskgs),0) as netwt, isnull((c.pnetwt),0) as invwt, d.isstype from rm_issb a, rm_var b, rm_bale c, rm_issuetype d where docdt between'" & Date1 & "' and  '" & Date2 & "'and D.isstype like 'P' and a.varcode=b.varcode and a.varcode='" & RS2(0) & "' and a.lotno=c.lotno and a.baleno=c.baleno and a.isstype=d.issue_code order by a.varcode", Cn, adOpenStatic, adLockOptimistic
                
                Do While Not rs4.EOF
                     Print #f, Space(51) & Padl(rs4("bales"), 6, " ") & Space(6); Padl(Format(rs4("netwt"), "0.000"), 9, " ") & Space(4); Padl(Format(rs4("invwt"), "0.000"), 9, " ")
                     cnt = cnt + 1
                     
                     If cnt >= PageLen Then
                        Print #f, Space(5) & String(80, "-")
                        Print #f, Chr(12)
                        Pg = Pg + 1
                        cnt = 0
                        Call prnhead1(Pg, U, V)
                        cnt = 10
                    End If
                     totbal = totbal + 1
                     netwt = netwt + rs4("netwt")
                     invwt = invwt + rs4("invwt")
                     rs4.MoveNext
            Loop
                     Print #f,
                     Print #f, Space(50) & String(35, "-")
                     Print #f, Space(35) + " ** Total **  " & Space(2) + Padl(CStr(totbal), 6, " ") + Space(6) + Padl(Format(CStr(netwt), "0.000"), 9, " ") + Space(4) + Padl(Format(CStr(invwt), "0.000"), 9, " ")
                     Print #f, Space(50) & String(35, "-")
                     Print #f,
                     gtotbal = gtotbal + totbal
                     gnetwt = gnetwt + netwt
                     ginvwt = ginvwt + invwt
                     totbal = 0
                     netwt = 0
                     invwt = 0
            Print #f,
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                Pg = Pg + 1
                cnt = 0
                Call prnhead1(Pg, U, V)
                cnt = 10
            End If
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                Pg = Pg + 1
                cnt = 0
                Call prnhead1(Pg, U, V)
                cnt = 10
            End If
            RS2.MoveNext
        Loop
      Print #f, Space(5) & String(80, "-")
      Print #f, Space(30) + " ** Grand Total **  " & Space(1) + Padl(CStr(gtotbal), 6, " ") + Space(6) + Padl(CStr(gnetwt), 9, " ") + Space(4) + Padl(Format(CStr(ginvwt), "0.000"), 9, " ")
      Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                Pg = Pg + 1
                cnt = 0
                Call prnhead1(Pg, U, V)
                cnt = 10
            End If
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                Pg = Pg + 1
                cnt = 0
                Call prnhead1(Pg, U, V)
                cnt = 10
            End If
    'Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(80, "-")
                Print #f, Chr(12)
                Pg = Pg + 1
                cnt = 0
                Call prnhead1(Pg, U, V)
                cnt = 10
            End If
    Print #f, Chr(12)
    Close #f
'    Open "c:\dateiss1.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type dateiss1.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\dateiss1.txt"
'    Rep.Batfile = "c:\dateiss1.bat"
f = FreeFile
Call KALBATPROCESS("dateiss1")
    Screen.MousePointer = 0
End Sub

 Sub prnhead1(Pg As Integer, uh As String, vh As String)
    Print #f,
    Date1 = Format(uh, "dd-mm-yyyy")
    Date2 = Format(vh, "dd-mm-yyyy")
    Print #f, Chr(18)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + DIVNAME, 80, " " + Chr(27) + "F")
    Print #f,
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Issue Slip as on " & Format(Date1, "dd/mm/yy") & Space(34) & Format(Now, "dd/mm/yy") + Space(4) + "Pg. : " & Padl(Pg, 3, " ")
    Print #f, Space(5) & String(80, "-")
    'Print #f, Space(5) & Space(1) + "Date " + Space(5) + "Issue No."; Space(2); "Item Description" + Space(13) + "Bales" + Space(5) + "Net.Wt. " + Space(1) + "Invoice Wt."
    Print #f, Space(5) & "Materials " + Space(34) + "Bale No." + Space(8) + "Net.Wt. " + Space(1) + "Invoice Wt."
    Print #f, Space(5) & String(80, "-")
 End Sub
    


