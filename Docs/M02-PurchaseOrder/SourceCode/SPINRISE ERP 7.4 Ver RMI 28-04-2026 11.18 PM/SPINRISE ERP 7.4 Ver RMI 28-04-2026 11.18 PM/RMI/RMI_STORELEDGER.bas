Attribute VB_Name = "RMI_STORELEDGER"
Dim opf As New Recordset
Dim opf1 As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9, op10 As Double
Dim rsP As New Recordset
Dim Namers As Recordset
Dim VarName As String
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Public Sub stockledger_stock(F_Date As String, T_Date As String, catcd As String)
Dim rs1 As New Recordset
Dim RS2 As New Recordset
Dim rs3 As New Recordset
Dim Rs As New Recordset
Dim RPTV As Report.ReportView
Dim recp_bales As Double
Dim pg1 As Double
Dim iss_bales As Double
Dim close_bales As Double
Dim recp_wt As Double
Dim iss_wt As Double
Dim iss_rate As Double
Dim recp_rate As Double
Dim close_wt As Double
Dim recp_val As Double
Dim iss_val As Double
Dim close_val As Double
Dim clotot As Double
Dim cnn As Connection
Set cnn = New Connection
Dim prev As String
Dim bal As Integer
Dim isbal, rbal As Double
Dim str As String

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

        Set RPTV = New Report.ReportView
        a = FreeFile
        Close #a
        'Open "C:\sv.TXT" For Output As #a
        Open KALFOLDERDATA & "\sv.TXT" For Output As #a
        pg1 = 1
        Co = 0
        Print #a, Chr(15)
        Co = Co + 1
        Call PartyHeader(CStr(pg1), Co, F_Date, T_Date, catcd)

prev = ""
Set Rs = New Recordset

Rs.Open "select distinct a.varcode,a.VARNAME from rm_var a,rm_lot b where a.varcode = b.varcode  and arrdt <=  '" & Format(T_Date, "yyyy/mm/dd") & "' ", cnn, adOpenStatic

Do Until Rs.EOF

Print #a,
Co = Co + 1
Set rs1 = New Recordset

str = "select distinct LOTDT,sum(NETWT),sum(BALES),ROUND((ISNULL(RATECY,0)/355.6187),2),(sum(NETWT))*ROUND((ISNULL(RATECY,0)/355.6187),2) as closingrate,lotno,(sum(netwt) * ratekg) as closingrate1 from rm_lot where  varcode='" & Rs(0) & "' AND LOTDT<='" & Format(T_Date, "YYYY-MM-DD") & "'  AND LOTYEAR ='" & Year(yfdate) & "'  AND NETWT > 0 AND BALES > 0 group by  LOTNO,lotdt,NETWT,BALES,RATECY,varcode,ratekg"
rs1.Open str, cnn, adOpenStatic, adLockOptimistic


If rs1.EOF = False Then
      Print #a, Space(5) & Rs(1)

      Co = Co + 1
Do Until rs1.EOF


Print #a, Space(5) & Space(11) & Padl(rs1("LOTNO"), 8, " ") & Space(3) & Padr(rs1("lotdt"), 10, " ") & Space(2) & Padl(Round(rs1(2), 0), 5, " ") & Space(2) & Padl(INF(rs1(1), 3), 19, " ") & Space(2) & Padl(INF(rs1("closingrate1"), 2), 19, " ") & Space(2) & Space(9) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19)
Co = Co + 1


recp_bales = recp_bales + rs1(2)
recp_wt = recp_wt + rs1(1)
recp_rate = recp_rate + rs1("closingrate1")

rs1.MoveNext

If Co >= 65 Then
  Print #a, Space(5) + String(228 - 68 + 23, "-")
  Print #a, Chr(12)
  pg1 = pg1 + 1
  Co = 0
  Call PartyHeader(CStr(pg1), Co, F_Date, T_Date, catcd)
End If
Loop

End If

