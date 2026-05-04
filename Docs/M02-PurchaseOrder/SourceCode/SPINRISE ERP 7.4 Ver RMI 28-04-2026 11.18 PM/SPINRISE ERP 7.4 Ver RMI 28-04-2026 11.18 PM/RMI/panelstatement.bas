Attribute VB_Name = "panelstatement"
Dim RS1 As Recordset
Dim ResultRs As Recordset
Dim rs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12 As Double
Dim tot21, tot22, tot23, tot24, tot25, tot26, tot27, tot28, tot29, tot30, tot31, tot32 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim Check_Varcode As String
Dim str1, a1, b1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s As String
Dim z As Integer
Public Sub panstmReport(a As String, b As String)
Set cnn = New Connection
a1 = a
b1 = b
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring


    Set ResultRs = New Recordset
       
'    resultrs.Open "SHAPE {select k.divcode,k.catcd,k.lotno,k.lotdt,sum(isnull(OpenBorah,0)) as OpenBorah,sum(isnull(k.openbal,0)) as openbale,sum(isnull(k.openbal,0)) as opkgs, sum(isnull(k.recep,0)) as reckgs,k.recpBorah as recborah,k.recpBale as recbale,k.issBorah,k.issBale,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.recep,0)) - sum(isnull(k.issue,0)) as 'Closing',sum(isnull(k.OpenBale,0)) +  sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) -  sum(isnull(k.IssBorah,0)) as 'Closborah',g.varCODE,g.varname, sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) 'totalreckgs'  from ((  select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0) - isnull(t.issuekgs,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg = 'R' then isnull(e.bales,0) - isnull(t.bales,0) end) as 'OpenBorah'," & _
'                  " 0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale, 0 as IssBorah from (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',Count (c.baleno) 'Bales' from rm_issb c,rm_lot b where c.docdt <' " & Format(a1, "yyyy-mm-dd") & " 'and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode = '01'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where e.lotdt < ' " & a1 & " '" & _
'                  " and e.divcode = t.divcode and t.divcode = '01'  and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and  e.catcd = 'C' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep', case when e.bblflg = 'B' then e.bales end 'recpBale',case when  e.bblflg = 'R' then e.bales end 'recpBorah',0 as 'Issue', 0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where " & _
'                  " e.lotdt between ' " & Format(a1, "yyyy-mm-dd") & " 'and ' " & Format(b1, "yyyy-mm-dd") & " ' and e.catcd = 'C' and e.lotno = c.lotno union   select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as 'Openbal', 0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale, 0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale', case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where a.docdt between " & _
'                  " ' " & Format(a1, "yyyy-mm-dd") & " ' and ' " & Format(b1, "yyyy-mm-dd") & " ' and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot f,rm_var g Where f.lotno = k.lotno And f.lotdt = k.lotdt And f.catcd = k.catcd And f.divcode = k.divcode  and k.divcode = '01' and f.varcode = g.varcode group by k.divcode,k.catcd,k.lotno,k.lotdt,g.varcode,g.varname,k.recpBorah,k.recpBale,k.issBorah,k.issBale} AS COMMAND2 COMPUTE COMMAND2 BY 'varcode','varname'", cnn, adOpenStatic, adLockBatchOptimistic
                  
                  
    ResultRs.Open "SHAPE {select k.divcode,k.catcd,k.lotno,k.lotdt,sum(isnull(OpenBorah,0)) as OpenBorah,sum(isnull(k.openbal,0)) as openbale,sum(isnull(k.openbal,0)) as opkgs, sum(isnull(k.recep,0)) as reckgs,k.recpBorah as recborah,k.recpBale as recbale,k.issBorah,k.issBale,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.recep,0)) - sum(isnull(k.issue,0)) as 'Closing',sum(isnull(k.OpenBale,0)) +  sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) -  sum(isnull(k.IssBorah,0)) as 'Closborah',g.varCODE,g.varname, sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) 'totalreckgs'  from ((  select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0) - isnull(t.issuekgs,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg   IN ('R','H') then isnull(e.bales,0) - isnull(t.bales,0) end) as 'OpenBorah'," & _
                  " 0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale, 0 as IssBorah from (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',Count (c.baleno) 'Bales' from rm_issb c,rm_lot b where b.lotyear='" & Year(yfdate) & "' and c.docdt between  '" & Format(a1, " YYYY-MM-DD") & "' and '" & Format(b1, " YYYY-MM-DD") & "' and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode = '01'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where e.lotdt between '" & Format(a1, " YYYY-MM-DD") & "' and '" & Format(b1, " YYYY-MM-DD") & "' " & _
                  " and e.divcode = t.divcode and t.divcode = '01'  and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and  e.catcd = 'C' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep', case when e.bblflg = 'B' then e.bales end 'recpBale',case when  e.bblflg   IN ('R','H') then e.bales end 'recpBorah',0 as 'Issue', 0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where e.lotyear='" & Year(yfdate) & "' and" & _
                  " e.lotdt between '" & Format(a1, "yyyy-mm-dd") & "'and '" & Format(b1, "yyyy-mm-dd") & "' and e.catcd = 'C' and e.lotno = c.lotno union   select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as 'Openbal', 0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale, 0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale', case when c.bblflg   IN ('R','H') then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where c.lotyear='" & Year(yfdate) & "' and a.docdt between " & _
                  " '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(b1, "yyyy-mm-dd") & "' and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot f,rm_var g Where f.lotno = k.lotno And f.lotdt = k.lotdt And f.catcd = k.catcd And f.divcode = k.divcode  and k.divcode = '" & Divcode & "' and f.varcode = g.varcode group by k.divcode,k.catcd,k.lotno,k.lotdt,g.varcode,g.varname,k.recpBorah,k.recpBale,k.issBorah,k.issBale} AS COMMAND2 COMPUTE COMMAND2 BY 'varcode','varname'", cnn, adOpenStatic, adLockBatchOptimistic
        
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Set RPTV = New Report.ReportView

     z = FreeFile
    Close #z
    Close
    Open KALFOLDERDATA & "\past.TXT" For Output As #z
    pg1 = 1
   
   ' Print #z, Chr(15)
     'z = FreeFile
    Call panstmHeader(pg1, co, s, a, b)
     co = 9
      tot1 = 0
      tot2 = 0
      tot3 = 0
      tot4 = 0
      tot5 = 0
      tot6 = 0
      tot7 = 0
      tot8 = 0
      tot9 = 0
      tot10 = 0
      tot11 = 0
      tot12 = 0
      tot21 = 0
      tot22 = 0
      tot23 = 0
      tot24 = 0
      tot25 = 0
      tot26 = 0
      tot27 = 0
      tot28 = 0
      tot29 = 0
      tot30 = 0
      tot31 = 0
      tot32 = 0
        Check_Varcode = ""
        Print #z,
        co = co + 1
        
        Set RS1 = New Recordset
 RS1.Open "select k.divcode,k.catcd,k.lotno," & _
 "k.lotdt,sum(isnull(OpenBorah,0)) as OpenBorah,sum(isnull(k.openbal,0)) as openbale,round(sum(isnull(k.openbal,0)),2) as opkgs, round(sum(isnull(k.recep,0)),2) as reckgs,k.recpBorah as recborah,k.recpBale as recbale,k.issBorah,k.issBale,round(sum(isnull(k.issue,0)),2) as isskgs,round(sum(isnull(k.Openbal,0)) + sum(isnull(k.recep,0)) - sum(isnull(k.issue,0)),2) as 'Closing',sum(isnull(k.OpenBale,0)) +  sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) -  sum(isnull(k.IssBorah,0)) as 'Closborah',g.varCODE,g.varname, round(sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)),2) 'totalreckgs'  from ((  select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0) - isnull(t.issuekgs,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg   IN ('R','H') then isnull(e.bales,0) - isnull(t.bales,0) end) as 'OpenBorah'," & _
                 " 0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale, 0 as IssBorah from (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',Count (c.baleno) 'Bales' from rm_issb c,rm_lot b where b.lotyear='" & Year(yfdate) & "' and c.docdt between '" & Format(a1, "YYYY-MM-DD") & "' and '" & Format(b1, "YYYY-MM-DD") & "' and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode = '01'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where e.lotdt between '" & Format(a1, "YYYY-MM-DD") & "' AND '" & Format(b1, "YYYY-MM-DD") & "'" & _
                 " and e.divcode = t.divcode and t.divcode = '" & Divcode & "'  and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and  e.catcd = 'C' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep', case when e.bblflg = 'B' then e.bales end 'recpBale',case when  e.bblflg   IN ('R','H') then e.bales end 'recpBorah',0 as 'Issue', 0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where  e.lotyear='" & Year(yfdate) & "' and " & _
                 " e.lotdt between '" & Format(a1, "YYYY-MM-DD") & "' and '" & Format(b1, "YYYY-MM-DD") & "' and e.catcd = 'C' and e.lotno = c.lotno union   select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as 'Openbal', 0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale, 0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale', case when c.bblflg   IN ('R','H') then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where c.lotyear='" & Year(yfdate) & "' and  a.docdt between " & _
                 " '" & Format(a1, "YYYY-MM-DD") & "' and '" & Format(b1, "YYYY-MM-DD") & "' and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot f,rm_var g Where f.lotno = k.lotno And f.lotdt = k.lotdt And f.catcd = k.catcd And f.divcode = k.divcode  and k.divcode = '" & Divcode & "' and f.varcode = g.varcode group by k.divcode,k.catcd,k.lotno,k.lotdt,g.varcode,g.varname,k.recpBorah,k.recpBale,k.issBorah,k.issBale", cnn, adOpenStatic, adLockBatchOptimistic

        If RS1.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
