Attribute VB_Name = "TransferIssuePartyWise"
Dim rs5 As Recordset
Dim RS6 As Recordset
Dim rs7 As Recordset
Dim RS8 As Recordset
Dim ResultRs As Recordset
Dim rptv As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14, tot15 As Double
Dim c1 As Integer
Dim Cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s1, s2 As String
Dim z As Integer
Dim br As Integer
Dim br1 As Integer
Dim rp As New repform

Public Sub TIPW1(Date1 As String, Date2 As String, divname As String, ISSTYPE As String, footerstr As String)
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rptv = New Report.ReportView
s = FreeFile
Close #11
Screen.MousePointer = 0
'Open "C:\TIPW.TXT" For Output As #11
Open KALFOLDERDATA & "\TIPW.TXT" For Output As #11
pg1 = 1: co = 0
Print #11, Chr(15)
z = FreeFile
Call LotstockRepHeader(pg1, divname, ISSTYPE)
tot6 = 0: tot7 = 0
tot8 = 0: tot9 = 0
isstot1 = 0: isstot2 = 0: isstot3 = 0: isstot4 = 0

tot10 = 0
Set rs5 = New Recordset
If Trim(ISSTYPE) = "A" Then
    rs5.Open "select distinct ISNULL(rdivcode,'')""Division"",ISNULL(divname,'')divname, A.ISSTYPE,e.ISSUE_DESC AS description from rm_issh a,rm_issb b,pp_divmas  c,rm_lot d,RM_ISSUETYPE E where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype   and a.isstype=E.issUE_CODE   and B.isstype=E.issUE_CODE and E.isstype in ('T','J') and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.rdivcode=c.divcode  and  a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(f1, "yyyy-mm-dd") & "' and '" & Format(t1, "yyyy-mm-dd") & "'", Cnn, adOpenStatic
Else
    rs5.Open "select distinct ISNULL(rdivcode,'')""Division"",ISNULL(divname,'')divname, A.ISSTYPE,e.ISSUE_DESC AS  description from rm_issh a,rm_issb b,pp_divmas  c,rm_lot d,RM_ISSUETYPE E where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype   and a.isstype=E.issUE_CODE   and B.isstype=E.issUE_CODE and E.isstype in ('T','J') and A.isstype='" & ISSTYPE & "' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.rdivcode=c.divcode  and  a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(f1, "yyyy-mm-dd") & "' and '" & Format(t1, "yyyy-mm-dd") & "'", Cnn, adOpenStatic
