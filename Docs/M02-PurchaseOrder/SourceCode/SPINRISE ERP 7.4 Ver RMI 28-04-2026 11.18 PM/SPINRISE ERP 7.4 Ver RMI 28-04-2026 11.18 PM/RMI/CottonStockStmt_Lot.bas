Attribute VB_Name = "CottonStockStmt_Lot"
Dim rsP As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9 As Double
Dim rsP1 As New Recordset
Dim opf As New Recordset
Dim cat As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim RstSupplier As Recordset
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim PageLen As Integer
Dim rp As New repform1
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim iNo As Integer
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
Dim tot17 As Double
Dim tot18 As Double
Dim tot19 As Double
Dim tot20 As Double

Dim totbal As Double
Dim Cnn As Connection
Dim SupplierName As String
Dim RstSales As Recordset, RstTransfer As Recordset, RstJobWork As Recordset
Dim Sales_Bales As Double, Sales_Kgs As Double, Transfer_Bales As Double, Transfer_Kgs As Double
Dim JobWork_Bales As Double, JobWork_Kgs As Double
Dim RstRejection As Recordset
Dim Rejected_Bales As Double, Rejected_Kgs As Double
Dim Return_Bales As Double, Return_Kgs As Double
Dim RstWeightLoss As Recordset

Dim RstWeight_Kgs As Double
Dim Close_value As Double
Dim Total_Value As Double, Total_Kgs As Double, Total_Bales As Double
Dim pgTotal_Bales As Double, pgTotal_kgs As Double, pgTotal_value As Double
Dim Close_Kgs As Double

Public Sub CottonStockLotReportVARIETY(U As String, v As String, W As String, fltn As String, tltn As String, issuetype As String)
'divname = "KALPATHARU TEXTILES LIMITED"
Set Cnn = New Connection
PageLen = 63
Set rs2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring

catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
vrectype = Trim(Left(issuetype, 3))
Dim SNO As Integer
SNO = 1
strsq = ""
        strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & fltn & "' AND '" & tltn & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

        If Trim(catcd) <> "ALL" Then
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME Order by c.varname"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME Order by c.varname"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME Order by c.varname"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME Order by c.varname"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME Order by c.varname"
            End If
        End If
        Set rs1 = New Recordset
        rs1.Open strSQL, db, adOpenStatic

If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set rptv = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\CotStock.TXT" For Output As #a
Open KALFOLDERDATA & "\CotStock.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call PartyHeaderVARIETY(pg1, co, U, v, W, divname, issuetype)
co = 10
op2 = 0: op3 = 0: P4 = 0: op5 = 0: op6 = 0: op7 = 0: totbal = 0: tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0:
tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0: tot17 = 0: tot18 = 0: tot19 = 0: tot20 = 0: tot21 = 0: tot22 = 0: tot23 = 0

