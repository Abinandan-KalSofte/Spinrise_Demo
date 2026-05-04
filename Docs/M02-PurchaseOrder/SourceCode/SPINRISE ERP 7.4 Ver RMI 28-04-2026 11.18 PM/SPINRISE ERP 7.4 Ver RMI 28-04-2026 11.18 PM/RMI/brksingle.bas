Attribute VB_Name = "Module3"
Public Sub brokerassessmentsin(f1 As String, t1 As String, sup1 As String, sup2 As String, footerstr As String)
Dim Lrs_temp As New ADODB.Recordset
Dim RsCancel As Recordset
Dim LCancl As Double
Dim LInTimeQty As Double
Dim LOutTimeQty As Double
'Dim LCancl As Double
Dim LOrderqty As Double
Dim Ordqty1 As Double
Dim OrdQty2 As Double
Dim OrdQty3 As Double
Dim var As Double
Dim TEMP As Double
Dim val1, val2, val3, val4 As String
Dim Ltotal_OrderQty As Double
Dim Ltotal_RecvdQty As Double
Dim Ltotal_ConformedQty As Double
Dim Ltotal_RejQty As Double
Dim Ltotal_InTimeQty As Double
Dim Ltotal_outTimeQty As Double
Dim Ltotal_Conqty As Double
Dim Ltotal_Nonqty As Double
Dim lpencuouttimeqty  As Double
Dim lpenlaouttimeqtyRec  As Double
tot1 = 0: tot2 = 0
tot3 = 0: tot4 = 0
tot5 = 0: tot6 = 0
tot7 = 0: tot8 = 0
tot9 = 0: tot10 = 0
Sno = 0: pend1 = 0
rec = 0: rt = 0
TEMP = 0
'val1 = 0: val2 = 0: val3 = 0: val4 = 0
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
Call supHEADER(CInt(Pg), sup1)
Set Rs = New Recordset
Rs.Open "select distinct contno,contdt ,slname,duedate from (select distinct cast(A.contno as numeric) as contno,A.contdt,slname,duedate from rm_cont  a,fa_slmas b,RM_ARRIVAL C where A.BRKCD=C.BRKCD AND A.CONTNO=C.CONTNO AND A.CONTDT=C.CONTDT AND a.brkcd=b.slcode and A.DIVCODE=C.DIVCODE AND ARRDATE between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and slcode =  '" & sup1 & "' AND A.DIVCODE ='" & Divcode & "'  " & _
        " union all SELECT distinct x.CONTNO,x.CONTDT,slname,duedate FROM (" & _
        " SELECT distinct CONTNO,CONTDT,SUM(QUANTITY) AS RECQTY1,0 AS ORDQTY1 FROM RM_ARRIVAL A WHERE  brkcd =  '" & sup1 & "' and (contdt <= '" & Format(t1, "yyyy/mm/dd") & "' ) AND A.DIVCODE ='" & Divcode & "' GROUP BY CONTNO,CONTDT" & _
        " Union All SELECT CONTNO,CONTDT,0 AS RECQTY1,(ordqty-isnull(cancelbales,0)) as ORDQTY1 FROM RM_CONT WHERE  DIVCODE ='" & Divcode & "' and brkcd =  '" & sup1 & "'   and ( contdt <='" & Format(t1, "yyyy/mm/dd") & "') " & _
        " )X ,rm_cont c,fa_slmas b where c.contdt <= '" & Format(t1, "yyyy/mm/dd") & "' and x.contno=c.contno and x.contdt=c.contdt and c.divcode='" & Divcode & "' and c.brkcd =  '" & sup1 & "' and c.brkcd=b.slcode GROUP BY x.CONTNO,x.CONTDT,brkcd,slname,duedate HAVING SUM(ORDQTY1)-SUM(RECQTY1)>0" & _
        " Union All select contno,contdt ,slname,duedate from rm_cont a,fa_slmas b where brkcd='" & sup1 & "' and recqty is not null and a.brkcd=b.slcode and " & _
        " contdt <='" & Format(t1, "yyyy/mm/dd") & "' and contdt>='" & Format(f1, "yyyy/mm/dd") & "' and a.divcode='" & Divcode & "')z order by contno,contdt ", cnn, adOpenStatic, adLockBatchOptimistic
        
