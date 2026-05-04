Attribute VB_Name = "marketcommrepreceipts"
Dim rs1 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1, b1 As String
Dim sStatus As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim z As Integer
Dim sAddress As String
Dim rp As New rmireports
Public Sub marcommrecReport(a As String, b As String, footerstr As String)
Set cnn = New Connection
a1 = a
b1 = b
z = 0
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
     Set rs1 = New Recordset
     rs1.Open "select a.arrdate,a.supcd,f.slname,ISNULL(a.areacode,'') AS AREACODE,ISNULL(b.areaname,'') as areaname," & _
              " a.varcode,bale=(case when a.bbflag = 'B' then a.quantity else 0 end),bora=(case when a.bbflag='R' then a.quantity else 0 end)," & _
              " unit=case when a.bbflag = 'B' then 'Bales' else 'Borahs' end, round(l.Favaourablewgt,2) as netwt," & _
              " round(L.Favaourablewgt *  l.ratekg,2) as  'Value',L.LOTNO,L.BILLNO,L.BILLDT,L.PJDT,L.PJNO,FBILLNO," & _
              " FBILLDT,isnull(a.ratecy,0)as ratecy,ISNULL(TAXAMT,0) AS TAX,A.ARRNO,b.L_OR_U as LUI," & _
              " isnull(b.state,'') as State,isnull(f.add1,'') as add1,isnull(f.add2,'') as add2 From rm_arrival a,fa_slmas f,rm_area b,rm_var c,rm_lot l Where a.supcd = f.slcode and a.areacode=b.areacode and a.varcode=c.varcode and a.arrdate between '" & Format(a, "yyyy/mm/dd") & "' and '" & Format(b, "yyyy/mm/dd") & " 'and l.lotno=a.lotno AND L.LOTDT =A.LOTDT AND L.LOTTYPE=A.LOTTYPE and l.lotyear='" & Year(yfdate) & "' and a.divcode=l.divcode and a.divcode='" & Divcode & "' order by L.LOTNO ", cnn, adOpenStatic, adLockBatchOptimistic
    If rs1.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     End If
    Set RPTV = New Report.ReportView

     z = FreeFile
    Close