End If
If rs5.RecordCount = 0 Then
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
isstypeg = ""
divcnt = 0
Do While Not rs5.EOF
            If co >= PageLen - 3 Then
                Print #11, Space(5) & String(117, "-"); Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call LotstockRepHeader(pg1, divname, ISSTYPE)
            End If
            If isstypeg <> rs5("ISSTYPE") Then
               
                If isstypeg <> "" Then
                        If Trim(ISSTYPE) = "A" Then
                            Print #11,
                            Print #11, Space(35) + Chr(27) & "E" & " ** IssueType Total ** " + Padl(CStr(INF(isstot1, 0)), 8, " ") & Space(9) & Padl(INF(isstot2, 0), 6, " ") & Space(6) & Padl(INF(isstot3, 2), 14, " ") & Space(6) & Padl(INF(isstot4, 2), 15, " ") & Chr(27) & "F"
                            Print #11,
                            co = co + 3
                            isstot1 = 0: isstot2 = 0: isstot3 = 0: isstot4 = 0
                        End If
                End If
                Print #11, Space(5) & Padr(rs5("isstype"), 10, " ") & Space(5) & Padr(rs5("description"), 20, " ")
                co = co + 1
                isstypeg = rs5("ISSTYPE")
            End If
            Print #11, Space(5) & rs5(0) & Space(2) & rs5(1)
            co = co + 1
            If co >= PageLen Then
                Print #11, Space(5) & String(117, "-"); Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call LotstockRepHeader(pg1, divname, ISSTYPE)
            End If
            
            Print #11,
            co = co + 1
            If co >= PageLen Then
                Print #11, Space(5) & String(117, "-"); Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call LotstockRepHeader(pg1, divname, ISSTYPE)
            End If
            
            Set rs7 = New Recordset
            rs7.Open "select distinct a.rdivcode,DIVNAME,b.lotno,b.lotdt,B.varcode, a.cntcd,round(Sum(isnull(b.isskgs,0)),2) netwt,bales=(case bblflg when 'B' then COUNT(B.BALENO)  end), borah=(case when bblflg  IN ('R','H') then COUNT(B.BALENO) end),round(Sum(isnull(b.actisskgs,0)),2) netwt,Value=round((sum(isnull(b.actisskgs,0)))*ISNULL(D.RATEKG,0),2)  from rm_issh a,rm_issb b,pp_divmas c,rm_lot d,rm_issuetype f where A.isstype='" & rs5("ISSTYPE") & "' AND " & _
                     " b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype   and a.isstype=f.issue_code and b.isstype=f.issue_code and f.isstype in ('T','J') and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.rdivcode=c.divcode   and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' and a.rdivcode = '" & rs5(0) & "' and d.lotyear='" & Year(yfdate) & "' group by a.rdivcode,divname,b.lotno,b.lotdt,B.varcode, a.cntcd,bblflg,ratekg,D.RATECY order by a.rdivcode,divname,b.lotno,b.lotdt", Cnn, adOpenStatic
             
           
            Set RS8 = New Recordset
            RS8.Open "select distinct a.rdivcode,divname,b.lotno,b.lotdt,B.varcode, a.cntcd,round(sum(isswt),2),bales=(case bblflg when 'B' then COUNT(B.BALENO)  end), borah=(case when bblflg  IN ('R','H') then COUNT(B.BALENO) end),round(sum(isswt),2) netwt,Value=round(d.ratekg*sum(b.ACTISSKGS),2),b.baleno from rm_issh a,rm_issb b,pp_divmas c,rm_lot d,rm_issuetype  e where  A.isstype='" & rs5("ISSTYPE") & "' AND " & _
                    " b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and   a.isstype=e.issue_code and  b.isstype=e.issue_code  and e.isstype in ('T','J') and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.rdivcode=c.divcode  and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' and a.rdivcode = '" & rs5(0) & "' and d.lotyear='" & Year(yfdate) & "'  group by a.rdivcode,divname,b.lotno,b.lotdt,B.varcode, a.cntcd,bblflg,ratekg,baleno  order by a.rdivcode,divname,b.lotno,b.lotdt", Cnn, adOpenStatic
            
            br = IIf(IsNull(rs7("BALES")), 0, rs7("BALES").value)
            br1 = IIf(IsNull(rs7("BORAH")), 0, rs7("BORAH"))
            If RS8("bales") <> "" Then
                br1 = 0
            Else
                br = 0
            End If
            tot1 = 0
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
            Do While Not rs7.EOF
                Set Namers = New Recordset
                Namers.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rs7("VARCODE") & "'", DB, adOpenStatic
                Print #11, Space(12) & Padl(INF(rs7("lotno"), 0), 5, " ") & Space(10) & Padl(rs7("lotdt"), 10, " ") & Space(3) & Padr(Namers("varNAME"), 19, " ") & Space(1) & Padl(INF(rs7("BALES"), 0), 6, " ") & Space(9) & Padl(INF(rs7("BORAH"), 0), 6, " ") & Space(1) & Padl(INF(rs7("netwt"), 2), 19, " ") & Space(2) & Padl(INF(rs7("value"), 2), 19, " ")
                co = co + 1
            If co >= PageLen Then
                Print #11, Space(5) & String(117, "-"); Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call LotstockRepHeader(pg1, divname, ISSTYPE)
            End If
                br = IIf(IsNull(rs7("BALES")), 0, rs7("BALES").value)
                br1 = IIf(IsNull(rs7("BORAH")), 0, rs7("BORAH"))
                tot1 = tot1 + br  'bales
                tot2 = tot2 + br1 'bora
                tot3 = tot3 + rs7(10)   'ratekgs
                tot4 = tot4 + rs7(9)    'qty
                tot5 = tot5 + rs7("value")   'value
                isstot1 = isstot1 + br
                isstot2 = isstot2 + br1
                isstot3 = issstot3 + rs7(9)
                isstot4 = isstot4 + rs7("value")
                tot6 = tot6 + br      'grand bales
                tot7 = tot7 + br1      'grand bora
                tot8 = tot8 + rs7(10)      'grdand ratekgs
                tot9 = tot9 + rs7(9)      'grand qty
                tot10 = tot10 + rs7("value")    'grand value
                
                rs7.MoveNext
            Loop
            If rs7.RecordCount > 1 Then
            Print #11,
            co = co + 1
            If co >= PageLen Then
                Print #11, Space(5) & String(117, "-"); Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call LotstockRepHeader(pg1, divname, ISSTYPE)
            End If
            
            Print #11, Space(36) + " ** Division Total ** " + Padl(CStr(INF(tot1, 0)), 8, " ") & Space(9) & Padl(INF(tot2, 0), 6, " ") & Space(6) & Padl(INF(tot4, 2), 14, " ") & Space(6) & Padl(INF(tot3, 2), 15, " ")
            co = co + 1
            If co >= PageLen Then
                Print #11, Space(5) & String(117, "-"); Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call LotstockRepHeader(pg1, divname, ISSTYPE)
            End If
            End If
            rs5.MoveNext
        Loop
        If Trim(ISSTYPE) = "A" Then
            Print #11,
            Print #11, Space(35) + Chr(27) & "E" & " ** IssueType Total ** " + Padl(CStr(INF(isstot1, 0)), 8, " ") & Space(9) & Padl(INF(isstot2, 0), 6, " ") & Space(6) & Padl(INF(isstot3, 2), 14, " ") & Space(6) & Padl(INF(isstot4, 2), 15, " ") & Chr(27) & "F"
            Print #11,
        End If
    
    'Print #11,
    Print #11, Space(5) & String(117, "-")
    co = co + 1
    If co >= PageLen Then
        Print #11, Space(5) & String(124, "-"); Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call LotstockRepHeader(pg1, divname, ISSTYPE)
    End If
     
    Print #11, Space(37) + Chr(27) + "E" & " ** Grand Total ** " + Space(1) & Padl(INF(tot6, 0), 9, " ") & Space(9) & Padl(INF(tot7, 0), 6, " ") & Space(6) & Padl(INF(tot9, 2), 14, " ") & Space(6) & Padl(INF(tot8, 2), 15, " ") & Chr(27) & "F"
    Print #11, Space(5) & String(117, "-")
    Print #11, Chr(12)
     Call footermod(CInt(11), rp.UserFooter1.SelectedStr, 85)
     rp.Visible = False
    Close #11