''rs.Open "select distinct contno,contdt ,slname,duedate from (select distinct cast(A.contno as numeric) as contno,A.contdt,slname,duedate from rm_cont  a,fa_slmas b,RM_ARRIVAL C where A.BRKCD=C.BRKCD AND A.CONTNO=C.CONTNO AND A.CONTDT=C.CONTDT AND a.brkcd=b.slcode and A.DIVCODE=C.DIVCODE AND ARRDATE between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and slcode =  '" & sup1 & "' AND A.DIVCODE ='" & Divcode & "'  " & _
''        " union all SELECT distinct x.CONTNO,x.CONTDT,slname,duedate FROM (" & _
''        " SELECT distinct CONTNO,CONTDT,SUM(QUANTITY) AS RECQTY1,0 AS ORDQTY1 FROM RM_ARRIVAL A WHERE  brkcd =  '" & sup1 & "' and (contdt between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' ) AND A.DIVCODE ='" & Divcode & "' GROUP BY CONTNO,CONTDT" & _
''        " Union All SELECT CONTNO,CONTDT,0 AS RECQTY1,ordqty as ORDQTY1 FROM RM_CONT WHERE  DIVCODE ='" & Divcode & "' and brkcd =  '" & sup1 & "'   and ( contdt  between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "') " & _
''        " )X ,rm_cont c,fa_slmas b where c.contdt between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and x.contno=c.contno and x.contdt=c.contdt and c.divcode='" & Divcode & "' and c.brkcd =  '" & sup1 & "' and c.brkcd=b.slcode GROUP BY x.CONTNO,x.CONTDT,brkcd,slname,duedate HAVING SUM(ORDQTY1)-SUM(RECQTY1)>0" & _
''        " Union All select contno,contdt ,slname,duedate from rm_cont a,fa_slmas b where brkcd='" & sup1 & "' and recqty is not null and a.brkcd=b.slcode and " & _
''        " contdt Between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "')z order by contno,contdt ", cnn, adOpenStatic, adLockBatchOptimistic
        
        
If Rs.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
Do While Not Rs.EOF
    If Co > 56 Then
        Print #11, Space(5) & String(92, "-")
        Print #11, Chr(12)
        Co = 0
        Pg = Pg + 1
        Print #11,
        Call supHEADER(CInt(Pg), sup1)
    End If
    'Order Qty