tot101 = 0: tot102 = 0: tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0: tot118 = 0: tot119 = 0: tot120 = 0: tot121 = 0: tot122 = 0: tot123 = 0
rs1.MoveFirst
Total_Kgs = 0: Total_Bales = 0: Total_Value = 0
pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
Close_Kgs = 0: cloqty = 0: Close_value = 0
Do While Not rs1.EOF
        If rs1!OpenVALUE <> 0 Or rs1!recvalue <> 0 Then
        open_bales = 0: open_bales = rs1!OpenBAL + rs1!OpenBor
        open_kgs = 0: open_kgs = rs1!openkgs
        Return_Bales = 0: Return_Bales = rs1!RTNBAL
        Return_Kgs = 0: Return_Kgs = rs1!rtnkgs
        RstWeight_BALES = 0: RstWeight_BALES = rs1!LOSSkgs
        RstWeight_Kgs = 0: RstWeight_Kgs = rs1!LOSSkgs
        prod_bales = 0: prod_bales = rs1!PRODBAL + rs1!PRODBOR
        prod_kgs = 0: prod_kgs = rs1!prodkgs
        Sales_Bales = 0: Sales_Bales = rs1!SALESBAL + rs1!SALESBOR
        Sales_Kgs = 0: Sales_Kgs = rs1!SALESKGS
        Transfer_Bales = 0: Transfer_Bales = rs1!TRANSBAL + rs1!transbor
        Transfer_Kgs = 0: Transfer_Kgs = rs1!transkgs
        JobWork_Bales = 0: JobWork_Bales = rs1!JWBAL + rs1!jwbor
        JobWork_Kgs = 0: JobWork_Kgs = rs1!JWKGS
        Rejected_Bales = 0: Rejected_Bales = rs1!REJBAL
        Rejected_Kgs = 0: Rejected_Kgs = rs1!rejkgs
        close_qty = 0: close_qty = rs1!Clsbal + rs1!clsBor
        Close_Kgs = 0: Close_Kgs = rs1!clskgs
        Close_value = 0: Close_value = rs1!clsvalue
    
        Print #a,
        Print #a, Space(4) + Padr(rs1("VARNAME"), 14, " ") + Space(0) + Padl(INF(open_bales, 0), 8, " ") + Space(1) + Padl(INF((open_kgs), 0), 10, " ") + Space(1) + Padl(INF(rs1("RecBal") + rs1!recbor, 0), 8, " ") + Space(1) + Padl(INF(rs1("Reckgs"), 0), 10, " ");
        Print #a, Space(1) + Padl(INF(Return_Bales, 0), 8, " ") + Space(1) + Padl(INF(Return_Kgs, 0), 10, " ") + Space(1) + Padl(INF(Round(RstWeight_BALES), 0), 8, " ") + Space(1) + Padl(INF(Round(RstWeight_Kgs), 0), 10, " ") + Space(1) + Padl(INF(val(prod_bales), 0), 8, " ");
        Print #a, Space(1) + Padl(INF(prod_kgs, 0), 10, " ") + Space(1) + Padl(INF(Sales_Bales, 0), 8, " ") + Space(1) + Padl(INF(Sales_Kgs, 0), 10, " ") + Space(1) + Padl(INF(Transfer_Bales, 0), 8, " ") + Padl(INF((Transfer_Kgs), 0), 10, " ") + Space(1) + Padl(INF(JobWork_Bales, 0), 8, " ");
        Print #a, Space(1) + Padl(INF((JobWork_Kgs), 0), 10, " ") + Padl(INF(Rejected_Bales, 0), 8, " ") + Padl(INF((Rejected_Kgs), 0), 10, " ") + Space(1) + Padl(INF(close_qty, 0), 8, " ") + Padl(INF(Round(Close_Kgs), 0), 12, " ") + Space(1) + Padl(INF(Close_value, 0), 12, " ")
        
        SNO = SNO + 1
        co = co + 1
   
        tot1 = tot1 + open_bales
        tot2 = tot2 + open_kgs
        tot3 = tot3 + rs1!RECBAL + rs1!recbor
        tot4 = tot4 + rs1!reckgs
        tot5 = tot5 + Return_Bales
        tot6 = tot6 + Return_Kgs
        tot7 = tot7 + RstWeight_BALES
        tot8 = tot8 + RstWeight_Kgs
        tot9 = tot9 + prod_bales
        tot10 = tot10 + prod_kgs
        tot11 = tot11 + Sales_Bales
        tot12 = tot12 + Sales_Kgs
        tot13 = tot13 + Transfer_Bales
        tot14 = tot14 + Transfer_Kgs
        tot15 = tot15 + JobWork_Bales
        tot16 = tot16 + JobWork_Kgs
        tot17 = tot17 + Rejected_Bales
        tot18 = tot18 + Rejected_Kgs
        tot19 = tot19 + close_qty
        tot20 = tot20 + Close_Kgs
        tot21 = tot21 + Close_value




        If co >= 60 Then  'pagelen
            Print #a, Space(4) + String(225, "-")
            Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Page Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl(INF(tot102, 0), 10, " ") + Space(1) + Padl("", 5, " ") + Padl(INF(tot109, 0), 10, " ") + Padl("", 5, " ") + Padl(INF(tot111, 2), 13, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(INF(tot125, 0), 9, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(INF(tot113, 0), 9, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(INF(tot115, 0), 9, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot117, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot119, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot121, 0), 8, " ") + Padl("", 3, " ") + Padl(INF(tot123, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(Round(pgTotal_kgs), 0), 11, " ") + Padl("", 12, " ")
            Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("", 23, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl(INF(Round(tot101), 0), 10, " ") + Padl("", 5, " ") + Padl(INF(Round(tot110), 0), 9, " ") + Padl("", 9, " ") + Space(1) + Padl(INF(tot124, 0), 9, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(INF(tot112, 0), 9, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(INF(tot114, 0), 9, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(INF(tot116, 0), 7, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot118, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(tot120, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot122, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(pgTotal_Bales, 0), 10, " ") + Padl("", 5, " ") + Padl(INF(pgTotal_value, 2), 14, " ")
            Print #a, Space(4) + String(225, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 10
            Call PartyHeader(pg1, co, U, v, W, divname, issuetype)
            tot101 = 0: tot102 = 0
            tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0
            tot118 = 0
            tot119 = 0
            tot120 = 0
            tot121 = 0
            tot122 = 0
            tot123 = 0: tot124 = 0: tot125 = 0
            pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
        End If
        End If
10:
    rs1.MoveNext
Loop
        Print #a,
        Print #a, Space(4) + String(225, "-")
        Print #a, Space(4) + Padr("Grand Total", 14, " ") + Space(0) + Padl(INF(tot1, 0), 8, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(tot3, 0), 8, " ") + Space(1) + Padl("", 10, " ");
        Print #a, Space(1) + Padl(INF(tot5, 0), 8, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(Round(tot7), 0), 8, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(val(tot9), 0), 8, " "); Space(1) + Padl("", 8, " ");
        Print #a, Space(1) + Padl(INF(tot11, 0), 10, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(tot13, 0), 10, " ") + Space(1) + Padl("", 8, " ") + Padl(INF((tot15), 0), 10, " ") + Space(1) + Padl("", 8, " ");
        Print #a, Space(1) + Padl(INF((tot17), 0), 9, " ") + Padl("", 9, " ") + Padl(INF((tot19), 0), 10, " ") + Space(1) + Padl("", 12, " ") + Padl(INF(Round(tot21), 0), 12, " ")
        Print #a, Space(4) + Padr(" ", 14, " ") + Space(0) + Padl("", 8, " ") + Space(1) + Padl(INF((tot2), 0), 10, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(tot4, 0), 10, " ");
        Print #a, Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(tot6, 0), 10, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(Round(tot8), 0), 10, " ") + Space(1) + Padl("", 6, " "); Space(1) + Padl(INF(val(tot10), 0), 12, " ");
        Print #a, Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(tot12, 0), 8, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(tot14, 0), 8, " ") + Padl("", 10, " ") + Space(1) + Padl(INF(tot16, 0), 8, " ");
        Print #a, Space(1) + Padl("", 9, " ") + Padl(INF(tot18, 0), 8, " ") + Padl("", 6, " ") + Space(1) + Padl("", 2, " ") + Padl(INF(Round(tot20), 0), 12, " ")
        Print #a, Chr(12)
        

totbal = tot5 + tot7
Call CottonStock
rptv.txtfile = "C:\CotStock.txt"
rptv.Batfile = "C:\CotStock.bat"
End Sub

Public Sub CottonStock()
Dim rptv As Report.ReportView
Print #a, Space(4) + String(225, "-")
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "C:\CotStock.bat" For Output As #a
Open KALFOLDERDATA & "\CotStock.TXT" For Output As #a
Print #a, "cd\"
Print #a, "C:"
Print #a, "cd\"
Print #a, "type CotStock.txt>prn"
Close #a
End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, U As String, v As String, W As String, divname As String, ISSTYPE As String)
    Print #a,
    Print #a, Chr(18)
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    SR = Format(CStr(pdate), "DD/MM/YY") + Space(2)
    Print #a, Space(4) + Chr(27) + "E" + "Raw Material Stock statement " + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(3) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(18 + 45) & Padr("Categroy: " & Trim(Mid(W, InStr(1, W, "-") + 1, Len(W))) & "   Type: " & Trim(Mid(ISSTYPE, InStr(1, ISSTYPE, "-") + 1, Len(ISSTYPE))), 81, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1)
    Print #a, Space(4) + String(225, "-")
    Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 15 + 1, " ") + Space(2) + CENTRE("<--------------Receipt----------------->", 41, " ") + Space(1) + Padl("", 14, " ") + Space(1) + CENTRE("<---------------------Issues--------------------->", 52, "") + Space(0) + Padl("", 12 - 1, " ") + Space(1) + Padl("", 21 + 5, " ")
    Print #a, Space(4) + Padl("Year", 4, " ") + Space(1) + Padl("S.no", 4, " ") + Space(1) + Padr("Supplier Name", 20 + 3, " ") + Space(1) + Padr("Variety", 10, " ") + Space(1) + Padl("LotNo", 5, " ") + Space(1) + Padl("Rate", 10 - 5, " ") + Space(0) + Padl("<--Opening-->", 17, " ") + Space(2) + Padl("<-------Received------->", 21 + 4, " ") + Space(1) + Padl("<---Return---->", 15, " ") + Space(1) + Padl("<-Weight Loss->", 15, " ") + Space(1) + Padl("<-Production->", 14, " ") + Space(0) + Padl("<--Sales-->", 14 - 3, " ") + Space(0) + Padl("<-Transfer->", 12, " ") + Space(1) + Padl("<-JobWork-->", 12, " ") + Space(0) + Padl("<-Rejected->", 12, " ") + Space(3) + Padl("<-----Closing Stock----->", 21 + 5, " ")
    Print #a, Space(4) + Padl(" ", 4, " ") + Space(1) + Padl(" ", 4, " ") + Space(1) + Padr(" ", 20 + 3, " ") + Space(1) + Padr(" ", 10, " ") + Space(1) + Padl(" ", 5, " ") + Space(1) + Padl(" ", 10 - 4, " ") + Space(1) + Padl("Bls", 6, " ") + Space(1) + Padl("Kgs", 8, " ") + Padl("Bls", 6, " ") + Padl("Kgs", 7, " ") + Padl("Value", 7 + 7, " ") + Space(1) + Padl("Bls", 5 + 1, " ") + Space(1) + Padl("Kgs", 6 + 2, " ") + Space(1) + Padl("Bls", 5, " ") + Space(1) + Padl("Kgs", 6 + 1, " ") + Space(1) + Padl("Bls", 6, " ") + Space(1) + Padl("Kgs", 7, " ") + Space(1) + Padl("Bls", 5, " ") + Space(1) + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 5, " ") + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 5, " ") + Space(1) + Padl("Kgs", 6, " ") + Padl("Bls", 5, " ") + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 7, " ") + Padl("Kgs", 8, " ") + Padl("Value", 14, " ")
                               'Year                         Sno                            supname                             variety                           lotno                         rate                            opbal                           opkg                 REcd Bal                 Rec Kgs               REc Value                       Ret Bal                             Ret Kgs                                 WtBAl                                WtKgs                               Iss Bal                         IssKgs                     salesBal                        SaleKgs                                Trans Bal                  TRans Kgs                     JobWrk Bal                      JobWrk Kgs               Rej Bal             REj Kgs                        CloseBal             Close Kg            Close Val
' 'latest Copy
    'Print #a, Space(3) + Padl("Year", 4, " ") + Space(1) + Padl("S.no", 4, " ") + Space(1) + Padr("Supplier Name", 20, " ") + Space(1) + Padr("Variety", 10, " ") + Space(1) + Padl("LotNo", 5, " ") + Space(1) + Padl("Rate", 10, " ") + Space(1) + Padl("Opening", 15 + 1, " ") + Space(1) + Padl("Received", 21, " ") + Space(1) + Padl("Return", 15, " ") + Space(1) + Padl("WeightLoss", 15, " ") + Space(1) + Padl("Issued", 15, " ") + Space(1) + Padl("Sales", 15 - 4, " ") + Space(1) + Padl("Transfer", 12 - 1, " ") + Space(1) + Padl("JobWork", 15 - 4, " ") + Space(1) + Padl("Rejected", 12 - 1, " ") + Space(1) + Padl("Closing Stock", 21 + 5, " ")
    'Print #a, Space(3) + Padl(" ", 4, " ") + Space(1) + Padl(" ", 4, " ") + Space(1) + Padr(" ", 20, " ") + Space(1) + Padr(" ", 10, " ") + Space(1) + Padl(" ", 5, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padl("Bls", 8, " ") + Space(1) + Padl("Kgs", 8, " ") + Padl("Bls", 7, " ") + Padl("Kgs", 7, " ") + Padl("Value", 7, " ") + Space(1) + Padl("Bls", 5 + 2, " ") + Space(1) + Padl("Kgs", 6 + 1, " ") + Space(1) + Padl("Bls", 5 + 2, " ") + Space(1) + Padl("Kgs", 6 + 1, " ") + Space(1) + Padl("Bls", 7, " ") + Space(1) + Padl("Kgs", 7, " ") + Space(1) + Padl("Bls", 5, " ") + Space(1) + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 5, " ") + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 5, " ") + Space(1) + Padl("Kgs", 6, " ") + Padl("Bls", 5, " ") + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 7, " ") + Padl("Kgs", 7, " ") + Padl("Value", 12, " ")
    Print #a, Space(4) + String(225, "-")
End Sub
Public Sub CottonStockLotReport1(U As String, v As String, W As String, fltn As Integer, tltn As Integer, issuetype As String)
'divname = "KALPATHARU TEXTILES LIMITED"
Set Cnn = New Connection
PageLen = 63
Set rs2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring

catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
vrectype = Trim(Left(issuetype, 3))
Dim SNO As Integer
SNO = 1
strsq = ""
        strSQL = " select E.CATNAME,D.SLNAME,B.lotno,B.lotdt,b.plotno,b.catcd,BBLFLG as Unit,RATEKG,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,FA_SLMAS D,RM_CAT E WHERE B.SUPCD= D.SLCODE AND B.CATCD=E.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

        If Trim(catcd) <> "ALL" Then
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by E.CATNAME,D.SLNAME,B.lotno,B.lotdt,b.plotno,b.catcd,BBLFLG,B.RATEKG,C.VARNAME Order by c.varname"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by E.CATNAME,D.SLNAME,B.lotno,B.lotdt,b.plotno,b.catcd,BBLFLG,B.RATEKG,C.VARNAME Order by c.varname"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by E.CATNAME,D.SLNAME,B.lotno,B.lotdt,b.plotno,b.catcd,BBLFLG,B.RATEKG,C.VARNAME Order by c.varname"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by E.CATNAME,D.SLNAME,B.lotno,B.lotdt,b.plotno,b.catcd,BBLFLG,B.RATEKG,C.VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by E.CATNAME,D.SLNAME,B.lotno,B.lotdt,b.plotno,b.catcd,BBLFLG,B.RATEKG,C.VARNAME Order by c.varname"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by E.CATNAME,D.SLNAME,B.lotno,B.lotdt,b.plotno,b.catcd,BBLFLG,B.RATEKG,C.VARNAME Order by c.varname"
            End If
        End If
        Set rs1 = New Recordset
        rs1.Open strSQL, db, adOpenStatic

If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set rptv = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\CotStock.TXT" For Output As #a
Open KALFOLDERDATA & "\CotStock.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, co, U, v, W, divname, issuetype)
co = 10
op2 = 0: op3 = 0: P4 = 0: op5 = 0: op6 = 0: op7 = 0: totbal = 0: tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0:
tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0: tot17 = 0: tot18 = 0: tot19 = 0: tot20 = 0: tot21 = 0: tot22 = 0: tot23 = 0

tot101 = 0: tot102 = 0: tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0: tot118 = 0: tot119 = 0: tot120 = 0: tot121 = 0: tot122 = 0: tot123 = 0
rs1.MoveFirst
Total_Kgs = 0: Total_Bales = 0: Total_Value = 0
pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
Close_Kgs = 0: cloqty = 0: Close_value = 0
Do While Not rs1.EOF
        If rs1!OpenVALUE <> 0 Or rs1!recvalue <> 0 Then
        open_bales = 0: open_bales = rs1!OpenBAL + rs1!OpenBor
        open_kgs = 0: open_kgs = rs1!openkgs
        Return_Bales = 0: Return_Bales = rs1!RTNBAL
        Return_Kgs = 0: Return_Kgs = rs1!rtnkgs
        RstWeight_BALES = 0: RstWeight_BALES = rs1!LOSSkgs
        RstWeight_Kgs = 0: RstWeight_Kgs = rs1!LOSSkgs
        prod_bales = 0: prod_bales = rs1!PRODBAL + rs1!PRODBOR
        prod_kgs = 0: prod_kgs = rs1!prodkgs
        Sales_Bales = 0: Sales_Bales = rs1!SALESBAL + rs1!SALESBOR
        Sales_Kgs = 0: Sales_Kgs = rs1!SALESKGS
        Transfer_Bales = 0: Transfer_Bales = rs1!TRANSBAL + rs1!transbor
        Transfer_Kgs = 0: Transfer_Kgs = rs1!transkgs
        JobWork_Bales = 0: JobWork_Bales = rs1!JWBAL + rs1!jwbor
        JobWork_Kgs = 0: JobWork_Kgs = rs1!JWKGS
        Rejected_Bales = 0: Rejected_Bales = rs1!REJBAL
        Rejected_Kgs = 0: Rejected_Kgs = rs1!rejkgs
        close_qty = 0: close_qty = rs1!Clsbal + rs1!clsBor
        Close_Kgs = 0: Close_Kgs = rs1!clskgs
        Close_value = 0: Close_value = rs1!clsvalue
    
        
                Print #a, Space(4) + Padl(Right(Year(rs1("lotdt")), 2), 4, " ") + Space(1) + Padl(SNO, 4, " ") + Space(1) + Padr(rs1!sLname, 20 + 3, " ") + Space(1) + Padr(rs1("varname"), 10, " ") + Space(1) + Padl(rs1("Lotno"), 5, " ") + Space(1) + Padl(INF(rs1("RateKg"), 2), 10 - 4, " ") + Space(1) + Padl(INF(open_bales, 0), 6, " ") + Space(1) + Padl(INF(Round(open_kgs), 0), 8, " ") + Padl(INF(rs1("RecBales") + rs1("RecBoras"), 0), 6, " ") + Padl(INF(Round(rs1("Reckgs")), 0), 7, " ") + Padl(INF(rs1("RECVALUE"), 2), 7 + 7, " ");
                Print #a, Space(1) + Padl(INF(Return_Bales, 0), 6, " ") + Space(1) + Padl(INF(Return_Kgs, 0), 7, " ") + Space(1) + Padl(INF(0, 0), 6, " ") + Space(1) + Padl(INF(Round(RstWeight_Kgs), 0), 7, " ") + Space(1) + Padl(INF(val(prod_bales), 0), 6, " ") + Space(1) + Padl(INF(Round(prod_kgs), 0), 7, " ") + Space(1) + Padl(INF(Sales_Bales, 0), 5, " ") + Space(1) + Padl(INF(Round(Sales_Kgs), 0), 7 - 1, " ") + Space(1) + Padl(INF(Transfer_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Transfer_Kgs), 0), 6, " ") + Space(1) + Padl(INF(JobWork_Bales, 0), 7 - 2, " ") + Space(1) + Padl(INF(Round(JobWork_Kgs), 0), 7 - 1, " ") + Padl(INF(Rejected_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Rejected_Kgs), 0), 6, " ") + Space(1) + Padl(INF(close_qty, 0), 7, " ") + Padl(INF(Round(Close_Kgs), 0), 8, " ") + Space(1) + Padl(INF(Close_value, 2), 13, " ")
                SNO = SNO + 1
                co = co + 1
            tot1 = tot1 + IIf(IsNull(rs1("opENkgs")) Or rs1("opENkgs") = 0, 0, Round(rs1("opENkgs")))
            tot2 = tot2 + IIf(IsNull(rs1("OpENbal")) Or rs1("OpENbal") = 0, 0, rs1("OpENbal")) + IIf(IsNull(rs1("OpENbor")) Or rs1("OpENbor") = 0, 0, rs1("OpENbor"))
        tot1 = tot1 - Rejected_Kgs1
        tot2 = tot2 - rejected_bales1
        tot12 = tot12 + 0
        tot13 = tot13 + IIf(IsNull(RstWeight_Kgs) Or RstWeight_Kgs = 0, 0, Round(RstWeight_Kgs))
        tot14 = tot14 + prod_bales ''IIf(IsNull(RS1("issBales")) Or RS1("issBales") = 0, 0, RS1("issBales"))
        tot15 = tot15 + Round(prod_kgs) ''IIf(IsNull(RS1("issKgs")) Or RS1("issKgs") = 0, 0, Round(RS1("issKgs")))
        tot16 = tot16 + IIf(IsNull(Sales_Bales) Or Sales_Bales = 0, 0, Sales_Bales)
        tot17 = tot17 + IIf(IsNull(Sales_Kgs) Or Sales_Kgs = 0, 0, Round(Sales_Kgs))
        tot18 = tot18 + IIf(IsNull(Transfer_Bales) Or Transfer_Bales = 0, 0, Transfer_Bales)
        tot19 = tot19 + IIf(IsNull(Transfer_Kgs) Or Transfer_Kgs = 0, 0, Round(val(Transfer_Kgs)))
        tot20 = tot20 + IIf(IsNull(JobWork_Bales) Or JobWork_Bales = 0, 0, JobWork_Bales)
        tot21 = tot21 + IIf(IsNull(JobWork_Kgs) Or JobWork_Kgs = 0, 0, Round(val(JobWork_Kgs)))
        tot22 = tot22 + IIf(IsNull(Rejected_Bales) Or Rejected_Bales = 0, 0, Rejected_Bales)
        tot23 = tot23 + IIf(IsNull(Rejected_Kgs) Or Rejected_Kgs = 0, 0, Round(val(Rejected_Kgs)))
        tot24 = tot24 + IIf(IsNull(Return_Bales) Or Return_Bales = 0, 0, Return_Bales)
        tot25 = tot25 + IIf(IsNull(Return_Kgs) Or Return_Kgs = 0, 0, Round(val(Return_Kgs)))
                
                
        tot101 = tot101 + IIf(IsNull(rs1("opENkgs")) Or rs1("opENkgs") = 0, 0, Round(rs1("opENkgs")))
        tot102 = tot102 + IIf(IsNull(rs1("OpENbal")) Or rs1("OpENbal") = 0, 0, rs1("OpENbal")) + IIf(IsNull(rs1("OpENbor")) Or rs1("OpENbor") = 0, 0, rs1("OpENbor"))
        tot101 = tot101 - Rejected_Kgs1
        tot102 = tot102 - rejected_bales1
        
        tot109 = tot109 + IIf(IsNull(rs1("Recbales")) Or rs1("Recbales") = 0, 0, rs1("Recbales")) + IIf(IsNull(rs1("Recboras")) Or rs1("Recboras") = 0, 0, rs1("Recboras"))
        tot110 = tot110 + IIf(IsNull(rs1("Reckgs")) Or rs1("Reckgs") = 0, 0, Round(rs1("Reckgs")))
        tot111 = tot111 + IIf(IsNull(rs1("Recvalue")) Or rs1("Recvalue") = 0, 0, rs1("Recvalue"))

        tot112 = tot112 + 0
        tot113 = tot113 + IIf(IsNull(RstWeight_Kgs) Or RstWeight_Kgs = 0, 0, Round(val(RstWeight_Kgs)))
        tot114 = tot114 + prod_bales  ''IIf(IsNull(RS1("issBales")) Or RS1("issBales") = 0, 0, RS1("issBales"))
        tot115 = tot115 + Round(prod_kgs, 0) ''IIf(IsNull(RS1("issKgs")) Or RS1("issKgs") = 0, 0, Round(RS1("issKgs")))
        tot116 = tot116 + IIf(IsNull(Sales_Bales) Or Sales_Bales = 0, 0, Sales_Bales)
        tot117 = tot117 + IIf(IsNull(Sales_Kgs) Or Sales_Kgs = 0, 0, Round(val(Sales_Kgs)))
        tot118 = tot118 + IIf(IsNull(Transfer_Bales) Or Transfer_Bales = 0, 0, Transfer_Bales)
        tot119 = tot119 + IIf(IsNull(Transfer_Kgs) Or Transfer_Kgs = 0, 0, Round(val(Transfer_Kgs)))
        tot120 = tot120 + IIf(IsNull(JobWork_Bales) Or JobWork_Bales = 0, 0, JobWork_Bales)
        tot121 = tot121 + IIf(IsNull(JobWork_Kgs) Or JobWork_Kgs = 0, 0, Round(val(JobWork_Kgs)))
        tot122 = tot122 + IIf(IsNull(Rejected_Bales) Or Rejected_Bales = 0, 0, Rejected_Bales)
        tot123 = tot123 + IIf(IsNull(Rejected_Kgs) Or Rejected_Kgs = 0, 0, Round(val(Rejected_Kgs)))
        tot124 = tot124 + IIf(IsNull(Return_Bales) Or Return_Bales = 0, 0, Return_Bales)
        tot125 = tot125 + IIf(IsNull(Return_Kgs) Or Return_Kgs = 0, 0, Round(val(Return_Kgs)))
        
        pgTotal_Bales = pgTotal_Bales + close_qty
        pgTotal_kgs = pgTotal_kgs + Close_Kgs
        pgTotal_value = pgTotal_value + Close_value
        
        Total_Bales = Total_Bales + close_qty
        Total_Kgs = Total_Kgs + Close_Kgs
        Total_Value = Total_Value + Close_value

        
        tot4 = tot4 + IIf(IsNull(cloqty) Or cloqty = "", 0, Round(val(cloqty)))
        tot6 = tot6 + clokgs
        tot7 = tot7 + value
        tot8 = tot8 + value
        tot3 = tot3 + issKgs
        If co >= 60 Then  'pagelen
            Print #a, Space(4) + String(225, "-")
            Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Page Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl(INF(tot102, 0), 10, " ") + Space(0) + Padl("", 3, " ") + Padl(INF(tot109, 0), 12, " ") + Padl("", 3, " ") + Padl(INF(tot111, 2), 18, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot125, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot113, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot115, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot117, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot119, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot121, 0), 8, " ") + Padl("", 3, " ") + Padl(INF(tot123, 0), 8, " ") + Space(1) + Padl("", 1, " ") + Padl(INF(Round(pgTotal_kgs), 0), 14, " ") + Padl("", 12, " ")
            Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("", 23, " ") + Space(0) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(0) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(Round(tot101), 0), 13, " ") + Padl("", 2, " ") + Padl(INF(Round(tot110), 0), 11, " ") + Padl("", 6, " ") + Space(1) + Padl(INF(tot124, 0), 12, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot112, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot114, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot116, 0), 9, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot118, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(tot120, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot122, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(pgTotal_Bales, 0), 10, " ") + Padl("", 3, " ") + Padl(INF(pgTotal_value, 2), 19, " ")
            Print #a, Space(4) + String(225, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 10
            Call PartyHeader(pg1, co, U, v, W, divname, issuetype)
            tot101 = 0: tot102 = 0
            tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0
            tot118 = 0
            tot119 = 0
            tot120 = 0
            tot121 = 0
            tot122 = 0
            tot123 = 0: tot124 = 0: tot125 = 0
            pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
        End If
        End If
10:
    rs1.MoveNext
Loop
totbal = tot5 + tot7
Print #a,
Print #a, Space(4) + String(225, "-")
Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Page Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl(INF(tot102, 0), 10, " ") + Space(0) + Padl("", 3, " ") + Padl(INF(tot109, 0), 12, " ") + Padl("", 3, " ") + Padl(INF(tot111, 2), 18, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot125, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot113, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot115, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot117, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot119, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot121, 0), 8, " ") + Padl("", 3, " ") + Padl(INF(tot123, 0), 8, " ") + Space(1) + Padl("", 1, " ") + Padl(INF(Round(pgTotal_kgs), 0), 14, " ") + Padl("", 12, " ")
Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("", 23, " ") + Space(0) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(0) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(Round(tot101), 0), 13, " ") + Padl("", 2, " ") + Padl(INF(Round(tot110), 0), 11, " ") + Padl("", 6, " ") + Space(1) + Padl(INF(tot124, 0), 12, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot112, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot114, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot116, 0), 9, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot118, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(tot120, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot122, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(pgTotal_Bales, 0), 10, " ") + Padl("", 3, " ") + Padl(INF(pgTotal_value, 2), 19, " ")
Print #a,
Print #a, Space(4) + String(225, "-")
Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Grand Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl(INF(tot2, 0), 10, " ") + Space(0) + Padl("", 3, " ") + Padl(INF(tot9, 0), 12, " ") + Padl("", 3, " ") + Padl(INF(tot11, 2), 18, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot25, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot13, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot15, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot17, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot19, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot21, 0), 8, " ") + Padl("", 3, " ") + Padl(INF(tot23, 0), 8, " ") + Space(1) + Padl(INF(Total_Bales, 0), 7, " ") + Padl("", 3, " ") + Padl(INF(Total_Value, 2), 19, " ")
Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr(" ", 23, " ") + Space(0) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(0) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(Round(tot1), 0), 13, " ") + Padl("", 2, " ") + Padl(INF(Round(tot10), 0), 11, " ") + Padl(INF("", 2), 6, " ") + Space(1) + Padl(INF(tot24, 0), 12, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot12, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot14, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot16, 0), 9, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot18, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(tot20, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot22, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl("", 1, " ") + Padl(INF(Round(Total_Kgs), 0), 17, " ") + Padl("", 12, " ")
'''''''
Call CottonStock
rptv.txtfile = "C:\CotStock.txt"
rptv.Batfile = "C:\CotStock.bat"
End Sub

Public Sub CottonStockLotReport2(U As String, v As String, W As String, fltn As Integer, tltn As Integer, issuetype As String)
'divname = "KALPATHARU TEXTILES LIMITED"
Set Cnn = New Connection
PageLen = 63
Set rs2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring

catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
vrectype = Trim(Left(issuetype, 3))
Dim SNO As Integer
SNO = 1
If catcd = "ALL" Then
    If vrectype <> "ALL" And vrectype <> "A" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        Set rs1 = New Recordset
            Set rs1 = New Recordset
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))-"
            SqlStr = SqlStr + Chr(13) & "sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,  case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,isnull(RATEKG,0) as ratekg,isnull(RATECY,0) as ratecy,isnull(RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))),0) AS VALUE,sum(isnull(a.opbales,0)+isnull(a.opboras,0)) OpBales,"
            SqlStr = SqlStr + Chr(13) & "sum(isnull(a.Recbales,0)+isnull(a.Recboras,0)) RecBales,sum(isnull(a.Issbales,0)+isnull(a.Issboras,0)) IssBales,RATEKG *(sum(isnull(a.reckgs,0)))AS RECVALUE  from  (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,"
            SqlStr = SqlStr + Chr(13) & "sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( select lotno,lotdt,sum(opbales) as opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as issbales,0 as issboras,0 as isskgs from("
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as"
            SqlStr = SqlStr + Chr(13) & "issboras,0 as isskgs from rm_lot b where(B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and b.lotdt<'" & Format(U, "yyyy-MM-dd") & "' and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and b.divcode='" & Divcode & "'  and opflg='Y' and b.lotno between " & fltn & " and " & tltn & "   group by b.LOTNO,B.LOTDT,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "union select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as"
            SqlStr = SqlStr + Chr(13) & "issboras,0 as isskgs from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and"
            SqlStr = SqlStr + Chr(13) & "b.divcode='" & Divcode & "'  and lotdt<'" & Format(U, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg )z group by lotno,lotdt"
            SqlStr = SqlStr + Chr(13) & "Union all select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS"
            SqlStr = SqlStr + Chr(13) & "ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A,rm_bale b, rm_lot c WHERE lotyear='" & Year(yfdate) & "' and DOCDT <'" & Format(U, "yyyy-mm-dd") & "'  AND A.ISSUED='Y' AND"
            SqlStr = SqlStr + Chr(13) & "a.DOCDT Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.baleno=b.baleno "
            SqlStr = SqlStr + Chr(13) & "and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )X GROUP BY LOTNO , LOTDT, BBLFLG"
            SqlStr = SqlStr + Chr(13) & "Union all  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,sum(a.actisskgs) AS KGS  FROM RM_ISSB A,rm_bale b, rm_lot c WHERE lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(U, "yyyy-mm-dd") & "'  AND LOTYEAR='" & Year(yfdate) & "' AND A.ISSUED='Y' AND a.DOCDT Between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
            SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.baleno=b.baleno and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )Y GROUP BY LOTNO,LOTDT,BBLFLG ) a  group by LOTNO , LOTDT"
            SqlStr = SqlStr + Chr(13) & "Union All  select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,"
            SqlStr = SqlStr + Chr(13) & "0 as isskgs from rm_lot b  where opflg='N' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ("
            SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "' AND  lotyear='" & Year(yfdate) & "' and a.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between"
            SqlStr = SqlStr + Chr(13) & "'" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )X"
            SqlStr = SqlStr + Chr(13) & "GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "'"
            SqlStr = SqlStr + Chr(13) & "and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG )Y GROUP BY LOTNO , LOTDT, BBLFLG"
            If vrectype <> "A" Then
                SqlStr = SqlStr + Chr(13) & "))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE B.VARCODE=V.VARCODE and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and  B.CATCD=C.CATCD AND A.LOTNO*=B.LOTNO AND A.LOTDT*=B.LOTDT  and " & tmptypestr & "='" & vrectype & "'  group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG, RATECY , ratekg Having (sum(IsNull(a.oPKGS, 0)) + sum(IsNull(a.reckgs, 0))) - sum(IsNull(a.issKgs, 0)) >= 0  order by a.lotno"
            Else
                SqlStr = SqlStr + Chr(13) & "))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE B.VARCODE=V.VARCODE and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and  B.CATCD=C.CATCD AND A.LOTNO*=B.LOTNO AND A.LOTDT*=B.LOTDT  and (b.transfertype='' or b.transfertype='JR')  group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG, RATECY , ratekg Having (sum(IsNull(a.oPKGS, 0)) + sum(IsNull(a.reckgs, 0))) - sum(IsNull(a.issKgs, 0)) >= 0  order by a.lotno"
            End If
            rs1.Open SqlStr, db, adOpenStatic
        Else
            Set rs1 = New Recordset
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) aS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+"
            SqlStr = SqlStr + Chr(13) & "sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))-"
            SqlStr = SqlStr + Chr(13) & "sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,  case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else"
            SqlStr = SqlStr + Chr(13) & "sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,isnull(RATEKG,0) as ratekg,isnull(RATECY,0) as ratecy,isnull(RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))),0) AS VALUE,sum(isnull(a.opbales,0)+isnull(a.opboras,0)) OpBales,"
            SqlStr = SqlStr + Chr(13) & "sum(isnull(a.Recbales,0)+isnull(a.Recboras,0)) RecBales,sum(isnull(a.Issbales,0)+isnull(a.Issboras,0)) IssBales,RATEKG *(sum(isnull(a.reckgs,0)))AS RECVALUE  from  (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,"
            SqlStr = SqlStr + Chr(13) & "sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales, 0 as issboras,0 as isskgs from( select lotno,lotdt,sum(opbales) as opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as issbales,0 as issboras,0 as isskgs from("
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as"
            SqlStr = SqlStr + Chr(13) & "issboras,0 as isskgs from rm_lot b where(B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and b.lotdt<'" & Format(U, "yyyy-MM-dd") & "' and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and b.divcode='" & Divcode & "'  and opflg='Y' and b.lotno between " & fltn & " and " & tltn & "   group by b.LOTNO,B.LOTDT,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "union select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as"
            SqlStr = SqlStr + Chr(13) & "issboras,0 as isskgs from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and b.divcode='" & Divcode & "'  and lotdt<'" & Format(U, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & ""
            SqlStr = SqlStr + Chr(13) & "group by b.LOTNO,B.LOTDT,b.bblflg )z group by lotno,lotdt"
            SqlStr = SqlStr + Chr(13) & "Union all select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ("
            SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A,rm_bale b, rm_lot c WHERE lotyear='" & Year(yfdate) & "' and DOCDT <'" & Format(U, "yyyy-mm-dd") & "'  AND A.ISSUED='Y' AND"
            SqlStr = SqlStr + Chr(13) & "a.DOCDT Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.baleno=b.baleno "
            SqlStr = SqlStr + Chr(13) & "and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )X GROUP BY LOTNO , LOTDT, BBLFLG Union all  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,sum(a.actisskgs) AS KGS  FROM RM_ISSB A,rm_bale b, rm_lot c WHERE"
            SqlStr = SqlStr + Chr(13) & "lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(U, "yyyy-mm-dd") & "'  AND LOTYEAR='" & Year(yfdate) & "' AND A.ISSUED='Y' AND a.DOCDT Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd"
            SqlStr = SqlStr + Chr(13) & "and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.baleno=b.baleno and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )Y GROUP BY LOTNO,LOTDT,BBLFLG ) a  group by LOTNO , LOTDT"
            SqlStr = SqlStr + Chr(13) & "Union All  select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,"
            SqlStr = SqlStr + Chr(13) & "0 as isskgs from rm_lot b  where opflg='N' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
            SqlStr = SqlStr + Chr(13) & "and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when"
            SqlStr = SqlStr + Chr(13) & "bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "' AND  lotyear='" & Year(yfdate) & "' and a.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND"
            SqlStr = SqlStr + Chr(13) & "A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype"
            SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and"
            SqlStr = SqlStr + Chr(13) & "A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt"
            SqlStr = SqlStr + Chr(13) & "Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG )Y GROUP BY LOTNO , LOTDT, BBLFLG"
            SqlStr = SqlStr + Chr(13) & "))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE B.VARCODE=V.VARCODE and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and  B.CATCD=C.CATCD AND A.LOTNO*=B.LOTNO AND A.LOTDT*=B.LOTDT group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY , ratekg Having (sum(IsNull(a.oPKGS, 0)) + sum(IsNull(a.reckgs, 0))) - sum(IsNull(a.issKgs, 0)) >= 0  order by a.lotno"
            rs1.Open SqlStr, db, adOpenStatic
        End If
    Else
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        Set rs1 = New Recordset
        SqlStr = ""
        SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0))"
        SqlStr = SqlStr + Chr(13) & "end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))-sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,  case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else"
        SqlStr = SqlStr + Chr(13) & "sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,isnull(RATEKG,0) as ratekg,isnull(RATECY,0) as ratecy,isnull(RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))),0) AS VALUE,sum(isnull(a.opbales,0)+isnull(a.opboras,0)) OpBales,sum(isnull(a.Recbales,0)+isnull(a.Recboras,0)) RecBales,sum(isnull(a.Issbales,0)+isnull(a.Issboras,0)) IssBales,"
        SqlStr = SqlStr + Chr(13) & "RATEKG *(sum(isnull(a.reckgs,0)))AS RECVALUE  from  (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from("
        SqlStr = SqlStr + Chr(13) & "select lotno,lotdt,sum(opbales) as opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as issbales,0 as issboras,0 as isskgs from(select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where(B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and b.lotdt<'" & Format(U, "yyyy-MM-dd") & "' and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and"
        SqlStr = SqlStr + Chr(13) & "b.divcode='" & Divcode & "'  and opflg='Y' and b.lotno between " & fltn & " and " & tltn & "   group by b.LOTNO,B.LOTDT,b.bblflg union select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg"
        SqlStr = SqlStr + Chr(13) & "IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and"
        SqlStr = SqlStr + Chr(13) & "b.divcode='" & Divcode & "'  and lotdt<'" & Format(U, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg )z group by lotno,lotdt"
        SqlStr = SqlStr + Chr(13) & "Union all select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from (SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A,rm_bale b, rm_lot c WHERE lotyear='" & Year(yfdate) & "' and DOCDT <'" & Format(U, "yyyy-mm-dd") & "'  AND A.ISSUED='Y' AND a.DOCDT Between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
        SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.baleno=b.baleno and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )X GROUP BY"
        SqlStr = SqlStr + Chr(13) & "LOTNO , LOTDT, BBLFLG Union all  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,sum(a.actisskgs) AS KGS  FROM RM_ISSB A,rm_bale b, rm_lot c WHERE lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(U, "yyyy-mm-dd") & "'  AND LOTYEAR='" & Year(yfdate) & "' AND A.ISSUED='Y' AND"
        SqlStr = SqlStr + Chr(13) & "a.DOCDT Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.baleno=b.baleno "
        SqlStr = SqlStr + Chr(13) & "and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )Y GROUP BY LOTNO,LOTDT,BBLFLG ) a  group by LOTNO , LOTDT"
        SqlStr = SqlStr + Chr(13) & "Union All  select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,"
        SqlStr = SqlStr + Chr(13) & "0 as isskgs from rm_lot b  where opflg='N' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
        SqlStr = SqlStr + Chr(13) & "and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when"
        SqlStr = SqlStr + Chr(13) & "bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from (SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "' AND  lotyear='" & Year(yfdate) & "' and a.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between"
        SqlStr = SqlStr + Chr(13) & "'" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS"
        SqlStr = SqlStr + Chr(13) & "FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt"
        SqlStr = SqlStr + Chr(13) & "Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG )Y GROUP BY LOTNO , LOTDT, BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE b.catcd='" & catcd & "' and B.VARCODE=V.VARCODE and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"
        If vrectype = "A" Then
            SqlStr = SqlStr + Chr(13) & "and  B.CATCD=C.CATCD AND A.LOTNO*=B.LOTNO AND A.LOTDT*=B.LOTDT and (b.transfertype='' or b.transfertype='JR') group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY , ratekg Having (sum(IsNull(a.oPKGS, 0)) + sum(IsNull(a.reckgs, 0))) - sum(IsNull(a.issKgs, 0)) >= 0  order by a.lotno"
        Else
            SqlStr = SqlStr + Chr(13) & "and  B.CATCD=C.CATCD AND A.LOTNO*=B.LOTNO AND A.LOTDT*=B.LOTDT and " & tmptypestr & "='" & vrectype & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY , ratekg Having (sum(IsNull(a.oPKGS, 0)) + sum(IsNull(a.reckgs, 0))) - sum(IsNull(a.issKgs, 0)) >= 0  order by a.lotno"
        End If
        rs1.Open SqlStr, db, adOpenStatic
    Else
        Set rs1 = New Recordset
        SqlStr = ""
        SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0))"
        SqlStr = SqlStr + Chr(13) & "end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))-sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,  case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else"
        SqlStr = SqlStr + Chr(13) & "sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,isnull(RATEKG,0) as ratekg,isnull(RATECY,0) as ratecy,isnull(RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))),0) AS VALUE,sum(isnull(a.opbales,0)+isnull(a.opboras,0)) OpBales,sum(isnull(a.Recbales,0)+isnull(a.Recboras,0)) RecBales,sum(isnull(a.Issbales,0)+isnull(a.Issboras,0)) IssBales,"
        SqlStr = SqlStr + Chr(13) & "RATEKG *(sum(isnull(a.reckgs,0)))AS RECVALUE  from  (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from("
        SqlStr = SqlStr + Chr(13) & "select lotno,lotdt,sum(opbales) as opbales,sum(opboras) as opboras,sum(opkgs) as opkgs,0 as issbales,0 as issboras,0 as isskgs from(select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where(B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and b.lotdt<'" & Format(U, "yyyy-MM-dd") & "' and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and"
        SqlStr = SqlStr + Chr(13) & "b.divcode='" & Divcode & "'  and opflg='Y' and b.lotno between " & fltn & " and " & tltn & "   group by b.LOTNO,B.LOTDT,b.bblflg union select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg"
        SqlStr = SqlStr + Chr(13) & "IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and"
        SqlStr = SqlStr + Chr(13) & "b.divcode='" & Divcode & "'  and lotdt<'" & Format(U, "yyyy-mm-dd") & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg )z group by lotno,lotdt"
        SqlStr = SqlStr + Chr(13) & "Union all select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from (SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A,rm_bale b, rm_lot c WHERE lotyear='" & Year(yfdate) & "' and DOCDT <'" & Format(U, "yyyy-mm-dd") & "'  AND A.ISSUED='Y' AND a.DOCDT Between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
        SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.baleno=b.baleno and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )X GROUP BY"
        SqlStr = SqlStr + Chr(13) & "LOTNO , LOTDT, BBLFLG Union all  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,sum(a.actisskgs) AS KGS  FROM RM_ISSB A,rm_bale b, rm_lot c WHERE lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(U, "yyyy-mm-dd") & "'  AND LOTYEAR='" & Year(yfdate) & "' AND A.ISSUED='Y' AND"
        SqlStr = SqlStr + Chr(13) & "a.DOCDT Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.baleno=b.baleno "
        SqlStr = SqlStr + Chr(13) & "and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )Y GROUP BY LOTNO,LOTDT,BBLFLG ) a  group by LOTNO , LOTDT"
        SqlStr = SqlStr + Chr(13) & "Union All  select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,"
        SqlStr = SqlStr + Chr(13) & "0 as isskgs from rm_lot b  where opflg='N' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
        SqlStr = SqlStr + Chr(13) & "and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when"
        SqlStr = SqlStr + Chr(13) & "bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from (SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "' AND  lotyear='" & Year(yfdate) & "' and a.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between"
        SqlStr = SqlStr + Chr(13) & "'" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG  )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS"
        SqlStr = SqlStr + Chr(13) & "FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt"
        SqlStr = SqlStr + Chr(13) & "Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG )Y GROUP BY LOTNO , LOTDT, BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE b.catcd='" & catcd & "' and B.VARCODE=V.VARCODE and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"
        SqlStr = SqlStr + Chr(13) & "and  B.CATCD=C.CATCD AND A.LOTNO*=B.LOTNO AND A.LOTDT*=B.LOTDT group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY , ratekg Having (sum(IsNull(a.oPKGS, 0)) + sum(IsNull(a.reckgs, 0))) - sum(IsNull(a.issKgs, 0)) >= 0  order by a.lotno"
        rs1.Open SqlStr, db, adOpenStatic
    End If

