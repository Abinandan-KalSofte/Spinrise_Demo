Attribute VB_Name = "variety_stoct"
Dim rs1 As Recordset
Dim ResultRs As Recordset
Dim rptv As Report.ReportView
Dim VarKg, VarQty, VarVAL As Double
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim Cnn As Connection
Dim str1, k1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim ISSBAL As Double
Dim s As String
Dim Gbale As Double
Dim gwt As Double
Dim GVAL As Double
Dim a As Integer
Dim k As String
Dim z As Integer
Dim rp As New repform1
Public Sub VarietystockReport(Str As String, k As String, footerstr As String, Optional pRecType As String)
Set Cnn = New Connection
str1 = Str
F_Date = Str
T_Date = Str
k1 = k
Cnn.Provider = "MSDATASHAPE"
vrectype = Trim(Left(pRecType, 3))
Cnn.Open connectstring
    k = Trim(k)
    If k <> "ALL" Then
'        If Format(str, "MM") = "04" Or Format(str, "MM") = "4" Then
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                tmptypestr = "a.LotType"
            Else
                tmptypestr = "a.TransferType"
            End If
            Set ResultRs = New Recordset
            ResultRs.Open "select distinct C.VARNAME,a.LOTNO,a.LOTDT,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,round(isnull(a.netwt,0)-isnull(a.isswt,0),2) 'Stock',round(isnull(ratecy,0)/355.616,2) 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * round(isnull(ratecy,0)/355.616,2) 'val'" & _
                          " from rm_lot a,rm_cat b,rm_var c where C.CATCD=B.CATCD and " & tmptypestr & " = '" & vrectype & "' AND (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD  and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.catcd = '" & k & "' and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.LOTNO,a.LOTDT,a.bales,a.issbal,a.bblflg,a.netwt,a.isswt,ratecy having isnull(a.BALES,0)-isnull(a.ISSBAL,0) > 0 and round(isnull(a.netwt,0)-isnull(a.isswt,0),2) > 0  order by a.LOTNO,a.LOTDT ", Cnn, adOpenStatic
        Else
            Set ResultRs = New Recordset
            ResultRs.Open "select distinct C.VARNAME,a.LOTNO,a.LOTDT,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,round(isnull(a.netwt,0)-isnull(a.isswt,0),2) 'Stock',round(isnull(ratecy,0)/355.616,2) 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * round(isnull(ratecy,0)/355.616,2) 'val'" & _
                          " from rm_lot a,rm_cat b,rm_var c where C.CATCD=B.CATCD AND (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD  and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.catcd = '" & k & "' and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.LOTNO,a.LOTDT,a.bales,a.issbal,a.bblflg,a.netwt,a.isswt,ratecy having isnull(a.BALES,0)-isnull(a.ISSBAL,0) > 0 and round(isnull(a.netwt,0)-isnull(a.isswt,0),2) > 0  order by a.LOTNO,a.LOTDT ", Cnn, adOpenStatic
        
    End If
    If Not ResultRs.RecordCount <> 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
    Else
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                tmptypestr = "a.LotType"
            Else
                tmptypestr = "a.TransferType"
            End If
            Set ResultRs = New Recordset
            ResultRs.Open "select distinct C.VARNAME,a.LOTNO,a.LOTDT,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,round(isnull(a.netwt,0)-isnull(a.isswt,0),2) 'Stock',round(isnull(ratecy,0)/355.616,2) 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * round(isnull(ratecy,0)/355.616,2) 'val'" & _
                          " from rm_lot a,rm_cat b,rm_var c where (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD and " & tmptypestr & "='" & vrectype & "' and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' AND C.CATCD=B.CATCD group by C.VARNAME,a.LOTNO,a.LOTDT,a.bales,a.issbal,a.bblflg,a.netwt,a.isswt,ratecy having isnull(a.BALES,0)-isnull(a.ISSBAL,0) > 0 and round(isnull(a.netwt,0)-isnull(a.isswt,0),2) > 0  order by a.LOTNO,a.LOTDT ", Cnn, adOpenStatic
        Else
            Set ResultRs = New Recordset
            ResultRs.Open "select distinct C.VARNAME,a.LOTNO,a.LOTDT,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,round(isnull(a.netwt,0)-isnull(a.isswt,0),2) 'Stock',round(isnull(ratecy,0)/355.616,2) 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * round(isnull(ratecy,0)/355.616,2) 'val'" & _
                          " from rm_lot a,rm_cat b,rm_var c where (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD  and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' AND C.CATCD=B.CATCD group by C.VARNAME,a.LOTNO,a.LOTDT,a.bales,a.issbal,a.bblflg,a.netwt,a.isswt,ratecy having isnull(a.BALES,0)-isnull(a.ISSBAL,0) > 0 and round(isnull(a.netwt,0)-isnull(a.isswt,0),2) > 0  order by a.LOTNO,a.LOTDT ", Cnn, adOpenStatic
            
        End If
        
        
    End If
    
    If Not ResultRs.RecordCount <> 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
    
    Set rptv = New Report.ReportView
    z = FreeFile
    Close #z
    Close
