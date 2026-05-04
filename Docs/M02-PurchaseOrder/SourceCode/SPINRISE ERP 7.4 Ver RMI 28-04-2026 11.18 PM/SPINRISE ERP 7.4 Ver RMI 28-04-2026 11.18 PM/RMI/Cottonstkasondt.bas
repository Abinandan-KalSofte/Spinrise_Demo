Attribute VB_Name = "Cottonstkasondt"

Option Explicit

Dim f As Integer
Dim Date1 As String
Dim str As String
Public Function cottonstkason(DTPicker1 As String)
Dim Rep As New Report.ReportView
Dim pagein As Integer
Dim cont As Double
Dim cnt  As Double
Dim str1  As String
Dim issrs As New Recordset
Date1 = DTPicker1
    
    Set Rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    Close f
    
    cnt = 0
    'Open "C:\ctnstkasondate.txt" For Output As #f
     Open KALFOLDERDATA & "\ctnstkasondate.TXT" For Output As #f
    
    
    
    
    Call prnhead
    
    
    balechk
    
str1 = "select sum(isnull(d.stockbale,0)), " & _
"avg(round(isnull(rate,0)*355.6187,0)) ratepercandy, " & _
"avg(isnull(d.cost,0)/100000) rs_lakh,sum(isnull(e.bales,0)), " & _
"avg(isnull(e.ratepercandy,0)), " & _
"sum(isnull(f.STOCKBALE,0)), " & _
"avg (IsNull(f.CANDYRATE, 0)), Sum(IsNull(g.STOCKBALE, 0)), avg(IsNull(g.CANDYRATE, 0)),avg(isnull(f.rslakh,0)) " & _
"from (select varname varietyname,sum(isnull(bales,0)) bales,(sum(isnull(a.netwt,0))-sum(isnull(isswt,0)))*avg(isnull(ratekg,0)) cost,avg(isnull(ratekg,0)) rate,(sum(isnull(a.netwt,0))-sum(isnull(isswt,0)))as stockweight,(sum(isnull(bales,0))-sum(isnull(issbal,0)))as stockbale from rm_lot a,rm_var b where a.varcode=b.varcode group by varname) d, (select round(avg(isnull(a.RATEKG,0))*355.6187,0) ratepercandy,count(b.baleno) bales from rm_lot a,rm_bale b Where a.Divcode = b.Divcode And a.lotno = b.lotno And a.lotdt = b.lotdt and a.catcd=b.catcd  and b.openkey='Y')e,(select sum(QUANTITY) AS STOCKBALE,avg(isnull(RATECY,0)) as candyrate,((isnull(avg(ratecy),0)/355.6187)*isnull(sum(netwt),0)/100000) rslakh from rm_arrival)f ,(select SUM(ORDQTY)-SUM(RECQTY)AS STOCKBALE,avg(isnull(CANDYRATE,0)) as candyrate  from rm_cont )g "

Set issrs = Nothing
Set issrs = New Recordset
issrs.Open str1, Cn, adOpenDynamic, adLockOptimistic
    
'
        
     cnt = cnt + 1
        If cnt >= 53 Then
            Print #f, Chr(12)
            Call prnhead
            cnt = 0
        End If


    Close #f
'    Open "C:\ctnstkasondate.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "C:"
'    Print #f, "cd\"
'    Print #f, "type ctnstkasondate.txt > prn"
'    Close #f
'    Set Rep = New Report.ReportView
'    Rep.txtfile = "C:\ctnstkasondate.txt"
'    Rep.Batfile = "C:\ctnstkasondate.bat"
f = FreeFile
Call KALBATPROCESS("ctnstkasondate")
    Screen.MousePointer = 0



End Function

