Attribute VB_Name = "SalesIssuesCustomerwise"
Dim rs5 As Recordset
Dim RS6 As Recordset
Dim rs7 As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14, tot15 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim s1, s2 As String
Dim z As Integer
Public Sub TIPW()
    Set cnn = New Connection
    cnn.Provider = "MSDATASHAPE"
    cnn.Open connectstring
    Set RPTV = New Report.ReportView
    S = FreeFile
    Close #11
    'Open "C:\TIPW.TXT" For Output As #11
    Open KALFOLDERDATA & "\TIPW.TXT" For Output As #11
    pg1 = 1
    Co = 0
    Print #11, Chr(15)
    z = FreeFile
    Call LotstockRepHeader(pg1)
    'dv1.rsCommand2_Grouping.Open "SHAPE {select distinct a.slcode,slname,b.lotno,b.lotdt,varcode, a.cntcd,netwt,bales=(case bblflg when 'B' then bales  end), borah=(case bblflg when 'R' then bales end),d.netwt,Value=d.ratekg*netwt from rm_issh a,rm_issb b,fa_slmas c,rm_lot d where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode =c.slcode  and a.cntcd=d.cntcode and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & divcode & "' and a.docdt Between '" & Format(DataCombo1.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' order by a.slcode,slname,b.lotno,b.lotdt}  AS Command2 COMPUTE Command2 BY 'slcode','slname'", cn, adOpenStatic, adLockBatchOptimistic
    tot16 = 0
    tot17 = 0
    tot18 = 0
    tot19 = 0
    tot110 = 0
    Set rs5 = New Recordset
    rs5.Open "select distinct a.slcode,slname from rm_issh a,rm_issb b,fa_slmas c,rm_lot d where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode =c.slcode  and a.cntcd=d.cntcode and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(f1, "yyyy-mm-dd") & "' and '" & Format(t1, "yyyy-mm-dd") & "' order by a.slcode,slname,b.lotno,b.lotdt", cnn, adOpenStatic
        Do While Not rs5.EOF
            Print #11, Space(5) & rs5(0) & Space(2) & rs5(1)
            Print #11,
            Set rs7 = New Recordset
            rs7.Open "select distinct a.slcode,slname,b.lotno,b.lotdt,varcode, a.cntcd,netwt,bales=(case bblflg when 'B' then bales  end), borah=(case bblflg when  IN ('R','H') then bales end),d.netwt,Value=d.ratekg*netwt from rm_issh a,rm_issb b,fa_slmas c,rm_lot d where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode =c.slcode  and a.cntcd=d.cntcode and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(DataCombo1.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.slcode = '" & rs5(0) & "' order by a.slcode,slname,b.lotno,b.lotdt", cnn, adOpenStatic
            tot1 = 0
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
            Do While Not rs7.EOF
                Print #11, Space(15) & Padl(IIf(IsNull(rs7("lotno")), 0, rs7("lotno")), rs7("lotno").DefinedSize, " ") & Space(1) & Padl(rs7("lotdt"), 8, " ") & Space(4) & Padr(rs7("varcode"), rs7("varcode").DefinedSize, " ") & Space(1) & Padr(rs7("cntcd"), rs7("cntcd").DefinedSize, " ") & Space(1) & Padl(rs7("bales"), rs7("bales").DefinedSize, " ") & Space(1) & Padl(rs7("borah"), rs7("borah").DefinedSize, " ") & Space(1) & Padl(rs7("netwt"), rs7("netwt").DefinedSize, " ") & Space(1) & Padl(rs7("value"), rs7("value").DefinedSize, " ")
                tot1 = tot1 + rs7(7)    'bales
                tot2 = tot2 + rs7(8)    'bora
                tot3 = tot3 + rs7(10)   'ratekgs
                tot4 = tot4 + rs7(9)    'qty
                tot5 = tot5 + rs7(11)   'value
                
                tot6 = tot6 + tot1      'grand bales
                tot7 = tot7 + tot2      'grand bora
                tot8 = tot8 + tot3      'grdand ratekgs
                tot9 = tot9 + tot4      'grand qty
                tot10 = tot10 + tot5    'grand value
                rs7.MoveNext
            Loop
            Print #11, Space(15) + " --- Supplier Wise Total --- " + Space(3) & tot6 & Space(2) & tot7 & Space(2) & tot8 & Space(2) & tot9 & Space(2) & tot10
            rs5.MoveNext
        Loop
    Print #11,
    Print #11, Space(5) & String(96, "-")
    Print #11, Space(15) + " --- Grand Total --- " + Space(3) & tot11 & Space(2) & tot12 & Space(2) & tot13 & Space(2) & tot14 & Space(2) & tot15
    Print #11, Space(5) & String(96, "-")
    
        Close #11
        a = FreeFile
         '11 = FreeFile
'        Open "C:\TIPW.bat" For Output As #11
'        Print #11, "cd\"
'        Print #11, "C:"
'        Print #11, "cd\"
'        Print #11, "type TIPW.TXT>prn"
'        Close #11
'        RPTV.txtfile = "C:\TIPW.TXT"
'        RPTV.Batfile = "C:\TIPW.bat"
Call KALBATPROCESS("TIPW")
End Sub
Public Sub LotstockRepHeader(pg1 As Integer)
a = a1
          'divname = "KALPATHARU TEXTILES LIMITED"
          Print #11,
          'Print #11, Space(20) + Space(Round((111 - 2 * Len(divname)) / 2)) + Chr(14) + divname + Space(2) + Chr(14) + Space(Round((67 - 2 * Len(divname)) / 2))
          Print #11, Space(40) + Chr(14) + CENTRE("KALPATHARU TEXTILES LIMITED", Len("KALPATHARU TEXTILES LIMITED"), " ") + Chr(14)
          Print #11, Space(67)
          Print #11,
          Print #11,
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #11, Space(5) + "Customerwise Sales Issues from" + Space(2) + Format(f1, "DD/MM/YYYY") + Space(2) + Format(t1, "DD/MM/YYYY") + Space(28) + CStr(SR) + "Pg.No : " + CStr(pg1)
          Print #11, Space(5) + String(96, "-")
          Print #11, Space(5) + "Code" + Space(2) + "PartyName"
          Print #11, Space(12) + "Lotno" + Space(2) + "ReceiptDate" + Space(2) + "Variety" + Space(2) + "Count"
          Print #11, Space(5) & String(96, "-")
             
End Sub