End If

If rs1.EOF Then
   MsgBox "Sorry ! No Issues found for this month", vbInformation, head
    Exit Sub
End If
Set rptv = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\CotStock.TXT" For Output As #a
Open KALFOLDERDATA & "\CotStock.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, co, U, v, W, divname, issuetype)
co = 10
op2 = 0: op3 = 0: P4 = 0: op5 = 0: op6 = 0: op7 = 0: totbal = 0: tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0:
tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0: tot17 = 0: tot18 = 0: tot19 = 0: tot20 = 0: tot21 = 0: tot22 = 0: tot23 = 0

tot101 = 0: tot102 = 0: tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0: tot118 = 0: tot119 = 0: tot120 = 0: tot121 = 0: tot122 = 0: tot123 = 0
rs1.MoveFirst
Total_Kgs = 0: Total_Bales = 0: Total_Value = 0
pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
Close_Kgs = 0: cloqty = 0: Close_value = 0
Do While Not rs1.EOF
        Dim RstLotType As Recordset
        Set RstLotType = New Recordset
        RstLotType.Open "Select * from Rm_lot where Lotno=" & rs1("Lotno") & " and divcode='" & Divcode & "' and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'", Cnn, adOpenDynamic
        If Not RstLotType.EOF Then
            lottype = RstLotType("LotType")
        End If

        If rs1("CLOBALES") + rs1("CLOBORAS") <= 0 Then
            clokgs = 0
        Else
            clokgs = rs1("CLOKGS")
        End If
        If vrectype = "A" Then
            If lottype = "A" Or RstLotType("transfertype") = "JR" Then
                cloqty = 0
                cloqty = rs1("CLOBALES") + rs1("CLOBORAS")
                issKgs = 0
                value = 0
                If cloqty <= 0 Then
                    issKgs = Round(rs1("ISSKGS"), 0)
                    value = 0
                Else
                    issKgs = rs1("ISSKGS")
                    value = IIf(IsNull(rs1("value")), 0, rs1("VALUE"))
                End If
            Else
                cloqty = 0
                issKgs = 0
                value = 0
            End If
        Else
            cloqty = 0
            cloqty = rs1("CLOBALES") + rs1("CLOBORAS")
            issKgs = 0
            value = 0
            If cloqty <= 0 Then
                issKgs = Round(rs1("ISSKGS"), 0)
                value = 0
            Else
                issKgs = rs1("ISSKGS")
                value = IIf(IsNull(rs1("value")), 0, rs1("VALUE"))
            End If
        End If
        SupplierName = ""
        Set RstSupplier = New Recordset
        RstSupplier.Open "Select * from Rm_Lot a,fa_slmas b where a.supcd=b.slcode and a.lotno=" & rs1("lotno") & " and a.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' AND A.DIVCODE='" & Divcode & "'", Cnn, adOpenDynamic
        If Not RstSupplier.EOF Then
            SupplierName = RstSupplier("Slname")
        Else
            SupplierName = ""
        End If
        prod_bales = 0: prod_kgs = 0:        Sales_Bales = 0: Sales_Kgs = 0: Transfer_Bales = 0: Transfer_Kgs = 0
        
        
