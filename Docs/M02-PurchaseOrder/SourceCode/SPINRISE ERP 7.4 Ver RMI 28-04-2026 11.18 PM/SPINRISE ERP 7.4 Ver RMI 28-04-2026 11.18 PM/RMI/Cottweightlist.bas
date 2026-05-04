Attribute VB_Name = "Cottweightlist"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim e As Double
Dim a As Integer
Dim co As Integer
Dim divname As String
Dim aa(10) As Variant
Dim bb As Double
Dim Cnn As Connection
Dim Count As Integer
Dim rp As New repform1
Public Sub Detailed_Receipt_Header(pg1 As Integer, e As Double)
    Print #a, Space(3) + Chr(218) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + _
    String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194);
    Print #a, String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194);
    Print #a, String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194);
    'Print #a, String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194);
    Print #a, String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(191)
    
    Print #a, Space(3) + Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179) + "No." + Chr(179) + "  Kgs. " + _
    Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179);
    Print #a, "No." + Chr(179) + "  Kgs. " + Chr(179);
    Print #a, "No." + Chr(179) + "  Kgs. " + Chr(179);
    'Print #a, "No." + Chr(179) + "  Kgs. " + Chr(179);
    Print #a, "No." + Chr(179) + "  Kgs. " + Chr(179)
    
    

    Print #a, Space(3) + Chr(195); String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + _
    String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197);
    Print #a, String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197);
    Print #a, String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197);
    'Print #a, String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197);
    Print #a, String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(180)
    
    
    co = co + 3
End Sub
Public Sub enjoy(From_Date As String, To_Date As String, divname As String, supp As String, From_Lotno As String, To_Lotno As String, footerstr As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim TEMP As New Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
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
Dim s As String
Dim r As String
Dim RsGin As Recordset
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
PageLen = 56
Set rs1 = New Recordset
Cnn.Open connectstring

Set rptv = New Report.ReportView
a = FreeFile
Close

   ' Open "C:\recpt_reg_dt.TXT" For Output As #a
   Open KALFOLDERDATA & "\recpt_reg_dt.TXT" For Output As #a
    pg1 = 1
    co = 0
    totalvalue = 0

    Set rs4 = New Recordset
    rs4.Open "select * from sysobjects where name ='ACH'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "drop table ach"
    End If
    DB.Execute "create table ACH (b1 numeric(5,0),g1 numeric(10,3),b2 numeric(5,0),g2 numeric(10,3),b3 numeric(5,0),g3 numeric(10,3),b4 numeric(5,0),g4 numeric(10,3),b5 numeric(5,0),g5 numeric(10,3),b6 numeric(5,0),g6 numeric(10,3),b7 numeric(5,0),g7 numeric(10,3),b8 numeric(5,0),g8 numeric(10,3),b9 numeric(5,0),g9 numeric(10,3),b10 numeric(5,0),g10 numeric(10,3),b11 numeric(5,0),g11 numeric(10,3),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(5,0),sno numeric(6))"
    Set rs1 = New Recordset
'    rs1.Open " select DISTINCT d.slname as broker,b.catcd,B.lotno,b.pjno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,b.freght,a.plotno,a.plotdt,a.brkcd,a.areacode,isnull(a.dbamt,0)dbamt,a.varcode,a.cntcode,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.pjamt,b.ldgulg," & _
'            " b.ptywgt,b.insamt,isnull(a.moisture_et,0) as moiture,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost, " & _
'            " c.dlytype,a.carcode,ISNULL(b.pNETWT,0) AS PNETWT,ISNULL(b.pGRSWt,0) AS PGRSWT,ISNULL(b.pTAREWT,0) AS PTAREWT,b.lotdt,0 as pono,0 as podt,b.ratekg*355.6187 as ratecandy,B.lotDT,a.carcode,a.freight,b.taxamt,a.contno,catname,isnull(Allowanceamt,0) as allow,isnull(lrfrtamt,0) as lrfrtamt  from  rm_arrival a,rm_lot b,rm_cont c,fa_slmas d,rm_cat r where b.brkcd*=d.slcode " & _
'               "  and a.arrno=b.arrno and b.catcd=r.catcd  AND A.DIVCODE=B.DIVCODE AND A.DIVCODE=C.DIVCODE AND A.DIVCODE='" & Divcode & "' " & _
'                 " and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
'                 " and b.lottype='A' and a.contno=c.contno and a.contdt=c.contdt and opflg<>'Y' order by a.lotno", Cnn, adOpenDynamic, adLockOptimistic
 
 rs1.Open " select DISTINCT d.slname as broker,b.catcd,B.lotno,b.pjno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,b.freght,a.plotno,a.plotdt,a.brkcd,a.areacode,isnull(a.dbamt,0)dbamt,a.varcode,a.cntcode,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.pjamt,b.ldgulg," & _
            " b.ptywgt,b.insamt,isnull(a.moisture_et,0) as moiture,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost, " & _
            " c.dlytype,a.carcode,ISNULL(b.pNETWT,0) AS PNETWT,ISNULL(b.pGRSWt,0) AS PGRSWT,ISNULL(b.pTAREWT,0) AS PTAREWT,b.lotdt,0 as pono,0 as podt,b.ratekg*355.6187 as ratecandy,B.lotDT,a.carcode,a.freight,b.taxamt,a.contno,catname,isnull(Allowanceamt,0) as allow,isnull(lrfrtamt,0) as lrfrtamt  from  rm_arrival a inner join rm_lot b on  a.arrno=b.arrno AND A.DIVCODE=B.DIVCODE  and a.arrdate=b.arrdt   and a.lotno=b.lotno  " & _
               "  inner join rm_cont c on A.DIVCODE=C.DIVCODE  and a.contno=c.contno and  a.contdt=c.contdt   left join fa_slmas d on b.brkcd=d.slcode  inner join rm_cat r on  b.catcd=r.catcd  where A.DIVCODE='" & Divcode & "' and  " & _
                 "  b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
                 " and b.lottype='A' and opflg<>'Y' order by a.lotno", Cnn, adOpenDynamic, adLockOptimistic
   
    
    If rs1.RecordCount = 0 Then
        MsgBox "No Records Found For this Period", vbInformation, "Kalsofte"
        DB.Execute "drop table ACH"
        Close #a
        Exit Sub
    End If
    rs1.MoveFirst
    Print #a,

    Do While Not rs1.EOF
    If co > PageLen Then
        Print #a,
        Print #a, Chr(12)
        co = 0
        pg1 = pg1 + 1


    End If
   ' Print #A,
    Print #a, Chr(27) & Chr(205)
    '----
    Set Rs = New Recordset
    Rs.Open "select isnull(ADD1,'') as add1,isnull(ADD2,'') as add2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST,fax,email,webaddr  from pp_divmas where divcode ='" & Divcode & "'", DB, adOpenStatic
    GG = "Regd. Office:" & Rs("ADD1") & "-" & Rs("add2")
    Print #a, Space(3) + Chr(27) & "E" & CENTRE(divname, 70, " ") & Padr("Mills  :", 8, " ") & Rs("phone1") & Chr(27) & "F"
    GG = "Regd. Office:" + Rs("add1") + "," + Rs("ADd2")
    gg1 = Rs("city") + "-" + Rs("pincode")
    Print #a, Space(4) + CENTRE(GG, 85, " ") '& Padr("Fax    :", 8, " ") & Rs("fax")
    Print #a, Space(4) + CENTRE(gg1, 85, " ") '& Padr("Email  :", 8, " ") & Rs("email")
    Print #a, Space(4) + CENTRE("Fax    :" & Rs("fax"), 85, " ")
    Print #a, Space(4) + CENTRE("Email  :" & Rs("email") & "Website:" & Rs("webaddr"), 85, " ")
    Print #a,
    Print #a,
    Set rsa = New Recordset
    rsa.Open "select varname from rm_var where varcode='" & rs1("varcode") & "'", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        VarName1 = rsa(0)
    Else
        VarName1 = " "
    End If
    Print #a, Space(4) + "Weight List for : " & Padr(rs1("catname"), 20, " ") & "Variety  :" & Padr(VarName1, 15, " ") & "  Bales/Borahs : " & Padr(rs1("quantity"), 10, " ")
    Print #a, Space(4) + "Mill Lot No.: " & Padr(rs1("lotno"), 12, " ") & Space(11) & " P.R.: " & Padr(rs1("prno"), 15, " ") & Space(5) & " Supplier Lotno  :" & Padr(rs1("plotno"), 10, " ")
    Print #a,
    Print #a, String(94, " ") & "Date : " & Padr(rs1("lotdt"), 10, " ")
    Set rs3 = New Recordset
    rs3.Open "select slname from fa_slmas  where slcode='" & rs1("SUPCD") & "'", DB, adOpenStatic
    If rs3.RecordCount > 0 Then
    Print #a, Space(4) & "Of Messers : " & rs3("slname")
    End If
    Print #a,

    gr = 0
    SNO = 0
    i = 0
    Set rs2 = New Recordset
    rs2.Open "SELECT distinct grwt,tarewt,netwt,0 as pbaleno,0 as pnetwt,baleno,0 as pGRwt FROM RM_BALE WHERE DIVCODE='" & Divcode & "' AND LOTDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " order by baleno", Cnn, adOpenDynamic, adLockOptimistic
    Count = rs2.RecordCount + 1
    If rs2.RecordCount = 0 Then
        Exit Sub
    End If
    e = rs2.RecordCount
    rs2.MoveFirst
    
    Do While Not rs2.EOF
        SNO = SNO + 1
        gr = gr + 1
        If gr <= 15 Then
            DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,b7,g7,b8,g8,b9,g9,b10,g10,b11,g11,lottype,catcd,lotno,sno) values (" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & "," & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'A','" & rs1("catcd") & "'," & rs1("lotno") & "," & SNO & ")"
        End If
        If gr > 15 And gr <= 30 Then
            i = (SNO - 15)
            DB.Execute "update ACH set b2=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g2=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 150 Then gr = 0
           
        End If
        If gr > 30 And gr <= 45 Then
            i = (SNO - 30)
            DB.Execute "update ACH set b3=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g3=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
         If gr > 45 And gr <= 60 Then
        i = (SNO - 45)
            DB.Execute "update ACH set b4=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g4=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 150 Then gr = 0
        End If
         If gr > 60 And gr <= 75 Then
            i = (SNO - 60)
            DB.Execute "update ACH set b5=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g5=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 150 Then gr = 0
        End If
         If gr > 75 And gr <= 90 Then
            i = (SNO - 75)
            DB.Execute "update ACH set b6=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g6=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 150 Then gr = 0
         End If
         If gr > 90 And gr <= 105 Then
            i = (SNO - 90)
            DB.Execute "update ACH set b7=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g7=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 150 Then gr = 0
        End If
        If gr > 105 And gr <= 120 Then
             i = (SNO - 105)
            DB.Execute "update ACH set b8=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g8=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
         If gr > 120 And gr <= 135 Then
             i = (SNO - 135)
            DB.Execute "update ACH set b9=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g9=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 135 And gr <= 150 Then
             i = (SNO - 135)
            DB.Execute "update ACH set b10=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g10=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        
    
'         If gr > 100 And gr <= 110 Then
'             i = (sno - 100)
'            DB.Execute "update ACH set b10=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g10=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
'            If gr = 100 Then gr = 0
'        End If
       

        rs2.MoveNext
    Loop
    pgtot1 = 0
    pgtot2 = 0
    pgtot3 = 0
    pgtot4 = 0
    pgtot5 = 0
    pgtot6 = 0
    B = 0
    Set rs2 = New Recordset
    rs2.Open "SELECT  b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,b7,g7,b8,g8,b9,g9,b10,g10,SNO FROM ACH WHERE lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " ORDER BY sno", Cnn, adOpenDynamic, adLockOptimistic

    Call Detailed_Receipt_Header(pg1, e)
    pgtot1 = 0
    tot1 = 0
    pgtot2 = 0
    tot2 = 0
    co = co + 4
    rec = 0
    rs2.MoveFirst
    Do While Not rs2.EOF
    
        If rs2!SNO = 61 Then
          Print #a, Space(3) + Chr(192) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + _
          String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(217) ' + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196))

          Print #a, Space(6) + Padl(INF(pgtot1, 3), 12, " ") + Space(3) + Padl(INF(pgtot2, 3), 12, " "); Space(3) + Padl(INF(pgtot3, 3), 12, " ") + Space(3) + Padl(INF(pgtot4, 3), 12, " ") + Space(3) + Padl(INF(pgtot5, 3), 12, " ") + Space(3) + Padl(INF(pgtot6, 3), 12, " ")

          Print #a, Space(3) + Chr(218) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + _
          String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(191)

            pgtot1 = 0
            pgtot2 = 0
            pgtot3 = 0
            pgtot4 = 0
            pgtot5 = 0
            pgtot6 = 0
            pgtot7 = 0
            pgtot8 = 0
            pgtot9 = 0
            pgtot10 = 0
            co = co + 3
        End If
        Print #a, Space(3) + Chr(179) + Padl((CStr(INF(rs2(0), 0))), 3, " ") + Chr(179) + Padl(INF(rs2(1), 3), 7, " ") + Chr(179);
        Print #a, Padl((CStr(INF(rs2(2), 0))), 3, " ") + Chr(179) + Padl(INF(rs2(3), 3), 7, " ") + Chr(179) + Padl((CStr(INF(rs2(4), 0))), 3, " ") + Chr(179) + Padl(INF(rs2(5), 3), 7, " ") + Chr(179) + Padl((CStr(INF(rs2(6), 0))), 3, " ") + Chr(179) + Padl(INF(rs2(7), 3), 7, " ") + Chr(179) + Padl((CStr(INF(rs2(8), 0))), 3, " ") + Chr(179) + Padl(INF(rs2(9), 3), 7, " ") + Chr(179) + Padl(INF(rs2(10), 2), 3, " ") + Chr(179) + Padl(INF(rs2(11), 3), 7, " ") + Chr(179);
        Print #a, Padl(INF(rs2(12), 0), 3, " ") + Chr(179) + Padl(INF(rs2(13), 3), 7, " ") + Chr(179);
        Print #a, Padl(INF(rs2(14), 0), 3, " ") + Chr(179) + Padl(INF(rs2(15), 3), 7, " ") + Chr(179);
        Print #a, Padl(INF(rs2(16), 0), 3, " ") + Chr(179) + Padl(INF(rs2(17), 3), 7, " ") + Chr(179)
        'Print #a, Padl(INF(RS2(16), 0), 3, " ") + Chr(179) + Padl(INF(RS2(17), 3), 7, " ") + Chr(179);
       '05/12/13
        'Print #a, Padl(RS2(18), 3, " ") + Chr(179) '+ Chr(179) + Padl(INF(rs2(19), 3), 7, " ")+ Chr(179)
       
            
                     
         
        pgtot1 = pgtot1 + IIf(IsNull(rs2(1)), 0, rs2(1))
        pgtot2 = pgtot2 + IIf(IsNull(rs2(3)), 0, rs2(3))
        pgtot3 = pgtot3 + IIf(IsNull(rs2(5)), 0, rs2(5))
        pgtot4 = pgtot4 + IIf(IsNull(rs2(7)), 0, rs2(7))
        pgtot5 = pgtot5 + IIf(IsNull(rs2(9)), 0, rs2(9))
        pgtot6 = pgtot6 + IIf(IsNull(rs2(11)), 0, rs2(11))
        pgtot7 = pgtot7 + IIf(IsNull(rs2(13)), 0, rs2(13))
        pgtot8 = pgtot8 + IIf(IsNull(rs2(15)), 0, rs2(15))
        pgtot9 = pgtot9 + IIf(IsNull(rs2(17)), 0, rs2(17))
        pgtot10 = pgtot10 + IIf(IsNull(rs2(19)), 0, rs2(19))

        co = co + 1
        
        rec = rec + 1
    rs2.MoveNext
    Loop
   B = 0
   '*********************************
           Print #a, Space(3) + Chr(192) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + _
           String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193);
           Print #a, String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193);
           Print #a, String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193);
          ' Print #a, String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193);
           Print #a, String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(217)

           Print #a, Space(3) + Padl(INF(pgtot1, 3), 12, " ") + Space(0) + Padl(INF(pgtot2, 3), 12, " "); Space(0) + Padl(INF(pgtot3, 3), 12, " ") + Space(0) + Padl(INF(pgtot4, 3), 12, " ") + Space(0) + Padl(INF(pgtot5, 3), 12, " ") + Space(0) + Padl(INF(pgtot6, 3), 12, " ");
           Print #a, Space(0) + Padl(INF(pgtot7, 3), 12, " ");
           Print #a, Space(0) + Padl(INF(pgtot8, 3), 12, " ");
          ' Print #a, Space(0) + Padl(INF(pgtot9, 3), 12, " ");
           Print #a, Space(0) + Padl(INF(pgtot10, 3), 12, " ")
           
           Set rsa = New Recordset
           rsa.Open "select deldesc from rm_delivery where delcode='" & rs1("dlytype") & "'", DB, adOpenStatic
           If rsa.RecordCount > 0 Then
                deldesc = rsa(0)
            Else
                deldesc = ""
            End If
           
           Print #a,
           Print #a, Space(3) + "Gross Weight : " & Padl(INF(rs1("grosswt"), 3), 10, " ") & " Kgs." & "  Bales :  " & Padr(INF(rs1("Quantity"), 0), 6, " ") & Space(2) & Padr("Supplier Net Wt.:", 17, " ") & Padl(INF(rs1("pnetwt"), 3), 10, " ") & Space(2) & Padr("Rate          :", 15, " ") & Padl("Rs." & rs1("ratecy"), 10, " ") & Space(3) & deldesc
           Print #a, Space(3) + "Tare Weight  : " & Padl(INF(rs1("tarewt"), 3), 10, " ") & " Kgs." & "  Bales :  " & Padr(INF(rs1("Quantity"), 0), 6, " ") & Space(2) & Padr("Mill Net Weight :", 17, " ") & Padl(INF(rs1("netwt"), 3), 10, " ") & Space(2) & Padr("Allowance     :", 15, " ") & Padl(INF(rs1("allow"), 3), 12, " ")
           Print #a, Space(3) + "Net Weight   : " & Padl(INF(rs1("netwt"), 3), 10, " ") & " Kgs." & "  Bales :  " & Padr(INF(rs1("Quantity"), 0), 6, " ") & Space(2) & Padr("Shortage/Excess :", 17, " ") & Padl(INF(Abs((rs1("pnetwt") - rs1("netwt"))), 3), 10, " ") & Space(2) & Padr("Lorry Freight :", 15, " ") & Padl(INF(rs1("lrfrtamt"), 2), 12, " ")
           
    co = co + 6
    tot1 = 0
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    tot6 = 0
   '===============================
    If co >= PageLen Then
        Print #a, Chr(12)
    Else
        Print #a,
    End If
    rs1.MoveNext
        'Print #a, Chr(12)
        pg1 = pg1 + 1

