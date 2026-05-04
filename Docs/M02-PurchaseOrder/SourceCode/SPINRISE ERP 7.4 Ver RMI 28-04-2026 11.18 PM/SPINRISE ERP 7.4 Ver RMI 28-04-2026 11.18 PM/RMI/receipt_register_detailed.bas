Attribute VB_Name = "receipt_register_dt"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim Namers As Recordset
Dim VarName As String
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Public Sub rct_reg_dt(From_Date As String, To_Date As String, DIVNAME As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim TEMP As New Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
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
Dim cnn As Connection
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
Set rs1 = New Recordset
cnn.Open connectstring
Set RPTV = New Report.ReportView
a = FreeFile
Close
'Open "C:\recpt_reg_dt.TXT" For Output As #a
Open KALFOLDERDATA & "\recpt_reg_dt.TXT" For Output As #a
pg1 = 1
Co = 0
Set rs1 = New Recordset

rs1.Open "select b.catcd,a.lotno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,round(a.ratecy,0)as ratecy,a.gcno,a.freight,a.plotno,a.plotdt,a.brkcd,a.areacode,a.varcode,a.cntcode,a.quantity,round(a.grosswt,2) as grosswt,round(a.tarewt,2) as tarewt,round(a.netwt,2) as netwt,round(a.ratecy,0)as ratecy,b.pjamt,b.billno,b.billdt,round(b.ptywgt,2)as ptywgt,b.insamt, " & _
        " tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost,c.dlytype,a.carcode,b.ratekg*100 as ratequni from rm_arrival a,rm_lot b,rm_cont c where a.arrno=b.arrno and a.arrdate=b.arrdt " & _
        " and a.lotno=b.lotno and b.arrdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lottype='A' and a.contno=c.contno and a.contdt=c.contdt and b.rejflg='N' and b.lotyear='" & Year(yfdate) & "'order by a.lotno", cnn, adOpenStatic

If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
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
'    Print #a, Space(5) + Space(Round((125 - 2 * Len(DIVNAME)) / 2)) + DIVNAME + Space(2) + Space(Round((60 - 2 * Len(DIVNAME)) / 2))
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 70, " ") + Chr(27) + "F"
    Print #a, Space(3) + Chr(27) + "E" + "Cotton Weight List" + Chr(27) + "F" & Chr(15)
    Print #a, Space(5) + String(125, "-")
    Print #a, Space(5) + "Arrival No  :" + Space(2) + Padr(CStr(rs1("ARRNO")), 10, " ") + Space(65) + "Arrival Date   :" + Space(2) + CStr(rs1("ARRDATE"))
    Print #a, Space(5) + "Lot No      :" + Space(2) + Padr(CStr(rs1("LOTNO")), 10, " ") + Space(65) + "Weightment Date:" + Space(2) + CStr(rs1("ARRDATE"))
    Set rs3 = New Recordset
    rs3.Open "select slname from fa_slmas where slcode='" & rs1("SUPCD") & "'", Cn, adOpenDynamic, adLockOptimistic
    Print #a, Space(5) + "Supplier    :" + Space(2) + rs3("slname")
    Print #a, Space(5) + "P.R.Number  :" + Space(2) + Padr(CStr(IIf(IsNull(rs1("PRNO")), " ", rs1("PRNO"))), 10, " ") + Space(65) + "P.R.Mark       :" + Space(2) + Padr(CStr(IIf(IsNull(rs1("PRMARK")), " ", rs1("PRMARK"))), 10, " ")
    Set TEMP = New Recordset
    TEMP.Open "select carname from po_car where carcode='" & rs1("carcode") & "'", Cn, adOpenDynamic, adLockOptimistic
    If TEMP.RecordCount > 0 Then
        tmp = TEMP(0).value
    Else
        tmp = " "
    End If
    
    Print #a, Space(5) + "Transport   :" + Space(2) + Padr((tmp), 35, " ") + Space(40) + "Lorry Number   :" + Space(2) + Padr(CStr(IIf(IsNull(rs1("LORRYNOS")), " ", rs1("LORRYNOS"))), 10, " ")
    Print #a,
    Co = Co + 10
    If Co > PageLen Then
        Print #a,
        Print #a, Chr(12)
        Co = 0
        pg1 = pg1 + 1
    End If
    Print #a, Space(5) + "DC Number   :" + Space(2) + Padr(CStr(IIf(IsNull(rs1("GCNO")), " ", rs1("GCNO"))), 10, " ") + Space(65) + "Freight        :" + Space(2) + Padr(CStr(IIf(IsNull(rs1("FREIGHT")), " ", rs1("FREIGHT"))), 10, " ")
    Print #a, Space(5) + "Party Lot   :" + Space(2) + Padr(CStr(IIf(IsNull(rs1("plotno")), " ", rs1("plotno"))), 10, " ") '+ Space(65) + "Bill Date      :" + Space(2) + Padr(CStr(rs1("BILLDT")), 10, " ")
    Print #a, Space(5) + "Bill No     :" + Space(2) + Padr(CStr(rs1("BILLNO")), 10, " ") + Space(65) + "Bill Date      :" + Space(2) + CStr(rs1("BILLDT"))
    Co = Co + 3
    Set rs3 = New Recordset
    rs3.Open "select slname from fa_slmas where slcode='" & rs1("BRKCD") & "'", Cn, adOpenDynamic, adLockOptimistic
    If rs3.RecordCount > 0 Then
    Print #a, Space(5) + "Broker      :" + Space(2) + rs3("SLNAME")
    Else
    Print #a, Space(5) + "Broker      :" + Space(2)
    End If
    Co = Co + 1
    Set rs3 = New Recordset
    rs3.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rs1("AREACODE") & "'", Cn, adOpenDynamic, adLockOptimistic
    Print #a, Space(5) + "Area        :" + Space(2) + IIf(rs3.BOF = True, "", rs3(0))
    Set Namers = New Recordset
    Namers.Open "Select varname from rm_var where varcode='" & rs1("VARCODE") & "'", db, adOpenStatic
    If Not Namers.EOF Then VarName = Namers(0)
    Print #a, Space(5) + "Variety     :" + Space(2) + Padr(VarName, 20, " ") + Space(55) + "Count          :" + Space(2) + rs1("CNTCODE")
    Print #a,
    Print #a, Space(5) + "Quantity    :" + Space(2) + Padr(INF(rs1("QUANTITY"), 0), 10, " ")
    Print #a, Space(5) + "Invoice Wt  :" + Space(2) + Padr(INF(rs1("ptywgt"), 2), 20, " ") + Space(55) + "Invoice Value  :" + Space(2) + Padr(INF(rs1("pjamt"), 2), 12, " ")
    Print #a, Space(5) + "Gross Wt    :" + Space(2) + Padr(INF(rs1("GROSSWT"), 2), 20, " ") + Space(55) + "Expenses       :" + Space(2) + INF(rs1("tot_exp"), 2)
    Print #a, Space(5) + "Tare  Wt    :" + Space(2) + Padr(INF(rs1("TAREWT"), 2), 20, " ") + Space(55) + "Debit Notes    :" + Space(2) + INF(rs1("debit"), 2)
    Print #a, Space(5) + "Net wt      :" + Space(2) + Padr(INF(rs1("NETWT"), 2), 20, " ") + Space(55) + "Landing Cost   :" + Space(2) + INF(rs1("TOTLANDCOST"), 2)
    Print #a, Space(5) + "Rate/Candy  :" + Space(2) + Padr(INF(rs1("ratecy"), 2), 20, " ") + Space(55) + "Rate/Qntl      :" + Space(2) + INF(rs1("ratequni"), 2)
    Print #a, Space(5) + "Purchase    :" + Space(2) + IIf(rs1("dlytype") = "S", "Spot", "FOR")
     
    Print #a, Space(5) + String(125, "-")
    Co = Co + 11
    Set RS2 = New Recordset
    'rs2.Open "SELECT round(grwt,2) as grwt,round(tarewt,2) as tarewt,round(netwt,2) as netwt FROM RM_BALE WHERE LOTDT BETWEEN '" & Format(from_date, "yyyy-mm-dd") & "' AND '" & Format(to_date, "yyyy-mm-dd") & "' and lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & "", cnn, adOpenDynamic, adLockOptimistic
    RS2.Open "SELECT round(a.grwt,2) as grwt,round(a.tarewt,2) as tarewt,round(a.netwt,2) as netwt FROM RM_BALE a, rm_lot b WHERE b.arrDt BETWEEN '" & Format(rs1("arrdate"), "yyyy-mm-dd") & "' AND '" & Format(rs1("arrdate"), "yyyy-mm-dd") & "' and  a.divcode=b.divcode and a.lotno=b.lotno and a.lottype='A' and a.catcd='" & rs1("catcd") & "' and a.lotno=" & rs1("lotno") & "  and b.rejflg='N' and b.lotyear='" & Year(yfdate) & "' and a.catcd=b.catcd and a.lotdt=b.lotdt", cnn, adOpenStatic, adLockBatchOptimistic