'        Set rstprod = New Recordset
'        rstprod.Open "select distinct a.slcode,slname,b.lotno,b.lotdt,B.varcode, a.cntcd,netwt," _
                     & " bales=(case bblflg when 'B' then bales  end), borah=(case  when bblflg IN ('R','H') then bales end),sum(b.isskgs)as netwt1,Value=d.ratekg*sum(b.isskgs)from rm_issh a,rm_issb b,fa_slmas c,rm_lot d,RM_ISSUETYPE E where  a.isstype=e.issue_code and e.issue_code=b.isstype and e.isStype='P' AND b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode=c.slcode and a.docno=b.docno and a.docdt=b.docdt and d.lotno=" & rs1("Lotno") & " AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and d.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'  and d.lotyear='" & Year(yfdate) & "'  and d.lottype='A' group by a.slcode,slname,b.lotno,b.lotdt,B.varcode, a.cntcd,netwt,bblflg,ratekg,d.bales  order by a.slcode,slname,b.lotno,b.lotdt ", cnn, adOpenStatic, adLockBatchOptimistic
        If vrectype = "A" Then
            Set RSTPROD = New Recordset
            RSTPROD.Open "select count(baleno) as bales,sum(a.actisskgs) as netwt1 from rm_issb a,rm_issuetype b,rm_lot c where a.isstype=b.issue_code and b.isstype='P' and a.lotno=" & rs1("Lotno") & " AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'AND a.LOTNO=c.LOTNO AND a.lotdt=c.LOTDT AND a.LOTTYPE=c.LOTTYPE AND a.DIVCODE=c.DIVCODE AND a.CATCD=c.CATCD AND (c.transfertype='' or c.transfertype='JR') and lotyear='" & Year(yfdate) & "'", db, adOpenStatic
        Else
            Set RSTPROD = New Recordset
            RSTPROD.Open "select count(baleno) as bales,sum(a.actisskgs) as netwt1 from rm_issb a,rm_issuetype b,rm_lot c where a.isstype=b.issue_code and b.isstype='P' and a.lotno=" & rs1("Lotno") & " AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'AND a.LOTNO=c.LOTNO AND a.lotdt=c.LOTDT AND a.LOTTYPE=c.LOTTYPE AND a.DIVCODE=c.DIVCODE AND a.CATCD=c.CATCD and lotyear='" & Year(yfdate) & "'", db, adOpenStatic
        End If
        If Not RSTPROD.EOF Then
            prod_bales = IIf(IsNull(RSTPROD("Bales")) Or RSTPROD("Bales") = "", 0, RSTPROD("Bales"))
            prod_kgs = IIf(IsNull(RSTPROD("Netwt1")) Or RSTPROD("Netwt1") = "", 0, Round(RSTPROD("Netwt1")))
        Else
            prod_bales = 0
            prod_kgs = 0
        End If
        
        Set RstSales = New Recordset
        RstSales.Open "select distinct a.slcode,slname,b.lotno,b.lotdt,B.varcode, a.cntcd,netwt," _
                     & " bales=(case bblflg when 'B' then bales  end), borah=(case  when bblflg IN ('R','H') then bales end),sum(b.isskgs)as netwt1,Value=d.ratekg*sum(b.isskgs)from rm_issh a,rm_issb b,fa_slmas c,rm_lot d,RM_ISSUETYPE E where  a.isstype=e.issue_code and e.issue_code=b.isstype and e.isStype='S' AND b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode=c.slcode and a.docno=b.docno and a.docdt=b.docdt and d.lotno=" & rs1("Lotno") & " AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and d.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'  and d.lotyear='" & Year(yfdate) & "'  and d.lottype='A' group by a.slcode,slname,b.lotno,b.lotdt,B.varcode, a.cntcd,netwt,bblflg,ratekg,d.bales  order by a.slcode,slname,b.lotno,b.lotdt ", Cnn, adOpenStatic, adLockBatchOptimistic
        If vrectype = "A" Then
            Set RstSales = New Recordset
            RstSales.Open "select count(baleno) as bales,sum(actisskgs) as netwt1 from rm_issb a,rm_issuetype b where a.isstype=b.issue_code and b.isstype='S' and a.lotno=" & rs1("Lotno") & " AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'", db, adOpenStatic
        Else
            Set RstSales = New Recordset
            RstSales.Open "select count(baleno) as bales,sum(actisskgs) as netwt1 from rm_issb a,rm_issuetype b where a.isstype=b.issue_code And b.isstype='S' and a.lotno=" & rs1("Lotno") & " AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'", db, adOpenStatic
        End If
        If Not RstSales.EOF Then
            Sales_Bales = IIf(IsNull(RstSales("Bales")) Or RstSales("Bales") = "", 0, RstSales("Bales"))
            Sales_Kgs = IIf(IsNull(RstSales("Netwt1")) Or RstSales("Netwt1") = "", 0, RstSales("Netwt1"))
        Else
            Sales_Bales = 0
            Sales_Kgs = 0
        End If
        
        Set RstTransfer = New Recordset
            RstTransfer.Open "select distinct a.rdivcode,DIVNAME,b.lotno,b.lotdt,B.varcode, a.cntcd,round(Sum(isnull(b.actisskgs,0)),2) netwt,bales=(case bblflg when 'B' then COUNT(B.BALENO)  end), borah=(case when bblflg  IN ('R','H') then COUNT(B.BALENO) end),round(Sum(isnull(b.actisskgs,0)),2) netwt1,Value=round((sum(isnull(b.actisskgs,0)))*ROUND((ISNULL(D.RATEKG,0)),2),2)  from rm_issh a,rm_issb b,pp_divmas c,rm_lot d,rm_bale e,rm_issuetype f where b.lotno=e.lotno and d.lotno=" & rs1("Lotno") & " and d.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno  and " & _
                     " b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype   and a.isstype=f.issue_code and b.isstype=f.issue_code and f.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.divcode=c.divcode   and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and d.lotno=" & rs1("lotno") & " and d.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' and d.lotyear='" & Year(yfdate) & "'  and d.lottype='A' group by a.rdivcode,divname,b.lotno,b.lotdt,B.varcode, a.cntcd,d.bales,bblflg,ratekg,D.RATECY order by a.rdivcode,divname,b.lotno,b.lotdt", Cnn, adOpenStatic
        If Not RstTransfer.EOF Then
            Transfer_Bales = IIf(IsNull(RstTransfer("Bales")) Or RstTransfer("Bales") = 0, 0, RstTransfer("Bales")) + IIf(IsNull(RstTransfer("Borah")) Or RstTransfer("Borah") = 0, 0, RstTransfer("Borah"))
            Transfer_Kgs = IIf(IsNull(RstTransfer("Netwt1")) Or RstTransfer("Netwt1") = 0, 0, RstTransfer("Netwt1"))
        Else
            Transfer_Bales = 0
            Transfer_Kgs = 0
        End If
        JobWork_Bales = 0: JobWork_Kgs = 0
        Return_Bales = 0:   Return_Kgs = 0
        
        Set RstJobWork = New Recordset
        RstJobWork.Open "select distinct a.rdivcode,DIVNAME,b.lotno,b.lotdt,B.varcode, a.cntcd,round(Sum(isnull(b.actisskgs,0)),2) netwt,bales=(case bblflg when 'B' then COUNT(B.BALENO) else 0 end), borah=(case when bblflg  IN ('R','H') then COUNT(B.BALENO) else 0 end),round(Sum(isnull(b.actisskgs,0)),2) netwt1,Value=round((sum(isnull(b.actisskgs,0)))*ROUND((ISNULL(D.RATEKG,0)),2),2)  from rm_issh a,rm_issb b,pp_divmas c,rm_lot d,rm_bale e,rm_issuetype f where b.lotno=e.lotno and d.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno  and " & _
                     " b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype   and a.isstype=f.issue_code and b.isstype=f.issue_code and f.isstype='J' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.divcode=c.divcode   and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and d.lotno=" & rs1("lotno") & " and d.lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'  and d.lotyear='" & Year(yfdate) & "' group by a.rdivcode,divname,b.lotno,b.lotdt,B.varcode, a.cntcd,d.bales,bblflg,ratekg,D.RATECY order by a.rdivcode,divname,b.lotno,b.lotdt", Cnn, adOpenStatic
        If Not RstJobWork.EOF Then
            If vrectype = "A" Then
                If lottype = "A" Then
                    JobWork_Bales = RstJobWork("Bales") + RstJobWork("Borah")
                    JobWork_Kgs = RstJobWork("Netwt1")
                End If
            Else
                JobWork_Bales = RstJobWork("Bales") + RstJobWork("Borah")
                JobWork_Kgs = RstJobWork("Netwt1")
            End If
        Else
            JobWork_Bales = 0
        End If
        rejected_bales1 = 0: Rejected_Kgs1 = 0
        Set RstRejection = New Recordset
        RstRejection.Open "Select Lotno,count(baleno) bales ,round(sum(netwt),0) Kgs from rm_bale where lotno=" & rs1("lotno") & " and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' and rejflg='Y' and Status='RJ' and lotdt < '" & Format(U, "yyyy-mm-dd") & "' and rejdt<'" & Format(U, "yyyy-mm-dd") & "' group by lotno", Cnn, adOpenDynamic
        If Not RstRejection.EOF Then
            rejected_bales1 = RstRejection("Bales")
            Rejected_Kgs1 = RstRejection("Kgs")
        End If
        
        Rejected_Bales = 0: Rejected_Kgs = 0
        Set RstRejection = New Recordset
        RstRejection.Open "Select Lotno,count(baleno) bales ,round(sum(netwt),0) Kgs from rm_bale where lotno=" & rs1("lotno") & " and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' and rejflg='Y' and Status='RJ' and lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and rejdt>='" & Format(U, "yyyy-mm-dd") & "' and rejdt<='" & Format(v, "yyyy-mm-dd") & "' group by lotno", Cnn, adOpenDynamic
        If Not RstRejection.EOF Then
            Rejected_Bales = RstRejection("Bales")
            Rejected_Kgs = RstRejection("Kgs")
        End If
        
        Set RstWeightLoss = New Recordset
        RstWeightLoss.Open "Select lotno,count(baleno),sum(isnull(netwt,0)-isnull(NETWT,0)) LossKgs from rm_bale where lotno=" & rs1("lotno") & " and lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and Issued = 'Y' group by lotno", Cnn, adOpenDynamic
        
        If Not RstWeightLoss.EOF Then
            RstWeight_Kgs = RstWeightLoss("LossKgs")
        Else
            RstWeight_Kgs = 0
        End If
        If vrectype = "JR" Or vrectype = "ALL" Or vrectype = "A" Then
            Set rstreturn = New Recordset
            rstreturn.Open "select isnull(sum(bales),0) as bales,isnull(sum(netwt),0) as netwt from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt < '" & Format(U, "yyyy-MM-dd") & "' and lotno=" & rs1("lotno") & " and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'", db, adOpenStatic
            return_bales1 = rstreturn("bales")
            return_kgs1 = rstreturn("netwt")
        End If
        If vrectype = "A" Then
            If lottype = "A" Or RstLotType("transfertype") = "JR" Then
                open_bales = rs1("opbales")
                open_kgs = rs1("opkgs")
                open_value = rs1("opkgs") * rs1("ratekg")
            End If
        Else
            open_bales = rs1("opbales")
            open_kgs = rs1("opkgs")
            open_value = rs1("opkgs") * rs1("ratekg")
        End If
        open_bales = open_bales - rejected_bales1
        open_kgs = open_kgs - Rejected_Kgs1
        open_value = open_value - (Rejected_Kgs1 * rs1("ratekg"))
        
        If vrectype = "JR" Or vrectype = "ALL" Or vrectype = "A" Then
            Set rstreturn = New Recordset
            rstreturn.Open "select isnull(sum(bales),0) as bales,isnull(sum(netwt),0) as netwt from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and lotno=" & rs1("lotno") & " and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'", db, adOpenStatic
            Return_Bales = rstreturn("bales")
            Return_Kgs = rstreturn("netwt")
        End If
        If vrectype = "A" Then
            If lottype = "A" Or RstLotType("transfertype") = "JR" Then
                close_qty = rs1("clobales") + rs1("cloboras")
                Close_Kgs = rs1("clokgs")
                Close_value = rs1("value")
            Else
                close_qty = 0
                Close_Kgs = 0
                Close_value = 0
            End If
        Else
            close_qty = rs1("clobales") + rs1("cloboras")
            Close_Kgs = rs1("clokgs")
            Close_value = rs1("value")
        End If
        cloqty = cloqty - Rejected_Bales - rejected_bales1
        close_qty = close_qty - Rejected_Bales - rejected_bales1
        Close_Kgs = Close_Kgs - Rejected_Kgs - Rejected_Kgs1
        Close_value = Close_value - ((Rejected_Kgs + Rejected_Kgs1) * rs1("ratekg"))
        If vrectype = "A" Then
             If lottype = "A" Or RstLotType("transfertype") = "JR" Then
                 Total_Bales = Total_Bales + close_qty
                 Total_Kgs = Total_Kgs + Close_Kgs
                 Total_Value = Total_Value + Close_value
            End If
        Else
            Total_Bales = Total_Bales + close_qty
            Total_Kgs = Total_Kgs + Close_Kgs
            Total_Value = Total_Value + Close_value
       End If