Loop
Print #a,
Print #a,
Print #a,
Print #a,
Print #a,
'Print #a, Space(3) & Chr(27) & "E" & "Observed by            Checked by            Approved by             Seller's Signature/Controller's Signature" & Chr(27) & "F"
Call footermod(CInt(a), footerstr, 85)

Print #a, Chr(27) & Chr(77)
Print #a, Chr(12)
Close #a
DB.Execute "drop table ACH"
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


Public Sub addresshead()
        Set Rs = New Recordset
        Rs.Open "select ADD1,ADD2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST  from pp_divmas where divcode ='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
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



Public Sub TransferRpt(From_Date As String, To_Date As String, supp As String, From_Lotno As String, To_Lotno As String, divname As String, TCat As String, TVar As String)
Dim Rs, rs1, rs2, rs3, rs4, rs5 As Recordset
Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14, tot15 As Double
Dim TEMP As New Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim transname, purchmode As String
Dim SR As String
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
Dim s As String
Dim r As String
Dim RsGin As Recordset
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
PageLen = 56
Set rs1 = New Recordset
Cnn.Open connectstring

Set rptv = New Report.ReportView
a = FreeFile
Close

'Open "C:\recpt.TXT" For Output As #a
Open KALFOLDERDATA & "\recpt.TXT" For Output As #a
pg1 = 1
co = 0
totalvalue = 0

Set rs4 = New Recordset
rs4.Open "select * from sysobjects where name ='ACH'", DB, adOpenStatic, adLockBatchOptimistic
If rs4.RecordCount > 0 Then
    DB.Execute "drop table ach"
End If
DB.Execute "create table ACH (b1 numeric(5,0),g1 numeric(10,3),b2 numeric(5,0),g2 numeric(10,3),b3 numeric(5,0),g3 numeric(10,3),b4 numeric(5,0),g4 numeric(10,3),b5 numeric(5,0),g5 numeric(10,3),b6 numeric(5,0),g6 numeric(10,3),b7 numeric(5,0),g7 numeric(10,3),b8 numeric(5,0),g8 numeric(10,3),b9 numeric(5,0),g9 numeric(10,3),b10 numeric(5,0),g10 numeric(10,3),b11 numeric(5,0),g11 numeric(10,3),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(5,0),sno numeric(6))"
Set rs1 = New Recordset
rs1.Open "select DISTINCT d.slname as broker,b.catcd,b.varcode,b.lotno,b.lotdt,b.pjno,b.freght,b.plotno,b.pjamt,b.ldgulg," & _
        " b.ptywgt,b.insamt,b.bales,b.pono,b.supcd,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost, " & _
        " isnull(b.grswgt,0) as grosswt,isnull(b.ratecy,0) as ratecy,ISNULL(b.NETWT,0) AS NETWT,ISNULL(b.TAREWT,0) AS TAREWT,0 as pono,0 as podt,b.ratekg*355.6187 as ratecandy,b.taxamt,catname,isnull(Allowanceamt,0) as allow,isnull(lrfrtamt,0) as lrfrtamt from rm_lot b,fa_slmas d,rm_cat r where b.brkcd*=d.slcode and " & _
        " b.catcd=r.catcd  and b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "' and B.CatCd ='" & TCat & "' and B.VarCode='" & TVar & "'" & _
        " and b.lottype='T' and opflg<>'Y' order by b.lotno", Cnn, adOpenDynamic, adLockOptimistic
If rs1.EOF Then
    MsgBox "No Records Found For this Period", vbInformation, head
    DB.Execute "drop table ACH"
    Close #a
    Exit Sub
End If
rs1.MoveFirst
Print #a,