'    If rs2.RecordCount = 0 Then
'        Exit Sub
'    End If
    Call Detailed_Receipt_Header(pg1) ', co, u, v)
    Co = Co + 4
    If RS2.RecordCount > 0 Then
    RS2.MoveFirst
    End If
    i = 0
    Do While Not RS2.EOF
        i = i + 1
'        Print #a, Space(33) + Padl((CStr(i)), 9, " ") + Space(2) + Padl(Format(rs2("grwt"), "###,###,##0.00"), 15, " ") + Space(3) + Padl(Format(rs2("tarewt"), "###,###,##0.000"), 13, " ") + Space(2) + Padl(Format(rs2("netwt"), "###,###,##0.000"), 19, " ")
        Print #a, Space(33) + Padl((CStr(i)), 9, " ") + Space(2) + Padl(INF(RS2("grwt"), 2), 15, " ") + Space(3) + Padl(INF(RS2("tarewt"), 2), 13, " ") + Space(2) + Padl(INF(RS2("netwt"), 2), 19, " ")
        tot1 = tot1 + RS2("grwt")
        tot2 = tot2 + RS2("tarewt")
        tot3 = tot3 + RS2("netwt")
        RS2.MoveNext
        Co = Co + 1
        If Co > PageLen Then
            Print #a,
            Print #a, Chr(12)
            pg1 = pg1 + 1
            Call Detailed_Receipt_Header(pg1) ', co, u, v)
            Co = 4
        End If
    Loop
    If Co >= PageLen Then
        Print #a, Chr(12)
    End If
    Print #a, Space(33) + String(63, "-")
