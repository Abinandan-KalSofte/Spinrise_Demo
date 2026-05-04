Attribute VB_Name = "STOCKSTMTLOT"
Dim rsP As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9 As Double
Dim rsP1 As New Recordset
Dim opf As New Recordset
Dim cat As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Dim rp As New repform1
Dim sLotYear As String


'Public Sub StockLotReport1(u As String, v As String, w As String, fltn As Integer, tltn As Integer, footerstr As String, Optional pRecType As String)
Public Sub StockLotReport1(U As String, V As String, W As String, fltn As Integer, tltn As Integer, pRecType As String, Optional footerstr As String)
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
Dim totbal As Double
Dim cnn As Connection
Set cnn = New Connection
PageLen = 63
Set RS2 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
cnn.CommandTimeout = 2000
db.CommandTimeout = 2000
vrectype = Trim(Left(pRecType, 3))
catcd = Trim(Left(W, 1))

    Set rs1 = New Recordset

        strSQL = " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,BBLFLG as unit,RATECY,RATEKG,E.SLNAME,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, V)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

                    
        If Trim(Left(W, 3)) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Left(W, 1)) & "' and b.divcode ='" & Divcode & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Left(W, 1)) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Left(W, 1)) & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Left(W, 1)) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
            End If
        End If
        
    rs1.Open strSQL, cnn, adOpenStatic
    If rs1.EOF Then
        MsgBox "No Stock found for this month", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\slot.TXT" For Output As #a
Open KALFOLDERDATA & "\slot.TXT" For Output As #a
pg1 = 1
Co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
Co = 10
op2 = 0
op3 = 0
op4 = 0
op5 = 0
op6 = 0
op7 = 0
totbal = 0
rs1.MoveFirst
Do While Not rs1.EOF
        Set Rs = New Recordset
        Rs.Open "Select Ayfdate from pp_year Where AyfDate <= '" & Format(rs1("Lotdt"), "YYYY-MM-DD") & "' and Ayldate >='" & Format(rs1("lotdt"), "YYYY-MM-DD") & "'", db, adOpenStatic
        If Rs.EOF = False Then
            sLotYear = Format(Rs(0), "YY")
        Else
            sLotYear = Format(rs1("Lotdt"), "YY")
        End If
        
        
            clokgs = rs1("CLOKGS")
        
        cloqty = 0
        cloqty = rs1("CLOBALES") + rs1("CLOBORAS")
        issKgs = 0
        value = 0
        
            issKgs = rs1("ISSKGS")
            value = IIf(IsNull(rs1("CLOvalue")), 0, rs1("CLOVALUE"))
        
            oPKG = rs1("opkgs")
        
        Set RS2 = New Recordset
        RS2.Open "SELECT rateunit FROM rm_cont a,RM_ARRIVAL b WHERE a.CONTNO=b.contno AND a.CONTDT=b.contdt AND a.DIVCODE=b.divcode AND a.SUPCD=b.supcd AND b.lotno=" & rs1("lotno") & " AND b.lotdt='" & Format(rs1("lotdt"), "yyyy-MM-dd") & "' AND a.DIVCODE='" & Divcode & "'", db, adOpenStatic
        If RS2.RecordCount > 0 Then
            If RS2("rateunit") = "KILOGRAMS" Then
                If Round(oPKGS, 0) > 0 Or Round(rs1("reckgs"), 0) > 0 Or Round(issKgs, 0) > 0 Or cloqty > 0 Or Round(clokgs, 0) > 0 Then
                    Print #a, Space(5) + Padr(rs1("catname"), 10, " ") + Padl(INF(rs1("lotno"), 0), 7, " ") + "/" + Padr(sLotYear, 3, " ") + Space(2) + Padr(rs1("plotno"), 8, " ") + Space(2) + Padr(Format(rs1("lotdt"), "dd-mm-yy"), 12, " ") + Padr(rs1("varname"), 14, " ") + Padl(INF(oPKG, 3), 15, " ") + Padl(INF(rs1("reckgs"), 3), 22, " ") + Padl(INF(issKgs, 3), 20, " ") + Space(1) + Padl(INF(rs1("rejkgs"), 3), 12, " ") + Space(1) + Padl(INF(cloqty, 0), 6, " ") + Space(8) + Padr(CStr(IIf(rs1("unit") = "B", "BALES", "BORAH")), 6, " ") + Space(4) + Padl(INF(clokgs, 3), 20, " ") + Padl(INF(rs1("ratekg"), 2), 16, " ") + Space(2) + Padl(INF(rs1("rateCY") * 355.6187, 2), 11, " ") + Padl(INF(value, 2), 22, " ")
                End If
                 Co = Co + 1
            ElseIf RS2("rateunit") = "CANDY" Then
                If Round(oPKGS, 0) > 0 Or Round(rs1("reckgs"), 0) > 0 Or Round(issKgs, 0) > 0 Or cloqty > 0 Or Round(clokgs, 0) > 0 Then
                    Print #a, Space(5) + Padr(rs1("catname"), 10, " ") + Padl(INF(rs1("lotno"), 0), 7, " ") + "/" + Padr(sLotYear, 3, " ") + Space(2) + Padr(rs1("plotno"), 8, " ") + Space(2) + Padr(Format(rs1("lotdt"), "dd-mm-yy"), 12, " ") + Padr(rs1("varname"), 14, " ") + Padl(INF(oPKG, 3), 15, " ") + Padl(INF(rs1("reckgs"), 3), 22, " ") + Padl(INF(issKgs, 3), 20, " ") + Space(1) + Padl(INF(rs1("rejkgs"), 3), 12, " ") + Space(1) + Padl(INF(cloqty, 0), 6, " ") + Space(8) + Padr(CStr(IIf(rs1("unit") = "B", "BALES", "BORAH")), 6, " ") + Space(4) + Padl(INF(clokgs, 3), 20, " ") + Padl(INF(rs1("ratekg"), 2), 16, " ") + Space(2) + Padl(INF(rs1("rateCY"), 2), 11, " ") + Padl(INF(value, 2), 22, " ")
                End If
                 Co = Co + 1
            Else
                If Round(oPKGS, 0) > 0 Or Round(rs1("reckgs"), 0) > 0 Or Round(issKgs, 0) > 0 Or cloqty > 0 Or Round(clokgs, 0) > 0 Then
                    Print #a, Space(5) + Padr(rs1("catname"), 10, " ") + Padl(INF(rs1("lotno"), 0), 7, " ") + "/" + Padr(sLotYear, 3, " ") + Space(2) + Padr(rs1("plotno"), 8, " ") + Space(2) + Padr(Format(rs1("lotdt"), "dd-mm-yy"), 12, " ") + Padr(rs1("varname"), 14, " ") + Padl(INF(oPKG, 3), 15, " ") + Padl(INF(rs1("reckgs"), 3), 22, " ") + Padl(INF(issKgs, 3), 20, " ") + Space(1) + Padl(INF(rs1("rejkgs"), 3), 12, " ") + Space(1) + Padl(INF(cloqty, 0), 6, " ") + Space(8) + Padr(CStr(IIf(rs1("unit") = "B", "BALES", "BORAH")), 6, " ") + Space(4) + Padl(INF(clokgs, 3), 20, " ") + Padl(INF(rs1("ratekg"), 2), 16, " ") + Space(2) + Padl(INF(rs1("rateCY"), 2), 11, " ") + Padl(INF(value, 2), 22, " ")
                End If
                 Co = Co + 1
            End If
        Else
            If Round(oPKGS, 0) > 0 Or Round(rs1("reckgs"), 0) > 0 Or Round(issKgs, 0) > 0 Or cloqty > 0 Or Round(clokgs, 0) > 0 Then
                    Print #a, Space(5) + Padr(rs1("catname"), 10, " ") + Padl(INF(rs1("lotno"), 0), 7, " ") + "/" + Padr(sLotYear, 3, " ") + Space(2) + Padr(rs1("plotno"), 8, " ") + Space(2) + Padr(Format(rs1("lotdt"), "dd-mm-yy"), 12, " ") + Padr(rs1("varname"), 14, " ") + Padl(INF(oPKG, 3), 15, " ") + Padl(INF(rs1("reckgs"), 3), 22, " ") + Padl(INF(issKgs, 3), 20, " ") + Space(1) + Padl(INF(rs1("rejkgs"), 3), 12, " ") + Space(1) + Padl(INF(cloqty, 0), 6, " ") + Space(8) + Padr(CStr(IIf(rs1("unit") = "B", "BALES", "BORAH")), 6, " ") + Space(4) + Padl(INF(clokgs, 3), 20, " ") + Padl(INF(rs1("ratekg"), 2), 16, " ") + Space(2) + Padl(INF(rs1("rateCY"), 2), 11, " ") + Padl(INF(value, 2), 22, " ")
            End If
             Co = Co + 1
        End If
        
        tot12 = tot12 + oPKG  ''RS1("opkgs")
        tot2 = tot2 + rs1("reckgs")
        tot4 = tot4 + cloqty
        tot6 = tot6 + clokgs
        tot7 = tot7 + value
        tot8 = tot8 + value
        tot3 = tot3 + issKgs
        tot13 = tot13 + rs1("rejkgs")