'        Total_Bales = Total_Bales + -Rejected_Bales - rejected_bales1
'        Total_Kgs = Total_Kgs + -Rejected_Kgs - Rejected_Kgs1
'        Total_Value = Total_Value + -((Rejected_Kgs + Rejected_Kgs1) * RS1("ratekg"))
        
        Set Rs = New Recordset
        Rs.Open "Select transfertype from rm_lot where lotno='" & rs1("lotno") & "' and lotdt='" & Format(rs1("lotdt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'", db, adOpenStatic
        If cloqty > 0 Or open_bales > 0 Or Return_Bales > 0 Or rs1("recbales") > 0 Or Rejected_Bales > 0 Or prod_bales > 0 Or Sales_Bales > 0 Or Transfer_Bales > 0 Or JobWork_Bales > 0 Or Rejected_Bales > 0 Then
            If lottype = "A" Then
                Print #a, Space(4) + Padl(Right(Year(rs1("lotdt")), 2), 4, " ") + Space(1) + Padl(SNO, 4, " ") + Space(1) + Padr(SupplierName, 20 + 3, " ") + Space(1) + Padr(rs1("varname"), 10, " ") + Space(1) + Padl(rs1("Lotno"), 5, " ") + Space(1) + Padl(INF(rs1("RateKg"), 2), 10 - 4, " ") + Space(1) + Padl(INF(open_bales, 0), 6, " ") + Space(1) + Padl(INF(Round(open_kgs), 0), 8, " ") + Padl(INF(rs1("RecBales"), 0), 6, " ") + Padl(INF(Round(rs1("Reckgs")), 0), 7, " ") + Padl(INF(rs1("RECVALUE"), 2), 7 + 7, " ");
                Print #a, Space(1) + Padl(INF(Return_Bales, 0), 6, " ") + Space(1) + Padl(INF(Return_Kgs, 0), 7, " ") + Space(1) + Padl(INF(0, 0), 6, " ") + Space(1) + Padl(INF(Round(RstWeight_Kgs), 0), 7, " ") + Space(1) + Padl(INF(val(prod_bales), 0), 6, " ") + Space(1) + Padl(INF(Round(prod_kgs), 0), 7, " ") + Space(1) + Padl(INF(Sales_Bales, 0), 5, " ") + Space(1) + Padl(INF(Round(Sales_Kgs), 0), 7 - 1, " ") + Space(1) + Padl(INF(Transfer_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Transfer_Kgs), 0), 6, " ") + Space(1) + Padl(INF(JobWork_Bales, 0), 7 - 2, " ") + Space(1) + Padl(INF(Round(JobWork_Kgs), 0), 7 - 1, " ") + Padl(INF(Rejected_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Rejected_Kgs), 0), 6, " ") + Space(1) + Padl(INF(close_qty, 0), 7, " ") + Padl(INF(Round(Close_Kgs), 0), 8, " ") + Space(1) + Padl(INF(Close_value, 2), 13, " ")
                SNO = SNO + 1
                co = co + 1
            ElseIf lottype = "T" And Rs("transfertype") = "JR" Then
                Print #a, Space(4) + Padl(Right(Year(rs1("lotdt")), 2), 4, " ") + Space(1) + Padl(SNO, 4, " ") + Space(1) + Padr(SupplierName, 20 + 3, " ") + Space(1) + Padr(rs1("varname"), 10, " ") + Space(1) + Padl(rs1("Lotno"), 5, " ") + Space(1) + Padl(INF(rs1("RateKg"), 2), 10 - 4, " ") + Space(1) + Padl(INF(open_bales, 0), 6, " ") + Space(1) + Padl(INF(Round(open_kgs), 0), 8, " ") + Padl(INF(0, 0), 6, " ") + Padl(INF(Round(0), 0), 7, " ") + Padl(INF(0, 2), 7 + 7, " ");
                Print #a, Space(1) + Padl(INF(Return_Bales, 0), 6, " ") + Space(1) + Padl(INF(Round(Return_Kgs), 0), 7, " ") + Space(1) + Padl(INF(0, 0), 6, " ") + Space(1) + Padl(INF(Round(RstWeight_Kgs), 0), 7, " ") + Space(1) + Padl(INF(val(prod_bales), 0), 6, " ") + Space(1) + Padl(INF(Round(prod_kgs), 0), 7, " ") + Space(1) + Padl(INF(Sales_Bales, 0), 5, " ") + Space(1) + Padl(INF(Round(Sales_Kgs), 0), 7 - 1, " ") + Space(1) + Padl(INF(Transfer_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Transfer_Kgs), 0), 6, " ") + Space(1) + Padl(INF(JobWork_Bales, 0), 7 - 2, " ") + Space(1) + Padl(INF(Round(JobWork_Kgs), 0), 7 - 1, " ") + Padl(INF(Rejected_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Rejected_Kgs), 0), 6, " ") + Space(1) + Padl(INF(close_qty, 0), 7, " ") + Padl(INF(Round(Close_Kgs), 0), 8, " ") + Space(1) + Padl(INF(Close_value, "2"), 13, " ")
                SNO = SNO + 1
                co = co + 1
            ElseIf lottype = "T" And vrectype <> "A" Then
                Print #a, Space(4) + Padl(Right(Year(rs1("lotdt")), 2), 4, " ") + Space(1) + Padl(SNO, 4, " ") + Space(1) + Padr(SupplierName, 20 + 3, " ") + Space(1) + Padr(rs1("varname"), 10, " ") + Space(1) + Padl(rs1("Lotno"), 5, " ") + Space(1) + Padl(INF(rs1("RateKg"), 2), 10 - 4, " ") + Space(1) + Padl(INF(open_bales, 0), 6, " ") + Space(1) + Padl(INF(Round(open_kgs), 0), 8, " ") + Padl(INF(rs1("RecBales"), 0), 6, " ") + Padl(INF(Round(rs1("Reckgs")), 0), 7, " ") + Padl(INF(rs1("RECVALUE"), 2), 7 + 7, " ");
                Print #a, Space(1) + Padl(INF(Return_Bales, 0), 6, " ") + Space(1) + Padl(INF(Round(Return_Kgs), 0), 7, " ") + Space(1) + Padl(INF(0, 0), 6, " ") + Space(1) + Padl(INF(Round(RstWeight_Kgs), 0), 7, " ") + Space(1) + Padl(INF(val(prod_bales), 0), 6, " ") + Space(1) + Padl(INF(Round(prod_kgs), 0), 7, " ") + Space(1) + Padl(INF(Sales_Bales, 0), 5, " ") + Space(1) + Padl(INF(Round(Sales_Kgs), 0), 7 - 1, " ") + Space(1) + Padl(INF(Transfer_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Transfer_Kgs), 0), 6, " ") + Space(1) + Padl(INF(JobWork_Bales, 0), 7 - 2, " ") + Space(1) + Padl(INF(Round(JobWork_Kgs), 0), 7 - 1, " ") + Padl(INF(Rejected_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Rejected_Kgs), 0), 6, " ") + Space(1) + Padl(INF(close_qty, 0), 7, " ") + Padl(INF(Round(Close_Kgs), 0), 8, " ") + Space(1) + Padl(INF(Close_value, 2), 13, " ")
                SNO = SNO + 1
                co = co + 1
            ElseIf lottype = "T" And vrectype = "ALL" Then
                Print #a, Space(4) + Padl(Right(Year(rs1("lotdt")), 2), 4, " ") + Space(1) + Padl(SNO, 4, " ") + Space(1) + Padr(SupplierName, 20 + 3, " ") + Space(1) + Padr(rs1("varname"), 10, " ") + Space(1) + Padl(rs1("Lotno"), 5, " ") + Space(1) + Padl(INF(rs1("RateKg"), 2), 10 - 4, " ") + Space(1) + Padl(INF(open_bales, 0), 6, " ") + Space(1) + Padl(INF(Round(open_kgs), 0), 8, " ") + Padl(INF(rs1("RecBales"), 0), 6, " ") + Padl(INF(Round(rs1("Reckgs")), 0), 7, " ") + Padl(INF(rs1("RECVALUE"), 2), 7 + 7, " ");
                Print #a, Space(1) + Padl(INF(Return_Bales, 0), 6, " ") + Space(1) + Padl(INF(Round(Return_Kgs), 0), 7, " ") + Space(1) + Padl(INF(0, 0), 6, " ") + Space(1) + Padl(INF(Round(RstWeight_Kgs), 0), 7, " ") + Space(1) + Padl(INF(val(prod_bales), 0), 6, " ") + Space(1) + Padl(INF(Round(prod_kgs), 0), 7, " ") + Space(1) + Padl(INF(Sales_Bales, 0), 5, " ") + Space(1) + Padl(INF(Round(Sales_Kgs), 0), 7 - 1, " ") + Space(1) + Padl(INF(Transfer_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Transfer_Kgs), 0), 6, " ") + Space(1) + Padl(INF(JobWork_Bales, 0), 7 - 2, " ") + Space(1) + Padl(INF(Round(JobWork_Kgs), 0), 7 - 1, " ") + Padl(INF(Rejected_Bales, 0), 6 - 1, " ") + Padl(INF(Round(Rejected_Kgs), 0), 6, " ") + Space(1) + Padl(INF(close_qty, 0), 7, " ") + Padl(INF(Round(Close_Kgs), 0), 8, " ") + Space(1) + Padl(INF(Close_value, 2), 13, " ")
                SNO = SNO + 1
                co = co + 1
            End If
        End If
        If vrectype = "A" Then
            If lottype = "A" Or RstLotType("transfertype") = "JR" Then
                tot1 = tot1 + IIf(IsNull(rs1("opkgs")) Or rs1("opkgs") = 0, 0, Round(rs1("opkgs")))
                tot2 = tot2 + IIf(IsNull(rs1("Opbales")) Or rs1("Opbales") = 0, 0, rs1("Opbales"))
            End If
        Else
            tot1 = tot1 + IIf(IsNull(rs1("opkgs")) Or rs1("opkgs") = 0, 0, Round(rs1("opkgs")))
            tot2 = tot2 + IIf(IsNull(rs1("Opbales")) Or rs1("Opbales") = 0, 0, rs1("Opbales"))
        End If
        tot1 = tot1 - Rejected_Kgs1
        tot2 = tot2 - rejected_bales1
        If vrectype = "A" Or vrectype = "JR" Then
            If Return_Bales = 0 And lottype <> "T" And Rs("transfertype") <> "JR" Then
                tot9 = tot9 + IIf(IsNull(rs1("Recbales")) Or rs1("Recbales") = 0, 0, rs1("Recbales"))
                tot10 = tot10 + IIf(IsNull(rs1("Reckgs")) Or rs1("Reckgs") = 0, 0, Round(rs1("Reckgs")))
                tot11 = tot11 + IIf(IsNull(rs1("Recvalue")) Or rs1("Recvalue") = 0, 0, rs1("Recvalue"))
            End If
        Else
            If Return_Bales = 0 Then
                tot9 = tot9 + IIf(IsNull(rs1("Recbales")) Or rs1("Recbales") = 0, 0, rs1("Recbales"))
                tot10 = tot10 + IIf(IsNull(rs1("Reckgs")) Or rs1("Reckgs") = 0, 0, Round(rs1("Reckgs")))
                tot11 = tot11 + IIf(IsNull(rs1("Recvalue")) Or rs1("Recvalue") = 0, 0, rs1("Recvalue"))
            End If
        End If
'        tot9 = tot9 - Rejected_Bales - rejected_bales1
'        tot10 = tot10 - Rejected_Kgs - Rejected_Kgs1
'        tot11 = tot11 - ((Rejected_Kgs + Rejected_Kgs1) * RS1("ratekg"))
        tot12 = tot12 + 0
        tot13 = tot13 + IIf(IsNull(RstWeight_Kgs) Or RstWeight_Kgs = 0, 0, Round(RstWeight_Kgs))
        tot14 = tot14 + prod_bales ''IIf(IsNull(RS1("issBales")) Or RS1("issBales") = 0, 0, RS1("issBales"))
        tot15 = tot15 + Round(prod_kgs) ''IIf(IsNull(RS1("issKgs")) Or RS1("issKgs") = 0, 0, Round(RS1("issKgs")))
        tot16 = tot16 + IIf(IsNull(Sales_Bales) Or Sales_Bales = 0, 0, Sales_Bales)
        tot17 = tot17 + IIf(IsNull(Sales_Kgs) Or Sales_Kgs = 0, 0, Round(Sales_Kgs))
        tot18 = tot18 + IIf(IsNull(Transfer_Bales) Or Transfer_Bales = 0, 0, Transfer_Bales)
        tot19 = tot19 + IIf(IsNull(Transfer_Kgs) Or Transfer_Kgs = 0, 0, Round(val(Transfer_Kgs)))
        tot20 = tot20 + IIf(IsNull(JobWork_Bales) Or JobWork_Bales = 0, 0, JobWork_Bales)
        tot21 = tot21 + IIf(IsNull(JobWork_Kgs) Or JobWork_Kgs = 0, 0, Round(val(JobWork_Kgs)))
        tot22 = tot22 + IIf(IsNull(Rejected_Bales) Or Rejected_Bales = 0, 0, Rejected_Bales)
        tot23 = tot23 + IIf(IsNull(Rejected_Kgs) Or Rejected_Kgs = 0, 0, Round(val(Rejected_Kgs)))
        tot24 = tot24 + IIf(IsNull(Return_Bales) Or Return_Bales = 0, 0, Return_Bales)
        tot25 = tot25 + IIf(IsNull(Return_Kgs) Or Return_Kgs = 0, 0, Round(val(Return_Kgs)))
        If vrectype = "A" Then
            If lottype <> "T" Or RstLotType("transfertype") = "JR" Then
                tot101 = tot101 + IIf(IsNull(rs1("opkgs")) Or rs1("opkgs") = 0, 0, Round(rs1("opkgs")))
                tot102 = tot102 + IIf(IsNull(rs1("Opbales")) Or rs1("Opbales") = 0, 0, rs1("Opbales"))
                tot101 = tot101 - Rejected_Kgs1
                tot102 = tot102 - rejected_bales1
            End If
        Else
            tot101 = tot101 + IIf(IsNull(rs1("opkgs")) Or rs1("opkgs") = 0, 0, Round(rs1("opkgs")))
            tot102 = tot102 + IIf(IsNull(rs1("Opbales")) Or rs1("Opbales") = 0, 0, rs1("Opbales"))
            tot101 = tot101 - Rejected_Kgs1
            tot102 = tot102 - rejected_bales1
        End If
        If vrectype = "A" Or vrectype = "JR" Then
            If Return_Bales = 0 And lottype <> "T" And Rs("transfertype") <> "JR" Then
                tot109 = tot109 + IIf(IsNull(rs1("Recbales")) Or rs1("Recbales") = 0, 0, rs1("Recbales"))
                tot110 = tot110 + IIf(IsNull(rs1("Reckgs")) Or rs1("Reckgs") = 0, 0, Round(rs1("Reckgs")))
                tot111 = tot111 + IIf(IsNull(rs1("Recvalue")) Or rs1("Recvalue") = 0, 0, rs1("Recvalue"))
            End If
        Else
            If Return_Bales = 0 Then
                tot109 = tot109 + IIf(IsNull(rs1("Recbales")) Or rs1("Recbales") = 0, 0, rs1("Recbales"))
                tot110 = tot110 + IIf(IsNull(rs1("Reckgs")) Or rs1("Reckgs") = 0, 0, Round(rs1("Reckgs")))
                tot111 = tot111 + IIf(IsNull(rs1("Recvalue")) Or rs1("Recvalue") = 0, 0, rs1("Recvalue"))
            End If
        End If
'        tot109 = tot109 - Rejected_Bales - rejected_bales1
'        tot110 = tot110 - Rejected_Kgs - Rejected_Kgs1
'        tot111 = tot111 - ((Rejected_Kgs + Rejected_Kgs1) * RS1("ratekg"))
        tot112 = tot112 + 0
        tot113 = tot113 + IIf(IsNull(RstWeight_Kgs) Or RstWeight_Kgs = 0, 0, Round(val(RstWeight_Kgs)))
        tot114 = tot114 + prod_bales  ''IIf(IsNull(RS1("issBales")) Or RS1("issBales") = 0, 0, RS1("issBales"))
        tot115 = tot115 + Round(prod_kgs, 0) ''IIf(IsNull(RS1("issKgs")) Or RS1("issKgs") = 0, 0, Round(RS1("issKgs")))
        tot116 = tot116 + IIf(IsNull(Sales_Bales) Or Sales_Bales = 0, 0, Sales_Bales)
        tot117 = tot117 + IIf(IsNull(Sales_Kgs) Or Sales_Kgs = 0, 0, Round(val(Sales_Kgs)))
        tot118 = tot118 + IIf(IsNull(Transfer_Bales) Or Transfer_Bales = 0, 0, Transfer_Bales)
        tot119 = tot119 + IIf(IsNull(Transfer_Kgs) Or Transfer_Kgs = 0, 0, Round(val(Transfer_Kgs)))
        tot120 = tot120 + IIf(IsNull(JobWork_Bales) Or JobWork_Bales = 0, 0, JobWork_Bales)
        tot121 = tot121 + IIf(IsNull(JobWork_Kgs) Or JobWork_Kgs = 0, 0, Round(val(JobWork_Kgs)))
        tot122 = tot122 + IIf(IsNull(Rejected_Bales) Or Rejected_Bales = 0, 0, Rejected_Bales)
        tot123 = tot123 + IIf(IsNull(Rejected_Kgs) Or Rejected_Kgs = 0, 0, Round(val(Rejected_Kgs)))
        tot124 = tot124 + IIf(IsNull(Return_Bales) Or Return_Bales = 0, 0, Return_Bales)
        tot125 = tot125 + IIf(IsNull(Return_Kgs) Or Return_Kgs = 0, 0, Round(val(Return_Kgs)))
       If vrectype = "A" Then
            If lottype = "A" Or RstLotType("transfertype") = "JR" Then
                pgTotal_Bales = pgTotal_Bales + close_qty
                pgTotal_kgs = pgTotal_kgs + Close_Kgs
                pgTotal_value = pgTotal_value + Close_value
            End If
        Else
            pgTotal_Bales = pgTotal_Bales + close_qty
            pgTotal_kgs = pgTotal_kgs + Close_Kgs
            pgTotal_value = pgTotal_value + Close_value
        End If
'        pgTotal_Bales = pgTotal_Bales + Return_Bales + return_bales1
'        pgtotal_kgs = pgtotal_kgs + Return_Kgs + return_kgs1
'        pgTotal_Value = pgTotal_Value + ((Return_Kgs + return_kgs1) * RS1("ratekg"))
        tot4 = tot4 + IIf(IsNull(cloqty) Or cloqty = "", 0, Round(val(cloqty)))
        tot6 = tot6 + clokgs
        tot7 = tot7 + value
        tot8 = tot8 + value
        tot3 = tot3 + issKgs
        If co >= 60 Then  'pagelen
            Print #a, Space(4) + String(225, "-")
            Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Page Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl(INF(tot102, 0), 10, " ") + Space(0) + Padl("", 3, " ") + Padl(INF(tot109, 0), 12, " ") + Padl("", 3, " ") + Padl(INF(tot111, 2), 18, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot125, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot113, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot115, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot117, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot119, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot121, 0), 8, " ") + Padl("", 3, " ") + Padl(INF(tot123, 0), 8, " ") + Space(1) + Padl("", 1, " ") + Padl(INF(Round(pgTotal_kgs), 0), 14, " ") + Padl("", 12, " ")
            Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("", 23, " ") + Space(0) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(0) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(Round(tot101), 0), 13, " ") + Padl("", 2, " ") + Padl(INF(Round(tot110), 0), 11, " ") + Padl("", 6, " ") + Space(1) + Padl(INF(tot124, 0), 12, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot112, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot114, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot116, 0), 9, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot118, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(tot120, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot122, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(pgTotal_Bales, 0), 10, " ") + Padl("", 3, " ") + Padl(INF(pgTotal_value, 2), 19, " ")
            Print #a, Space(4) + String(225, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 10
            Call PartyHeader(pg1, co, U, v, W, divname, issuetype)
            tot101 = 0: tot102 = 0
            tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0
            tot118 = 0
            tot119 = 0
            tot120 = 0
            tot121 = 0
            tot122 = 0
            tot123 = 0: tot124 = 0: tot125 = 0
            pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
        End If
