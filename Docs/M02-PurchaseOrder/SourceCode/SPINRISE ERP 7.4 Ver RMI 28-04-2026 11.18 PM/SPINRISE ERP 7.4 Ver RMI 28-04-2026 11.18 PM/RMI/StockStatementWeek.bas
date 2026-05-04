Attribute VB_Name = "StockStatementWeek"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim DIVNAME As String


Public Sub StockWeekReport(u As String, v As String, w As String, DIVNAME As String)
Dim RS1 As Recordset
Dim rs2 As Recordset
Dim pagelen As Integer
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
Dim cnn As Connection
Set cnn = New Connection
pagelen = 53

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs2 = New Recordset
'rs1.Open "select  distinct a.tax_code,b.description from ig_invdt a,ig_tax b,ig_invhd c where a.tax_code*=b.tax_Code and a.inv_no=c.inv_no and c.date between '" & u & "'and '" & v & "' and a.tax_code between '" & w & "' and '" & z & "' and a.divcode='" & divcode & "'", cnn, adOpenStatic, adLockOptimistic
'rs2.Open " select f.varname,sum(isnull(k.openkgs,0)) as opkgs,sum(isnull(k.openbale,0)) as opbale,sum(isnull(k.openborah,0)) as opborah,sum(isnull(k.openval,0)) as opval, sum(isnull(recep,0)) as reckgs, sum(isnull(recpbale,0)) as recbale, sum(isnull(recpborah,0)) as recborah ," & _
'                        " sum(isnull(k.recpval,0)) as recval,sum(isnull(k.issbale,0)) as issbale,sum(isnull(issborah,0)) as issborah,sum(isnull(k.issue,0)) 'isskgs',sum(isnull(k.issval,0)) as issval,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Clokgs'," & _
'                        " sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval'" & _
'                        " from ((select y.varcode,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah', isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as 'Recep',0 as recpBale," & _
'                        " 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,sum(isnull(a.netwt,0)) 'kgs1',(case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end) as 'Bale1',(case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end) as 'Borah1'," & _
'                        " sum (IsNull(a.ratekg, 0) * IsNull(a.netwt, 0)) 'val1' from rm_lot a,rm_var v  where a.lotdt < '" & Format(u, "yyyy-mm-dd") & "'  and a.varcode = v.varcode and a.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and a.divcode = '" & Divcode & "' group by a.varcode,a.bblflg )y,(select d.varcode,sum(isnull(c.isskgs,0)) 'kgs2'," & _
'                        " (case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2',(case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d,rm_var e where c.docdt < '" & Format(u, "yyyy-mm-dd") & "'  and d.varcode = e.varcode and " & _
'                        " c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode and d.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and d.divcode = '" & Divcode & "' group by d.varcode,d.bblflg)t where y.varcode *= t.varcode union select e.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval'," & _
'                        " sum (IsNull(e.netwt, 0)) 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval'" & _
'                        " from rm_lot e ,rm_var f where e.lotdt between '" & Format(u, "yyyy-mm-dd") & "'  and '" & Format(v, "yyyy-mm-dd") & "'  and e.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and e.divcode = '" & Divcode & "' and e.varcode  = f.varcode  group by e.varcode,e.bblflg union select c.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval'," & _
'                        " sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,rm_var g where a.docdt between '" & Format(u, "yyyy-mm-dd") & "'  and '" & Format(v, "yyyy-mm-dd") & "'" & _
'                        " and a.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.divcode = c.divcode and c.divcode = '" & Divcode & "' and a.catcd = c.catcd and c.varcode = g.varcode  group by c.varcode,c.bblflg) )k,rm_var f where k.varcode = f.varcode group by f.varname", cn, adOpenStatic, adLockBatchOptimistic
                        
                        
                        
                        
rs2.Open " select f.varname,sum(isnull(k.openkgs,0)) as opkgs,sum(isnull(k.openbale,0)) as opbale,sum(isnull(k.openborah,0)) as opborah,sum(isnull(k.openval,0)) as opval, sum(isnull(recep,0)) as reckgs, sum(isnull(recpbale,0)) as recbale, sum(isnull(recpborah,0)) as recborah ," & _
                        " sum(isnull(k.recpval,0)) as recval,sum(isnull(k.issbale,0)) as issbale,sum(isnull(issborah,0)) as issborah,sum(isnull(k.issue,0)) 'isskgs',sum(isnull(k.issval,0)) as issval,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Clokgs'," & _
                        " sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval'" & _
                        " from ((select y.varcode,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah', isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as 'Recep',0 as recpBale," & _
                        " 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,sum(isnull(a.netwt,0)) 'kgs1',(case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end) as 'Bale1',(case when a.bblflg   IN ('R','H') then sum(isnull(a.bales,0)) end) as 'Borah1'," & _
                        " sum (IsNull(a.ratekg, 0) * IsNull(a.netwt, 0)) 'val1' from rm_lot a,rm_var v  where LOTYEAR='" & Year(yfdate) & "' AND a.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "'  and a.varcode = v.varcode and a.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and a.divcode = '" & Divcode & "' group by a.varcode,a.bblflg )y,(select d.varcode,sum(isnull(c.isskgs,0)) 'kgs2'," & _
                        " (case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2',(case when d.bblflg  IN ('R','H') then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d,rm_var e where LOTYEAR='" & Year(yfdate) & "' AND c.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "'  and d.varcode = e.varcode and " & _
                        " c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode and d.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and d.divcode = '" & Divcode & "' group by d.varcode,d.bblflg)t where y.varcode *= t.varcode union select e.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval'," & _
                        " sum (IsNull(e.netwt, 0)) 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg   IN ('R','H') then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval'" & _
                        " from rm_lot e ,rm_var f where LOTYEAR='" & Year(yfdate) & "' AND e.lotdt between '" & Format(u, "yyyy-mm-dd") & "'  and '" & Format(v, "yyyy-mm-dd") & "'  and e.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and e.divcode = '" & Divcode & "' and e.varcode  = f.varcode  group by e.varcode,e.bblflg union select c.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval'," & _
                        " sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg   IN ('R','H') then count(isnull(baleno,0)) end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,rm_var g where LOTYEAR='" & Year(yfdate) & "' AND a.docdt between '" & Format(u, "yyyy-mm-dd") & "'  and '" & Format(v, "yyyy-mm-dd") & "'" & _
                        " and a.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.divcode = c.divcode and c.divcode = '" & Divcode & "' and a.catcd = c.catcd and c.varcode = g.varcode  group by c.varcode,c.bblflg) )k,rm_var f where k.varcode = f.varcode group by f.varname", cn, adOpenStatic, adLockBatchOptimistic
If rs2.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If

Set RS1 = New Recordset
'rs1.Open " select f.varname,sum(isnull(k.openkgs,0)) as opkgs,sum(isnull(k.openbale,0)) as opbale,sum(isnull(k.openborah,0)) as opborah,sum(isnull(k.openval,0)) as opval, sum(isnull(recep,0)) as reckgs, sum(isnull(recpbale,0)) as recbale, sum(isnull(recpborah,0)) as recborah ," & _
'                        " sum(isnull(k.recpval,0)) as recval,sum(isnull(k.issbale,0)) as issbale,sum(isnull(issborah,0)) as issborah,sum(isnull(k.issue,0)) 'isskgs',sum(isnull(k.issval,0)) as issval,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Clokgs'," & _
'                        " sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval'" & _
'                        " from ((select y.varcode,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah', isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as 'Recep',0 as recpBale," & _
'                        " 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,sum(isnull(a.netwt,0)) 'kgs1',(case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end) as 'Bale1',(case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end) as 'Borah1'," & _
'                        " sum (IsNull(a.ratekg, 0) * IsNull(a.netwt, 0)) 'val1' from rm_lot a,rm_var v  where a.lotdt < '" & Format(u, "yyyy-mm-dd") & "'  and a.varcode = v.varcode and a.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and a.divcode = '" & Divcode & "' group by a.varcode,a.bblflg )y,(select d.varcode,sum(isnull(c.isskgs,0)) 'kgs2'," & _
'                        " (case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2',(case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d,rm_var e where c.docdt < '" & Format(u, "yyyy-mm-dd") & "'  and d.varcode = e.varcode and " & _
'                        " c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode and d.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and d.divcode = '" & Divcode & "' group by d.varcode,d.bblflg)t where y.varcode *= t.varcode union select e.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval'," & _
'                        " sum (IsNull(e.netwt, 0)) 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval'" & _
'                        " from rm_lot e ,rm_var f where e.lotdt between '" & Format(u, "yyyy-mm-dd") & "'  and '" & Format(v, "yyyy-mm-dd") & "'  and e.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and e.divcode = '" & Divcode & "' and e.varcode  = f.varcode  group by e.varcode,e.bblflg union select c.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval'," & _
'                        " sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,rm_var g where a.docdt between '" & Format(u, "yyyy-mm-dd") & "'  and '" & Format(v, "yyyy-mm-dd") & "'" & _
'                        " and a.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.divcode = c.divcode and c.divcode = '" & Divcode & "' and a.catcd = c.catcd and c.varcode = g.varcode  group by c.varcode,c.bblflg) )k,rm_var f where k.varcode = f.varcode group by f.varname", cn, adOpenStatic, adLockBatchOptimistic
                        
                        
                        
RS1.Open " select f.varname,sum(isnull(k.openkgs,0)) as opkgs,sum(isnull(k.openbale,0)) as opbale,sum(isnull(k.openborah,0)) as opborah,sum(isnull(k.openval,0)) as opval, sum(isnull(recep,0)) as reckgs, sum(isnull(recpbale,0)) as recbale, sum(isnull(recpborah,0)) as recborah ," & _
                        " sum(isnull(k.recpval,0)) as recval,sum(isnull(k.issbale,0)) as issbale,sum(isnull(issborah,0)) as issborah,sum(isnull(k.issue,0)) 'isskgs',sum(isnull(k.issval,0)) as issval,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Clokgs'," & _
                        " sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval'" & _
                        " from ((select y.varcode,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah', isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as 'Recep',0 as recpBale," & _
                        " 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,sum(isnull(a.netwt,0)) 'kgs1',(case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end) as 'Bale1',(case when a.bblflg   IN ('R','H') then sum(isnull(a.bales,0)) end) as 'Borah1'," & _
                        " sum (IsNull(a.ratekg, 0) * IsNull(a.netwt, 0)) 'val1' from rm_lot a,rm_var v  where LOTYEAR='" & Year(yfdate) & "' AND a.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and  '" & Format(v, "yyyy-mm-dd") & "'  and a.varcode = v.varcode and a.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and a.divcode = '" & Divcode & "' group by a.varcode,a.bblflg )y,(select d.varcode,sum(isnull(c.isskgs,0)) 'kgs2'," & _
                        " (case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2',(case when d.bblflg   IN ('R','H') then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d,rm_var e where LOTYEAR='" & Year(yfdate) & "' AND c.docdt between '" & Format(u, "yyyy-mm-dd") & "'and '" & Format(v, "yyyy-mm-dd") & "'  and d.varcode = e.varcode and " & _
                        " c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode and d.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and d.divcode = '" & Divcode & "' group by d.varcode,d.bblflg)t where y.varcode *= t.varcode union select e.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval'," & _
                        " sum (IsNull(e.netwt, 0)) 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg   IN ('R','H') then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval'" & _
                        " from rm_lot e ,rm_var f where LOTYEAR='" & Year(yfdate) & "' AND e.lotdt between '" & Format(u, "yyyy-mm-dd") & "'  and '" & Format(v, "yyyy-mm-dd") & "'  and e.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and e.divcode = '" & Divcode & "' and e.varcode  = f.varcode  group by e.varcode,e.bblflg union select c.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval'," & _
                        " sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg   IN ('R','H') then count(isnull(baleno,0)) end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,rm_var g where LOTYEAR='" & Year(yfdate) & "' AND a.docdt between '" & Format(u, "yyyy-mm-dd") & "'  and '" & Format(v, "yyyy-mm-dd") & "'" & _
                        " and a.catcd = '" & (Mid$(w, 1, (InStr(w, "-") - 1))) & "' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.divcode = c.divcode and c.divcode = '" & Divcode & "' and a.catcd = c.catcd and c.varcode = g.varcode  group by c.varcode,c.bblflg) )k,rm_var f where k.varcode = f.varcode group by f.varname", cn, adOpenStatic, adLockBatchOptimistic
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Open "C:\sw.TXT" For Output As #a
pg1 = 1
co = 13
Print #a, Chr(15)
Call PartyHeader(pg1, co, u, v, w, DIVNAME)
RS1.MoveFirst
Do While Not RS1.EOF
               Print #a,
                 co = co + 1
              Print #a, Space(5) + Padr((CStr(RS1(0))), 13, " ")
                co = co + 1
      
'                Print #a, Space(5) + Padl((CStr(IIf(rs1(2) = 0, " ", rs1(2)))), 11, " ") + Padl((CStr(IIf(rs1(3) = 0, " ", rs1(3)))), 13, " ") + Padl(CStr(Format(IIf(rs1(1) = 0, " ", rs1(1)), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(rs1(4) = 0, " ", rs1(4)), "###,###,##0.00")), 16, " ") + Padl((CStr(IIf(rs1(6) = 0, " ", rs1(6)))), 13, " ") + Padl((CStr(IIf(rs1(7) = 0, " ", rs1(7)))), 13, " ") + Padl(CStr(Format(IIf(rs1(5) = 0, " ", rs1(5)), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(rs1(8) = 0, " ", rs1(8)), "###,###,##0.00")), 16, " ") + Padl((CStr(IIf(rs1(9) = 0, " ", rs1(9)))), 13, " ") + Padl((CStr(IIf(rs1(10) = 0, " ", rs1(10)))), 13, " ") + Padl(CStr(Format(IIf(rs1(11) = 0, " ", rs1(11)), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(rs1(12) = 0, " ", rs1(12)), "###,###,##0.00")), 16, " ") + Padl((CStr(IIf(rs1(14) = 0, " ", rs1(14)))), 13, " ") + Padl((CStr(IIf(rs1(15) = 0, " ", rs1(15)))), 13, " "); "" _
'                + Padl(CStr(Format(IIf(rs1(13) = 0, " ", rs1(13)), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(rs1(16) = 0, " ", rs1(16)), "###,###,##0.00")), 16, " ")
                
                Print #a, Space(5) + Padl(INF(RS1(2), 0), 11, " ") + Padl(INF(RS1(3), 0), 13, " ") + Padl(INF(RS1(1), 3), 16, " ") + Padl(INF(RS1(4), 2), 16, " ") + Padl(INF(RS1(6), 0), 13, " ") + Padl(INF(RS1(7), 0), 13, " ") + Padl(INF(RS1(5), 3), 16, " ") + Padl(INF(RS1(8), 2), 16, " ") + Padl(INF(RS1(9), 0), 10, " ") + Padl(INF(RS1(10), 0), 13, " ") + Padl(INF(RS1(11), 3), 16, " ") + Padl(INF(RS1(12), 2), 16, " ") + Padl(INF(RS1(14), 0), 10, " ") + Padl(INF(RS1(15), 0), 13, " "); "" _
                + Padl(INF(RS1(13), 3), 16, " ") + Padl(INF(RS1(16), 2), 16, " ")
                
                
                tot1 = tot1 + RS1(2)
                tot2 = tot2 + RS1(3)
                tot3 = tot3 + RS1(1)
                tot4 = tot4 + RS1(4)
                tot5 = tot5 + RS1(6)
                tot6 = tot6 + RS1(7)
                tot7 = tot7 + RS1(5)
                tot8 = tot8 + RS1(8)
               
               tot9 = tot9 + RS1(9)
                tot10 = tot10 + RS1(10)
                tot11 = tot11 + RS1(11)
                tot12 = tot12 + RS1(12)
                tot13 = tot13 + RS1(14)
                tot14 = tot14 + RS1(15)
                tot15 = tot15 + RS1(13)
                tot16 = tot16 + RS1(16)
                 co = co + 1
                If co > pagelen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  co = 13
                  Call PartyHeader(pg1, co, u, v, w, DIVNAME)
                 End If
                
    RS1.MoveNext
Loop
'Print #a,
Print #a, Space(5) + String(225, "-")
'Print #a, Space(2) + "** Grand Total **" + Padl(CStr(Format(IIf(tot3 = 0, " ", tot3), "###,###,##0.000")), 23, " ") + Padl(CStr(Format(IIf(tot4 = 0, " ", tot4), "###,###,##0.00")), 16, " ") + Padl(CStr(Format(IIf(tot5 = 0, " ", tot5), "###,##0")), 13, " ") + Padl(CStr(Format(IIf(tot6 = 0, " ", tot6), "###,##0")), 13, " ") + Padl(CStr(Format(IIf(tot7 = 0, " ", tot7), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(tot8 = 0, " ", tot8), "###,###,##0.00")), 16, " ") + Padl(CStr(Format(IIf(tot9 = 0, " ", tot9), "###,##0")), 13, " ") + Padl(CStr(Format(IIf(tot10 = 0, " ", tot10), "###,##0")), 13, " ") + Padl(CStr(Format(IIf(tot11 = 0, " ", tot11), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(tot12 = 0, " ", tot12), "###,###,##0.00")), 16, " "); "" _
'+ Padl(CStr(Format(IIf(tot13 = 0, " ", tot13), "###,##0")), 13, " ") + Padl(CStr(Format(IIf(tot14 = 0, " ", tot14), "###,##0")), 13, " ") + Padl(CStr(Format(IIf(tot15 = 0, " ", tot15), "###,###,##0.000")), 16, " ") + Padl(CStr(Format(IIf(tot16 = 0, " ", tot16), "###,###,##0.00")), 16, " ")
Print #a, Space(5) + "** Grand Total **" + Padl(INF(tot3, 3), 23, " ") + Padl(INF(tot4, 2), 16, " ") + Padl(INF(tot5, 0), 13, " ") + Padl(INF(tot6, 0), 13, " ") + Padl(INF(tot7, 3), 16, " ") + Padl(INF(tot8, 2), 16, " ") + Padl(INF(tot9, 0), 10, " ") + Padl(INF(tot10, 0), 13, " ") + Padl(INF(tot11, 3), 16, " ") + Padl(INF(tot12, 2), 16, " "); "" _
+ Padl(INF(tot13, 0), 10, " ") + Padl(INF(tot14, 0), 13, " ") + Padl(INF(tot15, 3), 16, " ") + Padl(INF(tot16, 2), 16, " ")

'Print #a,
Print #a, Space(5) + String(225, "-")
Print #a, Chr(15)
Print #a, Chr(12)
Close #a
a = FreeFile
Open "c:\sw.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type sw.txt>prn"
Close #a
RPTV.txtfile = "c:\sw.txt"
RPTV.Batfile = "c:\sw.bat"
End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, u As String, v As String, w As String, DIVNAME As String)
          Print #a,
'          Print #a, Space(5) + Space(Round((232 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((232 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Stock statement Weeklywise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(7) & Padr(w, 40, " ") & Space(5) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(225, "-")
          
          'Print #a,
          Print #a, Space(5) + "Variety  "
          'Print #a,
'          Print #a, Space(5) + "      <-------Opening Balance---------->                        <---------Receipts--------------->                        <-------------Issues------------->                        <--------Closing Balance-------->"
'          Print #a, Space(5) + "      Bales        Boras          Weight           Value        Bales        Boras          Weight           Value        Bales        Boras          Weight           Value        Bales        Boras          Weight           Value "
          
          Print #a, Space(5) + "      <-------Opening Balance---------->                        <---------Receipts--------------->                     <-------------Issues------------->                     <--------Closing Balance-------->"
          Print #a, Space(5) + "      Bales        Boras          Weight           Value        Bales        Boras          Weight           Value     Bales        Boras          Weight           Value     Bales        Boras          Weight           Value "
          
          Print #a, Space(5) + String(225, "-")
End Sub