Do While Not rs1.EOF
    If co > PageLen Then
        Print #a,
        Print #a, Chr(12)
        co = 0
        pg1 = pg1 + 1
    End If
    Print #a, Chr(27) & Chr(205)

    Set Rs = New Recordset
    Rs.Open "select isnull(ADD1,'') as add1,isnull(ADD2,'') as add2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST,fax,email,webaddr  from pp_divmas where divcode ='" & Divcode & "'", DB, adOpenStatic
    GG = "Regd. Office:" & Rs("ADD1") & "-" & Rs("add2")
    Print #a, Space(3) + Chr(27) & "E" & CENTRE(divname, 70, " ") & Chr(27) & "F" & Space(2) & Padr("Mills  :", 8, " ") & Rs("phone1")
    GG = "Regd. Office:" + Rs("add1") + "," + Rs("ADd2")
    gg1 = Rs("city") + "-" + Rs("pincode")
    Print #a, Space(4) + CENTRE(GG, 70, " ") & Padr("Fax    :", 8, " ") & Rs("fax")
    Print #a, Space(4) + CENTRE(gg1, 70, " ") & Padr("Email  :", 8, " ") & Rs("email")
    Print #a, Space(4) + String(70, " ") & Padr("Website:", 8, " ") & Rs("webaddr")
    Print #a,
    Print #a,
    Set rsa = New Recordset
    rsa.Open "select varname from rm_var where varcode='" & rs1("varcode") & "'", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        VarName1 = rsa(0)
    Else
        VarName1 = " "
    End If
    Print #a, Space(4) + "Weight List for : " & Padr(rs1("catname"), 20, " ") & "Variety  : " & Padr(VarName1, 20, " ") & "  Bales/Borahs : " & Padr(rs1("bales"), 10, " ")
    Print #a, Space(4) + "Mill Lot No.    : " & Padr(rs1("lotno"), 9, " ") & Space(10) & " P.R. No. : " & Padr(rs1("pono"), 20, " ") & Space(2) & " Party Lotno : " & Padr(rs1("plotno"), 10, " ")
    Print #a,
    Print #a, String(94, " ") & "Date : " & Padr(Format(rs1("lotdt"), "DD/MM/YY"), 10, " ")
    Set rs3 = New Recordset
    rs3.Open "select slname from fa_slmas  where slcode='" & rs1("SUPCD") & "'", DB, adOpenStatic
    If rs3.RecordCount > 0 Then
        Print #a, Space(4) & "Of Messers : " & rs3("slname")
    End If
    Print #a,

    gr = 0
    SNO = 0
    i = 0
    Set rs2 = New Recordset
    rs2.Open "SELECT distinct grwt,tarewt,netwt,0 as pbaleno,0 as pnetwt,baleno,0 as pGRwt FROM RM_BALE WHERE LOTDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='T' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " and VarCode='" & rs1("VarCode") & "' order by baleno", Cnn, adOpenDynamic, adLockOptimistic
    Count = rs2.RecordCount + 1
    If rs2.RecordCount = 0 Then
        Exit Sub
    End If
    e = rs2.RecordCount
    rs2.MoveFirst
    Do While Not rs2.EOF
        SNO = SNO + 1
        gr = gr + 1
        If gr <= 15 Then
            DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,b7,g7,b8,g8,b9,g9,b10,g10,b11,g11,lottype,catcd,lotno,sno) values (" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & "," & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'A','" & rs1("catcd") & "'," & rs1("lotno") & "," & SNO & ")"
        End If
        If gr > 15 And gr <= 30 Then
            i = (SNO - 15)
            DB.Execute "update ACH set b2=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g2=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 30 And gr <= 45 Then
            i = (SNO - 30)
            DB.Execute "update ACH set b3=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g3=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 45 And gr <= 60 Then
            i = (SNO - 45)
            DB.Execute "update ACH set b4=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g4=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 60 And gr <= 75 Then
            i = (SNO - 60)
            DB.Execute "update ACH set b5=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g5=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 75 And gr <= 90 Then
            i = (SNO - 75)
            DB.Execute "update ACH set b6=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g6=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 90 And gr <= 105 Then
            i = (SNO - 90)
            DB.Execute "update ACH set b7=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g7=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 105 And gr <= 120 Then
            i = (SNO - 105)
            DB.Execute "update ACH set b8=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g8=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 120 And gr <= 135 Then
            i = (SNO - 120)
            DB.Execute "update ACH set b9=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g9=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        If gr > 135 And gr <= 150 Then
            i = (SNO - 135)
            DB.Execute "update ACH set b10=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g10=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 150 Then gr = 0
        End If
        rs2.MoveNext
    Loop
    pgtot1 = 0
    pgtot2 = 0
    pgtot3 = 0
    pgtot4 = 0
    pgtot5 = 0
    pgtot6 = 0
    B = 0
    Set rs2 = New Recordset
    rs2.Open "SELECT  b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,b7,g7,b8,g8,b9,g9,b10,g10,SNO FROM ACH WHERE lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " ORDER BY sno", Cnn, adOpenDynamic, adLockOptimistic

    Call TransferReceipt_Header(pg1, e)
    pgtot1 = 0
    tot1 = 0
    pgtot2 = 0
    tot2 = 0
    co = co + 4
    rec = 0
    rs2.MoveFirst
    Do While Not rs2.EOF
        If rs2!SNO = 61 Then
            Print #a, Space(3) + Chr(192) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + _
            String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(217) ' + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196))

            Print #a, Space(6) + Padl(INF(pgtot1, 3), 12, " ") + Space(3) + Padl(INF(pgtot2, 3), 12, " "); Space(3) + Padl(INF(pgtot3, 3), 12, " ") + Space(3) + Padl(INF(pgtot4, 3), 12, " ") + Space(3) + Padl(INF(pgtot5, 3), 12, " ") + Space(3) + Padl(INF(pgtot6, 3), 12, " ")

            Print #a, Space(3) + Chr(218) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + _
            String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(191)

            pgtot1 = 0
            pgtot2 = 0
            pgtot3 = 0
            pgtot4 = 0
            pgtot5 = 0
            pgtot6 = 0
            pgtot7 = 0
            pgtot8 = 0
            pgtot9 = 0
            pgtot10 = 0
            co = co + 3
        End If
        Print #a, Space(3) + Chr(179) + Padl((CStr(rs2(0))), 3, " ") + Chr(179) + Padl(INF(rs2(1), 3), 7, " ") + Chr(179);
        Print #a, Padl((CStr(rs2(2))), 3, " ") + Chr(179) + Padl(INF(rs2(3), 3), 7, " ") + Chr(179) + Padl((CStr(rs2(4))), 3, " ") + Chr(179) + Padl(INF(rs2(5), 3), 7, " ") + Chr(179) + Padl((CStr(rs2(6))), 3, " ") + Chr(179) + Padl(INF(rs2(7), 3), 7, " ") + Chr(179) + Padl((CStr(rs2(8))), 3, " ") + Chr(179) + Padl(INF(rs2(9), 3), 7, " ") + Chr(179) + Padl(rs2(10), 3, " ") + Chr(179) + Padl(INF(rs2(11), 3), 7, " ") + Chr(179);
        Print #a, Padl(rs2(12), 3, " ") + Chr(179) + Padl(INF(rs2(13), 3), 7, " ") + Chr(179);
        Print #a, Padl(rs2(14), 3, " ") + Chr(179) + Padl(INF(rs2(15), 3), 7, " ") + Chr(179);
        Print #a, Padl(rs2(16), 3, " ") + Chr(179) + Padl(INF(rs2(17), 3), 7, " ") + Chr(179)
             
        pgtot1 = pgtot1 + IIf(IsNull(rs2(1)), 0, rs2(1))
        pgtot2 = pgtot2 + IIf(IsNull(rs2(3)), 0, rs2(3))
        pgtot3 = pgtot3 + IIf(IsNull(rs2(5)), 0, rs2(5))
        pgtot4 = pgtot4 + IIf(IsNull(rs2(7)), 0, rs2(7))
        pgtot5 = pgtot5 + IIf(IsNull(rs2(9)), 0, rs2(9))
        pgtot6 = pgtot6 + IIf(IsNull(rs2(11)), 0, rs2(11))
        pgtot7 = pgtot7 + IIf(IsNull(rs2(13)), 0, rs2(13))
        pgtot8 = pgtot8 + IIf(IsNull(rs2(15)), 0, rs2(15))
        pgtot9 = pgtot9 + IIf(IsNull(rs2(17)), 0, rs2(17))
        pgtot10 = pgtot10 + IIf(IsNull(rs2(19)), 0, rs2(19))
        
        co = co + 1
        rec = rec + 1
        rs2.MoveNext
    Loop

    B = 0
    '*********************************
    Print #a, Space(3) + Chr(192) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + _
    String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193);
    Print #a, String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193);
    Print #a, String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193);
    Print #a, String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(217)

    Print #a, Space(3) + Padl(INF(pgtot1, 3), 12, " ") + Space(0) + Padl(INF(pgtot2, 3), 12, " "); Space(0) + Padl(INF(pgtot3, 3), 12, " ") + Space(0) + Padl(INF(pgtot4, 3), 12, " ") + Space(0) + Padl(INF(pgtot5, 3), 12, " ") + Space(0) + Padl(INF(pgtot6, 3), 12, " ");
    Print #a, Space(0) + Padl(INF(pgtot7, 3), 12, " ");
    Print #a, Space(0) + Padl(INF(pgtot8, 3), 12, " ");
    Print #a, Space(0) + Padl(INF(pgtot10, 3), 12, " ")

''    Set rsa = New Recordset
''    rsa.Open "select deldesc from rm_delivery where delcode='" & RS1("dlytype") & "'", DB, adOpenStatic
''    If rsa.RecordCount > 0 Then
''        deldesc = rsa(0)
''    Else
''        deldesc = ""
''    End If

    Print #a,
    Print #a, Space(3) + "Gross Weight : " & Padl(INF(rs1("bales"), 3), 10, " ") & " Bales " & Padl(INF(rs1("grosswt"), 3), 10, " ") & " Kgs." & Space(2) & Padr("Party Net Weight:", 17, " ") & Padl(INF(rs1("ptywgt"), 3), 10, " ") & Space(2) & Padr("Rate          :", 15, " ") & Padl("Rs." & rs1("ratecy"), 8, " ") & Space(3) & deldesc
    Print #a, Space(3) + "Tare Weight  : " & Padl(INF(rs1("bales"), 3), 10, " ") & " Bales " & Padl(INF(rs1("tarewt"), 3), 10, " ") & " Kgs." & Space(2) & Padr("Mill Net Weight :", 17, " ") & Padl(INF(rs1("netwt"), 3), 10, " ") & Space(2) & Padr("Allowance     :", 15, " ") & Padl(INF(rs1("allow"), 3), 12, " ")
    Print #a, Space(3) + "Net Weight   : " & Padl(INF(rs1("bales"), 3), 10, " ") & " Bales " & Padl(INF(rs1("netwt"), 3), 10, " ") & " Kgs." & Space(2) & Padr("Shortage/Excess :", 17, " ") & Padl(INF(Abs((rs1("netwt") - rs1("ptywgt"))), 3), 10, " ") & Space(2) & Padr("Lorry Frieght :", 15, " ") & Padl(INF(rs1("freght"), 2), 12, " ")
    
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Call footermod(CInt(a), frmtransrecp.UserFooter1.SelectedStr, 110)
    'Print #a, Space(3) & Chr(27) & "E" & "Observed by            Checked by            Approved by             Seller's Signature/Controller's Signature" & Chr(27) & "F"
    co = co + 12
    tot1 = 0
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    tot6 = 0
    '===============================
    If co >= PageLen Then
        Print #a, Chr(12)
    Else
        Print #a,
    End If
    rs1.MoveNext
    pg1 = pg1 + 1
Loop
DB.Execute "drop table ACH"

Print #a, Chr(27) & Chr(77)
Print #a, Chr(12)
Close #a

a = FreeFile
'Open "c:\recpt.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type recpt.txt>prn"
'Close #a
'RPTV.txtfile = "c:\recpt.txt"
'RPTV.Batfile = "c:\recpt.bat"

Call KALBATPROCESS("recpt")

End Sub

Public Sub TransferReceipt_Header(pg1 As Integer, e As Double)
Print #a, Space(3) + Chr(218) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + _
String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194);
Print #a, String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194);
Print #a, String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194);
Print #a, String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(191)

Print #a, Space(3) + Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179) + "No." + Chr(179) + "  Kgs. " + _
Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179) + "No." + Chr(179) + "  Kgs. " + Chr(179);
Print #a, "No." + Chr(179) + "  Kgs. " + Chr(179);
Print #a, "No." + Chr(179) + "  Kgs. " + Chr(179);
Print #a, "No." + Chr(179) + "  Kgs. " + Chr(179)

Print #a, Space(3) + Chr(195); String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + _
String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197);
Print #a, String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197);
Print #a, String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197);
Print #a, String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(180)
End Sub

Public Sub LotPrint(From_Date As String, To_Date As String, divname As String, supp As String, From_Lotno As String, To_Lotno As String, lottype As String)
Dim rs1 As Recordset
Dim rsfirst As Recordset
Dim Rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim RS6 As Recordset
Dim rs7 As Recordset