'    Open "C:\sun.TXT" For Output As #z
Open KALFOLDERDATA & "\sun.TXT" For Output As #z
'    Open "C:\v.TXT" For Output As #2
    Open KALFOLDERDATA & "\v.TXT" For Output As #2
    pg1 = 1
    co = 0
    Call VarietystockRepHeader(pg1, co, Str, k)

      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      VarQty = 0
      varKgs = 0
      VarVAL = 0
        Set ResultRs = New Recordset
        If k <> "ALL" Then
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "a.LotType"
                Else
                    tmptypestr = "a.TransferType"
                End If
                'ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where a.varcode=b.varcode and lotdt<='" & Format(str, "yyyy-mm-dd") & "' and a.catcd='" & a & "' and isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0   and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "'", db, adOpenStatic
                ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where A.CATCD=B.CATCD and " & tmptypestr & "='" & vrectype & "' AND  (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.varcode=b.varcode and lotdt<='" & Format(Str, "yyyy-mm-dd") & "'  and a.catcd='" & k & "' and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "') ", DB, adOpenStatic
            Else
                ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where A.CATCD=B.CATCD AND  (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.varcode=b.varcode and lotdt<='" & Format(Str, "yyyy-mm-dd") & "' and a.catcd='" & k & "' and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "')  ", DB, adOpenStatic
            End If
             If ResultRs.EOF Then
             MsgBox "No Records Found", vbInformation, head
             Screen.MousePointer = 0
            Exit Sub
          End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "a.LotType"
                Else
                    tmptypestr = "a.TransferType"
                End If
                ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where A.CATCD=B.CATCD and " & tmptypestr & " = '" & vrectype & "' AND (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.varcode=b.varcode and lotdt<='" & Format(Str, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "')  and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
            Else
                ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where A.CATCD=B.CATCD AND (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.varcode=b.varcode and lotdt<='" & Format(Str, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "'  ", DB, adOpenStatic
            End If
            If ResultRs.EOF Then
             MsgBox "No Record Found", vbInformation, head
             Screen.MousePointer = 0
             Exit Sub
            Exit Sub
          End If
        End If
        
        repform1.usrProgBarCntl1.Visible = True
        
        Do While Not ResultRs.EOF
               Print #z, Space(5); Padr(ResultRs("varname"), 40, " ")
               Print #2, Space(14) & Padr(ResultRs("varname"), 20, " ");
               co = co + 1
               If co >= PageLen Then
                   Print #z, Space(5) & String(140, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call VarietystockRepHeader(pg1, co, s, k)
                End If
                
'       Rs.Open "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
'       " Result.clokgs as stock,closevalue as val," & _
'           " b.plotno,b.ratecy as RateCandy ,b.ratekg from
        
        strSQL = " select a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') as catcd,RATECY AS rATECANDY,RATEKG,B.PLOTNO,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END BALES, "
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END AS  BORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END STOCK,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END VAL"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(Str, Str)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE  AND A.VARCODE='" & ResultRs("VARCODE") & "' "

                    
        If Trim(k) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(k) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(k) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(k) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY,B.PLOTNO,RATEKG Order by A.LOTDT,A.lotno"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO Order by A.LOTDT,A.lotno"
            End If
        End If
         Set Rs = New Recordset
         Cnn.CommandTimeout = 5000
    Rs.Open strSQL, Cnn, adOpenStatic

                
'               Set Rs = New Recordset

'               If k <> "ALL" Then
'                    Set Rs = New Recordset
'
'                    If vrectype <> "ALL" Then
'                        If vrectype = "A" Then
'                            tmptypestr = "b.LotType"
'                        Else
'                            tmptypestr = "b.TransferType"
'                        End If
'                        If vrectype = "A" Then
'                            Rs.Open "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
'                                " Result.clokgs as stock,closevalue as val," & _
'                                " b.plotno,b.ratecy as RateCandy ,b.ratekg from " & _
'                                " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                                " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                                " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                                " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                                " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(B.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                                " case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.FAVAOURABLEWGT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & ResultRs("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                                " rm_lot b,rm_Var a,RM_Cat c where (b.transfertype='' or b.transfertype='JR') and b.catcd='" & k & "' and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd and b.varcode='" & ResultRs("varcode") & "' group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                                " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg ", DB, adOpenStatic, adLockBatchOptimistic
'                        Else
'                            Rs.Open "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
'                                " Result.clokgs as stock,closevalue as val," & _
'                                " b.plotno,b.ratecy as RateCandy ,b.ratekg from " & _
'                                " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                                " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                                " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                                " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                                " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(B.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.Isskgs) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                                " case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.FAVAOURABLEWGT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & ResultRs("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.Isskgs) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                                " rm_lot b,rm_Var a,RM_Cat c where " & tmptypestr & "= '" & vrectype & "' and b.catcd='" & k & "' and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd and b.varcode='" & ResultRs("varcode") & "' group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                                " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg ", DB, adOpenStatic, adLockBatchOptimistic
'                        End If
'                    Else
'                        Rs.Open "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
'                            " Result.clokgs as stock,closevalue as val," & _
'                            " b.plotno,b.ratecy as RateCandy ,b.ratekg from " & _
'                            " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                            " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                            " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                            " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                            " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                            " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                            " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(B.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                            " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                            " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.Isskgs) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND UPPER(OPFLG)='Y'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                            " case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.FAVAOURABLEWGT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                            " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & ResultRs("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                            " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.Isskgs) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                            " rm_lot b,rm_Var a,RM_Cat c where b.catcd='" & k & "' and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd and b.varcode='" & ResultRs("varcode") & "' group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                            " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg ", DB, adOpenStatic, adLockBatchOptimistic
'                    End If
'                Else
'                    Set Rs = New Recordset
'                    If vrectype <> "ALL" Then
'                        If vrectype = "A" Then
'                            tmptypestr = "b.LotType"
'                        Else
'                            tmptypestr = "b.TransferType"
'                        End If
'                        If vrectype = "A" Then
'                            Rs.Open "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
'                                " Result.clokgs as stock,closevalue as val," & _
'                                " b.plotno,b.ratecy as RateCandy ,b.ratekg from " & _
'                                " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                                " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                                " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                                " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                                " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND UPPER(OPFLG)='Y'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.Isskgs) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                                " case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.FAVAOURABLEWGT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & ResultRs("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.Isskgs) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                                " rm_lot b,rm_Var a,RM_Cat c where (b.TransferType='' OR b.TransferType='JR')  and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd and b.varcode='" & ResultRs("varcode") & "' group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                                " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg ", DB, adOpenStatic, adLockBatchOptimistic
'                        Else
'                            Rs.Open "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
'                                " Result.clokgs as stock,closevalue as val," & _
'                                " b.plotno,b.ratecy as RateCandy ,b.ratekg from " & _
'                                " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                                " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                                " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                                " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                                " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.Isskgs) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                                " case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.FAVAOURABLEWGT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & ResultRs("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.Isskgs) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                                " rm_lot b,rm_Var a,RM_Cat c where " & tmptypestr & "='" & vrectype & "' and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd and b.varcode='" & ResultRs("varcode") & "' group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                                " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg ", DB, adOpenStatic, adLockBatchOptimistic
'                        End If
'                    Else
'                        Rs.Open "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
'                            " Result.clokgs as stock,closevalue as val," & _
'                            " b.plotno,b.ratecy as RateCandy ,b.ratekg from " & _
'                            " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                            " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                            " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                            " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                            " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                            " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                            " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(B.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(B.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                            " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                            " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.Isskgs) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                            " case when 'N' = 'N' then sum(isnull(B.FAVAOURABLEWGT,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.FAVAOURABLEWGT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                            " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and  b.varcode='" & ResultRs("varcode") & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                            " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' AND b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.Isskgs) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.varcode='" & ResultRs("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                            " rm_lot b,rm_Var a,RM_Cat c where Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd and b.varcode='" & ResultRs("varcode") & "' group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                            " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg ", DB, adOpenStatic, adLockBatchOptimistic
'                    End If
'                End If
                
               Dim i As Integer
                
               
               Do While Not Rs.EOF
               
                    i = i + 1
                    
                    If i > Rs.RecordCount Then
                        i = Rs.RecordCount
                    End If
                    
                    Call repform1.usrProgBarCntl1.ProgView(Rs.RecordCount, i, repform1)

               
                If Rs("bales") + Rs("BORAS") > 0 Then
                 Set rs1 = New Recordset
                    rs1.Open "Select Ayfdate from pp_year Where AyfDate <= '" & Format(Rs("Lotdt"), "YYYY-MM-DD") & "' and Ayldate >='" & Format(Rs("lotdt"), "YYYY-MM-DD") & "'", DB, adOpenStatic
                    If rs1.EOF = False Then
                        sLotYear = Format(rs1(0), "YY")
                    Else
                        sLotYear = Format(Rs("Lotdt"), "YY")
                    End If
                    ISSBAL = Rs("BALES") + Rs("BORAS")
'                    If Rs("LOTNO") = "567" Then MsgBox "qwreqrweruiwehtreutrerhgjkhdrkghrkj"
                    Print #z, Space(5) + Space(34) + Padl(CStr(Rs("LOTNO")) & "/" & sLotYear, 9, " ") + Space(2) + Padr(CStr(Format(Rs("LOTDT"), "DD/MM/YY")), 11, " ") + Padl(Rs("plotno"), 8, " ") + Space(2) + Padl(CStr(INF((Rs("ratekg")), 2)), 8, " ") + Space(1) + Padl(INF(ISSBAL, 0), 6, " ") + Space(4) + Padr("Bales", 6, " ") + Space(2) + Padl(CStr(INF(Rs("STOCK"), 3)), 16, " ") + Space(1) + Padl(CStr(INF(Rs("Ratecandy"), 0)), 12, " "); Padl(CStr(INF(Rs("VAL"), 2)), 18, " ")
                    co = co + 1
                    'Print #2,
                    If co >= PageLen Then
                        Print #z, Space(5) & String(140, "-")
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        co = 0
                        Call VarietystockRepHeader(pg1, co, s, k)
                    End If
                    
                    tot = tot + ISSBAL
                    tot2 = tot2 + Rs("STOCK")
                    tot3 = tot3 + Rs("VAL")
                    VarQty = VarQty + ISSBAL
                    VarVAL = VarVAL + Rs("val")
                    VarKg = VarKg + Rs("stock")
                    
               End If
               Rs.MoveNext
               
        Loop
        
        ResultRs.MoveNext
        If Rs.RecordCount > 1 Then
            Print #z,
            co = co + 1
            If co >= PageLen Then
                   Print #z, Space(5) & String(140, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call VarietystockRepHeader(pg1, co, s, k)
                End If
            Print #z, Space(53) + Chr(27); "E"; "** Variety Total **" + Padl(INF(VarQty, 0), 14, " "); Padl(INF(VarKg, 3), 28, " "); Padl(INF(VarVAL, 2), 31, " "); Chr(27); "F"
            co = co + 1
            Print #2, Padl(INF(VarQty, 0), 10, " "); Padl(INF(VarKg, 3), 17, " "); Space(3); Padl(INF(VarVAL, 2), 17, " ")
            If co >= PageLen Then
                   Print #z, Space(5) & String(140, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call VarietystockRepHeader(pg1, co, s, k)
             End If
         Else
           Print #2, Padl(INF(VarQty, 0), 10, " "); Padl(INF(VarKg, 3), 17, " "); Space(3); Padl(INF(VarVAL, 2), 17, " ")
                 
        End If
        VarKg = 0
        VarVAL = 0
        VarQty = 0
        If co >= PageLen Then
                   Print #z, Space(5) & String(140, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call VarietystockRepHeader(pg1, co, s, k)
                End If
        
    Loop

        Print #z, Space(5) & String(140, "-")
                co = co + 1
                If co >= PageLen Then
                   Print #z, Space(5) & String(140, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call VarietystockRepHeader(pg1, co, s, k)
                End If
        Print #z, Space(55) + Chr(27); "E" & "** Grand Total ** " + Padl(INF(tot, 0), 13, " ") + Padl(INF((tot2), 3), 28, " ") + Padl(INF((tot3), 2), 31, " "); Chr(27); "F"
        
        If co >= PageLen Then
                   Print #z, Space(5) & String(140, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call VarietystockRepHeader(pg1, co, s, k)
                End If
        Print #z, Space(5) & String(140, "-")
        If co >= PageLen Then
                   Print #z, Space(5) & String(140, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   co = 0
                   Call VarietystockRepHeader(pg1, co, s, k)
        End If
         
        Close #2
''''ABSTRACT
If co >= 50 Then
   Print #z, Chr(12) & Chr(18)
   co = 0
   pg1 = pg1 + 1
   Print #z,
   Print #z, Space(2) + Chr(27) + "E" + CENTRE(divname, 95, " ") + Chr(27) + "F"
   Print #z,
   SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
   Print #z, Space(14) & Chr(27) + "E" + "Varietywise Stock Position Abstract" + Chr(27) + "F" & " as on " + Format(Trim(Str), "DD/MM/YY") + Space(9); "Pg.: " + Padl(CStr(pg1), 3, " ")
   Print #z, Space(14) & CENTRE(String(55, "-"), 67, "-")
   Print #z, Space(24) & "Variety" & Space(6) & "  Bales" & Space(7) & "Weight(Kgs)" & Space(7) & "       Value"
   Print #z, Space(14) & CENTRE(String(55, "-"), 67, "-")
   co = co + 7
Else
   Print #z, Space(3) & CENTRE(Chr(27) & "E" & "Abstract" & Chr(27) & "F", 130, " ")
   Print #z,
   ''Print #z, Space(3) & CENTRE(Chr(27) + "E" + "Varietywise Stock Position " + Chr(27) + "F" & " as on" & Space(5) & Format(pdate, "dd/mm/yy"), 130, " ")
   Print #z, Space(14) & Chr(27) + "E" + "Varietywise Stock Position Abstract" + Chr(27) + "F" & " as on " + Format(Trim(Str), "DD/MM/YY") + Space(9); "Pg.: " + Padl(CStr(pg1), 3, " ")
   Print #z, Space(14) & CENTRE(String(55, "-"), 67, "-")
   Print #z, Space(24) & "Variety" & Space(6) & "  Bales" & Space(7) & "Weight(Kgs)" & Space(7) & "       Value"
   Print #z, Space(14) & CENTRE(String(55, "-"), 67, "-")
   co = co + 6
End If

Dim abstr As String
'Open "C:\v.txt" For Input As #2

Open KALFOLDERDATA & "\v.TXT" For Output As #2
While Not EOF(2)
  Line Input #2, abstr
  Print #z, abstr
  
  co = co + 1
  If co >= 57 Then
   Print #z, Chr(12)
   co = 0
   pg1 = pg1 + 1
   Print #z,
   Print #z, Space(2) + Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
   Print #z,
   SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
    Print #z, Space(14) & Chr(27) + "E" + "Varietywise Stock Position Abstract" + Chr(27) + "F" & " as on " + Format(Trim(Str), "DD/MM/YY") + Space(9); "Pg.: " + Padl(CStr(pg1), 3, " ")
   Print #z, Space(14) & CENTRE(String(55, "-"), 67, "-")
   Print #z, Space(24) & "Variety" & Space(6) & "  Bales" & Space(7) & "Weight(Kgs)" & Space(7) & "       Value"
   Print #z, Space(14) & CENTRE(String(55, "-"), 67, "-")
   co = co + 7
 End If
Wend
Print #z, Space(14) & CENTRE(String(55, "-"), 67, "-")
Print #z, Space(14) + Chr(27); "E" & "** Total ** " + Space(6) & Padl(INF(tot, 0), 10, " ") + Padl(INF((tot2), 3), 17, " ") + Padl(INF((tot3), 2), 20, " "); Chr(27); "F"
Print #z, Space(14) & CENTRE(String(55, "-"), 67, "-")
Print #z, Chr(12)
Print #z, Chr(12)
Print #z, Chr(12)
Print #z, Chr(12)
Call footermod(CInt(z), footerstr, 85)

Close #z


Close #2

z = FreeFile
'Open "C:\sun.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "C:"
'Print #z, "cd\"
'Print #z, "type sun.TXT>prn"
'Close #z
'RPTV.txtfile = "C:\sun.TXT"
'RPTV.Batfile = "C:\sun.bat"
Call KALBATPROCESS("sun")

repform1.usrProgBarCntl1.ProgClear
repform1.usrProgBarCntl1.Visible = False


End Sub



Public Sub VarietystockRepHeader(pg1 As Integer, co As Integer, s As String, a As String)
          Print #z, Chr(18)
          Print #z, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z,
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(3) & Chr(27) + "E" + "Varietywise Stock Position" + Chr(27) + "F" + " as on " + Format(Trim(s), "DD/MM/YY") + Space(8); "Running Date: "; CStr(SR) + "Pg.: " + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #z, Space(5) & String(140, "-")
          Print #z, Space(5) & "                                                        Supplier               <-------Closing Stock -------->        Rate/  "
          Print #z, Space(5) & "Variety                             Lot No.  Date        Lot No.   Rate/Kg    Qty    Unit                 Kgs        Candy             Value"
          Print #z, Space(5) & String(140, "-")
          co = co + 8
End Sub


Public Sub VarietyStockAbsRep(Str As String, m As String)
Set Cnn = New Connection
Cnn.Open connectstring
m = Trim(m)
Dim pg As Integer
Dim i As Integer
Dim Rs As Recordset

If m <> "A" Then
  
  Set Rs = New Recordset
  
Rs.Open "select varcode,varname,sum(bales) as bales,sum(stock) AS STOCK,sum(val)AS VAL from (select varcode,varname,(a.bales-isnull(b.bales,0)) as bales," & _
    " round(isnull(a.stock,0)-isnull(b.isskgs,0),3) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.RATE,2),a.rate" & _
      " from (" & _
      "select distinct a.LOTNO,a.LOTDT,A.catcd ,c.varcode,c.VARNAME,a.BALES AS BALES,round(isnull(a.netwt,0),2) 'Stock', " & _
      "IsNull(ratekg, 0) 'Rate',round(isnull(ratecy,0)/355.6187,2) 'val',isnull(a.PLOTNO,' ')as PLOTNO," & _
      "round((ratecy),0) as ratecandy,ISSBAL from rm_lot a,rm_var c  where " & _
      "(a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.DIVCODE ='" & Divcode & "' and a.catcd='" & Trim(m) & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(Str, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "') and " & _
      "a.lotyear='" & Year(yfdate) & "' AND (BALES-isnull(ISSBAL,0))>0)a,( " & _
      " SELECT LOTNO,LOTDT,CATCD,SUM(BALES) AS BALES,SUM(KGS)AS Isskgs FROM( " & _
      " SELECT LOTNO,LOTDT,CATCD,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
      " SELECT A.LOTNO,A.LOTDT,A.CATCD,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A WHERE   status in ('AC','AW') and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<='" & Format(Str, "yyyy-mm-dd") & "' and " & _
      " a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
      " AND A.CATCD=B.CATCD GROUP BY A.LOTNO,A.LOTDT,A.CATCD,A.BALENO)X GROUP BY LOTNO,LOTDT,CATCD Union" & _
      " SELECT A.LOTNO,A.LOTDT,A.CATCD,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A WHERE      status in ('AC','AW') and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<='" & Format(Str, "yyyy-mm-dd") & "' and a.catcd='" & Trim(m) & "' and " & _
      " a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
      " GROUP BY A.LOTNO,A.LOTDT,A.CATCD)Y GROUP BY LOTNO,LOTDT,CATCD " & _
      ")b where a.lotno*=b.lotno and a.lotdt*=b.lotdt  and a.catcd=b.catcd  " & _
      " group by a.catcd,a.varname,a.varcode," & _
      "a.ratecandy , a.Val, a.bales, b.bales, a.stock, b.isskgs, ISSBAL,A.RATE " & _
      "having round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 )x group by varcode,varname ", DB, adOpenStatic

Else
    Set Rs = New Recordset
    Rs.Open "select varcode,varname,sum(bales) as bales,sum(stock) AS STOCK,sum(val)AS VAL from (select varcode,varname,(a.bales-isnull(b.bales,0)) as bales," & _
        " round(isnull(a.stock,0)-isnull(b.isskgs,0),3) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.RATE,2),a.rate" & _
          " from (" & _
          "select distinct a.LOTNO,a.LOTDT,A.catcd ,c.varcode,c.VARNAME,a.BALES AS BALES,round(isnull(a.netwt,0),2) 'Stock', " & _
          "IsNull(ratekg, 0) 'Rate',round(isnull(ratecy,0)/355.6187,2) 'val',isnull(a.PLOTNO,' ')as PLOTNO," & _
          "round((ratecy),0) as ratecandy,ISSBAL from rm_lot a,rm_var c  where " & _
          "a.DIVCODE ='" & Divcode & "'  and a.varcode =c.varcode and A.LOTDT <= '" & Format(Str, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(Str, "yyyy-mm-dd") & "') and " & _
          " a.lotyear='" & Year(yfdate) & "' AND (BALES-isnull(ISSBAL,0))>0)a,( " & _
          " SELECT LOTNO,LOTDT,CATCD,SUM(BALES) AS BALES,SUM(KGS)AS Isskgs FROM( " & _
          " SELECT LOTNO,LOTDT,CATCD,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
          " SELECT A.LOTNO,A.LOTDT,A.CATCD,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A WHERE    status in ('AC','AW') and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<='" & Format(Str, "yyyy-mm-dd") & "' and " & _
          " a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
          " AND A.CATCD=B.CATCD GROUP BY A.LOTNO,A.LOTDT,A.CATCD,A.BALENO)X GROUP BY LOTNO,LOTDT,CATCD Union" & _
          " SELECT A.LOTNO,A.LOTDT,A.CATCD,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A WHERE   status in ('AC','AW') and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<='" & Format(Str, "yyyy-mm-dd") & "' and " & _
          " a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
          " GROUP BY A.LOTNO,A.LOTDT,A.CATCD)Y GROUP BY LOTNO,LOTDT,CATCD " & _
          ")b where a.lotno*=b.lotno and a.lotdt*=b.lotdt  and a.catcd=b.catcd  " & _
          " group by a.catcd,a.varname,a.varcode," & _
          "a.ratecandy , a.Val, a.bales, b.bales, a.stock, b.isskgs, ISSBAL,A.RATE " & _
          "having round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 )x group by varcode,varname ", DB, adOpenStatic
End If
If Rs.EOF Then
  MsgBox "No Record Found"
  Exit Sub
End If
pg = 0
i = 0
Gbale = 0
gwt = 0
GVAL = 0

Set rptv = New Report.ReportView
a = FreeFile
Close
'Open "C:\var.TXT" For Output As #a
    Open KALFOLDERDATA & "\var.TXT" For Output As #a
Call absheader(pg, i, Str, m)
Do While Not Rs.EOF
  Print #a, Space(2) & Padr(Rs("varname"), 20, " ") & Space(2) & Padl(Rs("bales"), 6, " ") & Space(5) & Padr("Bales", 6, " ") & Space(2) & Padl(INF(Rs("stock"), 2), 15, " ") & Space(3) & Padl(INF(Rs("val"), 2), 15, " ")
  i = i + 1
  Gbale = Gbale + Rs("bales")
  gwt = gwt + Rs("stock")
  GVAL = GVAL + Rs("Val")
  If i >= 57 Then
      Call absheader(pg, i, Str, m)
  End If
  Rs.MoveNext
Loop
Print #a, Space(2) & String(87, "-")
Print #a, Space(2) & Chr(27) & "E" & "** Grand Total **" & Space(1) & Padl(Gbale, 10, " ") & Space(13) & Padl(INF(gwt, 2), 15, " ") & Space(3) & Padl(INF(GVAL, 2), 15, " ") & Chr(27) & "F"
Print #a, Space(2) & String(87, "-")

Print #a, Chr(12)
Close
a = FreeFile
'Open "C:\var.bat" For Output As #a
'
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type var.TXT>prn"
'
'RPTV.txtfile = "C:\var.TXT"
'RPTV.Batfile = "C:\var.bat"
Call KALBATPROCESS("var")

Screen.MousePointer = 0
End Sub
Public Sub absheader(pg As Integer, i As Integer, s As String, m As String)
pg = pg + 1
i = 0
Print #a, Chr(18)
Print #a, Space(2) & CENTRE(divname, 87, " ")
Print #a,
Print #a, Space(2) & Chr(27) & "E" & "Varietywise Stock Position Abstract" & Chr(27) & "F" & " as on " & Format(s, "dd/mm/yy") & Space(18) & Format(pdate, "dd/mm/yy") & Space(1) & "Pg.No :" & Padl(pg, 3, " ")
Print #a, Space(2) & String(87, "-")
Print #a, Space(2) & "VARIETY                BALES      Unit        WEIGHT(KGS)            VALUE"
Print #a, Space(2) & String(87, "-")
i = i + 6
End Sub
