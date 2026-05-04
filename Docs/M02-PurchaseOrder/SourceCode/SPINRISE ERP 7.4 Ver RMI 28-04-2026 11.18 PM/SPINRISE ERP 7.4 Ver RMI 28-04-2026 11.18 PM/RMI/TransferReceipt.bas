Attribute VB_Name = "TransfrReceipt"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim totbal, totbora, totnet, totVal As Double
Dim a As Integer
Dim co As Integer
Dim TransType As String
Dim rp As New rmireports

Public Sub TransferReport(U As String, V As String, W As String, divname As String, TTYPE As String, footerstr As String, B As String, FSupp As String, TSupp As String)
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim VARREC As Recordset
Dim AREAREC As Recordset
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double

Dim Tqty As Double
Dim Tnetwt As Double
Dim Tvalue As Double

Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs2 = New Recordset
If TTYPE = "A" And B = "A" Then
    rs2.Open "Select lotno,catcd,LOTDT,isnull(transfertype,'BT')TransferType,ISSUE_DESC from rm_lot A,RM_ISSUETYPE B where a.transfertype=b.issue_code AND B.ISSTYPE in ('T','J') AND lottype='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ORDER BY ISSUE_DESC,LOTDT  ", Cnn, adOpenStatic
End If
If TTYPE <> "A" And B <> "A" Then
    rs2.Open "Select lotno,catcd,LOTDT,isnull(transfertype,'BT')TransferType,ISSUE_DESC from rm_lot a,rm_issuetype b where a.transfertype=b.issue_code and b.isstype in ('T','J') and a.transfertype='" & TTYPE & "' and a.CatCd='" & B & "' AND lottype='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  ORDER BY ISSUE_DESC,LOTDT", Cnn, adOpenStatic
    End If
    If TTYPE = "A" And B <> "A" Then
    rs2.Open "Select lotno,catcd,LOTDT,isnull(transfertype,'BT')TransferType,ISSUE_DESC from rm_lot a,rm_issuetype b where a.transfertype=b.issue_code and b.isstype in ('T','J') and a.CatCd='" & B & "' AND lottype='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  ORDER BY ISSUE_DESC,LOTDT", Cnn, adOpenStatic
    End If
    If TTYPE <> "A" And B = "A" Then
    rs2.Open "Select lotno,catcd,LOTDT,isnull(transfertype,'BT')TransferType,ISSUE_DESC from rm_lot a,rm_issuetype b where a.transfertype=b.issue_code and b.isstype in ('T','J') and a.transfertype='" & TTYPE & "' AND lottype='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  ORDER BY ISSUE_DESC,LOTDT", Cnn, adOpenStatic
    End If
If rs2.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Set rptv = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\reci.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
co = co + 1
Call TransferHeader(pg1, co, U, V, W, divname, TTYPE)
totbal = 0
totbora = 0
totnet = 0
totVal = 0
Tqty = 0
Tnetwt = 0
Tvalue = 0
    rs2.MoveFirst
        TransType = ""
        
        Do While Not rs2.EOF
            If TransType <> rs2("TRANSFERTYPE") Then
                
                If TransType <> "" And TTYPE = "A" Then
                    Print #a,
                    Print #a, Space(63) + " ** Transfer Total **" + Padl(INF(Tqty, 0), 17, " ") + Space(17) + Padl(INF(Tnetwt, 2), 16, " "); Space(53); Padl(INF(Tvalue, 2), 16, " ")
                    Print #a,
                    Tqty = 0
                    Tnetwt = 0
                    Tvalue = 0
                    co = co + 3
                End If
                Print #a, Space(5) + Chr(27) + "E" + rs2("issue_desc") + Chr(27) + "F"
                co = co + 1
            End If
            TransType = rs2("TRANSFERTYPE")
            
            Set Rs = New Recordset