'       rs1.Open "select k.divcode,k.catcd,k.lotno,k.lotdt,sum(isnull(OpenBorah,0)) as OpenBorah,sum(isnull(k.openbal,0)) as openbale,sum(isnull(k.openbal,0)) as opkgs, sum(isnull(k.recep,0)) as reckgs,k.recpBorah as recborah,k.recpBale as recbale,k.issBorah,k.issBale,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.recep,0)) - sum(isnull(k.issue,0)) as 'Closing',sum(isnull(k.OpenBale,0)) +  sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) -  sum(isnull(k.IssBorah,0)) as 'Closborah',g.varCODE,g.varname, sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) 'totalreckgs'  from ((  select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0) - isnull(t.issuekgs,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg = 'R' then isnull(e.bales,0) - isnull(t.bales,0) end) as 'OpenBorah'," & _
'                " 0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale, 0 as IssBorah from (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',Count (c.baleno) 'Bales' from rm_issb c,rm_lot b where c.docdt <' " & Format(a1, "yyyy/mm/dd") & " 'and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode = '01'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where e.lotdt < ' " & a1 & " '" & _
'                " and e.divcode = t.divcode and t.divcode = '01'  and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and  e.catcd = 'C' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep', case when e.bblflg = 'B' then e.bales end 'recpBale',case when  e.bblflg = 'R' then e.bales end 'recpBorah',0 as 'Issue', 0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where " & _
'                " e.lotdt between ' " & Format(a1, "yyyy/mm/dd") & " 'and ' " & Format(b1, "yyyy/mm/dd") & " ' and e.catcd = 'C' and e.lotno = c.lotno union   select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as 'Openbal', 0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale, 0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale', case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where a.docdt between " & _
'                " ' " & Format(a1, "yyyy/mm/dd") & " ' and ' " & Format(b1, "yyyy/mm/dd") & " ' and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot f,rm_var g Where f.lotno = k.lotno And f.lotdt = k.lotdt And f.catcd = k.catcd And f.divcode = k.divcode  and k.divcode = '01' and f.varcode = g.varcode group by k.divcode,k.catcd,k.lotno,k.lotdt,g.varcode,g.varname,k.recpBorah,k.recpBale,k.issBorah,k.issBale", cnn, adOpenStatic, adLockBatchOptimistic
        Check_Varcode = RS1("varcode")
        Do While Not RS1.EOF
            Do While Check_Varcode = RS1("varcode")
                tot1 = tot1 + IIf(IsNull(RS1("openbale")), 0, RS1("openbale"))
                tot2 = tot2 + IIf(IsNull(RS1("openborah")), 0, RS1("openborah"))
                tot3 = tot3 + IIf(IsNull(RS1("opkgs")), 0, RS1("opkgs"))
                tot4 = tot4 + IIf(IsNull(RS1("recbale")), 0, RS1("recbale"))
                tot5 = tot5 + IIf(IsNull(RS1("recborah")), 0, RS1("recborah"))
                tot6 = tot6 + IIf(IsNull(RS1("reckgs")), 0, RS1("reckgs"))
                tot7 = tot7 + IIf(IsNull(RS1("issbale")), 0, RS1("issbale"))
                tot8 = tot8 + IIf(IsNull(RS1("issborah")), 0, RS1("issborah"))
                tot9 = tot9 + IIf(IsNull(RS1("isskgs")), 0, RS1("isskgs"))
                tot10 = tot10 + IIf(IsNull(RS1("closbale")), 0, RS1("closbale"))
                tot11 = tot11 + IIf(IsNull(RS1("closborah")), 0, RS1("closborah"))
                tot12 = tot12 + IIf(IsNull(RS1("Closing")), 0, RS1("Closing"))
                RS1.MoveNext
                If RS1.EOF Then
                    Exit Do
                End If
            Loop
            RS1.MovePrevious
           Print #z, Space(5) + CStr(RS1("varcode"))
           Print #z, Space(10) + Padr(CStr(RS1("varname")), 20, " ") + Space(10) + Padl(CStr(IIf(tot1 = 0, " ", tot1)), 10, " ") + Space(2) + Padl(CStr(IIf(tot2 = 0, " ", tot2)), 10, " ") + Space(2) + Padl(INF(tot3, 2), 18, " ") + Space(2) + Padl(CStr(IIf(tot4 = 0, " ", tot4)), 14, " ") + Space(2) + Padl(CStr(IIf(tot5 = 0, " ", tot5)), 10, " ") + Space(2) + Padl(INF(tot6, 2), 18, " ") + Space(2) + Padl(CStr(IIf(tot7 = 0, " ", tot7)), 14, " ") + Space(2) + Padl(CStr(IIf(tot8 = 0, " ", tot8)), 10, " ") + Space(2) + Padl(INF(tot9, 2), 18, " ") + Space(2) + Padl(CStr(IIf(tot10 = 0, " ", tot10)), 14, " ") + Space(2) + Padl(CStr(IIf(tot11 = 0, " ", tot11)), 10, " ") + Space(2) + Padl(INF(tot12, 2), 19, " ")
           tot21 = tot21 + tot1
           tot22 = tot22 + tot2
           tot23 = tot23 + tot3
           tot24 = tot24 + tot4
           tot25 = tot25 + tot5
           tot26 = tot26 + tot6
           tot27 = tot27 + tot7
           tot28 = tot28 + tot8
           tot29 = tot29 + tot9
           tot30 = tot30 + tot10
           tot31 = tot31 + tot11
           tot32 = tot32 + tot12
           tot1 = 0
           tot2 = 0
           tot3 = 0
           tot4 = 0
           tot5 = 0
           tot6 = 0
           tot7 = 0
           tot8 = 0
           tot9 = 0
           tot10 = 0
           tot11 = 0
           tot12 = 0
           RS1.MoveNext
           If RS1.EOF Then
                Exit Do
           End If
           Check_Varcode = RS1("varcode")
        Loop

       
        co = co + 2
        If c1 >= pagelen Then
             Print #z, Chr(12)
             pg1 = pg1 + 1
             co = 10
             Call panstmHeader(pg1, co, s, a, b)
        End If
        Print #z,
        co = co + 2
        If co >= pagelen Then
            Print #z, Chr(12)
            pg1 = pg1 + 1
            co = 10
            Call panstmHeader(pg1, co, s, a, b)
        End If
