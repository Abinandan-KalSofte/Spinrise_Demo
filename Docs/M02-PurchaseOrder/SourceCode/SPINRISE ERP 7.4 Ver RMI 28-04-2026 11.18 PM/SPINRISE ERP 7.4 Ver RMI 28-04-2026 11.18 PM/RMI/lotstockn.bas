Attribute VB_Name = "lotstockn"
Dim rs1 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim z As Integer
Dim rp As New repform1
Dim dRateValue As Double
Dim dStockBales As Double
Dim dStockKgs As Double
Dim sLotYear As String

Public Sub LotstockReport(str As String, U As String, fltn As Integer, tltn As Integer, a As Integer, footerstr As String, Optional pRecType As String)
'Set gStockStatement = gStockStatement

Set cnn = New Connection
Dim V As String
str1 = str
catcd = str
a1 = U
V = U
'U = Format(yfdate, "yyyy-mm-dd")
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
    Set ResultRs = New Recordset
    db.CommandTimeout = 2000
    cnn.CommandTimeout = 2000
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

                    
        If Trim(str) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(str) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(str) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(str) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
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
        
    ResultRs.Open strSQL, cnn, adOpenStatic


    repform1.usrProgBarCntl1.Visible = True
    Call repform1.usrProgBarCntl1.ProgView(ResultRs.RecordCount, 0, repform1)

    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If

    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #z
    Close
