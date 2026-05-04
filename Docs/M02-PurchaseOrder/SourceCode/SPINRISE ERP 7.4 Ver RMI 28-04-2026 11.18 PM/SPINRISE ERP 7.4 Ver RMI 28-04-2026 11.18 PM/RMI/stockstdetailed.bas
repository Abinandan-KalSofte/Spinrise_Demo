Attribute VB_Name = "stock_st_detailed"

Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer




Public Sub StockDetailReport(From_Date As String, To_Date As String, Category As String, DIVNAME As String)
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
Dim Cn As Connection
Set Cn = New Connection
PageLen = 53
Set RS2 = New Recordset
Cn.Provider = "MSDATASHAPE"
Cn.Open connectstring
    D1 = CStr(Format(From_Date, "yyyy-mm-dd"))
    D2 = CStr(Format(To_Date, "yyyy-mm-dd"))
    Cn.Execute "create table temp_details(det_date datetime,op_bale numeric(6),op_borah numeric(6),op_kgs numeric(10,3),recp_bale numeric(6),recp_borah numeric(6),recp_kgs numeric(10,2),iss_bale numeric(6),iss_borah numeric(6),iss_kgs numeric(10,2),clo_bale numeric(6),clo_borah numeric(6),clo_kgs numeric(10,2),open_val numeric(12,0),recp_val numeric(12,0),iss_val numeric(12,0),clos_val numeric(12,0))"
    For i = 0 To DateDiff("d", D1, D2)
       fdate = DateAdd("d", i, D1)
       Set Rs = New Recordset
       Rs.Open " select sum(isnull(k.openkgs,0)) as opkgs, sum(isnull(recep,0)) as reckgs,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Closing',sum(isnull(k.Openbale,0)) 'openbale',sum(isnull(k.recpBale,0)) 'recpbale',sum(isnull(k.Openbale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', " & _
               " sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Closborah',sum(isnull(k.OpenBorah,0)) 'openborah',sum(isnull(k.recpBorah,0)) 'recpborah',sum(isnull(k.issborah,0)) 'issborah',sum(isnull(k.issbale,0)) 'issbale' ,sum(isnull(k.openval,0)) 'openvalu',sum(isnull(k.recval,0)) 'recvalu',sum(isnull(k.issval,0)) 'issvalu',sum(isnull(k.openval,0)) + sum(isnull(k.recval,0)) - sum(isnull(k.issval,0)) 'clovalu' " & _
               " from ((select isnull(a.netwt,0) - isnull(b.isskgs,0) 'Openkgs',isnull(Openbale,0) -isnull(issbale,0)'OpenBale',isnull(Openborah,0) -isnull(issborah,0)'OpenBorah',0 as recep,0 as recpbale,0 as recpborah,0 as 'Issue',0 as IssBale,0 as IssBorah,isnull(a.val1,0) - isnull(b.val2,0) 'openval',0 as recval,0 as issval  from (select sum(isnull(netwt,0)) 'netwt',case when bblflg = 'B' then " & _
               " sum(isnull(bales,0)) end 'OpenBale', case when bblflg    IN ('R','H') then sum(isnull(bales,0)) end 'OpenBorah',sum(isnull(netwt,0) * ratekg) 'val1'  from rm_lot  where lotdt < '" & Format(fdate, "yyyy-mm-dd") & "' and divcode = '" & Divcode & "' and  catcd = '" & (Mid$(Category, 1, (InStr(Category, "-") - 1))) & "'  group by bblflg) a , (select sum(isnull(c.isskgs,0)) 'isskgs', case when d.bblflg = 'B'" & _
               " then count(isnull(c.baleno,0))end 'issbale' , case when d.bblflg = 'B' then count(isnull(c.baleno,0))end 'issborah' ,sum(isnull(c.isskgs,0) * d.ratekg) 'val2' from rm_issb c,rm_lot d  where c.docdt < '" & Format(fdate, "yyyy-mm-dd") & "' and c.divcode = '" & Divcode & "' and c.catcd = '" & (Mid$(Category, 1, (InStr(Category, "-") - 1))) & "' and c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode " & _
               " group by d.bblflg ) b union select 0 as Openkgs,0 as 'OpenBale',0 as 'OpenBorah',sum(isnull(e.netwt,0)) as 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg    IN ('R','H') then sum(isnull(e.bales,0)) end 'recpBorah',0 as 'Issue',0 as IssBale ,0 as IssBorah,0 as openval,sum(isnull(e.netwt,0) * e.ratekg) 'recval',0 as issval  from rm_lot e " & _
               " where e.lotdt = '" & Format(fdate, "yyyy-mm-dd") & "' and e.divcode = '" & Divcode & "' and e.catcd = '" & (Mid$(Category, 1, (InStr(Category, "-") - 1))) & "'  group by bblflg union select 0 as Openkgs,0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale,0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when b.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when b.bblflg    IN ('R','H') then count(isnull(baleno,0)) end 'IssBorah', " & _
               " 0 as openval,0 as recval,sum(isnull(a.isskgs,0) * b.ratekg) 'issval'  from rm_issb a,rm_lot b where a.docdt = '" & Format(fdate, "yyyy-mm-dd") & "' and  a.divcode = '" & Divcode & "' and a.catcd = '" & (Mid$(Category, 1, (InStr(Category, "-") - 1))) & "'  and a.lotno = b.lotno and a.lotdt = b.lotdt and a.catcd = b.catcd and  a.divcode = b.divcode group by b.bblflg) )k", Cn, adOpenStatic, adLockBatchOptimistic
       If Not Rs.BOF Then
            Cn.Execute ("insert into temp_details values('" & Format(fdate, "yyyy-mm-dd") & "'," & IIf(IsNull(Rs(4)) = True, 0, Rs(4)) & "," & IIf(IsNull(Rs(8)) = True, 0, Rs(8)) & "," & IIf(IsNull(Rs(0)) = True, 0, Rs(0)) & "," & IIf(IsNull(Rs(5)) = True, 0, Rs(5)) & "," & IIf(IsNull(Rs(9)) = True, 0, Rs(9)) & "," & IIf(IsNull(Rs(1)) = True, 0, Rs(1)) & ", " & IIf(IsNull(Rs(11)) = True, 0, Rs(11)) & ", " & IIf(IsNull(Rs(10)) = True, 0, Rs(10)) & "," & IIf(IsNull(Rs(2)) = True, 0, Rs(2)) & "," & IIf(IsNull(Rs(6)) = True, 0, Rs(6)) & "," & IIf(IsNull(Rs(7)) = True, 0, Rs(7)) & "," & IIf(IsNull(Rs(3)) = True, 0, Rs(3)) & "," & IIf(IsNull(Rs(12)) = True, 0, Rs(12)) & "," & IIf(IsNull(Rs(13)) = True, 0, Rs(13)) & "," & IIf(IsNull(Rs(14)) = True, 0, Rs(14)) & "," & IIf(IsNull(Rs(15)) = True, 0, Rs(15)) & ")")
       Else
            MsgBox "No Records Found", vbInformation, head
            Exit Sub
       End If
    Next
    Set Rs = New Recordset
    Rs.Open "select det_date,op_bale,op_borah,op_kgs,recp_bale,recp_borah,recp_kgs,iss_bale,iss_borah,iss_kgs,clo_bale as clos_bal,clo_borah as clos_borah,clo_kgs clos_kgs,open_val,recp_val,iss_val,clos_val from temp_details", Cn, adOpenStatic, adLockBatchOptimistic
    If Rs.EOF Then
        MsgBox "No records found", vbInformation, head
        Exit Sub
    End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\stock_st_detail.TXT" For Output As #a