Print #z, Space(5) + String(222, "-")
        Print #z,
Print #z, Space(5) + Space(17) + "**  Grand Total  **" + Padl(CStr(IIf(tot21 = 0, " ", tot21)), 9, " ") + Space(2) + Padl(CStr(IIf(tot22 = 0, " ", tot22)), 10, " ") + Space(2) + Padl(Format(IIf(tot23 = 0, " ", tot23), "##,###,##0.00"), 18, " ") + Space(2) + Padl(CStr(IIf(tot24 = 0, " ", tot24)), 14, " ") + Space(2) + Padl(CStr(IIf(tot25 = 0, " ", tot25)), 10, " ") + Space(2) + Padl(Format(IIf(tot26 = 0, " ", tot26), "##,###,##0.00"), 18, " ") + Space(2) + Padl(CStr(IIf(tot27 = 0, " ", tot27)), 14, " ") + Space(2) + Padl(CStr(IIf(tot28 = 0, " ", tot28)), 10, " ") + Space(2) + Padl(Format(IIf(tot29 = 0, " ", tot29), "##,###,##0.00"), 18, " ") + Space(2) + Padl(CStr(IIf(tot30 = 0, " ", tot30)), 14, " ") + Space(2) + Padl(CStr(IIf(tot31 = 0, " ", tot31)), 10, " ") + Space(2) + Padl(Format(IIf(tot32 = 0, " ", tot32), "##,###,##0.00"), 19, " ")
        Print #z,