'    Open "C:\Loso.TXT" For Output As #z
 Open KALFOLDERDATA & "\Loso.TXT" For Output As #z
    pg1 = 1
    Co = 0
    Call LotstockRepHeader(pg1, Co, S, V, a)
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      Sno = 1
      
       Do While Not ResultRs.EOF
       
            Call repform1.usrProgBarCntl1.ProgView(ResultRs.RecordCount, ResultRs.AbsolutePosition, repform1)
       
            'If ResultRs("clokgs") > 0 Then
            If ResultRs("clobales") + ResultRs("cloboras") > 0 Then
                cloqty = 0
                
                Set Rs = New Recordset
                Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(ResultRs("LOTDT"), "yyyy-MM-DD") & "'", db, adOpenStatic
                If Rs.EOF = False Then
                    sLotYear = Format(Rs("AYFDATE"), "YY")
                Else
                    sLotYear = Format(ResultRs("LOTDT"), "YY")
                End If
                
                
                
                If a = 0 Then

                    Set varrs = New Recordset
                    varrs.Open " select varcode from rm_var where varname='" & ResultRs("varname") & "'", db, adOpenStatic
                    Set temprs = New Recordset
                    temprs.Open "select supcd from rm_lot where (rejflg='N' or rejdt >'" & Format(yfdate, "yyyy-mm-dd") & "')and lotno=" & ResultRs("lotno") & " and lotdt='" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and DIVCODE ='" & Divcode & "'", db, adOpenStatic
                    Set partyrs = New Recordset
                    partyrs.Open "select slname from fa_slmas where slcode='" & temprs(0) & "'", db, adOpenStatic

                    cloqty = ResultRs("cloboras") + ResultRs("clobales")
                    value = 0
                    RATECANDY = 0
                    If IsNull(ResultRs("ratecy")) = True Then
                        RATECANDY = 0
                    Else
                        RATECANDY = ResultRs("ratecy")
                    End If
                    If RATECANDY = 0 Then
                        RATECANDY = Round(ResultRs("ratekg") * 355.6187, 0)
                    End If
                    If cloqty <= 0 Then
                        clokgs = 0
                        value = 0
                    Else
                        clokgs = ResultRs("CLOKGS")
                        value = (ResultRs("ratekg") * ResultRs("CLOKGS"))
                    End If

                    Print #z, Space(5) & Padr(CStr(Sno), 4, " ") + Padl(CStr(ResultRs("LOTNO")), 5, " ") + "/" + Padr(sLotYear, 3, " ") + Space(2) + Padr(CStr(partyrs(0)), 33, " ") + Space(2) + Padr(CStr(ResultRs("VARNAME")), 12, " ") + Space(2) + Padl(CStr((ResultRs("plotno"))), 7, " ") + Space(1) + Padl(CStr(INF((ResultRs("ratekg")), 2)), 8, " ") + Space(2) + Padl(INF(cloqty, 0), 6, " ") + Space(2) + Padl(IIf(clokgs < 1, Format(clokgs, "#0.000"), CStr(INF(clokgs, 3))), 14, " ") + Padl(INF(ResultRs("ratecy"), 0), 9, " "); Padl(IIf(value < 1, Format(value, "#0.00"), INF(value, 2)), 17, " ")
                    Sno = Sno + 1
                    Co = Co + 1
                ElseIf a = 1 Then
                    cloqty = ResultRs("cloboras") + ResultRs("clobales")
                    If cloqty <= 0 Then
                        clokgs = 0
                        value = 0
                    Else
                        clokgs = ResultRs("CLOKGS")
                        value = ResultRs("VALUE")
                    End If
                    Print #z, Space(5) & Padr(CStr(ResultRs("CATname")), 11, " ") + Padl(CStr(ResultRs("LOTNO")), 5, " ") + Space(2) + Padr(CStr(Format(ResultRs("LOTDT"), "DD/MM/YY")), 11, " ") + Space(2) + Padr(CStr(ResultRs("VARNAME")), 20, " ") + Space(2) + Padl(CStr((ResultRs("plotno"))), 8, " ") + Padl(CStr(INF((ResultRs("ratekg")), 2)), 8, " ") + Space(2) + Padl(INF(cloqty, 0), 6, " ") + Space(2) + Padl(IIf(clokgs < 1, Format(clokgs, "#0.000"), CStr(INF(clokgs, 3))), 14, " ") + Padl(INF(ResultRs("ratecy"), 0), 9, " "); Padl(IIf(value < 1, Format(value, "#0.00"), INF(value, 2)), 17, " ") + Space(1) + Padr(ResultRs!MODUSRID, 13, " ") + Space(1) + Padr(Format(ResultRs!MODDATE, "dd/mm/yyyy"), 10, " ")  'Padr(ResultRs!moddate, 20, " ")
                    Sno = Sno + 1
                    Co = Co + 1
                End If


                If Co >= PageLen Then
                   Print #z, Space(5) & String(IIf(a = 0, 130, 153), "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, S, V, a)
                End If

               tot = tot + cloqty
               tot2 = tot2 + clokgs
               tot3 = tot3 + value
           End If
         ResultRs.MoveNext
         Loop


        Print #z, Space(5) & String(IIf(a = 0, 130, 153), "-")
                Co = Co + 1
                If Co >= PageLen Then
                   Print #z, Space(5) & String(IIf(a = 0, 130, 153), "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, S, V, a)
                End If
        Print #z, Space(61); Chr(27); "E" + "** Grand Total ** " + Padl(INF(tot, 0), 12, " ") + Space(1) + Padl(CStr(INF((tot2), 3)), 15, " ") + Space(1) + Padl(CStr(INF((tot3), 2)), 25, " "); Chr(27); "F"


        If Co >= PageLen Then
                   Print #z, Space(5) & String(IIf(a = 0, 130, 153), "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, S, V, a)
                End If
        Print #z, Space(5) & String(IIf(a = 0, 130, 153), "-")

        If Co >= PageLen Then
                   Print #z, Space(5) & String(IIf(a = 0, 130, 153), "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, S, V, a)
        End If


Print #z, Chr(12)
 Call footermod(CInt(z), footerstr, 85)
Close #z
z = FreeFile
'Open "C:\Loso.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "C:"
'Print #z, "cd\"
'Print #z, "type Loso.TXT>prn"
'Close #z
'RPTV.txtfile = "C:\Loso.TXT"
'RPTV.Batfile = "C:\Loso.bat"
Call KALBATPROCESS("Loso")
Screen.MousePointer = 0

Call repform1.usrProgBarCntl1.ProgClear
repform1.usrProgBarCntl1.Visible = False

