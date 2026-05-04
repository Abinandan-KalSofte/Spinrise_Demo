Attribute VB_Name = "stlstmtvar"
Dim opf As New Recordset
Dim opf1 As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9, op10 As Double
Dim rsP As New Recordset
Dim Namers As Recordset
Dim VarName As String
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Dim RSV As New Recordset
Dim VTOT As Double, vtot1 As Double, vtot2 As Double, vtot3 As Double, VTOT4 As Double
Dim VTOT5 As Double, VTOT6 As Double, VTOT7 As Double, VTOT8 As Double, VTOT9 As Double
Dim VTOT10 As Double, VTOT11 As Double, VTOT12 As Double, VTOT13 As Double, VTOT14 As Double, VTOT15 As Double
Dim vtotRejBales, vtotRejBoras, vtotRejKgs, vtotRejValue As Double
Dim rp As New repform1




Public Sub StockVarietyReport1(F_Date As String, T_Date As String, catcd As String, FVar As String, TVar As String, Optional pRecType As String, Optional strFooter As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
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
Dim totRejBales, totRejBoras, totRejKgs, totRejValue As Double
Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Cnn.CommandTimeout = 2000
SR = catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
vrectype = Trim(Left(pRecType, 3))
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\sv.TXT" For Output As #a
Open KALFOLDERDATA & "\sv.TXT" For Output As #a
pg1 = 1
Co = 0
        
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0
tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0
tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0:
totRejBales = 0: totRejBoras = 0: totRejKgs = 0: totRejValue = 0

vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0
VTOT = 0
vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0


Call PartyHeader(pg1, Co, F_Date, T_Date, catcd, pRecType)

Set rs1 = New Recordset


  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  
    Set RSV = New Recordset
        strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
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
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(F_Date, T_Date)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' "

                    
        If Trim(SR) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(SR) & "' group by VARNAME"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by VARNAME"
            End If
        End If

'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
If RSV.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Exit Sub
End If

'rs1.MoveFirst
Do While Not RSV.EOF

            
   Print #a,
   Co = Co + 1
         VTOT = VTOT + RSV("opbales")
         vtot1 = vtot1 + RSV("opboras")
         vtot2 = vtot2 + RSV("opkgs")
         vtot3 = vtot3 + RSV("recbales")
         VTOT4 = VTOT4 + RSV("recboras")
         VTOT5 = VTOT5 + RSV("reckgs")
         VTOT6 = VTOT6 + RSV("issbales")
         VTOT7 = VTOT7 + RSV("issboras")
         VTOT8 = VTOT8 + RSV("isskgs")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
      '   vtotRejValue = RSV!REJVALUE
        
        
        totRejBales = val(totRejBales) + val(RSV!rejBales)
        totRejBoras = totRejBoras
        totRejKgs = val(totRejKgs) + val(RSV!rejkgs)
        totRejValue = val(totRejValue) + val(RSV!REJVALUE)
   
        
        VTOT9 = VTOT9 + RSV("clobales")
        VTOT10 = VTOT10 + RSV("cloboras")
        VTOT11 = VTOT11 + RSV("clokgs")
        
        VTOT15 = VTOT15 + IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))

         VTOT12 = VTOT12 + RSV("opvalue")
         VTOT13 = VTOT13 + RSV("recvalue")
         VTOT14 = VTOT14 + RSV("issvalue")
         vtotRejValue = vtotRejValue + RSV!REJVALUE
      
                
   If Co >= PageLen Then
      Print #a, Space(4) + String(229, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call PartyHeader(pg1, Co, F_Date, T_Date, catcd, pRecType)
   End If
           
    VarName = RSV!VarName
                
   Set opf = New Recordset
   If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
   
   Print #a, Space(4) + Padr((CStr(VarName)), 14, " ") & Padl(INF(VTOT, 0), 7, " ") + Padl(INF(vtot1, 0), 6, " ") + Padl(INF(vtot2, 3), 14, " ") + Padl(INF(VTOT12, 2), 16, " ") + Padl(INF(vtot3, 0), 7, " ") + Padl(INF(VTOT4, 0), 6, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 7, " ") + Padl(INF(VTOT7, 0), 6, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(vtotRejBales, 0), 7, " ") + Padl(INF(vtotRejBoras, 0), 6, " ") + Padl(INF(vtotRejKgs, 3), 14, " ") + Padl(INF(vtotRejValue, 2), 16, " ") + Padl(INF(VTOT9, 0), 7, " ") + Padl(INF(VTOT10, 0), 6, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
   tot1 = val(tot1 + VTOT)
   tot2 = val(tot2 + vtot1)
   tot3 = val(tot3 + vtot2)
   tot4 = val(tot4 + vtot3)
   tot5 = val(tot5 + VTOT4)
   tot6 = val(tot6 + VTOT5)
   tot7 = val(tot7 + VTOT6)
   tot8 = val(tot8 + VTOT7)
    
   tot9 = val(tot9 + VTOT8)
   tot10 = val(tot10 + VTOT9)
   tot11 = val(tot11 + VTOT10)
   tot12 = val(tot12 + VTOT11)
   tot13 = val(tot13 + VTOT12)   'Opening value
   tot14 = val(tot14 + VTOT13)   'Received value
   tot15 = val(tot15 + VTOT14)   'Issue VaLUE
   tot16 = val(tot16 + VTOT15)   'Clse value
   

   
   Co = Co + 1
   If Co >= PageLen Then
      Print #a, Space(2) + String(229, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call PartyHeader(pg1, Co, F_Date, T_Date, catcd, pRecType)
   End If
   vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
   VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
   VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0: VTOT = 0
   vtotRejBales = 0: vtotRejBoras = 0: vtotRejKgs = 0: vtotRejValue = 0