'            Rs.Open "select d.SUPCD,d.BRKCD,b.slname""Supplier"",C.SLNAME""Broker"" from fa_slmas b,fa_slmas c,rm_lot d where D.supcd=b.slcode and d.brkcd*=c.slcode AND D.LOTDT='" & Format(rs2(2), "YYYY-MM-DD") & "' AND D.LOTNO=" & rs2(0) & " AND D.CATCD='" & rs2(1) & "' and divcode='" & Divcode & "'" & _
'                     "and d.supcd between '" & FSupp & "' AND '" & TSupp & "'", Cnn, adOpenStatic
      
      Rs.Open "select d.SUPCD,d.BRKCD,b.slname""Supplier"",C.SLNAME""Broker"" from rm_lot d inner join  fa_slmas b on D.supcd=b.slcode  left  join fa_slmas c on d.brkcd=c.slcode where  D.LOTDT='" & Format(rs2(2), "YYYY-MM-DD") & "' AND D.LOTNO=" & rs2(0) & " AND D.CATCD='" & rs2(1) & "' and divcode='" & Divcode & "'" & _
                     "and d.supcd between '" & FSupp & "' AND '" & TSupp & "'", Cnn, adOpenStatic

'            Print #a, Space(5) + Padr((CStr(rs("SUPCD"))), 7, " ") + Space(3) + Padr(rs("Supplier"), 36, " ") + Padr(rs("Broker"), 40, " ")
            If Not Rs.EOF Then Print #a, Space(5) + Padr(Rs("Supplier"), 50, " ") + Padr(Rs("Broker"), 40, " ");
            Do While Not Rs.EOF
                Set rs1 = New Recordset
                'rs1.Open "SELECT LOTNO,AREANAME,z.varname as varcode,lotdt,bales,unit=(case when bbLflg='B' then 'Bales' ELSE 'Borah'end),netwt,(ratekg*355.61) as ratecy,(ratekg*355.61) * 100 'Rate/Quintal',(ratekg*netwt) as value from rm_lot A,RM_AREA B,rm_var z where LOTdt between '" & Format(rs2(2), "YYYY-MM-DD") & "' and '" & Format(rs2(2), "YYYY-MM-DD") & "' and supcd ='" & rs(0) & "' AND LOTTYPE='T' and a.areacd=b.areacode and a.varcode=z.varcode", DB, adOpenStatic
                rs1.Open "SELECT LOTNO,lotdt,bales,unit=(case when bbLflg='B' then 'Bales' ELSE 'Borah'end),round(netwt,2),(round(ratekg*355.6187,0)) as ratecy,round(ratekg,2) 'Rate/Quintal',TotlandCost as value,AREACD,VARCODE ,NETWT,billno from rm_lot A where LOTdt between '" & Format(rs2(2), "YYYY-MM-DD") & "' and '" & Format(rs2(2), "YYYY-MM-DD") & "' and supcd ='" & Rs(0) & "' AND LOTTYPE='T' and divcode='" & Divcode & "' and LOTNO=" & rs2(0) & " AND CATCD='" & rs2(1) & "'", DB, adOpenStatic
                Do While Not rs1.EOF
                    Set AREAREC = New Recordset
                    AREAREC.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rs1("AREACD") & "'", DB, adOpenStatic
                    If AREAREC.RecordCount > 0 Then
                        areaname = AREAREC(0)
                    Else
                        areaname = ""
                    End If
                    Print #a, Space(2) + Padr((areaname), 36, " ")
                    Set VARREC = New Recordset
                    VARREC.Open "SELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rs1("VARCODE") & "'", DB, adOpenStatic
                    If VARREC.RecordCount > 0 Then
                        VARIETYNAME = VARREC(0)
                    Else
                        VARIETYNAME = ""
                    End If
                    Print #a, Space(0) + Padl(rs1("LOTNO"), 8, " ") & Space(41) & Padr(VARIETYNAME, 20, " ") + Padr(Format(rs1("LOTDT"), "dd/MM/YY"), 10, " ") & Space(2) & Padr(rs1("BIllno"), 8, " "); Space(2) + Padl(rs1("BALES"), 10, " "); Space(9) + Padr(rs1("unit"), 5, " ") + Padl(INF(rs1("NETWT"), 2), 19, " ") + Padl(INF(rs1("ratecy"), 0), 24, " ") + Space(5) + Padl(INF(rs1("Rate/Quintal"), 2), 19, " ") + Padl(INF(rs1("value"), 2), 21, " ")
                    Print #a,
                     totbal = totbal + rs1("BALES")
                     totnet = totnet + rs1("NETWT")
                     totVal = totVal + rs1("value")
                     Tqty = Tqty + rs1("bales")
                     Tnetwt = Tnetwt + rs1("NETWT")
                     Tvalue = Tvalue + rs1("value")
                    rs1.MoveNext
                Loop
            Rs.MoveNext
        Loop
    rs2.MoveNext
