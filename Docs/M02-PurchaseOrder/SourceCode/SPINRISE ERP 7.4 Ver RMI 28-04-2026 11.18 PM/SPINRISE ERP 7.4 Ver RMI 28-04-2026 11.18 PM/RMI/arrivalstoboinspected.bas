Attribute VB_Name = "arraivalstobeinspected"
Dim RS1 As Recordset
Dim ResultRs As Recordset
Dim rss As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim y As String
Dim pg1 As Integer
Dim co As Integer
Dim Namers As Recordset
Dim s As String
Dim z As Integer
Public Sub arrtoboinsReport(a As String)
Set cnn = New Connection
a1 = a
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

    Set ResultRs = New Recordset

    'ResultRs.Open "SHAPE {select a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and  (passed is null or passed='N') and a.brkcd*=e.slcode   and A.divcode='" & Divcode & "' AND arrdate<='" & a1 & "'}  AS Command2 COMPUTE Command2 BY 'brkcd','brname'", Cnn, adOpenStatic, adLockOptimistic
    'select a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e Where a.contno = d.contno And a.areacode = b.areacode And a.bbflag = d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode and  (passed is null or passed='N') and a.brkcd*=e.slcode and A.divcode='" & DIVCODE & "' AND arrdate<='2006-01-16' and arrno in(60,63,66,102)
    ResultRs.Open "SHAPE {select a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'FOR' when 'S' then 'Spot'  end from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e Where a.contno = d.contno And a.areacode = b.areacode And a.bbflag = d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode and  (passed is null or passed='N') and a.brkcd*=e.slcode and A.divcode='" & Divcode & "' AND arrdate<='" & a1 & "'}  AS Command2 COMPUTE Command2 BY 'brkcd','brname'", cnn, adOpenStatic, adLockOptimistic
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
    Set rss = New Recordset
    Set rss.DataSource = ResultRs("command2").UnderlyingValue

    Set RPTV = New Report.ReportView

     z = FreeFile
    Close #z
    Open "C:\atbi.TXT" For Output As #z
    pg1 = 1
    co = 0
    Call arrtoboinsHeader1(CStr(pg1), CStr(co), CStr(s), CStr(a))
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
    Do While Not ResultRs.EOF
        Print #z, Chr(27) & "E" & Space(0) + CStr(rss("supcd")) + Space(2) + Padr(rss("slname"), 33, " ") & Chr(27) & "F"
        Set RS1 = New Recordset
        RS1.Open "select isnull(a.brkcd,'') as brkcd,isnull(e.slname,'') as brname,isnull(a.supcd,'')as supcd,isnull(c.slname,'')as slname,isnull(areaname,'')as areaname,isnull(a.Quantity,0) as quantity,isnull(a.plotno,'')as plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'FOR' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and  (passed is null or passed='N') and a.brkcd *=e.slcode  and A.divcode='" & Divcode & "' AND arrdate<='" & a1 & "' and a.supcd='" & rss("supcd") & "'", cnn, adOpenStatic, adLockOptimistic
        Do While Not RS1.EOF

              Set Namers = New Recordset
              Namers.Open "Select varname from rm_var  where varcode='" & RS1("VARcode") & "'", DB, adOpenStatic
              Print #z, Space(0) & Padr(CStr(RS1("brkcd")), 6, " ") + Space(2) + Padr(CStr(RS1("brname")), 33, " ") + Space(2) + Padr(CStr(RS1("areaname")), 15, " ") + Padl(CStr(RS1("plotno")), 7, " ") + Space(7) + Padl(CStr(RS1("arrno")), 6, " ") + Space(2) + Padr(CStr(Format(RS1("arrdate"), "DD/MM/YY")), 11, " ") + Space(1) + Padr(CStr(RS1("dlytype")), 10, " ") + Space(0) + Padr(CStr(Namers(0)), 17, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("RATEcy") = 0, " ", RS1("RATEcy"))), 0)), 10, " ") + Space(3) + Padl(INF(CStr(RS1("Quantity")), 0), 12, " ")
              Print #z,
               c1 = c1 + 1
                If c1 > 62 Then
                  Print #z, Chr(12)
                  pg1 = pg1 + 1
                  c1 = 0
                  Call arrtoboinsHeader1(CStr(pg1), CStr(co), CStr(s), CStr(a))
                End If
               tot = tot + RS1("Quantity")
            RS1.MoveNext
            tot1 = tot1 + tot
            tot = 0
        Loop
        ResultRs.MoveNext
    Loop
        Print #z, Space(0) & String(145, "-")
        Print #z, Space(88) + "** Grand Total ** " + Space(14) + Padl(INF(CStr(tot1), 0), 25, " ") '& Chr(27) & "F"
        Print #z, Space(0) & String(145, "-")