Open KALFOLDERDATA & "\stock_st_detail.TXT" For Output As #a
pg1 = 1
Co = 0
Call PartyHeader(pg1, Co, From_Date, To_Date, Category, DIVNAME)
Rs.MoveFirst
Do While Not Rs.EOF
               Print #a,

             Print #a,
                
                Print #a, Space(5) + Padr((CStr(Rs("det_date"))), 10, " ") + Padl((CStr(Rs("op_bale"))), 13, " ") + Padl((CStr(Rs("op_borah"))), 13, " ") + Space(2) + Padl(CStr(Format(Rs("op_kgs"), "#0.000")), 16, " ") + Padl(CStr(Format(Rs("open_val"), "#0.00")), 16, " ") + Padl((CStr(Rs("recp_bale"))), 8, " ") + Padl((CStr(Rs("recp_borah"))), 8, " ") + Space(2) + Padl(CStr(Format(Rs("recp_kgs"), "##,###,##0.000")), 16, " ") + Padl(CStr(Format(Rs("recp_val"), "##,###,##0.00")), 16, " ") + Padl((CStr(Rs("iss_bale"))), 8, " ") + Padl((CStr(Rs("iss_borah"))), 8, " ") + Space(2) + Padl(CStr(Format(Rs("iss_kgs"), "#0.000")), 16, " ") + Padl(CStr(Format(Rs("iss_val"), "#0.00")), 16, " ") + Padl((CStr(Rs("clos_bal"))), 8, " ") + Padl((CStr(Rs("clos_borah"))), 8, " ") + Space(2) + Padl(CStr(Format(Rs("clos_kgs"), "##,###,##0.000")), 16, " ") + Padl(CStr(Format(Rs("clos_val"), "##,###,##0.00")), 16, " ")
                
                op_bale = op_bale + Rs("op_bale")
                op_borah = op_borah + Rs("op_borah")
                op_kgs = op_kgs + Rs("op_kgs")
                op_val = op_val + Rs("open_val")
                
                recp_bale = recp_bale + Rs("recp_bale")
                recp_borah = recp_borah + Rs("recp_borah")
                recp_kgs = recp_kgs + Rs("recp_kgs")
                recp_val = recp_val + Rs("recp_val")
                
                iss_bale = iss_bale + Rs("iss_bale")
                iss_borah = iss_borah + Rs("iss_borah")
                iss_kgs = iss_kgs + Rs("iss_kgs")
                iss_val = iss_val + Rs("iss_val")
                                
                clos_bale = clos_bale + Rs("clos_bal")
                clos_borah = clos_borah + Rs("clos_borah")
                clos_kgs = clos_kgs + Rs("clos_kgs")
                clos_val = clos_val + Rs("clos_val")
                 Co = Co + 1
                If Co > PageLen Then
                  Print #a, Space(5) + String(223, "-")
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call PartyHeader(pg1, Co, From_Date, To_Date, Category, DIVNAME)
                 End If
                
    Rs.MoveNext
