Attribute VB_Name = "Customized_StockRegisterReport"
Dim rs1 As Recordset
Dim ResultRs As Recordset
Dim rptv As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim Cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s As String
Dim z As Integer
Dim rp As New repform1
Dim sLotYear As String

Public Sub Customized_VarstockReport(U As String, V As String, W As String, fltn As String, tltn As String, FVar As String, TVar As String, fs As String, ts As String, issuetype As String)
    Dim cloqty As Double
    Dim clokgs As Double
    Dim Value1 As Double
    Dim rejqty As Double
    Dim rejkgs As Double
    Dim Value2 As Double
    Dim RATECANDY As Double
            
    Dim CLQTYTOT As Double
    Dim CLKGSTOT As Double
    Dim CLVALTOT As Double
    Dim REJQTYTOT As Double
    Dim REJKGSTOT As Double
    Dim REJVALTOT As Double
    
    Dim GCLQTYTOT As Double
    Dim GCLKGSTOT As Double
    Dim GCLVALTOT As Double
    Dim GREJQTYTOT As Double
    Dim GREJKGSTOT As Double
    Dim GREJVALTOT As Double
    
    Dim Varty As String
    Dim reccnt As Integer
    
    Set Cnn = New Connection
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring
    
    DB.CommandTimeout = 2000
    Cnn.CommandTimeout = 2000

    catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
    vrectype = Trim(Left(issuetype, 3))
    
    Dim SNO As Integer
    SNO = 1
    
    strSQL = ""
    strSQL = " select c.VARNAME,B.supcd,D.slname,isnull(B.RATEKG,0) as RATEKG,a.LOTNO,A.LOTDT,isnull(B.LRFRTAMT,0) as LRFRTAMT,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
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
    strSQL = strSQL + "isnull(SUM(ISNULL(A.REJBAL,0)),0) AS REJBAL,isnull(SUM(ISNULL(A.REJKGS,0)),0) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
    strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
    strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
    strSQL = strSQL + " FROM ("
    strSQL = strSQL + gStockStatementncp(yfdate, V)
    strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,fa_slmas D WHERE D.slcode = B.supcd and B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND C.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND B.areacd BETWEEN '" & fs & "' AND '" & ts & "' AND B.lotno BETWEEN '" & fltn & "' AND '" & tltn & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

    If UCase(Trim(catcd)) <> "ALL" Then
        If UCase(vrectype) <> "ALL" Then
            If UCase(vrectype) = "A" Then
                strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,a.LOTNO,A.LOTDT,B.supcd,D.slname,B.RATEKG,B.LRFRTAMT Order by C.VARNAME,a.lotdt,a.lotno,B.supcd,D.slname"
            Else
                strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,a.LOTNO,A.LOTDT,B.supcd,D.slname,B.RATEKG,B.LRFRTAMT Order by C.VARNAME,a.lotdt,a.lotno,B.supcd,D.slname"
            End If
        Else
            strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,a.LOTNO,A.LOTDT,B.supcd,D.slname,B.RATEKG,B.LRFRTAMT Order by C.VARNAME,a.lotdt,a.lotno,B.supcd,D.slname"
        End If
    Else
        If UCase(vrectype) <> "ALL" Then
            If UCase(vrectype) = "A" Then
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.LOTNO,A.LOTDT,B.supcd,D.slname,B.RATEKG,B.LRFRTAMT  Order by C.VARNAME,a.lotdt,a.lotno,B.supcd,D.slname"
            Else
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.LOTNO,A.LOTDT,B.supcd,D.slname,B.RATEKG,B.LRFRTAMT  Order by C.VARNAME,a.lotdt,a.lotno,B.supcd,D.slname"
            End If
        Else
            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.LOTNO,A.LOTDT,B.supcd,D.slname,B.RATEKG,B.LRFRTAMT  Order by C.VARNAME,a.lotdt,a.lotno,B.supcd,D.slname"
        End If
    End If
    
    Set ResultRs = New Recordset
    ResultRs.Open strSQL, Cnn, adOpenStatic

    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If

    Set rptv = New Report.ReportView
    z = FreeFile
    Close #z
    Close
    'Open "C:\StkReg_var.TXT" For Output As #z
     Open KALFOLDERDATA & "\StkReg_var.TXT" For Output As #z
     
     
    pg1 = 1
    co = 0
    
    Call VarstockRepHeader(pg1, U, V)
    SNO = 1
    
    Do While Not ResultRs.EOF
        If val(ResultRs("CLSBOR")) + val(ResultRs("CLSBAL")) <> 0 Then
            If co >= PageLen Then
                Print #z, Space(10) & String(130, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call VarstockRepHeader(pg1, U, V)
            End If
                
            Set Rs = New Recordset
            Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(ResultRs("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
            If Rs.EOF = False Then
                sLotYear = Format(Rs("AYFDATE"), "YY")
            Else
                sLotYear = Format(ResultRs("LOTDT"), "YY")
            End If
                    
            If Varty = Empty Then
                Print #z, Space(10) + Chr(27) + "E" + Padr(ResultRs("VARNAME"), 12, " ") + Chr(27) + "F"
                lncnt = lncnt + 1
            ElseIf Varty <> Empty And Varty <> ResultRs("VARNAME") Then
                If reccnt > 1 Then
    '                Print #z, Space(10) + String(130, "-")
                    Print #z,
                    Print #z, Space(10) + Padr("Sub Total", 27, " ") + Padl(INF(CLQTYTOT, 0), 6, " ") + Space(1) + Padl(IIf(CLKGSTOT < 1, INF(CLKGSTOT, 3), CStr(INF(CLKGSTOT, 3))), 15, " ") + Space(1) + Padl(IIf(CLVALTOT < 1, INF(CLVALTOT, 2), INF(CLVALTOT, 2)), 20, " ") + Space(1) + Padl(INF(REJQTYTOT, 0), 6, " ") + Space(1) + Padl(IIf(REJKGSTOT < 1, INF(REJKGSTOT, 3), CStr(INF(REJKGSTOT, 3))), 15, " ") + Space(1) + Padl(IIf(REJVALTOT < 1, INF(REJVALTOT, 2), INF(REJVALTOT, 2)), 20, " ")
                    Print #z,
    '                Print #z, Space(10) + String(130, "-")
                    lncnt = lncnt + 3
                End If
                
                Print #z,
                Print #z, Space(10) + Chr(27) + "E" + Padr(ResultRs("VARNAME"), 12, " ") + Chr(27) + "F"
                
                lncnt = lncnt + 1
                
                CLQTYTOT = 0
                CLKGSTOT = 0
                CLVALTOT = 0
                REJQTYTOT = 0
                REJKGSTOT = 0
                REJVALTOT = 0
                
                reccnt = 0
            End If
            
            If ResultRs("CLSBAL") + ResultRs("CLSBOR") > 0 Then
                cloqty = ResultRs("CLSBOR") + ResultRs("CLSBAL")
                
                If cloqty <= 0 Then
                    clokgs = 0
                    Value1 = 0
                Else
                    clokgs = ResultRs("CLSKGS")
                    Value1 = (ResultRs("ratekg") * ResultRs("CLSKGS"))
                End If
                
                CLQTYTOT = CLQTYTOT + cloqty
                CLKGSTOT = CLKGSTOT + clokgs
                CLVALTOT = CLVALTOT + Value1
                
                GCLQTYTOT = GCLQTYTOT + cloqty
                GCLKGSTOT = GCLKGSTOT + clokgs
                GCLVALTOT = GCLVALTOT + Value1
            End If
    
            rejqty = ResultRs("REJBAL")
                
            rejkgs = ResultRs("REJKGS")
            Value2 = ResultRs("ratekg") * ResultRs("REJKGS")
            
            REJQTYTOT = REJQTYTOT + rejqty
            REJKGSTOT = REJKGSTOT + rejkgs
            REJVALTOT = REJVALTOT + Value2
            
            GREJQTYTOT = GREJQTYTOT + rejqty
            GREJKGSTOT = GREJKGSTOT + rejkgs
            GREJVALTOT = GREJVALTOT + Value2
            'If cloqty <> 0 And clokgs <> 0 And Value1 <> 0 Then
                Print #z, Space(10) & Padr(CStr(SNO), 6, " ") + Space(1) + Padl(CStr(ResultRs("LOTNO")), 6, " ") + "/" + Padr(CStr(sLotYear), 3, " ") + Space(1) + Padr(Format(ResultRs("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(INF(cloqty, 0), 6, " ") + Space(1) + Padl(IIf(clokgs < 1, INF(0, 3), CStr(INF(clokgs, 3))), 15, " ") + Space(1) + Padl(IIf(Value1 < 1, INF(0, 2), INF(Value1, 2)), 20, " ") + Space(1) + Padl(INF(rejqty, 0), 6, " ") + Space(1) + Padl(IIf(rejkgs < 1, INF(0, 3), CStr(INF(rejkgs, 3))), 15, " ") + Space(1) + Padl(IIf(Value2 < 1, INF(0, 2), INF(Value2, 2)), 20, " ") & Space(1) + Padl(INF(ResultRs("LRFRTAMT"), 2), 15, " ")
                SNO = SNO + 1
            'End If
            co = co + 1
            reccnt = reccnt + 1
            
            cloqty = 0
            clokgs = 0
            Value1 = 0
            rejqty = 0
            rejkgs = 0
            Value2 = 0
            RATECANDY = 0
            
            Varty = ResultRs("VARNAME")
        End If
        ResultRs.MoveNext
    Loop

    If co >= PageLen Then
        Print #z, Space(10) & String(130, "-")
        Print #z, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call VarstockRepHeader(pg1, U, V)
    End If
        
    If reccnt > 1 Then
        'Print #z, Space(10) + String(130, "-")
        Print #z,
        Print #z, Space(10) + Padr("Sub Total", 27, " ") + Padl(INF(CLQTYTOT, 0), 6, " ") + Space(1) + Padl(IIf(CLKGSTOT < 1, INF(CLKGSTOT, 3), CStr(INF(CLKGSTOT, 3))), 15, " ") + Space(1) + Padl(IIf(CLVALTOT < 1, INF(CLVALTOT, 2), INF(CLVALTOT, 2)), 20, " ") + Space(1) + Padl(INF(REJQTYTOT, 0), 6, " ") + Space(1) + Padl(IIf(REJKGSTOT < 1, INF(REJKGSTOT, 3), CStr(INF(REJKGSTOT, 3))), 15, " ") + Space(1) + Padl(IIf(REJVALTOT < 1, INF(REJVALTOT, 2), INF(REJVALTOT, 2)), 20, " ")
        Print #z,
        'Print #z, Space(10) + String(130, "-")
    End If

    Print #z, Space(10) + String(130, "-")
    Print #z, Space(10) + Padr("Grand Total", 27, " ") + Padl(INF(GCLQTYTOT, 0), 6, " ") + Space(1) + Padl(IIf(GCLKGSTOT < 1, INF(GCLKGSTOT, 3), CStr(INF(GCLKGSTOT, 3))), 15, " ") + Space(1) + Padl(IIf(GCLVALTOT < 1, INF(GCLVALTOT, 2), INF(GCLVALTOT, 2)), 20, " ") + Space(1) + Padl(INF(GREJQTYTOT, 0), 6, " ") + Space(1) + Padl(IIf(GREJKGSTOT < 1, INF(GREJKGSTOT, 3), CStr(INF(GREJKGSTOT, 3))), 15, " ") + Space(1) + Padl(IIf(GREJVALTOT < 1, INF(GREJVALTOT, 2), INF(GREJVALTOT, 2)), 20, " ")
    Print #z, Space(10) + String(130, "-")

    Print #1, Chr(18) + Chr(12)
'    Call footermod(CInt(z), footerstr, 85)
        
    Close #z
    z = FreeFile
    
'    Open "C:\StkReg_var.bat" For Output As #z
'    Print #z, "cd\"
'    Print #z, "C:"
'    Print #z, "cd\"
'    Print #z, "type StkReg_var.TXT>prn"
'    Close #z
'    RPTV.txtfile = "C:\StkReg_var.TXT"
'    RPTV.Batfile = "C:\StkReg_var.bat"
    Call KALBATPROCESS("StkReg_var")
    

    Screen.MousePointer = 0
End Sub

Private Sub VarstockRepHeader(pg1 As Integer, U As String, V As String)
      Print #z, Chr(18)
      Print #z, Space(10) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
      Print #z, Chr(15)
      SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
      Print #z, Space(10) & Chr(27) + "E" + "Varietywise Stock List" + Chr(27) + "F" + " From " + Format(Trim(U), "DD/MM/YY") + " To " & Format(Trim(V), "DD/MM/YY") & Space(50); CStr(SR) + "Pg. No. :" + Padl(CStr(pg1), 3, "  ")
    
      Print #z, Space(10) & String(130, "-")
      Print #z, Space(10) & Padl("Variety", 7, " ") + Padl("", 10, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 20, " ") + Space(1) + Padr("<--------NCP--------->", 22, " ") + Space(1) + Padl("", 20, " ") + Space(1) + Padl("", 15, " ")
      Print #z, Space(10) & Padr("S.No", 6, " ") + Space(1) + Padl("Lot No.", 10, " ") + Space(1) + Padr("Lot", 8, " ") + Space(1) + Padl("No.Of", 6, " ") + Space(1) + Padl("Weight", 15, " ") + Space(1) + Padl("Value", 20, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Kgs", 15, " ") + Space(1) + Padl("Value", 20, " ") + Space(1) + Padl("Freight", 15, " ")
      Print #z, Space(10) & Padl("", 6, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padr("Date", 8, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("in kgs", 15, " ") + Space(1) + Padl("in Rs.Ps", 20, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("in Rs.Ps", 20, " ") + Space(1) + Padl("Amount", 15, " ")
      Print #z, Space(10) & String(130, "-")
      co = 9
End Sub