10:
    rs1.MoveNext
Loop
totbal = tot5 + tot7
Print #a,
Print #a, Space(4) + String(225, "-")
'Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Page Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 10 - 4, " ") + Space(1) + Padl(tot102, 8, " ") + Space(1) + Padl("", 8, " ") + Padl(tot109, 7, " ") + Padl("", 7, " ") + Padl(Format(tot111, "#0.00"), 7 + 4, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(tot125, 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(tot113, 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(tot115, 7, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(tot117, 7 - 1, " ") + Space(1) + Padl("", 6 - 1, " ") + Padl(tot119, 6, " ") + Space(1) + Padl("", 7 - 2, " ") + Space(1) + Padl(tot121, 7 - 1, " ") + Padl("", 6 - 1, " ") + Padl(tot123, 6, " ") + Space(1) + Padl("", 7, " ") + Padl(Round(pgTotal_kgs), 7, " ") + Padl("", 12, " ")
'Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr(" ", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(Round(tot101), 8, " ") + Padl("", 7, " ") + Padl(Round(tot110), 7, " ") + Padl("", 7 + 4, " ") + Space(1) + Padl(tot124, 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(tot112, 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(tot114, 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(tot116, 5, " ") + Space(1) + Padl("", 7 - 1, " ") + Space(1) + Padl(tot118, 6 - 1, " ") + Padl("", 6, " ") + Space(1) + Padl(tot120, 7 - 2, " ") + Space(1) + Padl("", 7 - 1, " ") + Padl(tot122, 6 - 1, " ") + Padl("", 6, " ") + Space(1) + Padl(pgTotal_Bales, 7, " ") + Padl("", 7, " ") + Padl(Format(pgTotal_value, "#0.00"), 12, " ")
'Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Page Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot102, 0), 11, " ") + Space(1) + Padl("", 5, " ") + Padl(INF(tot109, 0), 10, " ") + Padl("", 7, " ") + Padl(INF(tot111, 2), 7 + 4, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(INF(tot125, 0), 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(INF(tot113, 0), 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(INF(tot115, 0), 7, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(INF(tot117, 0), 7 - 1, " ") + Space(1) + Padl("", 6 - 1, " ") + Padl(INF(tot119, 0), 6, " ") + Space(1) + Padl("", 7 - 2, " ") + Space(1) + Padl(INF(tot121, 0), 7 - 1, " ") + Padl("", 6 - 1, " ") + Padl(INF(tot123, 0), 6, " ") + Space(1) + Padl("", 7, " ") + Padl(INF(Round(pgTotal_kgs), 0), 7, " ") + Padl("", 12, " ")
'Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(Round(tot101), 0), 8, " ") + Padl("", 7, " ") + Padl(INF(Round(tot110), 0), 7, " ") + Padl("", 7 + 4, " ") + Space(1) + Padl(INF(tot124, 0), 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(INF(tot112, 0), 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(INF(tot114, 0), 7, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(INF(tot116, 0), 5, " ") + Space(1) + Padl("", 7 - 1, " ") + Space(1) + Padl(INF(tot118, 0), 6 - 1, " ") + Padl("", 6, " ") + Space(1) + Padl(INF(tot120, 0), 7 - 2, " ") + Space(1) + Padl("", 7 - 1, " ") + Padl(INF(tot122, 0), 6 - 1, " ") + Padl("", 6, " ") + Space(1) + Padl(INF(pgTotal_Bales, 0), 7, " ") + Padl("", 2, " ") + Padl(INF(pgTotal_value, 2), 17, " ")
Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Page Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl(INF(tot102, 0), 10, " ") + Space(0) + Padl("", 3, " ") + Padl(INF(tot109, 0), 12, " ") + Padl("", 3, " ") + Padl(INF(tot111, 2), 18, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot125, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot113, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot115, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot117, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot119, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot121, 0), 8, " ") + Padl("", 3, " ") + Padl(INF(tot123, 0), 8, " ") + Space(1) + Padl("", 1, " ") + Padl(INF(Round(pgTotal_kgs), 0), 14, " ") + Padl("", 12, " ")
Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("", 23, " ") + Space(0) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(0) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(Round(tot101), 0), 13, " ") + Padl("", 2, " ") + Padl(INF(Round(tot110), 0), 11, " ") + Padl("", 6, " ") + Space(1) + Padl(INF(tot124, 0), 12, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot112, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot114, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot116, 0), 9, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot118, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(tot120, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot122, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(pgTotal_Bales, 0), 10, " ") + Padl("", 3, " ") + Padl(INF(pgTotal_value, 2), 19, " ")
Print #a,
Print #a, Space(4) + String(225, "-")
Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr("Grand Total", 20 + 3, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padl(INF(tot2, 0), 10, " ") + Space(0) + Padl("", 3, " ") + Padl(INF(tot9, 0), 12, " ") + Padl("", 3, " ") + Padl(INF(tot11, 2), 18, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot25, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot13, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot15, 0), 10, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot17, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot19, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot21, 0), 8, " ") + Padl("", 3, " ") + Padl(INF(tot23, 0), 8, " ") + Space(1) + Padl(INF(Total_Bales, 0), 7, " ") + Padl("", 3, " ") + Padl(INF(Total_Value, 2), 19, " ")
Print #a, Space(4) + Padl("", 4, " ") + Space(1) + Padl("", 4, " ") + Space(1) + Padr(" ", 23, " ") + Space(0) + Padr("", 10, " ") + Space(1) + Padl("", 5, " ") + Space(0) + Padl("", 10 - 4, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(Round(tot1), 0), 13, " ") + Padl("", 2, " ") + Padl(INF(Round(tot10), 0), 11, " ") + Padl(INF("", 2), 6, " ") + Space(1) + Padl(INF(tot24, 0), 12, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot12, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot14, 0), 11, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot16, 0), 9, " ") + Space(1) + Padl("", 3, " ") + Space(1) + Padl(INF(tot18, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl(INF(tot20, 0), 8, " ") + Space(1) + Padl("", 3, " ") + Padl(INF(tot22, 0), 8, " ") + Padl("", 3, " ") + Space(1) + Padl("", 1, " ") + Padl(INF(Round(Total_Kgs), 0), 17, " ") + Padl("", 12, " ")
'''''''
Call CottonStock
rptv.txtfile = "C:\CotStock.txt"
rptv.Batfile = "C:\CotStock.bat"
End Sub