Set RS2 = New Recordset
RS2.Open "Select distinct A.DOCDT AS LOTDT,COUNT(A.BALENO) as bale, round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as WEIGHT,round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),2) * ROUND((ISNULL(B.RATECY,0)/355.6187),2) AS CLOSINGRATE,b.lotno,round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),2) * (b.ratekg) as closingrate1 from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt <= '" & Format(T_Date, "YYYY-MM-DD") & "' and a.docdt between  '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and  a.catcd='C' and lotyear='" & Year(yfdate) & "' AND B.VARCODE='" & Rs(0) & "' group by a.catcd,A.DOCDT,B.RATECY,b.lotno,b.ratekg", cnn



Do Until RS2.EOF
      'Print #A, Space(5 + 20 + 2) & rs2("lotdt") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Padl(rs2(1), 9, " ") & Space(2) & Padl(INF(rs2(2), 3), 19, " ") & Space(2) & Padl(INF(rs2(3), 2), 19, " ") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19)
      Print #a, Space(5) & Space(11) & Padl(RS2("LOTNO"), 8, " ") & Space(3) & Padr(RS2("lotdt"), 10, " ") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19) & Space(2) & Padl(RS2(1), 9, " ") & Space(2) & Padl(INF(RS2(2), 3), 19, " ") & Space(2) & Padl(INF(RS2(3), 2), 19, " ") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Space(19)
      Co = Co + 1
      iss_bales = iss_bales + RS2(1)
      iss_wt = iss_wt + RS2(2)
      iss_rate = iss_rate + RS2("closingrate1")
      
RS2.MoveNext


If Co >= 65 Then
  Print #a, Space(5) + String(228 - 68 + 23, "-")
  Print #a, Chr(12)
  pg1 = pg1 + 1
  Co = 0
  Call PartyHeader(CStr(pg1), Co, F_Date, T_Date, catcd)
End If
Loop

If rs1.RecordCount <> 0 And RS2.RecordCount <> 0 Then
      close_bales = recp_bales - iss_bales
      close_wt = recp_wt - iss_wt
      close_val = recp_val - iss_val
      close_val = recp_rate - iss_rate
      
      Print #a, Space(5) + String(228 - 68 + 23, "-")
      Co = Co + 1
      
     'Print #A, Space(5 + 20 + 2) & Space(10) & Space(2) & Padl(recp_bales, 5, " ") & Space(2) & Padl(INF(recp_wt, 3), 19, " ") & Space(2) & Padl(INF(recp_rate, 2), 19, " ") & Space(2) & Padl(iss_bales, 9, " ") & Space(2) & Padl(INF(iss_wt, 3), 19, " ") & Space(2) & Padl(INF(iss_rate, 2), 19, " ") & Space(2) & Padl(IIf(IsNull(close_bales), "", close_bales), 5, " ") & Space(2) & Padl(INF(close_wt, 3), 19, " ") & Space(2) & Padl(INF(close_val, 2), 19, " ")
     Print #a, Space(5) & Space(11) & Padl(rs1("lotno"), 8, " ") & Space(3) & Space(10) & Space(2) & Padl(recp_bales, 5, " ") & Space(2) & Padl(INF(recp_wt, 3), 19, " ") & Space(2) & Padl(INF(recp_rate, 2), 19, " ") & Space(2) & Padl(iss_bales, 9, " ") & Space(2) & Padl(INF(iss_wt, 3), 19, " ") & Space(2) & Padl(INF(iss_rate, 2), 19, " ") & Space(2) & Padl(IIf(IsNull(close_bales), "", close_bales), 5, " ") & Space(2) & Padl(INF(close_wt, 3), 19, " ") & Space(2) & Padl(INF(close_val, 2), 19, " ")
     Co = Co + 1
     recp_bales = 0
     recp_wt = 0
     recp_rate = 0
     iss_bales = 0
     iss_wt = 0
     iss_rate = 0
     close_bales = 0
     close_wt = 0
     close_val = 0
      Print #a, Space(5) + String(228 - 68 + 23, "-")
      Co = Co + 1
End If


Rs.MoveNext


If Co >= 65 Then
  Print #a, Space(5) + String(228 - 68 + 23, "-")
  Print #a, Chr(12)
  pg1 = pg1 + 1
  Co = 0
  Call PartyHeader(CStr(pg1), Co, F_Date, T_Date, catcd)
End If
Loop



        Close #a
        a = FreeFile