'    Print #a, Space(44) + Padl(Format(tot1, "###,###,##0.00"), 15, " ") + Space(4) + Padl(Format(tot2, "##,###,##0.000"), 12, " ") + Space(4) + Padl(Format(tot3, "##,###,##0.000"), 17, " ")
    Print #a, Space(44) + Padl(INF(tot1, 2), 15, " ") + Space(4) + Padl(INF(tot2, 2), 12, " ") + Space(4) + Padl(INF(tot3, 2), 17, " ")
    Print #a,
    Print #a, Space(33) + String(63, "-")
    Print #a,
    Print #a,
    Print #a, Space(60) + "Total Bales       :  " + CStr(i)
    Print #a, Space(60) + "Total Gross Wt    :  " + INF(tot1, 2)
    Print #a, Space(60) + "Total TareWt      :  " + INF(tot2, 2)
    Print #a, Space(60) + "Total NetWt       :  " + INF(tot3, 2)
    Print #a, Space(60) + String(30, "-")
    Co = Co + 11
    i = 0
    tot1 = 0
    tot2 = 0
    tot3 = 0
    rs1.MoveNext
Loop
Print #a,
'co = co + 1
'If co > pagelen Then
'    Print #a, Chr(12)
'    pg1 = pg1 + 1
'    co = 4
'    Call Detailed_Receipt_Header(pg1) ', co, u, v)
'End If

 Call TransferReceipt(CStr(From_Date), CStr(To_Date), CStr(DIVNAME))
On Error Resume Next
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

Public Sub Detailed_Receipt_Header(pg1 As Integer) ', co As Integer, u As String, v As String)
          Print #a,
          Print #a, Space(33) + String(63, "-")
          Print #a, Space(33) + "  Bale No         Gross Wt         Tare Wt               Net Wt "
          Print #a, Space(33) + String(63, "-")

End Sub
Public Sub TransferReceipt(From_Date As Date, To_Date As Date, DIVNAME As String)
Set rs1 = New Recordset
rs1.Open " select catcd,lotno,arrno,arrdt,lotdt,supcd,0 as prno,0 as prmark,0 as lorryno,ratecy,0 as gcno, 0 as freight, 0 as plotno," & _
         " 0 as plotdt,brkcd,areacd,varcode,cntcode,0 as quantity,round(GRSWGT,2)as grswgt,round(TAREWT,2)as tarewt,round(NETWT,2)as netwt,round(RATECY,0)as ratecy," & _
         " PJAMT,BILLNO,BILLDT,PTYWGT,INSAMT,tot_exp = isnull(taxamt,0) + isnull(bnkchg,0) + isnull(odint,0) + isnull(freght,0) + isnull(rlyfrt,0) + isnull(ldgulg,0) + isnull(brkcom,0) + isnull(carchg,0) + isnull(spotexp,0),0 as debit," & _
         " totlandcost, 0 as dlytype,0 as carcode from rm_lot where lottype='T' and lotdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and rejflg='N' and lotyear='" & Year(yfdate) & "'", db, adOpenStatic
         