Print #z, Space(5) + String(222, "-")
Print #z, Chr(12)
Print #z, Chr(18)
Close #z
 z = FreeFile
 Call KALBATPROCESS("past")
'Open "C:\past.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "C:"
'Print #z, "cd\"
'Print #z, "type past.TXT>prn"
'Close #z
'RPTV.txtfile = "C:\past.TXT"
'RPTV.Batfile = "C:\past.bat"
End Sub
Public Sub panstmHeader(pg1 As Integer, co As Integer, s As String, a As String, b As String)
a = a1
b = b1
          'divname = "KALPATHARU TEXTILES LIMITED"
          Print #z, Chr(18)
          'Print #z, Space(5) + Space(20) + Space(Round((171 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((171 - 2 * Len(DIVNAME)) / 2))
            Print #z, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          'Print #z, Space(67)
         ' Print #z,
          Print #z,
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #z, Space(3) + Chr(27) + "E" + "Panel Statement From " + Chr(27) + "F" + Format(Trim(a), "DD/MM/YYYY") + " To " + Format(Trim(b), "DD/MM/YYYY") + Space(54) + CStr(SR) + "Pg.No : " + CStr(pg1) + Chr(15)
          Print #z, Space(5) + String(222, "-")
          Print #z, Space(5) + "Variety     " + Space(28) + "<---Opening Stock----------------->          <----Receipts------------------------>         <---Consumption----------------------->         <--Closing Stock----------------------->  "
          Print #z, Space(5)
          Print #z, Space(5) + "     Name" + Space(31) + "Bales       Boras                 Kgs           Bales       Boras                 Kgs           Bales       Boras                 Kgs           Bales       Boras                  Kgs"
          Print #z, Space(5) + String(222, "-")
             
