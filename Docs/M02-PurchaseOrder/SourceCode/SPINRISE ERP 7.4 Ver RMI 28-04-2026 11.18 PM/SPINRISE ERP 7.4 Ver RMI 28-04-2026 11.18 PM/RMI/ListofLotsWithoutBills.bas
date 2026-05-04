Attribute VB_Name = "ListofLotsWithoutBills"
Dim rs5 As Recordset
Dim RS6 As Recordset
Dim rs7 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14, tot15 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s1, s2 As String
Dim z As Integer
Public Sub LLWB(fdate As String, todate As String)

    Set cnn = New Connection
    cnn.Provider = "MSDATASHAPE"
    cnn.Open connectstring
    Set RPTV = New Report.ReportView
    s = FreeFile
    Close #11
    Open "C:\LLWB.TXT" For Output As #11
    pg1 = 1
    co = 0
    'Print #11, Chr(15)
    z = FreeFile
    Call LotstockRepHeader(pg1, CStr(f1), t1)
    
    Set rs5 = New Recordset
    'rs5.Open "SHAPE {select r.supcd,a.slname,l.billno,l.billdt,l.lotno as lotno,l.lotdt,Bale=(case when r.bbflag='B' then r.quantity end),Bora=(case when r.bbflag='R' then r.quantity end),r.grosswt , r.tarewt, r.netwt, t.ratekg * 100 * r.netwt 'value' from rm_arrival r,fa_slmas a,rm_lot l,rm_cont t Where r.supcd = a.slcode and l.lotno=r.lotno and t.contno=r.contno and t.contdt between '" & Format(fdate, "yyyy/mm/dd") & "' and '" & Format(todate, "yyyy/mm/dd") & "' order by r.supcd}  AS Command2 COMPUTE Command2 BY 'supcd','slname'", cn, adOpenStatic, adLockBatchOptimistic
    rs5.Open "SHAPE {select r.supcd,a.slname,l.billno,l.billdt,l.lotno as lotno,l.lotdt,Bale=( r.quantity ),Unit=(case when r.bbflag='R' then 'Borah' else 'Bales' end),round(r.grosswt,2) as grosswt , round(r.tarewt,2) as tarewt , round(r.netwt,2) as netwt, round(t.ratekg * 100 * r.netwt,2) 'value' from rm_arrival r,fa_slmas a,rm_lot l,rm_cont t Where REJFLG='N' AND r.supcd = a.slcode and l.lotno=r.lotno and t.contno=r.contno and t.contdt between '" & Format(fdate, "yyyy/mm/dd") & "' and '" & Format(todate, "yyyy/mm/dd") & "' and l.lotdt between '" & Format(fdate, "yyyy/mm/dd") & "' and '" & Format(todate, "yyyy/mm/dd") & "' and pjno is null and pjdt is null AND LOTYEAR='" & Year(yfdate) & "' AND OPFLG='N' AND R.LOTNO=L.LOTNO AND R.LOTDT=L.LOTDT AND R.ARRNO=L.ARRNO order by r.supcd}  AS Command2 COMPUTE Command2 BY 'supcd','slname'", cnn, adOpenStatic, adLockBatchOptimistic
    If rs5.RecordCount = 0 Then
        MsgBox ("No records found"), vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Do While Not rs5.EOF
        sup_cd = rs5(0)
        sup_name = rs5(1)
          Print #11,
          co = co + 1
        If co >= pagelen Then
             pg1 = pg1 + 1
             co = 0
             Call LotstockRepHeader(pg1, CStr(f1), t1)
        End If
        Print #11, Space(5) & Padr(rs5(1), rs5(1).DefinedSize, " ") & Space(2) & Padr(rs5(2), rs5(2).DefinedSize, " ")
        co = co + 1
        If co >= pagelen Then
             pg1 = pg1 + 1
             co = 0
             Call LotstockRepHeader(pg1, CStr(f1), t1)
        End If
        Set RS6 = New Recordset
        RS6.Open "select distinct r.supcd,a.slname,l.billno,l.billdt,l.lotno as lotno,l.lotdt,Bale=(r.quantity),Unit=(case when r.bbflag='R' then 'Borah' else 'Bales' end),round(r.grosswt,2) as grosswt , round(r.tarewt,2) as tarewt, round(r.netwt,2) as netwt,  round((isnull(l.ratecy,0)/355.6187),2)* r.netwt 'value' from rm_arrival r,fa_slmas a,rm_lot l,rm_cont t Where  REJFLG='N' AND r.supcd = a.slcode and l.lotno=r.lotno and t.contno=r.contno and a.slcode = '" & rs5(1) & "' and r.supcd = a.slcode  and t.contdt between '" & Format(fdate, "yyyy/mm/dd") & "' and '" & Format(todate, "yyyy/mm/dd") & "' and l.lotdt between '" & Format(fdate, "yyyy/mm/dd") & "' and '" & Format(todate, "yyyy/mm/dd") & "' and pjno is null and pjdt is null  AND LOTYEAR='" & Year(yfdate) & "'  AND OPFLG='N' AND R.LOTNO=L.LOTNO AND R.LOTDT=L.LOTDT AND R.ARRNO=L.ARRNO order by r.supcd,a.slname,l.lotno", cnn, adOpenStatic
        'rs6.Open "select distinct r.supcd,a.slname,l.billno,l.billdt,l.lotno as lotno,l.lotdt,Bale=(case when r.bbflag='B' then r.quantity end),Bora=(case when r.bbflag='R' then r.quantity end),r.grosswt , r.tarewt, r.netwt, t.ratekg * 100 * r.netwt 'value' from rm_arrival r,fa_slmas a,rm_lot l,rm_cont t Where r.supcd = a.slcode and l.lotno=r.lotno and t.contno=r.contno and a.slcode = '" & rs5(1) & "' and r.supcd = a.slcode order by r.supcd,a.slname", cnn, adOpenStatic
       
        Do While Not RS6.EOF
            Print #11, Space(14) & Padl(IIf(IsNull(RS6(2)), " ", RS6(2)), RS6(2).DefinedSize, " ") & Space(2) & Padr(Format(RS6(3), "dd/mm/yy"), 10, " ") & Space(1) & Padl(RS6(4), 8, " ") & Space(3) & Padr(Format(RS6(5), "dd/mm/yy"), 10, " ") & Space(2) & Padl(INF(RS6(6), 0), 11, " ") & Space(3) & Padr(RS6("unit"), 5, " ") & Space(1) & Padl(INF(RS6(8), 2), 12, " ") & Space(4) & Padl(INF(RS6(9), 2), 12, " ") & Space(5) & Padl(INF(RS6(10), 2), 9, " ") & Space(5) & Padl(INF(RS6(11), 2), 13, " ")
            co = co + 1
        If co >= pagelen Then
             pg1 = pg1 + 1
             co = 0
             Call LotstockRepHeader(pg1, CStr(f1), t1)
        End If
            tot1 = tot1 + IIf(IsNull(RS6("bale")), 0, RS6("bale"))
            
            tot3 = tot3 + IIf(IsNull(RS6("grosswt")), 0, RS6("grosswt"))
            tot4 = tot4 + IIf(IsNull(RS6("tarewt")), 0, RS6("tarewt"))
            tot5 = tot5 + IIf(IsNull(RS6("netwt")), 0, RS6("netwt"))
            tot6 = tot6 + IIf(IsNull(RS6("value")), 0, RS6("value"))
            RS6.MoveNext
        Loop
        rs5.MoveNext