'    Open "C:\mcrr.TXT" For Output As #z

 Open KALFOLDERDATA & "\mcrr.TXT" For Output As #z
    pg1 = 1
    Co = 0
    'Print #z, Chr(15)
     'z = FreeFile
    Call marcommrecHeader(pg1, Co, S, a, b)
            tot = 0
            tot1 = 0
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
            tot6 = 0
            tot7 = 0
        If Co >= PageLen Then
                Print #z, String(157, "-");
                Print #z, Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call marcommrecHeader(pg1, Co, S, a, b)
        End If
        Do While Not rs1.EOF
               
               Sno = Sno + 1
            If Co >= PageLen Then
                    Print #z, String(152, "-")
                    Print #z, Space(60) + "** Page Total ** " + Space(13) + Padl(INF(tot4, 0), 10, " ") + Space(5) + Padl(INF(tot6, 3), 13, " ") + Space(1) + Padl(INF(tot7, 2), 15, " ")
                    Print #z, String(152, "=")
                    tot4 = 0
                    tot5 = 0
                    tot6 = 0
                    tot7 = 0
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call marcommrecHeader(pg1, Co, S, a, b)
            End If
                Set rsa = New Recordset
                rsa.Open "select dlytype,isnull(b.freight,0),a.contno,a.contdt from rm_cont a,rm_arrival b where a.contno=b.contno and b.contdt=a.contdt and arrno='" & rs1("ARRNO") & "' and arrdate BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and b.divcode ='" & Divcode & "' AND DLYTYPE='S'", db, adOpenStatic
                
                If rsa.RecordCount > 0 Then
                    pjamt = rs1("VALUE") + rs1("TAX")
                Else
                    pjamt = rs1("VALUE")
                End If
                
                If rs1("LUI") = "I" Then
                    sStatus = "IMPORT"
                ElseIf rs1("LUI") = "U" Then
                    sStatus = "UPCOUNTRY"
                ElseIf rs1("LUI") = "L" Then
                    sStatus = "LOCAL"
                End If
                sAddress = ""
                
                If IsNull(rs1("Add2")) = False And Trim(rs1("Add2")) <> "" Then
                    sAddress = rs1("Add1") & " " & rs1("Add2")
                Else
                    sAddress = rs1("Add1")
                End If
                                
                                
               Print #z, Padr(Sno, 3, " ") + Space(1) + Padr(Format(rs1("arrdate"), "dd-mm-yy"), 8, " ") + Space(1) + Padr(rs1("lotno"), 4, " ") + Space(1) + Padr(CStr(rs1("slname")), 46, " ") + Space(1) + Padr(CStr(rs1("varcode")), 5, " ") + Space(1) + Padl(rs1("BILLNO"), 5, " ") + Space(1) + Padr(Format(rs1("BILLDT"), "DD-MM-YY"), 8, " ") + Space(1) + Padl(INF(rs1("ratecy"), 0), 8, " "); Space(1); Padl(INF(rs1("bale") + rs1("bora"), 0), 5, " ") + Space(1) + Padr(rs1("unit"), 5, " ") + Space(1) + Padl(INF(rs1("netwt"), 3), 11, " ") + Space(1) + Padl(INF(pjamt, 2), 15, " ") + Space(1) + Padl("", 7, " ") + Space(0) + Padr(sStatus, 10, " ")
               Print #z, Padr("", 3, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr("", 4, " ") + Space(1) + Padr(CStr(sAddress), 58, " ")
               Print #z, Padr("", 3, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr("", 4, " ") + Space(1) + Padr(CStr(rs1("areaname")), 29, " ") + Space(1) + Padr(CStr(rs1("state")), 20, " ")
               Co = Co + 3
               Print #z,
               Co = Co + 1
               tot = tot + IIf(IsNull(rs1(6)), 0, rs1(6))
               tot1 = tot1 + IIf(IsNull(rs1(7)), 0, rs1(7))
               tot2 = tot2 + IIf(IsNull(rs1("netwt")), 0, rs1("netwt"))
               tot3 = tot3 + pjamt 'IIf(IsNull(RS1("VALUE")), 0, RS1("VALUE"))
               'for page total
                tot4 = tot4 + IIf(IsNull(rs1(6)), 0, rs1(6))
               tot5 = tot5 + IIf(IsNull(rs1(7)), 0, rs1(7))
               tot6 = tot6 + IIf(IsNull(rs1("netwt")), 0, rs1("netwt"))
               tot7 = tot7 + pjamt 'IIf(IsNull(RS1("VALUE")), 0, RS1("VALUE"))
               If Co >= PageLen Then
                        Print #z, String(152, "-")
                        Print #z, Space(60) + "** Page Total ** " + Space(13) + Padl(INF(tot4, 0), 10, " ") + Space(5) + Padl(INF(tot6, 3), 13, " ") + Space(1) + Padl(INF(tot7, 2), 15, " ")
                        Print #z, String(152, "=")
                            tot4 = 0
                            tot5 = 0
                            tot6 = 0
                            tot7 = 0
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        Co = 0
                        Call marcommrecHeader(pg1, Co, S, a, b)
                End If
               rs1.MoveNext
        Loop
               'Page total
               Print #z, String(152, "-")
               Print #z, Space(60) + "** Page Total ** " + Space(13) + Padl(INF(tot4, 0), 10, " ") + Space(5) + Padl(INF(tot6, 3), 13, " ") + Space(1) + Padl(INF(tot7, 2), 15, " ")
               Print #z, String(152, "-")
               tot4 = 0
               tot5 = 0
               tot6 = 0
               tot7 = 0
               Print #z, Space(59) + "** Grand Total ** " + Space(13) + Padl(INF(tot, 0), 10, " ") + Space(5) + Padl(INF(tot2, 3), 13, " ") + Space(1) + Padl(INF(tot3, 2), 15, " ")
               Print #z, String(152, "=")
               Co = Co + 1
               Print #z, Chr(12)
               Co = 0
               pg1 = pg1 + 1
