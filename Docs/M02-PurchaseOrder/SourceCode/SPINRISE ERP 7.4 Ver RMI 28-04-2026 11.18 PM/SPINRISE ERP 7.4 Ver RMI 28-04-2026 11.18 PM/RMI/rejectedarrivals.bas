Attribute VB_Name = "rejectedarrivals"
Dim RS1 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s As String
Dim z As Integer
Public Sub rejarrReport(a As String, b As String)
Set cnn = New Connection
a1 = a
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
    Set ResultRs = New Recordset
    'resultrs.Open "SHAPE {select a.supcd,slname,areaname,plotno,a.varcode,arrno,arrdate,ratecy,'qty'=quantity-isnull(passbl,0),dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d where a.contno=d.contno and a.areacode=d.areacode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode  AND A.divcode='" & Divcode & "' and isnull(quantity,0)-isnull(passbl,0) > 0 AND arrdate<='" & a1 & "'}  AS Command2 COMPUTE Command2 BY 'supcd','slname'", cnn, adOpenStatic, adLockOptimistic
    ResultRs.Open "SHAPE {select a.supcd,slname,areaname,a.plotno,a.varcode,arrno,arrdate,round(ratecy,0) as ratecy,'qty'=quantity-isnull(passbl,0),dlytype=case dlytype when 'M' then 'FOR' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d where a.contno=d.contno and a.areacode=d.areacode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode  AND A.divcode='" & Divcode & "' and  isnull(quantity,0)-isnull(passbl,0) > 0  AND passdt='" & a1 & "' and a.supcd='" & b & "'}  AS Command2 COMPUTE Command2 BY 'supcd','slname'", cnn, adOpenStatic, adLockOptimistic
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set RS1 = New Recordset
    Set RS1.DataSource = ResultRs("command2").UnderlyingValue
      'RS1.Open "select distinct a.supcd,slname,areaname,plotno,a.varcode,arrno,arrdate,ratecy,'qty'=quantity-isnull(passbl,0),dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d where a.contno=d.contno and a.areacode=d.areacode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode  AND A.divcode='" & Divcode & "' and isnull(quantity,0)-isnull(passbl,0) > 0 AND arrdate<='" & a1 & "'", cnn, adOpenStatic
    'Set rs2.DataSource = ResultRs("command3").UnderlyingValue
    
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #z
    Open "C:\rear.TXT" For Output As #z
    pg1 = 1
    co = 0
    'Print #z, Chr(15)
     'z = FreeFile
    Call rejarrHeader(pg1, co, s, a)
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
'        Print #z,
        Do While Not ResultRs.EOF
               Print #z, Space(2) & Padr(CStr(RS1("slname")), 40, " ") + Space(0) + Padr(CStr(RS1("supcd")), 10, " ")
               'Print #z, Space(5) & Padr(CStr(RS1("supcd")), 10, " ") + Space(5) + Padr(CStr(RS1("slname")), 40, " ")
               co = co + 1
               If co >= pagelen Then
                    Print #z, Space(2) & String(153, "-")
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call rejarrHeader(pg1, co, s, a)
                End If
                Set Namers = New Recordset
                Namers.Open "Select varname from rm_var where varcode='" & RS1("VARcode") & "'", DB, adOpenStatic
                Print #z, Space(42) + Padr(CStr(RS1("areaname")), 20, " ") + Space(0) + Padl(CStr(IIf(IsNull(RS1("plotno")), " ", RS1("plotno"))), 10, " ") + Space(0) + Padl(CStr(RS1("arrno")), 10, " ") + Space(1) + Padr(CStr(Format(RS1("arrdate"), "DD-MM-YYYY")), 10, " ") + Space(1) + Padr(CStr(RS1("dlytype")), 10, " ") + Space(1) + Padr(CStr(Namers(0)), 24, " ") + Space(0) + Padl(CStr(RS1("Qty")), 10, " ") + Padl(CStr(INF((RS1("RATEcy")), 0)), 16, " ")
                'Print #z, Space(5) + Padr(CStr(RS1("areaname")), 20, " ") + Space(10) + Padl(CStr(IIf(IsNull(RS1("plotno")), " ", RS1("plotno"))), 10, " ") + Space(4) + Padl(CStr(RS1("arrno")), 10, " ") + Space(6) + Padr(CStr(Format(RS1("arrdate"), "DD-MM-YYYY")), 11, " ") + Space(3) + Padr(CStr(RS1("dlytype")), 10, " ") + Space(2) + Padr(CStr(Namers(0)), 24, " ") + Space(1) + Padl(CStr(RS1("Qty")), 10, " ") + Space(2) + Space(2) + Padl(CStr(INF((RS1("RATEcy")), 0)), 16, " ")
               'Print #z, Space(5) + CStr(rs1("brkcd")) + Space(9) + CStr(rs1("brname"))
                co = co + 1
                If c1 >= pagelen Then
                      Print #z, Space(2) & String(153, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      co = 0
                      Call rejarrHeader(pg1, co, s, a)
                End If
               'tot = tot + rs1("Qty")
'               tot1 = tot1 + resultrs("BORAH")
'               tot2 = tot2 + resultrs("STOCK")
'               tot3 = tot3 + resultrs("VAL")
                ResultRs.MoveNext
        Loop
                Print #z, Space(2) & String(153, "-")
                co = co + 1
                If c1 >= pagelen Then
                      Print #z, Space(2) & String(153, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      co = 0
                      Call rejarrHeader(pg1, co, s, a)
                End If
        Print #z,
                co = co + 1
                If c1 >= pagelen Then
                      Print #z, Space(2) & String(153, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      co = 0
                      Call rejarrHeader(pg1, co, s, a)
                End If
        
Print #z, Chr(12)
Print #z, Chr(18)
Close #z
 z = FreeFile
Open "c:\rear.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type rear.TXT>prn"
Close #z
RPTV.txtfile = "c:\rear.TXT"
RPTV.Batfile = "c:\rear.bat"
Screen.MousePointer = 0
End Sub
Public Sub rejarrHeader(pg1 As Integer, co As Integer, s As String, a As String)
a = a1
          Print #z, Chr(15)
          Print #z, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 142, " ") + Chr(27) + "F"
          Print #z,
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #z, Space(2) + Chr(27) + "E" + "Rejected Cases" + Chr(27) + "F" + Space(1) + "As On " + Format(Trim(a), "DD/MM/YYYY") + Space(90) + CStr(SR) + "Pg.No : " + CStr(pg1)
          'Print #z, Space(2) & String(153, "-")
          Print #z, Space(2) & "---------------------------------------------------------------------------------------------------------------------------------------------------------"
          Print #z, Space(2) & "Supplier Name                           Code"
          Print #z, Space(2) & "                                        Station Name      Party Lot No Arrival No      Date Delivery    Variety                Bales/Borah     Rate/Candy"
          Print #z, Space(2) & "---------------------------------------------------------------------------------------------------------------------------------------------------------"
          'Print #z, Space(2) & String(153, "-")
          'Print #z, Space(2) & "Supplier Name      Code"
          'Print #z, Space(2) & "                   Area Name     Party Lot No    Arrival No         Date       Delivery    Variety                 Bales/Borah          Rate/Candy"
          'Print #z, Space(5) & "Code           Supplier Name"
          'Print #z, Space(5) & "Area Name                   Party Lot No    Arrival No         Date       Delivery    Variety                 Bales/Borah          Rate/Candy"
           co = co + 9
End Sub