End Sub
Public Sub LotstockRepHeader(pg1 As Integer, Co As Integer, S As String, U As String, a As Integer)
          Print #z, Chr(18)
          Print #z, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(3) & Chr(27) + "E" + "Lotwise Stock Position" + Chr(27) + "F" + " as on " + Format(Trim(U), "DD/MM/YY"); Space(74); CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
        If a = 0 Then
          Print #z, Space(5) & String(130, "-")
          Print #z, Space(5) & "                                                               Supplier              <- Closing Stock ->    Rate/ "
          'Print #z, Space(5) & "Category  Lot No     Date      Variety                 Lot No Rate/Kg     Qty  Unit           Kgs      Candy             Value"
          Print #z, Space(5) & "S.No Lot No.   Supplier Name                      Variety       Lot No.  Rate/Kg     Qty             Kgs    Candy            Value"
          Print #z, Space(5) & String(130, "-")
        ElseIf a = 1 Then
          Print #z, Space(5) & String(153, "-")
          Print #z, Space(5) & "                      Lot                            Supplier          <----Closing Stock---->    Rate/                  "
          'Print #z, Space(5) & "Category  Lot No     Date      Variety                 Lot No Rate/Kg     Qty  Unit           Kgs      Candy             Value Mod_User Name Mod_Date  "
          Print #z, Space(5) & "Category Lot No.     Date      Variety                Lot No. Rate/Kg     Qty           Kgs      Candy            Value Mod_User Name Mod_Date  "
          Print #z, Space(5) & String(153, "-")
        End If
          Co = Co + 9
End Sub
Public Sub LotstockReportTest(str As String, U As String, V As String, fltn As Integer, tltn As Integer, a As Integer, footerstr As String, Optional pRecType As String)
Set cnn = New Connection

Dim sContNo As String: sContNo = ""
Dim sContDt As String: sContDt = ""
Dim sPressNo As String: sPressNo = ""
Dim iDays As Integer: iDays = 0
Dim dtotRecBal As Double: dtotRecBal = 0
Dim dtotRecKgs As Double: dtotRecKgs = 0
Dim dtotStkBal As Double: dtotStkBal = 0
Dim dtotStkKgs As Double: dtotStkKgs = 0
Dim dtotRejBal As Double: dtotRejBal = 0
Dim dtotRejKgs As Double: dtotRejKgs = 0




'Dim v As String
str1 = str
catcd = str
str = Left(str, 3)
a1 = U
'v = U
'U = Format(yfdate, "yyyy-mm-dd")
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
    Set ResultRs = New Recordset
    db.CommandTimeout = 2000
    cnn.CommandTimeout = 2000
        strSQL = " select b.arrno,b.arrdt, CATNAME,a.LOTNO,PLOTNO,A.LOTDT,BBLFLG as unit,RATECY,RATEKG,E.SLNAME,C.VARNAME, STAPLEN,STAPLEN50,UNIRATIO,MICRONAIRE,GTEX,ELG,rd,bb,Grade,sfi,TRASH_PER,STATION,Bales,FAVAOURABLEWGT,"
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
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E,RM_AREA F WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE and B.Areacd=F.AreaCode And A.lotno between " & val(fltn) & " And " & val(tltn) & ""

                    
        If Trim(str) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(str) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,STAPLEN,STAPLEN50,UNIRATIO,MICRONAIRE,GTEX,ELG,rd,bb,Grade,sfi,TRASH_PER,STATION,Bales,FAVAOURABLEWGT, b.arrno,b.arrdt Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(str) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,STAPLEN,STAPLEN50,UNIRATIO,MICRONAIRE,GTEX,ELG,rd,bb,Grade,sfi,TRASH_PER,STATION,Bales,FAVAOURABLEWGT, b.arrno,b.arrdt Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(str) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,STAPLEN,STAPLEN50,UNIRATIO,MICRONAIRE,GTEX,ELG,rd,bb,Grade,sfi,TRASH_PER,STATION,Bales,FAVAOURABLEWGT, b.arrno,b.arrdt Order by A.LOTDT,A.lotno"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,STAPLEN,STAPLEN50,UNIRATIO,MICRONAIRE,GTEX,ELG,rd,bb,Grade,sfi,TRASH_PER,STATION,Bales,FAVAOURABLEWGT, b.arrno,b.arrdt Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,STAPLEN,STAPLEN50,UNIRATIO,MICRONAIRE,GTEX,ELG,rd,bb,Grade,sfi,TRASH_PER,STATION,Bales,FAVAOURABLEWGT, b.arrno,b.arrdt Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,STAPLEN,STAPLEN50,UNIRATIO,MICRONAIRE,GTEX,ELG,rd,bb,Grade,sfi,TRASH_PER,STATION,Bales,FAVAOURABLEWGT, b.arrno,b.arrdt Order by A.LOTDT,A.lotno"
            End If
        End If
        
    ResultRs.Open strSQL, cnn, adOpenStatic
    
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set Rs = New Recordset
    Rs.Open "Select Value From RM_RateUnit Where unitcode = 'CAN'", cnn, adOpenStatic
    If Rs.EOF = False Then
        dRateValue = val(Rs(0))
    Else
        dRateValue = 0
    End If
    

    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #z
    Close