'               Call marcommtransReport(a, b)
'
'
'                Set rs1 = New Recordset
'
'                rs1.Open "select a.LOTDT,a.supcd,f.slname,a.areacd,b.areaname,a.varcode,bale=(case when a.bblflg = 'B' then a.BALES end),bora=(case when a.bblflg='R' then a.BALES end),CASE WHEN a.NETWT > 0 THEN round(a.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value1', ISNULL(a.pjamt,0) 'Value',a.lotno,a.billno,a.billdt,A.ARRNO from fa_slmas f,rm_area b,rm_var c,rm_lot a Where a.supcd = f.slcode and a.areacd=b.areacode and a.varcode=c.varcode and a.REJDT between '" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & " ' AND a.rejflg='Y' AND LOTYEAR='" & Year(yfdate) & "' order by a.lotdt", DB, adOpenStatic
'
'                tot = 0
'                tot1 = 0
'                tot2 = 0
'                tot3 = 0
'                Sno = 1
'                If Not rs1.EOF Then
'
'                    Call marcommrecHeader2(pg1, Co, S, a, b)
'                End If
'               Do While Not rs1.EOF
'
'                    Set rsa = New Recordset
'                    rsa.Open "select dlytype,isnull(b.freight,0),a.contno,a.contdt from rm_cont a,rm_arrival b where a.contno=b.contno and b.contdt=a.contdt and arrno='" & rs1("ARRNO") & "' and arrdate BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and b.divcode ='" & Divcode & "' AND DLYTYPE='S'", DB, adOpenStatic
'
'                    If rsa.RecordCount > 0 Then
'                        pjamt = rs1("VALUE") + rs1("TAX")
'                    Else
'                        pjamt = rs1("VALUE")
'                    End If
'
'
'                    Print #z, Space(5) + Padr(Format(rs1("lotdt"), "dd-mm-yyyy"), 10, " ") + Space(1) + Padl(rs1("lotno"), 7, " ") & Space(2) + Padr(CStr(rs1("slname")), 50, " ") + Space(1) + Padr(CStr(rs1("areaname")), 12, " ") + Space(1) + Padr(CStr(rs1("varcode")), 5, " ") + Space(1) + Padl(INF(rs1("bale"), 0), 6, " ") + Space(1) + Padl(INF(rs1("bora"), 0), 7, " ") + Space(1) + Padl(INF(rs1("netwt"), 2), 13, " ") + Space(1) + Padl(INF(pjamt, 2), 15, " ")
'
'
'                    Co = Co + 1
'                    Sno = Sno + 1
'                    tot = tot + IIf(IsNull(rs1(6)), 0, rs1(6))
'                    tot1 = tot1 + IIf(IsNull(rs1(7)), 0, rs1(7))
'                    tot2 = tot2 + IIf(IsNull(rs1("netwt")), 0, rs1("netwt"))
'                    tot3 = tot3 + pjamt 'IIf(IsNull(RS1("VALUE")), 0, RS1("VALUE"))
'                    rs1.MoveNext
'                    If Not rs1.EOF Then
'                    If Co >= PageLen Then
'                        Print #z, Space(5) + String(154, "-");
'                        Print #z, Chr(12)
'                        pg1 = pg1 + 1
'                        Co = 0
'                        Call marcommrecHeader1(pg1, Co, S, a, b)
'                    End If
'                    End If
'                Loop
'               If rs1.RecordCount > 1 Then
'               'Print #z, Space(64) + "** Grand Total ** " + Space(5) + Padl(INF(tot, 0), 10, " ") + Space(1) + Padl(INF(tot1, 0), 7, " ") + Space(1) + Padl(INF(tot2, 2), 13, " ") + Space(1) + Padl(INF(tot3, 2), 15, " ")
'               Print #z, Space(5) + String(134, "-")
'               Print #z, Space(70) + "** Grand Total ** " + Space(3) + Padl(INF(tot, 0), 10, " ") + Space(4) + Padl(INF(tot2, 3), 18, " ") + Space(1) + Padl(INF(tot3, 2), 15, " ")
'               Print #z, Space(5) + String(134, "-")
'               End If
Print #z,
Print #z,
Print #z,
Print #z,
Call footermod(CInt(z), footerstr, 85)
Print #z, Chr(12)
Print #z, Chr(15)
Close #z
 z = FreeFile
