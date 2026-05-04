Attribute VB_Name = "DetIss"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim e As Double
Dim a As Integer
Dim co As Integer
Dim DIVNAME As String
Dim aa(10) As Variant
Dim bb As Double
Dim cnn As Connection
Dim Count As Integer
Public Sub Detailed_Issue_Header(pg1 As Integer, e As Double)
    'Print #A, Space(4) + Chr(218) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + _
     String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(191)
     
    Print #a, Space(4) + Chr(218) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + _
    String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(191)
    
    Print #a, Space(4) + Chr(179) + "BNo" + Chr(179) + "   Kgs " + Chr(179) + "I.Dt." + Chr(179) + "BNo" + Chr(179) + "   Kgs " + Chr(179) + "I.Dt." + Chr(179) + "BNo" + Chr(179) + "   Kgs " + _
    Chr(179) + "I.Dt." + Chr(179) + "BNo" + Chr(179) + "   Kgs " + Chr(179) + "I.Dt." + Chr(179) + "BNo" + Chr(179) + "   Kgs " + Chr(179) + "I.Dt." + Chr(179) + "BNo" + Chr(179) + "   Kgs " + Chr(179) + "I.Dt." + Chr(179)
    
    'Print #A, Space(4) + Chr(195); String(4, Chr(196)) + Chr(197) + String(9, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(9, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(9, Chr(196)) + Chr(197) + _
    String(4, Chr(196)) + Chr(197) + String(9, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(9, Chr(196)) + Chr(197) + String(4, Chr(196)) + Chr(197) + String(9, Chr(196)) + Chr(180)
    
    Print #a, Space(4) + Chr(195) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + _
    String(5, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(3, Chr(196)) + Chr(197) + String(7, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(180)
    co = co + 3
End Sub
Public Sub DetIss(From_Date As String, To_Date As String, DIVNAME As String, supp As String, From_Lotno As String, To_Lotno As String)
Dim RS1 As Recordset
Dim RS As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim temp As New Recordset
Dim pagelen As Integer
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
Dim netvalue As Double
Dim partybill As Double
Dim diff As Double
Dim head As String
Dim s As String
Dim r As String
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
pagelen = 56
Set RS1 = New Recordset
cnn.Open connectstring
5

Set RPTV = New Report.ReportView
a = FreeFile
Close
Open "C:\recpt_reg_dt.TXT" For Output As #a
pg1 = 1
co = 0
Set rs4 = New Recordset
rs4.Open "select * from sysobjects where name ='ACH'", DB, adOpenStatic, adLockBatchOptimistic
If rs4.RecordCount > 0 Then
    DB.Execute "drop table ach"
End If
'db.Execute "create table ACH (b1 numeric(5,0),g1 numeric(10,3),d1 varchar(10),b2 numeric(5,0),g2 numeric(10,3),d2 datetime,b3 numeric(5,0),g3 numeric(10,3),d3 datetime,b4 numeric(5,0),g4 numeric(10,3),d4 datetime,b5 numeric(5,0),g5 numeric(10,3),d5 datetime,b6 numeric(5,0),g6 numeric(10,3),d6 datetime,LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(5,0),sno numeric(6))"
DB.Execute "create table ACH (b1 numeric(5,0),g1 numeric(10,3),d1 varchar(10),b2 numeric(5,0),g2 numeric(10,3),d2 varchar(10),b3 numeric(5,0),g3 numeric(10,3),d3 varchar(10),b4 numeric(5,0),g4 numeric(10,3),d4 varchar(10),b5 numeric(5,0),g5 numeric(10,3),d5 varchar(10),b6 numeric(5,0),g6 numeric(10,3),d6 varchar(10),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(5,0),sno numeric(6))"
Set RS1 = New Recordset
RS1.Open "select DISTINCT a.catcd,B.lotno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,a.freight,a.plotno,a.plotdt,a.brkcd,a.areacode,a.varcode,a.cntcode,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.pjamt,b.billno,b.billdt,b.ldgulg,b.ptywgt,b.insamt,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost,c.dlytype,a.carcode,0 as PNETWT,0 as PGRSWT,0 as PTAREWT,b.lotdt,0 as pono,0 as podt,b.ratekg*355.6187 as ratecandy,B.lotDT,a.carcode,b.freght,isnull(b.taxamt,0) as taxamt,a.contno from rm_arrival a,rm_lot b,rm_cont c where  a.divcode='" & Divcode & "' and a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
         " and b.lottype='A' and a.contno=c.contno and a.contdt=c.contdt", cnn, adOpenDynamic, adLockOptimistic
If RS1.RecordCount = 0 Then
    MsgBox "No Records Found For this Period", vbInformation, head
     DB.Execute "drop table ACH"
    Close #a
    Exit Sub
End If
RS1.MoveFirst
Print #a,
Do While Not RS1.EOF
    If co > pagelen Then
        Print #a,
        Print #a, Chr(12)
        co = 0
        pg1 = pg1 + 1
        
        
    End If
   ' Print #A,
    Print #a, Chr(18)
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
    Print #a,
    '----
        Set RS = New Recordset
        RS.Open "select ADD1,ADD2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST  from pp_divmas where divcode ='" & Divcode & "'", DB, adOpenStatic
         Set rs3 = New Recordset
         rs3.Open "select slname from fa_slmas where slcode='" & RS1("SUPCD") & "'", cn, adOpenDynamic, adLockOptimistic
         Print #a, Space(50) & Chr(14) + "LOT NO : " + CStr(RS1("LOTNO")) '+ "/" + CStr(RS1("lotyear"))
         Print #a,
         head = Chr(14) + Chr(27) + "E" + rs3!Slname + Chr(27) + "F"
        ' Print #A, Chr(27) + "E" + CENTRE(rs3!slname, 85, " ") + Chr(27) + "F" + Chr(27) & Chr(205) & Chr(27) & Chr(77)
        Print #a, CENTRE(head, 85, " ") + Chr(27) & Chr(205) & Chr(27) & Chr(77)
         suppliern = rs3!Slname
         'Exit Sub
         Print #a,
         co = co + 7
        If co > pagelen Then
           Print #a,
            Print #a, Chr(12)
            co = 0
            pg1 = pg1 + 1
        End If
        Set rs4 = New Recordset
        If IsNull(RS1!carcode) Then
            transname = Space(20)
        Else
            rs4.Open "select distinct carname from po_car where carcode='" & RS1!carcode & "'", cnn, adOpenDynamic, adLockOptimistic
            If Not rs4.EOF Then transname = Padr(rs4!carname, 20, " ")
        End If
        
        Set rs5 = New Recordset
        rs5.Open "select distinct dlytype from rm_cont where  divcode='" & Divcode & "' and contno='" & RS1!contno & "'", cn, adOpenStatic, adLockBatchOptimistic
        If rs5!dlytype = "M" Then
            purchmode = "FOR"
        ElseIf rs5!dlytype = "S" Then
            purchmode = "SPOT"
        ElseIf rs5!dlytype = Null Or rs5!dlytype = " " Then
            purchmode = Space(15)
        End If
        
        Set rs3 = New Recordset
        rs3.Open "SELECT AREANAME FROM RM_AREA WHERE   AREACODE='" & RS1("AREACODE") & "'", cn, adOpenDynamic, adLockOptimistic
        Print #a, Space(5) + "Variety   :" + Space(1) + Padr(RS1("VARCODE"), 20, " ") + Space(12); "   Received Date         : " + Padr(RS1!arrdate, 12, " ")
        Print #a, Space(5) + "Bales     :" + Space(1) + Padr(INF(RS1("QUANTITY"), 0), 10, " ") + Space(12); "             Date Of Weightment    : " + Padr(RS1!Lotdt, 12, " ")
        Print #a, Space(5) + "P.lot No  :" + Space(1) + Padr(RS1("plotno"), 10, " ") + Space(1) ' Space(48); "Mill Lot. No. & Dt  :"; Padr(RS1("lotno") & Space(1) & "&" & Space(1) & RS1("lotdt"), 30, " ")
        Print #a, Space(5) + "P.R. No   :" + Space(1) + Padr(RS1("prno"), 20, " ") + Space(12); "   Lorry No              : " + Padr(RS1("lorrynos"), 20, " ") 'Space(10); Space(47); "        Press Mark     :"; Padr(rs1("prmark"), 20, " ")
        Print #a, Space(5) + "P.M. No   :" + Space(1) + Padr(RS1("prmark"), 20, " ") + Space(12) + "   P.O.No.               : " + Padr(RS1!contno, 15, " ")
        Print #a, Space(5) + "Mode-Purc :" + Space(1) + Padr(purchmode, 15, " ") + Space(5) + Space(10) + "     Copy No.              : "
        Print #a, Space(5) + "F.Inv.No  :" + Space(1) + Padr(RS1("billno"), 15, " ") + Space(15) + Space(5) + Chr(14) + "Candy Rate : " + Padr(INF(RS1("ratecy"), 0), 20, " ") + Chr(27) & Chr(205) & Chr(27) & Chr(77)
'        Print #A, Space(5) + "Lorry Frt :" + Space(1) + Padr(INF(RS1!freght, 2), 8, " ") + Space(1) + "Trans.Name :" + transname + " Press Name :" + Padr(supplier, 25, " ") + Chr(18)
    
    '============================
    co = co + 8
    gr = 0
    sno = 0
    i = 0
    Set rs2 = New Recordset
    rs2.Open "SELECT distinct grwt,tarewt,netwt,0 as pbaleno,0 as pnetwt,baleno,0 as pGRwt FROM RM_BALE WHERE  divcode='" & Divcode & "' and LOTDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='A' and catcd='" & RS1("catcd") & "' and lotno=" & RS1("lotno") & " order by baleno", cnn, adOpenDynamic, adLockOptimistic
    
    Set rsQRY = New Recordset
    rsQRY.Open "SELECT distinct docdt,lotno,baleno,docno,actisskgs FROM RM_issb WHERE  divcode='" & Divcode & "' and lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='A' and catcd='" & RS1("catcd") & "' and lotno=" & RS1("lotno") & " order by baleno", cnn
    
    Count = rs2.RecordCount + 1
    QryCnt = rsQRY.RecordCount
    If rs2.RecordCount = 0 Then
        Exit Sub
    End If
    e = rs2.RecordCount
    rs2.MoveFirst
    Do While Not rsQRY.EOF
    sno = sno + 1
    gr = gr + 1
    If gr <= 10 Then
        If rsQRY.EOF Then
            DB.Execute "insert into ACH(b1,g1,d1,b2,g2,d2,b3,g3,d3,b4,g4,d4,b5,g5,d5,b6,g6,d6,lottype,catcd,lotno,sno) values (" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & "," & IIf(IsNull(rsQRY("actisskgs")), 0, rsQRY("actisskgs")) & ",NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'A','" & RS1("catcd") & "'," & RS1("lotno") & "," & sno & ")"
        Else
            DB.Execute "insert into ACH(b1,g1,d1,b2,g2,d2,b3,g3,d3,b4,g4,d4,b5,g5,d5,b6,g6,d6,lottype,catcd,lotno,sno) values (" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & "," & IIf(IsNull(rsQRY("actisskgs")), 0, rsQRY("actisskgs")) & ",'" & IIf(IsNull(rsQRY("docdt")), 0, Format(rsQRY("docdt"), "yyyy-mm-dd")) & "',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'A','" & RS1("catcd") & "'," & RS1("lotno") & "," & sno & ")"
        End If
    End If
    If gr > 10 And gr <= 20 Then
    i = (sno - 10)
        If rsQRY.EOF Then
            DB.Execute "update ACH set b2=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g2=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d2=null where sno=" & i & "" ', A
        Else
            DB.Execute "update ACH set b2=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g2=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d2='" & IIf(IsNull(rsQRY("docdt")), 0, Format(rsQRY("docdt"), "yyyy-mm-dd")) & "' where sno=" & i & "" ', A
        End If
       If gr = 60 Then
        gr = 0
       End If
    End If
    If gr > 20 And gr <= 30 Then
    i = (sno - 20)
        If rsQRY.EOF Then
            DB.Execute "update ACH set b3=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g3=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d3=null where sno=" & i & "" ', A
        Else
            DB.Execute "update ACH set b3=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g3=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d3='" & IIf(IsNull(rsQRY("docdt")), 0, Format(rsQRY("docdt"), "yyyy-mm-dd")) & "' where sno=" & i & ""  ', A
        End If
       If gr = 60 Then
        gr = 0
       End If
    End If
    If gr > 30 And gr <= 40 Then
    i = (sno - 30)
        If rsQRY.EOF Then
            DB.Execute "update ACH set b4=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g4=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d4=null where sno=" & i & ""  ', A
        Else
            DB.Execute "update ACH set b4=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g4=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d4='" & IIf(IsNull(rsQRY("docdt")), 0, Format(rsQRY("docdt"), "yyyy-mm-dd")) & "' where sno=" & i & "" ', A
        End If
       If gr = 60 Then
        gr = 0
       End If
    End If
    If gr > 40 And gr <= 50 Then
    i = (sno - 40)
        If rsQRY.EOF Then
            DB.Execute "update ACH set b5=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g5=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d5=null where sno=" & i & "" ', A
        Else
            DB.Execute "update ACH set b5=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g5=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d5='" & IIf(IsNull(rsQRY("docdt")), 0, Format(rsQRY("docdt"), "yyyy-mm-dd")) & "' where sno=" & i & ""  ', A
        End If
       If gr = 60 Then
        gr = 0
       End If
    End If
    If gr > 50 And gr <= 60 Then
    i = (sno - 50)
        If rsQRY.EOF Then
            DB.Execute "update ACH set b6=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g6=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d6=null where sno=" & i & "" ', A
        Else
            DB.Execute "update ACH set b6=" & IIf(IsNull(rsQRY("baleno")), 0, rsQRY("baleno")) & ",g6=" & IIf(IsNull(rsQRY("ACTISSKGS")), 0, rsQRY("ACTISSKGS")) & ",d6='" & IIf(IsNull(rsQRY("docdt")), 0, Format(rsQRY("docdt"), "yyyy-mm-dd")) & "' where sno=" & i & "" ', A
        End If
       If gr = 60 Then
        gr = 0
       End If
    End If
    rsQRY.MoveNext
    'If Not rsQRY.EOF Then
     '   rsQRY.MoveNext
    'End If
    Loop
    pgtot1 = 0
    pgtot2 = 0
    pgtot3 = 0
    pgtot4 = 0
    pgtot5 = 0
    pgtot6 = 0
    b = 0
    Set rs2 = New Recordset
    rs2.Open "SELECT  b1,g1,d1,b2,g2,d2,b3,g3,d3,b4,g4,d4,b5,g5,d5,b6,g6,d6,SNO FROM ACH WHERE lottype='A' and catcd='" & RS1("catcd") & "' and lotno=" & RS1("lotno") & " ORDER BY sno", cnn, adOpenDynamic, adLockOptimistic
    
    Call Detailed_Issue_Header(pg1, e)
    pgtot1 = 0
    tot1 = 0
    pgtot2 = 0
    tot2 = 0
    co = co + 4
    rec = 0
   ' rs2.MoveFirst
    Do While Not rs2.EOF
        If rs2!sno = 61 Then
          Print #a, Space(4) + Chr(192) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + _
          String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + String(6, Chr(196)) + Chr(217)
          
          
          Print #a, Space(4) + Padl(INF(pgtot1, 3), 12, " ") + Space(6) + Padl(INF(pgtot2, 3), 12, " "); Space(6) + Padl(INF(pgtot3, 3), 12, " ") + Space(6) + Padl(INF(pgtot4, 3), 12, " ") + Space(6) + Padl(INF(pgtot5, 3), 12, " ") + Space(6) + Padl(INF(pgtot6, 3), 12, " ")
          
          Print #a, Space(4) + Chr(218) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + _
          String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(3, Chr(196)) + Chr(194) + String(7, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(191)
          totalissue1 = pgtot1 + pgtot2 + pgtot3 + pgtot4 + pgtot5 + pgtot5
    
            pgtot1 = 0
            pgtot2 = 0
            pgtot3 = 0
            pgtot4 = 0
            pgtot5 = 0
            pgtot6 = 0
            co = co + 3
        End If
        'Print #A, Space(4) + Chr(179) + Padl((CStr(rs2("b1"))), 3, " ") + Chr(179) + Padl(INF(rs2("g1"), 3), 7, " ") + Chr(179) + Padl(Format(rs2("d1"), "dd/mm"), 5, " ") + Chr(179) + Padl((CStr(rs2("b2"))), 3, " ") + Chr(179) + Padl(INF(rs2("g2"), 3), 7, " ") + Chr(179) + Padl(Format(rs2("d2"), "dd/mm"), 5, " ") + Chr(179) + Padl((CStr(rs2("b3"))), 3, " ") + Chr(179) + Padl(INF(rs2("g3"), 3), 7, " ") + Chr(179) + Padl(Format(rs2("d3"), "dd/mm"), 5, " ") + Chr(179) + Padl((CStr(rs2("b4"))), 3, " ") + Chr(179) + Padl(INF(rs2("g4"), 3), 7, " ") + Chr(179) + Padl(Format(rs2("d4"), "dd/mm"), 5, " ") + Chr(179) + Padl((CStr(rs2("b5"))), 3, " ") + Chr(179) + Padl(INF(rs2("g5"), 3), 7, " ") + Chr(179) + Padl(Format(rs2("d5"), "dd/mm"), 5, " ") + Chr(179) + Padl(rs2("b6"), 3, " ") + Chr(179) + Padl(INF(rs2("g6"), 3), 7, " ") + Chr(179) + Padl(Format(rs2("d6"), "dd/mm"), 5, " ") + Chr(179)
        
        Print #a, Space(4) + Chr(179) + Padl((CStr(rs2("b1"))), 3, " ") + Chr(179) + Padl(INF(rs2("g1"), 3), 7, " ") + Chr(179) + Padl(IIf(IsNull(rs2("d1")) Or rs2("d1") = "0", " - ", Format(rs2("d1"), "dd/mm")), 5, " ") + Chr(179) + Padl((CStr(rs2("b2"))), 3, " ") + Chr(179) + Padl(INF(rs2("g2"), 3), 7, " ") + Chr(179) + Padl(IIf(IsNull(rs2("d2")) Or rs2("d6") = "0", " - ", Format(rs2("d2"), "dd/mm")), 5, " ") + Chr(179) + Padl((CStr(rs2("b3"))), 3, " ") + Chr(179) + Padl(INF(rs2("g3"), 3), 7, " ") + Chr(179) + Padl(IIf(IsNull(rs2("d3")) Or rs2("d3") = "0", " - ", Format(rs2("d3"), "dd/mm")), 5, " ") + Chr(179) + Padl((CStr(rs2("b4"))), 3, " ") + Chr(179) + Padl(INF(rs2("g4"), 3), 7, " ") + Chr(179) + Padl(IIf(IsNull(rs2("d4")) Or rs2("d6") = "0", " - ", Format(rs2("d4"), "dd/mm")), 5, " ") + Chr(179) + Padl((CStr(rs2("b5"))), 3, " ") + Chr(179) + Padl(INF(rs2("g5"), 3), 7, " ") + Chr(179) + _
        Padl(IIf(IsNull(rs2("d5")) Or rs2("d5") = "0", " - ", Format(rs2("d5"), "dd/mm")), 5, " ") + Chr(179) + Padl(rs2("b6"), 3, " ") + Chr(179) + Padl(INF(rs2("g6"), 3), 7, " ") + Chr(179) + Padl(IIf(IsNull(rs2("d6")) Or rs2("d6") = "0", " - ", Format(rs2("d6"), "dd/mm")), 5, " ") + Chr(179)
        pgtot1 = pgtot1 + IIf(IsNull(rs2("g1")), 0, rs2("g1"))
        pgtot2 = pgtot2 + IIf(IsNull(rs2("g2")), 0, rs2("g2"))
        pgtot3 = pgtot3 + IIf(IsNull(rs2("g3")), 0, rs2("g3"))
        pgtot4 = pgtot4 + IIf(IsNull(rs2("g4")), 0, rs2("g4"))
        pgtot5 = pgtot5 + IIf(IsNull(rs2("g5")), 0, rs2("g5"))
        pgtot6 = pgtot6 + IIf(IsNull(rs2("g6")), 0, rs2("g6"))
        co = co + 1
        rec = rec + 1
    rs2.MoveNext
    Loop
   b = 0
   '*********************************
           Print #a, Space(4) + Chr(192) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + _
           String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(3, Chr(196)) + Chr(193) + String(7, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(217)
           
           Print #a, Space(4) + Padl(INF(pgtot1, 3), 12, " ") + Space(6) + Padl(INF(pgtot2, 3), 12, " "); Space(6) + Padl(INF(pgtot3, 3), 12, " ") + Space(6) + Padl(INF(pgtot4, 3), 12, " ") + Space(6) + Padl(INF(pgtot5, 3), 12, " ") + Space(6) + Padl(INF(pgtot6, 3), 12, " ")
           Print #a,
          'Print #A, Space(4) + Chr(218) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + _
           'String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(194) + String(4, Chr(196)) + Chr(194) + String(9, Chr(196)) + Chr(191)
    
          
            co = co + 3
    Set rss = New Recordset
    'rss.Open "SELECT netwt from rm_arrival WHERE lotno=" & RS1("lotno") & " ", cnn, adOpenDynamic, adLockOptimistic
    rss.Open "select l.ratekg,l.netwt,l.pgrswt,l.ptarewt from rm_lot l where l.divcode='" & Divcode & "' and  lotno=" & RS1("lotno") & "", cnn, adOpenStatic
    bb = (RS1("NETWT") - rss(0))
    '--  Rate per Quintal = (candyrate / 355.6187) * 100
    '--  Rate per KG      = candyrate / 355.6187
    '--  Cotton Value     = Net Weight * Rate per KG
    totalissue2 = pgtot1 + pgtot2 + pgtot3 + pgtot4 + pgtot5 + pgtot5
    totalissue3 = totalissue1 + totalissue2
    
    'rateperkg = RS1("ratecy") / 3.556187
    cottonvalue = totalissue3 * rss("Ratekg")
    cotval = (RS1!netwt * rateperkg) / 100
    netvalue = cotval + RS1!Taxamt + RS1!ldgulg
    partybill = 0
    diff = netvalue - partybill
    If co >= pagelen Then
        Print #a, Chr(12)
        pg1 = pg1 + 1
    End If
    
    'Print #A,
   ' Print #a, Space(3) + "Gross Weight   :"; Padl(INF(RS1("GROSSWT"), 3), 15, " ") + Space(18) + "Rate/Qtl      : "; Padl(INF(rateperkg, 2), 13, " ")
    'Print #a, Space(3) + "Tare Weight    :"; Padl(INF(RS1("TAREWT"), 3), 15, " ") + Space(18) + "Cotton Value  : "; Padl(INF(cotval, 2), 13, " ")
    Print #a, Space(3) + "Total Issue    :" + Padl(INF(totalissue3, 3), 15, " ") + Space(18) + "Rate/Kgs      : " + Padl(INF(rss("ratekg"), 2), 13, " ")
    Print #a, Space(3) + "Cotton Value   :" + Padl(INF(cottonvalue, 3), 15, " ") + Space(18) + "Tax Amount    : " + Padl(INF(RS1!Taxamt, 2), 13, " ")
    'Print #a, Space(52) + "Tax Amount     :" + Padl(INF(RS1!Taxamt, 2), 13, " ")
   
    'Print #a, Space(3); Chr(27); "E" + "Net Weight    : ";
    Print #a, Space(52) + "Lorry Freight :" + Padl("0.00", 13, " ") + "->Total Value : " + Padl(INF(netvalue, 2), 13, " ")
    Print #a, Space(52) + "Purchase Tax  :"
    Print #a, Space(3) + "Party's Gross  :" + Padl(INF(rss("PGRSWT"), 3), 15, " ") + Space(18) + "Other Exp     : " + Padl(INF(RS1!ldgulg, 2), 13, " ")
    Print #a, Space(3) + "Tare Weight    :" + Padl(INF(rss("PTAREWT"), 3), 15, " ") + Space(18) + Chr(27) + "E" + "Net Value     : " + Padl(INF(cottonvalue, 2), 13, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(3) + "Net Weight     :" + Padl(INF(rss("netwt"), 2), 15, " ") + "(Diff : *****)" + " Party Bill Value : " + Padl("0.00", 5, " ") + "(Diff : " + Padl(INF(diff, 2), 13, " ") + ")"
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a, Space(20) + "Prepared                       Checked                       F.M."
    co = co + 12
    tot1 = 0
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    tot6 = 0
   '===============================
    If co >= pagelen Then
        Print #a, Chr(12)
    End If
    RS1.MoveNext
        Print #a,
        Print #a, Chr(12)
        pg1 = pg1 + 1

Loop
Print #a,
 DB.Execute "drop table ACH"
Print #a,
Print #a,
Print #a,
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
Open "c:\recpt_reg_dt.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type recpt_reg_dt.txt>prn"
Close #a
RPTV.txtfile = "c:\recpt_reg_dt.txt"
RPTV.Batfile = "c:\recpt_reg_dt.bat"
End Sub


Public Sub addresshead()
        Set RS = New Recordset
        RS.Open "select ADD1,ADD2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST  from pp_divmas where divcode ='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
        Dim aa(10) As Variant
        For i = 0 To 10
            aa(i) = Space(1)
        Next
        i = 1
        If RS(0) <> "" Then
            aa(i) = RS(0) 'address 1 + 'address2
            i = i + 1
        End If
        If RS(1) <> "" Then
            aa(i) = RS(1) 'address 1 + 'address2
            i = i + 1
        End If
        If RS(2) <> "" Then
           If RS(3) <> "" Then
             aa(i) = RS(2) 'city - pincode
           Else
            aa(i) = RS(2)
           End If
           i = i + 1
        End If
        
        If RS(4) <> "" Then
           If RS(5) <> " " Then
              aa(i) = "Phone: " + RS(4) + Space(2) + "Grams: " + RS(5)
            Else
               aa(i) = "Phone: " + RS(4)
            End If
            i = i + 1
         End If
         
        If RS("TNGST") <> "" Then  'tngst
           If RS("TNGST") <> " " Then
              aa(i) = "TNGST No.: " + RS("tngst") + Space(1) & " Dt " & RS("tngstdt")
            End If
            i = i + 1
         End If
         
        If RS("CGST") <> "" Then  'tngst
           If RS("CGST") <> " " Then
              aa(i) = "C S T No.: " + RS("CGST") + Space(1) & " Dt " & RS("CGSTDT")
            End If
            i = i + 1
         End If
       For i = 1 To 8
         If aa(i) <> " " Then
            Print #1, Space(5) & CENTRE(aa(i), 80, " ")
          End If
        Next
End Sub