Public Sub StockStatementStationwise(U As String, v As String, W As String, fltn As Integer, tltn As Integer, FVar As String, TVar As String, fstat As String, tstat As String, issuetype As String)
Set Cnn = New Connection
PageLen = 63
Set rs2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Cnn.CommandTimeout = 2000
catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
vrectype = Trim(Left(issuetype, 3))
Dim SNO As Integer
iNo = 0
strsq = ""
        strSQL = " select C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
        strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
        strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
        strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
        strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
        strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
        strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
        strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
        strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
        strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
        strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
        strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
        strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
        strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
        strSQL = strSQL + Chr(13) + " FROM ("
        strSQL = strSQL + Chr(13) + gStockStatement(U, v)
        strSQL = strSQL + Chr(13) + " ) A ,RM_LOT B, RM_VAR C,RM_AREA D WHERE b.AREACD= D.AREACODE AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND A.lotno BETWEEN '" & fltn & "' AND '" & tltn & "' AND b.areacd BETWEEN '" & Trim(fstat) & "' AND '" & Trim(tstat) & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
        strSQL = strSQL & Chr(13) + " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"

        If Trim(catcd) <> "All" Then
            If vrectype <> "All" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg  Order by A.lotdt,A.LotNo,C.VARNAME,D.Station "
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg  Order by A.lotdt,A.LotNo,C.VARNAME,D.Station "
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg  Order by A.lotdt,A.LotNo,C.VARNAME,D.Station "
            End If
        Else
            If vrectype <> "All" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg  Order by A.lotdt,A.LotNo,C.VARNAME,D.Station "
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg  Order by A.lotdt,A.LotNo,C.VARNAME,D.Station "
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg  Order by A.lotdt,A.LotNo,C.VARNAME,D.Station "
            End If
        End If
        Set rs1 = New Recordset
        rs1.Open strSQL, db, adOpenStatic

If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
Set rptv = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\CotStock.TXT" For Output As #a
 Open KALFOLDERDATA & "\CotStock.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call PartyHeaderStationWise(pg1, co, U, v, W, divname, issuetype)
co = 10
op2 = 0: op3 = 0: P4 = 0: op5 = 0: op6 = 0: op7 = 0: totbal = 0: tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0:
tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0: tot17 = 0: tot18 = 0: tot19 = 0: tot20 = 0: tot21 = 0: tot22 = 0: tot23 = 0

tot101 = 0: tot102 = 0: tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0: tot118 = 0: tot119 = 0: tot120 = 0: tot121 = 0: tot122 = 0: tot123 = 0
rs1.MoveFirst
Total_Kgs = 0: Total_Bales = 0: Total_Value = 0
pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
Close_Kgs = 0: cloqty = 0: Close_value = 0
Do While Not rs1.EOF
        If rs1!OpenVALUE <> 0 Or rs1!recvalue <> 0 Then
        iNo = iNo + 1
        open_bales = 0: open_bales = rs1!OpenBAL + rs1!OpenBor
        open_kgs = 0: open_kgs = rs1!openkgs
        Return_Bales = 0: Return_Bales = rs1!RTNBAL
        Return_Kgs = 0: Return_Kgs = rs1!rtnkgs
        RstWeight_BALES = 0: RstWeight_BALES = rs1!LOSSkgs
        RstWeight_Kgs = 0: RstWeight_Kgs = rs1!LOSSkgs
        prod_bales = 0: prod_bales = rs1!PRODBAL + rs1!PRODBOR
        prod_kgs = 0: prod_kgs = rs1!prodkgs
        Sales_Bales = 0: Sales_Bales = rs1!SALESBAL + rs1!SALESBOR
        Sales_Kgs = 0: Sales_Kgs = rs1!SALESKGS
        Transfer_Bales = 0: Transfer_Bales = rs1!TRANSBAL + rs1!transbor
        Transfer_Kgs = 0: Transfer_Kgs = rs1!transkgs
        JobWork_Bales = 0: JobWork_Bales = rs1!JWBAL + rs1!jwbor
        JobWork_Kgs = 0: JobWork_Kgs = rs1!JWKGS
        Rejected_Bales = 0: Rejected_Bales = rs1!REJBAL
        Rejected_Kgs = 0: Rejected_Kgs = rs1!rejkgs
        close_qty = 0: close_qty = rs1!Clsbal + rs1!clsBor
        If rs1("clsbal") + rs1("clsbor") = 0 Then
            Close_Kgs = 0
            Close_value = 0
        Else
            Close_Kgs = 0: Close_Kgs = rs1!clskgs
            Close_value = 0: Close_value = rs1!clsvalue
        End If
        
    
'        Print #a,
        Print #a, Space(2) + Padr(iNo, 4, " ") + Space(1) + Padr(rs1("VARNAME"), 9, " ") + Space(1) + Padr(rs1("Lotno"), 5, " ") + Space(1) + Padr(Format(rs1("lotdt"), "DD/MM/YY"), 8, " ") + Space(1) + Padr(rs1("Station"), 15, " ") + Space(1) + Padl(INF(open_bales, 0), 6, " ") + Space(1) + Padl(INF((open_kgs), 0), 9, " ") + Space(1) + Padl(INF(rs1("RecBal") + rs1!recbor, 0), 6, " ") + Space(1) + Padl(INF(rs1("Reckgs"), 0), 9, " ");
        Print #a, Space(1) + Padl(INF(Return_Bales, 0), 5, " ") + Space(1) + Padl(INF(Return_Kgs, 0), 8, " ") + Space(1) + Padl(INF(Round(RstWeight_BALES), 0), 5, " ") + Space(1) + Padl(INF(Round(RstWeight_Kgs), 0), 8, " ") + Space(1) + Padl(INF(val(prod_bales), 0), 5, " ");
        Print #a, Space(1) + Padl(INF(prod_kgs, 0), 8, " ") + Space(1) + Padl(INF(Sales_Bales, 0), 5, " ") + Space(1) + Padl(INF(Sales_Kgs, 0), 8, " ") + Space(1) + Padl(INF(Transfer_Bales, 0), 5, " ") + Space(1) + Padl(INF((Transfer_Kgs), 0), 8, " ") + Space(1) + Padl(INF(JobWork_Bales, 0), 5, " ");
        Print #a, Space(1) + Padl(INF((JobWork_Kgs), 0), 8, " ") + Space(1) + Padl(INF(Rejected_Bales, 0), 5, " ") + Space(1) + Padl(INF((Rejected_Kgs), 0), 8, " ") + Space(1) + Padl(INF(close_qty, 0), 7, " ") + Space(1) + Padl(INF(Round(Close_Kgs), 0), 10, " ") + Space(1) + Padl(INF(rs1!ratekg, 4), 8, " ") + Space(1) + Padl(INF(Close_value, 0), 12, " ")
        
        SNO = SNO + 1
        co = co + 1
   
        tot1 = tot1 + open_bales
        tot2 = tot2 + open_kgs
        tot3 = tot3 + rs1!RECBAL + rs1!recbor
        tot4 = tot4 + rs1!reckgs
        tot5 = tot5 + Return_Bales
        tot6 = tot6 + Return_Kgs
        tot7 = tot7 + RstWeight_BALES
        tot8 = tot8 + RstWeight_Kgs
        tot9 = tot9 + prod_bales
        tot10 = tot10 + prod_kgs
        tot11 = tot11 + Sales_Bales
        tot12 = tot12 + Sales_Kgs
        tot13 = tot13 + Transfer_Bales
        tot14 = tot14 + Transfer_Kgs
        tot15 = tot15 + JobWork_Bales
        tot16 = tot16 + JobWork_Kgs
        tot17 = tot17 + Rejected_Bales
        tot18 = tot18 + Rejected_Kgs
        tot19 = tot19 + close_qty
        tot20 = tot20 + Close_Kgs
        tot21 = tot21 + Close_value




        If co >= 60 Then  'pagelen
'            Print #a, Space(4) + String(225, "-")
'

            Print #a, Space(2) + String(225, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 10
            Call PartyHeaderStationWise(pg1, co, U, v, W, divname, issuetype)
            tot101 = 0: tot102 = 0
            tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0
            tot118 = 0
            tot119 = 0
            tot120 = 0
            tot121 = 0
            tot122 = 0
            tot123 = 0: tot124 = 0: tot125 = 0
            pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
        End If
        End If
10:
    rs1.MoveNext
Loop
        Print #a,
        Print #a, Space(2) + String(225, "-")

        Print #a, Space(10) + Padr("Grand Total", 22, " ") + Space(16) + Padl(INF(tot1, 0), 6, " ") + Space(1) + Padl("", 9, " ") + Space(1) + Padl(INF(tot3, 0), 6, " ") + Space(1) + Padl("", 9, " ");
        Print #a, Space(1) + Padl(INF(tot5, 0), 5, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(Round(tot7), 0), 5, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(val(tot9), 0), 5, " ");
        Print #a, Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(tot11, 0), 5, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(tot13, 0), 5, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(tot15, 0), 5, " ");
        Print #a, Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(tot17, 0), 5, " ") + Space(1) + Padl("", 8, " ") + Space(1) + Padl(INF(tot19, 0), 7, " ") + Space(1) + Padl("", 14, " ") + Space(1) + Padl(INF(tot21, 0), 17, " ")
       
        Print #a, Space(48) + Padl(INF(0, 0), 6, " ") + Space(1) + Padl(INF((tot2), 0), 9, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl(INF(tot4, 0), 9, " ");
        Print #a, Space(1) + Padl(INF(0, 0), 5, " ") + Space(1) + Padl(INF(tot6, 0), 8, " ") + Space(1) + Padl("", 5, " ") + Space(1) + Padl(INF(Round(tot8), 0), 8, " ") + Space(1) + Padl(INF(0, 0), 3, " "); Space(1) + Padl(INF(val(tot10), 0), 12, " ");
        Print #a, Space(1) + Padl(INF(0, 0), 8, " ") + Space(1) + Padl(INF(tot12, 0), 5, " ") + Space(1) + Padl(INF(0, 0), 8, " ") + Space(1) + Padl(INF(tot14, 0), 5, " ") + Space(1) + Padl(INF((0), 0), 8, " ") + Space(1) + Padl(INF(tot16, 0), 5, " ");
        Print #a, Space(1) + Padl(INF((0), 0), 8, " ") + Space(1) + Padl(INF(tot18, 0), 5, " ") + Space(1) + Padl(INF((0), 0), 0, " ") + Space(1) + Padl(INF(tot20, 0), 15, " ")
        Print #a, Chr(12)
        

totbal = tot5 + tot7
'Call CottonStock
'Call KALBATPROCESS("CotStock")
'RPTV.txtfile = "C:\CotStock.txt"
'RPTV.Batfile = "C:\CotStock.bat"

Close #a
a = FreeFile
'Open "D:\CotStock.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type sun.TXT>prn"
'Close #a
'RPTV.txtfile = "D:\CotStock.TXT"
'RPTV.Batfile = "D:\CotStock1.bat"
Call KALBATPROCESS("CotStock")
End Sub

Public Sub PartyHeaderVARIETY(pg1 As Integer, co As Integer, U As String, v As String, W As String, divname As String, ISSTYPE As String)
    Print #a,
    Print #a, Chr(18)
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    SR = Format(CStr(pdate), "DD/MM/YY") + Space(2)
    Print #a, Space(4) + Chr(27) + "E" + "Raw Material Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(18 + 30) & Padr("Categroy: " & Trim(Mid(W, InStr(1, W, "-") + 1, Len(W))) & "   Type: " & Trim(Mid(ISSTYPE, InStr(1, ISSTYPE, "-") + 1, Len(ISSTYPE))), 85, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1)
    Print #a, Space(4) + String(225, "-")
    Print #a, Space(4) + Padr("       ", 10, " ") + Space(5) + "                  " + Space(1) + "<---------------Receipt--------------->" + Space(1) + "                   " + Space(1) + "<-------------------------------------Issue---------------------------------->"
    Print #a, Space(4) + Padr("Variety", 10, " ") + Space(5) + "<-----Opening---->" + Space(1) + "<-----Received---->" + Space(1) + "<------Return----->" + Space(1) + "<---Weight Loss--->" + Space(1) + "<---Production---->" + Space(1) + "<------Sales------>" + Space(1) + "<----Transfer---->" + Space(1) + "<-----Jobwork----->" + Space(1) + "<----Rejected--->" + Space(1) + "<-----------Closing------------->"
    Print #a, Space(4) + Padr(" ", 10, " ") + Space(5) + "    Qty        Kgs" + Space(1) + "     Qty        Kgs" + Space(1) + "     Qty        Kgs" + Space(1) + "     Qty        Kgs" + Space(1) + "     Qty        Kgs" + Space(1) + "     Qty        Kgs" + Space(1) + "    Qty        Kgs" + Space(1) + "     Qty        Kgs" + Space(1) + "    Qty       Kgs" + Space(1) + "     Qty         Kgs        Value"
    Print #a, Space(4) + String(225, "-")
End Sub

Public Sub PartyHeaderStationWise(pg1 As Integer, co As Integer, U As String, v As String, W As String, divname As String, ISSTYPE As String)
    Print #a,
    Print #a, Chr(18)
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    SR = Format(CStr(pdate), "DD/MM/YY") + Space(2)
    Print #a, Space(2) + Chr(27) + "E" + "Raw Material Stock Statement Stationwise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(3) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(18 + 40) & Padr("Categroy: " & Trim(Mid(W, InStr(1, W, "-") + 1, Len(W))) & "   Type: " & Trim(Mid(ISSTYPE, InStr(1, ISSTYPE, "-") + 1, Len(ISSTYPE))), 75, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1)
    Print #a, Space(2) + String(225, "-")
    Print #a, Space(2) + Padl("", 4, " ") + Space(1) + Padr("", 9, " ") + Space(1) + Padr("Mill", 5, " ") + Space(1) + Padr("Mill", 8, " ") + Space(1) + Padl("", 16, " ") + Space(1) + Padl("", 10, " ") + Space(2) + CENTRE("<--------Receipt------------>", 41, " ") + Space(1) + Padl("", 7, " ") + Space(2) + CENTRE("<-------------------------Issues------------------------->", 60, "") + Space(0) + Padl("", 12 - 1, " ") + Space(1) + Padl("", 21 + 5, " ")
'    Print #a, Space(2) + Padl("S.no", 4, " ") + Space(1) + Padr("Variety", 9, " ") + Space(1) + Padr("Lot  ", 5, " "); Space(1) + Padr("Lot ", 8, " ") + Space(1) + Padr("Station", 15, " ") + Space(0) + Padl("<--Opening-->", 17, " ") + Space(2) + Padl("<-------Received------->", 21 + 4, " ") + Space(1) + Padl("<---Return---->", 15, " ") + Space(1) + Padl("<-Weight Loss->", 15, " ") + Space(1) + Padl("<-Production->", 14, " ") + Space(0) + Padl("<--Sales-->", 14 - 3, " ") + Space(0) + Padl("<-Transfer->", 12, " ") + Space(1) + Padl("<-JobWork-->", 12, " ") + Space(0) + Padl("<-Rejected->", 12, " ") + Space(3) + Padl("<-----Closing Stock----->", 21 + 5, " "); Space(1) + Padr("Rate / Kg", 10, " ") + Space(1) + Padr("Value", 10, " ")
    Print #a, Space(2) + Padr("S.No.", 4, " ") + Space(1) + Padr("Variety", 9, " ") + Space(1) + Padr("Lot", 5, " ") + Space(1) + Padr("Lot", 8, " ") + Space(1) + Padr("Station", 15, " ") + Space(1) + Padl("<--Opening-->", 16, " ") + Space(1) + Padl("<--Received-->", 16, " ") + Space(1) + Padl("<--Return-->", 14, " ") + Space(1) + Padl("<-Weight Loss->", 15, " ") + Space(0) + Padl("<-Production->", 15, " ") + Space(0) + Padl("<---Sales-->", 14, " ") + Space(1) + Padl("<--Transfer-->", 14, " ") + Space(1) + Padl("<--job Work-->", 14, " ") + Space(1) + Padl("<--Rejected-->", 14, " ") + Space(1) + Padl("<--Closing-->", 18, " ") + Space(1) + Padl("Rate/Kg", 8, " ") + Space(1) + Padl("Value", 12, " ")
    Print #a, Space(2) + Padr("", 4, " ") + Space(1) + Padr("", 9, " ") + Space(1) + Padr("No.", 5, " ") + Space(1) + Padr("Date", 8, " ") + Space(1) + Padr("", 15, " ") + Space(1) + Padl("Qty", 6, " ") + Space(1) + Padl("Kgs", 9, " ") + Space(1) + Padl("Qty", 6, " ") + Space(1) + Padl("Kgs", 9, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 8, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 8, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 8, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 8, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 8, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 8, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 8, " ") + Space(1) + Padl("Qty", 7, " ") + Space(1) + Padl("Kgs", 10, " ")
                               'Year                         Sno                            supname                             variety                           lotno                         rate                            opbal                           opkg                 REcd Bal                 Rec Kgs               REc Value                       Ret Bal                             Ret Kgs                                 WtBAl                                WtKgs                               Iss Bal                         IssKgs                     salesBal                        SaleKgs                                Trans Bal                  TRans Kgs                     JobWrk Bal                      JobWrk Kgs               Rej Bal             REj Kgs                        CloseBal             Close Kg            Close Val