'Open "c:\mcrr.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type mcrr.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\mcrr.TXT"
'RPTV.Batfile = "c:\mcrr.bat"
Call KALBATPROCESS("mcrr")

End Sub
Public Sub marcommrecHeader(pg1 As Integer, Co As Integer, S As String, a As String, b As String)
a = a1
b = b1
          
          'Print #z,
          'Print #z, Chr(18)
          Print #z, Chr(18) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, "Market Committee Report(Receipts)" + "  from  " + Format(Trim(a), "DD/MM/YY") + " to " + Format(Trim(b), "DD/MM/YY") + Space(73) + CStr(SR) + "Pg.: " + CStr(pg1)   '+ Chr(15)
          Print #z, String(152, "-")
          Print #z, "SNo  Receipt Lot  Supplier Name                                  Var.   Inv.  Invoice    Rate/   Qty  Unit  Net Weight          Amount <---Cess Amount--->"
          Print #z, "        Date No.  Address                                        Code    No.     Date    Candy                                           Paid  To Be Paid"
          Print #z, "                  Station                       State                                                                                   CR No.   "
          Print #z, String(152, "-")
          Co = Co + 8
End Sub
Public Sub marcommrecHeader1(pg1 As Integer, Co As Integer, S As String, a As String, b As String)
a = a1
b = b1
          Print #z, Chr(18) + Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) + "Market Committee Report(Transfer)" + "  from  " + Format(Trim(a), "DD/MM/YY") + " to " + Format(Trim(b), "DD/MM/YY") + Space(77) + CStr(SR) + "Pg.: " + CStr(pg1)   '+ Chr(15)
          Print #z, Space(5) + String(154, "-")
          Print #z, Space(5) + "SNo  Receipt Lot Supplier Name                Station     Var        Prov.  Invoice           Final  Invoice     Rate/   Qty    Net Weight          Amount"
          Print #z, Space(5) + "        Date No.                                          Code         No.     Date             No.     Date    Candy"
          Print #z, Space(5) + String(154, "-")
          Co = Co + 7
End Sub
'for transfer
Public Sub marcommtransReport(a As String, b As String)
 Set cnn = New Connection
