Attribute VB_Name = "weighmenttoboentered"
Dim RS1 As Recordset
Dim ResultRs As Recordset
Dim rs As Recordset
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

Public Sub wetbenReport(a As String)
Set cnn = New Connection
a1 = a
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set ResultRs = New Recordset
      
ResultRs.Open "SHAPE {select DISTINCT a.supcd,b.slname,a.areacode,c.areaname,case when d.dlytype = 'M' then 'FOR' else 'Spot' end as dlytype,a.plotno,a.arrno,a.arrdate,a.varcode,a.ratecy,a.Quantity,f.varname,case when upper(a.bbflag) = 'B' then 'Bale' else 'Bora' end as Unit,a.brkcd,e.slname brkname from rm_arrival a,fa_slmas b,Rm_area c,rm_cont d,fa_slmas e,rm_var f where d.divcode='" & Divcode & "' and a.supcd *= b.slcode and a.areacode *= c.areacode and a.contno *= d.contno and a.varcode *=  f.varcode and a.arrdate <= ' " & a1 & "' and a.brkcd = e.slcode and upper(a.passed) = 'Y'  and a.lotno is null  }  AS Command2 COMPUTE Command2 BY 'brkcd','brkname'", cnn, adOpenStatic, adLockOptimistic
        
If ResultRs.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
    
    Set rs = New Recordset
        Set rs.DataSource = ResultRs("command2").UnderlyingValue
'      rs.Open "select distinct a.brkcd,e.slname brkname from rm_arrival a,fa_slmas b,Rm_area c,rm_cont d,fa_slmas e,rm_var f where d.divcode='" & divcode & "' and a.supcd *= b.slcode and a.areacode *= c.areacode and a.contno *= d.contno and a.varcode *=  f.varcode and a.arrdate <= ' " & a1 & "' and a.brkcd = e.slcode and upper(a.passed) = 'Y'  and a.lotno is null", cnn, adOpenStatic, adLockBatchOptimistic
      
    Set RPTV = New Report.ReportView

     z = FreeFile
    Close #z
    Open KALFOLDERDATA & "\wtbe.TXT" For Output As #z
    pg1 = 1
    co = 0
    'Print #z, Chr(15)
     'z = FreeFile
    Call wetbenHeader(pg1, co, s, a)
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
'        Print #z,
        rs.MoveFirst
            
        Do While Not rs.EOF
        Print #z, Space(5) & CStr(rs("brkcd")) + Space(13) + CStr(rs("brkname"))
        co = co + 1
                    If co > pagelen Then
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        co = 0
                        Call wetbenHeader(pg1, co, s, a)
                    End If
             Set RS1 = New Recordset
            RS1.Open "select DISTINCT a.supcd,b.slname,a.areacode,c.areaname,case when d.dlytype = 'M' then 'FOR' else 'Spot' end as dlytype,a.plotno,a.arrno,a.arrdate,a.varcode,a.ratecy,a.Quantity,f.varname,case when upper(a.bbflag) = 'B' then 'Bale' else 'Bora' end as Unit,a.brkcd,e.slname brkname from rm_arrival a,fa_slmas b,Rm_area c,rm_cont d,fa_slmas e,rm_var f where d.divcode='" & Divcode & "' and a.supcd *= b.slcode and a.areacode *= c.areacode and a.contno *= d.contno and a.varcode *=  f.varcode and a.arrdate <= ' " & a1 & "' and a.brkcd = e.slcode and upper(a.passed) = 'Y'  and a.lotno is null and a.brkcd='" & rs("brkcd") & "' ", cnn, adOpenStatic, adLockBatchOptimistic
                RS1.MoveFirst
                Do While Not RS1.EOF
                    Print #z,
                    co = co + 1
                    If co > pagelen Then
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        co = 0
                        Call wetbenHeader(pg1, co, s, a)
                    End If
                    Print #z, Space(5) & Padr(CStr(RS1("supcd")), 9, " ") + Space(5) + Padr(CStr(IIf(IsNull(RS1("slname")), " ", RS1("slname"))), 21, " ") + Space(5) + Padr(CStr(IIf(IsNull(RS1("areaname")), " ", RS1("areaname"))), 15, " ") + Padr(CStr(RS1("dlytype")), 8, " ") + Space(2) + Padl(CStr(IIf(IsNull(RS1("plotno")), 0, RS1("plotno"))), 6, " ") + Space(1) + Padl(CStr(RS1("arrno")), 8, " ") + Space(2) + Padr(CStr(Format(RS1("arrdate"), "DD-MM-YYYY")), 11, " ") + Space(0) + Padr(CStr(RS1("VARcode")), 7, " ") + Padl(CStr(INF((RS1("RATEcy")), 2)), 16, " ") + Space(2) + Padr(CStr(RS1("unit")), 10, " ") + Space(2) + Padl(RS1("Quantity"), 10, " ") ' Padl(inf(rs1("Quantity"),3), 10, " ")
                    co = co + 1
                    If co > pagelen Then
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        co = 0
                        Call wetbenHeader(pg1, co, s, a)
                    End If
                    tot = tot + RS1("QUANTITY")