'        Co = Co + 1
        If Co > PageLen Then
            Print #a, Space(5) + String(225, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            Co = 10
            Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
        End If
'End If
10:
    rs1.MoveNext
Loop
totbal = tot5 + tot7
Print #a,
Print #a, Space(5) + String(225, "-")
Print #a, Space(21) + " ** Grand Total **" + Padl(INF(tot12, 3), 40, " ") + Padl(INF(tot2, 3), 22, " ") + Padl(INF(tot3, 3), 20, " ") + Space(1) + Padl(INF(tot13, 3), 12, " ") + Space(0) + Padl(INF(tot4, 0), 7, " ") + Space(19) + Padl(INF(tot6, 3), 19, " ") + Space(5) + Padl(INF(" ", 2), 11, " ") + Space(3) + Padl(INF(tot8, 2), 32, " ")
Print #a, Space(5) + String(225, "-")
Print #a, Chr(18)
Print #a, Chr(12)
 Call footermod(CInt(a), footerstr, 85)
Close #a
a = FreeFile
'Open "C:\slot.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type slot.txt>prn"
'Close #a
'RPTV.txtfile = "C:\slot.txt"
'RPTV.Batfile = "C:\slot.bat"
Call KALBATPROCESS("slot")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String, DIVNAME As String)
          Print #a,
'          Print #a, Space(5) + Space(Round((232 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((232 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = Format(CStr(pdate), "dd/mm/yy") + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Stock statement Lotwise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(3) & "to" & Space(1) & Format(V, "dd/mm/yy") & Space(18) & Padr("Option : " & Mid(W, 1, (InStr(W, "-") - 1)) & "-" & getMasterName("catname", "rm_cat", "catcd", Mid(W, 1, (InStr(W, "-") - 1))), 40, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(225, "-")
          Print #a, Space(5) + "              Mill     Supplier                                 Open Stock              Receipts              Issues     Rejected    <---------------- Closing -------------->                        Rate/        "
          Print #a, Space(5) + "Category      Lot No.  Lot No.   Date        Variety                   Kgs                   Kgs                 Kgs          Kgs    Qty         Unit                Stock Kgs         Rate/Kg        Candy                 Value"
          Print #a, Space(5) + String(225, "-")
End Sub