30:
   RSV.MoveNext
Loop
Print #a,
Print #a, Space(4) + String(229, "-")
Print #a, Space(4) + "*** Total ***" + Padl(INF(tot1, 0), 8, " ") + Padl(INF(tot2, 0), 6, " ") + Padl(INF(tot3, 3), 14, " ") + Padl(INF(tot13, 2), 16, " ") + Padl(INF(tot4, 0), 7, " ") + Padl(INF(tot5, 0), 6, " ") + Padl(INF(tot6, 3), 14, " ") + Padl(INF(tot14, 2), 16, " ") + Padl(INF(tot7, 0), 7, " ") + Padl(INF(tot8, 0), 6, " ") + Padl(INF(tot9, 3), 14, " ") + Padl(INF(tot15, 2), 16, " ") + Padl(INF(totRejBales, 0), 7, " ") + Padl(INF(totRejBoras, 0), 6, " ") + Padl(INF(totRejKgs, 3), 14, " ") + Padl(INF(totRejValue, 2), 16, " ") + Padl(INF(tot10, 0), 7, " ") + Padl(INF(tot11, 0), 6, " ") + Padl(INF(tot12, 3), 14, " ") + Padl(INF(tot16, 2), 16, " ")
Print #a, Space(4) + String(229, "-")
Print #a,
Print #a,
Print #a, Chr(18)
Call footermod(CInt(a), strFooter, 131)

Print #a, Chr(12)
Print #a, Chr(18)
Close #a
a = FreeFile
'Open "c:\sv.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type sv.txt>prn"
'Close #a
'RPTV.txtfile = "c:\sv.txt"
'RPTV.Batfile = "c:\sv.bat"
Call KALBATPROCESS("sv")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String, ISSUE As String)
          Print #a, Chr(18)
          Print #a, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(2) + Chr(15) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy") & Space(18 + 45) & Padr("Categroy : " & Trim(Mid(W, InStr(1, W, "-") + 1, Len(W))) & "   Type : " & Trim(Mid(ISSUE, InStr(1, ISSUE, "-") + 1, Len(ISSUE))), 85, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1)
          Print #a, Space(4) + String(229, "-")
          Print #a, Space(4) + "Variety         <------------Opening Balance------------>  <---------------Receipts---------------->  <----------------Issues----------------->  <----------------Rejected--------------->  <-------------Closing Balance----------->"
          Print #a, Space(4) + "                Bales Boras        Weight           Value  Bales Boras        Weight           Value  Bales Boras        Weight           Value  Bales Boras          Weight         Value  Bales Boras        Weight           Value"
          Print #a, Space(4) + String(229, "-")
          Co = Co + 9