If rs1.RecordCount = 0 Then
    'MsgBox "No Records Found", vbInformation, head
    'Close #a
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
    Print #a,
    Print #a, Space(3) + Chr(27) + "E" + "Cotton Weight List:    Transfer Receipt" + Chr(27) + "F" & Chr(15)
    Print #a, Space(5) + String(125, "-")
    Print #a, Space(5) + "Arrival No  :" + Space(2) + Padr(CStr(rs1("ARRNO")), 10, " ") + Space(65) + "Arrival Date   :" + Space(2) + CStr(rs1("ARRDT"))
    Print #a, Space(5) + "Lot No      :" + Space(2) + Padr(CStr(rs1("LOTNO")), 10, " ") + Space(65) + "Weightment Date:" + Space(2) + CStr(rs1("ARRDT"))
    Set rs3 = New Recordset
    rs3.Open "select slname from fa_slmas where slcode='" & rs1("SUPCD") & "'", Cn, adOpenDynamic, adLockOptimistic
    Print #a, Space(5) + "Supplier    :" + Space(2) + rs3("slname")
    Print #a, Space(5) + "P.R.Number  :" + Space(2) + Padr(INF(rs1("PRNO"), 0), 10, " ") + Space(65) + "P.R.Mark       :" + Space(2) + Padr(INF(rs1("PRMARK"), 0), 10, " ")
    Set TEMP = New Recordset
    TEMP.Open "select carname from po_car where carcode='" & rs1("carcode") & "'", Cn, adOpenDynamic, adLockOptimistic
    If TEMP.RecordCount > 0 Then
        tmp = TEMP(0).value
    Else
        tmp = " "
    End If
    
    Print #a, Space(5) + "Transport   :" + Space(2) + Padr((tmp), 35, " ") + Space(40) + "Lorry Number   :" + Space(2) + Padr(INF(rs1("lorryno"), 0), 10, " ")
    Print #a,
    Co = Co + 10
    If Co > PageLen Then
        Print #a,
        Print #a, Chr(12)
        Co = 0
        pg1 = pg1 + 1
    End If
    Print #a, Space(5) + "DC Number   :" + Space(2) + Padr(INF(rs1("GCNO"), 0), 10, " ") + Space(65) + "Freight        :" + Space(2) + Padr(INF(rs1("FREIGHT"), 0), 10, " ")
    Print #a, Space(5) + "Party Lot   :" + Space(2) + Padr(INF(rs1("plotno"), 0), 10, " ") '+ Space(65) + "Bill Date      :" + Space(2) + Padr(CStr(rs1("BILLDT")), 10, " ")
    Print #a, Space(5) + "Bill No     :" + Space(2) + Padr(CStr(IIf(IsNull(rs1("BILLNO")), " ", rs1("BILLNO"))), 10, " ") + Space(65) + "Bill Date      :" + Space(2) + CStr(rs1("BILLDT"))
    Co = Co + 3
    Set rs3 = New Recordset
    rs3.Open "select slname from fa_slmas where slcode='" & rs1("BRKCD") & "'", Cn, adOpenDynamic, adLockOptimistic
    If rs3.RecordCount > 0 Then
    Print #a, Space(5) + "Broker      :" + Space(2) + rs3("SLNAME")
    Else
    Print #a, Space(5) + "Broker      :" + Space(2)
    End If
    Co = Co + 1
    Set rs3 = New Recordset
    rs3.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rs1("areacd") & "'", Cn, adOpenDynamic, adLockOptimistic
    Print #a, Space(5) + "Area        :" + Space(2) + IIf(rs3.BOF = True, "", rs3(0))
    Print #a, Space(5) + "Variety     :" + Space(2) + Padr(rs1("VARCODE"), 20, " ") + Space(55) + "Count          :" + Space(2) + rs1("CNTCODE")
    Print #a,
    Set Qrs = New Recordset
    Qrs.Open "select count(*) as QUANTITY from rm_bale  where lottype='T' and lotdt='" & Format(rs1("arrdt"), "YYYY-MM-DD") & "' and lotno=" & rs1("lotno") & " and catcd='" & rs1("catcd") & "' and divcode='" & Divcode & "'", Cn, adOpenStatic
    Print #a, Space(5) + "Quantity    :" + Space(2) + Padr(INF(Qrs("QUANTITY"), 0), 10, " ")
    Print #a, Space(5) + "Invoice Wt  :" + Space(2) + Padr(INF(rs1("ptywgt"), 2), 20, " ") + Space(55) + "Invoice Value  :" + Space(2) + Padr(INF(rs1("pjamt"), 2), 10, " ")
    Print #a, Space(5) + "Gross Wt    :" + Space(2) + Padr(INF(rs1("GRSWGT"), 2), 20, " ") + Space(55) + "Expenses       :" + Space(2) + INF(rs1("tot_exp"), 2)
    Print #a, Space(5) + "Tare  Wt    :" + Space(2) + Padr(INF(rs1("TAREWT"), 2), 20, " ") + Space(55) + "Debit Notes    :" + Space(2) + INF(rs1("debit"), 2)
    Print #a, Space(5) + "Net wt      :" + Space(2) + Padr(INF(rs1("NETWT"), 2), 20, " ") + Space(55) + "Landing Cost   :" + Space(2) + INF(rs1("TOTLANDCOST"), 2)
    Print #a, Space(5) + "Rate/Candy  :" + Space(2) + Padr(INF(rs1("ratecy"), 2), 20, " ") + Space(55) + "Rate/Qntl      :" + Space(2) + INF(rs1("ptywgt"), 2)
    Print #a, Space(5) + "Purchase    :" + Space(2) + IIf(rs1("dlytype") = "S", "Spot", "FOR")
    
    Print #a, Space(5) + String(125, "-")
    Co = Co + 11
    Set RS2 = New Recordset
    RS2.Open "SELECT round(grwt,2)as grwt,round(tarewt,2)as tarewt,round(netwt,2)as netwt FROM RM_BALE WHERE LOTDT BETWEEN '" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' AND '" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' and lottype='T' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & "", Cn, adOpenStatic
    If RS2.RecordCount = 0 Then
        Exit Sub
    End If
    Call Detailed_Receipt_Header(pg1) ', co, u, v)
    Co = Co + 4
    RS2.MoveFirst
    i = 0
    Do While Not RS2.EOF
        i = i + 1
