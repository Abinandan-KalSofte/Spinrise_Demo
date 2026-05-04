Attribute VB_Name = "Cotton_Recon"
Dim Rs As Recordset
Dim cn As Connection
Dim pg1, a As Integer
Dim co As Integer
Dim rev As Report.ReportView
Dim diff As Double
Public Sub Cotton_Reconcil()
co = 0
pg1 = 1
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
intervalMinutes = -1

Rs.Open "SELECT a.plotno,c.slname,A.LOTNO,A.LOTDT,A.BALES,isnull(NETWT,0)NETWT,(isnull(SUM(B.ACTISSKGS),0)) ISSWT FROM " & _
"RM_LOT A,RM_ISSB B,fa_slmas c where  a.supcd=c.slcode and a.divcode=b.divcode and A.lotno=B.lotno AND A.LOTDT=B.LOTDT AND (ISNULL(A.BALES,0)-ISNULL(A.ISSBAL,0))=0 and A.divcode='" & Divcode & "' and a.lotYEAR='" & Year(yfdate) & "'  and a.rejflg='N' and b.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' GROUP BY a.plotno,c.slname,A.LOTNO,A.LOTDT,NETWT,TAREWT,BALES ,ISSWT ORDER BY A.LOTNO", DB, adOpenStatic, adLockBatchOptimistic

If Rs.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
'    Exit Sub
End If
Set rev = New Report.ReportView
a = FreeFile()
Close #a
'Open "c:\cottonrec.txt" For Output As #a
 Open KALFOLDERDATA & "\cottonrec.TXT" For Output As #a
Call cotrec
Do While Not Rs.EOF
diff = Rs("netwt") - Rs("isswt")
Print #a, Space(8) & Padr(Rs("plotno"), 5, " ") & Space(4) & Padr(Rs("slname"), 45, " ") & Space(5) & Padr(Rs("lotno"), 5, " ") & Space(3) & Padr(Format(Rs("lotdt"), "DD/MM/YY"), 8, " ") & _
Space(1) & Padl(Rs("bales"), 13, " ") & Space(2) & Padl(INF(Rs("netwt"), 3), 14, " ") & Space(2) & _
Padl(INF(Rs("isswt"), 3), 14, " ") & Space(2) & Padl(INF(diff, 3), 14, " ")
co = co + 1
tot1 = tot1 + Rs("bales")
tot2 = tot2 + Rs("netwt")
tot3 = tot3 + Rs("isswt")
tot4 = tot4 + diff
      If co > PageLen Then
            Print #a, String(80, "-")
            Print #a, Chr(12)
            co = 0
            pg1 = pg1 + 1
            Call cotrec
      End If
Rs.MoveNext
Loop
Print #a, Space(5) & String(145, "-")
Print #a, Space(5) & "** Grand total **" & Space(67) & Padl(INF(tot1, 0), 8, " ") & Space(2) & Padl(INF(tot2, 3), 14, " ") & Space(2); Padl(INF(tot3, 3), 14, " ") & Space(2) & Padl(INF(tot4, 3), 14, " ")
Print #a, Space(5) & String(145, "-")
Close #a
a = FreeFile
'Open "c:\cottonrec.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type cottonrec.TXT>prn"
'Close #a
'rev.txtfile = "c:\cottonrec.TXT"
'rev.Batfile = "c:\cottonrec.bat"
Call KALBATPROCESS("cottonrec")
Screen.MousePointer = 0
intervalMinutes = -1