Public Sub balechk()
Dim issrs  As New Recordset
Dim RecRs As Recordset
Dim Sno  As Integer
Dim prev As Integer
Dim tot_stkbal As Double
Dim tot_stkratcandy As Double
Dim tot_stkratlak As Double
Dim fst_stkbal As Double
Dim fst_stkratcandy As Double
Dim fst_stkratlak As Double
Dim sec_stkbal As Double
Dim sec_stkratcandy As Double
Dim sec_stkratlak As Double
Dim thr_stkbal As Double
Dim thr_stkratcandy As Double
Dim thr_stkratlak As Double
Dim fou_stkbal As Double
Dim fou_stkratcandy As Double
Dim fou_stkratlak As Double
Dim ova_stkbal As Double
Dim ova_stkratcandy As Double
Dim ova_stkratlak As Double

 
Set issrs = New Recordset
    issrs.Open "select distinct a.varcode from rm_lot a, rm_cont b where a.varcode*=b.varcode", Cn, adOpenDynamic, adLockOptimistic
    Sno = 1
    
 tot_stkbal = 0
 tot_stkratcandy = 0
 tot_stkratlak = 0
     
 fst_stkbal = 0
 fst_stkratcandy = 0
 fst_stkratlak = 0
 sec_stkbal = 0
 sec_stkratcandy = 0
 sec_stkratlak = 0
 thr_stkbal = 0
 thr_stkratcandy = 0
 thr_stkratlak = 0
 fou_stkbal = 0
 fou_stkratcandy = 0
 fou_stkratlak = 0
    Do Until issrs.EOF
    Set RecRs = New ADODB.Recordset
    
 str = "select d.varietyname,d.stockbale,d.stockweight,round(rate*355.6187,0) ratepercandy,d.cost/100000 rs_lakh,e.bales,e.ratepercandy,f.STOCKBALE,f.CANDYRATE,g.STOCKBALE,g.CANDYRATE,f.rslakh,e.cost_y/100000,g.rate_lkh  from " & _
"(select varname varietyname,sum(isnull(bales,0)) bales,(sum(isnull(a.netwt,0))-sum(isnull(isswt,0)))*avg(isnull(ratekg,0)) cost,avg(isnull(ratekg,0)) rate,(sum(isnull(a.netwt,0))-sum(isnull(isswt,0)))as stockweight,(sum(isnull(bales,0))-sum(isnull(issbal,0)))as stockbale from rm_lot a,rm_var b where a.varcode='" & issrs(0) & "' and a.varcode=b.varcode group by varname) d, " & _
"(select round(avg(isnull(a.RATEKG,0))*355.6187,0) ratepercandy,count(b.baleno) bales,(sum(isnull(a.netwt,0))-sum(isnull(isswt,0)))*avg(isnull(ratekg,0)) cost_y from rm_lot a,rm_bale b " & _
"Where a.Divcode = b.Divcode And a.lotno = b.lotno And a.lotdt = b.lotdt " & _
"and a.catcd=b.catcd  and b.openkey='Y' and a.varcode='" & issrs(0) & "')e," & _
"(select sum(QUANTITY) AS STOCKBALE,avg(isnull(RATECY,0)) as candyrate,((isnull(avg(ratecy),0)/355.6187)*isnull(sum(netwt),0)/100000) rslakh from rm_arrival where varcode='" & issrs(0) & "')f " & _
",(select SUM(A.ORDQTY)-SUM(A.RECQTY)AS STOCKBALE,avg(isnull(A.CANDYRATE,0)) as candyrate,((ISNULL(avg(A.CANDYRATE),0)/355.6187)*ISNULL(SUM(B.NETWT),0)/100000) AS rate_lkh  from rm_cont A,RM_ARRIVAL B where A.varcode='" & issrs(0) & "' AND A.DIVCODE=B.DIVCODE AND A.VARCODE=B.VARCODE AND A.CONTNO=B.CONTNO AND A.CONTDT=B.CONTDT)g "