a1 = a
b1 = b
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
     Set rs1 = New Recordset
     ''MODIFIED
     rs1.Open "select distinct a.arrdate,a.supcd,f.slname,ISNULL(a.areacode,'') AS AREACODE,ISNULL(b.areaname,'') as areaname,a.varcode,bale=(case when a.bbflag = 'B' then a.quantity end),bora=(case when a.bbflag='R' then a.quantity end), round(A.netwt,2) as netwt,case when L.FBILLVALUE is null then L.pjamt else L.fbillvalue end  as 'Value',L.LOTNO,L.BILLNO,L.BILLDT,L.PJDT,L.PJNO  , FBILLNO ,FBILLDT,isnull(a.ratecy,0) as ratecy From rm_arrival a,fa_slmas f,rm_area b,rm_var c,rm_lot l,rm_issb m,rm_issh r Where m.isstype='T' and m.lotno=l.lotno and m.lotdt=m.lotdt and a.supcd = f.slcode and a.areacode=b.areacode and a.varcode=c.varcode and m.Docdt between '" & Format(a, "yyyy/mm/dd") & "' and '" & Format(b, "yyyy/mm/dd") & " 'and l.lotno=a.lotno AND L.LOTDT =A.LOTDT AND L.LOTTYPE=A.LOTTYPE and l.lotyear='" & Year(yfdate) & "' and opflg='N' order by a.arrdate ", cnn, adOpenStatic, adLockBatchOptimistic
     
       If rs1.EOF Then
        'MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     End If
   'PG1 = pg + 1
    Co = 0
    Sno = 0
    Call marcommrecHeader1(pg1, Co, S, a, b)
            tot = 0
            tot1 = 0
            tot2 = 0
            tot3 = 0
    
        If Co >= PageLen Then
                Print #z, Space(5) + String(154, "-");
                Print #z, Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call marcommrecHeader1(pg1, Co, S, a, b)
        End If
        Do While Not rs1.EOF
               'Print #z,
               'co = co + 1
               Sno = Sno + 1
            If Co >= PageLen Then
                    Print #z, Space(5) + String(154, "-");
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call marcommrecHeader1(pg1, Co, S, a, b)
            End If
                Print #z, Space(5) + Padl(Sno, 3, " ") + Space(1) + Padr(Format(rs1("arrdate"), "dd-mm-yy"), 8, " ") + Space(1) + Padl(rs1("lotno"), 3, " ") + Space(1) + Padr(CStr(rs1("slname")), 28, " ") + Space(1) + Padr(CStr(rs1("areaname")), 11, " ") + Space(1) + Padr(CStr(rs1("varcode")), 6, " ") + Space(1) + Padl(rs1("BILLNO"), 9, " ") + Space(1) + Padr(Format(rs1("BILLDT"), "DD-MM-YY"), 8, " ") + Space(1) + Padl(rs1("fbillno"), 15, " ") + Space(1) + Padr(Format(rs1("fbillDT"), "dd-mm-yy"), 8, " ") + Space(1) + Padl(INF(rs1("ratecy"), 0), 8, " ") + Space(1) + Padl(INF(rs1("bale"), 0), 6, " ") + Space(1) + Padl(INF(rs1("netwt"), 3), 13, " ") + Space(1) + Padl(INF(rs1("value"), 2), 15, " ")
 
                Co = Co + 1
                If Co >= PageLen Then
                        Print #z, Space(5) + String(154, "-");
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        Co = 0
                        Call marcommrecHeader1(pg1, Co, S, a, b)
                End If

               tot = tot + IIf(IsNull(rs1(6)), 0, rs1(6))
               tot1 = tot1 + IIf(IsNull(rs1(7)), 0, rs1(7))
               tot2 = tot2 + IIf(IsNull(rs1("netwt")), 0, rs1("netwt"))
               tot3 = tot3 + IIf(IsNull(rs1("VALUE")), 0, rs1("VALUE"))
               rs1.MoveNext
        Loop
               Print #z, Space(5) + String(154, "-")
               Co = Co + 1
               Print #z, Space(82) + "** Grand Total ** " + Space(19) + Padl(INF(tot, 0), 10, " ") + Space(1) + Padl(INF(tot2, 3), 13, " ") + Space(1) + Padl(INF(tot3, 2), 15, " ")
               Co = Co + 1
End Sub

Public Sub marcommrecHeader2(pg1 As Integer, Co As Integer, S As String, a As String, b As String)
a = a1
b = b1
         
          
          Print #z, Chr(18) + Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) + "Market Committee Report(Rejected Arrivals)" + "  from  " + Format(Trim(a), "DD/MM/YY") + " to " + Format(Trim(b), "DD/MM/YY") + Space(49) + CStr(SR) + "Pg.: " + CStr(pg1)   '+ Chr(15)
          Print #z, Space(5) + String(135, "-")
          Print #z, Space(5) + "Receipt    Lot No.  Supplier Name                                      Station      Variety  Qty            Net Weight          Amount"
          Print #z, Space(5) + "   Date                                                          "
          Print #z, Space(5) + String(135, "-")
          Co = Co + 7
End Sub