End Sub
Public Sub PartyHeader1(pg1 As Integer, Co As Integer, U As String, V As String, W As String)
          Print #a, Chr(18)
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy") & Space(8) & Padr(W, 40, " ") & Space(3) + Format(SR, "dd/mm/yy") + "  Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(216, "-")
          Print #a, Space(5) + "Variety                  <-------------Opening Balance-------------->     <----------------Receipts------------------>     <------------------Issues------------------>     <--------------Closing Balance------------->"
          Print #a, Space(16) + "              Bales    Boras       Weight            Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value"
          Print #a, Space(5) + String(216, "-")
          Co = Co + 9
End Sub

Public Sub StockVarietyReport11(F_Date As String, T_Date As String, catcd As String, Optional pRecType As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
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
Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
SR = catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
vrectype = Trim(Left(pRecType, 3))
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\sv.TXT" For Output As #a
Open KALFOLDERDATA & "\sv.TXT" For Output As #a
pg1 = 1
Co = 0
        
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0
tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0
tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0:
vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0
VTOT = 0
        


Call PartyHeader(pg1, Co, F_Date, T_Date, catcd, pRecType)

Set rs1 = New Recordset

If Trim(SR) <> "ALL" Then
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        If vrectype = "A" Then
            rs1.Open "select distinct a.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND LOTYEAR='" & Year(yfdate) & "' AND a.varcode=b.varcode AND DIVCODE='" & Divcode & "' and a.CatCd='" & SR & "' and (b.transfertype='' or b.transfertype='JR')", Cnn
        Else
            rs1.Open "select distinct a.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND LOTYEAR='" & Year(yfdate) & "' AND a.varcode=b.varcode AND DIVCODE='" & Divcode & "' and a.CatCd='" & SR & "' and " & tmptypestr & " = '" & vrectype & "' ", Cnn
        End If
    Else
        rs1.Open "select distinct a.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND LOTYEAR='" & Year(yfdate) & "' AND a.varcode=b.varcode AND DIVCODE='" & Divcode & "' and a.CatCd='" & SR & "'", Cnn
    End If
Else
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        If vrectype = "A" Then
            rs1.Open "select distinct a.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND LOTYEAR='" & Year(yfdate) & "' AND a.varcode=b.varcode AND DIVCODE='" & Divcode & "' and (b.TransferType='' OR b.TransferType='JR') ", Cnn '
        Else
            rs1.Open "select distinct a.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND LOTYEAR='" & Year(yfdate) & "' AND a.varcode=b.varcode AND DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "'", Cnn '
        End If
    Else
        rs1.Open "select distinct a.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND LOTYEAR='" & Year(yfdate) & "' AND a.varcode=b.varcode AND DIVCODE='" & Divcode & "'", Cnn
    End If
End If


If rs1.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Close #a
   Exit Sub
End If
        
rs1.MoveFirst
Do While Not rs1.EOF
  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  If Trim(SR) <> "ALL" Then
   Set RSV = New Recordset
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                tmptypestr = "b.LotType"
            Else
                tmptypestr = "b.TransferType"
            End If
            If vrectype = "A" Then
                RSV.Open "select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                    "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                    "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                    "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                    "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                    "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                    " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                    " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                    "select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                    " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
                    " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
                    " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                    "group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
                    "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                    "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
                    " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & rs1("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
                    " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union " & _
                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
                    " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
                    " rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by a.varcode,A.LOTNO,A.LOTDT", Cnn, adOpenStatic, adLockBatchOptimistic
            Else
                RSV.Open "select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                    "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                    "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                    "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                    "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                    "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                    " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                    " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                    "select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                    " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
                    " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
                    " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                    "group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
                    "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                    "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
                    " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & rs1("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
                    " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union " & _
                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
                    " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
                    " rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and " & tmptypestr & " = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,A.LOTNO,A.LOTDT", Cnn, adOpenStatic, adLockBatchOptimistic
            End If
        Else
            RSV.Open "select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                "group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
                "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & rs1("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union " & _
                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
                " rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt  and b.lotyear='" & Year(yfdate) & "' group by a.varcode,A.LOTNO,A.LOTDT", Cnn, adOpenStatic, adLockBatchOptimistic
        End If
   Else
   Set RSV = New Recordset
    If vrectype <> "ALL" Then
            If vrectype = "A" Then
                tmptypestr = "b.LotType"
            Else
                tmptypestr = "b.TransferType"
            End If
        If vrectype = "A" Then
            RSV.Open "select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                "group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
                "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & rs1("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union " & _
                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
                " rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by a.varcode,A.LOTNO,A.LOTDT", Cnn, adOpenStatic, adLockBatchOptimistic
        Else
            RSV.Open "select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                "group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
                "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & rs1("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union " & _
                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
                " rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and " & tmptypestr & " = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,A.LOTNO,A.LOTDT", Cnn, adOpenStatic, adLockBatchOptimistic
        End If
    Else
        RSV.Open "select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
            " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
            " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            "group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
            "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
            " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & rs1("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
            " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union " & _
            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
            " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            " rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,A.LOTNO,A.LOTDT", Cnn, adOpenStatic, adLockBatchOptimistic
    End If
      
   End If
   Print #a,
   Co = Co + 1
   If RSV.RecordCount > 0 Then
      RSV.MoveFirst
      Do While Not RSV.EOF
      'If RSV("CLOBALES") + RSV("CLOBORAS") > 0 Then
         VTOT = VTOT + RSV("opbales")
         vtot1 = vtot1 + RSV("opboras")
         vtot2 = vtot2 + RSV("opkgs")
         vtot3 = vtot3 + RSV("recbales")
         VTOT4 = VTOT4 + RSV("recboras")
         VTOT5 = VTOT5 + RSV("reckgs")
         VTOT6 = VTOT6 + RSV("issbales")
         VTOT7 = VTOT7 + RSV("issboras")
         VTOT8 = VTOT8 + RSV("isskgs")
                        
            VTOT9 = VTOT9 + RSV("clobales")
            VTOT10 = VTOT10 + RSV("cloboras")
            VTOT11 = VTOT11 + RSV("clokgs")
            VTOT15 = VTOT15 + IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))
         
         VTOT12 = VTOT12 + RSV("opvalue")
         VTOT13 = VTOT13 + RSV("recvalue")
         VTOT14 = VTOT14 + RSV("issvalue")
      'End If
         RSV.MoveNext
      Loop
                
   Else
      GoTo 30
   End If
                
   If Co >= PageLen Then
      Print #a, Space(5) + String(216, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call PartyHeader(pg1, Co, F_Date, T_Date, catcd, pRecType)
   End If
           
   Set Namers = New Recordset
   Namers.Open "Select varname from rm_var where varcode='" & rs1("VARCODE") & "'", DB, adOpenStatic
   If Not Namers.EOF Then VarName = Namers(0)
                
   Set opf = New Recordset
   If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
   
   Print #a, Space(5) + Padr((CStr(VarName)), 21, " ") & Padl(INF(VTOT, 0), 9, " ") + Padl(INF(vtot1, 0), 7, " ") + Padl(INF(vtot2, 3), 15, " ") + Padl(INF(VTOT12, 2), 17, " ") + Padl(INF(vtot3, 0), 10, " ") + Padl(INF(VTOT4, 0), 9, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 10, " ") + Padl(INF(VTOT7, 0), 9, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(VTOT9, 0), 10, " ") + Padl(INF(VTOT10, 0), 9, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
   tot1 = val(tot1 + VTOT)
   tot2 = val(tot2 + vtot1)
   tot3 = val(tot3 + vtot2)
   tot4 = val(tot4 + vtot3)
   tot5 = val(tot5 + VTOT4)
   tot6 = val(tot6 + VTOT5)
   tot7 = val(tot7 + VTOT6)
   tot8 = val(tot8 + VTOT7)
    
   tot9 = val(tot9 + VTOT8)
   tot10 = val(tot10 + VTOT9)
   tot11 = val(tot11 + VTOT10)
   tot12 = val(tot12 + VTOT11)
   tot13 = val(tot13 + VTOT12)   'Opening value
   tot14 = val(tot14 + VTOT13)   'Received value
   tot15 = val(tot15 + VTOT14)   'Issue VaLUE
   tot16 = val(tot16 + VTOT15)   'Clse value
   Co = Co + 1
   If Co >= PageLen Then
      Print #a, Space(5) + String(216, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call PartyHeader(pg1, Co, F_Date, T_Date, catcd, pRecType)
   End If
   vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
   VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
   VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0: VTOT = 0
