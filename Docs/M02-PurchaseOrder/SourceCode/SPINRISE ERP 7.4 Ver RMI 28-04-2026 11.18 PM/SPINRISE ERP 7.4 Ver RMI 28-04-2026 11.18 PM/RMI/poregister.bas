Attribute VB_Name = "poregister"
Dim cnn As Connection
Dim rs As Recordset

Dim RPTV As Report.ReportView
Dim sr As String
Dim a As Integer


Public Sub poregisterreport(u As String, v As String, DIVNAME As String)


Set cnn = New Connection

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs = New Recordset
rs.Open "Select distinct podate  from rm_pord  where  podate between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  ", cnn, adOpenStatic

If rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
Open "C:\poreg.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
co = co + 1
Call poregisterHeader(CStr(pg1), CStr(co), u, v, DIVNAME)
   
Print #a, Space(5) + String(230, "-")
Do While Not rs.EOF

co = co + 1
Set rs1 = New Recordset
rs1.Open "select distinct  a.PONO,b.Slname as Supplier,e.slname as Broker,c.aREAname,d.VARname,case when a.bbflag ='B' then 'Bale' else 'Bohra' end  as uom ,a.QTY,a.grOSSWT,a.TAREWT ,a.NETTWT, a.RATEKG,a.PAYMODE, a.PLOTNO,a.PLOTDT from rm_pord a, fa_slmas b,rm_area c,rm_var d , fa_slmas e where   b.slcode =A.SUPCD  and a.brkcd *= E.SLCODE AND A.AREACODE=C.AREACODE   and  a.VARCODE = d. varcode   and podate  = '" & Format(rs("podate"), "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' ", cnn, adOpenStatic
         
If rs1.RecordCount > 0 Then
    Print #a, Space(5) & rs("podate")
    co = co + 1
End If
Do While Not rs1.EOF
                                                                                                                                                                                                                                                                                                                                                                                                      ',, , ,a.PLOTDT
Print #a, Space(14); Padl(rs1("pono"), 5, " ") & Space(2); Padr(rs1("supplier"), 40, " ") & Space(2); Padr(rs1("broker"), 40, " ") & Space(2) & Padr(rs1("aREAname"), 25, " ") & Space(2) & Padr(rs1("VARname"), 20, " ") & Space(2) & Padr(rs1("uom"), 5, " ") & Space(2); Padl(INF((rs1("QTY")), 3), 8, " ") & Space(2) & Padl(rs1("grOSSWT"), 9, "") & Space(2) & Padl(rs1("TAREWT"), 6, "") & Space(2) & Padl(rs1("NETTWT"), 9, "") & Space(2) & Padl(INF(rs1("RATEKG"), 2), 6, "") & Space(2) & Padr(rs1("PAYMODE"), 2, "") & Space(2) & Padl(rs1("Plotno"), 10, "") & Space(2) & rs1("plotdt")
co = co + 1
If co > pagelen Then
pg1 = pg1 + 1
Print #a, Space(5) + String(230, "-")
Print #a, Chr(12)
co = 0
Call poregisterHeader(CStr(pg1), CStr(co), u, v, DIVNAME)
End If





rs1.MoveNext
Loop
If co > pagelen Then
pg1 = pg1 + 1
Print #a, Space(5) + String(230, "-")
Print #a, Chr(12)
co = 0
Call poregisterHeader(CStr(pg1), CStr(co), u, v, DIVNAME)
End If
rs.MoveNext
Loop
Print #a, Space(5) + String(230, "-")


Print #a, Chr(12)
Close #a
a = FreeFile
Open "c:\poreg.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type poreg.txt>prn"
Close #a
RPTV.txtfile = "c:\poreg.txt"
RPTV.Batfile = "c:\poreg.bat"
Screen.MousePointer = 0
End Sub
Public Sub poregisterHeader(pg1 As Integer, co As Integer, u As String, v As String, DIVNAME As String)
          Print #a, Chr(18)
           Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
           Print #a,
           sr = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Purchase Order Register  " + Chr(27) + "F" + "from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(120) + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
           Print #a, Space(5) + String(230, "-")
          Print #a, Space(7) & "Po Date"
          Print #a,
                            ''PONO     PODATE                      CONTNO      CONTDT                      SUPCD  BRKCD  AREACODE VARCODE    CNTCODE BBFLAG QTY     DELQTY  GROSSWT      TAREWT     NETTWT       CANDYRATE   RATEKG      PAYMODE DLYTYPE CARCODE PLOTNO     PLOTDT                      PRNO                 PRMARK          SBNO                 CROPYEAR        COMMPER SPOTEXP    OTHRS      TAX  INSUR TRANS COMMISSION HVICODE         HVIREPORT       CATEGORY DELVERYSCH                     PAYTERMS             STAPLEN  UNIRATIO MICRONAIRE SCI      STRENGTH SFI      CG       MOIS_PER TRASH_PER
           Print #a, Space(13) & "Po No.  Supplier Name                             Broker Name                               Station                    Variety Name          Uom         QTY    GROSSWT  TAREWT     NETTWT  RATEKG  PAY     PLOTNO    PLOTDT "
          Print #a, "                                                                                                                                                          MODE"
          co = co + 7
End Sub