End Sub







'Set cnn = New Connection
'a1 = a
'b1 = b
'cnn.Provider = "MSDATASHAPE"
'cnn.Open connectstring
'
'
'    Set resultrs = New Recordset
'
'        resultrs.Open "SHAPE {select k.divcode,k.catcd,k.lotno,k.lotdt,sum(isnull(OpenBorah,0)) as OpenBorah,sum(isnull(k.openbal,0)) as openbale,sum(isnull(k.openbal,0)) as opkgs, sum(isnull(k.recep,0)) as reckgs,k.recpBorah as recborah,k.recpBale as recbale,k.issBorah,k.issBale,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.recep,0)) - sum(isnull(k.issue,0)) as 'Closing',sum(isnull(k.OpenBale,0)) +  sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) -  sum(isnull(k.IssBorah,0)) as 'Closborah',g.varCODE,g.varname, sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) 'totalreckgs'  from ((  select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0) - isnull(t.issuekgs,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg = 'R' then isnull(e.bales,0) - isnull(t.bales,0) end) as 'OpenBorah'," & _
'                                 " 0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale, 0 as IssBorah from (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',Count (c.baleno) 'Bales' from rm_issb c,rm_lot b where c.docdt <' " & Format(a1, "yyyy/mm/dd") & " 'and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode = '01'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where e.lotdt < ' " & a1 & " '" & _
'                                 " and e.divcode = t.divcode and t.divcode = '01'  and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and  e.catcd = 'C' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep', case when e.bblflg = 'B' then e.bales end 'recpBale',case when  e.bblflg = 'R' then e.bales end 'recpBorah',0 as 'Issue', 0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where " & _
'                                 " e.lotdt between ' " & Format(a1, "yyyy/mm/dd") & " 'and ' " & Format(b1, "yyyy/mm/dd") & " ' and e.catcd = 'C' and e.lotno = c.lotno union   select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as 'Openbal', 0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale, 0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale', case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where a.docdt between " & _
'                                 " ' " & Format(a1, "yyyy/mm/dd") & " ' and ' " & Format(b1, "yyyy/mm/dd") & " ' and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot f,rm_var g Where f.lotno = k.lotno And f.lotdt = k.lotdt And f.catcd = k.catcd And f.divcode = k.divcode  and k.divcode = '01' and f.varcode = g.varcode group by k.divcode,k.catcd,k.lotno,k.lotdt,g.varcode,g.varname,k.recpBorah,k.recpBale,k.issBorah,k.issBale} AS COMMAND2 COMPUTE COMMAND2 BY 'varcode','varname'", cnn, adOpenStatic, adLockBatchOptimistic
'
'    If resultrs.EOF Then
'        MsgBox "No Records Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
'
'    Set rs = New Recordset
'         rs.Open "select distinct a.varcode,b.varcode from rm_lot a,rm_var b,rm_issb c where a.varcode=b.varcode and a.catcd='C' and c.docdt between '" & Format(a1, "yyyy/mm/dd") & "' and '" & Format(b1, "yyyy/mm/dd") & "' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd ", cnn, adOpenStatic, adLockBatchOptimistic
'      If rs.RecordCount = 0 Then
'        MsgBox "No Records Found", vbInformation, head
'        Exit Sub
'        End If
'    Set RPTV = New Report.ReportView
'
'     z = FreeFile
'    Close #z
'    Open "C:\past.TXT" For Output As #z
'    pg1 = 1
'    c1 = 12
'    Print #z, Chr(15)
'     'z = FreeFile
'    Call panstmHeader(pg1, co, s, a, b)
'      tot1 = 0
'      tot2 = 0
'      tot3 = 0
'      tot4 = 0
'      tot5 = 0
'      tot6 = 0
'      tot7 = 0
'      tot8 = 0
'      tot9 = 0
'      tot10 = 0
'      tot11 = 0
'      tot12 = 0
'      tot21 = 0
'      tot22 = 0
'      tot23 = 0
'      tot24 = 0
'      tot25 = 0
'      tot26 = 0
'      tot27 = 0
'      tot28 = 0
'      tot29 = 0
'      tot30 = 0
'      tot31 = 0
'      tot32 = 0
'
'        Print #z,
'        c1 = c1 + 2
'
'            rs.MoveFirst
'
'        Do While Not rs.EOF
'        Print #z, Space(5) + CStr(rs("varcode"))
'        c1 = c1 + 1
'            Set rs1 = New Recordset
'            rs1.Open "select k.divcode,k.catcd,k.lotno,k.lotdt,sum(isnull(OpenBorah,0)) as OpenBorah,sum(isnull(k.openbal,0)) as openbale,sum(isnull(k.openbal,0)) as opkgs, sum(isnull(k.recep,0)) as reckgs,isnull(k.recpBorah,0) as recborah,isnull(k.recpBale,0) as recbale," & _
'            "isnull(k.issBorah,0) as issborah,k.issBale,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.recep,0)) - sum(isnull(k.issue,0)) as 'Closing',sum(isnull(k.OpenBale,0)) +  sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) -  sum(isnull(k.IssBorah,0)) as 'Closborah',g.varCODE,g.varname, sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) 'totalreckgs'  from ((  select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0) - isnull(t.issuekgs,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg = 'R' then isnull(e.bales,0) - isnull(t.bales,0) end) as 'OpenBorah'," & _
'                                 " 0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale, 0 as IssBorah from (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',Count (c.baleno) 'Bales' from rm_issb c,rm_lot b where c.docdt <' " & Format(a1, "yyyy/mm/dd") & " 'and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode = '01'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where e.lotdt < ' " & Format(a1, "yyyy/mm/dd") & " '" & _
'                                 " and e.divcode = t.divcode and t.divcode = '01'  and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and  e.catcd = 'C' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep', case when e.bblflg = 'B' then e.bales end 'recpBale',case when  e.bblflg = 'R' then e.bales end 'recpBorah',0 as 'Issue', 0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where " & _
'                                 " e.lotdt between ' " & Format(a1, "yyyy/mm/dd") & " 'and ' " & Format(b1, "yyyy/mm/dd") & " ' and e.catcd = 'C' and e.lotno = c.lotno union   select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as 'Openbal', 0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale, 0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale', case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where a.docdt between " & _
'                                 " ' " & Format(a1, "yyyy/mm/dd") & " ' and ' " & Format(b1, "yyyy/mm/dd") & " ' and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot f,rm_var g Where f.lotno = k.lotno And f.lotdt = k.lotdt And f.catcd = k.catcd And f.divcode = k.divcode  and k.divcode = '01' and f.varcode = g.varcode and g.varcode='" & rs("varcode") & "' group by k.divcode,k.catcd,k.lotno,k.lotdt,g.varcode,g.varname,k.recpBorah,k.recpBale,k.issBorah,k.issBale order by g.varcode ", cnn, adOpenStatic, adLockBatchOptimistic
'
'             rs1.MoveFirst
'       Do While Not rs1.EOF
'              Print #z,
'            'Print #z, Space(5) + CStr(rs1("varcode"))
'Print #z, Space(13) + Padr(CStr(rs1("varname")), 20, " ") + Space(7) + Padl(CStr(IIf(rs1("openbale") = 0, " ", rs1("openbale"))), 10, " ") + Space(2) + Padl(CStr(IIf(rs1("openborah") = 0, " ", rs1("openborah"))), 6, " ") + Space(2) + Padl(Format(IIf(rs1("opkgs") = 0, " ", rs1("opkgs")), "##,##0.000"), 14, " ") + Space(2) + Padl(CStr(IIf(rs1("recbale") = 0, " ", rs1("recbale"))), 10, " ") + Space(2) + Padl(CStr(IIf(rs1("recborah") = 0, " ", rs1("recborah"))), 6, " ") + Space(2) + Padl(Format(IIf(rs1("reckgs") = 0, " ", rs1("reckgs")), "##,###,##0.000"), 14, " ") + Space(2) + Padl(CStr(IIf(IIf(IsNull(rs1("issbale")), 0, rs1("issbale")) = 0, " ", rs1("issbale"))), 10, " ") + Space(2) + Padl(CStr(IIf(IIf(IsNull(rs1("issborah")), 0, rs1("issborah")) = 0, " ", rs1("issborah"))), 6, " ") + Space(2) + Padl(Format(IIf(rs1("isskgs") = 0, " ", rs1("isskgs")), "##,###,##0.000"), 14, " ");
'Print #z, Space(2) + Padl(CStr(IIf(rs1("closbale") = 0, " ", rs1("closbale"))), 10, " ") + Space(2) + Padl(CStr(IIf(rs1("closborah") = 0, " ", rs1("closborah"))), 6, " ") + Space(2) & _
'Padl(Format(IIf(rs1("closing") = 0, " ", rs1("closing")), "##,###,##0.000"), 14, " ")
'                  c1 = c1 + 2
'                If c1 > 62 Then
'                  Print #z, Chr(12)
'                  pg1 = pg1 + 1
'                  c1 = 10
'                  Call panstmHeader(pg1, co, s, a, b)
'                End If
'                 tot1 = tot1 + rs1("openbale")
'                tot2 = tot2 + rs1("openborah")
'               tot3 = tot3 + rs1("opkgs")
'               tot4 = tot4 + rs1("recbale")
'                  tot5 = tot5 + rs1("recborah")
'                  tot6 = tot6 + rs1("reckgs")
'                  tot7 = tot7 + IIf(IsNull(rs1("issbale")), 0, rs1("issbale"))
'                  tot8 = tot8 + IIf(IsNull(rs1("issborah")), 0, rs1("issborah"))
'                  tot9 = tot9 + rs1("isskgs")
'                  tot10 = tot10 + rs1("closbale")
'                  tot11 = tot11 + rs1("closborah")
'                  tot12 = tot12 + rs1("Closing")
'                rs1.MoveNext
'        Loop
'        Print #z,
'        Print #z, Space(5) + Space(18) + "**  Sub Total  **" + Padl(CStr(IIf(tot1 = 0, " ", tot1)), 10, " ") + Space(2) + Padl(CStr(IIf(tot2 = 0, " ", tot2)), 6, " ") + Space(2) + Padl(Format(IIf(tot3 = 0, " ", tot3), "##,###,##0.000"), 14, " ") + Space(2) + Padl(CStr(IIf(tot4 = 0, " ", tot4)), 10, " ") + Space(2) + Padl(CStr(IIf(tot5 = 0, " ", tot5)), 6, " ") + Space(2) + Padl(Format(IIf(tot6 = 0, " ", tot6), "##,###,##0.000"), 14, " ") + Space(2) + Padl(CStr(IIf(tot7 = 0, " ", tot7)), 10, " ") + Space(2) + Padl(CStr(IIf(tot8 = 0, " ", tot8)), 6, " ") + Space(2) + Padl(Format(IIf(tot9 = 0, " ", tot9), "##,###,##0.000"), 14, " ") + Space(2) + Padl(CStr(IIf(tot10 = 0, " ", tot10)), 10, " ") + Space(2) + Padl(CStr(IIf(tot11 = 0, " ", tot11)), 6, " ") + Space(2) + Padl(Format(IIf(tot12 = 0, " ", tot12), "##,###,##0.000"), 14, " ")
'        c1 = c1 + 2
'        If c1 > 62 Then
'            Print #z, Chr(12)
'            pg1 = pg1 + 1
'            c1 = 10
'            Call panstmHeader(pg1, co, s, a, b)
'        End If
'        tot21 = tot21 + tot1
'           tot22 = tot22 + tot2
'           tot23 = tot23 + tot3
'           tot24 = tot24 + tot4
'           tot25 = tot25 + tot5
'           tot26 = tot26 + tot6
'           tot27 = tot27 + tot7
'           tot28 = tot28 + tot8
'           tot29 = tot29 + tot9
'           tot30 = tot30 + tot10
'           tot31 = tot31 + tot11
'           tot32 = tot32 + tot12
'            tot1 = 0
'            tot2 = 0
'            tot3 = 0
'            tot4 = 0
'            tot5 = 0
'            tot6 = 0
'            tot7 = 0
'            tot8 = 0
'            tot9 = 0
'            tot10 = 0
'            tot11 = 0
'            tot12 = 0
'                  rs.MoveNext
'        Loop
'Print #z, Space(5) + String(177, "-")
'        Print #z,
'Print #z, Space(5) + Space(17) + "**  Grand Total  **" + Padl(CStr(IIf(tot21 = 0, " ", tot21)), 9, " ") + Space(2) + Padl(CStr(IIf(tot22 = 0, " ", tot22)), 6, " ") + Space(2) + Padl(Format(IIf(tot23 = 0, " ", tot23), "##,###,##0.000"), 14, " ") + Space(2) + Padl(CStr(IIf(tot24 = 0, " ", tot24)), 10, " ") + Space(2) + Padl(CStr(IIf(tot25 = 0, " ", tot25)), 6, " ") + Space(2) + Padl(Format(IIf(tot26 = 0, " ", tot26), "##,###,##0.000"), 14, " ") + Space(2) + Padl(CStr(IIf(tot27 = 0, " ", tot27)), 10, " ") + Space(2) + Padl(CStr(IIf(tot28 = 0, " ", tot28)), 6, " ") + Space(2) + Padl(Format(IIf(tot29 = 0, " ", tot29), "##,###,##0.000"), 14, " ") + Space(2) + Padl(CStr(IIf(tot30 = 0, " ", tot30)), 10, " ") + Space(2) + Padl(CStr(IIf(tot31 = 0, " ", tot31)), 6, " ") + Space(2) + Padl(Format(IIf(tot32 = 0, " ", tot32), "##,###,##0.000"), 14, " ")
'        Print #z,
'Print #z, Space(5) + String(177, "-")
'Print #z, Chr(12)
'Print #z, Chr(18)
'Close #z
' z = FreeFile
'Open "C:\past.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "C:"
'Print #z, "cd\"
'Print #z, "type past.TXT>prn"
'Close #z
'RPTV.txtfile = "C:\past.TXT"
'RPTV.Batfile = "C:\past.bat"







