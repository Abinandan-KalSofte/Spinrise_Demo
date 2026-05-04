Attribute VB_Name = "bank"
Dim a As Integer
Dim totbal As Double
Dim totqty As Double
Dim totVal As Double

Public Sub Bank_Report(Bank_Date As String)
Dim rs1 As Recordset
Dim rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim rs6 As Recordset
Dim pagelen As Integer
Dim result As Recordset
Dim RPTV As Report.ReportView
Dim sr As String
Dim s As String
Dim mr As Double
Dim pr As Double
Dim dr As Double
Dim qr As Double
Dim cnn As Connection
Set cnn = New Connection
pagelen = 53
cnn.Open connectstring
Set rs1 = New Recordset
'rs1.Open "select a.catcd,a.varcode,a.godown,count(b.baleno) as bales,sum(b.grwt-b.tarewt) as balewt,sum(a.ratekg) as ratekg from rm_lot a,rm_bale b where a.lotno=b.lotno and a.lotdt=b.lotdt and a.lottype=b.lottype and a.lotdt='2001-11-12' group by a.catcd,a.varcode,a.godown", cnn, adOpenStatic, adLockOptimistic
rs1.Open "select a.catcd,a.varcode,a.godown,count(b.baleno) as bales,round(sum(b.grwt-b.tarewt),2) as balewt,round(sum(a.ratekg),2) as ratekg from rm_lot a,rm_bale b where a.lotno=b.lotno and a.divcode=b.divcode and a.lotdt=b.lotdt and a.lottype=b.lottype and a.lotdt='" & Format(Bank_Date, "yyyy-mm-dd") & "' group by a.catcd,a.varcode,a.godown", cnn, adOpenStatic, adLockOptimistic
serial_no = 1
If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set rs5 = New Recordset
rs5.Open "select loanmargin from rm_param", cnn, adOpenStatic, adLockBatchOptimistic
dr = IIf(rs5(0) = 0 Or IsNull(rs5(0)), 0, rs5(0))
'Set rs6 = New Recordset
'rs6.Open "select a.pjamt from rm_lot a,rm_bale b where a.lotno=b.lotno and b.openkey is null", cnn, adOpenStatic, adLockBatchOptimistic
'rs6.MoveFirst
'Do While Not rs6.EOF
'mr = mr + rs6(0)
'rs6.MoveNext
'Loop
'pr = (mr * dr) / 100
'qr = mr - pr
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Open "C:\bank_report.TXT" For Output As #a
pg1 = 1
co = 0

Call Proc_Bankhead(Bank_Date)
rs1.MoveFirst
Do While Not rs1.EOF
    Set rs3 = New Recordset
    rs3.Open "select catname from rm_cat where catcd='" & rs1("catcd") & "'", cnn, adOpenDynamic, adLockOptimistic
    Set rs4 = New Recordset
    rs4.Open "select varname from rm_var where varcode='" & rs1("varcode") & "'", cnn, adOpenDynamic, adLockOptimistic
    avgwgt = Round(Val(rs1("balewt")) / Val(rs1("bales")), 2)
    avgrat = Round(Val(rs1("ratekg")) / Val(rs1("bales")), 2)
    avgval = Round(Val(rs1("balewt")) * avgrat, 0)
    Print #a, Space(10) + Padl(CStr(serial_no), 5, " ") + Space(1) + Padr(rs4(0), 10, " ") + Space(3) + Padl((CStr(rs1("godown"))), 11, " ") + Space(2) + Padl(INF(rs1("bales"), 0), 8, " ") + Space(2) + Padl(INF(avgwgt, 2), 18, " ") + Space(3) + Padl(INF(rs1("balewt"), 2), 19, " ") + Space(2) + Padl(INF(avgrat, 2), 15, " ") + Space(2) + Padl(INF(avgval, 2), 20, " ")
    totVal = totVal + avgval
    totbal = totbal + Val(rs1("bales"))
    totqty = totqty + Val(rs1("balewt"))
    avgrat = 0
    avgwgt = 0
    avgval = 0
    rs1.MoveNext
    serial_no = serial_no + 1
