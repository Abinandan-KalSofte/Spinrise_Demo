Attribute VB_Name = "rejecteddatewise"
Dim RS1 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1, b1 As String
Dim y As String
Dim pg1 As Integer
Dim co As Integer
Dim s As String
Dim z As Integer
Public Sub rej(a As String, b As String)
Set cnn = New Connection
a1 = a
b1 = b
z = 0
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set RS1 = New Recordset
                ''MODIFIED
                'RS1.Open "select a.LOTDT,a.supcd,f.slname,a.areacd,b.areaname,a.varcode,bale=(case when a.bblflg = 'B' then a.BALES end),bora=(case when a.bblflg='R' then a.BALES end),CASE WHEN a.NETWT > 0 THEN round(a.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value1',case when a.FBILLVALUE is null then a.pjamt else a.fbillvalue end  as 'Value',a.lotno,a.billno,a.billdt from fa_slmas f,rm_area b,rm_var c,rm_lot a Where a.supcd = f.slcode and a.areacd=b.areacode and a.varcode=c.varcode and a.REJDT between '" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & " ' AND a.rejflg='Y' AND LOTYEAR='" & Year(yfdate) & "' order by a.lotdt", DB, adOpenStatic
                
                RS1.Open "select a.LOTDT,a.supcd,f.slname,a.areacd,b.areaname,a.varcode,bale=(case when a.bblflg = 'B' then a.BALES end),bora=(case when a.bblflg='R' then a.BALES end),CASE WHEN a.NETWT > 0 THEN round(a.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value1', ISNULL(a.pjamt,0) 'Value',a.lotno,a.billno,a.billdt,a.ratecy,a.rejdt,a.reason from fa_slmas f,rm_area b,rm_var c,rm_lot a Where a.supcd = f.slcode and a.areacd=b.areacode and a.varcode=c.varcode and a.REJDT between '" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & " ' AND a.rejflg='Y' AND LOTYEAR='" & Year(yfdate) & "' order by a.lotdt", DB, adOpenStatic
                'rs1.Open "select a.arrdate,a.supcd,f.slname,a.areacode,b.areaname,a.varcode,bale=(case when a.bbflag = 'B' then a.quantity end),bora=(case when a.bbflag='R' then a.quantity end),CASE WHEN L.NETWT > 0 THEN round(L.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value' from rm_arrival a,fa_slmas f,rm_area b,rm_var c,rm_lot l Where a.supcd = f.slcode and a.areacode=b.areacode and a.varcode=c.varcode and a.PASSDT between '" & Format(a, "yyyy/mm/dd") & "' and '" & Format(b, "yyyy/mm/dd") & " 'and l.lotno=*a.lotno AND L.LOTDT =* A.LOTDT AND L.LOTTYPE=*A.LOTTYPE and isnull(LOTRECQTY,0)=0 order by a.arrdate ", cn, adOpenStatic, adLockBatchOptimistic
                tot = 0
                tot1 = 0
                tot2 = 0
                tot3 = 0
                tot4 = 0
                tot5 = 0
                tot6 = 0
                tot7 = 0
                sno = 1
     If RS1.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     End If
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close
    Open "C:\mcrr.TXT" For Output As #z
    pg1 = 1
    co = 0
                
                If Not RS1.EOF Then
                Call marcommrecHeader21(pg1, co, s, a, b)
                End If
               Do While Not RS1.EOF
                    Print #z, Space(5) + Padr(Format(RS1("lotdt"), "dd-mm-yy"), 8, " ") + Space(1) + Padl(RS1("lotno"), 5, " ") & Space(2) + Padr(Format(RS1("rejdt"), "dd-mm-yy"), 8, " ") + Space(1) & Padr(CStr(RS1("slname")), 50, " ") + Space(1) + Padr(CStr(RS1("areaname")), 10, " ") + Space(1) + Padr(CStr(RS1("varcode")), 5, " ") + Space(1) + Padl(INF(RS1("bale"), 0), 6, " ") + Space(1) + Padl(INF(RS1("ratecy"), 0), 10, " ") + Space(1) + Padl(INF(RS1("netwt"), 2), 13, " ") + Space(1) + Padl(INF(RS1("value"), 2), 15, " ")
                    co = co + 1
                    Print #z, Space(20) + "Reaon: " & Padr(CStr(RS1("reason")), 100, " ")
                    co = co + 1
                    Print #z,
                    co = co + 1
                    sno = sno + 1
                    tot = tot + IIf(IsNull(RS1(6)), 0, RS1(6))
                    tot1 = tot1 + IIf(IsNull(RS1(7)), 0, RS1(7))
                    tot2 = tot2 + IIf(IsNull(RS1("netwt")), 0, RS1("netwt"))
                    tot3 = tot3 + IIf(IsNull(RS1("VALUE")), 0, RS1("VALUE"))
                    RS1.MoveNext
                    If Not RS1.EOF Then
                    If co >= pagelen Then
                        Print #z, Space(5) + String(140, "-");
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        co = 0
                        Call marcommrecHeader21(pg1, co, s, a, b)
                    End If
                    End If
                Loop
               Print #z, Space(5) + String(140, "-")
               If RS1.RecordCount > 1 Then
               Print #z, Space(73) + "** Total ** " + Space(9) + Padl(INF(tot, 0), 10, " ") + Space(7) + Padl(INF(tot2, 3), 18, " ") + Space(1) + Padl(INF(tot3, 2), 15, " ")
               Print #z, Space(5) + String(140, "-")
               End If
Print #z, Chr(12)
Print #z, Chr(15)
Close #z
 z = FreeFile
Open "c:\mcrr.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type mcrr.TXT>prn"
Close #z
RPTV.txtfile = "c:\mcrr.TXT"
RPTV.Batfile = "c:\mcrr.bat"
End Sub
Public Sub marcommrecHeader21(pg1 As Integer, co As Integer, s As String, a As String, b As String)
a = a1
b = b1
          
          Print #z, Chr(18) + Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          sr = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) + "Rejected Arrivals" + "  from  " + Format(Trim(a), "DD/MM/YY") + " to " + Format(Trim(b), "DD/MM/YY") + Space(79) + CStr(sr) + "Pg.: " + CStr(pg1)   '+ Chr(15)
          Print #z, Space(5) + CENTRE("Option : Datewise", 140, " ")
          Print #z, Space(5) + String(140, "-")
          Print #z, Space(5) + "Receipt   Mill  Rejected Supplier Name                                      Station    Variety  Qty      Candy    Net Weight          Amount"
          Print #z, Space(5) + "   Date Lot No      Date                                                                                  Rate"
          Print #z, Space(5) + String(140, "-")
          co = co + 8
          End Sub


