Attribute VB_Name = "cottonweightlossgain"
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim tot, tot1, tot2, tot3 As Double
Dim cnn As Connection
Dim diff As Double
Dim pg1 As Integer
Dim Co As Integer
Dim Sno As Integer
Dim z As Integer
Dim dt As String

'Public Sub CottRecn(LtN As Integer, Optional typeflg As String)
Public Sub Cottweight(V As Date)
diff = 0
Set cnn = New Connection
cnn.Open connectstring
    
    Set ResultRs = New Recordset
    ResultRs.Open "select distinct LotNo,LotDt from rm_issb where  DOCDT = '" & Format(V, "YYYY-MM-DD") & "'  order by lotno", db, adOpenStatic
    
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #z
    'Close
   ' Open "C:\CotRecn.TXT" For Output As #z
    Open KALFOLDERDATA & "\CotRecn.TXT" For Output As #z
    pg1 = 1
    Co = 0
    dt = ResultRs!LOTNO & " - " & ResultRs!LOTDT
    dt = Format(V, "yyyy-mm-dd")
    Call CottRecnHeader(pg1, Co, dt)
    tot = 0
    tot1 = 0
    tot2 = 0
    Sno = 1
    'Print #z, Space(7) & "Doc No. :" & Padr(LtN, 5, " ")
    Do While Not ResultRs.EOF
        Print #z, Space(18) & Padl(ResultRs("lotno"), 10, " ") & Space(7) & Padr(Format(ResultRs("lotdt"), "dd/mm/yy"), 10, " ") '; Chr(27); "F"
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(70, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        Print #z,
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(70, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        
        Set RESULT = New Recordset
        RESULT.Open "select distinct a.LotNo,a.LotDt,isnull(b.netwt,0)'IsQty',isnull(b.ActIssKgs,0)-isnull(b.TAREWT,0) 'AIKgs',(isnull(b.IsQty,0)-isnull(b.TAREWT,0)) -isnull(b.netwt,0)'Excess',c.Baleno from rm_lot a,rm_bale b,rm_issb c where  a.LotNo=b.LotNo  AND A.LOTDT=B.LOTDT AND B.LOTDT=C.LOTDT and b.LotNo=c.LotNo and b.baleno=c.baleno and a.LotNo=" & ResultRs("lotno") & " and a.lotdt = '" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and c.docdt ='" & Format(V, "yyyy-mm-dd") & "'  and (b.IsQty>0 and b.ActIssKgs>0 )  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by c.baleno", db, adOpenStatic
       
        Do While Not RESULT.EOF
        If Co >= PageLen Then
           Print #z, Space(5) & String(70, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        diff = RESULT("AIKgs") - RESULT("IsQty")
        Print #z, Space(8) & Padr(Sno, 8, " ") & Space(2) & Padl(RESULT!baleno, 10, " ") + Space(2) + Padl(Format(RESULT!IsQty, "#.000"), 12, " ") + Space(2) + Padl(Format(RESULT!AIKgs, "#.000"), 15, " ") + Space(2) + Padl(Format(RESULT("excess"), "#0.000"), 14, " ")
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(70, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
            If Not IsNull(RESULT!IsQty) = True Then tot = tot + val(RESULT!IsQty)
            If Not IsNull(RESULT!AIKgs) = True Then tot1 = tot1 + val(RESULT!AIKgs)
            If Not IsNull(RESULT("isqty")) = True Then GTot = GTot + val(RESULT("isqty"))
            If Not IsNull(RESULT("aikgs")) = True Then gtot1 = gtot1 + val(RESULT("aikgs"))
            tot3 = tot3 + diff
        RESULT.MoveNext
        Sno = Sno + 1
        Loop
        If Co >= PageLen Then
           Print #z, Space(5) & String(70, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        Print #z,
        Co = Co + 1
        If Co >= PageLen Then
           Print #z, Space(5) & String(70, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        Print #z, Space(16); " ** Lot Total **" + Padl(INF(tot, 3), 10, " ") + Space(2) + Padl(INF((tot1), 3), 15, " ") + Space(2) + Padl(INF((tot3), 3), 14, " ")
        tot2 = tot2 + tot3
        Co = Co + 1
        tot3 = 0
        If Co >= PageLen Then
           Print #z, Space(5) & String(70, "-")
           Print #z, Chr(12)
           pg1 = pg1 + 1
           Co = 0
           Call CottRecnHeader(pg1, Co, dt)
        End If
        tot = 0
        tot1 = 0
        ResultRs.MoveNext
            If Co >= PageLen Then
               Print #z, Space(5) & String(70, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(pg1, Co, dt)
            End If
            Print #z,
            Co = Co + 1
            If Co >= PageLen Then
               Print #z, Space(5) & String(70, "-")
               Print #z, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call CottRecnHeader(pg1, Co, dt)
            End If
    Loop
    Print #z, Space(5) & String(70, "-")
    Co = Co + 1
    If Co >= PageLen Then
       Print #z, Space(5) & String(70, "-")
       Print #z, Chr(12)
       pg1 = pg1 + 1
       Co = 0
       Call CottRecnHeader(pg1, Co, dt)
    End If
    Print #z, Space(10); "** Grand Total **" + Space(1) + Padl(INF(GTot, 3), 14, " ") + Space(2) + Padl(INF((gtot1), 3), 15, " ") & Space(2) + Padl(INF((tot2), 3), 14, " ")
    If Co >= PageLen Then
       Print #z, Space(5) & String(70, "-")
       Print #z, Chr(12)
       pg1 = pg1 + 1
       Co = 0
       Call CottRecnHeader(pg1, Co, dt)
    End If
    Print #z, Space(5) & String(70, "-")
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
    Print #z, Space(5) & "Cotton weight Loss(or) Gain Report as on " + Format(LDT, "dd/mm/yy") & Space(2) + Space(2) + CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
    'Print #z, Space(5) & Chr(27) + "E" + "Lot No./Dt. : " & LDT + Chr(27) + "F"
    Print #z, Space(5) & String(70, "-")
    Print #z, Space(5) & "                Lot No.       LotDate"
    Print #z, Space(5) & "S.No.          Bale No.    Old weight       New weight            Diff"
    Print #z, Space(5) & String(70, "-")
    Co = Co + 9
End Sub