Dim TEMP As New Recordset
Dim PageLen, J As Integer
Dim RESULT As Recordset
Dim transname As String
Dim purchmode As String
Dim SR, test, ratetot As String
Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14, tot15 As Double

Dim rateperkg, cotval, pcotval, pnetvalue, netvalue, totalvalue, partybill, diff, diffwt As Double
Dim head, s, r, wbrirefno, unit As String
Dim DIFFGR, DIFFNET, DIFFTA, wloadwt, wempwt, wgrswt, wtarewt, wnetwt As Double


Dim Y As Integer
Dim varrs As Recordset
Dim v1, v2, v3, v4, v5, v6, v7, v8, vq1, vq2, vq3, vq4, vq5, vq6, vq7, vq8 As String
Dim vgr1, vgr2, vgr3, vgr4, vgr5, vgr6, vgr7, vgr8, vtr1, vtr2, vtr3, vtr4, vtr5, vtr6, vtr7, vtr8, vne1, vne2, vne3, vne4, vne5, vne6, vne7, vne8 As Double

Dim RATECY, Quantity, Taxamt, ldgulg, freght, pjamt, GROSSWT, TAREWT, netwt, PGRSWT, PTAREWT, PNETWT As Double
Dim APGRSWT, APTAREWT, APNETWT, APGRSWT1, APGRSWT2, APGRSWT3, APGRSWT4, APGRSWT5, APGRSWT6 As Double
Dim vgtot1, vgtot2, vgtot3, vgtot4, vgtot5, vgtot6, fgtot1, fgtot2, fgtot3, fgtot4, fgtot5, fgtot6 As Double
Dim ttot1, ttot2, ttot3, ttot4, ttot5, ttot6, ntot1, ntot2, ntot3, ntot4, ntot5, ntot6 As Double
Dim pttot1, pttot2, pttot3, pttot4, pttot5, pttot6, pntot1, pntot2, pntot3, pntot4, pntot5, pntot6 As Double

Dim partywt As Double
Dim RsGin As Recordset
Dim rsvarcode As Recordset
Dim pstrarrival As String
Dim RatePer As String
Dim frt     As Double

Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
PageLen = 56
Set rs1 = New Recordset
Cnn.Open connectstring

frt = 0
PageLen = 60

    Set rptv = New Report.ReportView
    a = FreeFile
    Close
    'Open "C:\recpt_reg_dt1.TXT" For Output As #a
    Open KALFOLDERDATA & "\recpt_reg_dt1.TXT" For Output As #a
    pg1 = 1
    co = 0
    totalvalue = 0:    DIFFNET = 0:    DIFFGR = 0:    DIFFTA = 0: RATECY = 0: Quantity = 0: Taxamt = 0:  ldgulg = 0:    freght = 0: pjamt = 0
    GROSSWT = 0:    TAREWT = 0:    netwt = 0:   PGRSWT = 0:   PTAREWT = 0:   PNETWT = 0
    Set rs4 = New Recordset
    rs4.Open "select * from sysobjects where name ='ACH'", DB, adOpenStatic, adLockBatchOptimistic
    
    If rs4.RecordCount > 0 Then
        DB.Execute "drop table ach"
    End If
    
    DB.Execute "create table ACH (b1 numeric(5,0),g1 numeric(10,3),b2 numeric(5,0),g2 numeric(10,3),b3 numeric(5,0),g3 numeric(10,3),b4 numeric(5,0),g4 numeric(10,3),b5 numeric(5,0),g5 numeric(10,3),b6 numeric(5,0),g6 numeric(10,3),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(5,0),sno numeric(6),varcode varchar(10)," & _
    "p1 numeric(10,3),p2 numeric(10,3),p3 numeric(10,3),p4 numeric(10,3),p5 numeric(10,3),p6 numeric(10,3),t1 numeric(10,3),t2 numeric(10,3),t3 numeric(10,3),t4 numeric(10,3),t5 numeric(10,3),t6 numeric(10,3) " & _
    ",n1 numeric(10,3),n2 numeric(10,3),n3 numeric(10,3),n4 numeric(10,3),n5 numeric(10,3),n6 numeric(10,3), " & _
    " pn1 numeric(10,3),pn2 numeric(10,3),pn3 numeric(10,3),pn4 numeric(10,3),pn5 numeric(10,3),pn6 numeric(10,3), " & _
    " pt1 numeric(10,3),pt2 numeric(10,3),pt3 numeric(10,3),pt4 numeric(10,3),pt5 numeric(10,3),pt6 numeric(10,3)) "
 
    
    Set rsfirst = New Recordset
    
rsfirst.Open "SELECT DISTINCT A.DIVCODE,a.rg23a,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO," & _
        " BILLDT,FREGHT,SUPCD,BRKCD,AREACD,CNTCODE ,GODOWN,LGROUP,plotno,rejflg,COLORCODE,BEDPER," & _
        " SEDPER,AEDPER,CESSPER,OCTROIPER,OCTROIAMT,VATPER,CSTPER,TNGSTPER,SCPER,OTHTAXPER " & _
        " FROM RM_LOT A WHERE  LOTTYPE = '" & lottype & "' and " & _
        " A.ARRDt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and " & _
        " A.arrno = '" & From_Lotno & "' and a.lottype='" & lottype & "' and opflg<>'Y' order by a.lotno ", Cnn, adOpenDynamic, adLockOptimistic
        
        '" A.lotno Between '" & From_Lotno & "' AND '" & To_Lotno & "' and a.lottype='A' and opflg<>'Y' order by a.lotno ", cnn, adOpenDynamic, adLockOptimistic


    If rsfirst.RecordCount = 0 Then
        MsgBox "No Records Found For this Period", vbInformation, head
        DB.Execute "drop table ACH"
        Close #a
        Exit Sub
    End If
    
    pstrarrival = ""
    
    rsfirst.MoveFirst
    
    'Print #A,

    Do While Not rsfirst.EOF
    
    If pstrarrival <> rsfirst!Arrno Then
    
    If co > PageLen Then
        Print #a,
        Print #a, Chr(12)
        co = 0
        pg1 = pg1 + 1
    End If
    
    Set rs1 = New Recordset
    
    rs1.Open " select DISTINCT d.slname as broker,b.catcd,B.lotno,b.pjno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,b.freght,a.plotno,a.plotdt,a.brkcd,a.areacode,a.varcode,a.cntcode,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.pjamt,b.billno,b.billdt,b.ldgulg,b.ptywgt " & _
             ",b.insamt,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost,a.carcode,ISNULL(GRosSWT,0) AS PGRSWT1,ISNULL(B.GRSWgT,0) AS FGROSSWT, " & _
              " ISNULL(B.TAREWT,0) AS FTAREWT,ISNULL(B.NETWT,0) AS FNETWT,b.lotdt,0 as pono,0 as podt,b.ratekg*355.616 as ratecandy,B.lotDT,a.carcode,isnull(a.freight,0) as freight,b.taxamt,a.contno ,ISNULL(b.totlandcost,0),isnull(b.pgrswt,0) as pgrswt ,isnull(b.ptarewt,0) as ptarewt,isnull(b.pnetwt,0) as pnetwt " & _
               "  from  rm_arrival a,rm_lot b,fa_slmas d where b.brkcd*=d.slcode and a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.ARRdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.arrno = '" & From_Lotno & "'" & _
               " and a.varcode=b.varcode and b.lottype='" & lottype & "' and opflg<>'Y' order by a.lotno", Cnn, adOpenDynamic, adLockOptimistic
                   
    rs1.MoveFirst
    
    Do While Not rs1.EOF
        RATECY = IIf(IsNull(rs1!RATECY) = True, 0, rs1!RATECY) + RATECY:   Quantity = IIf(IsNull(rs1!Quantity) = True, 0, rs1!Quantity) + Quantity
        Taxamt = IIf(IsNull(rs1!Taxamt) = True, 0, rs1!Taxamt) + Taxamt: ldgulg = IIf(IsNull(rs1!ldgulg) = True, 0, rs1!ldgulg) + ldgulg
        freght = IIf(IsNull(rs1!freght) = True, 0, rs1!freght) + freght:   pjamt = IIf(IsNull(rs1!pjamt) = True, 0, rs1!pjamt) + pjamt
        GROSSWT = IIf(IsNull(rs1!GROSSWT) = True, 0, rs1!GROSSWT) + GROSSWT:         TAREWT = IIf(IsNull(rs1!TAREWT) = True, 0, rs1!TAREWT) + TAREWT
        netwt = IIf(IsNull(rs1!netwt) = True, 0, rs1!netwt) + netwt
        
       ' wloadwt = IIf(IsNull(RS1!wloadwt) = True, 0, RS1!wloadwt):     wempwt = IIf(IsNull(RS1!WEMPTYWT) = True, 0, RS1!WEMPTYWT)
        'wgrswt = IIf(IsNull(RS1!wgrswt) = True, 0, RS1!wgrswt):    wtarewt = IIf(IsNull(RS1!wtarewt) = True, 0, RS1!wtarewt)
       ' wnetwt = IIf(IsNull(RS1!wnetwt) = True, 0, RS1!wnetwt):     wbrirefno = IIf(IsNull(RS1!wbrirefno) = True, "", RS1!wbrirefno)
        PGRSWT = IIf(IsNull(rs1!PGRSWT) = True, 0, rs1!PGRSWT) + PGRSWT: PTAREWT = IIf(IsNull(rs1!PTAREWT) = True, 0, rs1!PTAREWT) + PTAREWT
        PNETWT = IIf(IsNull(rs1!PNETWT) = True, 0, rs1!PNETWT) + PNETWT
        frt = frt + rs1!Freight
        If rs1("ratecy") <> 0 Then
            RatePer = RatePer + CStr(rs1("ratecy")) + " ,"
        End If
       rs1.MoveNext
     Loop
        
     rs1.MoveFirst
     
     APGRSWT = Round((PGRSWT / Quantity), 3):         APGRSWT1 = APGRSWT: APGRSWT2 = APGRSWT: APGRSWT3 = APGRSWT:      APGRSWT4 = APGRSWT:  APGRSWT5 = APGRSWT:        APGRSWT6 = APGRSWT

    Print #a, Chr(18)
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
    Print #a, Space(5) + Space(19) + Chr(27) + "E" + CENTRE("MILL", 40, "") + Chr(27) + "F" + Space(0) + "REF NO       :" + Space(2) + "" + Padr(rsfirst!Arrno, 6, " ")
    Print #a, Space(5) + Space(39) + "RM - 1" + Space(14) + " ARRIVAL DATE :" + Space(2) + "" + Padr(rsfirst!ARRDT, 12, " ")
    Print #a,
    
    '----
        Set Rs = New Recordset
         Rs.Open "select ADD1,ADD2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST  from pp_divmas where divcode ='" & Divcode & "'", DB, adOpenStatic
         
         Set rs3 = New Recordset
         rs3.Open "select slname from fa_slmas  where slcode='" & rs1("SUPCD") & "'", DB, adOpenDynamic, adLockOptimistic
         
         head = Chr(14) + Chr(27) + "E" + rs3!Slname + Chr(27) + "F"
         supp = rs3!Slname
     
         co = co + 5
        
        If co > PageLen Then
           Print #a,
            Print #a, Chr(12)
            co = 0
            pg1 = pg1 + 1
        End If
        
        Set rs4 = New Recordset
        If IsNull(rs1!carcode) Then
            transname = Space(20)
        Else
            rs4.Open "select distinct carname from po_car where carcode='" & rs1!carcode & "'", Cnn, adOpenDynamic, adLockOptimistic
            If Not rs4.EOF Then transname = Padr(rs4!carname, 20, " ")
        End If
        
        Set rs5 = New Recordset
        rs5.Open "select distinct dlytype,RATEUNIT from rm_cont where contno='" & rs1!contno & "'", Cnn, adOpenStatic, adLockBatchOptimistic
        
        purchmode = "FOR"
                
