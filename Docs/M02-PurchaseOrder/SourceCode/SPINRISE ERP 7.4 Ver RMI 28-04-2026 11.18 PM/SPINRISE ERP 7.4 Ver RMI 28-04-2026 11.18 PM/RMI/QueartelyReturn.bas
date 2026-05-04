Attribute VB_Name = "QueartelyReturn"
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Dim CITY As String
Public Sub QuarReport(U As String, V As String, DIVNAME As String, p As Double, q As Double, W As String)
Dim rs1 As Recordset
Dim TEMP As New Recordset
Dim PageLen As Integer
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim cnn As Connection
Set cnn = New Connection
PageLen = 45
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs1 = New Recordset
rs1.Open " select  distinct k.divcode,k.catcd,k.lotno,k.lotdt,round(sum(isnull(k.openbal,0)),2) as opkgs, round(sum(isnull(k.recep,0)),2) as reckgs,round(sum(isnull(k.issue,0)),2) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.recep,0)) - sum(isnull(k.issue,0)) as 'Closing',  " & _
                        " sum(isnull(k.openbal,0)) + round(sum(isnull(k.recep,0)),2) as 'totalreckgs', sum(isnull(k.OpenBale,0)) +  sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) -  sum(isnull(k.IssBorah,0)) as 'Closborah',g.varname, sum(isnull(k.openbale,0)) as openbale, sum(isnull(k.openborah,0)) as openborah, sum(isnull(k.recpbale,0)) as recbale, sum(isnull(k.recpborah,0)) as recborah, sum(isnull(k.issbale,0)) as issbale, sum(isnull(k.issborah, 0)) As issborah  from ((  select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(round(isnull(e.netwt,0) - isnull(t.issuekgs,0),2)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg   IN ('R','H') then isnull(e.bales,0) - isnull(t.bales,0) end) as 'OpenBorah'," & _
                        " 0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale, 0 as IssBorah from    (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',round(sum(isnull(c.isskgs,0)),2) 'issuekgs',Count (c.baleno) 'Bales' from rm_issb c,rm_lot b where c.docdt < ' " & Format(U, "yyyy - mm - dd") & " 'and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode = '01'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where e.lotdt between  " & _
                        " ' " & Format(U, "yyyy - mm - dd") & " ' and ' " & Format(V, "yyyy - mm - dd") & " ' " & _
                        " and e.divcode = t.divcode  and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and  e.catcd = 'C' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep', case when e.bblflg = 'B' then e.bales end 'recpBale',case when  e.bblflg   IN ('R','H') then e.bales end 'recpBorah',0 as 'Issue', 0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where " & _
                        " e.lotdt between  ' " & Format(U, "yyyy - mm - dd") & " ' and ' " & Format(V, "yyyy - mm - dd") & " 'and e.catcd = 'C' and e.lotno = c.lotno union   select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as 'Openbal', 0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale, 0 as recpBorah,round(sum(isnull(a.isskgs,0)),2)as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale', case when c.bblflg  IN ('R','H') then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where a.docdt between " & _
                        " ' " & Format(U, "yyyy - mm - dd") & " ' and ' " & Format(V, "yyyy - mm - dd") & " 'and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot f,rm_var g Where f.lotno = k.lotno And f.lotdt = k.lotdt And f.catcd = k.catcd And f.divcode = k.divcode  and f.varcode = g.varcode group by k.divcode,k.catcd,  k.lotno , k.lotdt, g.varname ", Cn, adOpenStatic, adLockBatchOptimistic



If rs1.EOF Then
    MsgBox "Sorry ! No Issues found for this month", vbInformation, head
    Exit Sub
