Attribute VB_Name = "ModCottRecn"
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim tot, tot1, tot2, tot3 As Double
Dim cnn As Connection
Dim pg1 As Integer
Dim Co As Integer
Dim z As Integer
Dim dt As String

Public Sub CottRecn(LtN As Integer, Optional typeflg As String)
Set cnn = New Connection
cnn.Open connectstring
    If typeflg <> "A" Then
    Set ResultRs = New Recordset
    'ResultRs.Open "select distinct a.LotNo,a.LotDt from rm_lot a,rm_bale b,rm_issb c where a.LotNo=b.LotNo and b.LotNo=c.LotNo and b.baleno=c.baleno and c.docNo=" & LtN & " and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'  AND ISSTYPE='P' order by a.lotno", DB, adOpenStatic
    ResultRs.Open "select distinct LotNo,LotDt from rm_issb where docNo=" & LtN & _
                  " AND ISSTYPE='" & typeflg & "' AND DOCDT BETWEEN '" & _
                  Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & _
                  "' order by lotno", db, adOpenStatic
    Else
    Set ResultRs = New Recordset
    'ResultRs.Open "select distinct a.LotNo,a.LotDt from rm_lot a,rm_bale b,rm_issb c where a.LotNo=b.LotNo and b.LotNo=c.LotNo and b.baleno=c.baleno and c.docNo=" & LtN & " and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'  AND ISSTYPE='P' order by a.lotno", DB, adOpenStatic
    ResultRs.Open "select distinct LotNo,LotDt from rm_issb where docNo=" & LtN & _
                  " AND isstype in ('P','Q') and DOCDT BETWEEN '" & _
                  Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & _
                  "' order by lotno", db, adOpenStatic
    
    End If
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #z
    'Close
'    Open "C:\CotRecn.TXT" For Output As #z
 Open KALFOLDERDATA & "\CotRecn.TXT" For Output As #z
    pg1 = 1
    Co = 0
    dt = ResultRs!LOTNO & " - " & ResultRs!LOTDT
    Call CottRecnHeader(pg1, Co, dt)
    tot = 0
    tot1 = 0
    tot2 = 0
    Print #z, Space(7) & "Doc No. :" & Padr(LtN, 5, " ")
    Do While Not ResultRs.EOF
        Print #z, Space(5) & Padl(ResultRs("lotno"), 10, " ") & Space(13) & Padr(Format(ResultRs("lotdt"), "dd/mm/yy"), 10, " "); Chr(27); "F"
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(60, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        Print #z,
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(60, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        If typeflg <> "A" Then
        Set RESULT = New Recordset
        RESULT.Open "select distinct a.LotNo,a.LotDt,isnull(b.netwt,0)'IsQty',isnull(c.ActIssKgs,0)-isnull(b.TAREWT,0) 'AIKgs',isnull(c.ActIssKgs,0)-isnull(b.TAREWT,0)-isnull(b.IsQty,0) 'Excess',c.Baleno from rm_lot a,rm_bale b,rm_issb c where c.isstype ='" & typeflg & "' and c.docno = " & LtN & " and a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by c.baleno", db, adOpenStatic
        Else
        Set RESULT = New Recordset
        RESULT.Open "select distinct a.LotNo,a.LotDt,isnull(b.netwt,0)'IsQty',isnull(c.ActIssKgs,0)-isnull(b.TAREWT,0) 'AIKgs',isnull(c.ActIssKgs,0)-isnull(b.TAREWT,0)-isnull(b.IsQty,0) 'Excess',c.Baleno from rm_lot a,rm_bale b,rm_issb c where c.isstype in ('P','Q') and c.docno = " & LtN & " and a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by c.baleno", db, adOpenStatic
        End If
        'result.Open "select distinct LotNo,LotDt,isnull(ISSKGS,0)'IsQty',isnull(ActIssKgs,0) 'AIKgs',isnull(ActIssKgs,0)-isnull(IsSKGS,0) 'Excess',Baleno from rm_issb  where docno = " & LtN & "  and LotNo=" & ResultRs("lotno") & " and lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "'  AND '" & Format(yldate, "yyyy-mm-dd") & "'  order by baleno", DB, adOpenStatic
        Do While Not RESULT.EOF
        If Co >= PageLen Then
           Print #z, Space(5) & String(60, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        Print #z, Space(5) & Padl(RESULT!baleno, 10, " ") + Space(9) + Padl(Format(RESULT!IsQty, "#.000"), 12, " ") + Space(14) + Padl(Format(RESULT!AIKgs, "#.000"), 15, " ")
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(60, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
            If Not IsNull(RESULT!IsQty) = True Then tot = tot + val(RESULT!IsQty)
            If Not IsNull(RESULT!AIKgs) = True Then tot1 = tot1 + val(RESULT!AIKgs)
            If Not IsNull(RESULT("isqty")) = True Then GTot = GTot + val(RESULT("isqty"))
            If Not IsNull(RESULT("aikgs")) = True Then gtot1 = gtot1 + val(RESULT("aikgs"))
            
        RESULT.MoveNext
        Loop
        If Co >= PageLen Then
           Print #z, Space(5) & String(60, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        Print #z,
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(60, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        Print #z, Space(6); " ** Lot Total **" + Space(4) + Padl(INF(tot, 3), 10, " ") + Space(14) + Padl(INF((tot1), 3), 15, " ") '; Chr(27); "F"
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(60, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        tot = 0
        tot1 = 0
        ResultRs.MoveNext
            If Co >= PageLen Then
               Print #z, Space(5) & String(60, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(pg1, Co, dt)
            End If
            Print #z,
            Co = Co + 1
            If Co >= PageLen Then
               Print #z, Space(5) & String(60, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(pg1, Co, dt)
            End If
    Loop
    Print #z, Space(5) & String(60, "-")
    Co = Co + 1
    If Co >= PageLen Then
       Print #z, Space(5) & String(60, "-")
       Print #z, Chr(12)
       pg1 = pg1 + 1
       Co = 0
       Call CottRecnHeader(pg1, Co, dt)
    End If
    Print #z, Space(5); "** Grand Total **" + Space(4) + Padl(INF(GTot, 3), 10, " ") + Space(14) + Padl(INF((gtot1), 3), 15, " ") '; Chr(27); "F"
    If Co >= PageLen Then
       Print #z, Space(5) & String(60, "-")
       Print #z, Chr(12)
       pg1 = pg1 + 1
       Co = 0
       Call CottRecnHeader(pg1, Co, dt)
    End If
    Print #z, Space(5) & String(60, "-")
Close #z
z = FreeFile
'Open "c:\CotRec.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type CotRecn.TXT>prn"
'Close #z
'z = FreeFile
'RPTV.txtfile = "c:\CotRecn.TXT"
'RPTV.Batfile = "c:\CotRec.bat"
Call KALBATPROCESS("CotRec")
Screen.MousePointer = 0
End Sub

Public Sub CottRecnHeader(pg1 As Integer, Co As Integer, LDT As String)
    Print #z, Chr(18)
    Print #z, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 60, " ") + Chr(27) + "F"
    Print #z,
    SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
    Print #z, Space(5) & "Issue Weight List Report " + Space(16) + Space(2) + CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
    'Print #z, Space(5) & Chr(27) + "E" + "Lot No./Dt. : " & LDT + Chr(27) + "F"
    Print #z, Space(5) & String(60, "-")
    Print #z, Space(5) & "   Lot No.             LotDate"
    Print #z, Space(5) & "  Bale No.            Issue Kgs.            Actual Issue Kgs."
    Print #z, Space(5) & String(60, "-")
    Co = Co + 9
End Sub