'        Set rs5 = New Recordset
 '       rs5.Open " select unitname from RM_rateunit where unitcode ='" & rsQ!rateunit & "'", cnn, adOpenStatic, adLockBatchOptimistic
        unit = rs5!RATEUNIT
        
        Set rs3 = New Recordset
        rs3.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rs1("AREACODE") & "'", Cnn, adOpenDynamic, adLockOptimistic
        
            Print #a, Space(2) + "PARTY NAME           :" + Padr(supp, 39, " ") + Space(1) '; "RATE/" + Padr(unit, 9, "") + ": " + Padr(INF(RS1("ratecy"), 0), 20, " ")
            Print #a, Space(2) & "INV No/DC No/XX/XXVII:" & Padr(rs1("BILLNO"), 20, " ") & Space(5) + Space(5) & "         LORRY NO      : " + Padr(rs1("lorrynos"), 20, " ")
            Print #a, Space(2) & "DATE                 :" & Padr(IIf(IsNull(rs1("BILLDT")), "", rs1("BILLDT")), 15, " ") & Space(5) + Space(10) & "         LORRY FREIGHT : " + Padr(INF(frt, 2), 10, " ")
            Print #a, Space(2) + "NO OF BALES          :" + Padr(INF(Quantity, 0), 15, " ") + Space(12); "            DESPATCH DATE : " + Padr(rs1!LOTDT, 12, " ")
            'Print #a, 'Space(2) + "JTCL REFERENCE LOT NO:" + Padr(rsfirst("REFLOTNO"), 15, " ") + Space(12)
            Print #a, Space(2) + "RATE/" + Padr(unit, 16, "") + ": " + Padr(Left(RatePer, (Len(RatePer) - 2)), 45, " ")
        Set RsGin = New Recordset
    
    co = co + 8
    gr = 0:    SNO = 0:    i = 0
    Set rs2 = New Recordset
    
   ' rs2.Open "SELECT distinct grwt,tarewt,netwt,0 as pbaleno,baleno,varcode,pgrswt as pGRwt,ptarewt as ptarewt,pnetwt as pnetwt,(select varname from RM_VAR where varcode=a.varcode) varname,LOTNO,lotdt,catcd FROM RM_BALE a WHERE LOTDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='" & lottype & "' and catcd='" & rsfirst("catcd") & "' and arrno =" & From_Lotno & " order by baleno,lotno", cnn, adOpenDynamic, adLockOptimistic
    rs2.Open "SELECT distinct grwt,tarewt,netwt,0 as pbaleno,baleno,varcode,pgrswt as pGRwt,ptarewt as ptarewt,pnetwt as pnetwt,(select varname from RM_VAR where varcode=a.varcode) varname,LOTNO,lotdt,catcd FROM RM_BALE a WHERE ARRDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='" & lottype & "' and arrno =" & From_Lotno & " order by baleno,lotno", Cnn, adOpenDynamic, adLockOptimistic
    
    Count = rs2.RecordCount + 1
    If rs2.RecordCount = 0 Then