'from rm_cont A,RM_ARRIVAL B where A.varcode=='" & IssRs(0) & "' AND A.DIVCODE=B.DIVCODE AND A.VARCODE=B.VARCODE AND A.CONTNO=B.CONTNO AND A.CONTDT=B.CONTDT)g
 
    
    RecRs.Open str, Cn, adOpenDynamic, adLockOptimistic
    ova_stkbal = 0
    ova_stkratcandy = 0
    ova_stkratlak = 0

    Do Until RecRs.EOF
    
    ova_stkbal = ova_stkbal + IIf(IsNull(RecRs("STOCKBALE")), 0, RecRs("STOCKBALE")) + IIf(IsNull(RecRs("bales")), 0, RecRs("bales")) + IIf(IsNull(RecRs("STOCKBALE")), 0, RecRs("STOCKBALE")) + IIf(IsNull(RecRs("STOCKBALE")), 0, RecRs("STOCKBALE"))
    ova_stkratcandy = ova_stkratcandy + IIf(IsNull(RecRs("ratepercandy")), 0, RecRs("ratepercandy")) + IIf(IsNull(RecRs("ratepercandy")), 0, IsNull(RecRs("ratepercandy"))) + IIf(IsNull(RecRs("CANDYRATE")), 0, RecRs("CANDYRATE")) + IIf(IsNull(RecRs("CANDYRATE")), 0, RecRs("CANDYRATE"))
    ova_stkratlak = ova_stkratlak + IIf(IsNull(RecRs("rs_lakh")), 0, RecRs("rs_lakh")) + IIf(IsNull(RecRs("rslakh")), 0, RecRs("rslakh"))
    
    tot_stkbal = tot_stkbal + ova_stkbal
    tot_stkratcandy = tot_stkratcandy + ova_stkratcandy
    tot_stkratlak = tot_stkratlak + ova_stkratlak
       
        
        If CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) <> 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) = 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) = 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) <> 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             fst_stkbal = fst_stkbal + IIf(IsNull(RecRs(1)), 0, RecRs(1))
             fst_stkratcandy = fst_stkratcandy + IIf(IsNull(RecRs(3)), 0, RecRs(3))
             fst_stkratlak = fst_stkratlak + IIf(IsNull(RecRs(4)), 0, RecRs(4))
             fou_stkbal = fou_stkbal + IIf(IsNull(RecRs(9)), 0, RecRs(9))
             fou_stkratcandy = fou_stkratcandy + IIf(IsNull(RecRs(10)), 0, RecRs(10))
             fou_stkratlak = fou_stkratlak + IIf(IsNull(RecRs(13)), 0, RecRs(13))

                
        '2,4=0,1,3<>0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) <> 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) = 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) <> 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) = 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(11), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(11), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             fst_stkbal = fst_stkbal + IIf(IsNull(RecRs(1)), 0, RecRs(1))
             fst_stkratcandy = fst_stkratcandy + IIf(IsNull(RecRs(3)), 0, RecRs(3))
             fst_stkratlak = fst_stkratlak + IIf(IsNull(RecRs(4)), 0, RecRs(4))
             thr_stkbal = thr_stkbal + IIf(IsNull(RecRs(7)), 0, RecRs(7))
             thr_stkratcandy = thr_stkratcandy + IIf(IsNull(RecRs(8)), 0, RecRs(8))
             thr_stkratlak = thr_stkratlak + IIf(IsNull(RecRs(11)), 0, RecRs(11))


        '2,4<>0,1,3=0,
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) = 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) <> 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) = 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) <> 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(11), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(11), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             sec_stkbal = sec_stkbal + IIf(IsNull(RecRs(5)), 0, RecRs(5))
             sec_stkratcandy = sec_stkratcandy + IIf(IsNull(RecRs(6)), 0, RecRs(6))
             sec_stkratlak = sec_stkratlak + IIf(IsNull(RecRs("rate_lkh")), 0, RecRs("rate_lkh"))
            fou_stkbal = fou_stkbal + IIf(IsNull(RecRs(9)), 0, RecRs(9))
            fou_stkratcandy = fou_stkratcandy + IIf(IsNull(RecRs(10)), 0, RecRs(10))
            fou_stkratlak = fou_stkratlak + IIf(IsNull(RecRs(13)), 0, RecRs(13))


        '3,4=0,1,2<>0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) <> 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) <> 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) = 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) = 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             fst_stkbal = fst_stkbal + IIf(IsNull(RecRs(1)), 0, RecRs(1))
             fst_stkratcandy = fst_stkratcandy + IIf(IsNull(RecRs(3)), 0, RecRs(3))
             fst_stkratlak = fst_stkratlak + IIf(IsNull(RecRs(4)), 0, RecRs(4))
             sec_stkbal = sec_stkbal + IIf(IsNull(RecRs(5)), 0, RecRs(5))
             sec_stkratcandy = sec_stkratcandy + IIf(IsNull(RecRs(6)), 0, RecRs(6))
             sec_stkratlak = sec_stkratlak + IIf(IsNull(RecRs("rate_lkh")), 0, RecRs("rate_lkh"))

                
        '1,2=0,3,4<>0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) = 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) = 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) <> 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) <> 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
                 thr_stkbal = thr_stkbal + IIf(IsNull(RecRs(7)), 0, RecRs(7))
                thr_stkratcandy = thr_stkratcandy + IIf(IsNull(RecRs(8)), 0, RecRs(8))
                thr_stkratlak = thr_stkratlak + IIf(IsNull(RecRs(11)), 0, RecRs(11))
                fou_stkbal = fou_stkbal + IIf(IsNull(RecRs(9)), 0, RecRs(9))
                fou_stkratcandy = fou_stkratcandy + IIf(IsNull(RecRs(10)), 0, RecRs(10))
                fou_stkratlak = fou_stkratlak + IIf(IsNull(RecRs(13)), 0, RecRs(13))

        '1,2,3=0,4<>0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) = 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) = 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) = 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) <> 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             fou_stkbal = fou_stkbal + IIf(IsNull(RecRs(9)), 0, RecRs(9))
             fou_stkratcandy = fou_stkratcandy + IIf(IsNull(RecRs(10)), 0, RecRs(10))
             fou_stkratlak = fou_stkratlak + IIf(IsNull(RecRs(13)), 0, RecRs(13))

        '1,2,4=0,3<>0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) = 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) = 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) = 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) <> 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
            thr_stkbal = thr_stkbal + IIf(IsNull(RecRs(7)), 0, RecRs(7))
            thr_stkratcandy = thr_stkratcandy + IIf(IsNull(RecRs(8)), 0, RecRs(8))
            thr_stkratlak = thr_stkratlak + IIf(IsNull(RecRs(11)), 0, RecRs(11))
    
            '1,4,3=0,2<>0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) = 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) <> 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) = 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) = 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(16) + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             sec_stkbal = sec_stkbal + IIf(IsNull(RecRs(5)), 0, RecRs(5))
             sec_stkratcandy = sec_stkratcandy + IIf(IsNull(RecRs(6)), 0, RecRs(6))
             sec_stkratlak = sec_stkratlak + IIf(IsNull(RecRs("rate_lkh")), 0, RecRs("rate_lkh"))
 
        '2,4,3=0,1<>0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) <> 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) = 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) = 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) = 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") + " " + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) + " " + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             fst_stkbal = fst_stkbal + IIf(IsNull(RecRs(1)), 0, RecRs(1))
             fst_stkratcandy = fst_stkratcandy + IIf(IsNull(RecRs(3)), 0, RecRs(3))
             fst_stkratlak = fst_stkratlak + IIf(IsNull(RecRs(4)), 0, RecRs(4))

        '1,4,3<>0,2=0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) <> 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) = 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) <> 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) <> 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             fst_stkbal = fst_stkbal + IIf(IsNull(RecRs(1)), 0, RecRs(1))
             fst_stkratcandy = fst_stkratcandy + IIf(IsNull(RecRs(3)), 0, RecRs(3))
             fst_stkratlak = fst_stkratlak + IIf(IsNull(RecRs(4)), 0, RecRs(4))
            thr_stkbal = thr_stkbal + IIf(IsNull(RecRs(7)), 0, RecRs(7))
            thr_stkratcandy = thr_stkratcandy + IIf(IsNull(RecRs(8)), 0, RecRs(8))
            thr_stkratlak = thr_stkratlak + IIf(IsNull(RecRs(11)), 0, RecRs(11))
            fou_stkbal = fou_stkbal + IIf(IsNull(RecRs(9)), 0, RecRs(9))
            fou_stkratcandy = fou_stkratcandy + IIf(IsNull(RecRs(10)), 0, RecRs(10))
            fou_stkratlak = fou_stkratlak + IIf(IsNull(RecRs(13)), 0, RecRs(13))


        '2,4,3<>0,1=0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) = 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) <> 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) <> 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) <> 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(12), 2), 5, " ") + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(11), 2), 5, " ") + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             thr_stkbal = thr_stkbal + IIf(IsNull(RecRs(7)), 0, RecRs(7))
             thr_stkratcandy = thr_stkratcandy + IIf(IsNull(RecRs(8)), 0, RecRs(8))
             thr_stkratlak = thr_stkratlak + IIf(IsNull(RecRs(11)), 0, RecRs(11))
            sec_stkbal = sec_stkbal + IIf(IsNull(RecRs(5)), 0, RecRs(5))
            sec_stkratcandy = sec_stkratcandy + IIf(IsNull(RecRs(6)), 0, RecRs(6))
            sec_stkratlak = sec_stkratlak + IIf(IsNull(RecRs("rate_lkh")), 0, RecRs("rate_lkh"))
            fou_stkbal = fou_stkbal + IIf(IsNull(RecRs(9)), 0, RecRs(9))
            fou_stkratcandy = fou_stkratcandy + IIf(IsNull(RecRs(10)), 0, RecRs(10))
            fou_stkratlak = fou_stkratlak + IIf(IsNull(RecRs(13)), 0, RecRs(13))
 

        '2,4,1<>0,3=0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) <> 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) <> 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) = 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) <> 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(RecRs(9), 0), 5, " ") + Space(1) + Padl(INF(RecRs(10), 2), 11, " ") + Space(1) + Padl(INF(RecRs(13), 2), 5, " ") + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             fst_stkbal = fst_stkbal + IIf(IsNull(RecRs(1)), 0, RecRs(1))
             fst_stkratcandy = fst_stkratcandy + IIf(IsNull(RecRs(3)), 0, RecRs(3))
             fst_stkratlak = fst_stkratlak + IIf(IsNull(RecRs(4)), 0, RecRs(4))
             sec_stkbal = sec_stkbal + IIf(IsNull(RecRs(5)), 0, RecRs(5))
             sec_stkratcandy = sec_stkratcandy + IIf(IsNull(RecRs(6)), 0, RecRs(6))
             sec_stkratlak = sec_stkratlak + IIf(IsNull(RecRs("rate_lkh")), 0, RecRs("rate_lkh"))
             fou_stkbal = fou_stkbal + IIf(IsNull(RecRs(9)), 0, RecRs(9))
             fou_stkratcandy = fou_stkratcandy + IIf(IsNull(RecRs(10)), 0, RecRs(10))
             fou_stkratlak = fou_stkratlak + IIf(IsNull(RecRs(13)), 0, RecRs(13))
 

        '2,3,1<>0,4=0
        ElseIf CDbl(IIf(IsNull(RecRs(1)), 0, RecRs(1))) <> 0 And IIf(IsNull(RecRs(5)), 0, RecRs(5)) <> 0 And IIf(IsNull(RecRs(7)), 0, RecRs(7)) <> 0 And IIf(IsNull(RecRs(9)), 0, RecRs(9)) = 0 Then
            If Sno <> prev Then
                Print #f, Space(5) & Padr(Sno, 4, "") & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(11), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            ElseIf Sno = prev Then
                Print #f, Space(5) & Space(4) & Space(1) + Padr((CStr(RecRs("varietyname"))), 17, " ") + Space(1) + Padl(INF(RecRs(1), 0), 5, " ") + Space(1) + Padl(INF(RecRs(3), 2), 11, " ") + Space(1) + Padl(INF(RecRs(4), 2), 5, " ") + Padl(INF(RecRs(5), 0), 5, " ") + Space(1) + Padl(INF(RecRs(6), 2), 11, " ") + Space(1) + Padl(INF(RecRs("rate_lkh"), 2), 5, " ") + Padl(INF(RecRs(7), 0), 5, " ") + Space(1) + Padl(INF(RecRs(8), 2), 11, " ") + Space(1) + Padl(INF(RecRs(11), 2), 5, " ") + Space(5) + Space(1) + Space(11) + Space(1) + Space(5) + Padl(INF(ova_stkbal, 0), 5, " ") + Space(1) + Padl(INF(ova_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(ova_stkratlak, 2), 5, " ")
            End If
             fst_stkbal = fst_stkbal + IIf(IsNull(RecRs(1)), 0, RecRs(1))
             fst_stkratcandy = fst_stkratcandy + IIf(IsNull(RecRs(3)), 0, RecRs(3))
             fst_stkratlak = fst_stkratlak + IIf(IsNull(RecRs(4)), 0, RecRs(4))
             sec_stkbal = sec_stkbal + IIf(IsNull(RecRs(5)), 0, RecRs(5))
             sec_stkratcandy = sec_stkratcandy + IIf(IsNull(RecRs(6)), 0, RecRs(6))
             sec_stkratlak = sec_stkratlak + IIf(IsNull(RecRs("rate_lkh")), 0, RecRs("rate_lkh"))
             thr_stkbal = thr_stkbal + IIf(IsNull(RecRs(7)), 0, RecRs(7))
             thr_stkratcandy = thr_stkratcandy + IIf(IsNull(RecRs(8)), 0, RecRs(8))
             thr_stkratlak = thr_stkratlak + IIf(IsNull(RecRs(11)), 0, RecRs(11))
 
            
        End If
            Print #f,
    
         prev = Sno
    
    RecRs.MoveNext
    Loop
    
    Sno = Sno + 1
    issrs.MoveNext
    Loop
    
    Print #f, Space(5) & String(138, "-")
    Print #f, Space(5) & Space(6) & "**Total**" & Space(8) & Padl(INF(fst_stkbal, 0), 5, " ") + Space(1) + Padl(INF(fst_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(fst_stkratlak, 2), 5, " ") + Padl(INF(sec_stkbal, 0), 5, " ") + Space(1) + Padl(INF(sec_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(sec_stkratlak, 2), 5, " ") + Padl(INF(thr_stkbal, 0), 5, " ") + Space(1) + Padl(INF(thr_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(thr_stkratlak, 2), 5, " ") + Padl(INF(fou_stkbal, 0), 5, " ") + Space(1) + Padl(INF(fou_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(fou_stkratlak, 2), 5, " ") + Padl(INF(tot_stkbal, 0), 5, " ") + Space(1) + Padl(INF(tot_stkratcandy, 2), 11, " ") + Space(1) + Padl(INF(tot_stkratlak, 2), 5, " ")
    Print #f, Space(5) & String(138, "-")
    
