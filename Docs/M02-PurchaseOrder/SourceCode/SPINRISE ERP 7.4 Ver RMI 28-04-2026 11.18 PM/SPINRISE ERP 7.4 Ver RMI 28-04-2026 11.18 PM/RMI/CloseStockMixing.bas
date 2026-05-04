Attribute VB_Name = "CloseStockMixing"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer


Public Sub CloseMReport(U As String, V As String, W As String, DIVNAME As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim PageLen As Integer
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
Dim tot16 As Double
Dim flg As String
Dim cnn As Connection
Set cnn = New Connection
PageLen = 53
Set RS2 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
                                
                                
RS2.Open " shape {select k.cntcode,k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,isnull(k.ratekg,0) * 100 'rate/qun',sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs',sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale'," & _
                                "sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval' from ((select y.cntcode,y.varcode,y.slname,y.lotdt,y.plotno,y.lotno,y.catcd,y.ratecy,y.ratekg, isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs'," & _
                                "isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah',isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale, 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.cntcode,a.varcode,b.slname,a.lotdt,c.plotno," & _
                                "a.lotno , a.catcd, a.ratecy, a.ratekg, Sum(IsNull(a.netwt, 0)) 'kgs1', case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end as 'Bale1', case when a.bblflg   IN ('R','H') then sum(isnull(a.bales,0)) end as 'Borah1', sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a, fa_slmas b,rm_arrival c " & _
                                "where a.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.supcd = b.slcode and a.arrdt = c.arrdate and a.arrno = c.arrno and  a.lotno = c.lotno and a.catcd = c.catcd and c.catcd = '" & (Mid$(W, 1, (InStr(W, "-") - 1))) & "'  and a.divcode = c.divcode and  a.catcd ='C'" & _
                                "and a.divcode = '" & Divcode & "'  group by a.cntcode,a.varcode,b.slname,a.lotdt,c.plotno,a.lotno,a.catcd,a.ratecy,a.bblflg,a.ratekg)y,(select d.cntcode,d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.ratecy,d.ratekg,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2'," & _
                                "(case when d.bblflg   IN ('R','H') then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d ,fa_slmas a ,rm_arrival b where c.docdt < '" & Format(U, "yyyy-mm-dd") & "' and  c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode " & _
                                "and d.supcd = a.slcode and d.arrdt = b.arrdate and d.arrno = b.arrno and d.lotno = b.lotno and d.catcd = b.catcd and d.catcd = '" & (Mid$(W, 1, (InStr(W, "-") - 1))) & "' and  d.divcode = b.divcode  and d.divcode = '" & Divcode & "' group by d.cntcode,d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.bblflg,d.ratecy,d.ratekg)t where " & _
                                "y.cntcode *= t.cntcode and y.varcode *= t.varcode and y.lotno *= t.lotno and y.lotdt *= t.lotdt and y.catcd *= t.catcd and y.slname *= t.slname and  y.plotno *= t.plotno  union  select e.cntcode,e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.ratecy,e.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs'," & _
                                "case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg   IN ('R','H') then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval' from rm_lot e,fa_slmas b,rm_arrival c where e.lotdt = '" & Format(U, "yyyy-mm-dd") & "' " & _
                                "and e.supcd = b.slcode and e.arrdt = c.arrdate and e.arrno = c.arrno and e.lotno = c.lotno and e.catcd = c.catcd and c.catcd = '" & (Mid$(W, 1, (InStr(W, "-") - 1))) & "' and e.divcode = c.divcode and  e.divcode = '" & Divcode & "' group by e.cntcode,e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.bblflg  ," & _
                                "e.ratecy,e.ratekg  union  select c.cntcode,c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd, c.ratecy,c.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue'," & _
                                "case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg   IN ('R','H') then count(isnull(baleno,0))end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,fa_slmas b ,rm_arrival d where a.docdt = '" & Format(U, "yyyy-mm-dd") & "' and " & _
                                "c.supcd = b.slcode and c.arrdt = d.arrdate and c.arrno = d.arrno and c.lotno = d.lotno and c.catcd = d.catcd and c.catcd = '" & (Mid$(W, 1, (InStr(W, "-") - 1))) & "' and c.divcode = d.divcode and a.divcode = '" & Divcode & "' and a.lotno = c.lotno and a.lotdt = c.lotdt  and a.catcd = c.catcd " & _
                                "group by c.cntcode,c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd,c.bblflg," & _
                                "c.ratecy,c.ratekg) )k group by k.cntcode,k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,k.ratekg }as command2 compute command2 by 'cntcode'", Cn, adOpenStatic, adLockBatchOptimistic
                                
                                
                                
                                

If RS2.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If

Set rs1 = New Recordset
                                
                                
                                

rs1.Open " select k.cntcode,k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,isnull(k.ratekg,0) * 100 'rate/qun',sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs',sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale'," & _
                                "sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval' from ((select y.cntcode,y.varcode,y.slname,y.lotdt,y.plotno,y.lotno,y.catcd,y.ratecy,y.ratekg, isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs'," & _
                                "isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah',isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale, 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.cntcode,a.varcode,b.slname,a.lotdt,c.plotno," & _
                                "a.lotno , a.catcd, a.ratecy, a.ratekg, Sum(IsNull(a.netwt, 0)) 'kgs1', case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end as 'Bale1', case when a.bblflg   IN ('R','H') then sum(isnull(a.bales,0)) end as 'Borah1', sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a, fa_slmas b,rm_arrival c " & _
                                "where a.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.supcd = b.slcode and a.arrdt = c.arrdate and a.arrno = c.arrno and  a.lotno = c.lotno and a.catcd = c.catcd and c.catcd = '" & (Mid$(W, 1, (InStr(W, "-") - 1))) & "'  and a.divcode = c.divcode and  a.catcd ='C'" & _
                                "and a.divcode = '" & Divcode & "'  group by a.cntcode,a.varcode,b.slname,a.lotdt,c.plotno,a.lotno,a.catcd,a.ratecy,a.bblflg,a.ratekg)y,(select d.cntcode,d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.ratecy,d.ratekg,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2'," & _
                                "(case when d.bblflg   IN ('R','H') then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d ,fa_slmas a ,rm_arrival b where c.docdt < '" & Format(U, "yyyy-mm-dd") & "' and  c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode " & _
                                "and d.supcd = a.slcode and d.arrdt = b.arrdate and d.arrno = b.arrno and d.lotno = b.lotno and d.catcd = b.catcd and d.catcd = '" & (Mid$(W, 1, (InStr(W, "-") - 1))) & "' and  d.divcode = b.divcode  and d.divcode = '" & Divcode & "' group by d.cntcode,d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.bblflg,d.ratecy,d.ratekg)t where " & _
                                "y.cntcode *= t.cntcode and y.varcode *= t.varcode and y.lotno *= t.lotno and y.lotdt *= t.lotdt and y.catcd *= t.catcd and y.slname *= t.slname and  y.plotno *= t.plotno  union  select e.cntcode,e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.ratecy,e.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs'," & _
                                "case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg   IN ('R','H') then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval' from rm_lot e,fa_slmas b,rm_arrival c where e.lotdt = '" & Format(U, "yyyy-mm-dd") & "' " & _
                                "and e.supcd = b.slcode and e.arrdt = c.arrdate and e.arrno = c.arrno and e.lotno = c.lotno and e.catcd = c.catcd and c.catcd = '" & (Mid$(W, 1, (InStr(W, "-") - 1))) & "' and e.divcode = c.divcode and  e.divcode = '" & Divcode & "' group by e.cntcode,e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.bblflg  ," & _
                                "e.ratecy,e.ratekg  union  select c.cntcode,c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd, c.ratecy,c.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue'," & _
                                "case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg   IN ('R','H') then count(isnull(baleno,0))end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,fa_slmas b ,rm_arrival d where a.docdt = '" & Format(U, "yyyy-mm-dd") & "' and " & _
                                "c.supcd = b.slcode and c.arrdt = d.arrdate and c.arrno = d.arrno and c.lotno = d.lotno and c.catcd = d.catcd and c.catcd = '" & (Mid$(W, 1, (InStr(W, "-") - 1))) & "' and c.divcode = d.divcode and a.divcode = '" & Divcode & "' and a.lotno = c.lotno and a.lotdt = c.lotdt  and a.catcd = c.catcd " & _
                                "group by c.cntcode,c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd,c.bblflg," & _
                                "c.ratecy,c.ratekg) )k group by k.cntcode,k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,k.ratekg", Cn, adOpenStatic, adLockBatchOptimistic
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\svm.TXT" For Output As #a
 Open KALFOLDERDATA & "\svm.TXT" For Output As #a
pg1 = 1
Co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
rs1.MoveFirst
Do While Not rs1.EOF
               Print #a,
               If flg <> rs1(0) Then
               flg = rs1(0)
              Print #a, Space(5) + Padr((CStr(rs1(0))), 13, " ")
              Co = Co + 1
             'Print #a,
             
                End If
'                Print #a, Space(5) + Padr((CStr(rs1(2))), 38, " ") + Padr((CStr(rs1(3))), 15, " ") + Padl((CStr(IIf(IsNull(rs1(4)), " ", rs1(4)))), 4, " ") + Padl((CStr(rs1(5))), 10, " ") + Space(4) + Padr((CStr(rs1(6))), 8, " ") + Space(2) + Padr((CStr(rs1(1))), 11, " ") + Padl((CStr(IIf(rs1(10) = 0, " ", rs1(10)))), 12, " ") + Space(1) + Padl((CStr(IIf(rs1(11) = 0, " ", rs1(11)))), 13, " ") + Padl(CStr(Format(IIf(rs1(9) = 0, " ", rs1(9)), "###,###,##0.000")), 17, " ") + Padl(CStr(Format(IIf(rs1(7) = 0, " ", rs1(7)), "###,###,##0.00")), 19, " ") + Padl(CStr(Format(IIf(rs1(8) = 0, " ", rs1(8)), "###,###,##0.00")), 23, " ") + Padl(CStr(Format(IIf(rs1(12) = 0, " ", rs1(12)), "###,###,##0.00")), 19, " ")
                Print #a, Space(5) + Padr((CStr(rs1(2))), 48, " ") + Padr((CStr(rs1(3))), 15, " ") + Padl((CStr(IIf(IsNull(rs1(4)), " ", rs1(4)))), 4, " ") + Padl((CStr(rs1(5))), 10, " ") + Space(4) + Padr((CStr(rs1(6))), 8, " ") + Space(2) + Padr((CStr(rs1(1))), 11, " ") + Padl((CStr(IIf(rs1(10) = 0, " ", rs1(10)))), 12, " ") + Space(1) + Padl((CStr(IIf(rs1(11) = 0, " ", rs1(11)))), 13, " ") + Space(5) + Padl(INF(rs1(9), 3), 17, " ") + Padl(INF(rs1(7), 2), 19, " ") + Padl(INF(rs1(8), 2), 23, " ") + Space(8) + Padl(INF(rs1(12), 2), 19, " ")
                Co = Co + 1
                tot1 = tot1 + rs1(10)
                tot2 = tot2 + rs1(11)
                tot3 = tot3 + rs1(9)
                tot4 = tot4 + val(IIf(IsNull(rs1(7)), 0, rs1(7)))
                tot5 = tot5 + rs1(8)
                tot6 = tot6 + rs1(12)
                 Co = Co + 1
                If Co > 53 Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
                 End If
            
    rs1.MoveNext
Loop
'Print #a,
Print #a, Space(5) + String(220, "-")
'Print #a, Space(79) + "** Grand Total **" + Padl((CStr(IIf(tot1 = 0, " ", tot1))), 13, " ") + Padl((CStr(IIf(tot2 = 0, " ", tot2))), 14, " ") + Padl(CStr(Format(IIf(tot3 = 0, " ", tot3), "###,###,##0.000")), 17, " ") + Padl(CStr(Format(IIf(tot4 = 0, " ", tot4), "###,###,##0.00")), 19, " ") + Padl(CStr(Format(IIf(tot5 = 0, " ", tot5), "###,###,##0.00")), 23, " ") + Padl(CStr(Format(IIf(tot6 = 0, " ", tot6), "###,###,##0.00")), 19, " ")
'Print #a, Space(89) + "** Grand Total **" + Padl(INF(tot1, 0), 13, " ") + Padl(INF(tot2, 0), 14, " ") + Padl(INF(tot3, 3), 22, " ") + Padl(INF(tot4, 2), 19, " ") + Padl(INF(tot5, 2), 23, " ") + Padl(INF(tot6, 2), 27, " ")
Print #a, Space(89) + "** Grand Total **" + Padl(INF(tot1, 0), 13, " ") + Padl(INF(tot2, 0), 14, " ") + Padl(INF(tot3, 3), 22, " ") + Padl(INF(tot4, 2), 19, " ") + Space(23) + Padl(INF(tot6, 2), 27, " ")
'Print #a,
Print #a, Space(5) + String(220, "-")
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\svm.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type svm.txt>prn"
'Close #a
'RPTV.txtfile = "c:\svm.txt"
'RPTV.Batfile = "c:\svm.bat"
Call KALBATPROCESS("svm")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String, DIVNAME As String)
          Print #a,
'          Print #a, Space(10) + Space(Round((196 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((196 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Mixing Groupwise Closing Stock Statement" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy") & Space(10) & Padr(W, 41, " ")
          Print #a, Space(103) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(220, "-")
          Print #a, Space(5) + "Mixing No.  "
          Print #a, Space(5) + "                                                              Party                                        <---Closing Balance--> "
'          Print #a, Space(5) + "Partyname                              Lot Date    Lot No    Lot No    Category  Variety           Bales         Boras        Stock Kgs         Rate/Candy           Rate/Quintal              Value"
         ' Print #A, Space(5) + "Partyname                                        Lot Date    Lot No    Lot No    Category  Variety           Bales         Boras             Stock Kgs         Rate/Candy           Rate/Quintal                      Value"
          
          Print #a, Space(5) + "Supplier Name                                    Lot Date    Lot No    Lot No    Category  Variety           Bales                           Stock Kgs         Rate/Candy           Rate/Quintal                      Value"
          Print #a, Space(5) + String(220, "-")
End Sub