End If
Set TEMP = New Recordset
TEMP.Open "select city from pp_divmas where divcode='" & rs1(0) & "'", Cn, adOpenDynamic, adLockOptimistic
CITY = TEMP(0)
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\qr.TXT" For Output As #a
pg1 = 1
Co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, Co, U, V, rs1(0), DIVNAME)
rs1.MoveFirst
Do While Not rs1.EOF
               Print #a,
              Print #a, Space(5) + "COTTON YARN : CENTRAL EXCISE R.C"
             Print #a,
               If W = "Cotton" Then
                Print #a, Space(5) + W + Padl(INF(rs1(4), 2), 29, " ") + Padl(INF(rs1(5), 2), 21, " ") + Padl(INF(rs1(8), 2), 20, " ") + Padl(CStr(Format(IIf(rs1(6) = 0, " ", rs1(6)), "###,###,##0.000")), 20, " ") + Padl(CStr(Format(IIf(p = 0, " ", p), "###,###,##0.000")), 19, " ") + Padl(CStr(Format(IIf(q = 0, " ", q), "###,###,##0.000")), 21, " ") + Padl(INF(rs1(7), 2), 27, " ")
                ElseIf W = "Fibre" Then
                Print #a, Space(5) + W + Space(1) + Padl(CStr(Format(IIf(rs1(4) = 0, " ", rs1(4)), "###,###,##0.000")), 29, " ") + Padl(CStr(Format(IIf(rs1(5) = 0, " ", rs1(5)), "###,###,##0.000")), 21, " ") + Padl(CStr(Format(IIf(rs1(8) = 0, " ", rs1(8)), "###,###,##0.000")), 20, " ") + Padl(CStr(Format(IIf(rs1(6) = 0, " ", rs1(6)), "###,###,##0.000")), 20, " ") + Padl(CStr(Format(IIf(p = 0, " ", p), "###,###,##0.000")), 19, " ") + Padl(CStr(Format(IIf(q = 0, " ", q), "###,###,##0.000")), 21, " ") + Padl(CStr(Format(IIf(rs1(7) = 0, " ", rs1(7)), "###,###,##0.000")), 27, " ")
                ElseIf W = "" Then
                
                Print #a, Space(11) + Padl(INF(rs1(4), 2), 29, " ") + Padl(INF(rs1(5), 2), 21, " ") + Padl(INF(rs1(8), 2), 20, " ") + Padl(INF(rs1(6), 2), 20, " ") + Padl(CStr(Format(IIf(p = 0, " ", p), "###,###,##0.000")), 19, " ") + Padl(CStr(Format(IIf(q = 0, " ", q), "###,###,##0.000")), 21, " ") + Padl(INF(rs1(7), 2), 27, " ")
                Else
                Print #a, Space(5) + W + Padl(CStr(Format(IIf(rs1(4) = 0, " ", rs1(4)), "###,###,##0.000")), 26, " ") + Padl(CStr(Format(IIf(rs1(5) = 0, " ", rs1(5)), "###,###,##0.000")), 21, " ") + Padl(CStr(Format(IIf(rs1(8) = 0, " ", rs1(8)), "###,###,##0.000")), 20, " ") + Padl(CStr(Format(IIf(rs1(6) = 0, " ", rs1(6)), "###,###,##0.000")), 20, " ") + Padl(CStr(Format(IIf(p = 0, " ", p), "###,###,##0.000")), 19, " ") + Padl(CStr(Format(IIf(q = 0, " ", q), "###,###,##0.000")), 21, " ") + Padl(CStr(Format(IIf(rs1(7) = 0, " ", rs1(7)), "###,###,##0.000")), 27, " ")
                End If
                 Co = Co + 4
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call PartyHeader(pg1, Co, U, V, rs1(0), DIVNAME)
                  Co = 10
                 End If
                
    rs1.MoveNext
Loop
Print #a,
Print #a, Space(5) + String(167, "-")
Print #a, Space(5) + "We declare that we have compared the above particulars with the record and books of our factory and that they are accurate and complete"
Print #a,
Print #a,
Print #a,
Print #a, Space(139) + "For " + DIVNAME
Print #a,
Print #a,
Print #a,
Print #a, Space(5) + "Place :" + Padr(CITY, 20, " ") + Space(113) + "Authorised Signatory"
Print #a, Space(5) + "Date   :" + Format(pdate, "dd/mm/yyyy")
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
Call KALBATPROCESS("qr")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, Divcode As String, DIVNAME As String)
Dim Addr As New Recordset
          Print #a,
          Print #a, Space(10) + Space(Round((167 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((167 - 2 * Len(DIVNAME)) / 2))
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + "Quarterly return of meterials and Goods Manufactured (Rule 55 && 175c(4)) Quarter ending"
          Print #a, Space(5) + Format(U, "dd/mm/yyyy") + "(" + Format(U, "dd/mm/yyyy") + "to" + Format(V, "dd/mm/yyyy")
          Print #a,
          Print #a, Space(5) + "Name of the Factory with address";
          Addr.Open "select * from pp_divmas where divcode ='" & Divcode & "'", Cn, adOpenDynamic, adLockOptimistic
          Print #a, Space(8) + Trim(Addr("divname"))
          Print #a, Space(45) + Trim(Addr("add1"))
          Print #a, Space(45) + Trim(Addr("add2"))
          Print #a, Space(45) + Trim(Addr("city"))
          Print #a,
          Print #a, Space(149) + CStr(SR) + "Pg.No : " + CStr(pg1)
          Print #a, Space(5) + String(167, "-")
          Print #a, Space(5) + "Material Type               Opening              Receipt               Total              Issues    Excisable goods      Materials                          Closing"
          Print #a, Space(5) + "                              (Kgs)                (Kgs)               (Kgs)               (Kgs)    Manufact. (Kgs)      Destroyed (Kgs)                      (Kgs)    "
          Print #a, Space(5) + String(167, "-")
End Sub






