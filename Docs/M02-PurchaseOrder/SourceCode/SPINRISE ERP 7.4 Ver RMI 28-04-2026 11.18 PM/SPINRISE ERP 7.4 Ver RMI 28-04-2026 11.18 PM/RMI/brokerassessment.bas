Attribute VB_Name = "brokerassssment"
Public Sub brokerassessment(f1 As String, t1 As String, sup1 As String, sup2 As String)
Dim Lrs_temp As New ADODB.Recordset
Dim RsCancel As Recordset
Dim LCancl As Double
Dim LInTimeQty As Double
Dim LOutTimeQty As Double
Dim var As Double
Dim TEMP As Double
Dim Ltotal_OrderQty As Double
Dim Ltotal_RecvdQty As Double
Dim Ltotal_ConformedQty As Double
Dim lpenlaouttimeqtyOrd As Double
Dim lpenlaouttimeqtyRec As Double
Dim lpencurouttimeqtyOrd As Double
Dim lpencurouttimeqtyRec As Double
Dim Ltotal_RejQty As Double
Dim Ltotal_InTimeQty As Double
Dim Ltotal_outTimeQty As Double
Dim Ltotal_Conqty As Double
Dim Ltotal_Nonqty As Double
Dim LOrderqty As Double
Dim Lrecdqty As Double
Dim LConqty As Double
Dim Ordqty1 As Double
Dim OrdQty2 As Double
Dim OrdQty3 As Double
Dim LCCANCLQTY As Double
Dim LOARating  As Double
Dim OARating  As Double
Dim lpenlaouttimeqty As Double
Dim LNonqty As Double
Dim lpencurouttimeqty As Double
Dim Ltotal_ConformedQty2  As Double
Dim Ltotal_RecvdQty2 As Double
Dim Ltotal_InTimeQty2 As Double
Dim LTotal_PenlaOutTimeQty2 As Double
Dim rp As New rmireports

tot1 = 0: tot2 = 0
tot3 = 0: tot4 = 0
tot5 = 0: tot6 = 0
tot7 = 0: tot8 = 0
tot9 = 0: tot10 = 0
Sno = 1: pend1 = 0
rec = 0: rt = 0
TEMP = 0
cnt1 = 0
LOARating = 0
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set RPTV = New Report.ReportView
Close #11
'Open "C:\supplassess.TXT" For Output As #11
 Open KALFOLDERDATA & "\supplassess.TXT" For Output As #11
Pg = 1
Co = 0
a = FreeFile
Call supHEADER(CInt(Pg), sup1, CStr(f1), CStr(t1))
'Set rs = New Recordset
'rs.Open "select distinct slname as broker,a.brkcd from rm_cont  a,fa_slmas b where a.brkcd=b.slcode and CONTDT between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and slcode BETWEEN  '" & sup1 & "' AND '" & sup2 & "' AND DIVCODE ='" & Divcode & "' ORDER BY broker", cnn, adOpenStatic, adLockBatchOptimistic

Set Rs = New Recordset
Rs.Open "select distinct slname as broker,brkcd from (select distinct cast(A.contno as numeric) as contno,A.contdt,slname,duedate,a.brkcd from rm_cont  a,fa_slmas b,RM_ARRIVAL C where A.BRKCD=C.BRKCD AND A.CONTNO=C.CONTNO AND A.CONTDT=C.CONTDT AND a.brkcd=b.slcode and A.DIVCODE=C.DIVCODE AND ARRDATE between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and slcode between  '" & sup1 & "' and '" & sup2 & "' AND A.DIVCODE ='" & Divcode & "'  " & _
        " union all SELECT distinct x.CONTNO,x.CONTDT,slname,duedate,c.brkcd FROM (" & _
        " SELECT distinct CONTNO,CONTDT,SUM(QUANTITY) AS RECQTY1,0 AS ORDQTY1 FROM RM_ARRIVAL A WHERE  brkcd between  '" & sup1 & "' and '" & sup2 & "' and (contdt <='" & Format(t1, "yyyy/mm/dd") & "' ) AND A.DIVCODE ='" & Divcode & "' GROUP BY CONTNO,CONTDT" & _
        " Union All SELECT CONTNO,CONTDT,0 AS RECQTY1,ordqty-isnull(cancelbales,0) as ORDQTY1 FROM RM_CONT WHERE  DIVCODE ='" & Divcode & "' and brkcd between  '" & sup1 & "' and '" & sup2 & "'   and ( contdt<='" & Format(t1, "yyyy/mm/dd") & "') " & _
        " )X ,rm_cont c,fa_slmas b where x.contno=c.contno and x.contdt=c.contdt and c.divcode='" & Divcode & "' and c.brkcd between  '" & sup1 & "' and '" & sup2 & "' and c.brkcd=b.slcode GROUP BY x.CONTNO,x.CONTDT,brkcd,slname,duedate HAVING SUM(ORDQTY1)-SUM(RECQTY1)>0 " & _
        " Union All select distinct cast(A.contno as numeric) as contno,A.contdt,slname,duedate,a.brkcd from rm_cont a,fa_slmas b where brkcd between  '" & sup1 & "' and '" & sup2 & "'  and recqty is not null and a.brkcd=b.slcode and " & _
        " contdt Between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "')z order by brkcd ", cnn, adOpenStatic, adLockBatchOptimistic