'        Exit Sub
    End If
    
    Set rsvarcode = New Recordset
    Set rsvarcode = rs2
    
    e = rs2.RecordCount
    
    
    test = ""
    If rs2.EOF = False Then rs2.MoveFirst
    Do While Not rs2.EOF
                
                SNO = SNO + 1
                gr = gr + 1
                
                Set RS6 = New Recordset
                RS6.Open "SELECT ptywgt,bales,varcode from RM_lot WHERE LOTDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='" & lottype & "' and lotno=" & rs2("LOTNO") & " and varcode='" & rs2("varcode") & "' ", Cnn, adOpenDynamic, adLockOptimistic
                
                If RS6.RecordCount > 0 Then
                    If RS6!ptywgt = 0 Then
                       partywt = IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT"))
                    Else
                       partywt = Round((RS6!ptywgt / RS6!bales), 3)
                    End If
                End If
                
                If gr <= 10 Then
                  If test = "" Or test = rs2("LOTNO") Then
                    DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,lottype,catcd,lotno,sno,varcode,p1,p2,p3,p4,p5,p6,t1,t2,t3,t4,t5,t6,n1,n2,n3,n4,n5,n6,pn1,pn2,pn3,pn4,pn5,pn6,pt1,pt2,pt3,pt4,pt5,pt6) values (" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & "," & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,'" & lottype & "','" & rsfirst("catcd") & "'," & rs2("LOTNO") & "," & SNO & ",'" & rs2("varcode") & "'," & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",0,0,0,0,0 " & _
                    " ," & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",0,0,0,0,0 ," & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & ",0,0,0,0,0," & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",0,0,0,0,0," & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & ",0,0,0,0,0)"
                    
                    If test = "" Then test = rs2("LOTNO")
                  ElseIf test <> rs2("LOTNO") Then
                        If SNO <= 10 Then
                           For J = SNO To 10
                             DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,lottype,catcd,lotno,sno,varcode,p1,p2,p3,p4,p5,p6,t1,t2,t3,t4,t5,t6,n1,n2,n3,n4,n5,n6,pn1,pn2,pn3,pn4,pn5,pn6,pt1,pt2,pt3,pt4,pt5,pt6) values (0,0,0,0,0,0,0,0,0,0,0,0,'" & lottype & "','" & rsfirst("catcd") & "'," & rs2("LOTNO") & "," & SNO & ",'" & rs2("varcode") & "',0,0,0,0,0,0 " & _
                             " ,0,0,0,0,0,0 ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)"
                             SNO = SNO + 1: gr = gr + 1
                           Next J
                        Else
                            For J = SNO To 70
                            DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,lottype,catcd,lotno,sno,varcode,p1,p2,p3,p4,p5,p6,t1,t2,t3,t4,t5,t6,n1,n2,n3,n4,n5,n6,pn1,pn2,pn3,pn4,pn5,pn6,pt1,pt2,pt3,pt4,pt5,pt6) values (0,0,0,0,0,0,0,0,0,0,0,0,'" & lottype & "','" & rsfirst("catcd") & "'," & rs2("LOTNO") & "," & SNO & ",'" & rs2("varcode") & "',0,0,0,0,0,0 " & _
                             " ,0,0,0,0,0,0 ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)"
                                SNO = SNO + 1: gr = gr + 1
                                Next J
                        End If
                  End If
                End If
                
                If gr > 10 And gr <= 20 Then
                
                  If test = rs2("LOTNO") Then
                        If SNO <= 20 Then
                          SNO = gr
                        End If
                        
                        If SNO > 61 And SNO <= 80 Then
                          SNO = 60 + gr
                        End If
                        
                        i = (SNO - 10)
                        DB.Execute "update ACH set b2=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g2=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p2=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",t2=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n2=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn2=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt2=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                        If gr = 60 Then
                            gr = 0
                        End If
                  ElseIf test <> rs2("LOTNO") Then
                       If gr = 11 Then
                         i = (SNO - 10)
                        DB.Execute "update ACH set b2=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g2=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p2=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",t2=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n2=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn2=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt2=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                        If gr = 60 Then
                            gr = 0
                        End If
                         test = rs2("LOTNO")
                       Else
                                gr = 21
                                test = rs2("LOTNO")
                       End If
                  End If
                End If
                
                If gr > 20 And gr <= 30 Then
                    If test = rs2("LOTNO") Then
                        If SNO <= 30 Then
                          SNO = gr
                        End If
                        
                        If SNO > 61 And SNO <= 90 Then
                          SNO = 60 + gr
                        End If
                        
                        i = (SNO - 20)
                        
                        DB.Execute "update ACH set b3=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g3=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p3=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & " ,t3=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n3=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn3=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt3=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                         If gr = 60 Then
                          gr = 0
                         End If
                    ElseIf test <> rs2("LOTNO") Then
                       If gr = 21 Then
                             i = (SNO - 20)
                            DB.Execute "update ACH set b3=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g3=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p3=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & " ,t3=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n3=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn3=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt3=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                             If gr = 60 Then
                              gr = 0
                             End If
                            test = rs2("LOTNO")
                       Else
                            gr = 31
                            test = rs2("LOTNO")
                       End If
                    End If
                End If
                
                 If gr > 30 And gr <= 40 Then
                    If test = rs2("LOTNO") Then
                        If SNO <= 40 Then
                          SNO = gr
                        End If
                        If SNO > 61 And SNO <= 100 Then
                          SNO = 60 + gr
                        End If
                        i = (SNO - 30)
                         DB.Execute "update ACH set b4=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g4=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p4=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",t4=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n4=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn4=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt4=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                        If gr = 60 Then
                         gr = 0
                        End If
                   ElseIf test <> rs2("LOTNO") Then
                       If gr = 31 Then
                          i = (SNO - 30)
                         DB.Execute "update ACH set b4=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g4=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p4=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",t4=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n4=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn4=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt4=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                          If gr = 60 Then
                            gr = 0
                          End If
                          test = rs2("LOTNO")
                       Else
                            gr = 41
                            test = rs2("LOTNO")
                      End If
                   End If
                End If
                
                If gr > 40 And gr <= 50 Then
                   If test = rs2("LOTNO") Then
                        If SNO <= 50 Then
                          SNO = gr
                        End If
                        If SNO > 61 And SNO <= 110 Then
                          SNO = 60 + gr
                        End If
                         i = (SNO - 40)
                         DB.Execute "update ACH set b5=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g5=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p5=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",t5=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n5=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn5=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt5=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                        If gr = 60 Then
                         gr = 0
                        End If
                   ElseIf test <> rs2("LOTNO") Then
                       If gr = 41 Then
                           i = (SNO - 40)
                         DB.Execute "update ACH set b5=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g5=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p5=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",t5=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n5=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn5=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt5=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                           If gr = 60 Then
                            gr = 0
                           End If
                           test = rs2("LOTNO")
                       Else
                            gr = 51
                            test = rs2("LOTNO")
                       End If
                   End If
                End If
                
                 If gr > 50 And gr <= 60 Then
                   If test = rs2("LOTNO") Then
                        If SNO <= 60 Then
                          SNO = gr
                        End If
                        If SNO > 61 And SNO <= 120 Then
                          SNO = 60 + gr
                        End If
                        i = (SNO - 50)
                        DB.Execute "update ACH set b6=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g6=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p6=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",t6=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n6=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn6=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt6=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                        If gr = 60 Then
                         gr = 0
                        End If
                   ElseIf test <> rs2("LOTNO") Then
                      If gr = 51 Then
                         test = rs2("LOTNO")
                         i = (SNO - 50)
                        DB.Execute "update ACH set b6=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g6=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "',p6=" & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",t6=" & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",n6=" & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & " ,pn6=" & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",pt6=" & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & " where sno=" & i & "" ', A
                        If gr = 60 Then
                         gr = 0
                        End If
                      Else
                        gr = 1
                        SNO = 61
                        If gr <= 10 Then
                             DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,lottype,catcd,lotno,sno,varcode,p1,p2,p3,p4,p5,p6,t1,t2,t3,t4,t5,t6,n1,n2,n3,n4,n5,n6,pn1,pn2,pn3,pn4,pn5,pn6,pt1,pt2,pt3,pt4,pt5,pt6) values (" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & "," & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,'" & lottype & "','" & rsfirst("catcd") & "'," & rs2("LOTNO") & "," & SNO & ",'" & rs2("varcode") & "'," & IIf(IsNull(rs2!pGRwt), 0, rs2!pGRwt) & ",0,0,0,0,0 " & _
                    " ," & IIf(IsNull(rs2!TAREWT), 0, rs2!TAREWT) & ",0,0,0,0,0 ," & IIf(IsNull(rs2!netwt), 0, rs2!netwt) & ",0,0,0,0,0," & IIf(IsNull(rs2!PNETWT), 0, rs2!PNETWT) & ",0,0,0,0,0," & IIf(IsNull(rs2!PTAREWT), 0, rs2!PTAREWT) & ",0,0,0,0,0)"
                            test = rs2("LOTNO")
                        End If
                      End If
                   End If
                End If
                
                rs2.MoveNext
    Loop
    
    pgtot1 = 0: pgtot2 = 0: pgtot3 = 0: pgtot4 = 0: pgtot5 = 0: pgtot6 = 0: vgtot1 = 0: vgtot2 = 0:     vgtot3 = 0:     vgtot4 = 0:     vgtot5 = 0:     vgtot6 = 0
    fgtot1 = 0:     fgtot2 = 0:     fgtot3 = 0:     fgtot4 = 0:     fgtot5 = 0:     fgtot6 = 0: ttot1 = 0:    ttot2 = 0:    ttot3 = 0:    ttot4 = 0:    ttot5 = 0:     ttot6 = 0
    ntot1 = 0:     ntot2 = 0:     ntot3 = 0:     ntot4 = 0:     ntot5 = 0:     ntot6 = 0: pttot1 = 0:    pttot2 = 0:     pttot3 = 0:      pttot4 = 0:     pttot5 = 0:    pttot6 = 0: pntot1 = 0:    pntot2 = 0:     pntot3 = 0:    pntot4 = 0:    pntot5 = 0:    pntot6 = 0
    
    B = 0
    
    Set rs2 = New Recordset
    rs2.Open "SELECT  b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,SNO,varcode,p1,p2,p3,p4,p5,p6,t1,t2,t3,t4,t5,t6,n1,n2,n3,n4,n5,n6,pn1,pn2,pn3,pn4,pn5,pn6,pt1,pt2,pt3,pt4,pt5,pt6 FROM ACH WHERE lottype='" & lottype & "' and catcd='" & rsfirst("catcd") & "'  ORDER BY sno", Cnn, adOpenDynamic, adLockOptimistic 'and lotno=" & rs2("lotno") & "
        
'    Print #a, Chr(15) + Space(3) + " VARIETY             LOT   VARIETY             LOT   VARIETY             LOT   VARIETY             LOT   VARIETY             LOT   VARIETY            LOT"
'    Print #a, Space(4) + String(155, "-")
   Print #a,
   Call f1(rsvarcode)
    
'    Print #a, Space(3) + "|" + Padr(vah1, 21, " ") + Space(0) + Padr(lot1, 4, " ") + "|" + Padr(vah2, 21, " ") + Space(0) + Padr(lot2, 4, " ") + "|" + Padr(vah3, 21, " ") + Space(0) + Padr(lot3, 4, " ") + "|" + Padr(vah4, 21, " ") + Space(0) + Padr(lot4, 4, " ") + "|" + Padr(vah5, 21, " ") + Space(0) + Padr(lot5, 4, " ") + "|" + Padr(vah6, 21, " ") + Space(0) + Padr(lot6, 4, " ") + "|"
    Call LotPrintHead(pg1, e)
    pgtot1 = 0:    tot1 = 0:    pgtot2 = 0:    tot2 = 0:    co = co + 3:    rec = 0
    If rs2.RecordCount > 0 Then
        rs2.MoveFirst
    End If
    
    Do While Not rs2.EOF
         
         If rs2!SNO = 121 Then
           rs2.MoveLast
         End If
        If rs2!SNO = 61 Then
          Print #a, Space(3) + Chr(192) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + _
               String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(217)
         
         Print #a, Space(4) + "G.WT" + Padl(INF(fgtot1, 3), 10, " ") + Space(0) + Padl(INF(pgtot1, 3), 12, " ") + Space(2) + Padl(INF(fgtot2, 3), 12, " ") + Space(0) + Padl(INF(pgtot2, 3), 12, " "); Space(2) + Padl(INF(fgtot3, 3), 12, " ") + Space(0) + Padl(INF(pgtot3, 3), 12, " ") + Space(2) + Padl(INF(fgtot4, 3), 12, " ") + Space(0) + Padl(INF(pgtot4, 3), 12, " ") + Space(2) + Padl(INF(fgtot5, 3), 12, " ") + Space(0) + Padl(INF(pgtot5, 3), 12, " ") + Space(2) + Padl(INF(fgtot6, 3), 12, " ") + Space(0) + Padl(INF(pgtot6, 3), 12, " ")
         Print #a, Space(4) + "T.WT" + Padl(INF(pttot1, 3), 10, " ") + Space(0) + Padl(INF(ttot1, 3), 12, " ") + Space(2) + Padl(INF(pttot2, 3), 12, " ") + Space(0) + Padl(INF(ttot2, 3), 12, " "); Space(2) + Padl(INF(pttot3, 3), 12, " ") + Space(0) + Padl(INF(ttot3, 3), 12, " ") + Space(2) + Padl(INF(pttot4, 3), 12, " ") + Space(0) + Padl(INF(ttot4, 3), 12, " ") + Space(2) + Padl(INF(pttot5, 3), 12, " ") + Space(0) + Padl(INF(ttot5, 3), 12, " ") + Space(2) + Padl(INF(pttot6, 3), 12, " ") + Space(0) + Padl(INF(ttot6, 3), 12, " ")
         Print #a, Space(4) + "N.WT" + Padl(INF(pntot1, 3), 10, " ") + Space(0) + Padl(INF(ntot1, 3), 12, " ") + Space(2) + Padl(INF(pntot2, 3), 12, " ") + Space(0) + Padl(INF(ntot2, 3), 12, " "); Space(2) + Padl(INF(pntot3, 3), 12, " ") + Space(0) + Padl(INF(ntot3, 3), 12, " ") + Space(2) + Padl(INF(pntot4, 3), 12, " ") + Space(0) + Padl(INF(ntot4, 3), 12, " ") + Space(2) + Padl(INF(pntot5, 3), 12, " ") + Space(0) + Padl(INF(ntot5, 3), 12, " ") + Space(2) + Padl(INF(pntot6, 3), 12, " ") + Space(0) + Padl(INF(ntot6, 3), 12, " ")
          'Print #A,
            
          Print #a, Space(3) + "|" + Padr(vah7, 21, " ") + Space(0) + Padr(lot7, 4, " ") + "|" + Padr(vah8, 21, " ") + Space(0) + Padr(lot8, 4, " ") + "|" + Padr(vah9, 21, " ") + Space(0) + Padr(lot9, 4, " ") + "|" + Padr(vah10, 21, " ") + Space(0) + Padr(lot10, 4, " ") + "|" + Padr(vah11, 21, " ") + Space(0) + Padr(lot11, 4, " ") + "|" + Padr(vah12, 21, " ") + Space(0) + Padr(lot12, 4, " ") + "|"
    
          
          Print #a, Space(3) + Chr(218) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(10, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194); String(10, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194); String(10, Chr(196)) + Chr(194) + _
          String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194); String(10, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194); String(10, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)); String(11, Chr(196)) + Chr(191) 'Chr(194) +
           
            vgtot1 = pgtot1:  vgtot2 = pgtot2: vgtot3 = pgtot3: vgtot4 = pgtot4: vgtot5 = pgtot5:  vgtot6 = pgtot6
            pgtot1 = 0: pgtot2 = 0:   pgtot3 = 0:  pgtot4 = 0:  pgtot5 = 0:  pgtot6 = 0
            fgtot1 = 0: fgtot2 = 0: fgtot3 = 0:     fgtot4 = 0:    fgtot5 = 0:    fgtot6 = 0
            ttot1 = 0: ttot2 = 0: ttot3 = 0: ttot4 = 0: ttot5 = 0: ttot6 = 0
            ntot1 = 0:  ntot2 = 0:  ntot3 = 0:   ntot4 = 0: ntot5 = 0: ntot6 = 0
            pttot1 = 0: pttot2 = 0: pttot3 = 0: pttot4 = 0: pttot5 = 0: pttot6 = 0
            pntot1 = 0: pntot2 = 0: pntot3 = 0: pntot4 = 0: pntot5 = 0: pntot6 = 0
            
            co = co + 6
        End If
       
        If rs2!SNO >= 121 Then
        
        
        Else
            
            'Print #A, Space(3) + Chr(179) + Padl((CStr(rs2(0))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(14), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(1), 3), 9, " ") + Chr(179) + Padl((CStr(rs2(2))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(15), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(3), 3), 9, " ") + Chr(179) + Padl((CStr(rs2(4))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(16), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(5), 3), 9, " ") + Chr(179) + Padl((CStr(rs2(6))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(17), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(7), 3), 9, " ") + Chr(179) & _
            Padl((CStr(rs2(8))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(18), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(9), 3), 9, " ") + Chr(179) + Padl(rs2(10), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(19), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(11), 3), 9, " ") + Chr(179)
            
            Print #a, Space(3) + Chr(179) + Padl((CStr(rs2(0))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(1), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(14), 3), 9, " ") + Chr(179) + Padl((CStr(rs2(2))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(3), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(15), 3), 9, " ") + Chr(179) + Padl((CStr(rs2(4))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(5), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(16), 3), 9, " ") + Chr(179) + Padl((CStr(rs2(6))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(7), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(17), 3), 9, " ") + Chr(179) & _
            Padl((CStr(rs2(8))), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(9), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(18), 3), 9, " ") + Chr(179) + Padl(rs2(10), 3, " ") + Space(1) + Chr(179) + Padl(INF(rs2(11), 3), 9, " ") + Chr(179) + Space(1) + Padl(INF(rs2(19), 3), 9, " ") + Chr(179)
            
            fgtot1 = fgtot1 + IIf(IsNull(rs2(1)), 0, rs2(1)): fgtot2 = fgtot2 + IIf(IsNull(rs2(3)), 0, rs2(3))
            fgtot3 = fgtot3 + IIf(IsNull(rs2(5)), 0, rs2(5)): fgtot4 = fgtot4 + IIf(IsNull(rs2(7)), 0, rs2(7))
            fgtot5 = fgtot5 + IIf(IsNull(rs2(9)), 0, rs2(9)): fgtot6 = fgtot6 + IIf(IsNull(rs2(11)), 0, rs2(11))
            
            
            pttot1 = pttot1 + IIf(IsNull(rs2(20)), 0, rs2(20)): pttot2 = pttot2 + IIf(IsNull(rs2(21)), 0, rs2(21))
            pttot3 = pttot3 + IIf(IsNull(rs2(22)), 0, rs2(22)): pttot4 = pttot4 + IIf(IsNull(rs2(23)), 0, rs2(23))
            pttot5 = pttot5 + IIf(IsNull(rs2(24)), 0, rs2(24)):  pttot6 = pttot6 + IIf(IsNull(rs2(25)), 0, rs2(25))
            
            pntot1 = pntot1 + IIf(IsNull(rs2(26)), 0, rs2(26)):  pntot2 = pntot2 + IIf(IsNull(rs2(27)), 0, rs2(27))
            pntot3 = pntot3 + IIf(IsNull(rs2(28)), 0, rs2(28)):  pntot4 = pntot4 + IIf(IsNull(rs2(29)), 0, rs2(29))
            pntot5 = pntot5 + IIf(IsNull(rs2(30)), 0, rs2(30)):  pntot6 = pntot6 + IIf(IsNull(rs2(31)), 0, rs2(31))
                    
            pgtot1 = pgtot1 + IIf(IsNull(rs2(14)), 0, rs2(14)):  pgtot2 = pgtot2 + IIf(IsNull(rs2(15)), 0, rs2(15))
            pgtot3 = pgtot3 + IIf(IsNull(rs2(16)), 0, rs2(16)): pgtot4 = pgtot4 + IIf(IsNull(rs2(17)), 0, rs2(17))
            pgtot5 = pgtot5 + IIf(IsNull(rs2(18)), 0, rs2(18)):  pgtot6 = pgtot6 + IIf(IsNull(rs2(19)), 0, rs2(19))
            
            ntot1 = ntot1 + IIf(IsNull(rs2(32)), 0, rs2(32)): ntot2 = ntot2 + IIf(IsNull(rs2(33)), 0, rs2(33))
            ntot3 = ntot3 + IIf(IsNull(rs2(34)), 0, rs2(34)): ntot4 = ntot4 + IIf(IsNull(rs2(35)), 0, rs2(35))
            ntot5 = ntot5 + IIf(IsNull(rs2(36)), 0, rs2(36)): ntot6 = ntot6 + IIf(IsNull(rs2(37)), 0, rs2(37))
            
            ttot1 = ttot1 + IIf(IsNull(rs2(38)), 0, rs2(38)):  ttot2 = ttot2 + IIf(IsNull(rs2(39)), 0, rs2(39))
            ttot3 = ttot3 + IIf(IsNull(rs2(40)), 0, rs2(40)):  ttot4 = ttot4 + IIf(IsNull(rs2(41)), 0, rs2(41))
            ttot5 = ttot5 + IIf(IsNull(rs2(42)), 0, rs2(42)): ttot6 = ttot6 + IIf(IsNull(rs2(43)), 0, rs2(43))
            
            
           co = co + 1
        
        End If
        
        
        
        If co > PageLen Then
            'Print #A,
            Print #a, Chr(12)
            co = 0
            pg1 = pg1 + 1
            Print #a, Chr(18)
            Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
            Print #a, Space(5) + Space(20) + Chr(27) + "E" + CENTRE("MILL", 40, "") + Chr(27) + "F" + Space(14) + "Pg :"; pg1
            Print #a,
            Print #a,
            co = 5
        End If
        
        rec = rec + 1
    rs2.MoveNext
    Loop
   B = 0
   '*********************************
           
           Print #a, Space(3) + Chr(192) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + _
           String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(193) + String(4, Chr(196)) + Chr(193) + String(9, Chr(196)) + Chr(193) + String(10, Chr(196)) + Chr(217)
                      
           
           Print #a, Space(4) + "G.WT" + Padl(INF(fgtot1, 3), 10, " ") + Space(0) + Padl(INF(pgtot1, 3), 12, " ") + Space(2) + Padl(INF(fgtot2, 3), 12, " ") + Space(0) + Padl(INF(pgtot2, 3), 12, " "); Space(2) + Padl(INF(fgtot3, 3), 12, " ") + Space(0) + Padl(INF(pgtot3, 3), 12, " ") + Space(2) + Padl(INF(fgtot4, 3), 12, " ") + Space(0) + Padl(INF(pgtot4, 3), 12, " ") + Space(2) + Padl(INF(fgtot5, 3), 12, " ") + Space(0) + Padl(INF(pgtot5, 3), 12, " ") + Space(2) + Padl(INF(fgtot6, 3), 12, " ") + Space(0) + Padl(INF(pgtot6, 3), 12, " ")
           Print #a, Space(4) + "T.WT" + Padl(INF(pttot1, 3), 10, " ") + Space(0) + Padl(INF(ttot1, 3), 12, " ") + Space(2) + Padl(INF(pttot2, 3), 12, " ") + Space(0) + Padl(INF(ttot2, 3), 12, " "); Space(2) + Padl(INF(pttot3, 3), 12, " ") + Space(0) + Padl(INF(ttot3, 3), 12, " ") + Space(2) + Padl(INF(pttot4, 3), 12, " ") + Space(0) + Padl(INF(ttot4, 3), 12, " ") + Space(2) + Padl(INF(pttot5, 3), 12, " ") + Space(0) + Padl(INF(ttot5, 3), 12, " ") + Space(2) + Padl(INF(pttot6, 3), 12, " ") + Space(0) + Padl(INF(ttot6, 3), 12, " ")
           Print #a, Space(4) + "N.WT" + Padl(INF(pntot1, 3), 10, " ") + Space(0) + Padl(INF(ntot1, 3), 12, " ") + Space(2) + Padl(INF(pntot2, 3), 12, " ") + Space(0) + Padl(INF(ntot2, 3), 12, " "); Space(2) + Padl(INF(pntot3, 3), 12, " ") + Space(0) + Padl(INF(ntot3, 3), 12, " ") + Space(2) + Padl(INF(pntot4, 3), 12, " ") + Space(0) + Padl(INF(ntot4, 3), 12, " ") + Space(2) + Padl(INF(pntot5, 3), 12, " ") + Space(0) + Padl(INF(ntot5, 3), 12, " ") + Space(2) + Padl(INF(pntot6, 3), 12, " ") + Space(0) + Padl(INF(ntot6, 3), 12, " ")
                     
    co = co + 4
    
    Set rss = New Recordset
    rss.Open "SELECT netwt from rm_arrival WHERE lotno=" & rsfirst("lotno") & " AND DIVCODE='" & Divcode & "'", Cnn, adOpenDynamic, adLockOptimistic
    bb = 0
    If rss.RecordCount > 0 Then
        bb = (netwt - rss(0))
    End If
       
    rateperkg = RATECY / 3.556187
    cotval = (netwt * rateperkg) / 100
    netvalue = cotval + Taxamt + ldgulg:     partybill = 0:    diffwt = 0:    diff = 0
   
    pcotval = (netwt * rateperkg) / 100:     pnetvalue = pcotval + Taxamt + ldgulg:    diff = Round(netvalue - pnetvalue, 2):    diffwt = Abs(netwt - netwt)
   
    If co >= PageLen Then
        Print #a, Chr(12)
        co = 0
        pg1 = pg1 + 1
        Print #a, Chr(18)
        Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
        Print #a, Space(5) + Space(20) + Chr(27) + "E" + CENTRE("MILL", 40, "") + Chr(27) + "F" + Space(14) + "Pg :"; pg1
        Print #a,
        Print #a,
        co = 5
    End If
    
    Set rsa = New Recordset
    rsa.Open "SELECT ISNULL(totlandcost,0) AS FBILLVALUE FROM RM_LOT WHERE LOTNO='" & rsfirst("LOTNO") & "' AND LOTDT='" & Format(rsfirst("LOTDT"), "YYYY-MM-DD") & "' AND LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", DB
    
    If rsa.EOF = False Then
       If rsa("FBILLVALUE") <> 0 Then
            totalvalue = rsa("FBILLVALUE")
       Else
            totalvalue = freght + pjamt + Taxamt
       End If
    Else
        totalvalue = freght + pjamt + Taxamt
    End If
    
    Set varrs = New Recordset
    varrs.Open "SELECT DISTINCT a.varcode,a.lotno,A.DIVCODE," & _
        " bales as Quantity,grswgt as grosswt,tarewt,netwt,(select varname from RM_VAR where varcode=a.varcode) varname " & _
        " FROM RM_LOT A WHERE  LOTTYPE = '" & lottype & "' and " & _
        " A.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and " & _
        " A.arrno = '" & From_Lotno & "' and a.lottype='" & lottype & "' and opflg<>'Y' order by a.lotno,a.varcode ", Cnn, adOpenDynamic, adLockOptimistic
       
    If varrs.RecordCount > 0 Then
    Y = 1
    varrs.MoveFirst
    
    Do While Not varrs.EOF
    
            If Y = 1 Then
                v1 = varrs!VarName: vq1 = varrs!Quantity: vgr1 = varrs!GROSSWT
                vtr1 = varrs!TAREWT:    vne1 = varrs!netwt
            End If
            
            If Y = 2 Then
                v2 = varrs!VarName: vq2 = varrs!Quantity:     vgr2 = varrs!GROSSWT
                vtr2 = varrs!TAREWT: vne2 = varrs!netwt
            End If
            
            If Y = 3 Then
                v3 = varrs!VarName:   vq3 = varrs!Quantity
                vgr3 = varrs!GROSSWT:   vtr3 = varrs!TAREWT:   vne3 = varrs!netwt
            End If
            
            If Y = 4 Then
                v4 = varrs!VarName: vq4 = varrs!Quantity:     vgr4 = varrs!GROSSWT
                vtr4 = varrs!TAREWT:    vne4 = varrs!netwt
            End If
            
            If Y = 5 Then
                v5 = varrs!VarName:   vq5 = varrs!Quantity
                vgr5 = varrs!GROSSWT:  vtr5 = varrs!TAREWT:     vne5 = varrs!netwt
            End If
            
            If Y = 6 Then
                v6 = varrs!VarName:   vq6 = varrs!Quantity
                vgr6 = varrs!GROSSWT:  vtr6 = varrs!TAREWT:     vne6 = varrs!netwt
            End If
            If Y = 7 Then
                v7 = varrs!VarName:   vq7 = varrs!Quantity
                vgr7 = varrs!GROSSWT:  vtr7 = varrs!TAREWT:     vne7 = varrs!netwt
            End If
            If Y = 8 Then
                v8 = varrs!VarName:   vq8 = varrs!Quantity
                vgr8 = varrs!GROSSWT:  vtr8 = varrs!TAREWT:     vne8 = varrs!netwt
            End If
            
            Y = Y + 1
    varrs.MoveNext
    Loop
    
    End If
    
    
    Print #a, Space(3) + Chr(27) + "E" + "DIFFERENCE DETAILS" + Chr(27) + "F" + Space(57) + Chr(27) + "E" + "SUMMARY" + Chr(27) + "F"  '1
    Print #a, Space(3) + String(64, "-") + Space(11) + String(78, "-")
    Print #a, Space(3) + "|" + Space(15) + "|  AS PER PARTY |  AS PER MILLS |     DIFF      |" + Space(10) + "|VARIETY          |BALES |   GROSS WEIGHT|   TARE WEIGHT|    NET WEIGHT| SRFNO|"
    Print #a, Space(3) + String(64, "-") + Space(11) + String(78, "-")
    Print #a, Space(3) + "|NO.OF.BRS/BALES|" + Padl(INF(Quantity, 3), 15, " ") + "|" + Padl(INF(Quantity, 3), 15, " ") + "|" + Space(15) + "|" + Space(10) + "|" + Padr(v1, 17, "") + "|" + Padl(vq1, 6, "") + "|" + Padl(INF(vgr1, 3), 14, "") + "|" + Padl(INF(vtr1, 3), 15, "") + "|" + Padl(INF(vne1, 3), 14, "") + "|" + Space(6) + "|"
       
   DIFFGR = Abs(PGRSWT - GROSSWT):   DIFFTA = Abs(PTAREWT - TAREWT):   DIFFNET = Abs(PNETWT - netwt)
   diffwt = Abs(rs1("netwt") - rs1("FNETWT")):    diff = Round(Format(totalvalue, "0.00") - Format(rsa("fbillvalue"), "0.00"), 2)
    Print #a, Space(3) + "|GROSS WEIGHT   |" + Padl(INF(GROSSWT, 3), 15, " ") + "|" + Padl(INF(PGRSWT, 3), 15, " ") + "|" + Padl(INF(DIFFGR, 3), 15, " ") + "|" + Space(10) + "|" + Padr(v2, 17, "") + "|" + Padl(vq2, 6, "") + "|" + Padl(INF(vgr2, 3), 14, "") + "|" + Padl(INF(vtr2, 3), 15, "") + "|" + Padl(INF(vne2, 3), 14, "") + "|" + Space(6) + "|"
    Print #a, Space(3) + "|TARE WEIGHT    |" + Padl(INF(TAREWT, 3), 15, " ") + "|" + Padl(INF(PTAREWT, 3), 15, " ") + "|" + Padl(INF(DIFFTA, 3), 15, " ") + "|" + Space(10) + "|" + Padr(v3, 17, "") + "|" + Padl(vq3, 6, "") + "|" + Padl(INF(vgr3, 3), 14, "") + "|" + Padl(INF(vtr3, 3), 15, "") + "|" + Padl(INF(vne3, 3), 14, "") + "|" + Space(6) + "|"
    Print #a, Space(3) + "|NETT WEIGHT    |" + Padl(INF(netwt, 3), 15, " ") + "|" + Padl(INF(PNETWT, 3), 15, " ") + "|" + Padl(INF(DIFFNET, 3), 15, " ") + "|" + Space(10) + "|" + Padr(v4, 17, "") + "|" + Padl(vq4, 6, "") + "|" + Padl(INF(vgr4, 3), 14, "") + "|" + Padl(INF(vtr4, 3), 15, "") + "|" + Padl(INF(vne4, 3), 14, "") + "|" + Space(6) + "|"
    Print #a, Space(3) + String(64, "-") + Space(1) + Space(10) + "|" + Padr(v5, 17, "") + "|" + Padl(vq5, 6, "") + "|" + Padl(INF(vgr5, 3), 14, "") + "|" + Padl(INF(vtr5, 3), 15, "") + "|" + Padl(INF(vne5, 3), 14, "") + "|" + Space(6) + "|"
    co = co + 9
    If co >= PageLen Then
        Print #a, Chr(12)
        co = 0
        pg1 = pg1 + 1
        Print #a, Chr(18)
        Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
        Print #a, Space(5) + Space(20) + Chr(27) + "E" + CENTRE("MILL", 40, "") + Chr(27) + "F" + Space(14) + "Pg :"; pg1
        Print #a,
        Print #a,
        co = 5
    End If
    
    'Print #a, Space(3) + Chr(27) + "E" + "WEIGHT BRIDGE DETAILS" + Chr(27) + "F" + Space(15) + "AS PER PARTY    " + "AS PER MILL      " + Space(6) + "|" + Space(17) + "|" + Space(6) + "|" + Space(14) + "|" + Space(15) + "|" + Space(14) + "|" + Space(6) + "|" '1