'    Open "C:\Loso.TXT" For Output As #z
Open KALFOLDERDATA & "\Loso.TXT" For Output As #z
    pg1 = 1
    Co = 0
    Call LotstockRepHeaderTest(pg1, Co, S, U, V, a)
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      Sno = 1
       Do While Not ResultRs.EOF
            'If ResultRs("clokgs") > 0 Then
            If ResultRs("clobales") + ResultRs("cloboras") > 0 Then
                cloqty = 0
                If a = 0 Then

                    Set varrs = New Recordset
                    varrs.Open " select varcode from rm_var where varname='" & ResultRs("varname") & "'", db, adOpenStatic
                    Set temprs = New Recordset
                    temprs.Open "select supcd from rm_lot where (rejflg='N' or rejdt >'" & Format(yfdate, "yyyy-mm-dd") & "')and lotno=" & ResultRs("lotno") & " and lotdt='" & Format(ResultRs("lotdt"), "yyyy-mm-dd") & "' and DIVCODE ='" & Divcode & "'", db, adOpenStatic
                    Set partyrs = New Recordset
                    partyrs.Open "select slname from fa_slmas where slcode='" & temprs(0) & "'", db, adOpenStatic
                    
                    
                    
                    Set Rs = New Recordset
                    Rs.Open "SELECT CONTNO,CONTDT,PRMARK FROM RM_arrival Where Arrno =" & ResultRs("Arrno") & " and Contdt ='" & Format(ResultRs("arrdt"), "YYYY-MM-DD") & "' And Divcode ='" & Divcode & "'", cnn, adOpenStatic
                    If Rs.EOF = False Then
                        sContNo = IIf(IsNull(Rs(0)), "", Rs(0))
                        sContDt = IIf(IsNull(Rs(1)), "", Format(Rs(1), "DD/MM/YY"))
                        sPressNo = IIf(IsNull(Rs(2)), "", Rs(2))
                    End If
                    
                    iDays = CDate(V) - CDate(ResultRs("LOTDT"))
                    cloqty = ResultRs("cloboras") + ResultRs("clobales")
                    
                    value = 0
                    RATECANDY = 0
                    
                    If IsNull(ResultRs("ratecy")) = True Then
                        RATECANDY = 0
                    Else
                        RATECANDY = ResultRs("ratecy")
                    End If
                    
                    If RATECANDY = 0 Then
                        RATECANDY = Round(ResultRs("ratekg") * dRateValue, 2)
                    End If
                    
                    If cloqty <= 0 Then
                        clokgs = 0
                        value = 0
                    Else
                        clokgs = ResultRs("CLOKGS")
                        value = (ResultRs("ratekg") * ResultRs("CLOKGS"))
                    End If
                
                Print #z, Chr(15) & Space(4) & Padr(Format(ResultRs("lotdt"), "dd/MM/yy"), 8, " ") + Space(1) + Padl(CStr(ResultRs("PLOTNO")), 5, " ") & _
                          Space(1) + Padl(CStr(ResultRs("LOTNO")), 5, " ") + Space(1) + Padr(CStr(ResultRs("VARNAME")), 10, " ") + Space(1) + Padr(CStr(ResultRs("slname")), 22, " ") + Space(1) + Padr(CStr(ResultRs("Station")), 10, " ") & _
                          Space(1) + Padl(INF(ResultRs("Bales"), 0), 5, " ") + Space(1) + Padl(INF(ResultRs("FAVAOURABLEWGT"), 3), 11, " ") + Space(1) + Padl(INF(cloqty, 0), 5, " ") & _
                          Space(1) + Padl(IIf(clokgs < 1, Format(clokgs, "#0.000"), CStr(INF(clokgs, 3))), 14, " ") + Space(1) + Padl(INF(ResultRs("REJBALES"), 0), 5, "") & _
                          Space(1) + Padl(INF(ResultRs("REJKgs"), 3), 10, "") + Space(1) + Padr(sPressNo, 8, "") + Space(1) + Padl(INF(RATECANDY, 0), 7, "") & _
                          Space(1) + Padl(INF(iDays, 0), 5, "") + Space(2) + Padl(INF(ResultRs("staplen"), 0), 6, "") + Space(1) + Padl(INF(ResultRs("staplen50"), 2), 6, "") & _
                          Space(1) + Padl(INF(ResultRs("Uniratio"), 0), 6, "") & Space(1) + Padl(INF(ResultRs("Micronaire"), 2), 6, "") & Space(1) + Padl(INF(ResultRs("Gtex"), 2), 6, "") & _
                          Space(1) + Padl(INF(ResultRs("Elg"), 2), 6, "") & Space(1) + Padl(INF(ResultRs("RD"), 2), 6, "") & Space(1) + Padl(INF(ResultRs("BB"), 2), 6, "") & Space(1) + Padl(INF(ResultRs("Grade"), 2), 6, "") & _
                          Space(1) + Padl(INF(ResultRs("SFI"), 2), 6, "") & Space(1) + Padl(INF(ResultRs("Trash_per"), 2), 6, "")