Print #z, Chr(12)
Print #z, Chr(18)
Close #z
 z = FreeFile
Open "c:\atbi.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type atbi.TXT>prn"
Close #z
RPTV.txtfile = "c:\atbi.TXT"
RPTV.Batfile = "c:\atbi.bat"
End Sub
Public Sub arrtoboinsHeader1(pg1 As Integer, co As Integer, s As String, a As String)
a = a1

          Print #z, Chr(18)
          Print #z, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          sr = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(0) & "Not Inspected Cases as on " + Format(a1, "DD/mm/YY") + Space(92) + CStr(sr) + "Pg. : " + Padl(pg1, 3, " ") + Chr(15)
          
          Print #z, Space(0) & String(145, "-")
          Print #z, Space(0) & "Code    Supplier Name                                                                                                                         "
          Print #z, Space(0) & "                                                            Party      Arrival        "
          Print #z, Space(0) & "Code    Broker Name                        Station         Lot No       Number    Date      Delivery  Variety           Rate/Candy       Quantity"
          Print #z, Space(0) & String(145, "-")

End Sub












'Dim rs1 As Recordset
'Dim ResultRs As Recordset
'Dim rss As Recordset
'Dim RPTV As Report.ReportView
'Dim re As String
'Dim tot, tot1, tot2, tot3 As Double
'Dim c1 As Integer
'Dim cnn As Connection
'Dim str1, a1 As String
'Dim y As String
'Dim PG1 As Integer
'Dim co As Integer
'Dim Namers As Recordset
'Dim s As String
'Dim z As Integer
'Public Sub arrtoboinsReport(A As String)
'Set cnn = New Connection
'a1 = A
'cnn.Provider = "MSDATASHAPE"
'cnn.Open connectstring
'
'
'    Set ResultRs = New Recordset
'
'    'resultrs.Open "SHAPE {select a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and  (passed is null or passed='N') and e.slcode = a.brkcd and A.divcode='" & Divcode & "' AND arrdate<='" & a1 & "'}  AS Command2 COMPUTE Command2 BY 'brkcd','brname'", cnn, adOpenStatic, adLockOptimistic
'
'    'ResultRs.Open "SHAPE {select a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and  (passed is null or passed='N') and a.brkcd*=e.slcode   and A.divcode='" & Divcode & "' AND arrdate<='" & a1 & "'}  AS Command2 COMPUTE Command2 BY 'brkcd','brname'", cnn, adOpenStatic, adLockOptimistic
'
'    ResultRs.Open "SHAPE {select f.ncpflg,a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,a.ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e,rm_lot f where ncpflg='Y' and a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and a.bbflag=f.bblflg and d.supcd=c.slcode and a.supcd=c.slcode and a.supcd=f.supcd and a.areacode=b.areacode and a.areacode=f.areacd and b.areacode=d.areacode and  (passed is null or passed='N') and a.brkcd*=e.slcode   and A.divcode='" & Divcode & "' AND arrdate<='" & a1 & "'}  AS Command2 COMPUTE Command2 BY 'brkcd','brname'", cnn, adOpenStatic, adLockOptimistic
'
'                          'select ncpflg,a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,a.ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e,rm_lot f where f.ncpflg='Y' and a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and a.bbflag=f.bblflg and d.supcd=c.slcode and a.supcd=c.slcode and a.supcd=f.supcd  and a.areacode=b.areacode and a.areacode=f.areacd and b.areacode=d.areacode and  (passed is null or passed='N') and a.brkcd*=e.slcode   and A.divcode='" & DIVCODE & "' AND arrdate<='2005-10-14'
'
'
'
'    If ResultRs.EOF Then
'        MsgBox "No Records Found", vbInformation, head
'        Exit Sub
'    End If
'    Set rss = New Recordset
'    Set rss.DataSource = ResultRs("command2").UnderlyingValue
''    rs1.Open "select a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and  (passed is null or passed='N') and e.slcode = a.brkcd and A.divcode='" & divcode & "' AND arrdate<='" & a1 & "'", cnn, adOpenStatic
'    Set RPTV = New Report.ReportView
'
'     z = FreeFile
'    Close #z
'    Open "C:\atbi.TXT" For Output As #z
'    PG1 = 1
'    co = 0
'    'Print #z, Chr(15)
'     'z = FreeFile
'    Call arrtoboinsHeader(PG1, co, s, A)
'      tot = 0
'      tot1 = 0
'      tot2 = 0
'      tot3 = 0
''        Print #z,
'    Do While Not ResultRs.EOF
'        Print #z, Space(5) + CStr(rss("supcd")) + Space(6) + CStr(rss("slname"))
'        Set rs1 = New Recordset
'        'RS1.Open "select isnull(a.brkcd,'') as brkcd,isnull(e.slname,'') as brname,isnull(a.supcd,'')as supcd,isnull(c.slname,'')as slname,isnull(areaname,'')as areaname,isnull(a.Quantity,0) as quantity,isnull(a.plotno,'')as plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and  (passed is null or passed='N') and a.brkcd *=e.slcode  and A.divcode='" & Divcode & "' AND arrdate<='" & a1 & "' and a.supcd='" & rss("supcd") & "'", cnn, adOpenStatic, adLockOptimistic
'        rs1.Open "select isnull(a.brkcd,'') as brkcd,isnull(e.slname,'') as brname,isnull(a.supcd,'')as supcd,isnull(c.slname,'')as slname,isnull(areaname,'')as areaname,isnull(a.Quantity,0) as quantity,isnull(a.plotno,'')as plotno,a.varcode,a.arrno,a.arrdate,f.ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e,rm_lot f where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and ncpflg='y' and a.brkcd *=e.slcode  and A.divcode='" & Divcode & "' AND arrdate<='" & a1 & "' and a.supcd= '" & rss("supcd") & "' and  a.supcd=f.supcd and a.areacode=f.areacd and a.arrno=f.arrno and a.varcode=f.varcode", cnn, adOpenStatic, adLockReadOnly
'        Do While Not rs1.EOF
'              ' Print #z,
'              Set Namers = New Recordset
'              Namers.Open "Select varname from rm_var  where varcode='" & rs1("VARcode") & "'", db, adOpenStatic
'              Print #z, Space(5) & Padr(CStr(rs1("brkcd")), 6, " ") + Space(2) + Padr(CStr(rs1("brname")), 35, " ") + Space(2) + Padr(CStr(rs1("areaname")), 20, " ") + Padl(CStr(rs1("plotno")), 7, " ") + Space(7) + Padl(CStr(rs1("arrno")), 6, " ") + Space(2) + Padr(CStr(Format(rs1("arrdate"), "DD-MM-YYYY")), 11, " ") + Space(1) + Padr(CStr(rs1("dlytype")), 10, " ") + Space(0) + Padr(CStr(Namers(0)), 17, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("RATEcy") = 0, " ", rs1("RATEcy"))), 0)), 16, " ") + Space(3) + Padl(CStr(rs1("Quantity")), 10, " ")
'              Print #z,
'               c1 = c1 + 1
'                If c1 > 62 Then
'                  Print #z, Chr(12)
'                  PG1 = PG1 + 1
'                  c1 = 0
'                  Call arrtoboinsHeader(PG1, co, s, A)
'                End If
'               tot = tot + rs1("Quantity")
'
''            Print #z,
''            Print #z, Space(148) + "    ** Broker Total ** " + Space(2) + Padl(CStr(tot), 10, " ")
'            rs1.MoveNext
'            tot1 = tot1 + tot
'            tot = 0
'        Loop
'        ResultRs.MoveNext
'    Loop
'        Print #z, Space(5) & String(156, "-")
'        Print #z, Space(97) + "** Grand Total ** " + Space(19) + Padl(CStr(tot1), 27, " ")
'        Print #z, Space(5) & String(156, "-")
'
''Print #z,
''Print #z,
''
''        Print #z,
''
'Print #z, Chr(12)
'Print #z, Chr(18)
'Close #z
' z = FreeFile
'Open "c:\atbi.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type atbi.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\atbi.TXT"
'RPTV.Batfile = "c:\atbi.bat"
'End Sub
'Public Sub arrtoboinsHeader(PG1 As Integer, co As Integer, s As String, A As String)
'A = a1
'
'          Print #z, Chr(15)
'          Print #z, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 157, " ") + Chr(27) + "F"
'          Print #z,
'          sr = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
'          'Print #z, Space(5) & Chr(27) + "E" + "Not Inspected Cases" + Chr(27) + "F" + " As On :" + Format(Trim(A), "DD/MM/YYYY") + Space(91) + CStr(sr) + "Pg.No : " + CStr(pg1)
'          Print #z, Space(5) & Chr(27) + "E" + "Cotton NCP Record " + Chr(27) + "F" + " As On " + Format(Trim(A), "DD/MM/YYYY") + Space(91) + CStr(sr) + "Pg.No : " + CStr(PG1)
'
'          Print #z, Space(5) & String(156, "-")
'          Print #z, Space(5) & "Code        Supplier Name                                                                                                                         "
'          Print #z, Space(5) & "                                                                  Party       Arrival        "
'          Print #z, Space(5) & "Code    Broker Name                          Area Name            Lot No       Number      Date    Delivery  Variety                 Rate/Candy  Bales/Borah"
'          Print #z, Space(5) & String(156, "-")
'
'End Sub
'
'
'
'
'
'
'