If Rs.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
Do While Not Rs.EOF
Ltotal_ConformedQty = 0
Ltotal_RecvdQty = 0
Ltotal_InTimeQty = 0
LTotal_PenlaOutTimeQty = 0
Ltotal_RecvdQty = 0
Set rs5 = New Recordset

rs5.Open "select distinct duedate,contno,contdt  from (select distinct cast(A.contno as numeric) as contno,A.contdt,slname,duedate,c.brkcd from rm_cont  a,fa_slmas b,RM_ARRIVAL C where A.BRKCD=C.BRKCD AND A.CONTNO=C.CONTNO AND A.CONTDT=C.CONTDT AND a.brkcd=b.slcode and A.DIVCODE=C.DIVCODE AND a.divcode='" & Divcode & "' and ARRDATE between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and slcode ='" & Rs("brkcd") & "'  AND A.DIVCODE ='" & Divcode & "'  " & _
        " union all SELECT distinct x.CONTNO,x.CONTDT,slname,duedate,c.brkcd FROM (" & _
        " SELECT distinct CONTNO,CONTDT,SUM(QUANTITY) AS RECQTY1,0 AS ORDQTY1 FROM RM_ARRIVAL A WHERE  (contdt <='" & Format(t1, "yyyy/mm/dd") & "' )and brkcd ='" & Rs("brkcd") & "' AND A.DIVCODE ='" & Divcode & "'  GROUP BY CONTNO,CONTDT" & _
        " Union All SELECT CONTNO,CONTDT,0 AS RECQTY1,ordqty-isnull(cancelbales,0) as ORDQTY1 FROM RM_CONT WHERE  DIVCODE ='" & Divcode & "' and brkcd ='" & Rs("brkcd") & "' and  (contdt<='" & Format(t1, "yyyy/mm/dd") & "')" & _
        " )X ,rm_cont c,fa_slmas b where x.contno=c.contno and x.contdt=c.contdt and c.divcode='" & Divcode & "' AND  c.brkcd ='" & Rs("brkcd") & "'  and c.brkcd=b.slcode GROUP BY x.CONTNO,x.CONTDT,brkcd,slname,duedate HAVING SUM(ORDQTY1)-SUM(RECQTY1)>0 " & _
        " Union All select cast(A.contno as numeric) as contno,A.contdt,slname,duedate,a.brkcd from rm_cont a,fa_slmas b where brkcd ='" & Rs("brkcd") & "'  AND a.divcode='" & Divcode & "' and recqty is not null and a.brkcd=b.slcode and " & _
        " contdt <= '" & Format(t1, "yyyy/mm/dd") & "' and  contdt >='" & Format(f1, "yyyy/mm/dd") & "')z order by contno,contdt ", cnn, adOpenStatic, adLockBatchOptimistic



    If Co > 56 Then
        Print #11, Space(5) & String(114, "-")
        Print #11, Chr(12)
        Co = 0
        Pg = Pg + 1
        Print #11,
        Call supHEADER(CInt(Pg), sup1, CStr(f1), CStr(t1))

    End If
    Do While rs5.EOF = False
        
        Set rso1 = New Recordset
        rso1.Open " select isnull(sum(a.ordqty),0) as ordqty from rm_cont a where contno='" & rs5("contno") & "'  and  a.brkcd = '" & Rs("brkcd") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "' and a.divcode = '" & Divcode & "' " & _
                    " and a.contdt <= '" & Format(t1, "yyyy/mm/dd") & "' and a.contno not in " & _
                    " (select b.contno from rm_arrival b where contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'  and b.brkcd = '" & Rs("brkcd") & "' and b.divcode = '" & Divcode & "' " & _
                    " and b.arrdate < '" & Format(f1, "yyyy/mm/dd") & "') ", db, adOpenStatic
        
        If rso1.RecordCount > 0 Then
            Ordqty1 = rso1("ordqty")
        Else
            Ordqty1 = 0
        End If
        
        
        Set rso2 = New Recordset
        
        rso2.Open " select isnull(sum(ordqty),0) as ordqty from (select sum(a.ordqty)as ordqty from rm_cont a where contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "' and a.brkcd = '" & Rs("brkcd") & "' and a.divcode = '" & Divcode & "'" & _
        " and a.contdt <= '" & Format(t1, "yyyy/mm/dd") & "'  and a.contno in " & _
        " (select b.contno from rm_arrival b where contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'  and b.brkcd = '" & Rs("brkcd") & "' and b.divcode = '" & Divcode & "' " & _
        " and b.arrdate < '" & Format(f1, "yyyy/mm/dd") & "' group by contno having a.ordqty <> sum(b.quantity)))x", db, adOpenStatic

        If rso2.RecordCount > 0 Then
            OrdQty2 = rso2("ordqty")
        Else
            OrdQty2 = 0
        End If
        
        Set rso3 = New Recordset
        rso3.Open " select isnull(sum(isnull(cancelbales,0)),0) as ordqty from rm_cont a where contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'  and a.brkcd = '" & Rs("brkcd") & "' and a.divcode = '" & Divcode & "' " & _
                    " and a.contdt <= '" & Format(t1, "yyyy/mm/dd") & "' and a.contno not in " & _
                    " (select b.contno from rm_arrival b where contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'  and b.brkcd = '" & Rs("brkcd") & "' and b.divcode = '" & Divcode & "' " & _
                    " and b.arrdate < '" & Format(f1, "yyyy/mm/dd") & "')  ", db, adOpenStatic
        
        If rso3.RecordCount > 0 Then
            OrdQty3 = rso3(0)
        Else
            OrdQty3 = 0
        End If

          LOrderqty = LOrderqty + Ordqty1 + OrdQty2 '- OrdQty3
        'Recvd Qty
        Set RS2 = New Recordset
        RS2.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
                 "Where " & _
                 "brkcd='" & Rs("brkcd") & "' and " & _
                 "contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'  and " & _
                 "Divcode='" & Divcode & "' and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
        
        If RS2.RecordCount > 0 Then
        Lrecdqty = Lrecdqty + RS2(0)
        End If
                 

        
        'nonconfirmed Qty
         If Lrs_temp.State Then Lrs_temp.Close
        Lrs_temp.Open "SELECT isnull(Sum(passbl),0) recvdqty FROM RM_ARRIVAL  " & _
                 "Where " & _
                 "brkcd='" & Rs("brkcd") & "' and " & _
                 "contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'  and " & _
                 "Divcode='" & Divcode & "'  and passed='Y'and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' ", cnn, adOpenDynamic, adLockReadOnly
        If Lrs_temp.RecordCount > 0 Then
        LNonqty = LNonqty + Lrs_temp(0)
        End If
        
        'Cancel Qty
        Set RsCancl = New Recordset
        RsCancl.Open "SELECT isnull(sum(CancelBales),0) CancelQty FROM RM_CONT  Where brkcd = '" & Rs("brkcd") & "' " & _
        " and contno='" & rs5("contno") & "'  And contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'  and Divcode = '" & Divcode & "'", cnn, adOpenDynamic, adLockReadOnly
        
        
        LCanclQty = LCanclQty + IIf(IsNull(RsCancl("CancelQty")), 0, RsCancl("CancelQty"))
        If RS2.RecordCount > 0 Then
        LConqty = LConqty + RS2(0)
        End If
        LNonqty = LNonqty
        'Intime Qty
        If Lrs_temp.State Then Lrs_temp.Close
        Lrs_temp.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
                 "Where " & _
                 "brkcd='" & Rs("brkcd") & "' and " & _
                 "contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'   and " & _
                 "Divcode='" & Divcode & "' and " & _
                 "Arrdate<='" & Format(rs5("duedate"), "yyyy/mm/dd") & "'and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' ", cnn, adOpenDynamic, adLockReadOnly
        If Lrs_temp.RecordCount > 0 Then
        LInTimeQty = LInTimeQty + Lrs_temp(0)
        End If
                          
        'Outtime Qty
        If Lrs_temp.State Then Lrs_temp.Close
        Lrs_temp.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
                 "Where " & _
                 "brkcd='" & Rs("brkcd") & "' and " & _
                 "contno='" & rs5("contno") & "' and contdt = '" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "'  and " & _
                 "Divcode='" & Divcode & "' and " & _
                 "Arrdate>'" & Format(rs5("duedate"), "yyyy/mm/dd") & "' and arrdate between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
        If Lrs_temp.RecordCount > 0 Then
        LOutTimeQty = LOutTimeQty + Lrs_temp(0)
        End If
        
        'Pending Current Qty
        
        
    Set rss = New Recordset
    rss.Open " select isnull(sum(qty),0) from (  select ORDQTY-isnull(cancelbales,0)-sum(quantity)as qty from rm_cont a,rm_arrival b where a.contno=b.contno and a.contdt=b.contdt and a.brkcd=b.brkcd and a.supcd=b.supcd " & _
                " AND A.CONTNO='" & rs5("contno") & "'   AND  a.contdt='" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "' AND A.DIVCODE='" & Divcode & "' and arrdate<='" & Format(t1, "yyyy-mm-dd") & "' and duedate>='" & Format(t1, "yyyy-mm-dd") & "' GROUP BY ORDQTY,cancelbales " & _
                " Union select ordqty-isnull(cancelbales,0) as qty from rm_cont a where duedate>='" & Format(t1, "yyyy-mm-dd") & "'  and a.contno='" & rs5("contno") & "' and a.contdt='" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "' " & _
               " AND a.DIVCODE='" & Divcode & "' and a.contno not in ( select contno from rm_arrival b where a.contno=b.contno and a.contdt=b.contdt " & _
               " and a.divcode=b.divcode ))x", db, adOpenStatic
        
    If rss.RecordCount > 0 Then
        lpencurouttimeqty = lpencurouttimeqty + rss(0)
    End If
    
    Set rss = New Recordset
    rss.Open " select isnull(sum(qty),0) from (select ORDQTY-isnull(cancelbales,0)-sum(quantity)as qty from rm_cont a,rm_arrival b where a.contno=b.contno and a.contdt=b.contdt and a.brkcd=b.brkcd and a.supcd=b.supcd " & _
            " AND A.CONTNO='" & rs5("contno") & "'   AND  a.contdt='" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "' AND A.DIVCODE='" & Divcode & "' and arrdate<='" & Format(t1, "yyyy-mm-dd") & "' and duedate<'" & Format(t1, "yyyy-mm-dd") & "' GROUP BY ORDQTY,cancelbales " & _
            " Union select ordqty-isnull(cancelbales,0) as qty from rm_cont a where duedate<'" & Format(t1, "yyyy-mm-dd") & "'  and a.contno='" & rs5("contno") & "' and a.contdt='" & Format(rs5("CONTDT"), "yyyy/mm/dd") & "' " & _
           " AND a.DIVCODE='" & Divcode & "' and a.contno not in ( select contno from rm_arrival b where a.contno=b.contno and a.contdt=b.contdt " & _
           " and a.divcode=b.divcode ))x", db, adOpenStatic
           'and arrdate>'" & Format(rs("duedate"), "yyyy-mm-dd") & "'
    If rss.RecordCount > 0 Then
        lpenlaouttimeqty = lpenlaouttimeqty + rss(0)
    End If

        
    
    
    ''''ref
    
    
    
    rs5.MoveNext
    
    LCCANCLQTY = LCCANCLQTY + LCanclQty
    LCanclQty = 0
Loop
     
    LConqty = LConqty - LNonqty
    Ltotal_OrderQty = (Ltotal_OrderQty + LOrderqty) - LCCANCLQTY
    Ltotal_InTimeQty = Ltotal_InTimeQty + LInTimeQty
    Ltotal_outTimeQty = (Ltotal_outTimeQty + LOutTimeQty)
    Ltotal_RecvdQty = Ltotal_RecvdQty + Lrecdqty
     Ltotal_penQty = Ltotal_penQty + lpenqty
    LTotal_PenCurOutTimeQty = val(LTotal_PenCurOutTimeQty) + val(lpencurouttimeqty)
    LTotal_PenlaOutTimeQty = val(LTotal_PenlaOutTimeQty) + val(lpenlaouttimeqty)
            ''to be altered
    Ltotal_ConformedQty = Ltotal_ConformedQty + LConqty
    Ltotal_Conqty = Ltotal_Conqty + LConqty
    Ltotal_Nonqty = Ltotal_Nonqty + LNonqty
    
    
    Ltotal_ConformedQty2 = Ltotal_ConformedQty2 + LConqty
    Ltotal_RecvdQty2 = Ltotal_RecvdQty2 + Lrecdqty
    Ltotal_InTimeQty2 = Ltotal_InTimeQty2 + LInTimeQty
    LTotal_PenlaOutTimeQty2 = val(LTotal_PenlaOutTimeQty2) + val(lpenlaouttimeqty)

        'to be developed
    'Ltotal_RejQty = 0
    If Ltotal_RecvdQty > 0 Then
        cnt1 = cnt1 + 1
        OARating = Round((Ltotal_ConformedQty / Ltotal_RecvdQty * 80) + ((Ltotal_InTimeQty) / (Ltotal_RecvdQty + LTotal_PenlaOutTimeQty) * 20), 2)
    Else
        cnt1 = cnt1 + 1
        OARating = 0
    End If
    Print #11, Space(5) & Padl(Sno, 5, " ") & Space(1) & Padr(Rs("broker"), 30, " ") & Space(1) & _
                          Padl((LOrderqty - LCCANCLQTY), 5, " ") + Space(2) + _
                          Padl(Lrecdqty, 8, " ") + Space(2) + _
                          Padl(LConqty, 9, " "); Space(2) + _
                          Padl(LNonqty, 9, " ") + Space(2) + _
                          Padl(Lrecdqty, 10, " ") + _
                          Padl(LInTimeQty, 8, " ") & Space(1) & _
                          Padl(LOutTimeQty, 8, " ") & _
                          Padl(lpencurouttimeqty, 10, " ") & _
                          Padl(lpenlaouttimeqty, 8, " ") & Padl(INF(OARating, 2), 12, " ")
                          
    Rs.MoveNext
    LOARating = LOARating + OARating
    Sno = Sno + 1
    LOrderqty = 0
    LCCANCLQTY = 0
    LInTimeQty = 0
    LOutTimeQty = 0
    Lrecdqty = 0
    
    lpenqty = 0
    lpencurouttimeqty = 0
    lpenlaouttimeqty = 0
     lpencurouttimeqtyOrd = 0
     lpencurouttimeqtyRec = 0
    lpenlaouttimeqtyOrd = 0
    lpenlaouttimeqtyRec = 0
    LConqty = 0
    LNonqty = 0
    
    
    
    
Loop

tot10 = ((tot4 / IIf(tot3 = 0, 1, tot3)) * 100) * 0.8 'Rating

If Co > 56 Then
    Print #11, Space(5) & String(114, "-")
    Print #11, Chr(12)
    Pg = Pg + 1
    Co = 0
    Print #11,
    Call supHEADER(CInt(Pg), sup1, CStr(f1), CStr(t1))

End If

'LOARating = LOARating / cnt1
If Ltotal_RecvdQty2 > 0 Then
    LOARating = Round((Ltotal_Conqty / Ltotal_RecvdQty2 * 80) + ((Ltotal_InTimeQty2 - LTotal_PenlaOutTimeQty2) / Ltotal_RecvdQty2 * 20), 2)
End If
LTotal_PenlaOutTimeQty1 = LTotal_PenlaOutTimeQty
Print #11, Space(5) & String(133, "-")
Print #11, Space(42) + _
            IIf(Ltotal_OrderQty = 0, Space(5), Padl(Ltotal_OrderQty, 5, " ")) + Space(1); _
            IIf(Ltotal_RecvdQty2 = 0, Space(9), Padl(Ltotal_RecvdQty2, 9, " ")) + Space(3) + _
            Padl(Ltotal_Conqty, 8, " ") + Space(2) + _
            IIf(Ltotal_Nonqty = 0, Space(9), Padl(Ltotal_Nonqty, 9, " ")) + Space(1) + _
            Padl(Ltotal_RecvdQty2, 11, " ") + Space(1) + _
            IIf(Ltotal_InTimeQty2 = 0, Space(7), Padl(Ltotal_InTimeQty2, 7, " ")) + Space(1) + _
            IIf(Ltotal_outTimeQty = 0, Space(8), Padl(Ltotal_outTimeQty, 8, " ")) + Space(1) + IIf(LTotal_PenCurOutTimeQty = 0, "        ", Padl(LTotal_PenCurOutTimeQty, 9, " ")) + Space(1) + IIf(LTotal_PenlaOutTimeQty2 = 0, Space(7), Padl(LTotal_PenlaOutTimeQty2, 7, " ")) + Space(1) + IIf(LOARating = 0, Space(7), Padl(INF(LOARating, 2), 11, " "))
            
Print #11, Space(5) & String(133, "-")
Co = Co + 3
Print #11,
Print #11, Chr(27) & "E" & Space(5) + "Rating Method  :  " & Chr(27) & "F"

Co = Co + 2

If Co > 56 Then
        Print #11, Space(5) & String(126, "-")
        Print #11, Chr(12)
        Co = 0
        Pg = Pg + 1
        Print #11,
        Call supHEADER(CInt(Pg), sup1, CStr(f1), CStr(t1))

End If

Print #11,
Print #11, Space(5) + "Total Qty Received       : " + Padl(Ltotal_RecvdQty2, 7, " ") + "      Total Qty Received       : " + Padl(Ltotal_RecvdQty2, 7, " ")
Print #11, Space(5) + "Total Qty Conformed      : " + Padl(Ltotal_RecvdQty2 - Ltotal_Nonqty, 7, " ") + "      Total Received In Time   : " + Padl(Ltotal_InTimeQty2, 7, " ")
Co = Co + 3
Print #11, Space(5) + "                           " + Space(7) + "      Total Pending(Late)      : " + Padl(INF(LTotal_PenlaOutTimeQty2, 2), 9, " ")
Co = Co + 1
If Ltotal_RecvdQty > 0 Then
Print #11, Space(5) + "% Qty Conformed          : " + Padl(INF((Ltotal_ConformedQty2 / Ltotal_RecvdQty2 * 100), 2), 7, " ") + " % " + "   % Qty Received In Time   : " + Padl(INF((Ltotal_InTimeQty2) / (Ltotal_RecvdQty2 + LTotal_PenlaOutTimeQty2) * 100, 2), 7, " "); " %"
Co = Co + 1
Else
Print #11, Space(5) + "% Qty Conformed          : " + Padl(INF(0, 2), 7, " ") + " % " + "   % Qty Received In Time   : " + Padl(INF(0, 2), 7, " "); " %"
End If
If tot3 > 0 Then
    var = ((tot3 / IIf(tot6 = 0, 1, tot6)) * 100) * 0.2
Else
    var = 0
End If                                                                                          'IIf(Trim(Padl(INF(rateqR, 2), 10, " ")) = "", "         0", Padl(INF(perqtyR, 2), 10, " ")); "%" '   Print #a, Space(5) + "Rating for Quality(80%) :"; Padl(INF(rateqC, 2), 10, " "); "%"; Space(2); "Rating for Quality(20%) :"; IIf(Trim(Padl(INF(rateqR, 2), 10, " ")) = "", "         0", Padl(INF(rateqR, 2), 10, " ")); "%" 'Print #11, Space(5) + "Rating For Quality (80%) : " + Padl(INF(((tot4 / IIf(tot3 = 0, 1, tot3)) * 102) * 0.8, 2), 7, " "); " % " + "   Rating For Delivery(20%) : " + Padl(INF(var, 2), 7, " ") + " %" ''Padl(((tot3 / iif(tot4=0,1,tot4)) * 102) * 0.02, 7, " ")

Dim tot As Double
If Ltotal_RecvdQty > 0 Then
'Print #11, Space(5) + "Rating For Quality (80%) : " + IIf(Trim(Padl(INF(conrate, 2), 7, " ")) = "", "      0", Padl(INF(conrate, 2), 7, " ")); " % " + "   Rating For Delivery(20%) : " + Padl(INF(conrate1, 2), 7, " ") + " %" ''Padl(((tot3 / iif(tot4=0,1,tot4)) * 102) * 0.02, 7, " ")
Print #11, Space(5) + "Rating For Quality (80%) : " + Padl(INF((Ltotal_ConformedQty2 / Ltotal_RecvdQty2 * 80), 2), 7, " ") + " % " + "   Rating For Delivery(20%) : " + Padl(INF((Ltotal_InTimeQty2) / (Ltotal_RecvdQty2 + LTotal_PenlaOutTimeQty2) * 20, 2), 7, " "); " %"
Print #11,
Else
Print #11, Space(5) + "Rating For Quality (80%) : " + Padl(INF(0, 2), 7, " ") + " % " + "   Rating For Delivery(20%) : " + Padl(INF(0, 2), 7, " "); " %"
End If
If Ltotal_RecvdQty > 0 Then
tot = (Ltotal_ConformedQty2 / Ltotal_RecvdQty2 * 80) + ((Ltotal_InTimeQty2) / (Ltotal_RecvdQty2 + LTotal_PenlaOutTimeQty2) * 20)
TEMP = conrate + conrate1
Else
tot = 0
TEMP = 0
End If
'Print #11, Chr(27) & "E" & Space(25) + "Overall Supplier Rating : " + Padl(INF((Ltotal_ConformedQty / Ltotal_RecvdQty * 80) + (Ltotal_InTimeQty / Ltotal_RecvdQty * 20), 2), 8, " ") + " %" & Chr(27) & "F"
Print #11, Chr(27) & "E" & Space(25) + "Overall Broker Rating : " + Padl(INF(tot, 2), 8, " ") + " %" & Chr(27) & "F"
Print #11,
Print #11,
Print #11,
Print #11,
Print #11,
 Call footermod(CInt(11), rp.UserFooter1.SelectedStr, 85)
'Print #11, Chr(27) & "E" & Space(15) + "Cotton Clerk" + Space(20) + "FM" + Space(20) + "MD" & Chr(27) & "F"
Print #11, Chr(12)
Co = Co + 7
Close #11

'Open "c:\supplassess.bat" For Output As #11
'Print #11, "cd\"
'Print #11, "c:"
'Print #11, "cd\"
'Print #11, "type supplassess.TXT>prn"
'Close #11
'RPTV.txtfile = "c:\supplassess.TXT"
'RPTV.Batfile = "c:\supplassess.bat"
'11 = FreeFile
Call KALBATPROCESS("supplassess")
Screen.MousePointer = 0
End Sub
Public Sub supHEADER(Pg As Integer, sup1 As String, fd As String, td As String)
Print #11,
Print #11, Chr(14) + CENTRE(DIVNAME, 90, " ") + Chr(14) + Chr(18)
Print #11, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #11, Chr(27) + "E" + Space(5) + CENTRE("Broker Assessment Record", 114, " ")
Set rsa = New Recordset
rsa.Open "select slname from fa_slmas where slcode='" & sup1 & "'", db, adOpenStatic
If rsa.RecordCount > 0 Then
    sup2 = rsa(0)
End If
'Print #11, Space(5) + CENTRE("Broker : " + sup2, 92, " ")
Print #11, Space(5) + CENTRE("Assessment Period From " + Padl(Format(f1, "dd-mm-yy"), 12, " ") + " To " + Padl(Format(t1, "dd-mm-yy"), 12, " "), 114, " ")
Print #11,
Print #11, Space(5) + CENTRE("Date Of Assessment " + Padl(pdate, 12, " "), 114, " ") + Chr(27) + "F"
Print #11, Space(5) + String(133, "-")
Print #11, Space(5); "S.No. Broker Name                    Order  Received  Conformed   Non-Conf.   Received <---Received---->  Pending Pending  Individual "
Print #11, Space(5); "                                       Qty       Qty        Qty        Qty         Qty In Time     Late   Current    Late      Rating"
Print #11, Space(5) & String(133, "-")
Co = Co + 0
End Sub