30:
   rs1.MoveNext
Loop
Print #a,
Print #a, Space(5) + String(216, "-")
Print #a, Space(5) + "** Total **" + " " + Padl(INF(tot1, 0), 18, " ") + Padl(INF(tot2, 0), 6, " ") + Padl(INF(tot3, 3), 16, " ") + Padl(INF(tot13, 2), 17, " ") + Padl(INF(tot4, 0), 10, " ") + Padl(INF(tot5, 0), 9, " ") + Padl(INF(tot6, 3), 14, " ") + Padl(INF(tot14, 2), 16, " ") + Padl(INF(tot7, 0), 10, " ") + Padl(INF(tot8, 0), 9, " ") + Padl(INF(tot9, 3), 14, " ") + Padl(INF(tot15, 2), 16, " ") + Padl(INF(tot10, 0), 10, " ") + Padl(INF(tot11, 0), 9, " ") + Padl(INF(tot12, 3), 14, " ") + Padl(INF(tot16, 2), 16, " ")
Print #a, Space(5) + String(216, "-")
                If opf.RecordCount > 0 Then
                    Print #a, Space(5) & "Rejection Details"
                    Print #a, Space(5) + String(58, "-")
                    Print #a, Space(5) & "Varcode Lotno   Lotdt    Rejected Bales     Rejected Date"
                    Print #a, Space(5) + String(58, "-")
                    cbales = 0
                    ckgs = 0
                    cval = 0
                    
                    Do While opf.EOF = False
                        Print #a, Space(5) & Padr(opf("Varcode"), 8, " ") & Padr(opf("lotno"), 7, " ") & Space(1) & Padr(Format(opf("lotdt"), "dd-mm-yy"), 8, " ") & Space(2) & Padl(INF(opf("bales"), 0), 13, " ") & Space(5) & Padl(Format(opf("rejdt"), "dd-mm-yy"), 8, " ")
                        cbales = cbales + opf("bales")
                        ckgs = ckgs + opf("netwt")
                        cval = cval + opf("value")
                        opf.MoveNext
                    Loop
                    cbales = tot10 - cbales
                    ckgs = tot12 - ckgs
                    cval = tot16 - cval
                    Print #a, Space(5) + String(58, "-")
                    Print #a,
                    Print #a, Space(5) & "Closing Bales   Closing Weight    Closing Value   "
                    Print #a, Space(5) + String(50, "-")
                    Print #a, Space(5) & Padl(INF(cbales, 0), 13, " ") & Space(2) & Padl(INF(ckgs, 3), 15, " ") & Space(2) & Padl(INF(cval, 3), 15, " ")
                    Print #a, Space(5) + String(50, "-")
                    
              End If

Print #a, Chr(12)
Print #a, Chr(18)
' Call footermod(CInt(a), footerstr, 85)
Close #a
a = FreeFile
'Open "c:\sv.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type sv.txt>prn"
'Close #a
'RPTV.txtfile = "c:\sv.txt"
'RPTV.Batfile = "c:\sv.bat"
Call KALBATPROCESS("sv")
End Sub