'        Do While sup_cd = rs5(0) And sup_name = rs5(1)
'            rs5.MoveNext
'            If rs5.EOF Then
'                Dim a As Integer
'                a = 99
'                Exit Do
'            End If
'            cd = rs5(0)
'            sup_name = rs5(1)
'        Loop
'        If a = 99 Then
'            Exit Do
'        End If
    Loop
    Print #11,
    co = co + 1
        If co >= pagelen Then
             pg1 = pg1 + 1
             co = 0
             Call LotstockRepHeader(pg1, CStr(f1), t1)
        End If
    Print #11, Space(5) & String(140, "-")
    co = co + 1
        If co >= pagelen Then
             pg1 = pg1 + 1
             co = 0
             Call LotstockRepHeader(pg1, CStr(f1), t1)
        End If
'    Print #11, Space(15) + "  **  Grand Total  **  " + Space(42) & Padl(Trim(tot1), 5, " ") & Space(1) & Padl(Trim(tot2), 5, " ") & Space(2) & Padl(Format(Trim(tot14), "######.00"), 9, " ") & Space(2) & Padl(Format(Trim(tot13), "#####.00"), 8, " ") & Space(2) & Padl(Format(tot15, "######.00"), 12, " ")
    Print #11, Space(15) + " ** Grand Total ** " + Space(35) & Padl(INF(tot1, 0), 7, " ") & Space(1) & Padl(INF(tot2, 0), 6, " ") & Space(2) & Padl(INF(tot3, 2), 12, " ") & Space(4) & Padl(INF(tot4, 2), 12, " ") & Space(1) & Padl(INF(tot5, 2), 13, " ") & Space(1) & Padl(INF(tot6, 2), 17, " ")
    co = co + 1
        If co >= pagelen Then
             pg1 = pg1 + 1
             co = 0
             Call LotstockRepHeader(pg1, CStr(f1), t1)
        End If
    Print #11, Space(5) & String(140, "-")
    co = co + 1
        If co >= pagelen Then
             pg1 = pg1 + 1
             co = 0
             Call LotstockRepHeader(pg1, CStr(f1), t1)
        End If
'   Command6 RELATE 'areacd' TO 'areacd') AS Command6 ", cn, adOpenStatic
    
    Print #11, Chr(18)
    Print #11, Chr(12)
        Close #11
         z = FreeFile
        Open "c:\LLWB.bat" For Output As #11
        Print #11, "cd\"
        Print #11, "c:"
        Print #11, "cd\"
        Print #11, "type LLWB.TXT>prn"
        Close #11
        RPTV.txtfile = "c:\LLWB.TXT"
        RPTV.Batfile = "c:\LLWB.bat"
        Screen.MousePointer = 0
End Sub
Public Sub LotstockRepHeader(pg1 As Integer, f1 As String, t1 As String)
a = a1
          
          Print #11, Chr(18)
          Print #11, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #11, Chr(15)
          sr = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #11, Space(5) + "Supplierwise List Of Lots without Invoices" + " from" + Space(1) + Format(f1, "DD/MM/YY"); Space(1); "to " + Format(t1, "DD/MM/YY");
          Print #11, Space(53) + CStr(sr) + "Pg.: " + Padl(pg1, 3, " ") + Chr(15)
          Print #11, Space(5) + String(140, "-")
          Print #11, Space(5) + "Code" + Space(4) + "Supplier Name"
          Print #11, Space(23) + "Billno" + Space(3) + "  Date  " + Space(4) + "Lot No" + Space(1) + "Received Date" + Space(7) + "  Qty" + Space(2) + " Unit" + Space(2) + "Gross Weight" + Space(5) + "Tare Weight" + Space(4) + "Net Weight" + Space(13) + "Value"
          Print #11, Space(5) & String(140, "-")
          co = co + 9
             
End Sub

