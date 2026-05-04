Attribute VB_Name = "MixingCost"
Dim cn As New ADODB.Connection
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim TotRs As Recordset
Dim GTotRrs As Recordset
Dim rs5 As New Recordset
Dim RS6 As New Recordset
Dim bolissue As Boolean

Dim tot1 As Double
Dim TOTVAL As Double
Dim GTOTVAL As Double
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim tot20 As Double
Dim tot21 As Double
Dim z As Integer
Dim rp As New rmireports
Public Sub MixingCostReport(From_Date As String, To_Date As String, divname As String, Optional typeflg As String, Optional footerstr As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim pgbaletot As Double, pgwghttot As Double, pgvaltot As Double
Dim baletot As Double, wghttot As Double, valtot As Double
Dim ubaletot As Double, uwghttot As Double, uvaltot As Double
Dim tot1, tot2, tot3 As Double
Dim RECCOUNT As Integer
Dim TEMP As String
If cn.State Then
Else
    cn.Open connectstring
End If
Dim avgrate As Double
Dim rptv As Report.ReportView
Dim Cnn As Connection
Dim cnt As Integer
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Set rs1 = New Recordset
Cnn.Open connectstring
bolissue = False
Set rptv = New Report.ReportView
a = FreeFile
Close
'Open "C:\mixing.TXT" For Output As #a

 Open KALFOLDERDATA & "\mixing.TXT" For Output As #a
pg1 = 1
tot1 = 0: tot2 = 0: tot3 = 0
co = 0
RECCOUNT = 0
cnt = 1
pgbaletot = 0
pgwghttot = 0
pgvaltot = 0
baletot = 0
wghttot = 0
valtot = 0
ubaletot = 0
uwghttot = 0
uvaltot = 0
avgrate = 0
Set Rs = New Recordset
DB.CommandTimeout = 2000
Cnn.CommandTimeout = 2000
Rs.Open "select distinct isstype from rm_issb where DOCDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' order by isstype", Cnn, adOpenStatic, adLockOptimistic

If Rs.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Close #a
    Screen.MousePointer = 0
    Exit Sub
End If

Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
co = 7
Rs.MoveFirst
Do While Not Rs.EOF
    If cnt > 1 Then
        If Rs.RecordCount > 1 Then
            If RECCOUNT > 1 Then
                Print #a, Space(76) + String(67, "-")
                Print #a, Space(72) + "    ** Mix No. Total **  " + Padl(INF(tot1, 0), 14, " ") + Space(1) + Padl(INF(tot2, 3), 13, " ") + Space(1) + Padl(INF(tot3, 2), 16, " ")
                Print #a, Space(76) + String(67, "-")
                co = co + 3
                tot1 = 0
                tot2 = 0
                tot3 = 0
                RECCOUNT = 0
            ElseIf RECCOUNT = 1 Then
                Print #a,
                co = co + 1
                RECCOUNT = 0
                tot1 = 0
                tot2 = 0
                tot3 = 0
            End If
            If bolissue = True Then
                Print #a, Space(76) + String(67, "-")
                Print #a, Space(75) + " ISSUE TYPEWISE TOTAL " + Padl(INF(ubaletot, 0), 14, " ") + Space(1) + Padl(INF(uwghttot, 3), 13, " ") + Space(1) + Padl(INF(uvaltot, 2), 16, " ")
                co = co + 2
                avgrate = uvaltot / uwghttot
                Print #a, Space(109) + "Average Rate / Kg : " + Padl(INF(avgrate, 2), 13, " ")
                Print #a, Space(76) + String(67, "-")
                co = co + 2
            End If
            ubaletot = 0
            uwghttot = 0
            uvaltot = 0
        End If
    End If
    If co >= 63 Then
        pg1 = pg1 + 1
        pgbaletot = 0
        pgwghttot = 0
        pgvaltot = 0
        Print #a, Space(5) + Space(6) + String(132, "-")
        Print #a, Chr(12)
        pg = pg + 1
        co = 0
        TEMP = ""
        Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
        co = 7
    End If
            
    
        
'     rs1.Open "select a.docno,A.DOCDT,a.varcode,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin," & _
        "sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratecandy),0)as ratecandy,slname,docno from (select C.docno,C.DOCDT,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end)," & _
        "round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0)))*ROUND(a.ratekg,4),2) 'Amount'," & _
        "a.ratekg as ratekg,round((ratecy),0)  ratecandy,f.slname from rm_lot a,rm_issb b,rm_issh c,rm_bale e,fa_slmas f Where a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.divcode=c.divcode and " & _
        "a.divcode=e.divcode and a.lotno=b.lotno and a.lotdt=b.lotdt and a.catcd=b.catcd and b.docno=c.docno and b.docdt=c.docdt and b.isstype=c.isstype and a.lotno=e.lotno and a.lotdt=e.lotdt and a.catcd=e.catcd and a.lottype=b.lottype and " & _
        "a.lottype=e.lottype and f.slcode=a.supcd and b.baleno=e.baleno and c.DOCDT Between '" & Format(From_Date, "yyyy-mm-dd") & "' and  '" & Format(To_Date, "yyyy-mm-dd") & "' AND a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'  group by " & _
        "c.docno,b.isstype,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,a.plotno,f.slname) a  group by docno,varcode,a.lotno,A.DOCDT,unit,a.plotno,Slname order by a.docno,a.lotno", cnn, adOpenStatic
        
    strSQL = ""
    strSQL = strSQL & " select distinct X.varcode,cntcd,docno,X.Catcd,X.lotno,X.lotdt,slname,SUM(Bales) AS BALE,UNIT,SUM(Kgs) AS netkg,"
    strSQL = strSQL & " isnull(ratekg,0) as ratekg,SUM(Value) AS Amount,AVG(ratecandy) AS RATECANDY,bblflg FROM("
    strSQL = strSQL & " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,b.supcd,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,a.docno,count(baleno) as Bales,"
    strSQL = strSQL & " bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h"
    strSQL = strSQL & " where B.LOTYEAR='" & Year(yfdate) & "' AND  a.docno=h.docno"
    strSQL = strSQL & " and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd"
    strSQL = strSQL & " and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT Between '" & Format(From_Date, "yyyy-mm-dd") & "' and  '" & Format(To_Date, "yyyy-mm-dd") & "' and a.isstype='" & Rs("isstype") & "'"
    strSQL = strSQL & " group by cntcd,b.Catcd,a.lotno,a.lotdt,b.supcd,B.varcode,bblflg,ratekg,a.docno"
    strSQL = strSQL & " Union All select distinct cntcd,b.Catcd,a.lotno,a.lotdt,b.supcd,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,a.docno,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,"
    strSQL = strSQL & " ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h"
    strSQL = strSQL & " where B.LOTYEAR='" & Year(yfdate) & "' AND a.docno=h.docno and a.docdt=h.docdt"
    strSQL = strSQL & " and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt"
    strSQL = strSQL & " and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT Between '" & Format(From_Date, "yyyy-mm-dd") & "' and  '" & Format(To_Date, "yyyy-mm-dd") & "' and a.isstype='" & Rs("isstype") & "'"
    strSQL = strSQL & " group by cntcd,b.Catcd,a.lotno,a.lotdt,b.supcd,B.varcode,bblflg,ratekg,a.docno)X, fa_slmas f where x.supcd=f.slcode "
    strSQL = strSQL & " GROUP BY X.varcode,cntcd,X.Catcd,X.lotno,X.lotdt,slname,docno,bblflg,ratekg,UNIT ORDER BY x.docno,X.VARCODE,X.CNTCD,X.LOTNO"
    
    
    Set rs1 = New Recordset
    rs1.Open strSQL, DB, adOpenStatic
        
    If rs1.EOF Then
'        MsgBox "No Records Found ", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
        bolissue = False
    End If
    If rs1.RecordCount > 0 Then
        rs1.MoveFirst
        TEMP = rs1("docno")
    End If
    
    Do While Not rs1.EOF
        
        If TEMP <> rs1!docNo And RECCOUNT > 1 Then
            Print #a, Space(76) + String(67, "-")
            Print #a, Space(72) + "    ** Mix No. Total **  " + Padl(INF(tot1, 0), 14, " ") + Space(1) + Padl(INF(tot2, 3), 13, " ") + Space(1) + Padl(INF(tot3, 2), 16, " ")
            Print #a, Space(76) + String(67, "-")
            co = co + 3
            tot1 = 0
            tot2 = 0
            tot3 = 0
            RECCOUNT = 0
        ElseIf TEMP <> rs1("DOCNO") And RECCOUNT = 1 Then
            Print #a,
            co = co + 1
            RECCOUNT = 0
            tot1 = 0
            tot2 = 0
            tot3 = 0
        End If
        Print #a, Space(5) + Padr(" ", 5, " ") + Space(1) + Padr(rs1!Varcode, 14, " ") + Space(1) + Padl(rs1!docNo, 7, " ") + Space(1) + Padl(rs1!lotno, 6, " ") + Space(2) + Padr(rs1!sLname, 54, " ") + Space(1) + Padl(INF(rs1!bale, 0), 14, " ") + Space(1) + Padl(INF(rs1!netkg, 3), 13, " ") + Space(1) + Padl(INF(rs1("amount"), 2), 16, " ")
        co = co + 1
        bolissue = True
        TEMP = rs1("docno")
        RECCOUNT = RECCOUNT + 1
        'mixing cost total
        tot1 = tot1 + rs1!bale
        tot2 = tot2 + rs1!netkg
        tot3 = tot3 + rs1("amount")
        
        '''''PAGE TOTAL
        pgbaletot = pgbaletot + rs1!bale
        pgwghttot = pgwghttot + rs1!netkg
        pgvaltot = pgvaltot + rs1("amount")
        '''''GRAND TOTAL
        baletot = baletot + rs1!bale
        wghttot = wghttot + rs1!netkg
        valtot = valtot + rs1("amount")
        '''''UNIT TOTAL
        ubaletot = ubaletot + rs1!bale
        uwghttot = uwghttot + rs1!netkg
        uvaltot = uvaltot + rs1("amount")
        
        If co >= 63 Then
            pg1 = pg1 + 1
            pgbaletot = 0
            pgwghttot = 0
            pgvaltot = 0
            Print #a, Space(5) + Space(6) + String(132, "-")
            Print #a, Chr(12)
            pg = pg + 1
            co = 0
            Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
            co = 7
        End If
        rs1.MoveNext
    Loop

    cnt = cnt + 1
    Rs.MoveNext
    If cnt = 2 Then
        bltot1 = ubaletot
        wttot1 = uwghttot
        vltot1 = uvaltot
    ElseIf cnt > 2 Then
        bltot2 = ubaletot
        wttot2 = uwghttot
        vltot2 = uvaltot
    End If
Loop

Print #a,
co = co + 1

If co >= 63 Then
    pg1 = pg1 + 1
    pgbaletot = 0
    pgwghttot = 0
    pgvaltot = 0
    Print #a, Space(5) + Space(6) + String(132, "-")
    Print #a, Chr(12)
    pg = pg + 1
    co = 0
    TEMP = ""
    Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
    co = 7
End If

If cnt > 1 Then
    If Rs.RecordCount > 1 Then
        Print #a, Space(76) + String(67, "-")
        Print #a, Space(75) + " ISSUE TYPEWISE TOTAL " + Padl(INF(ubaletot, 0), 14, " ") + Space(1) + Padl(INF(uwghttot, 3), 13, " ") + Space(1) + Padl(INF(uvaltot, 2), 16, " ")
        co = co + 2
        avgrate = uvaltot / uwghttot
        Print #a, Space(109) + "Average Rate / Kg : " + Padl(INF(avgrate, 2), 13, " ")
        Print #a, Space(76) + String(67, "-")
        co = co + 2
        ubaletot = 0
        uwghttot = 0
        uvaltot = 0
    End If
End If
        
Print #a, Space(76) + String(67, "-")
co = co + 1

If typeflg = "A" Then
    Set Rs = New Recordset
    Rs.Open "select distinct isstype from rm_issb where  DOCDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and isstype <> 'T' order by isstype", Cnn, adOpenStatic
    
    If Rs("isstype") = "P" Then
        Print #a, Space(75) + " Unit I Total         " + Padl(INF(bltot1, 0), 14, " ") + Space(1) + Padl(INF(wttot1, 3), 13, " ") + Space(1) + Padl(INF(vltot1, 2), 15, " ")
    Else
        Print #a, Space(75) + " Unit I Total         " + Padl(" ", 14, " ") + Space(1) + Padl(" ", 13, " ") + Space(1) + Padl(" ", 15, " ")
    End If
    co = co + 1
    
    If Rs.RecordCount > 1 Then
         Rs.MoveNext
    End If
    If Rs("isstype") = "Q" Then
        If Rs.RecordCount = 1 And Rs("isstype") = "Q" Then
            bltot2 = bltot1
            wttot2 = wttot1
            vltot2 = vltot1
            Print #a, Space(75) + " Unit II Total        " + Padl(INF(bltot2, 0), 14, " ") + Space(1) + Padl(INF(wttot2, 3), 13, " ") + Space(1) + Padl(INF(vltot2, 2), 15, " ")
         Else
            Print #a, Space(75) + " Unit II Total        " + Padl(INF(bltot2, 0), 14, " ") + Space(1) + Padl(INF(wttot2, 3), 13, " ") + Space(1) + Padl(INF(vltot2, 2), 15, " ")
         End If
    Else
        Print #a, Space(75) + " Unit II Total         " + Padl(" ", 14, " ") + Space(1) + Padl(" ", 13, " ") + Space(1) + Padl(" ", 15, " ")
    End If
    Print #a,
    co = co + 2
End If

Print #a, Space(75) + " GRAND TOTAL BALES    " + Padl(INF(baletot, 0), 14, " ") + Space(1) + Padl(INF(wghttot, 3), 13, " ") + Space(1) + Padl(INF(valtot, 2), 16, " ")

If wghttot <> 0 Then avgrate = valtot / wghttot Else avgrate = 0
If typeflg <> "A" Then
    Print #a, Space(76) + String(67, "-")
End If
Print #a, Space(109) + "Average Rate / Kg : " + Padl(INF(avgrate, 4), 13, " ")
              
Print #a, Space(5) + Space(6) + String(132, "-")
Print #a,
Print #a,
Print #a,
Print #a,
'Print #a, Chr(18) + Space(15) + "Prepared" + Space(20) + "Checked" + Space(20) + "F.M"
'rp.Visible = False
 Call footermod(CInt(a), footerstr, 85)
 'rp.Visible = False
Print #a, Chr(18) + Chr(12)
Close #a
a = FreeFile
'Open "c:\mixing.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type mixing.txt>prn"
'Close #a
'RPTV.txtfile = "c:\mixing.txt"
'RPTV.Batfile = "c:\mixing.bat"
Call KALBATPROCESS("mixing")
End Sub
Public Sub MixingCostHeader(pg1 As Integer, fromdate As String, ToDate As String)
    Print #a, Chr(18)
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    Print #a, Space(5) & Space(6) & "Mixing Cost Report" & " From" + Space(1) + Format(fromdate, "DD/MM/YY") + Space(1) + "To" + Space(1) + Format(ToDate, "DD/MM/YY") & Space(60); Format(pdate, "dd/mm/yy"); Space(12) & "Pg.: " & Padl(pg1, 3, " ")
    Print #a, Space(5) + Space(6) + String(132, "-")
    Print #a, Space(5) + Space(6) + "Variety        " + "Mix No. " + " LOTNO  " + Padr("SUPPLIER", 54, " ") + Padl("BALES", 15, " ") + Space(1) + Padl("WEIGHT", 13, " ") + Space(1) + Padl("VALUE", 16, " ")
    Print #a, Space(5) + Space(6) + String(132, "-")
    
End Sub

Public Sub MixingCostReportold(From_Date As String, To_Date As String, divname As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim TEMP As New Recordset
Dim RESULT As Recordset
'========================================================================
    'This Report Has been Designed and Developed By
               'MR.K.RAVI

'========================================================================

Dim rptv As Report.ReportView
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
Dim s As String
Dim MTOT As Double
Dim Cnn As Connection
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"

Set rs1 = New Recordset
Cnn.Open connectstring


Set rptv = New Report.ReportView
a = FreeFile
Close
'Open "C:\mixing.TXT" For Output As #a
 Open KALFOLDERDATA & "\mixing.TXT" For Output As #a
pg1 = 1
co = 0
MTOT = 0
Set Rs = New Recordset
Rs.Open "select distinct a.cntcd from rm_issh a,rm_issb b,rm_lot c,rm_var f where b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and c.varcode =f.varcode and a.isstype=b.isstype and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.isstype='P' ", DB, adOpenStatic
If Rs.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Close #a
    Exit Sub
End If
gtot1 = 0
TOTVAL = 0
GTOTVAL = 0
tot20 = 0
tot21 = 0
Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
        Rs.MoveFirst
        Do While Not Rs.EOF
        tot1 = 0
            Print #a, Space(5); Padr(Rs(0), 10, " ")
            co = co + 1
            If co >= PageLen Then
                Print #a, Space(5) + String(138, "-")
                Print #a, Chr(12)
                pg = pg + 1
                co = 0
                Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
            End If
            Set rs1 = New Recordset
            'rs1.Open "select distinct f.varname,sum(b.actisskgs),round(sum(b.actisskgs)/(select sum(isskgs) from rm_issb b,rm_issh a  where a.docdt between '" & Format(from_date, "yyyy-mm-dd") & "' and '" & Format(to_date, "yyyy-mm-dd") & "' and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.docno=b.docno and a.cntcd='" & Rs(0) & "' and a.isstype='P' ),4) *100 ,round(c.ratecy,0)as ratecandy,SUM(b.actisskgs)*round((isnull(c.ratecy,0)/355.6187),2) as value,ROUND((isnull(c.ratecy,0)/355.6187),4) as ratekg from rm_issh a,rm_issb b,rm_lot c,rm_Var f where b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(from_date, "yyyy-mm-dd") & "' and '" & Format(to_date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.cntcd='" & Rs(0) & "' and a.isstype='P' AND LOTYEAR='" & Year(yfdate) & "' group by f.varname,c.ratecy", DB, adOpenStatic
            
            rs1.Open "select distinct f.varname,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'netkgs',round(sum(isskgs)/(select sum(isskgs) from rm_issb b,rm_issh a where a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.docno=b.docno and a.cntcd='" & Rs(0) & "' and a.isstype='P' ),4) *100 ,round(c.ratecy,0)as ratecandy,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2)*round((isnull(c.ratecy,0)/355.6187),2) as value,ROUND((isnull(c.ratecy,0)/355.6187),2) as ratekg from rm_issh a,rm_issb b,rm_lot c,rm_Var f,rm_bale e  " & _
                     "where b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and c.lotdt=e.lotdt and b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.cntcd='" & Rs(0) & "' and a.isstype='P' AND LOTYEAR='" & Year(yfdate) & "' group by f.varname,c.ratecy", DB, adOpenStatic
            
            Do While Not rs1.EOF
                MTOT = MTOT + rs1("netkgs")
                rs1.MoveNext
            Loop
            
            rs1.MoveFirst
            Do While Not rs1.EOF
                Print #a, Space(5); Space(11); Padr(rs1(0), 21, " "); Space(1); Padl(INF(rs1(1), 3), 18, " "); Padl(INF(Round((rs1(1) / MTOT) * 100, 2), 4), 18, " "); Padl(INF(rs1("ratekg"), 4), 18, " "); Padl(INF(rs1("value"), 2), 18, " "); Padl(INF(rs1("ratecandy"), 0), 18, " ")
                co = co + 1
                If co >= PageLen Then
                    Print #a, Space(5) + String(138, "-")
                    Print #a, Chr(12)
                    pg = pg + 1
                    co = 0
                    Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
                End If
                tot1 = tot1 + rs1(2) * rs1(3)
                TOTVAL = TOTVAL + rs1("VALUE")
                GTOTVAL = GTOTVAL + rs1("VALUE")
                rs1.MoveNext
                'tot1 = rs1(2) * rs1(3)
             Loop
             '========================Total===========================
             tot5 = 0
             tot6 = 0
             tot7 = 0
             Set TotRs = New Recordset
             TotRs.Open "select distinct round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'netkgs',round(sum(b.isskgs)/(select sum(isskgs) from rm_issb b,rm_issh a  where a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.docno=b.docno and a.cntcd='" & Rs(0) & "' and a.isstype='P' ),4) *100 ,round(c.ratecy,0)as ratecandy,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2)*round((isnull(c.ratecy,0)/355.6187),2) as value,ROUND((isnull(c.ratecy,0)/355.6187),2) as ratekg from rm_issh a,rm_issb b,rm_lot c,rm_Var f,rm_bale e  " & _
                     "where b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and c.lotdt=e.lotdt and b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.cntcd='" & Rs(0) & "' and a.isstype='P' AND LOTYEAR='" & Year(yfdate) & "' group by c.ratecy", DB, adOpenStatic
                     
            Do While Not TotRs.EOF
                tot5 = tot5 + TotRs("netkgs")
                tot6 = tot6 + TotRs("value")
                tot7 = tot7 + TotRs(1)
                TotRs.MoveNext
            Loop
                     
             'TotRs.Open "select sum(b.isskgs),Round(sum(b.isskgs)/(select sum(isskgs) from rm_issb b,rm_issh a  where a.docdt between '" & Format(from_date, "yyyy-mm-dd") & "' and '" & Format(to_date, "yyyy-mm-dd") & "' and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.docno=b.docno and a.cntcd='" & Rs(0) & "' and a.isstype='P' ),2) *((sum(c.ratekg))*355.6187) as 'Mix cost',sum(isskgs*355.6187) as candyrate,SUM(b.isskgs)*avg(ratekg) as value from rm_issh a,rm_issb b,rm_lot c,rm_Var f where b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(from_date, "yyyy-mm-dd") & "' and '" & Format(to_date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.cntcd='" & Rs(0) & "' and a.isstype='P' AND LOTYEAR='" & Year(yfdate) & "'", DB, adOpenStatic
             Print #a,
             co = co + 1
            If co >= PageLen Then
                Print #a, Space(5) + String(138, "-")
                Print #a, Chr(12)
                pg = pg + 1
                co = 0
                Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
            End If
            Print #a, Space(17) & "** Total **"; Padl(INF(tot5, 3), 28, " ") & Padl(INF(tot7, 2), 18, " ") & Space(2) & Padl(INF(tot6, 2), 34, " "); Padl(INF(tot1 / 100, 0), 18, " ")
             gtot1 = gtot1 + tot1 / 100
             TOTVAL = 0
             co = co + 1
            If co >= PageLen Then
                Print #a, Space(5) + String(138, "-")
                Print #a, Chr(12)
                pg = pg + 1
                co = 0
                Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
            End If
           '========================================================
          Rs.MoveNext
        Loop
        
            tot5 = 0
            tot6 = 0
            Set GTotrs = New Recordset
            GTotrs.Open "select distinct round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'netkgs',round(c.ratecy,0)as ratecandy,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2)*round((isnull(c.ratecy,0)/355.6187),2) as value,ROUND((isnull(c.ratecy,0)/355.6187),2) as ratekg from rm_issh a,rm_issb b,rm_lot c,rm_Var f,rm_bale e  " & _
                     "where b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and c.lotdt=e.lotdt and b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "'  and a.isstype='P' AND LOTYEAR='" & Year(yfdate) & "' group by c.ratecy", DB, adOpenStatic
            Do While Not GTotrs.EOF
                tot5 = tot5 + GTotrs("netkgs")
                tot6 = tot6 + GTotrs("value")
                GTotrs.MoveNext
            Loop
            
            Print #a, Space(5) + String(123, "-")
            'Print #A, Space(13); "** Grand Total **"; Padl(INF(GTotrs("netkgs"), 3), 26, " ") & Space(23) & Padl(INF(GTotrs("value"), 2), 31, " "); Padl(INF(gtot1 / Rs.RecordCount, 0), 18, " ")
            Print #a, Space(13); "** Grand Total **"; Padl(INF(tot5, 3), 26, " ") & Space(23) & Padl(INF(tot6, 2), 31, " "); Padl(INF(gtot1 / Rs.RecordCount, 0), 18, " ")
            Print #a, Space(5) + String(123, "-")
            co = co + 1
            If co >= PageLen Then
                Print #a, Space(5) + String(138, "-")
                Print #a, Chr(12)
                pg = pg + 1
                co = 0
                Call MixingCostHeader(CStr(pg1), CStr(From_Date), CStr(To_Date))
            End If
            Set rs5 = New Recordset
            tot20 = 0
            tot21 = 0
            rs5.Open "select distinct catcd from rm_issh a,rm_issb b where a.isstype=b.isstype and a.docno=b.docno and a.docdt=b.docdt and a.divcode=b.divcode and a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.isstype='P'", DB, adOpenStatic
            tot20 = 0
            tot21 = 0
            Do While Not rs5.EOF
            
            Set RS6 = New Recordset
            RS6.Open "select distinct b.catcd from rm_issh a,rm_issb b,rm_lot c,rm_Var f,rm_bale e  " & _
                     "where b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and c.lotdt=e.lotdt and b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "'  and a.isstype='P' AND LOTYEAR='" & Year(yfdate) & "'", DB, adOpenStatic
                     
            'rs6.Open "select c.catcd,sum(b.isskgs) AS Isskgs,SUM(b.isskgs)*avg(ratekg) as value,sum(isskgs*355.6187) as candyrate from rm_issh a,rm_issb b,rm_lot c,rm_Var f where b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(from_date, "yyyy-mm-dd") & "' and '" & Format(to_date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "'and a.isstype='P' AND LOTYEAR='" & Year(yfdate) & "' and c.catcd= '" & rs5(0) & "' group by c.catcd", DB, adOpenStatic
            
            Do While Not RS6.EOF
                tot5 = 0
                tot6 = 0
                tot7 = 0
                
                Set rs66 = New Recordset
                rs66.Open "select distinct b.catcd,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'netkgs',round(sum(b.isskgs)/(select sum(isskgs) from rm_issb b,rm_issh a  where b.catcd='" & RS6(0) & "' and a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.docno=b.docno and a.isstype='P' ),4) *100 ,round(c.ratecy,0)as ratecandy,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2)*round((isnull(c.ratecy,0)/355.6187),2) as value,ROUND((isnull(c.ratecy,0)/355.6187),2) as ratekg from rm_issh a,rm_issb b,rm_lot c,rm_Var f,rm_bale e  " & _
                     "where b.catcd='" & RS6(0) & "' and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and c.lotdt=e.lotdt and b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and  a.isstype='P' AND LOTYEAR='" & Year(yfdate) & "' group by f.varname,c.ratecy,b.catcd", DB, adOpenStatic
                rs66.MoveFirst
                Do While Not rs66.EOF
                    toto = rs66(0)
                    tot5 = tot5 + rs66("netkgs")
                    tot6 = tot6 + rs66("value")
                    tot7 = tot7 + rs66(2)
                    rs66.MoveNext
                Loop
                     
                Print #a, Space(20) & Padr(toto, 10, " ") & Space(14) & Padl(INF(tot5, 3), 12, " ") & Padl(INF(tot7, 2), 18, " ") & Space(6) & Padl(INF(Round(tot6 / tot5, 4), 4), 12, " ") & Space(0) & Padl(INF(tot6, 2), 18, " "); Space(2); Padl(INF((gtot1 / Rs.RecordCount), 0), 16, " ")
                'Print #A, Space(20) & Padr(rs6(0), 10, " ") & Space(14) & Padl(INF(rs6(1), 3), 12, " ") & Space(24) & Padl(INF(Round(rs6(2) / rs6(1), 4), 4), 12, " ") & Space(6) & Padl(INF(rs6(2), 2), 12, " "); Space(2); Padl(INF((rs6(2) / rs6(1)) * 355.6187, 0), 16, " ")
'                tot20 = tot20 + rs66("netkgs")
'                tot21 = tot21 + rs66("value")
                tot20 = tot20 + tot5
                tot21 = tot21 + tot6
                tot5 = 0
                tot6 = 0
                tot7 = 0
                RS6.MoveNext
         Loop
     rs5.MoveNext
Loop
Print #a, Space(44) & String(12, "=") & Space(42) & String(12, "=")
Print #a, Space(16) & "**Grand Total**" & Space(10) & Padl(INF(tot20, 3), 15, " ") & Space(39) & Padl(INF(tot21, 2), 15, " ")
Print #a, Space(44) & String(12, "=") & Space(42) & String(12, "=")
Print #a,
Print #a,
Print #a,
Print #a,
'Print #A, Space(5) & "C.W.CLERK             G.K             A.S.M             F.M             AO(C)              AO               GENERAL MANAGER"
'Print #A, Space(5) & "                                      S.Q,C"
Print #a, Space(5) & "               COTTON CLERK                       OFFICE MANAGER                     GENERAL MANAGER                        "

Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\mixing.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type mixing.txt>prn"
'Close #a
'RPTV.txtfile = "c:\mixing.txt"
'RPTV.Batfile = "c:\mixing.bat"
Call KALBATPROCESS("mixing")
End Sub
Public Sub MixingCostHeaderold(pg1 As Integer, fromdate As String, ToDate As String)
          Print #a, Chr(18)
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #a, Chr(15)
          Print #a, Space(5) & Chr(27) & "E" & "Mixing Cost " & " from" + Space(2) + Format(fromdate, "DD/MM/YYYY") + Space(2) + "To" + Space(2) + Format(ToDate, "DD/MM/YYYY"); Space(3); Format(pdate, "dd/mm/yy"); Space(2) & "Pg.: " & Padl(pg1, 3, " ");  ' Chr(15)
          Print #a, Space(5) + String(123, "-")
          Print #a, Space(5) + "Count"; Space(6); "Variety"; Space(12); "             Quantity  "; "          Mixing"; Space(5); "         Rate"; Space(6); "       Value"; Space(7); "Mixing Cost "
          Print #a, Space(48) + "     Kgs" + Space(8); "         %"; Space(5); "          /Kg"; Space(25); "  Per Candy"
          Print #a, Space(5) + String(123, "-")
          co = co + 8
End Sub
Public Sub CottRecn3(a As String, B As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim Sname   As String
Dim VName   As String
Dim Mno     As String
Dim slno, r, r1 As Integer
Dim varno1, supplier1, cntname1 As String
Dim issrs As Recordset
Dim value, totrate1, gtotrate1, tgtotrate1 As Double
Dim totper1, gtotper1, tgtotper1 As Double
Dim strvarcode As String
Dim rate, ratekg12 As Double
Dim MIXNO As String
Dim pertotal, pertotal1, pertotal2 As Double
Dim tot4, tot5, tot6, tot7, tot8, tot9 As Double
Dim gtot2, gtot3, gtot4, gtot5, gtot6 As Double
Dim ntot1, ntot2, ntot3, ntot4, ntot5, Ntotper1, Ntotrate1 As Double
Dim gtot1 As Double
Dim mixlot, mixgrp, mixcnt As String
Dim lotmix, lotno1, lotmonth, lotcat, lotyear As String
Dim rs55 As New Recordset
Dim RS78 As New Recordset

Set Cnn = New Connection
Cnn.Open connectstring
Set rs1 = New Recordset
ISSTYPE = "A"
    
If Trim(ISSTYPE) = "A" Then
    rs1.Open "select  DOCNO as ordno,DOCDT,isnull(mixgrp,'') as mixgrp, isnull(cntcd,'') as cntcd, isnull(issto,'') as issto,(select mixgrpname from rm_mixgrp where a.mixgrp=mixgrpcd)as mixname " & _
        " from rm_issh a, rm_issuetype b where a.isstype=b.issue_code and docdt >= '" & Format(a, "dd-mmm-yy") & "' AND  docdt <= '" & Format(B, "dd-mmm-yy") & "' and b.isstype='P' ORDER BY DOCNO", DB, adOpenStatic
Else
    rs1.Open "select distinct DOCno,DOCDT,isnull(mixgrp,'') as mixgrp, isnull(cntcd,'') as cntcd, isnull(issto,'') as issto,(select mixgrpname from rm_mixgrp where a.mixgrp=mixgrpcd)as mixname " & _
        " from rm_issh a , rm_issuetype b where a.isstype=b.issue_code and docdt >= '" & Format(a, "dd-mmm-yy") & "' and  docdt <= '" & Format(B, "dd-mmm-yy") & "' AND a.isstype = '" & ISSTYPE & "'", DB, adOpenStatic
End If

If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
    
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0

Set rptv = New Report.ReportView
z = FreeFile

Close #z
'Open "C:\CotRecn78.TXT" For Output As #z
Open KALFOLDERDATA & "\CotRecn78.TXT" For Output As #z
pg1 = 1
co = 0
r1 = 0: r2 = 0
I = 0: U = 0
Call CottRecnHeader3(pg1, co, a)
    
pertotal = 0
    
Do While Not rs1.EOF
    a = rs1("DOCDT")
    mixlot = rs1("ordno")
    mixgrp = rs1("mixname")
    'TO Find the Count Name
    If rs1!Issto = "D" Then
        Set issrs = New Recordset
        issrs.Open "Select cntname from rm_count where cntcd= '" & rs1!cntcd & "' ", DB, adOpenStatic
        If issrs.RecordCount > 0 Then
          cntname1 = issrs!cntname
        Else
           cntname1 = ""
        End If
    Else
       Set issrs = New Recordset
       issrs.Open "Select description from ig_product where product_code= '" & rs1!cntcd & "' ", DB, adOpenStatic
       If issrs.RecordCount > 0 Then
          cntname1 = issrs!Description
        Else
           cntname1 = ""
        End If
    End If
                
        
    'To find percentage total
    Set RS2 = New Recordset
    RS2.Open "SELECT SUM(GRWT) AS GRWT,SUM(TAREWT)AS TAREWT,SUM(NETWT) AS NETWT,SUM(QTY),lotno,lotdt,catcd  FROM (select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c " & _
        " Where A.ISSUED=B.ISSUED AND a.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and " & _
        "b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
        "and b.baleno=a.baleno and c.DOCNO = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd" & _
        " union select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(B.ACTISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c " & _
        " Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and " & _
        "b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
        "and b.baleno=a.baleno and c.DOCNO = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd)Z Group by lotno,lotdt,catcd", DB, adOpenStatic

    pertotal = 0
                 
    Do While Not RS2.EOF
        pertotal = Round(pertotal, 3) + Round(RS2!netwt, 3)
        RS2.MoveNext
    Loop
    
    ' End percentagr total
    If Mno = mixlot Then
        Print #a, Space(19) + Space(17)
    Else
    
        If I > 1 Then
            'totrate1 = Abs(totrate1 / r)
            totrate1 = tot5 / tot4
            Print #z, Space(5) + Space(22) + String(120, "-")
            Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
            Print #z, Space(5) + Space(22) + String(120, "-")
            co = co + 3
        End If
        
        If U > 1 Then
            If Ntotper1 >= 100 Then
                Ntotper1 = 100
            ElseIf Ntotper1 <= 100 Then
                Ntotper1 = 100
            End If
            'Ntotrate1 = Abs(Ntotrate1 / r2)
            Ntotrate1 = ntot5 / ntot4
            Print #z, Space(5) + Space(22) + String(120, "-")
            Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Total", 18, " ") & Space(12) & Padl(ntot1, 10, " ") & Space(1) & Padl(INF(ntot2, 3), 15, " ") & Space(1) & Padl(INF(ntot3, 3), 9, " ") & Space(0) & Padl(INF(ntot4, 3), 14, " ") & Space(1) & Padl(INF(Ntotrate1, 2), 11, " ") & Space(2) & Padl(Format(Round(Ntotper1, 0), "0.00"), 10, " ") & Padl(INF(ntot5, 2), 16, " ") + Chr(27) + "F"
            Print #z, Space(5) + Space(22) + String(120, "-")
            co = co + 3
            r2 = 0
        End If
        U = 0
        I = 0
        ntot1 = 0: ntot2 = 0: ntot3 = 0: ntot4 = 0: ntot5 = 0: Ntotper1 = 0: Ntotrate1 = 0
        tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
        
        
        If co >= 60 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader3(pg1, co, a)
        End If

        MIXNO = rs1("ordno")
        Print #z, Space(5) & Padr(mixlot, 14, " ") & Space(8) & Padr(mixgrp, 17, " ")
        Mno = mixlot
    End If
    co = co + 1
    
    Set rs5 = New Recordset
    rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
        " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND b.DOCNO = '" & mixlot & "' and b.docdt = '" & Format(a, "dd-mmm-yy") & "' and C.isstype like 'P' " & _
        " and a.docno=b.docno ", DB, adOpenStatic
    r1 = rs5.RecordCount 'For Rate Average
        
    Do While Not rs5.EOF
        If VName = rs5("Varname") Then
            Print #z, Space(30)
        Else
            If co >= 64 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader3(pg1, co, a)
            End If
            
            If I > 1 Then
                'totrate1 = Abs(totrate1 / r)
                totrate1 = tot5 / tot4
                Print #z, Space(5) + Space(22) + String(120, "-")
                Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
                Print #z, Space(5) + Space(22) + String(120, "-")
                co = co + 3
            End If
            I = 0
            tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
            
            Print #z,
            Print #z, Space(5) & Padr(rs5!VarName, 25, " ")
            VName = rs5("Varname")
        End If
        co = co + 2
        varno1 = rs5!Varcode
        Set RS2 = New Recordset
''       rs2.Open "select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(A.netwt) as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c " & _
            " Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and " & _
            "b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
            "and b.baleno=a.baleno  and b.varcode = '" & rs5!varcode & "' and c.DOCNO = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd", DB, adOpenStatic
            
            RS2.Open "SELECT SUM(GRWT) AS GRWT,SUM(TAREWT)AS TAREWT,SUM(NETWT) AS NETWT,SUM(QTY) as qty,lotno,lotdt,catcd  FROM (select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c " & _
        " Where a.issued='Y' AND A.ISSUED=B.ISSUED AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and " & _
        "b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
        "and b.baleno=a.baleno and b.varcode = '" & rs5!Varcode & "' and c.DOCNO = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd" & _
        " union select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(B.ACTISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c " & _
        " Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and " & _
        "b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
        "and b.baleno=a.baleno and b.varcode = '" & rs5!Varcode & "' and c.DOCNO = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd)Z Group by lotno,lotdt,catcd", DB, adOpenStatic
            
                                                            
        r = 0
        Do While Not RS2.EOF
            r = r + 1
            Set RS78 = New Recordset
            RS78.Open "SELECT isnull(ratekg,0) ratekg FROM rm_lot where lotno = '" & RS2!lotno & "' and lotdt ='" & Format(RS2!LOTDT, "dd-mmm-yy") & "' and varcode = '" & rs5!Varcode & "' ", DB, adOpenStatic
                                
            ratekg12 = 0
            ratekg12 = Round(val(RS78!ratekg), 2)
            value = val(ratekg12) * val(RS2!netwt)
            'Rate = Round(val(ratekg12), 2)
            pertotal1 = 0
            pertotal1 = (val(RS2("netwt")) / pertotal) * 100
            pertotal1 = Round(pertotal1, 2)
                                    
            Call lot(RS2("catcd"), RS2("lotno"), RS2("lotdt"), lotmix)
            Call supplier(RS2("catcd"), RS2("lotno"), RS2("lotdt"), rs5!Varcode, supplier1)
                                
            If Sname = supplier1 Then
                Print #z, Space(50);
            Else
                Print #z, Space(5) & Padr(supplier1, 44, "") & Space(1);
                Sname = supplier1
            End If
            rate = value / RS2("netwt")
            
            Print #z, Padr(lotmix, 10, "") & Space(1) & Padl(RS2("qty"), 6, " ") & Space(1) & Padl(INF(RS2("grwt"), 3), 15, " ") & Space(1) & Padl(INF(RS2("tarewt"), 3), 9, " ") & Space(0) & Padl(INF(RS2("netwt"), 3), 14, " ") & Space(1) & Padl(INF(rate, 2), 11, " ") & Space(2) & Padl(INF(pertotal1, 2), 10, " ") & Padl(INF(value, 2), 16, " ")
            co = co + 1
            I = I + 1
            U = U + 1
            r2 = r2 + 1
            ''Sub Total
            tot1 = tot1 + val(RS2!qty)
            tot2 = tot2 + val(RS2!GRWT)
            tot3 = tot3 + val(RS2!TAREWT)
            tot4 = tot4 + val(RS2!netwt)
            tot5 = tot5 + Round(val(value), 2)
            totper1 = totper1 + val(pertotal1)
            totrate1 = totrate1 + rate
                            
            ''Net Total
            ntot1 = ntot1 + val(RS2!qty)
            ntot2 = ntot2 + val(RS2!GRWT)
            ntot3 = ntot3 + val(RS2!TAREWT)
            ntot4 = ntot4 + val(RS2!netwt)
            ntot5 = ntot5 + Round(val(value), 2)
            Ntotper1 = Ntotper1 + val(pertotal1)
            Ntotrate1 = Ntotrate1 + rate
            
            ''Grand Total
            gtot1 = gtot1 + val(RS2!qty)
            gtot2 = gtot2 + val(RS2!GRWT)
            gtot3 = gtot3 + val(RS2!TAREWT)
            gtot4 = gtot4 + val(RS2!netwt)
            gtot5 = gtot5 + Round(value, 2)
            gtotper1 = gtotper1 + val(pertotal1)
            gtotrate1 = gtotrate1 + rate
                    
            If co >= 64 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call CottRecnHeader3(pg1, co, a)
            End If
            RS2.MoveNext
        Loop
        rs5.MoveNext
    Loop
    If co >= 64 Then
        Print #z, Space(5) & String(142, "-")
        Print #z, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call CottRecnHeader3(pg1, co, a)
    End If
    rs1.MoveNext
Loop

If co >= 64 Then
    Print #z, Space(5) & String(142, "-")
    Print #z, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call CottRecnHeader3(pg1, co, a)
End If

If I > 1 Then
    'totrate1 = Abs(totrate1 / r)
    totrate1 = tot5 / tot4
    Print #z, Space(5) + Space(22) + String(120, "-")
    Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Sub Total", 18, " ") & Space(12) & Padl(tot1, 10, " ") & Space(1) & Padl(INF(tot2, 3), 15, " ") & Space(1) & Padl(INF(tot3, 3), 9, " ") & Space(0) & Padl(INF(tot4, 3), 14, " ") & Space(1) & Padl(INF(totrate1, 2), 11, " ") & Space(2) & Padl(Format(totper1, "0.00"), 10, " ") & Padl(INF(tot5, 2), 16, " ") + Chr(27) + "F"
End If

If Ntotper1 >= 100 Then
    Ntotper1 = 100
ElseIf Ntotper1 <= 100 Then
    Ntotper1 = 100
End If

If co >= 58 Then
    Print #z, Space(5) & String(142, "-")
    Print #z, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call CottRecnHeader3(pg1, co, a)
End If

If U > 1 Then
    'Ntotrate1 = Abs(Ntotrate1 / r2)
    Ntotrate1 = ntot5 / ntot4
    Print #z, Space(5) + Space(22) + String(120, "-")
    Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("Total", 18, " ") & Space(12) & Padl(ntot1, 10, " ") & Space(1) & Padl(INF(ntot2, 3), 15, " ") & Space(1) & Padl(INF(ntot3, 3), 9, " ") & Space(0) & Padl(INF(ntot4, 3), 14, " ") & Space(1) & Padl(INF(Ntotrate1, 2), 11, " ") & Space(2) & Padl(Format(Round(Ntotper1, 2), "0.00"), 10, " ") & Padl(INF(ntot5, 2), 16, " ") + Chr(27) + "F"
End If


Print #z, Space(5) & String(142, "-")
Print #z, Space(5) + Space(22) + Chr(27) + "E" + Padr("** Grand Total **", 18, " ") & Space(12) & Padl(gtot1, 10, " ") & Space(1) & Padl(INF(gtot2, 3), 15, " ") & Space(1) & Padl(INF(gtot3, 3), 9, " ") & Space(0) & Padl(INF(gtot4, 3), 14, " ") & Space(1) & Space(11) & Space(2) & Space(10) & Padl(INF(gtot5, 2), 16, " ") + Chr(27) + "F"
Print #z, Space(5) & String(142, "-")

Print #z,
Print #z,
Print #z,
Print #z,
Print #z, Space(15) + Space(5) & "_______________                ______________                __________________                __________________"
Print #z, Space(15) + Space(5) & "  Prepared by                    Checked by                    Factory Manager                   General Manager"
Print #z, Chr(12) + Chr(18)
                  
Close #z
z = FreeFile
'Open "c:\CotRec78.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type CotRecn1.TXT>prn"
'Close #z
'z = FreeFile
'RPTV.txtfile = "c:\CotRecn78.TXT"
'RPTV.Batfile = "c:\CotRec78.bat"
Call KALBATPROCESS("CotRec78")

Screen.MousePointer = 0
End Sub

Public Sub CottRecnHeader3(pg1 As Integer, co As Integer, a As String)
Print #z, Chr(18)
Print #z, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #z,
Print #z, Chr(15)
SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
Print #z, Space(5) & Chr(27) + "E" + "Raw Material Lotwise Issue Report" + Chr(27) + "F" + Space(1) + "As On " + Format(a, "dd/mm/yy") + Space(73) + CStr(SR) + Space(3) + "Pg. :" + Padl(CStr(pg1), 3, "  ")
Print #z, Space(5) & String(142, "-")
Print #z, Space(5) & "Mix No                MixGroup "
Print #z, Space(5) & "Variety Name"
Print #z, Space(5) & "Supplier                                     Lot ID        Qty        Gross Wt    Tare Wt       Net Wt     Rate/Kg    Mixing %           Value"
Print #z, Space(5) & String(142, "-")
co = 10

End Sub
Public Sub lot(catcd, lotno, LOTDT, lotmix)
Dim lotno1, lotmonth, lotcat, lotyear As String
''    If catcd = "C" Then
       lotyear = Year(LOTDT)
       lotmonth = MONTH(LOTDT) 'Format(MONTH(RS1("lotdt")), "MM")
       If Len(lotmonth) = 1 Then
           lotmonth = "0" & lotmonth
       End If
       lotcat = "C"
       lotno1 = lotno
       If Len(lotno1) = 1 Then
           lotno1 = "00" & lotno1
       End If
       If Len(lotno1) = 2 Then
           lotno1 = "0" & lotno1
       End If
       lotmix = lotyear & lotmonth & lotcat & lotno1
End Sub

Public Sub supplier(catcd, lotno, LOTDT, Varcode, supplier1)
Dim lotno1, lotmonth, lotcat, lotyear As String
Dim rssupplier As Recordset

Set rssupplier = New Recordset

rssupplier.Open "select SLNAME from rm_lot A,FA_SLMAS B where " & _
                     " lotno = " & lotno & " and lotdt = '" & Format(LOTDT, "dd-mmm-yy") & "'  " & _
                     " and catcd= '" & catcd & "' and varcode= '" & Varcode & "' AND  A.SUPCD=B.SLCODE", DB, adOpenStatic

If rssupplier.RecordCount > 0 Then
 supplier1 = rssupplier!sLname
End If

End Sub