'        Open "c:\sv.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type sv.txt>prn"
'        Close #a
'        RPTV.txtfile = "c:\sv.txt"
'        RPTV.Batfile = "c:\sv.bat"
Call KALBATPROCESS("sv")


End Sub

Public Sub StockqtyReport(F_Date As String, T_Date As String, catcd As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim totbale_r As Double
Dim totbale_i As Double
Dim totiss_val, totrec_val, totrec_wt, totiss_wt As Double
Dim clotot As Double
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
Dim tot16 As Double
Dim cnn As Connection
Set cnn = New Connection
Dim prev As String
Dim bal As Integer
Dim isbal, rbal As Integer




cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
'sr = Catcd
'sr = Mid$(sr, 1, InStr(sr, "-") - 1)
        Set RPTV = New Report.ReportView
        a = FreeFile
        Close #a
        Close
        'Open "C:\sv.TXT" For Output As #a
        Open KALFOLDERDATA & "\sv.TXT" For Output As #a
        pg1 = 1
        Co = 0
        Print #a, Chr(15)
        Co = Co + 1
        Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)

prev = ""
Set Rs = New Recordset
Rs.Open "select distinct a.VARNAME,a.varcode from rm_var a,rm_lot b where a.varcode = b.varcode  and arrdt between  ' " & Format(F_Date, "yyyy/mm/dd") & "'  and  ' " & Format(T_Date, "yyyy/mm/dd") & "' ", cnn, adOpenStatic

bal = 0


Do While Not Rs.EOF

totbale_r = Empty
totbale_i = Empty
totrec_val = Empty
totiss_val = Empty
clotot = Empty
totiss_wt = Empty
totrec_wt = Empty

Print #a,
Set rs1 = New Recordset
'rs1.Open "select  distinct a.lotdt,b.docdt,a.arrdt,a.bales 'recpt_bales', a.NETWT as recpt_netweight, (NETWT * RATEKG)  as recpt_rate,  a.ISSBAL as   'issu_bales', a.ISSWT as issu_weight, a.ISSWT * a.RATEKG as issu_rate  ,dOCDT from rm_lot a ,rm_issb b, rm_var c where  c.varname='" & rs("VarName") & "' and a.VARCODE= c.varcode and a.lotno = b.lotno and a.lotdt =b.lotdt group by a.ARRDT,a.bales,a.netwt,a.ratekg,a.ISSBAL,a.ISSWT,b.dOCDT,a.lotdt", cnn, adOpenStatic
rs1.Open "select  distinct a.LOTDT, " & _
"sum(isnull(a.BALES,0)) recpt_bales, " & _
"case when a.OPFLG='Y' then sum(isnull(a.netwt,0)) else 0 end recpt_netweight, " & _
"case when a.OPFLG='N' then sum(isnull(a.netwt,0)) else 0 end issu_netweight, " & _
"a.RATEKG,(sum(a.NETWT)*avg(a.RATEKG)) recpt_rate, " & _
"sum(isnull(a.ISSBAL,0)) as issu_bales,sum(isnull(a.ISSWT,0)) as issu_weight,sum(a.ISSWT)*avg(a.RATEKG) as issu_rate " & _
"from RM_LOT a,rm_issb b,rm_var c " & _
"Where a.LOTNO = b.LOTNO " & _
"and a.CATCD=b.CATCD " & _
"and a.lotdt=b.lotdt and a.varcode='" & Rs(1) & "' " & _
"and a.CATCD=c.CATCD and c.varcode=a.varcode " & _
"group by  a.LOTDT,a.BALES,a.netwt,a.ISSWT,a.ISSBAL,a.OPFLG,a.RATEKG", cnn, adOpenStatic, adLockOptimistic


Do While Not rs1.EOF

cbal = ""
cwt = ""
cval = ""
isbal = CInt(rs1("issu_bales"))
rbal = CInt(rs1("recpt_bales"))