' 'latest Copy
    'Print #a, Space(3) + Padl("Year", 4, " ") + Space(1) + Padl("S.no", 4, " ") + Space(1) + Padr("Supplier Name", 20, " ") + Space(1) + Padr("Variety", 10, " ") + Space(1) + Padl("LotNo", 5, " ") + Space(1) + Padl("Rate", 10, " ") + Space(1) + Padl("Opening", 15 + 1, " ") + Space(1) + Padl("Received", 21, " ") + Space(1) + Padl("Return", 15, " ") + Space(1) + Padl("WeightLoss", 15, " ") + Space(1) + Padl("Issued", 15, " ") + Space(1) + Padl("Sales", 15 - 4, " ") + Space(1) + Padl("Transfer", 12 - 1, " ") + Space(1) + Padl("JobWork", 15 - 4, " ") + Space(1) + Padl("Rejected", 12 - 1, " ") + Space(1) + Padl("Closing Stock", 21 + 5, " ")
    'Print #a, Space(3) + Padl(" ", 4, " ") + Space(1) + Padl(" ", 4, " ") + Space(1) + Padr(" ", 20, " ") + Space(1) + Padr(" ", 10, " ") + Space(1) + Padl(" ", 5, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padl("Bls", 8, " ") + Space(1) + Padl("Kgs", 8, " ") + Padl("Bls", 7, " ") + Padl("Kgs", 7, " ") + Padl("Value", 7, " ") + Space(1) + Padl("Bls", 5 + 2, " ") + Space(1) + Padl("Kgs", 6 + 1, " ") + Space(1) + Padl("Bls", 5 + 2, " ") + Space(1) + Padl("Kgs", 6 + 1, " ") + Space(1) + Padl("Bls", 7, " ") + Space(1) + Padl("Kgs", 7, " ") + Space(1) + Padl("Bls", 5, " ") + Space(1) + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 5, " ") + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 5, " ") + Space(1) + Padl("Kgs", 6, " ") + Padl("Bls", 5, " ") + Padl("Kgs", 6, " ") + Space(1) + Padl("Bls", 7, " ") + Padl("Kgs", 7, " ") + Padl("Value", 12, " ")
    Print #a, Space(2) + String(225, "-")
End Sub

Public Sub CottonStockLotReportSupplier(U As String, v As String, W As String, fltn As String, tltn As String, FVar As String, TVar As String, fs As String, ts As String, issuetype As String)
    Set Cnn = New Connection
    PageLen = 63
    Set rs2 = New Recordset
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring

    catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
    vrectype = Trim(Left(issuetype, 3))
    Dim SNO As Integer
    SNO = 1
    
    strsq = ""
    strSQL = " select B.supcd,D.slname,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
    strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
    strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
    strSQL = strSQL + " FROM ("
    strSQL = strSQL + gStockStatement(U, v)
    strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,fa_slmas D WHERE D.slcode = B.supcd and B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND C.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND B.supcd BETWEEN '" & fs & "' AND '" & ts & "' AND B.lotno BETWEEN '" & fltn & "' AND '" & tltn & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

    If UCase(Trim(catcd)) <> "ALL" Then
        If UCase(vrectype) <> "ALL" Then
            If UCase(vrectype) = "A" Then
                strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by B.supcd,D.slname Order by B.supcd,D.slname"
            Else
                strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by B.supcd,D.slname Order by B.supcd,D.slname"
            End If
        Else
            strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by B.supcd,D.slname Order by B.supcd,D.slname"
        End If
    Else
        If UCase(vrectype) <> "ALL" Then
            If UCase(vrectype) = "A" Then
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by B.supcd,D.slname"
            Else
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by B.supcd,D.slname Order by B.supcd,D.slname"
            End If
        Else
            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by B.supcd,D.slname Order by B.supcd,D.slname"
        End If
    End If
    Set rs1 = New Recordset
    rs1.Open strSQL, db, adOpenStatic

    If rs1.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
    Set rptv = New Report.ReportView
    a = FreeFile
    Close #a
    'Open "C:\CotStock.TXT" For Output As #a
     Open KALFOLDERDATA & "\CotStock.TXT" For Output As #a
    pg1 = 1
    co = 0
    Print #a,
    
    Call PartyHeaderSupplier(pg1, co, U, v, W, divname, issuetype)
    co = 10
    op2 = 0: op3 = 0: P4 = 0: op5 = 0: op6 = 0: op7 = 0: totbal = 0: tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0:
    tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
    tot16 = 0: tot17 = 0: tot18 = 0: tot19 = 0: tot20 = 0: tot21 = 0: tot22 = 0: tot23 = 0

tot101 = 0: tot102 = 0: tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0: tot118 = 0: tot119 = 0: tot120 = 0: tot121 = 0: tot122 = 0: tot123 = 0
    rs1.MoveFirst
    Total_Kgs = 0: Total_Bales = 0: Total_Value = 0
    pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
    Close_Kgs = 0: cloqty = 0: Close_value = 0
    Do While Not rs1.EOF
        If rs1!OpenVALUE <> 0 Or rs1!recvalue <> 0 Then
        open_bales = 0: open_bales = rs1!OpenBAL + rs1!OpenBor
        open_kgs = 0: open_kgs = rs1!openkgs
        Return_Bales = 0: Return_Bales = rs1!RTNBAL
        Return_Kgs = 0: Return_Kgs = rs1!rtnkgs
        RstWeight_BALES = 0: RstWeight_BALES = rs1!LOSSkgs
        RstWeight_Kgs = 0: RstWeight_Kgs = rs1!LOSSkgs
        prod_bales = 0: prod_bales = rs1!PRODBAL + rs1!PRODBOR
        prod_kgs = 0: prod_kgs = rs1!prodkgs
        Sales_Bales = 0: Sales_Bales = rs1!SALESBAL + rs1!SALESBOR
        Sales_Kgs = 0: Sales_Kgs = rs1!SALESKGS
        Transfer_Bales = 0: Transfer_Bales = rs1!TRANSBAL + rs1!transbor
        Transfer_Kgs = 0: Transfer_Kgs = rs1!transkgs
        JobWork_Bales = 0: JobWork_Bales = rs1!JWBAL + rs1!jwbor
        JobWork_Kgs = 0: JobWork_Kgs = rs1!JWKGS
        Rejected_Bales = 0: Rejected_Bales = rs1!REJBAL
        Rejected_Kgs = 0: Rejected_Kgs = rs1!rejkgs
        close_qty = 0: close_qty = rs1!Clsbal + rs1!clsBor
        Close_Kgs = 0: Close_Kgs = rs1!clskgs
        Close_value = 0: Close_value = rs1!clsvalue
    
        Print #a,
        Print #a, Space(2) + Padr(rs1("slname"), 44, " ") + Space(0) + Padl(INF(open_bales, 0), 8, " ") + Space(1) + Padl(INF((open_kgs), 0), 10, " ") + Space(1) + Padl(INF(rs1("RecBal") + rs1!recbor, 0), 5, " ") + Space(1) + Padl(INF(rs1("Reckgs"), 0), 10, " ");
        Print #a, Space(1) + Padl(INF(Return_Bales, 0), 5, " ") + Space(1) + Padl(INF(Return_Kgs, 0), 10, " ") + Space(1) + Padl(INF(Round(RstWeight_BALES), 0), 5, " ") + Space(1) + Padl(INF(Round(RstWeight_Kgs), 0), 10, " ") + Space(1) + Padl(INF(val(prod_bales), 0), 5, " ");
        Print #a, Space(1) + Padl(INF(prod_kgs, 0), 10, " ") + Space(1) + Padl(INF(Sales_Bales, 0), 5, " ") + Space(1) + Padl(INF(Sales_Kgs, 0), 10, " ") + Space(1) + Padl(INF(Transfer_Bales, 0), 5, " ") + Space(1) + Padl(INF((Transfer_Kgs), 0), 10, " ") + Space(1) + Padl(INF(JobWork_Bales, 0), 5, " ");
        Print #a, Space(1) + Padl(INF((JobWork_Kgs), 0), 10, " ") + Space(1) + Padl(INF(Rejected_Bales, 0), 5, " ") + Space(1) + Padl(INF((Rejected_Kgs), 0), 10, " ") + Space(1) + Padl(INF(close_qty, 0), 8, " ") + Padl(INF(Round(Close_Kgs), 0), 10, " ") + Space(1) + Padl(INF(Close_value, 0), 12, " ")
        
        SNO = SNO + 1
        co = co + 1
   
        tot1 = tot1 + open_bales
        tot2 = tot2 + open_kgs
        tot3 = tot3 + rs1!RECBAL + rs1!recbor
        tot4 = tot4 + rs1!reckgs
        tot5 = tot5 + Return_Bales
        tot6 = tot6 + Return_Kgs
        tot7 = tot7 + RstWeight_BALES
        tot8 = tot8 + RstWeight_Kgs
        tot9 = tot9 + prod_bales
        tot10 = tot10 + prod_kgs
        tot11 = tot11 + Sales_Bales
        tot12 = tot12 + Sales_Kgs
        tot13 = tot13 + Transfer_Bales
        tot14 = tot14 + Transfer_Kgs
        tot15 = tot15 + JobWork_Bales
        tot16 = tot16 + JobWork_Kgs
        tot17 = tot17 + Rejected_Bales
        tot18 = tot18 + Rejected_Kgs
        tot19 = tot19 + close_qty
        tot20 = tot20 + Close_Kgs
        tot21 = tot21 + Close_value

        If co >= 60 Then  'pagelen
            Print #a, Chr(12)
            pg1 = pg1 + 1
            
            Call PartyHeaderSupplier(pg1, co, U, v, W, divname, issuetype)
            tot101 = 0: tot102 = 0
            tot109 = 0: tot110 = 0: tot111 = 0: tot112 = 0
            tot113 = 0: tot114 = 0: tot115 = 0: tot116 = 0
            tot117 = 0
            tot118 = 0
            tot119 = 0
            tot120 = 0
            tot121 = 0
            tot122 = 0
            tot123 = 0: tot124 = 0: tot125 = 0
            pgTotal_Bales = 0: pgTotal_kgs = 0: pgTotal_value = 0
        End If
        End If
10:
    rs1.MoveNext
Loop
        Print #a,
        Print #a, Space(2) + String(231, "-")
        Print #a, Space(2) + Padr("Grand Total", 44, " ") + Space(0) + Padl(INF(tot1, 0), 8, " ") + Space(1) + Space(10) + Space(1) + Padl(INF(tot3, 0), 5, " ") + Space(1) + Space(10);
        Print #a, Space(1) + Padl(INF(tot5, 0), 5, " ") + Space(1) + Space(10) + Space(1) + Padl(INF(Round(tot7), 0), 5, " ") + Space(1) + Space(10) + Space(1) + Padl(INF(val(tot9), 0), 5, " ") + Space(1) + Space(10);
        Print #a, Space(1) + Padl(INF(tot11, 0), 5, " ") + Space(1) + Space(10) + Space(1) + Padl(INF(tot13, 0), 5, " ") + Space(1) + Space(10) + Space(1) + Padl(INF((tot15), 0), 5, " ") + Space(1) + Space(10);
        Print #a, Space(1) + Padl(INF((tot17), 0), 5, " ") + Space(1) + Space(10) + Space(1) + Padl(INF((tot19), 0), 8, " ") + Space(10) + Space(1) + Padl(INF(Round(tot21), 0), 12, " ")
        Print #a, Space(2) + Padr("", 44, " ") + Space(0) + Space(8) + Space(1) + Padl(INF((tot2), 0), 10, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(tot4, 0), 10, " ");
        Print #a, Space(1) + Space(5) + Space(1) + Padl(INF(tot6, 0), 10, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(Round(tot8), 0), 10, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(val(tot10), 0), 10, " ");
        Print #a, Space(1) + Space(5) + Space(1) + Padl(INF(tot12, 0), 10, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(tot14, 0), 10, " ") + Space(1) + Space(5) + Space(1) + Padl(INF(tot16, 0), 10, " ");
        Print #a, Space(1) + Space(5) + Space(1) + Padl(INF(tot18, 0), 10, " ") + Space(1) + Space(8) + Padl(INF(Round(tot20), 0), 10, " ")
        Print #a, Space(2) + String(231, "-")
        Print #a, Chr(12)
        

totbal = tot5 + tot7
Call CottonStock
rptv.txtfile = "C:\CotStock.txt"
rptv.Batfile = "C:\CotStock.bat"
End Sub

Public Sub PartyHeaderSupplier(pg1 As Integer, co As Integer, U As String, v As String, W As String, divname As String, ISSTYPE As String)
    Print #a,
    Print #a, Chr(18)
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    SR = Format(CStr(pdate), "DD/MM/YY") + Space(2)
    Print #a, Space(2) + Chr(27) + "E" + "Raw Material Stock statement Supplierwise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(18 + 30) & Padr("Categroy: " & Trim(Mid(W, InStr(1, W, "-") + 2, Len(W))) & "   Type: " & Trim(Mid(ISSTYPE, InStr(1, ISSTYPE, "-") + 2, Len(ISSTYPE))), 85, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1)
    Print #a, Space(2) + String(231, "-")
    Print #a, Space(2) + Space(44) + Space(0) + Space(19) + Space(1) + Padr("<------------Receipt------------>", 33, " ") + Space(1) + Space(16) + Space(1) + Padr("<------------------------------Issue------------------------------>", 67, " ")
    Print #a, Space(2) + Padr("Supplier Name", 44, " ") + Space(0) + Padr("<-----Opening---->", 19, " ") + Space(1) + Padr("<---Received--->", 16, " ") + Space(1) + Padr("<----Return---->", 16, " ") + Space(1) + Padr("<--Weight Loss->", 16, " ") + Space(1) + Padr("<--Production-->", 16, " ") + Space(1) + Padr("<-----Sales---->", 16, " ") + Space(1) + Padr("<---Transfer-->", 16, " ") + Space(1) + Padr("<----Jobwork--->", 16, " ") + Space(1) + Padr("<--Rejected-->", 16, " ") + Space(1) + Padr("<-----------Closing----------->", 31, " ")
    Print #a, Space(2) + Padr("", 44, " ") + Space(0) + Padl("Qty", 8, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padr("Qty", 5, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 10, " ") + Space(1) + Padl("Qty", 8, " ") + Padl("Kgs", 10, " ") + Space(1) + Padl("Value", 12, " ")
    Print #a, Space(2) + String(231, "-")
    co = co + 11
End Sub