'               tot2 = tot2 + resultrs("STOCK")
'               tot3 = tot3 + resultrs("VAL")
                RS1.MoveNext
        Loop
            rs.MoveNext
            Print #z,
            co = co + 1
                    If co > pagelen Then
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        co = 0
                        Call wetbenHeader(pg1, co, s, a)
                    End If
            If RS1.RecordCount > 1 Then
                    Print #z, Space(5) & Space(132) + "** Brokerwise Total **" + Padl(CStr(tot), 16, " ") 'Padl(Format(tot, "#.000"), 16, " ")
                    co = co + 1
                    If co > pagelen Then
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        co = 0
                        Call wetbenHeader(pg1, co, s, a)
                    End If
            End If
            tot1 = tot1 + tot
            tot = 0
        Loop
Print #z, Space(5) & String(140, "-")
Print #z, Space(5) & Space(104) + "**  Grand Total  **" + Space(1) + Padl(CStr(tot1), 16, " ") 'Padl(Format(tot1, "#.000"), 16, " ")
Print #z, Space(5) & String(140, "-")
Print #z, Chr(12)
Print #z, Chr(18)
Close #z
 z = FreeFile
 Call KALBATPROCESS("wtbe")
'Open "C:\wtbe.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "C:"
'Print #z, "cd\"
'Print #z, "type wtbe.TXT>prn"
'Close #z
'RPTV.txtfile = "C:\wtbe.TXT"
'RPTV.Batfile = "C:\wtbe.bat"
Screen.MousePointer = 0
End Sub
Public Sub wetbenHeader(pg1 As Integer, co As Integer, s As String, a As String)
a = a1
'b = b
          'divname = "KALPATHARU TEXTILES LIMITED"
          Print #z, Chr(18)
'          Print #z, Space(20) + Space(Round((170 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((170 - 2 * Len(DIVNAME)) / 2))
'          'Print #z, Space(40) + Chr(14) + CENTRE("KALPATHARU TEXTILES LIMITED", Len("KALPATHARU TEXTILES LIMITED"), " ") + Chr(14)
'          Print #z, Space(5) & Space(67)
'          Print #z,
'          Print #z,
           Print #z, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z,
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          
          Print #z, Space(3) + Chr(27) + "E" + "Weightment Not Entered" + Chr(27) + "F" + " As On " + Format(Trim(a), "DD/MM/YYYY") + Space(20) + CStr(SR) + "Pg.No : " + CStr(pg1) + Chr(15)
          Print #z, Space(5) & String(140, "-")
          Print #z, Space(5) & "Code               Broker Name                                           Party  Arrival  "
          'Print #z,
          Print #z, Space(5) & "Code          Supplier Name             Area Name      Delivery  Lot No       No     Date    Variety      Rate/Candy  Bales/Borah   Quantity"
          Print #z, Space(5) & String(140, "-")
          co = co + 1
End Sub