co = co + 1
Loop
Print #a, Space(10) + String(125, "-")
Print #a, Space(15) + " ** Grand Total **" + Space(2) + Padl(INF(totbal, 0), 15, " ") + Space(15) + Padl(INF(totqty, 2), 27, " ") + Space(12) + Padl(INF(totVal, 2), 27, " ")
Print #a, Space(10) + String(125, "-")
serial_no = 0
Print #a,
pr = (totVal * dr) / 100
qr = totVal - pr
Print #a, Space(10) + "TOTAL VALUE RS." + Padr(INF(totVal, 2), 15, " ") + Space(16) + "MARGIN :" + Padr(INF(pr, 2), 16, " ") + Space(16) + "DRAWING POWER RS." + Padr(INF(qr, 2), 16, " ")
totVal = 0
totbal = 0
totqty = 0
Print #a,
Print #a,
Print #a,
Print #a, Space(10) + "a) We declare  that all the goods noted above which stand hypothecated to the"
Print #a, Space(10) + "   Bank  are  our  own property and that we are entitled to hypothecate  them"
Print #a, Space(10) + "   with the Bank. They are unencumbered  and are not  subject  to  any  other"
Print #a, Space(10) + "   lien, claim or charge of any sort."
Print #a,
Print #a,
Print #a, Space(10) + "b) We further certify that the entries made above are  correct.  The quality,"
Print #a, Space(10) + "   quantity and weight given are also correct and are in accordance with  the"
Print #a, Space(10) + "   entries in our registers and the rates given are based  on  invoice  value"
Print #a, Space(10) + "   less rebate/discount or conservative wholesale market rates, whichever are"
Print #a, Space(10) + "   lower."
Print #a,
Print #a,
Print #a, Space(10) + "c) We  certify  that  the above goods are  adequately  covered  by  insurance"
Print #a, Space(10) + "   against fire."
Print #a,
Print #a, Space(77) + "for " + rs3("catname")
Print #a,
Print #a,
Print #a,
Print #a,
Print #a, Space(11) + "Date : " + CStr(Bank_Date) + Space(39) + "Authorised Signatory"
Print #a,
co = co + 1
If co > pagelen Then
    Print #a, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call Proc_Bankhead(Bank_Date)
End If
Print #a, Chr(12)
Close #a
a = FreeFile
Open "c:\bank_report.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type bank_report.txt>prn"
Close #a
RPTV.txtfile = "c:\bank_report.txt"
RPTV.Batfile = "c:\bank_report.bat"
End Sub

Public Sub Proc_Bankhead(Bankdate)
          Print #a,
          Print #a, Chr(18)
'          Print #a, Space(10) + Space(Round((101 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((163 - 2 * Len(DIVNAME)) / 2))
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          'Print #a, Space(101)
          'Print #a,
          Print #a,
          sr = CStr(pdate) + Space(2)
          Print #a, Space(6) + Chr(27) + "E" + "Report for the period ended " + CStr(Bankdate) + " of the stock hypothecated as "
          
          Print #a, Space(6) + "security  " + Chr(27) + "F" + "with" + Chr(15)
          'sr = CStr(pdate) + Space(2)
          'Print #11, Space(5) + "Space(47) + CStr(sr) + "Pg.No : " + CStr(pg1)
          Print #a, Space(10) + String(125, "-")
          
'          Print #a, Space(5) + "S.No. Vareity           Godown     No.of        Average         Quantity        Rate            Value"
'          Print #a, Space(5) + "                        No.        Bales         Weight"
          
          Print #a, Space(10) + "S.No. Vareity           Godown     No.of             Average              Quantity             Rate                 Value"
          Print #a, Space(10) + "                        No.        Bales              Weight"
          
          Print #a, Space(10) + String(125, "-")



'   Print #a, "Report for the period ended " + CStr(Bankdate) + " of the stock hypothecated as  security  with"
'   Print #a, "S.No. Vareity      Godown No.of   Average     Quantity        Rate          Value"
'   Print #a, "                   No.    Bales    Weight"
'   r = 1
'   @ R,CENT SAY cname
'   r = r + 2
'   @ R,1 SAY 'Report for the period ended '+DTOC(bankdate)+' of the stock hypothecated as  security  with'
'   r = r + 1
'   @ R,1 SAY mbankname PICT'@!'
'   r = r + 1
'   @ R, 1 SAY uline80
'   r = r + 1
'   @ R,1 SAY "S.No. Vareity      Godown No.of   Average     Quantity        Rate          Value"
'   r = r + 1
'   @ R,1 SAY "                   No.    Bales    Weight"
'   r = r + 1
'   @ R , 1  SAY uline80
'   r = r + 1
End Sub