'                    Print #z, Space(5) & Padr(CStr(Sno), 4, " ") + Padl(CStr(ResultRs("LOTNO")), 5, " ") + "/" + Padr(Format(CStr(ResultRs("lotdt")), "YY"), 3, " ") + Space(2) + Padr(CStr(partyrs(0)), 33, " ") + Space(2) + Padr(CStr(ResultRs("VARNAME")), 12, " ") + Space(2) + Padl(CStr((ResultRs("plotno"))), 7, " ") + Space(1) + Padl(CStr(INF((ResultRs("ratekg")), 2)), 8, " ") + Space(2) + Padl(INF(cloqty, 0), 6, " ") + Space(2) + Padl(IIf(clokgs < 1, Format(clokgs, "#0.000"), CStr(INF(clokgs, 3))), 14, " ") + Padl(INF(ResultRs("ratecy"), 0), 9, " "); Padl(IIf(value < 1, Format(value, "#0.00"), INF(value, 2)), 17, " ")
                    Sno = Sno + 1
                    Co = Co + 1
                ElseIf a = 1 Then
                    cloqty = ResultRs("cloboras") + ResultRs("clobales")
                    If cloqty <= 0 Then
                        clokgs = 0
                        value = 0
                    Else
                        clokgs = ResultRs("CLOKGS")
                        value = ResultRs("VALUE")
                    End If
'                    Print #z, Space(5) & Padr(CStr(ResultRs("CATname")), 11, " ") + Padl(CStr(ResultRs("LOTNO")), 5, " ") + Space(2) + Padr(CStr(Format(ResultRs("LOTDT"), "DD/MM/YY")), 11, " ") + Space(2) + Padr(CStr(ResultRs("VARNAME")), 20, " ") + Space(2) + Padl(CStr((ResultRs("plotno"))), 8, " ") + Padl(CStr(INF((ResultRs("ratekg")), 2)), 8, " ") + Space(2) + Padl(INF(cloqty, 0), 6, " ") + Space(2) + Padl(IIf(clokgs < 1, Format(clokgs, "#0.000"), CStr(INF(clokgs, 3))), 14, " ") + Padl(INF(ResultRs("ratecy"), 0), 9, " "); Padl(IIf(value < 1, Format(value, "#0.00"), INF(value, 2)), 17, " ") + Space(1) + Padr(ResultRs!MODUSRID, 13, " ") + Space(1) + Padr(Format(ResultRs!MODDATE, "dd/mm/yyyy"), 10, " ")  'Padr(ResultRs!moddate, 20, " ")
                    Sno = Sno + 1
                    Co = Co + 1
                End If


                If Co >= PageLen Then
                   Print #z, Space(5) & String(227, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeaderTest(pg1, Co, S, U, V, a)
                End If

               tot = tot + cloqty
               tot2 = tot2 + clokgs
               tot3 = tot3 + value
               
               dtotRecKgs = dtotRecKgs + ResultRs("FAVAOURABLEWGT")
               dtotRecBal = dtotRecBal + ResultRs("Bales")
               
               dtotRejKgs = dtotRejKgs + ResultRs("RejKgs")
               dtotRejBal = dtotRejBal + ResultRs("RejBales")
               
               dtotStkBal = dtotStkBal + ResultRs("cloboras") + ResultRs("clobales")
               dtotStkKgs = dtotStkKgs + ResultRs("CLOKGS")
               
           End If
         ResultRs.MoveNext
         Loop






        Print #z, Space(5) & String(227, "-")
                Co = Co + 1
                If Co >= PageLen Then
                   Print #z, Space(5) & String(227, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeaderTest(pg1, Co, S, U, V, a)
                End If