End Sub
Public Sub cotrec()
intervalMinutes = -1
co = 0
Print #a,
Print #a, Space(5) & Chr(27) + "E" & CENTRE(divname, 80, " ") & Chr(27) + "F"
Print #a,
Print #a, Space(5) & Chr(27) + "E" & "LOT WISE LOSS OR GAIN REPORT " & Chr(27) + "F" & Space(80) & "Dt " & pdate & Space(2) & "Pg.: " & CInt(pg1)
Print #a, Space(5) & String(145, "-")
Print #a, Space(5) & "SuppLOTNO" & Space(1) & "   SuppName  " & Space(35) & "LOTNO" & Space(5) & "   LOTDT  " & Space(2) & "NO OF BALES" & Space(11) & Padr("NETWT", 14, " ") & _
Space(2) & Padr("ISSWT", 14, " ") & Space(3) & "DIFF"
Print #a, Space(5) & String(145, "-")
co = 7
End Sub
Public Sub BinStockReport(sFromDate As String, sToDate As String, iFromLot As Integer, iToLot As Integer, footerstr As String)
Dim STR As String
Dim tot5, tot6, tot7, gtot5, gtot6, gtot7 As Double
Dim r As String
Dim s As String
Dim sLotYear As String
Dim temp1 As String
Dim iCnt As Integer

pg = 1
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring


Set RS2 = New Recordset
RS2.Open "select * from RM_issreqb where lotno between " & val(iFromLot) & " And " & val(iToLot) & " AND docdt between '" & Format(sFromDate, "YYYY/MM/DD") & "' and '" & Format(sToDate, "YYYY/MM/DD") & "'", DB, adOpenStatic
If RS2.RecordCount = 0 Then
    MsgBox "No records Found ", vbInformation, head
    Screen.MousePointer = 0
     Exit Sub
End If

Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Close
'Open "c:\BinStock.txt" For Output As #1
Open KALFOLDERDATA & "\BinStock.TXT" For Output As #1

pg1 = 1
intervalMinutes = -1
co = 9
        strSQL = " select x.lotno,x.lotdt,((sum(clobales)+ sum(cloboras)) - (sum(reqbal)+ sum(rejbal))) as binqty,sum(reqbal) as reqbal,sum(rejbal) as rejbal, sum(clobales)+ sum(cloboras) as cloqty from ("
        strSQL = strSQL + " select a.LOTNO,A.LOTDT,0 as Reqbal,0 as RejBal,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS "
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(yfdate, yldate)
        strSQL = strSQL + " ) A  where a.lotno between " & val(iFromLot) & " And " & val(iToLot) & "  group by a.lotno,a.lotdt"
        strSQL = strSQL + " UNION ALL "
        strSQL = strSQL + " Select Distinct Lotno,lotdt, sum(isnull(Baleno,0)) as ReqBal, 0 as Rejbal, 0 as Clobales,0 as cloboras from rm_issreqb where lotno between " & val(iFromLot) & " And " & val(iToLot) & " AND docdt between '" & Format(sFromDate, "YYYY/MM/DD") & "' and '" & Format(sToDate, "YYYY/MM/DD") & "' group by lotno ,lotdt "
        strSQL = strSQL + " UNION ALL "
        strSQL = strSQL + " Select Distinct Lotno,lotdt, 0 as ReqBal, sum(isnull(rejqty,0)) as Rejbal, 0 as Clobales,0 as cloboras from rm_issuebinstock where lotno between " & val(iFromLot) & " And " & val(iToLot) & " AND docdt between '" & Format(sFromDate, "YYYY/MM/DD") & "' and '" & Format(sToDate, "YYYY/MM/DD") & "' group by lotno ,lotdt "
        strSQL = strSQL + " )x group by x.lotno,x.lotdt having sum(reqbal) <> 0"
        
    Rs.Open strSQL, DB, adOpenStatic