'    z = FreeFile
'    Open "C:\TIPW.bat" For Output As #11
'    Print #11, "cd\"
'    Print #11, "C:"
'    Print #11, "cd\"
'    Print #11, "type TIPW.TXT>prn"
'    Close #11
'    RPTV.txtfile = "C:\TIPW.TXT"
'    RPTV.Batfile = "C:\TIPW.bat"
Call KALBATPROCESS("TIPW")
End Sub
Public Sub LotstockRepHeader(pg1 As Integer, divname As String, iss As String)
          a = a1
          Print #11, Chr(18)
          Print #11, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #11,
          SR = CStr(Format((pdate), "dd/mm/yyyy"))
          Print #11, Space(3) + Chr(27) + "E" + "Transfer List" + Chr(27) + "F" + Space(1) + " from" + Space(1) + Format(f1, "DD/MM/YYYY") + " to " + Format(t1, "DD/MM/YYYY"); Space(11); CStr(SR) + Space(1) + "Pg.:" + Padl(CStr(pg1), 3, " ") + Chr(15)
          If iss <> "A" Then
            Print #11, Space(5) + Chr(27) + "E" + CENTRE("Option: Party Wise", 80, " ") + Chr(27) + "F"
          End If
          Print #11, Space(5) + String(117, "-")
          Print #11, Space(5) + Padr("IssueType", 10, " ") + Space(5) + Padr("Description", 20, " ")
          Print #11, Space(5) + "Code" + Space(2) + "    Division"
          Print #11, Space(11) + "Lot No" + Space(9) + "Receipt Date" + Space(2) + "Variety" + Space(14) + "Bales" + Space(10) + "Borah" + Space(10) + "Net Weight" + Space(16) + "Value"
          Print #11, Space(5) & String(117, "-")
          If iss <> "A" Then
            co = co + 10
          Else
            co = co + 9
          End If
End Sub