End Sub

Public Function prnhead()
    Print #f,
    Print #f, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
    Print #f,
    Print #f, Space(5) + Chr(27) + "E" + "Details of Cotton Stock (Mill,KCC,GSF and RECEIVABLE) QTY-BALES AND RATE-RS/CANDY AS ON  " + Format(Date1, "dd/mm/yyyy") + Chr(27) + "F"
    Print #f, Space(5) & String(138, "-")
    Print #f, Space(5) & "Sno" & "  Variety  " + Space(8) + CENTRE("STOCK AT", 23, " ") + CENTRE("KEY GODOWN", 23, " ") + CENTRE("STOCK UNDER GSF/CCI", 23, " ") & CENTRE("TO BE RECEIVED", 23, " ") + CENTRE("OVERALL", 23, " ")
    Print #f, Space(10) & "      " & Space(12) & CENTRE("MILL GODOWN", 23, " ") & CENTRE("INDIANBANK", 23, " ") & CENTRE("GSCCF/MSCC", 23, " ")
    Print #f,
    Print #f, Space(28) + "BALES" + Space(5) + "<---RS./-->" + Space(2) + "BALES" + Space(3) + Space(2) + "<---RS./-->" + Space(2) + "BALES" + Space(2) + Space(3) + "<---RS./-->" + Space(2) + "BALES" + Space(2) + Space(3) + "<---RS./-->" + Space(2) + "BALES" + Space(5) + "<---RS./-->" + Space(5 + 2) + Space(3)
    Print #f, Space(30) + "QTY" + Space(7) + "CANDY" + Space(2) + "LAKH" + Space(2) + "QTY" + Space(7) + "CANDY" + Space(2) + "LAKH" + Space(2) + "QTY" + Space(7) + "CANDY" + Space(2) + "LAKH" + Space(2) + "QTY" + Space(7) + "CANDY" + Space(2) + "LAKH" + Space(2) + "QTY" + Space(7) + "CANDY" + Space(2) + "LAKH"
    Print #f, Space(5) & String(138, "-")
End Function