co = 0: C1 = 0
tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: gtot6 = 0: gtot7 = 0
temp1 = "": STR = ""
iCnt = 0

    Call BinStockReportHeader(CStr(sFromDate), CStr(sToDate), CInt(pg1))
    Do While Not Rs.EOF
       
        If co >= 60 Then
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call BinStockReportHeader(CStr(sFromDate), CStr(sToDate), CInt(pg1))
            co = 9
        End If
      
        Set RS2 = New Recordset
        RS2.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(Rs("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
        If RS2.EOF = False Then
            sLotYear = Format(RS2("AYFDATE"), "YYYY")
        Else
            sLotYear = Format(Rs("LOTDT"), "YYYY")
        End If
        
        
        Print #1, Space(2) & Padl(Rs("lotno"), 8, " ") & Space(2) & Padl(Format(Rs("lotdt"), "dd/MM/yy"), 10, " ") & Space(2) & Padl(sLotYear, 8, " ") & Space(2) & Padl(Rs("Binqty"), 10, " ") & Space(2) & Padl(Rs("reqbal"), 10, " ") & Space(2) & Padl(Rs("Rejbal"), 10, " ") & Space(2) & Padl(Rs("cloqty"), 10, " ")
        
        
        co = co + 1
        C1 = C1 + 1
        If co >= 63 Then
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call BinStockReportHeader(CStr(sFromDate), CStr(sToDate), CStr(pg1))
            co = 9
        End If
        ''Sub Total
        tot5 = tot5 + IIf(IsNull(Rs("Binqty")), 0, Rs("Binqty"))
        tot6 = tot6 + IIf(IsNull(Rs("ReqBal")), 0, Rs("ReqBal"))
        tot7 = tot7 + IIf(IsNull(Rs("RejBal")), 0, Rs("RejBal"))
        tot8 = tot8 + IIf(IsNull(Rs("cloqty")), 0, Rs("cloqty"))
        
        Rs.MoveNext
    Loop
    intervalMinutes = -1
    Print #1, Space(2) & String(80, "-")
    Print #1, Space(2) & Padl("", 8, " ") & Space(2) & Padl("** Total **", 10, " ") & Space(2) & Padl("", 8, " ") & Space(2) & Padl(tot5, 10, " ") & Space(2) & Padl(tot6, 10, " ") & Space(2) & Padl(tot7, 10, " ") & Space(2) & Padl(tot8, 10, " ")
    Print #1, Space(2) & String(80, "=")
    Print #1,
    Print #1,
    Print #1,
    Call footermod(CInt(1), footerstr, 85)
    Print #1, Chr(12)
    Screen.MousePointer = 0
    Close #1
'Open "c:\BinStock.bat" For Output As #1
'Print #1, "cd\"
'Print #1, "c:"
'Print #1, "cd\"
'Print #1, "type carr.txt>prn"
'rev.txtfile = "c:\BinStock.txt"
'rev.Batfile = "c:\BinStock.bat"
'Close #1
'1= FreeFile
Call KALBATPROCESS("BinStock")

End Sub
Public Sub BinStockReportHeader(a As String, B As String, pg1 As Integer)
intervalMinutes = -1
Print #1, Chr(18)
Print #1, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1, Chr(18)
Print #1, Space(2) & Chr(27) & "E" & Padr("Rejection Stock Report", 22, " ") & Chr(27) & "F" & " from " & Padr(Format(a, "dd/mm/yy"), 8, " ") & " to " & Padr(Format(B, "dd/mm/yy"), 8, " ") & Space(9) & Padr(Format(pdate, "dd/mm/yy"), 8, " ") & Space(2) & "Pg. No. :" & Padl(pg1, 3, " ")
Print #1, Space(2) & String(80, "-")
'Print #1, Space(2) & Padl("Lot No.", 8, " ") & Space(2) & Padl("Lot year", 8, " ") & Space(2) & Padr("Lorry Number", 12, " ") & Space(3) & Padr("No of Bales", 12, " ") & Space(1) & Padl("Frt Amount", 12, " ") & Space(2) & Padr("Station", 16, " ")
Print #1, Space(2) & Padl("Lot No.", 8, " ") & Space(2) & Padl("Lot Date", 10, " ") & Space(2) & Padl("Lot Year", 8, " ") & Space(2) & Padl("Bin Stock", 10, " ") & Space(2) & Padl("Requistion", 10, " ") & Space(2) & Padl("Rejection", 10, " ") & Space(2) & Padl("Total", 10, " ")
Print #1, Space(2) & Padl("       ", 8, " ") & Space(2) & Padl("        ", 10, " ") & Space(2) & Padl("        ", 8, " ") & Space(2) & Padl("Qty", 10, " ") & Space(2) & Padl("Qty", 10, " ") & Space(2) & Padl("Qty", 10, " ") & Space(2) & Padl("Qty", 10, " ")

Print #1, Space(2) & String(80, "-")
co = co + 7
End Sub

