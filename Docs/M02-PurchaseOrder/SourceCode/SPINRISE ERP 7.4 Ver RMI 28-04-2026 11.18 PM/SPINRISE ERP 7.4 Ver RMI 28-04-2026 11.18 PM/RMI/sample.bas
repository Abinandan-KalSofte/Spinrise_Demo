Attribute VB_Name = "sample"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim e As Double
Dim a As Integer
Dim Co As Integer
Dim DIVNAME As String
Dim aa(10) As Variant
Dim bb As Double
Dim cnn As Connection
Public Sub enjoyy(From_Date As String, To_Date As String, DIVNAME As String, supp As String, From_Lotno As String, To_Lotno As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim TEMP As New Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim transname As String
Dim purchmode As String
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim rateperkg As Double
Dim cotval As Double
Dim pcotval As Double
Dim pnetvalue As Double
Dim netvalue As Double
Dim totalvalue As Double
Dim partybill As Double
Dim diff As Double
Dim diffwt As Double
Dim head As String
Dim S As String
Dim r As String
Dim RsGin As Recordset
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
PageLen = 56
Set rs1 = New Recordset
cnn.Open connectstring

Set RPTV = New Report.ReportView
a = FreeFile
Close

    'Open "C:\recpt_reg_dt.TXT" For Output As #a
    Open KALFOLDERDATA & "\recpt_reg_dt.TXT" For Output As #a
    pg1 = 1
    Co = 0
    totalvalue = 0

    Set rs4 = New Recordset
    rs4.Open "select * from sysobjects where name ='ACH'", db, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        db.Execute "drop table ach"
    End If
    db.Execute "create table ACH (b1 numeric(5,0),g1 numeric(10,3),b2 numeric(5,0),g2 numeric(10,3),b3 numeric(5,0),g3 numeric(10,3),b4 numeric(5,0),g4 numeric(10,3),b5 numeric(5,0),g5 numeric(10,3),b6 numeric(5,0),g6 numeric(10,3),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(5,0),sno numeric(6))"
    Set rs1 = New Recordset
    rs1.Open " select DISTINCT d.slname as broker,b.catcd,B.lotno,b.pjno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,b.freght,a.plotno,a.plotdt,a.brkcd,a.areacode,a.varcode,a.cntcode,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.pjamt,b.billno,b.billdt,b.ldgulg,b.ptywgt,b.insamt,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost,c.dlytype,a.carcode,ISNULL(GRosSWT,0) AS PGRSWT,ISNULL(B.GRSWgT,0) AS FGROSSWT,ISNULL(B.TAREWT,0) AS FTAREWT,ISNULL(B.NETWT,0) AS FNETWT,b.lotdt,0 as pono,0 as podt,b.ratekg*355.6187 as ratecandy,B.lotDT,a.carcode,a.freight,b.taxamt,a.contno ,ISNULL(b.totlandcost,0) from  rm_arrival a,rm_lot b,rm_cont c,fa_slmas d where b.brkcd=d.slcode " & _
               "  and a.arrno=b.arrno " & _
                 " and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
                 " and b.lottype='A' and a.contno=c.contno and a.contdt=c.contdt and opflg<>'Y' order by a.lotno", cnn, adOpenDynamic, adLockOptimistic
    If rs1.RecordCount = 0 Then
        MsgBox "No Records Found For this Period", vbInformation, head
        db.Execute "drop table ACH"
        Close #a
        Exit Sub
    End If
    rs1.MoveFirst
    Print #a,

    Do While Not rs1.EOF
    If Co > PageLen Then
        Print #a,
        Print #a, Chr(12)
        Co = 0
        pg1 = pg1 + 1
        
        
    End If
   ' Print #A,
    Print #a, Chr(18)
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
    Print #a,
    '----
        Set Rs = New Recordset
        Rs.Open "select ADD1,ADD2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST  from pp_divmas where divcode ='" & Divcode & "'", db, adOpenStatic
         Set rs3 = New Recordset
         rs3.Open "select slname from fa_slmas  where slcode='" & rs1("SUPCD") & "'", Cn, adOpenDynamic, adLockOptimistic
         Print #a, Space(50) & Chr(14) + "LOT NO : " + CStr(rs1("LOTNO")) '+ "/" + CStr(RS1("lotyear"))
         Print #a,
         head = Chr(14) + Chr(27) + "E" + rs3!Slname + Chr(27) + "F"
        ' Print #A, Chr(27) + "E" + CENTRE(rs3!slname, 85, " ") + Chr(27) + "F" + Chr(27) & Chr(205) & Chr(27) & Chr(77)
        Print #a, CENTRE(head, 85, " ") + Chr(27) & Chr(205) & Chr(27) & Chr(77)
         suppliern = rs3!Slname
         Print #a,
         Co = Co + 7
        If Co > PageLen Then
           Print #a,
            Print #a, Chr(12)
            Co = 0
            pg1 = pg1 + 1
        End If
        Set rs4 = New Recordset
        If IsNull(rs1!carcode) Then
            transname = Space(20)
        Else
            rs4.Open "select distinct carname from po_car where carcode='" & rs1!carcode & "'", cnn, adOpenDynamic, adLockOptimistic
            If Not rs4.EOF Then transname = Padr(rs4!carname, 20, " ")
        End If
        
        Set rs5 = New Recordset
        rs5.Open "select distinct dlytype from rm_cont where contno='" & rs1!contno & "'", Cn, adOpenStatic, adLockBatchOptimistic
        If rs5!dlytype = "M" Then
            purchmode = "FOR"
        ElseIf rs5!dlytype = "S" Then
            purchmode = "Stock"
        ElseIf rs5!dlytype = Null Or rs5!dlytype = " " Then
            purchmode = Space(15)
        End If
        
        Set rs3 = New Recordset
        rs3.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rs1("AREACODE") & "'", Cn, adOpenDynamic, adLockOptimistic
        Print #a, Space(5) + "Variety   :" + Space(1) + Padr(rs1("VARCODE"), 20, " ") + Space(12); "   Received Date         : " + Padr(rs1!arrdate, 12, " ")
        Print #a, Space(5) + "Bales     :" + Space(1) + Padr(INF(rs1("QUANTITY"), 0), 10, " ") + Space(12); "             Date Of Weightment    : " + Padr(rs1!LOTDT, 12, " ")
        Print #a, Space(5) + "P.lot No  :" + Space(1) + Padr(rs1("plotno"), 20, " ") + Space(15) + "Prov.No.              : " + Padr(rs1("billno"), 15, " ")
        
        'Print #A, Space(5) + "P.lot No  :" + Space(1) + Padr(RS1("plotno"), 20, " ") + Space(15) + Chr(14) + "Candy Rate            : " + Padr(INF(RS1("ratecy"), 2), 20, " ") + Chr(27) & Chr(205) & Chr(27) & Chr(77)
        ' Space(48); "Mill Lot. No. & Dt  :"; Padr(RS1("lotno") & Space(1) & "&" & Space(1) & RS1("lotdt"), 30, " ")
        Print #a, Space(5) + "P.R. No   :" + Space(1) + Padr(rs1("prno"), 20, " ") + Space(12); "   Lorry No              : " + Padr(rs1("lorrynos"), 20, " ") 'Space(10); Space(47); "        Press Mark     :"; Padr(rs1("prmark"), 20, " ")
        Print #a, Space(5) + "P.M. No   :" + Space(1) + Padr(rs1("prmark"), 20, " ") + Space(12) + "   P.O.No.               : " + Padr(rs1!contno, 15, " ")
        Print #a, Space(5) + "Mode-Purc :" + Space(1) + Padr(purchmode, 15, " ") + Space(5) + Chr(14) + "Candy Rate  : " + Padr(INF(rs1("ratecy"), 0), 20, " ") + Chr(27) & Chr(205) & Chr(27) & Chr(77)
        
        
        Print #a, Space(5) & "F.Inv.No  :" & Space(1) & Padr(rs1("BILLNO"), 15, " ") & IIf(IsNull(rs1("BILLDT")), "", rs1("BILLDT")) & Space(2) & "Broker : " & Padr(rs1("broker"), 20, " ") & Space(1) & "Station: " & rs3(0)
'       Fetch the Ginning Head
        Set RsGin = New Recordset
        
        RsGin.Open "SELECT GHead FROM Rm_Ginning WHERE Gcode = " & IIf(IsNull(val(rs1("Gcno"))), 0, val(rs1("Gcno"))) & "", Cn, adOpenStatic
              
        Print #a, Space(5) + "Lorry Frt :" + Space(1) + Padr(INF(rs1!Freight, 2), 8, " ") + Space(1) + "Trans.Name :" + transname;
        If RsGin.RecordCount > 0 Then
            Print #a, " Press Name :" + Padr(RsGin(0), 25, " ") + Chr(18)
        Else
            Print #a, " " & Chr(18)
        End If

        '+ " Press Name :" + Padr(supplier, 25, " ") + Chr(18)
    '============================
    Co = Co + 8
    gr = 0
    Sno = 0
    i = 0
    Set RS2 = New Recordset
    RS2.Open "SELECT distinct grwt,tarewt,netwt,0 as pbaleno,0 as pnetwt,baleno,0 as pGRwt FROM RM_BALE WHERE LOTDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " order by baleno", cnn, adOpenDynamic, adLockOptimistic
    Count = RS2.RecordCount + 1
    If RS2.RecordCount = 0 Then
        Exit Sub
    End If
    e = RS2.RecordCount
    RS2.MoveFirst
    Do While Not RS2.EOF
    Sno = Sno + 1
    gr = gr + 1
    If gr <= 10 Then
        db.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,lottype,catcd,lotno,sno) values (" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & "," & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,'A','" & rs1("catcd") & "'," & rs1("lotno") & "," & Sno & ")"
    End If
    If gr > 10 And gr <= 20 Then
    i = (Sno - 10)
        db.Execute "update ACH set b2=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g2=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & i & "" ', A
       If gr = 60 Then
        gr = 0
       End If
    End If
    If gr > 20 And gr <= 30 Then
    i = (Sno - 20)
        db.Execute "update ACH set b3=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g3=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & i & "" ', A
       If gr = 60 Then
        gr = 0
       End If
    End If
     If gr > 30 And gr <= 40 Then
    i = (Sno - 30)
        db.Execute "update ACH set b4=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g4=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & i & "" ', A
       If gr = 60 Then
        gr = 0
       End If
    End If
     If gr > 40 And gr <= 50 Then
    i = (Sno - 40)
        
        db.Execute "update ACH set b5=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g5=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & i & "" ', A
       If gr = 60 Then
        gr = 0
       End If
    End If
     If gr > 50 And gr <= 60 Then
    i = (Sno - 50)
        db.Execute "update ACH set b6=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g6=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & i & "" ', A
       If gr = 60 Then
        gr = 0
       End If
    End If
    RS2.MoveNext
    Loop
    pgtot1 = 0
    pgtot2 = 0
    pgtot3 = 0
    pgtot4 = 0
    pgtot5 = 0
    pgtot6 = 0
    b = 0
    Set RS2 = New Recordset
    RS2.Open "SELECT  b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,SNO FROM ACH WHERE lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " ORDER BY sno", cnn, adOpenDynamic, adLockOptimistic
    
    Call Detailed_Receipt_Header(pg1, e)
    pgtot1 = 0
    tot1 = 0
    pgtot2 = 0
    tot2 = 0
    Co = Co + 4
    rec = 0
    RS2.MoveFirst
    Do While Not RS2.EOF
        If RS2!Sno = 61 Then
          Print #a, Space(3) + Chr(192) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + _
          String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(217)
          
          Print #a, Space(7) + Padl(INF(pgtot1, 3), 12, " ") + Space(3) + Padl(INF(pgtot2, 3), 12, " "); Space(3) + Padl(INF(pgtot3, 3), 12, " ") + Space(3) + Padl(INF(pgtot4, 3), 12, " ") + Space(3) + Padl(INF(pgtot5, 3), 12, " ") + Space(3) + Padl(INF(pgtot6, 3), 12, " ")
          
          Print #a, Space(4) + Chr(218) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + _
          String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(191)
    
            pgtot1 = 0
            pgtot2 = 0
            pgtot3 = 0
            pgtot4 = 0
            pgtot5 = 0
            pgtot6 = 0
            Co = Co + 3
        End If
        Print #a, Space(3) + Chr(179) + Padl((CStr(RS2(0))), 3, " ") + Space(1) + Chr(179) + Padl(INF(RS2(1), 3), 9, " ") + Chr(179) + Padl((CStr(RS2(2))), 3, " ") + Space(1) + Chr(179) + Padl(INF(RS2(3), 3), 9, " ") + Chr(179) + Padl((CStr(RS2(4))), 3, " ") + Space(1) + Chr(179) + Padl(INF(RS2(5), 3), 9, " ") + Chr(179) + Padl((CStr(RS2(6))), 3, " ") + Space(1) + Chr(179) + Padl(INF(RS2(7), 3), 9, " ") + Chr(179) + Padl((CStr(RS2(8))), 3, " ") + Space(1) + Chr(179) + Padl(INF(RS2(9), 3), 9, " ") + Chr(179) + Padl(RS2(10), 3, " ") + Space(1) + Chr(179) + Padl(INF(RS2(11), 3), 9, " ") + Chr(179)
        pgtot1 = pgtot1 + IIf(IsNull(RS2(1)), 0, RS2(1))
        pgtot2 = pgtot2 + IIf(IsNull(RS2(3)), 0, RS2(3))
        pgtot3 = pgtot3 + IIf(IsNull(RS2(5)), 0, RS2(5))
        pgtot4 = pgtot4 + IIf(IsNull(RS2(7)), 0, RS2(7))
        pgtot5 = pgtot5 + IIf(IsNull(RS2(9)), 0, RS2(9))
        pgtot6 = pgtot6 + IIf(IsNull(RS2(11)), 0, RS2(11))
        Co = Co + 1
        rec = rec + 1
    RS2.MoveNext
    Loop
   b = 0
   '*********************************
           Print #a, Space(4) + Chr(192) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + _
           String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(217)
           
           Print #a, Space(7) + Padl(INF(pgtot1, 3), 12, " ") + Space(3) + Padl(INF(pgtot2, 3), 12, " "); Space(3) + Padl(INF(pgtot3, 3), 12, " ") + Space(3) + Padl(INF(pgtot4, 3), 12, " ") + Space(3) + Padl(INF(pgtot5, 3), 12, " ") + Space(3) + Padl(INF(pgtot6, 3), 12, " ")
           Print #a,
          ' Print #A, Space(4) + Chr(218) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + _
           'String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(191)
    
          
            Co = Co + 3
    Set rss = New Recordset
    rss.Open "SELECT netwt from rm_arrival WHERE lotno=" & rs1("lotno") & " ", cnn, adOpenDynamic, adLockOptimistic
    bb = (rs1("NETWT") - rss(0))
    '--  Rate per Quintal = (candyrate / 355.6187) * 100
    '--  Rate per KG      = candyrate / 355.6187
    '--  Cotton Value     = Net Weight * Rate per KG
    
    rateperkg = rs1("ratecy") / 3.556187
    cotval = (rs1!netwt * rateperkg) / 100
    netvalue = cotval + rs1!Taxamt + rs1!ldgulg
    partybill = 0
    diffwt = 0
    diff = 0
   ' diff = netvalue - partybill
    pcotval = (rs1!netwt * rateperkg) / 100
    pnetvalue = pcotval + rs1!Taxamt + rs1!ldgulg
    diff = Round(netvalue - pnetvalue, 2)
    diffwt = Abs(rs1("netwt") - rs1("netwt"))
   
    If Co >= PageLen Then
        Print #a, Chr(12)
        pg1 = pg1 + 1
    End If
    'Print #A,
    'IIf(IsNull(rs2("baleno")), 0, rs2("baleno"))
    Set rsa = New Recordset
    rsa.Open "SELECT ISNULL(totlandcost,0) AS FBILLVALUE FROM RM_LOT WHERE LOTNO='" & rs1("LOTNO") & "' AND LOTDT='" & Format(rs1("LOTDT"), "YYYY-MM-DD") & "' AND LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", db
    If rsa.EOF = False Then
       If rsa("FBILLVALUE") <> 0 Then
            'totalvalue = rsa("FBILLVALUE") - RS1("DBAMT")
            totalvalue = rsa("FBILLVALUE")
       Else
            totalvalue = IIf(IsNull(rs1("freght")), 0, rs1("freght")) + rs1("pjamt") + rs1("taxamt")
       End If
    Else
        totalvalue = IIf(IsNull(rs1("freght")), 0, rs1("freght")) + rs1("pjamt") + rs1("taxamt")
    End If
    Print #a, Space(3) + "Gross Weight   :"; Padl(INF(rs1("GROSSWT"), 3), 15, " ") + Space(10) + "Rate/Qtl      : "; Padl(INF(rateperkg, 2), 13, " ")
    Print #a, Space(3) + "Tare Weight    :"; Padl(INF(rs1("TAREWT"), 3), 15, " ") + Space(10) + "Cotton Value  : "; Padl(INF(rs1("pjamt"), 2), 13, " ")
    
    'Print #A, Space(3) + "Tare Weight   : "; Padl(INF(RS1("TAREWT"), 3), 15, " ") + Space(10) + "Cotton Value  : "; Padl(INF(cotval, 2), 13, " ")
 '   If RS1("moiture") = 0 Then
    Print #a, Space(44) + "Tax Amount    : " + Padl(INF(rs1!Taxamt, 2), 13, " ") + Space(6) + IIf(0, "Debit Amount:  ", "Credit Amount:  "); Padr(INF(0, 2), 15, "")
  '  Else
  '  Print #a, Space(3) + "Moisture Weight:"; Padl(INF(RS1("moiture"), 3), 15, " ") + Space(10) + "Tax Amount    : " + Padl(INF(RS1!taxamt, 2), 13, " ") + Space(6) + IIf(RS1("dbamt") > 0, "Debit Amount:  ", "Credit Amount:  "); Padr(INF(RS1("dbamt"), 2), 15, "")
  '  End If
    
    Print #a, Space(3); "Net Weight    : "; Padl(INF(rs1("NETWT"), 3), 15, " "); Space(10) + "Lorry Freight : " + Padl(INF(rs1("freght"), 2), 13, " ") + "->Total Value : " + Padl(INF(totalvalue, 2), 13, " ")
    
    'Print #A, Space(3); Chr(27); "E" + "Net Weight    : "; Padl(INF(RS1("NETWT"), 3), 15, " "); Chr(27) + "F" + Space(10) + "Lorry Freight : " + Padl("0.00", 13, " ") + "->Total Value : " + Padl(INF(RS1("pjamt"), 2), 13, " ")
    
    Print #a, Space(44) + "Purchase Tax  : "
    If rs1("FGROSSWT") <> 0 And rs1("FNETWT") <> 0 Or rs1("FTAREWT") <> 0 Then
       Print #a, Space(3) + "Party's Gross : " + Padl(INF(rs1("FGROSSWT"), 3), 15, " ") + Space(10) + "Other Exp     : " + Padl(INF(rs1!ldgulg, 2), 13, " ")
       Print #a, Space(3) + "Tare Weight   : " + Padl(INF(rs1("FTAREWT"), 3), 15, " ") + Space(10) + "Net Value     : " + Padl(INF(rs1("totlandcost"), 2), 13, " ")
       Print #a,
       
       diffwt = Abs(rs1("netwt") - rs1("FNETWT"))
       diff = Round(Format(totalvalue, "0.00") - Format(rsa("fbillvalue"), "0.00"), 2)
       
       Print #a, Space(3) + "Net Weight    : " + Padl(INF(rs1("FNETWT"), 2), 15, " ") + "(Diff : " + Padl(INF(diffwt, 3), 8, " ") + ")" + " Party Bill Value : " + Padl(INF(rsa("fbillvalue"), 2), 13, " ") '+ "(Diff : " + Padr(INF(RS1("dbamt"), 2), 11, " ") + ")"
       'Print #a, Space(3) + "Net Weight    : " + Padl(INF(RS1("FNETWT"), 2), 15, " ") + "(Diff : " + Padl(INF(diffwt, 3), 8, " ") + ")" + " Party Bill Value : " + Padl(INF(totalvalue, 2), 13, " ") + "(Diff : " + Padl(INF(diff, 2), 11, " ") + ")"

    Else
        Print #a, Space(3) + "Party's Gross : " + Padl(INF(rs1("PGRSWT"), 3), 15, " ") + Space(10) + "Other Exp     : " + Padl(INF(rs1!ldgulg, 2), 13, " ")
        Print #a, Space(3) + "Tare Weight   : " + Padl(INF(rs1("PTAREWT"), 3), 15, " ") + Space(10) + "Net Value     : " + Padl(INF(rs1("totlandcost"), 2), 13, " ")
        Print #a,
        Print #a, Space(3) + "Net Weight    : " + Padl(INF(rs1("PNETWT"), 2), 15, " ") + "(Diff : " + Padl(INF(diffwt, 3), 8, " ") + ")" + " Party Bill Value : " + Padl(INF(pnetvalue, 2), 13, " ") + "(Diff : " + Padl(INF(diff, 2), 11, " ") + ")"
    End If
    
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a, Chr(27) & "E" & Space(20) + "Prepared                       Checked                       F.M." & Chr(27) & "F"
    Co = Co + 12
    tot1 = 0
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    tot6 = 0
   '===============================
    If Co >= PageLen Then
        Print #a, Chr(12)
    Else
        Print #a,
    End If
    rs1.MoveNext
        'Print #a, Chr(12)
        pg1 = pg1 + 1

Loop
db.Execute "drop table ACH"

Print #a, Chr(18)
Close #a

a = FreeFile
'Open "c:\recpt_reg_dt.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type recpt_reg_dt.txt>prn"
'Close #a
'RPTV.txtfile = "c:\recpt_reg_dt.txt"
'RPTV.Batfile = "c:\recpt_reg_dt.bat"
Call KALBATPROCESS("recpt_reg_dt")

End Sub
Public Sub Detailed_Receipt_Header(pg1 As Integer, e As Double) ', co As Integer, u As String, v As String)
          If e > 30 Then
          Print #a,
          Print #a, Space(20) + String(43, "-") + Space(8) + String(43, "-")
          Print #a, Space(20) + "Bale No     Gross Wt     Tare Wt     Net Wt        Bale No     Gross Wt     Tare Wt     Net Wt"
          Print #a, Space(20) + String(43, "-") + Space(8) + String(43, "-")
          Else
          Print #a, Space(20) + String(43, "-")
          Print #a, Space(20) + "Bale No     Gross Wt     Tare Wt     Net Wt"
          Print #a, Space(20) + String(43, "-")
          End If
End Sub
Public Sub enjoy1(From_Date As String, To_Date As String, DIVNAME As String, supp As String, From_Lotno As String, To_Lotno As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim TEMP As New Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim S As String
Dim r As String
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
PageLen = 63
Set rs1 = New Recordset
cnn.Open connectstring


Set RPTV = New Report.ReportView
a = FreeFile
Close
'Open "C:\recpt_reg_dt.TXT" For Output As #a
Open KALFOLDERDATA & "\recpt_reg_dt.TXT" For Output As #a
pg1 = 1
Co = 0
Set rs4 = New Recordset
rs4.Open "select * from sysobjects where name ='ACH'", db, adOpenStatic, adLockBatchOptimistic
If rs4.RecordCount > 0 Then
    db.Execute "drop table ach"
End If
db.Execute "create table ACH (b1 numeric(5,0),g1 numeric(10,3),t1 numeric(9,3),n1 numeric(10,3),b2 numeric(5,0),g2 numeric(10,3),t2 numeric(9,3),n2 numeric(10,3),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(5,0),sno numeric(6))"

Set rs1 = New Recordset
        
rs1.Open "select DISTINCT a.catcd,B.lotno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,a.freight,a.plotno,a.plotdt,a.brkcd,a.areacode,a.varcode,a.cntcode,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.pjamt,b.billno,b.billdt,b.ptywgt,b.insamt,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost,c.dlytype,a.carcode,0 as PNETWT,0 as PGRSWT,0 as PTAREWT,b.lotdt,0 as pono,0 as podt,b.ratekg*355.6187 as ratecandy,B.lotDT from rm_arrival a,rm_lot b,rm_cont c where a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
        "and b.supcd='" & supp & "' and b.lottype='A' and a.contno=c.contno and a.contdt=c.contdt", cnn, adOpenDynamic, adLockOptimistic
        
        
If rs1.RecordCount = 0 Then
    MsgBox "No Records Found For this Period", vbInformation, head
     db.Execute "drop table ACH"
    Close #a
    Exit Sub
End If
rs1.MoveFirst
Print #a, Chr(15)
Do While Not rs1.EOF
    If Co > PageLen Then
        Print #a,
        Print #a, Chr(12)
        Co = 0
        pg1 = pg1 + 1
    End If
    Print #a,
    Print #a, Chr(18)
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 70, " ") + Chr(27) + "F"
    
    '----
        Set Rs = New Recordset
        Rs.Open "select ADD1,ADD2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST  from pp_divmas where divcode ='" & Divcode & "'", db, adOpenStatic
        For i = 0 To 10
            aa(i) = Space(1)
        Next
        i = 1
        aa(i) = Rs(0) + IIf(Rs(1) = "", "", "," + Rs(1)) + IIf(Rs(2) = "", "", "," + Rs(2))
        i = i + 1

         
        If Rs("TNGST") <> "" Then  'tngst
           If Rs("TNGST") <> " " Then
              aa(i) = "TNGST No.: " + Rs("tngst") + Space(1) & " Dt " & Rs("tngstdt")
            End If
            i = i + 1
         End If
         
        If Rs("CGST") <> "" Then  'tngst
           If Rs("CGST") <> " " Then
              aa(i) = "C S T No.: " + Rs("CGST") + Space(1) & " Dt " & Rs("CGSTDT")
            End If
            i = i + 1
         End If
         
        For i = 1 To 8
         If aa(i) <> " " Then
            Print #a, Space(1) & CENTRE(aa(i), 70, " ")
          End If
        Next
        
    '----
    'Print #a, Space(3) + Chr(27) + "E" + "Cotton Weight List" + Chr(27) + "F" & Space(95) + "F/OP2/5" & Chr(15)
    Print #a, Space(3) + Chr(27) + "E" + "Cotton Weight List" + Chr(27) + "F" & Space(95) + "       " & Chr(15)
    Print #a, Space(5) + String(125, "-")
    Set rs3 = New Recordset
    If rs1("dlYtype") = "S" Then
        Print #a, Space(5) + "             " + Space(2); Chr(27) + "E" + Padr(" ", 53, " "); Space(25); "SPOT"; Chr(27) + "F"
    Else
        Print #a, Space(5) + "             " + Space(2) + Padr(" ", 53, " "); Space(25); Chr(27) + "E"; "MILL"; Chr(27) + "F"
    End If
    rs3.Open "select slname from fa_slmas where slcode='" & rs1("SUPCD") & "'", db, adOpenDynamic, adLockOptimistic
    Print #a, Space(5) + "Supplier    :" + Space(2) + Padr(rs3("slname"), 53, " "); Space(15); "Date                :"; rs1("lotdt")
     Co = Co + 12
    If Co > PageLen Then
        Print #a,
        Print #a, Chr(12)
        Co = 0
        pg1 = pg1 + 1
    End If
    
    Set rs3 = New Recordset
    rs3.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rs1("AREACODE") & "'", db, adOpenDynamic, adLockOptimistic
    
    Print #a, Space(5) + "Variety     :" + Space(2) + Padr(rs1("VARCODE"), 20, " "); Space(40); "        Candy Rate          :"; Padr(INF(rs1("ratecy"), 2), 20, " ")
    Print #a, Space(5) + "Area        :" + Space(2) + Padr(IIf(rs3.BOF = True, "", rs3(0)), 20, " "); Space(40); "        Press Mark          :"; Padr(rs1("prmark"), 20, " ")
    Print #a, Space(5) + "No of Bales :" + Space(2) + Padr(INF(rs1("QUANTITY"), 0), 10, " "); Space(10); Space(48); "Mill Lot. No. & Dt  :"; Padr(rs1("lotno") & Space(1) & "&" & Space(1) & rs1("lotdt"), 30, " ")
    Print #a, Space(5) + "P.R. Nos    :" + Space(2) + Padr(rs1("prno"), 20, " "); Space(40); "        Lorry No            :"; Padr(rs1("lorrynos"), 20, " ") 'Space(10); Space(47); "        Press Mark     :"; Padr(rs1("prmark"), 20, " ")

    
    Print #a, Space(5) + "Party Lot No:" + Space(2) + Padr(rs1("plotno"), 10, " ") ' ; Space(10); Space(47); "        Lorry No       :"; Padr(rs1("lorrynos"), 20, " ")
    
    '============================
    Co = 19
    gr = 0
    Sno = 0
    i = 0
    Set RS2 = New Recordset
    'rs2.Open "SELECT grwt,tarewt,netwt,pbaleno,pnetwt,baleno,pGRwt FROM RM_BALE WHERE LOTDT BETWEEN '" & Format(from_date, "yyyy-mm-dd") & "' AND '" & Format(to_date, "yyyy-mm-dd") & "' and lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " order by baleno", cnn, adOpenDynamic, adLockOptimistic
    RS2.Open "SELECT grwt,tarewt,netwt,0 as pbaleno,0 as pnetwt,baleno,0 as pGRwt FROM RM_BALE WHERE LOTDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " order by baleno", cnn, adOpenDynamic, adLockOptimistic
    If RS2.RecordCount = 0 Then
        Exit Sub
    End If
    e = RS2.RecordCount
    RS2.MoveFirst
    
    Do While Not RS2.EOF
    Sno = Sno + 1
    gr = gr + 1
    If gr <= 30 Then
'            db.Execute "insert into ACH(b1,g1,t1,n1,lottype,catcd,lotno,sno) values (" & IIf(IsNull(rs2("pbaleno")), 0, rs2("pbaleno")) & "," & IIf(IsNull(rs2("pnetwt")), 0, rs2("pnetwt")) & "," & rs2("baleno") & "," & rs2("netwt") & ",'A','" & rs1("catcd") & "'," & rs1("lotno") & "," & sno & ")"
            db.Execute "insert into ACH(b1,g1,t1,n1,b2,g2,t2,n2,lottype,catcd,lotno,sno) values (" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & "," & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & "," & RS2("TAREWT") & "," & RS2("NETWT") & ",0,0,0,0, 'A','" & rs1("catcd") & "'," & rs1("lotno") & "," & Sno & ")"
    End If
    If gr > 30 And gr <= 60 Then
    i = (Sno - 30)
        db.Execute "update ACH set b2=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g2=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & ",t2=" & RS2("TAREWT") & ",n2=" & RS2("NETWT") & " where sno=" & i & "" ', A
       If gr = 60 Then
        gr = 0
       End If
    End If
    
    pgtot1 = 0
    pgtot2 = 0
    pgtot8 = 0
    pgtot9 = 0
            
    RS2.MoveNext
    Loop
 
    b = 0
    Set RS2 = New Recordset
    RS2.Open "SELECT b1,g1,t1,n1,b2,g2,t2,n2,SNO FROM ACH WHERE lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " ORDER BY sno", cnn, adOpenDynamic, adLockOptimistic
    Call Detailed_Receipt_Header(pg1, e) ', co, u, v)
    pgtot1 = 0
    tot1 = 0
    pgtot2 = 0
    tot2 = 0
    Co = 29 + 4
    RS2.MoveFirst
    Do While Not RS2.EOF
    If Co >= PageLen Then
    If e > 30 Then
            Print #a, Space(25) + String(90, "-")
            Print #a, Space(20) + Space(7) + Padl(INF(pgtot1, 3), 13, " ") + Space(12) + Padl(INF(pgtot2, 3), 11, " "); Space(16) + Padl(INF(pgtot8, 3), 12, " ") + Space(12) + Padl(INF(pgtot9, 3), 11, " ")
            Print #a, Space(25) + String(90, "-")
    Else
            Print #a, Space(25) + String(90, "-")
            Print #a, Space(20) + Space(7) + Padl(INF(pgtot1, 3), 13, " ") + Space(12) + Padl(INF(pgtot2, 3), 11, " "); Space(16) + Padl(INF(pgtot8, 3), 12, " ") + Space(12) + Padl(INF(pgtot9, 3), 11, " ")
            Print #a, Space(25) + String(90, "-")
    End If
            pgtot1 = 0
            pgtot2 = 0
            pgtot8 = 0
            pgtot9 = 0
            
            Print #a, Space(20)
            Print #a,
            Print #a, Chr(12)
            pg1 = pg1 + 1
            Call Detailed_Receipt_Header(pg1, e) ', co, u, v)
            Co = 4
    End If
        Print #a, Space(20) + Padl((CStr(RS2(0))), 7, " ") + Padl(INF(RS2(1), 3), 13, " ") + Padl(RS2(2), 12, " ") + Padl(INF(RS2(3), 3), 11, " ") + Space(8) + Padl(((RS2(4))), 7, " ") + Padl(INF(RS2(5), 3), 13, " ") + Padl(RS2(6), 12, " ") + Padl(INF(RS2(7), 3), 11, " ") + Space(8)
        pgtot1 = pgtot1 + IIf(IsNull(RS2(1)), 0, RS2(1))
        pgtot2 = pgtot2 + IIf(IsNull(RS2(3)), 0, RS2(3))
        
        pgtot8 = pgtot8 + IIf(IsNull(RS2(5)), 0, RS2(5))
        pgtot9 = pgtot9 + IIf(IsNull(RS2(7)), 0, RS2(7))
        
        Co = Co + 1
    RS2.MoveNext
    Loop
   b = 0
   '*********************************
   
   If e > 30 Then
        Print #a, Space(25) + String(90, "-")
        Print #a, Space(20) + Space(7) + Padl(INF(pgtot1, 3), 13, " ") + Space(12) + Padl(INF(pgtot2, 3), 11, " "); Space(16) + Padl(INF(pgtot8, 3), 12, " ") + Space(12) + Padl(INF(pgtot9, 3), 11, " ")
        Print #a, Space(25) + String(90, "-")
   Else
        Print #a, Space(25) + String(38, "-")
        Print #a, Space(20) + Space(7) + Padl(INF(pgtot1, 3), 13, " ") + Space(12) + Padl(INF(pgtot2, 3), 11, " "); Space(16) + Padl(INF(pgtot8, 3), 12, " ") + Space(12) + Padl(INF(pgtot9, 3), 11, " ")
        Print #a, Space(25) + String(38, "-")
   End If
   
   
   Set rss = New Recordset
   rss.Open "SELECT netwt from rm_arrival WHERE lotno=" & rs1("lotno") & " ", cnn, adOpenDynamic, adLockOptimistic
    
    bb = (rs1("NETWT") - rss(0))
    
    Print #a, Space(46) + "   Mill Weight Kgs" '; Space(1); "Party Weight Kgs"; Space(2); " Difference Kgs "
    Print #a, Space(35) + String(63, "-")
    Print #a, Space(35) + "Gross Weight :"; Padl(INF(rs1("GROSSWT"), 3), 15, " "); ' Space(2); Padl(INF(rs1("PGRSWT"), 3), 15, " "); Space(2); Padl(INF(rs1("GROSSWT") - rs1("PGRSWT"), 3), 15, " ");
    Print #a,
    Print #a, Space(35) + "Tare  Weight :"; Padl(INF(rs1("TAREWT"), 3), 15, " "); ' Space(2); Padl(INF(rs1("PTAREWT"), 3), 15, " "); Space(2); Padl(INF(rs1("TAREWT") - rs1("PTAREWT"), 3), 15, " ");
    Print #a,
    Print #a, Space(35) + "Nett  Weight :"; Padl(INF(rs1("NETWT"), 3), 15, " "); 'Space(2); Padl(INF(rs1("PNETWT"), 3), 15, " "); Space(2); Padl(INF(INF(rs1("NETWT"), 3) - rs1("PNETWT"), 3), 15, " ");
    Print #a,
    Print #a, Space(35) + String(63, "-")
    Print #a,
    Print #a, Space(75); Chr(27); "E"; "For " & DIVNAME; Chr(27); "F"
    Print #a, Space(35)
    Print #a, Space(35)
    Print #a, Space(35)
    Print #a, Space(25) + "Weighted by:                          Checked by                    General Manager"
    tot1 = 0
    tot2 = 0
    tot3 = 0
   
   
    '===============================

    If Co >= PageLen Then
        Print #a, Chr(12)
    End If
    rs1.MoveNext
    
        Print #a,
        Print #a, Chr(12)
        pg1 = pg1 + 1
    
Loop
 db.Execute "drop table ACH"
Print #a,
Print #a,
Print #a,
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "C:\recpt_reg_dt.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type recpt_reg_dt.txt>prn"
'Close #a
'RPTV.txtfile = "C:\recpt_reg_dt.txt"
'RPTV.Batfile = "C:\recpt_reg_dt.bat"
Call KALBATPROCESS("recpt_reg_dt")
End Sub


Public Sub addresshead()
        Set Rs = New Recordset
        Rs.Open "select ADD1,ADD2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST  from pp_divmas where divcode ='" & Divcode & "'", db, adOpenStatic, adLockReadOnly
        Dim aa(10) As Variant
        For i = 0 To 10
            aa(i) = Space(1)
        Next
        i = 1
        If Rs(0) <> "" Then
            aa(i) = Rs(0) 'address 1 + 'address2
            i = i + 1
        End If
        If Rs(1) <> "" Then
            aa(i) = Rs(1) 'address 1 + 'address2
            i = i + 1
        End If
        If Rs(2) <> "" Then
           If Rs(3) <> "" Then
             aa(i) = Rs(2) 'city - pincode
           Else
            aa(i) = Rs(2)
           End If
           i = i + 1
        End If
        
        If Rs(4) <> "" Then
           If Rs(5) <> " " Then
              aa(i) = "Phone: " + Rs(4) + Space(2) + "Grams: " + Rs(5)
            Else
               aa(i) = "Phone: " + Rs(4)
            End If
            i = i + 1
         End If
         
        If Rs("TNGST") <> "" Then  'tngst
           If Rs("TNGST") <> " " Then
              aa(i) = "TNGST No.: " + Rs("tngst") + Space(1) & " Dt " & Rs("tngstdt")
            End If
            i = i + 1
         End If
         
        If Rs("CGST") <> "" Then  'tngst
           If Rs("CGST") <> " " Then
              aa(i) = "C S T No.: " + Rs("CGST") + Space(1) & " Dt " & Rs("CGSTDT")
            End If
            i = i + 1
         End If
       For i = 1 To 8
         If aa(i) <> " " Then
            Print #1, Space(5) & CENTRE(aa(i), 80, " ")
          End If
        Next
End Sub