Loop
Cn.Execute "drop table temp_details"
Print #a,
Print #a, Space(5) + String(223, "-")
Print #a, Space(5) + "**Grant Total**" + Padl(CStr(op_bale), 8, " ") + Padl(CStr(op_borah), 13, " ") + Space(2) + Padl((CStr(Format(op_kgs, "##,###,##0.000"))), 16, " ") + Padl((CStr(Format(op_val, "##,###,##0.00"))), 16, " ") + Padl(CStr(recp_bale), 8, " ") + Padl(CStr(recp_borah), 8, " ") + Space(2) + Padl((CStr(Format(recp_kgs, "##,###,##0.000"))), 16, " ") + Padl((CStr(Format(recp_val, "##,###,##0.00"))), 16, " ") + Padl(CStr(iss_bale), 8, " ") + Padl(CStr(iss_borah), 8, " ") + Space(2) + Padl((CStr(Format(iss_kgs, "##,###,##0.000"))), 16, " ") + Padl((CStr(Format(iss_val, "##,###,##0.00"))), 16, " ") + Padl(CStr(clos_bale), 8, " ") + Padl(CStr(clos_borah), 8, " ") + Space(2) + Padl((CStr(Format(clos_kgs, "##,###,##0.000"))), 16, " ") + Padl((CStr(Format(clos_val, "##,###,##0.00"))), 16, " ")
Print #a,
Print #a, Space(5) + String(223, "-")
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\stock_st_detail.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type stock_st_detail.txt>prn"
'Close #a
'RPTV.txtfile = "c:\stock_st_detail.txt"
'RPTV.Batfile = "c:\stock_st_detail.bat"
Call KALBATPROCESS("stock_st_detail")
Screen.MousePointer = 0
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String, DIVNAME As String)
          Print #a,
          Print #a, Space(10) + Space(Round((213 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((232 - 2 * Len(DIVNAME)) / 2))
          Print #a, Space(203)
          Print #a,
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + "Stock statement Varietywise from" & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy") & Space(60) & W & Space(76) + SR + "Pg.No :" + Space(1) + CStr(pg1)
          Print #a, Space(5) + String(223, "-")
          Print #a,
          Print #a,
          Print #a, Space(5) + "                  <-------Opening Balance------------->                  <---------Receipts------------->                  <-------------Issues----------->                  <--------Closing Balance------->"
          Print #a, Space(5) + "Date               Bale        Borah         Wgt. kgs.           Value    Bale   Borah         Wgt. kgs.           Value    Bale   Borah         Wgt. kgs.           Value    Bale   Borah         Wgt. kgs.           Value "
          Print #a, Space(5) + String(223, "-")
End Sub