'        Print #a, Space(33) + Padl((CStr(i)), 9, " ") + Space(2) + Padl(Format(rs2("grwt"), "###,###,##0.00"), 15, " ") + Space(3) + Padl(Format(rs2("tarewt"), "###,###,##0.000"), 13, " ") + Space(2) + Padl(Format(rs2("netwt"), "###,###,##0.000"), 19, " ")
        Print #a, Space(33) + Padl((CStr(i)), 9, " ") + Space(2) + Padl(INF(RS2("grwt"), 2), 15, " ") + Space(3) + Padl(INF(RS2("tarewt"), 2), 13, " ") + Space(2) + Padl(INF(RS2("netwt"), 2), 19, " ")
        tot1 = tot1 + RS2("grwt")
        tot2 = tot2 + RS2("tarewt")
        tot3 = tot3 + RS2("netwt")
        RS2.MoveNext
        Co = Co + 1
        If Co > PageLen Then
            Print #a,
            Print #a, Chr(12)
            pg1 = pg1 + 1
            Call Detailed_Receipt_Header(pg1) ', co, u, v)
            Co = 4
        End If
    Loop
    If Co >= PageLen Then
        Print #a, Chr(12)
    End If
    Print #a, Space(33) + String(63, "-")
'    Print #a, Space(44) + Padl(Format(tot1, "###,###,##0.00"), 15, " ") + Space(4) + Padl(Format(tot2, "##,###,##0.000"), 12, " ") + Space(4) + Padl(Format(tot3, "##,###,##0.000"), 17, " ")
    Print #a, Space(44) + Padl(INF(tot1, 2), 15, " ") + Space(4) + Padl(INF(tot2, 2), 12, " ") + Space(4) + Padl(INF(tot3, 2), 17, " ")
    Print #a,
    Print #a, Space(33) + String(63, "-")
    Print #a,
    Print #a,
    Print #a, Space(60) + "Total Bales       :  " + CStr(i)
    Print #a, Space(60) + "Total Gross Wt    :  " + INF(tot1, 2)
    Print #a, Space(60) + "Total TareWt      :  " + INF(tot2, 2)
    Print #a, Space(60) + "Total NetWt       :  " + INF(tot3, 2)
    Print #a, Space(60) + String(30, "-")
    Co = Co + 11
    i = 0
    tot1 = 0
    tot2 = 0
    tot3 = 0
    rs1.MoveNext
Loop
Print #a,

End Sub