If isbal <> 0 And rbal <> 0 Then


       If prev <> Rs("varname") Then Print #a, Space(5) & Padr(Rs("varname"), 20, " ")
       prev = Rs("varname")

            cbal = rs1("recpt_bales") - rs1("issu_bales")
            If rs1("recpt_netweight") = 0 Then
                cwt = rs1("issu_weight")
            Else
                cwt = rs1("recpt_netweight") - rs1("issu_weight")
            End If
                cval = rs1("recpt_rate") - rs1("issu_rate")
            If prevarrdt <> rs1("lotdt") Then
               Print #a, Space(5 + 20 + 2) & rs1("lotdt") & Space(2) & Padl(rs1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(rs1("recpt_netweight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("recpt_rate"), 2), 19, " ") & Space(2) & Padl(rs1("issu_bales"), 9, " ") & Space(2) & Padl(INF(rs1("issu_weight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("issu_rate"), 2), 19, " ") & Space(2) & Padl(IIf(IsNull(cbal), "", cbal), 5, " ") & Space(2) & Padl(INF(cwt, 3), 19, " ") & Space(2) & Padl(INF(cval, 2), 19, " ")
               prevarrdt = rs1("lotdt")
            Else
               Print #a, Space(5 + 20 + 2) & Space(10) & Space(2) & Padl(rs1("recpt_bales"), 5, " ") & Space(2) & Padl(INF(rs1("recpt_netweight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("recpt_rate"), 2), 19, " ") & Space(2) & Padl(rs1("issu_bales"), 9, " ") & Space(2) & Padl(INF(rs1("issu_weight"), 3), 19, " ") & Space(2) & Padl(INF(rs1("issu_rate"), 2), 19, " ") & Space(2) & Padl(IIf(IsNull(cbal), "", cbal), 5, " ") & Space(2) & Padl(INF(cwt, 3), 19, " ") & Space(2) & Padl(INF(cval, 2), 19, " ")

            End If


End If
Print #a,


      totbale_r = totbale_r + CDbl(rs1("recpt_bales"))
      totbale_i = totbale_i + CDbl(rs1("issu_bales"))
      totrec_val = totrec_val + rs1("recpt_rate")
      totiss_val = totiss_val + rs1("issu_rate")
      clotot = clotot + val(IIf(IsNull(cval), 0, cval))
      totiss_wt = totiss_wt + rs1("recpt_netweight")
      totrec_wt = totrec_wt + rs1("issu_netweight")



rs1.MoveNext           '2
Loop

If rs1.RecordCount <> 0 Then

        Print #a, Space(5) + String(228 - 68 + 23, "-")
        Print #a, Space(5 + 20 + 2) & Space(10) & Space(2) & Padl(totbale_r, 5, " ") & Space(2) & Padl(INF(totrec_wt, 3), 19, " ") & Space(2) & Padl(INF(totrec_val, 2), 19, " ") & Space(2) & Padl(totbale_i, 9, " ") & Space(2) & Padl(INF(totiss_wt, 3), 19, " ") & Space(2) & Padl(INF(totiss_val, 2), 19, " ") & Space(2) & Space(5) & Space(2) & Space(19) & Space(2) & Padl(INF(clotot, 2), 19, " ")
        Print #a, Space(5) + String(228 - 68 + 23, "-")
        Print #a, Chr(12)
        Print #a, Chr(18)

End If

Rs.MoveNext
Loop

        Close #a
        a = FreeFile
'        Open "c:\sv.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type sv.txt>prn"
'        Close #a
'        RPTV.txtfile = "c:\sv.txt"
'        RPTV.Batfile = "c:\sv.bat"
Call KALBATPROCESS("sv")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String)
        Print #a, Chr(18)
        Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
        Print #a,
        SR = CStr(pdate) + Space(2)
        Print #a, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy") & Space(18) + SR + "Pg.No :" + Space(1) + Padl(CStr(pg1), 3, " ") + Chr(15)
        'Print #A, Chr(27) & Chr(205) & Chr(27) & Chr(77)
        Print #a, Space(5) + String(228 - 68 + 23, "-")
        Print #a, Space(5) + "Variety                          <------------------Receipts------------------->     <--------------------Issues---------------------> <---------------Closing Balance---------------->"
        Print #a, Space(5) & "           M.Lot No.   Lotdate  Bales/               Weight                Value     Bales/               Weight                Value  Bales/              Weight                Value "
        Print #a, Space(5); "                                 Bohras                                               Bohras                                            Bohras"
        Print #a, Space(5) + String(228 - 68 + 23, "-")
        Co = Co + 9
End Sub