''    Print #a, Space(3) + Chr(27) + "E" + "WEIGHT BRIDGE DETAILS" + Chr(27) + "F" + Space(15) + "AS PER PARTY    " + "AS PER MILL      " + Space(6) + "|" + Padr(v6, 17, "") + "|" + Padl(vq6, 6, "") + "|" + Padl(INF(vgr6, 3), 14, "") + "|" + Padl(INF(vtr6, 3), 15, "") + "|" + Padl(INF(vne6, 3), 14, "") + "|" + Space(6) + "|"
''
''    Print #a, Space(3) + String(65, "-") + Space(10) + "|" + Padr(v7, 17, "") + "|" + Padl(vq7, 6, "") + "|" + Padl(INF(vgr7, 3), 14, "") + "|" + Padl(INF(vtr7, 3), 15, "") + "|" + Padl(INF(vne7, 3), 14, "") + "|" + Space(6) + "|"  '+ Space(17) + "|" + Space(6) + "|"
''    Print #a, Space(3) + "|LOAD WEIGHT    |" + Padl(INF(wloadwt, 3), 15, " ") + "|" + Space(15) + "|" + Space(15) + "|" + Space(10) + "|" + Padr(v8, 17, "") + "|" + Padl(vq8, 6, "") + "|" + Padl(INF(vgr8, 3), 14, "") + "|" + Padl(INF(vtr8, 3), 15, "") + "|" + Padl(INF(vne8, 3), 14, "") + "|" + Space(6) + "|"
''    Print #a, Space(3) + "|EMPTY WEIGHT   |" + Padl(INF(wempwt, 3), 15, " ") + "|" + Space(15) + "|" + Space(15) + "|" + Space(10) + String(78, "-")
''    Print #a, Space(3) + "|GROSS WEIGHT   |" + Padl(INF(wgrswt, 3), 15, " ") + "|" + Padl(INF(Abs(wgrswt - GROSSWT), 3), 15, " ") + "|" + Padl(INF(Abs(wgrswt - PGRSWT), 3), 15, " ") + "|"
''    Print #a, Space(3) + "|TARE WEIGHT    |" + Padl(INF(wtarewt, 3), 15, " ") + "|" + Padl(INF(Abs(wtarewt - TAREWT), 3), 15, " ") + "|" + Padl(INF(Abs(wtarewt - PTAREWT), 3), 15, " ") + "|"
''    Print #a, Space(3) + "|NETT WEIGHT    |" + Padl(INF(wnetwt, 3), 15, " ") + "|" + Padl(INF(Abs(wnetwt - netwt), 3), 15, " ") + "|" + Padl(INF(Abs(wnetwt - PNETWT), 3), 15, " ") + "|"
''    Print #a, Space(3) + "|W.BRIDGE REFNO |" + Padl(wbrirefno, 15, " ") + "|" + Space(15) + "|" + Space(15) + "|"
    Print #a, Space(3) + String(65, "-")
    Print #a, Chr(18)
    Print #a,
    Print #a,
    Print #a,
    Call footermod(CInt(a), Frmlotbale.UserFooter1.SelectedStr, 135)
    'Print #a, Chr(27) & "E" & Space(12) + "Prepared By                    Checked By                Factory Manager" & Chr(27) & "F"
    co = co + 14
    tot1 = 0: tot2 = 0:   tot3 = 0: tot4 = 0:    tot5 = 0:    tot6 = 0
   
    If co >= PageLen Then
        Print #a, Chr(12)
        co = 0
    Else
        Print #a,
        co = 0
    End If
    pstrarrival = rsfirst!Arrno
  End If
    pstrarrival = rsfirst!Arrno
    
   rsfirst.MoveNext
        'Print #a, Chr(12)
        pg1 = pg1 + 1