'    Set RS1 = New Recordset
'    RS1.Open "SELECT ORDQTY FROM RM_CONT " & _
'             "Where " & _
'             "contno=" & rs("contno") & " and " & _
'             "contdt = '" & Format(rs("CONTDT"), "yyyy/mm/dd") & "'  and " & _
'             "divcode='" & Divcode & "'", cnn, adOpenDynamic, adLockReadOnly

        Set rso1 = New Recordset
        rso1.Open " select isnull(sum(a.ordqty),0) as ordqty from rm_cont a where contno=" & Rs("contno") & " and contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and a.divcode = '" & Divcode & "' " & _
                    " and a.contdt <= '" & Format(t1, "yyyy/mm/dd") & "' and a.contno not in " & _
                    " (select b.contno from rm_arrival b where  contno=" & Rs("contno") & " and contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and b.divcode = '" & Divcode & "' " & _
                    " and b.arrdate < '" & Format(f1, "yyyy/mm/dd") & "') ", db, adOpenStatic
        
        If rso1.RecordCount > 0 Then
            Ordqty1 = rso1("ordqty")
        Else
            Ordqty1 = 0
        End If
        
        
        Set rso2 = New Recordset
        
        rso2.Open " select isnull(sum(ordqty),0) as ordqty from (select sum(a.ordqty)as ordqty from rm_cont a where contno=" & Rs("contno") & " and contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and a.divcode = '" & Divcode & "'" & _
        " and a.contdt <= '" & Format(t1, "yyyy/mm/dd") & "' and a.contno in " & _
        " (select b.contno from rm_arrival b where contno=" & Rs("contno") & " and contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and b.divcode = '" & Divcode & "' " & _
        " and b.arrdate < '" & Format(f1, "yyyy/mm/dd") & "' group by contno having a.ordqty <> sum(b.quantity)))x", db, adOpenStatic

        If rso2.RecordCount > 0 Then
            OrdQty2 = rso2("ordqty")
        Else
            OrdQty2 = 0
        End If
        
        Set rso3 = New Recordset
        rso3.Open " select isnull(sum(isnull(cancelbales,0)),0) as ordqty from rm_cont a where contno=" & Rs("contno") & " and contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and a.divcode = '" & Divcode & "' " & _
                    " and a.contdt <= '" & Format(t1, "yyyy/mm/dd") & "' and a.contno not in " & _
                    " (select b.contno from rm_arrival b where contno=" & Rs("contno") & " and contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and b.divcode = '" & Divcode & "' " & _
                    " and b.arrdate < '" & Format(f1, "yyyy/mm/dd") & "') ", db, adOpenStatic
        
        If rso3.RecordCount > 0 Then
            OrdQty3 = rso3(0)
        Else
            OrdQty3 = 0
        End If

          LOrderqty = Ordqty1 + OrdQty2 '- OrdQty3


    'Recvd Qty
    Set RS2 = New Recordset
    RS2.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "' and  " & _
             "Divcode='" & Divcode & "' AND ARRDATE between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
             
             
    Set rs4 = New Recordset
    rs4.Open "SELECT isnull(recqty,0) penqty FROM RM_cont  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "' and  " & _
             "Divcode='" & Divcode & "' --AND ARRDATE >'" & Format(f1, "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
    

    
    'nonconfirmed Qty
     If Lrs_temp.State Then Lrs_temp.Close
    Lrs_temp.Open "SELECT isnull(Sum(passbl),0) recvdqty FROM RM_ARRIVAL  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and " & _
             "Divcode='" & Divcode & "'  AND ARRDATE between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "' and passed='Y' ", cnn, adOpenDynamic, adLockReadOnly
    If Lrs_temp.RecordCount > 0 Then
    LNonqty = Lrs_temp(0)
    End If
    
    'Cancel Qty
    Set RsCancl = New Recordset
    RsCancl.Open "SELECT isnull(CancelBales,0) CancelQty FROM RM_CONT  Where Contno = " & Rs("Contno") & _
    " And contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and Divcode = '" & Divcode & "' ", cnn, adOpenDynamic, adLockReadOnly
    
    If RsCancl.RecordCount > 0 Then
    LCanclQty = IIf(IsNull(RsCancl("CancelQty")), 0, RsCancl("CancelQty"))
        Else
            LCanclQty = 0 'RsCancl("CancelQty")
        End If
        
        
  '  If RsCancl.EOF Then
  ' MsgBox "No Records Found", vbInformation, head
  ' Screen.MousePointer = 0
 '     Else
 ' If Not RsCancl.EOF Then
  ' LCanclQty = IIf(IsNull(RsCancl("CancelQty")), 0, RsCancl("CancelQty"))
  ' End If
        
    LConqty = RS2(0) - LNonqty
    LNonqty = LNonqty
    'Intime Qty
    If Lrs_temp.State Then Lrs_temp.Close
    Lrs_temp.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and " & _
             "Divcode='" & Divcode & "' and " & _
             "Arrdate<='" & Format(Rs("duedate"), "yyyy/mm/dd") & "' AND ARRDATE between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
    LInTimeQty = Lrs_temp(0)
                      
                      
    'Outtime Qty
    If Lrs_temp.State Then Lrs_temp.Close
    Lrs_temp.Open "SELECT isnull(Sum(quantity),0) recvdqty FROM RM_ARRIVAL  " & _
             "Where " & _
             "Contno=" & Rs("contno") & " and " & _
             "contdt = '" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "'  and " & _
             "Divcode='" & Divcode & "' and " & _
             "Arrdate>'" & Format(Rs("duedate"), "yyyy/mm/dd") & "' AND  ARRDATE between '" & Format(f1, "yyyy/mm/dd") & "' and '" & Format(t1, "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockReadOnly
    LOutTimeQty = Lrs_temp(0)
    
'     If Lrs_temp.State Then Lrs_temp.Close
'        Lrs_temp.Open "select DISTINCT ordqty as ordqty, SUM(quantity)as qty,ORDQTY-sum(quantity) as bal from rm_cont a,rm_arrival b where a.contno=b.contno " & _
'                    "and a.contdt=b.contdt and a.brkcd=b.brkcd and a.supcd=b.supcd " & _
'                    "AND A.CONTNO='" & rs("contno") & "'  AND A.contdt = '" & Format(rs("CONTDT"), "yyyy/mm/dd") & "'  AND  dueDATE>'" & Format(t1, "YYYY-MM-DD") & "' AND A.DIVCODE='" & Divcode & "' and arrdate>'" & Format(t1, "YYYY-MM-DD") & "' GROUP BY ORDQTY --having ORDQTY-sum(quantity)>0  ", cnn, adOpenStatic, adLockBatchOptimistic
'
'        If Lrs_temp.RecordCount > 0 Then
'             If Lrs_temp(0) > 0 Then
'                lpencuouttimeqtyRec = Lrs_temp(1) - LCanclQty
'             Else
'                lpencuouttimeqtyRec = Lrs_temp(1)
'             End If
'        Else
'                lpencuouttimeqtyRec = 0
'        End If
'    lpencuouttimeqty = lpencuouttimeqty + lpencuouttimeqtyRec
    Set rss = New Recordset
    rss.Open " select isnull(sum(qty),0) from (  select ORDQTY-isnull(cancelbales,0)-sum(quantity)as qty from rm_cont a,rm_arrival b where a.contno=b.contno and a.contdt=b.contdt and a.brkcd=b.brkcd and a.supcd=b.supcd " & _
                " AND A.CONTNO='" & Rs("contno") & "'   AND  a.contdt='" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "' AND A.DIVCODE='" & Divcode & "' and arrdate<='" & Format(t1, "yyyy-mm-dd") & "' and duedate>='" & Format(t1, "yyyy-mm-dd") & "' GROUP BY ORDQTY,cancelbales " & _
                " Union select ordqty-isnull(cancelbales,0) as qty from rm_cont a where duedate>='" & Format(t1, "yyyy-mm-dd") & "'  and a.contno='" & Rs("contno") & "' and a.contdt='" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "' " & _
               " AND a.DIVCODE='" & Divcode & "' and a.contno not in ( select contno from rm_arrival b where a.contno=b.contno and a.contdt=b.contdt " & _
               " and a.divcode=b.divcode ))x", db, adOpenStatic
        
    If rss.RecordCount > 0 Then
        lpencuouttimeqty = lpencuouttimeqty + rss(0)
    End If
    
    Set rss = New Recordset
    rss.Open " select isnull(sum(qty),0) from (select ORDQTY-isnull(cancelbales,0)-sum(quantity)as qty from rm_cont a,rm_arrival b where a.contno=b.contno and a.contdt=b.contdt and a.brkcd=b.brkcd and a.supcd=b.supcd " & _
            " AND A.CONTNO='" & Rs("contno") & "'   AND  a.contdt='" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "' AND A.DIVCODE='" & Divcode & "' and arrdate<='" & Format(t1, "yyyy-mm-dd") & "' and duedate<'" & Format(t1, "yyyy-mm-dd") & "' GROUP BY ORDQTY,cancelbales " & _
            " Union select ordqty-isnull(cancelbales,0) as qty from rm_cont a where duedate<'" & Format(t1, "yyyy-mm-dd") & "'  and a.contno='" & Rs("contno") & "' and a.contdt='" & Format(Rs("CONTDT"), "yyyy/mm/dd") & "' " & _
           " AND a.DIVCODE='" & Divcode & "' and a.contno not in ( select contno from rm_arrival b where a.contno=b.contno and a.contdt=b.contdt " & _
           " and a.divcode=b.divcode ))x", db, adOpenStatic
           'and arrdate>'" & Format(rs("duedate"), "yyyy-mm-dd") & "'
    If rss.RecordCount > 0 Then
        lpenlaouttimeqty = lpenlaouttimeqty + rss(0)
    End If
    
'    Set rsa = New Recordset
'    rsa.Open " select sum(ordqty)-sum(recqty) as PenQty from(  " & _
'            " select sum(ordqty-isnull(cancelbales,0))  as ordqty,0 as recqty from rm_cont where CONTNO='" & rs("contno") & "'  AND contdt = '" & Format(rs("CONTDT"), "yyyy/mm/dd") & "' AND brkcd='" & sup1 & "' and contdt <='" & Format(t1, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' " & _
'            " Union select 0 as ordqty, sum(quantity) as recqty from rm_arrival where  CONTNO='" & rs("contno") & "'  AND contdt = '" & Format(rs("CONTDT"), "yyyy/mm/dd") & "' AND brkcd='" & sup1 & "' and arrdate<'" & Format(f1, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' )x ", DB, adOpenStatic
'
'     If rsa.RecordCount > 0 Then
'            lpenlaouttimeqtyRec = rsa(0) - rs2("recvdqty")
'     Else
'            lpenlaouttimeqtyRec = 0
'    End If
'
'    lpenlaouttimeqty = lpenlaouttimeqty + lpenlaouttimeqtyRec - lpencuouttimeqty
    
    'Footer Sum
    Ltotal_OrderQty = (Ltotal_OrderQty + LOrderqty) - LCanclQty
    Ltotal_InTimeQty = Ltotal_InTimeQty + LInTimeQty
    Ltotal_outTimeQty = (Ltotal_outTimeQty + LOutTimeQty)
    Ltotal_RecvdQty = Ltotal_RecvdQty + RS2("recvdqty")
    Ltotal_penQty = Ltotal_penQty + rs4("penqty")
    LTotal_PenCurOutTimeQty = val(LTotal_PenCurOutTimeQty) + val(lpencuouttimeqty)
    LTotal_PenlaOutTimeQty = val(LTotal_PenlaOutTimeQty) + val(lpenlaouttimeqty)
            ''to be altered
    Ltotal_ConformedQty = Ltotal_ConformedQty + LConqty
    Ltotal_Conqty = Ltotal_Conqty + LConqty
    Ltotal_Nonqty = Ltotal_Nonqty + LNonqty
    
    val5 = Rs("Contno")
    val1 = Format(yfdate, "yyyy")
    val2 = Right(val1, 2)
    val3 = Format(yldate, "yyyy")
    val4 = Right(val3, 2)
    
    Print #11, Space(3) & Padl(CStr(val5) + "/" & val2 & val4, 10, " ") & Space(2) & _
                          Padl((LOrderqty - LCanclQty), 5, " ") + Space(2) + _
                          Padl(RS2("recvdqty"), 8, " ") + Space(2) + _
                          Padl(LConqty, 9, " "); Space(2) + _
                          Padl(LNonqty, 9, " ") + Space(2) + _
                          Padl(RS2("recvdqty"), 8, " ") + _
                          Padl(INF(LInTimeQty, 0), 8, " ") & Space(1) & _
                          Padl(INF((LOutTimeQty), 0), 8, " ") & _
                          Padl(lpencuouttimeqty, 10, " ") & _
                          Padl(lpenlaouttimeqty, 8, " ")
                          
    Rs.MoveNext
    lpencuouttimeqty = 0
    lpenlaouttimeqty = 0
Loop

tot10 = ((tot4 / IIf(tot3 = 0, 1, tot3)) * 102) * 0.8 'Rating

If Co > 56 Then
    Print #11, Space(5) & String(92, "-")
    Print #11, Chr(12)
    Pg = Pg + 1
    Co = 0
    Print #11,
    Call supHEADER(CStr(Pg), sup1)
End If
LTotal_PenlaOutTimeQty1 = LTotal_PenlaOutTimeQty
Print #11, Space(5) & String(92, "-")
Print #11, Space(15) + _
            IIf(Ltotal_OrderQty = 0, Space(5), Padl(Ltotal_OrderQty, 5, " ")) + Space(1); _
            IIf(Ltotal_RecvdQty = 0, Space(9), Padl(Ltotal_RecvdQty, 9, " ")) + Space(3) + _
            Padl(Ltotal_Conqty, 8, " ") + Space(2) + _
            IIf(Ltotal_Nonqty = 0, Space(9), Padl(Ltotal_Nonqty, 9, " ")) + Space(2) + _
            Padl(Ltotal_RecvdQty, 9, " ") + Space(1) + _
            IIf(Ltotal_InTimeQty = 0, Space(7), Padl(Ltotal_InTimeQty, 7, " ")) + Space(1) + _
            IIf(Ltotal_outTimeQty = 0, Space(7), Padl(Ltotal_outTimeQty, 7, " ")) + Space(1) + IIf(LTotal_PenCurOutTimeQty = 0, Space(9), Padl(LTotal_PenCurOutTimeQty, 9, " ")) + Space(1) + IIf(LTotal_PenlaOutTimeQty = 0, "        ", Padl(LTotal_PenlaOutTimeQty, 7, " "))
            
Print #11, Space(5) & String(92, "-")
Co = Co + 3
Print #11,
Print #11, Chr(27) & "E" & Space(5) + "Rating Method  :  " & Chr(27) & "F"

Co = Co + 2

If Co > 56 Then
        Print #11, Space(5) & String(92, "-")
        Print #11, Chr(12)
        Co = 0
        Pg = Pg + 1
        Print #11,
        Call supHEADER(CStr(Pg), sup1)
End If

Print #11,
Print #11, Space(5) + "Total Qty Received       : " + Padl(Ltotal_RecvdQty, 7, " ") + "      Total Qty Received       : " + Padl(Ltotal_RecvdQty, 7, " ")
Print #11, Space(5) + "Total Qty Conformed      : " + Padl(Ltotal_RecvdQty - Ltotal_Nonqty, 7, " ") + "      Total Received In Time   : " + Padl(Ltotal_InTimeQty, 7, " ")
Co = Co + 3
Print #11, Space(5) + "                           " + Space(7) + "      Total Pending(Late)      : " + Padl(INF(LTotal_PenlaOutTimeQty1, 2), 7, " ")
Co = Co + 1
If Ltotal_RecvdQty > 0 Then
    Print #11, Space(5) + "% Qty Conformed          : " + Padl(INF((Ltotal_ConformedQty / Ltotal_RecvdQty * 100), 2), 7, " ") + " % " + "   % Qty Received In Time   : " + Padl(Format(Round((Ltotal_InTimeQty) / (Ltotal_RecvdQty + LTotal_PenlaOutTimeQty1) * 100, 4), "0.00"), 7, " "); " %"
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
    Print #11, Space(5) + "Rating For Quality (80%) : " + Padl(INF((Ltotal_ConformedQty / Ltotal_RecvdQty * 80), 2), 7, " ") + " % " + "   Rating For Delivery(20%) : " + Padl(Format(Round((Ltotal_InTimeQty) / (LTotal_PenlaOutTimeQty1 + Ltotal_RecvdQty) * 20, 4), "0.00"), 7, " "); " %"
    Print #11,
    Else
    Print #11, Space(5) + "Rating For Quality (80%) : " + Padl(INF(0, 2), 7, " ") + " % " + "   Rating For Delivery(20%) : " + Padl(INF(0, 2), 7, " "); " %"
    End If
    If Ltotal_RecvdQty > 0 Then
    'tot = (Ltotal_ConformedQty / Ltotal_RecvdQty * 80) + ((Ltotal_InTimeQty - LTotal_PenlaOutTimeQty1) / Ltotal_RecvdQty * 20)
    tot = (Ltotal_ConformedQty / Ltotal_RecvdQty * 80) + ((Ltotal_InTimeQty) / (LTotal_PenlaOutTimeQty1 + Ltotal_RecvdQty) * 20)
    TEMP = conrate + conrate1
Else
    tot = 0
    TEMP = 0
End If

Print #11, Chr(27) & "E" & Space(25) + "Overall Broker Rating : " + Padl((Format(Round(tot, 4), "0.00")), 8, " ") + " %" & Chr(27) & "F"
Print #11,
Print #11,
Print #11,
Print #11,
Print #11,
Call footermod(CInt(11), footerstr, 92)
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
Public Sub supHEADER(Pg As Integer, sup1 As String)
Print #11,
Print #11, Chr(14) + CENTRE(DIVNAME, 90, " ") + Chr(14)
Print #11,
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #11, Chr(27) + "E" + Space(5) + CENTRE("Broker Assessment Record", 92, " ")
Set rsa = New Recordset
rsa.Open "select slname from fa_slmas where slcode='" & sup1 & "'", db, adOpenStatic
If rsa.RecordCount > 0 Then
    sup2 = rsa(0)
End If
Print #11, Space(5) + CENTRE("Broker : " + sup2, 92, " ")
Print #11, Space(5) + CENTRE("Assessment Period From " + Padl(Format(f1, "dd-mm-yy"), 12, " ") + " To " + Padl(Format(t1, "dd-mm-yy"), 12, " "), 92, " ")
Print #11,
Print #11, Space(5) + CENTRE("Date Of Assessment " + Padl(pdate, 12, " "), 92, " ") + Chr(27) + "F"
Print #11, Space(5) + String(92, "-")
Print #11, Space(5); "Purchase  Order  Received  Conformed  Non-Conf. Received  <---Received---->  Pending Pending"
Print #11, Space(5); "Order No.   Qty       Qty        Qty       Qty       Qty  In Time     Late   Current    Late"
Print #11, Space(5) & String(92, "-")
Co = Co + 11
End Sub