'        Print #z, Space(61); Chr(27); "E" + "** Grand Total ** " + Padl(INF(tot, 0), 12, " ") + Space(1) + Padl(CStr(INF((tot2), 3)), 15, " ") + Space(1) + Padl(CStr(INF((tot3), 2)), 25, " "); Chr(27); "F"
        Print #z, Chr(15) & Space(4) & Padr("", 3, " ") + Space(1) & Padr("", 8, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padl("", 5, " ") & _
                          Space(1) + Padl("", 5, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padr("Grand ", 9, " ") + Space(1) + Padr("", 5, " ") & _
                          Space(1) + Padl(INF(dtotRecBal, 0), 10, " ") + Space(1) + Padl(INF(0, 3), 6, " ") + Space(1) + Padl(INF(dtotStkBal, 0), 10, " ") & _
                          Space(1) + Padl(INF(0, 3), 9, " ") + Space(1) + Padl(INF(dtotRejBal, 0), 10, "") & _
                          Space(1) + Padl(INF(0, 3), 10, "") + Space(1) + Padr("", 8, "") + Space(1) + Padl("", 7, "") & _
                          Space(1) + Padl(INF(0, 0), 5, "") + Space(2) + Padl(INF(0, 0), 6, "") + Space(1) + Padl(INF(0, 2), 6, "") & _
                          Space(1) + Padl(INF(0, 0), 6, "") & Space(1) + Padl(INF(0, 2), 6, "") & Space(1) + Padl(INF(0, 2), 6, "") & _
                          Space(1) + Padl(INF(0, 2), 6, "") & Space(1) + Padl(INF(0, 0), 6, "") & Space(1) + Padl(INF(0, 2), 6, "") & Space(1) + Padl("", 6, "") & _
                          Space(1) + Padl(INF(0, 2), 6, "") & Space(1) + Padl(INF(0, 2), 6, "")
        Print #z, Chr(15) & Space(4) & Padr("", 3, " ") + Space(1) & Padr("", 8, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padl("", 5, " ") & _
                          Space(1) + Padl("", 5, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padr("Total", 9, " ") + Space(1) + Padr("", 10, " ") & _
                          Space(1) + Padl(INF(0, 0), 1, " ") + Space(0) + Padl(INF(dtotRecKgs, 3), 16, " ") + Space(1) + Padl(INF(0, 0), 1, " ") & _
                          Space(1) + Padl(INF(dtotStkKgs, 3), 19, " ") + Space(1) + Padl(INF(0, 0), 1, "") & _
                          Space(1) + Padl(INF(dtotRejKgs, 3), 15, "") + Space(1) + Padr("", 8, "") + Space(1) + Padl("", 7, "") & _
                          Space(1) + Padl(INF(0, 0), 5, "") + Space(2) + Padl(INF(0, 0), 6, "") + Space(1) + Padl(INF(0, 2), 6, "") & _
                          Space(1) + Padl(INF(0, 0), 6, "") & Space(1) + Padl(INF(0, 2), 6, "") & Space(1) + Padl(INF(0, 2), 6, "") & _
                          Space(1) + Padl(INF(0, 2), 6, "") & Space(1) + Padl(INF(0, 0), 6, "") & Space(1) + Padl(INF(0, 2), 6, "") & Space(1) + Padl("", 6, "") & _
                          Space(1) + Padl(INF(0, 2), 6, "") & Space(1) + Padl(INF(0, 2), 6, "")

        If Co >= PageLen Then
                   Print #z, Space(5) & String(227, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeaderTest(pg1, Co, S, U, V, a)
                End If
        Print #z, Space(5) & String(227, "-")

        If Co >= PageLen Then
                   Print #z, Space(5) & String(227, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeaderTest(pg1, Co, S, U, V, a)
        End If


Print #z, Chr(12)
 Call footermod(CInt(z), footerstr, 132)
Close #z
z = FreeFile
'Open "C:\Loso.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "C:"
'Print #z, "cd\"
'Print #z, "type Loso.TXT>prn"
'Close #z
'RPTV.txtfile = "C:\Loso.TXT"
'RPTV.Batfile = "C:\Loso.bat"
Call KALBATPROCESS("Loso")
Screen.MousePointer = 0
End Sub
Public Sub LotstockRepHeaderTest(pg1 As Integer, Co As Integer, S As String, U As String, V As String, a As Integer)
          Print #z, Chr(18)
          Print #z, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(4) & Chr(27) + "E" + "Varietywise Stock With Test Result " + Chr(27) + "F" + "from " + Format(Trim(U), "DD/MM/YY") + " to " + Format(Trim(V), "DD/MM/YY"); Space(148); CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
        
          Print #z, Chr(15) & Space(4) & String(227, "-")
          
          Print #z, Chr(15) & Space(4) & Padr("Receipt", 8, " ") + Space(1) + Padl("Supp.", 5, " ") & Space(1) + Padl("Mill", 5, " ") + Space(1) + Padr("Variety", 10, " ") + Space(1) + Padr("Supplier", 22, " ") + Space(1) + Padr("Station", 10, " ") & Space(7) + Padr("Receipt    ", 17, " ") + Space(3) + Padl("Stock", 5, " ") & Space(1) + Padl("", 6, " ") + Space(5) + Padr("Rejection", 9, "") & _
                    Space(1) + Space(3) + Padr("Bale", 8, "") + Space(1) + Padl("Rate/", 7, "") & Space(1) + Padl("Dura.", 5, "") + Space(2) + Padl("2.5%", 6, "") + Space(1) + Padl("50%", 6, "") & Space(1) + Padl("UR", 6, "") & Space(1) + Padl("MIC", 6, "") & Space(1) + Padl("G.Tex", 6, "") & Space(1) + Padl("ELONG.", 6, "") & Space(1) + Padl("RD", 6, "") & Space(1) + Padl("+B", 6, "") & Space(1) + Padl("CG", 6, "") & Space(1) + Padl("SFI", 6, "") & Space(1) + Padl("Trash%", 6, "")
          Print #z, Chr(15) & Space(4) + Padr("Date", 8, " ") + Space(0) + Padl("Lot No", 6, " ") & Space(1) + Padl("Lot No", 6, " ") + Space(0) + Padr("", 10, " ") + Space(1) + Padr("", 22, " ") + Space(1) + Padr("", 10, " ") & Space(1) + Padl("Qty", 5, " ") + Space(1) + Padl("Kgs", 11, " ") + Space(1) + Padl("Qty", 5, " ") & Space(1) + Padl("Kgs", 14, " ") + Space(1) + Padl("Qty", 5, "") & _
                    Space(1) + Padl("Kgs", 10, "") + Space(1) + Padr("Press No", 8, "") + Space(1) + Padl("Candy", 7, "") & Space(1) + Padl("Days", 5, "") + Space(2) + Padl("Span", 6, "") + Space(1) + Padl("Span", 6, "") & Space(1) + Padr("", 6, "") & Space(1) + Padr("", 6, "") & Space(1) + Padr("", 6, "") & Space(1) + Padr("", 6, "") & Space(1) + Padr("", 6, "") & Space(1) + Padr("", 6, "") & Space(1) + Padr("", 6, "") & Space(1) + Padr("", 6, "") & Space(1) + Padr("", 6, "")
                    
          Print #z, Chr(15) & Space(4) & String(227, "-")
     
          Co = Co + 8
End Sub