Loop
If TTYPE = "A" Then
    Print #a,
    Print #a, Space(63) + " ** Transfer Total **" + Padl(INF(Tqty, 0), 17, " ") + Space(17) + Padl(INF(Tnetwt, 2), 16, " "); Space(53); Padl(INF(Tvalue, 2), 16, " ")
    Print #a,
End If
Print #a, Space(5) + String(198, "-")
Print #a, Space(66) + " ** Grand Total **" + Padl(INF(totbal, 0), 17, " ") + Space(17) + Padl(INF(totnet, 2), 16, " "); Space(53); Padl(INF(totVal, 2), 16, " ")
'Print #a,
Print #a, Space(5) + String(198, "-")
Print #a, Chr(18)
Print #a, Chr(12)
 Call footermod(CInt(a), footerstr, 85)
Close #a
a = FreeFile
Call KALBATPROCESS("reci")
'Open "C:\reci.bat" For Output As #A
'Print #A, "cd\"
'Print #A, "C:"
'Print #A, "cd\"
'Print #A, "type reci.txt>prn"
'Close #A
'RPTV.txtfile = "C:\reci.txt"
'RPTV.Batfile = "C:\reci.bat"
Screen.MousePointer = 0
End Sub
Public Sub TransferHeader(pg1 As Integer, co As Integer, U As String, V As String, W As String, divname As String, TTYPE As String)
          Print #a, Chr(18)
          co = co + 1
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
          co = co + 1
          Print #a,
          co = co + 1
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Supplierwise Transfer Receipt List " + Chr(27) + "F" + "from" & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy") & Space(10) & Padr(Mid$(W, InStr(1, W, "-") + 1, Len(W)), 38, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          co = co + 1
          Print #a, Space(5) + String(198, "-")
          Print #a, Space(5) + Padr("TransferType", 25, " ")
          co = co + 1
          Print #a, Space(5) + "Code      Supplier Name                           Broker Name                               Area Name                             "
          co = co + 1
          Print #a, Space(5) + "Mill Lot                                    Variety             Received    Bill No.         Qty         Unit          Net Weight              Rate/Candy                 Rate/Kg                Value                       "
          co = co + 1
          Print #a, Space(5) + "Number                                                              Date"
          co = co + 1
          Print #a, Space(5) + String(198, "-")
          co = co + 1
End Sub

Public Sub TransferReportNEW(U As String, V As String, W As String, divname As String, TTYPE As String, footerstr As String, B As String)
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim VARREC As Recordset
Dim AREAREC As Recordset
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double

Dim Tqty As Double
Dim Tnetwt As Double
Dim Tvalue As Double

Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs2 = New Recordset
If TTYPE = "A" And B = "A" Then
    rs2.Open "Select lotno,catcd,LOTDT,isnull(transfertype,'BT')TransferType,ISSUE_DESC from rm_lot A,RM_ISSUETYPE B where a.transfertype=b.issue_code AND B.ISSTYPE in ('T','J') AND lottype='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ORDER BY ISSUE_DESC,LOTDT  ", Cnn, adOpenStatic
End If
If TTYPE <> "A" And B <> "A" Then
    rs2.Open "Select lotno,catcd,LOTDT,isnull(transfertype,'BT')TransferType,ISSUE_DESC from rm_lot a,rm_issuetype b where a.transfertype=b.issue_code and b.isstype in ('T','J') and a.transfertype='" & TTYPE & "' and a.CatCd='" & B & "' AND lottype='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  ORDER BY ISSUE_DESC,LOTDT", Cnn, adOpenStatic
    End If
    If TTYPE = "A" And B <> "A" Then
    rs2.Open "Select lotno,catcd,LOTDT,isnull(transfertype,'BT')TransferType,ISSUE_DESC from rm_lot a,rm_issuetype b where a.transfertype=b.issue_code and b.isstype in ('T','J') and a.CatCd='" & B & "' AND lottype='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  ORDER BY ISSUE_DESC,LOTDT", Cnn, adOpenStatic
    End If
    If TTYPE <> "A" And B = "A" Then
    rs2.Open "Select lotno,catcd,LOTDT,isnull(transfertype,'BT')TransferType,ISSUE_DESC from rm_lot a,rm_issuetype b where a.transfertype=b.issue_code and b.isstype in ('T','J') and a.transfertype='" & TTYPE & "' AND lottype='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  ORDER BY ISSUE_DESC,LOTDT", Cnn, adOpenStatic
    End If
If rs2.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Set rptv = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\reci.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
co = co + 1
Call TransferHeader(pg1, co, U, V, W, divname, TTYPE)
totbal = 0
totbora = 0
totnet = 0
totVal = 0
Tqty = 0
Tnetwt = 0
Tvalue = 0
    rs2.MoveFirst
        TransType = ""
        
        Do While Not rs2.EOF
            If TransType <> rs2("TRANSFERTYPE") Then
                
                If TransType <> "" And TTYPE = "A" Then
                    Print #a,
                    Print #a, Space(63) + " ** Transfer Total **" + Padl(INF(Tqty, 0), 17, " ") + Space(17) + Padl(INF(Tnetwt, 2), 16, " "); Space(53); Padl(INF(Tvalue, 2), 16, " ")
                    Print #a,
                    Tqty = 0
                    Tnetwt = 0
                    Tvalue = 0
                    co = co + 3
                End If
                Print #a, Space(5) + Chr(27) + "E" + rs2("issue_desc") + Chr(27) + "F"
                co = co + 1
            End If
            TransType = rs2("TRANSFERTYPE")
            
            Set Rs = New Recordset
            Rs.Open "select d.SUPCD,d.BRKCD,b.slname""Supplier"",C.SLNAME""Broker"" from fa_slmas b,fa_slmas c,rm_lot d where D.supcd=b.slcode and d.brkcd*=c.slcode AND D.LOTDT='" & Format(rs2(2), "YYYY-MM-DD") & "' AND D.LOTNO=" & rs2(0) & " AND D.CATCD='" & rs2(1) & "' and divcode='" & Divcode & "'" & _
                     "", Cnn, adOpenStatic
'            Print #a, Space(5) + Padr((CStr(rs("SUPCD"))), 7, " ") + Space(3) + Padr(rs("Supplier"), 36, " ") + Padr(rs("Broker"), 40, " ")
            If Not Rs.EOF Then Print #a, Space(5) + Padr(Rs("Supplier"), 50, " ") + Padr(Rs("Broker"), 40, " ");
            Do While Not Rs.EOF
                Set rs1 = New Recordset
                'rs1.Open "SELECT LOTNO,AREANAME,z.varname as varcode,lotdt,bales,unit=(case when bbLflg='B' then 'Bales' ELSE 'Borah'end),netwt,(ratekg*355.61) as ratecy,(ratekg*355.61) * 100 'Rate/Quintal',(ratekg*netwt) as value from rm_lot A,RM_AREA B,rm_var z where LOTdt between '" & Format(rs2(2), "YYYY-MM-DD") & "' and '" & Format(rs2(2), "YYYY-MM-DD") & "' and supcd ='" & rs(0) & "' AND LOTTYPE='T' and a.areacd=b.areacode and a.varcode=z.varcode", DB, adOpenStatic
                rs1.Open "SELECT LOTNO,lotdt,bales,unit=(case when bbLflg='B' then 'Bales' ELSE 'Borah'end),round(netwt,2),(round(ratekg*355.6187,0)) as ratecy,round(ratekg,2) 'Rate/Quintal',TotlandCost as value,AREACD,VARCODE ,NETWT,billno from rm_lot A where LOTdt between '" & Format(rs2(2), "YYYY-MM-DD") & "' and '" & Format(rs2(2), "YYYY-MM-DD") & "' and supcd ='" & Rs(0) & "' AND LOTTYPE='T' and divcode='" & Divcode & "' and LOTNO=" & rs2(0) & " AND CATCD='" & rs2(1) & "'", DB, adOpenStatic
                Do While Not rs1.EOF
                    Set AREAREC = New Recordset
                    AREAREC.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rs1("AREACD") & "'", DB, adOpenStatic
                    If AREAREC.RecordCount > 0 Then
                        areaname = AREAREC(0)
                    Else
                        areaname = ""
                    End If
                    Print #a, Space(2) + Padr((areaname), 36, " ")
                    Set VARREC = New Recordset
                    VARREC.Open "SELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rs1("VARCODE") & "'", DB, adOpenStatic
                    If VARREC.RecordCount > 0 Then
                        VARIETYNAME = VARREC(0)
                    Else
                        VARIETYNAME = ""
                    End If
                    Print #a, Space(0) + Padl(rs1("LOTNO"), 8, " ") & Space(41) & Padr(VARIETYNAME, 20, " ") + Padr(Format(rs1("LOTDT"), "dd/MM/YY"), 10, " ") & Space(2) & Padr(rs1("BIllno"), 8, " "); Space(2) + Padl(rs1("BALES"), 10, " "); Space(9) + Padr(rs1("unit"), 5, " ") + Padl(INF(rs1("NETWT"), 2), 19, " ") + Padl(INF(rs1("ratecy"), 0), 24, " ") + Space(5) + Padl(INF(rs1("Rate/Quintal"), 2), 19, " ") + Padl(INF(rs1("value"), 2), 21, " ")
                    Print #a,
                     totbal = totbal + rs1("BALES")
                     totnet = totnet + rs1("NETWT")
                     totVal = totVal + rs1("value")
                     Tqty = Tqty + rs1("bales")
                     Tnetwt = Tnetwt + rs1("NETWT")
                     Tvalue = Tvalue + rs1("value")
                    rs1.MoveNext
                Loop
            Rs.MoveNext
        Loop
    rs2.MoveNext
Loop
If TTYPE = "A" Then
    Print #a,
    Print #a, Space(63) + " ** Transfer Total **" + Padl(INF(Tqty, 0), 17, " ") + Space(17) + Padl(INF(Tnetwt, 2), 16, " "); Space(53); Padl(INF(Tvalue, 2), 16, " ")
    Print #a,
End If
Print #a, Space(5) + String(198, "-")
Print #a, Space(66) + " ** Grand Total **" + Padl(INF(totbal, 0), 17, " ") + Space(17) + Padl(INF(totnet, 2), 16, " "); Space(53); Padl(INF(totVal, 2), 16, " ")
'Print #a,
Print #a, Space(5) + String(198, "-")
Print #a, Chr(18)
Print #a, Chr(12)
 Call footermod(CInt(a), footerstr, 85)
Close #a
a = FreeFile
Call KALBATPROCESS("reci")
'Open "C:\reci.bat" For Output As #A
'Print #A, "cd\"
'Print #A, "C:"
'Print #A, "cd\"
'Print #A, "type reci.txt>prn"
'Close #A
'RPTV.txtfile = "C:\reci.txt"
'RPTV.Batfile = "C:\reci.bat"
Screen.MousePointer = 0
End Sub