Loop

DB.Execute "drop table ACH"
Print #a, Chr(18)
Close #a
a = FreeFile
'Open "c:\recpt_reg_dt1.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type recpt_reg_dt1.txt>PRN"
'Close #a
'RPTV.txtfile = "C:\recpt_reg_dt1.TXT"
'RPTV.Batfile = "c:\recpt_reg_dt1.bat"
Call KALBATPROCESS("recpt_reg_dt1")
End Sub

Private Sub f1(rsvarcode)
Dim gr As Integer

 vah1 = "": vah2 = "": vah3 = "": vah4 = "": vah5 = "": vah6 = "": vah7 = "": lot1 = "": lot2 = "": lot3 = "": lot4 = "": lot5 = "": lot6 = "": lot7 = "": s1 = "": s2 = "": s3 = "": s4 = "": s5 = "": s6 = "": s7 = ""
 vah8 = "": vah9 = "": vah10 = "": vah11 = "": vah12 = "":   lot8 = "": lot9 = "": lot10 = "": lot11 = "": lot12 = "":  s8 = "": s9 = "": s10 = "": s11 = "": s12 = "":
 
If rsvarcode.EOF = False Then rsvarcode.MoveFirst
    
    Do While Not rsvarcode.EOF
        gr = gr + 1
        'vah1, vah2, vah3, vah4, vah5
        If gr <= 10 Then 'rsvarcode!baleno
          If s1 = "" Then
            'vah1 = rsvarcode("VARNAME"):   lot1 = rsvarcode!lotno: s1 = rsvarcode("VARNAME")
            vah1 = rsvarcode("VARNAME"):   lot1 = rsvarcode!LOTNO: s1 = rsvarcode!LOTNO
          ElseIf s1 <> rsvarcode!LOTNO Then
            gr = 11
            vah2 = rsvarcode("VARNAME"):   lot2 = rsvarcode!LOTNO: s2 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 10 And gr <= 20 Then
          If s2 = "" Then
            vah2 = rsvarcode("VARNAME"):   lot2 = rsvarcode!LOTNO: s2 = rsvarcode!LOTNO
          ElseIf s2 <> rsvarcode!LOTNO Then
            gr = 21
            vah3 = rsvarcode("VARNAME"):   lot3 = rsvarcode!LOTNO: s3 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 20 And gr <= 30 Then
          If s3 = "" Then
            vah3 = rsvarcode("VARNAME"):   lot3 = rsvarcode!LOTNO: s3 = rsvarcode!LOTNO
          ElseIf s3 <> rsvarcode!LOTNO Then
            gr = 31
            vah4 = rsvarcode("VARNAME"):   lot4 = rsvarcode!LOTNO: s4 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 30 And gr <= 40 Then
          If s4 = "" Then
            vah4 = rsvarcode("VARNAME"):   lot4 = rsvarcode!LOTNO: s4 = rsvarcode!LOTNO
          ElseIf s4 <> rsvarcode!LOTNO Then
            gr = 41
            vah5 = rsvarcode("VARNAME"):   lot5 = rsvarcode!LOTNO: s5 = rsvarcode!LOTNO
          End If
        End If
        
         If gr > 40 And gr <= 50 Then
          If s5 = "" Then
            vah5 = rsvarcode("VARNAME"):   lot5 = rsvarcode!LOTNO: s5 = rsvarcode!LOTNO
          ElseIf s5 <> rsvarcode!LOTNO Then
            gr = 51
            vah6 = rsvarcode("VARNAME"):   lot6 = rsvarcode!LOTNO: s6 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 50 And gr <= 60 Then
          If s6 = "" Then
            vah6 = rsvarcode("VARNAME"):   lot6 = rsvarcode!LOTNO: s6 = rsvarcode!LOTNO
          ElseIf s6 <> rsvarcode!LOTNO Then
            gr = 61
            vah7 = rsvarcode("VARNAME"):   lot7 = rsvarcode!LOTNO: s7 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 60 And gr <= 70 Then 'rsvarcode!baleno
          If s7 = "" Then
            vah7 = rsvarcode("VARNAME"):   lot7 = rsvarcode!LOTNO: s7 = rsvarcode!LOTNO
          ElseIf s7 <> rsvarcode!LOTNO Then
            gr = 71
            vah8 = rsvarcode("VARNAME"):   lot8 = rsvarcode!LOTNO: s8 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 70 And gr <= 80 Then
          If s8 = "" Then
            vah8 = rsvarcode("VARNAME"):   lot8 = rsvarcode!LOTNO: s8 = rsvarcode!LOTNO
          ElseIf s8 <> rsvarcode!LOTNO Then
            gr = 81
            vah9 = rsvarcode("VARNAME"):   lot9 = rsvarcode!LOTNO: s9 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 80 And gr <= 90 Then
          If s9 = "" Then
            vah9 = rsvarcode("VARNAME"):   lot9 = rsvarcode!LOTNO: s9 = rsvarcode!LOTNO
          ElseIf s9 <> rsvarcode!LOTNO Then
            gr = 91
            vah10 = rsvarcode("VARNAME"):   lot10 = rsvarcode!LOTNO: s10 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 90 And gr <= 100 Then
          If s10 = "" Then
            vah10 = rsvarcode("VARNAME"):   lot10 = rsvarcode!LOTNO: s10 = rsvarcode!LOTNO
          ElseIf s10 <> rsvarcode!LOTNO Then
            gr = 101
            vah11 = rsvarcode("VARNAME"):   lot11 = rsvarcode!LOTNO: s11 = rsvarcode!LOTNO
          End If
        End If
        
         If gr > 100 And gr <= 110 Then
          If s11 = "" Then
            vah11 = rsvarcode("VARNAME"):   lot11 = rsvarcode!LOTNO: s11 = rsvarcode!LOTNO
          ElseIf s11 <> rsvarcode!LOTNO Then
            gr = 111
            vah12 = rsvarcode("VARNAME"):   lot12 = rsvarcode!LOTNO: s12 = rsvarcode!LOTNO
          End If
        End If
        
        If gr > 110 And gr <= 120 Then
          'If s6 = "" Then
            vah12 = rsvarcode("VARNAME"):   lot12 = rsvarcode!LOTNO: s12 = rsvarcode!LOTNO
          'ElseIf s5 <> rsvarcode("VARNAME") Then
           ' vah6 = rsvarcode("VARNAME"):   lot6 = rsvarcode!lotno: s6 = rsvarcode("VARNAME")
          'End If
        End If
        
       rsvarcode.MoveNext
    Loop
    
End Sub
Public Sub LotPrintHead(pg1 As Integer, e As Double) ', co As Integer, u As String, v As String)

          Print #a, Space(4) + String(155, "-")
          Print #a, Space(3) + "|S.No|     P.WT|      M.WT|S.No|     P.WT|      M.WT|S.No|     P.WT|      M.WT|S.No|     P.WT|      M.WT|S.No|     P.WT|      M.WT|S.No|     P.WT|      M.WT|"
          Print #a, Space(4) + String(155, "-")
        

End Sub
Private Sub f3()

End Sub

