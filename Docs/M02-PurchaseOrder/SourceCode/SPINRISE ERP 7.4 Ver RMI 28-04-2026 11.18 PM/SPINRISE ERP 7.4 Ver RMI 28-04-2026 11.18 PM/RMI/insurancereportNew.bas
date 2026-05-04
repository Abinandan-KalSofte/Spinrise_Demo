Attribute VB_Name = "InsurancereportNew"
Dim RecRs As Recordset
Dim issrs As Recordset
Dim issless As Recordset
Dim Oprs As Recordset
Dim TEMP As Recordset
Dim rep As Report.ReportView
Dim f As Integer
Dim Date1, Date2, date3 As String
Dim totoprecbale As Double
Dim month_value1 As String
Dim totoprecborah  As Double
Dim totoprectot  As Double
Dim totoprectotkg  As Double
Dim totoprectotval As Double
Dim avgstockkgs, avgstockval As Double
Dim Adjustment As Double
Dim AdjRs As New Recordset
Dim too As Double
Dim too1 As Double
Dim monthmm As String
Dim yearyy As String
Dim Adjustment1 As String
Dim Adjustm As String
Dim months As String
Dim years As String
Dim cat As String
Dim rp As New repform
Public Sub insurance(month_value1 As String, month_value2 As String, Category As String, footerstr As String, rectype As String, printoption As String)
        Set rep = New Report.ReportView
        Dim tot17, tot18, tot19, tot20, tot21, tot22, tot23, tot24 As Double
        tot17 = 0: tot18 = 0: tot19 = 0: tot20 = 0: tot21 = 0: tot22 = 0: tot23 = 0: tot24 = 0
        DB.CommandTimeout = 10000
        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0
        avgstockkgs = 0: avgstockval = 0
        avgreckgs = 0: avgrecval = 0
        avgisskgs = 0: avgissval = 0
        vrectype = Trim(Left(rectype, 3))
        Set rsa = New Recordset
        If Category <> "A" Then
            rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                cat = rsa(0)
            End If
        Else
            cat = "A"
        End If
        Close
'        Open "c:\INSUR.txt" For Output As #f
Open KALFOLDERDATA & "\INSUR.TXT" For Output As #f
        Date1 = Format(month_value1, "yyyy-mm-dd")
        Date2 = Format(month_value2, "yyyy-mm-dd")
        Set Rs = New Recordset
        Rs.Open "select  distinct lOTdt from rm_LOT where lOTdt between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' group by lOTdt", cn, adOpenStatic, adLockBatchOptimistic
        date3 = Format(month_value2, "yyyy-mm-dd")
        dayval = 31
        If MONTH(Date1) = "3" Then dayval = 29
        If Day(Date1) = 1 Then
            If MONTH(Date1) = 1 Then
                date3 = Year(Date1) & "/" & IIf(Len(MONTH(Date1)) < 2, "0" & MONTH(Date1), MONTH(Date1)) & "/" & dayval
           Else
                date3 = Year(Date1) & "/" & IIf(Len(MONTH(Date1) - 1) < 2, "0" & MONTH(Date1) - 1, MONTH(Date1) - 1) & "/" & dayval
           End If
        ElseIf Day(Date1) > 1 Then
           date3 = Year(Date1) & "/" & IIf(Len(MONTH(Date1)) < 2, "0" & MONTH(Date1), MONTH(Date1)) & "/" & Day(Date1) - 1
        End If
        Do While Not IsDate(date3)
           date3 = Year(Date1) & "/" & IIf(Len(MONTH(Date1) - 1) < 2, "0" & MONTH(Date1) - 1, MONTH(Date1) - 1) & "/" & dayval - 1
        Loop


        If Table_Exists("insurance") Then
            DB.Execute "drop table insurance"
        End If
        DB.Execute "Create table insurance (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),opvalue numeric(18,2),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),recvalue numeric(18,2), oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),oprectotval numeric(15,2),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstotval numeric(16,2),isstran numeric(16),isstrantot numeric(15,3),isstrantotval numeric(15,3),isstotkg numeric(15,3),isstotvalue numeric(17,2),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),totval numeric(15,2),REJKG NUMERIC(15,3),rejvalue numeric(15,2),adjkg numeric(15,3),adjval numeric(15,3),adjtype char(1),ipaddress varchar(50))"
        Date1 = Format(month_value1, "yyyy-mm-dd")
        Date2 = Format(month_value2, "yyyy-mm-dd")
        temp1 = 0
        
        For dtCurrDate = CDate(month_value1) To CDate(month_value2)
                SqlStr = ""
                SqlStr = Chr(13) + " select CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
                SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
                SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
                SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
                SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOVALUE"
                SqlStr = SqlStr + Chr(13) + "  from ("
                SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(dtCurrDate), CDate(dtCurrDate))
                SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B WHERE A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "'"
        
           
                
        If Trim(Category) <> "A" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    SqlStr = SqlStr & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "' and b.divcode ='" & Divcode & "'"
                Else
                    SqlStr = SqlStr & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "' and b.divcode ='" & Divcode & "'"
                End If
            Else
                    SqlStr = SqlStr & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "' and b.divcode ='" & Divcode & "'"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    SqlStr = SqlStr & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "'"
                Else
                    SqlStr = SqlStr & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "'"
                End If
            Else
                    SqlStr = SqlStr & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
            End If
        End If
        
                
                Set Rs = New Recordset
                Rs.Open SqlStr, DB, adOpenStatic
        
                Set AdjRs = New Recordset
                AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJval),0) AS ADJval,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,sum(isnull(a.adjwt,0)) * RATEKG as Adjval, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt='" & Format(dtCurrDate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust,a.ratekg) A group by adjust", DB, adOpenStatic
        
                If AdjRs.RecordCount > 0 Then
                    Do While Not AdjRs.EOF
                        If AdjRs("adjust") = "+" Then
                            Adjustment1 = Adjustment1 + AdjRs("adjval")
                            Adjustment = Adjustment + AdjRs("ADJTOTKGS")
                        ElseIf AdjRs("adjust") = "-" Then
                            Adjustment1 = Adjustment1 - AdjRs("adjval")
                            Adjustment = Adjustment - AdjRs("ADJTOTKGS")
                        End If
                        AdjRs.MoveNext
                    Loop
                Else
                   Adjustment = 0
                End If
                 
                TotalAdjust = TotalAdjust + Adjustment
                
                If Rs.EOF = False Then
                    sQry = ""
                    sQry = sQry & Chr(13) & " INSERT INTO insurance (date1,Opbales, opborah, optot,optotkg,recbale,recborah,rectot,"
                    sQry = sQry & Chr(13) & " rectotkg,oprecbale,oprecborah,oprectot,oprectotkg,issbale, issboarh,isstot,"
                    sQry = sQry & Chr(13) & " isstotkg,rejvalue,REJKG,ADJval,adjkg,adjtype,totbale,totborah,total,totkg,"
                    sQry = sQry & Chr(13) & " opvalue,recvalue,oprectotval,isstotvalue,totval,ipaddress) Values "
                    sQry = sQry & Chr(13) & " ('" & Format(dtCurrDate, "YYYY/MM/DD") & "',"
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbORAS")), 0, Rs("opbORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("opbORAS")), 0, Rs("opbORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPKGS")), 0, Rs("OPKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("RecKGS")), 0, Rs("RecKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPBORAS")), 0, Rs("OPBORAS")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opbales")), 0, Rs("opbales")) + IIf(IsNull(Rs("opboras")), 0, Rs("opboras")) + IIf(IsNull(Rs("RECBALES")), 0, Rs("RECBALES")) + IIf(IsNull(Rs("RECBORAS")), 0, Rs("RECBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("OPKGS")), 0, Rs("OPKGS")) + IIf(IsNull(Rs("recKGS")), 0, Rs("recKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBALES")), 0, Rs("ISSBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBORAS")), 0, Rs("ISSBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("ISSBALES")), 0, Rs("ISSBALES")) + IIf(IsNull(Rs("ISSBORAS")), 0, Rs("ISSBORAS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("isskgs")), 0, Rs("isskgs")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJvalue")), 0, Rs("REJvalue")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJKGS")), 0, Rs("REJKGS")) & ","
                    sQry = sQry & Chr(13) & Adjustment1 & "," & Adjustment & ",'-',"
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) + IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOKGS")), 0, Rs("CLOKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opvalue")), 0, Rs("opvalue")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REcvalue")), 0, Rs("REcvalue")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("opvalue")), 0, Rs("opvalue")) + IIf(IsNull(Rs("REcvalue")), 0, Rs("REcvalue")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("issvalue")), 0, Rs("issvalue")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("clovalue")), 0, Rs("clovalue")) & " , '" & LocalIP & "' )"
                    
                    DB.Execute sQry
                End If
                temp1 = temp1 + 1
                
                avgstockkgs = avgstockkgs + IIf(IsNull(Rs("CLOKGS")), 0, Rs("CLOKGS"))
                avgstockval = avgstockval + IIf(IsNull(Rs("CLOvalue")), 0, Rs("CLOvalue"))
                
        Next
        
        If printoption = "CRY" Then Exit Sub
        
        Print #f, Chr(15)
        temp1 = 0
        avgstockkgs = 0
        avgstockval = 0
        MON = MonthName(MONTH(month_value1))
        Dim temp5 As String
        temp5 = Year(month_value1)
        Call prnhead(CStr(MON), CStr(temp5))
        Set rs2 = New Recordset
         rs2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,opvalue as opvalue,isstotval as isstotval,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,recvalue as recvalue,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,oprectotval as oprectotval,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,isstotvalue as issval,isstran,isstrantot,isstrantotval,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,totval as closingvalue,rejkg as rejectedkgs,rejvalue as rejectedval,adjkg as adjustedkgs,adjval as adjval,adjtype from insurance where Date1 between '" & Format(month_value1, "dd/mmm/yyyy") & "' and '" & Format(month_value2, "dd/mmm/yyyy") & "' order by date1 ", DB, adOpenStatic
         'Set rs3 = New Recordset
         rs2.MoveFirst
         
        Do While rs2.EOF = False
            If rs2("adjustedkgs") > 0 Then
                'Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("opvalue"), 3), 15, " "); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(2); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(39) & Padl(INF(rs2("adjustedkgs") & "(" & Padr(rs2("adjtype"), 1, " ") & ")", 3), 15, " "); Space(2); Padl(INF(rs2("closing"), 3), 15, " ")
            Else
            'Print #f, Space(5) & Padr(Format(rs2("date1"), "dd-mm-yy"), 8, " "); Space(1); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("opvalue"), 3), 15, " "); Space(1); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(1); Padl(INF(rs2("recvalue"), 2), 15, " "); Space(1); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(1); Padl(INF(rs2("oprectotval"), 2), 15, " "); Space(1); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("rejectedval"), 2), 10, " "); Space(1); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(1); Padl(INF(rs2("issval"), 2), 12, " ") & Space(1) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(1) & Padl(INF(rs2("isstrantotval"), 2), 10, "  ") & Space(1) & Padl(INF(rs2("adjustedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("closing"), 3), 15, " "); Space(1); Padl(INF(rs2("closingvalue"), 2), 15, " ")
            'before adjvalue Print #f, Space(5) & Padr(Format(rs2("date1"), "dd-mm-yy"), 8, " "); Space(1); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("opvalue"), 3), 15, " "); Space(1); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(1); Padl(INF(rs2("recvalue"), 2), 15, " "); Space(1); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(1); Padl(INF(rs2("oprectotval"), 2), 15, " "); Space(1); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("rejectedval"), 2), 10, " "); Space(1); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(1); Padl(INF(rs2("issval"), 2), 12, " ") & Space(1) & Padl(INF(rs2("isstrantot"), 3), 10, " ") & Space(1) & Padl(INF(rs2("isstrantotval"), 2), 11, "  ") & Space(0) & Padl(INF(rs2("adjustedkgs"), 3), 10, " "); Space(1); Padl(INF(rs2("closing"), 3), 15, " "); Space(1); Padl(INF(rs2("closingvalue"), 2), 15, " ")
            
                 Print #f, Space(5) & Padr(Format(rs2("date1"), "dd-mm-yy"), 8, " "); Space(1); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("opvalue"), 3), 15, " "); Space(1); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(1); Padl(INF(rs2("recvalue"), 2), 15, " "); Space(1); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(1); Padl(INF(rs2("oprectotval"), 2), 15, " "); Space(1); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("rejectedval"), 2), 10, " "); Space(1); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(1); Padl(INF(rs2("issval"), 2), 12, " ") & Space(1) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(1) & Padl(INF(rs2("isstrantotval"), 2), 15, "  ") & Space(1); Padl(INF(rs2("closing"), 3), 15, " "); Space(1); Padl(INF(rs2("closingvalue"), 2), 15, " ")
                 'Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("opvalue"), 3), 15, " "); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(2); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(39) & Padl(INF(rs2("adjustedkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("closing"), 3), 15, " ")
            End If
            cnt = cnt + 1
            tot17 = tot17 + rs2("reckgs")
            tot18 = tot18 + rs2("recvalue")
            tot19 = tot19 + rs2("rejectedkgs")
            tot20 = tot20 + rs2("rejectedval")
            tot21 = tot21 + rs2("isskgs")
            tot22 = tot22 + rs2("issval")
            tot23 = tot23 + rs2("isstrantot")
'            tot24 = tot24 + RS2("isstrantotval")
            
            
            avgstockkgs = avgstockkgs + rs2("closing")
            avgstockval = avgstockval + rs2("closingvalue")
            avgreckgs = avgreckgs + rs2("reckgs")
            avgrecval = avgrecval + rs2("recvalue")
            
            avgisskgs = avgisskgs + rs2("isskgs")
            avgissval = avgissval + rs2("issval")
            
            rs2.MoveNext
            temp1 = temp1 + 1
        Loop
        
        avgstock = avgstockkgs / temp1
        avgvalue = avgstockval / temp1
        
        Print #f, Space(5) & Space(8); Space(11); "Total"; Space(1); Space(15); Space(1); Padl(INF(tot17, 3), 15, " "); Space(1); Space(15); Space(1); Space(15); Space(1); Space(15); Space(1); Padl(INF(tot19, 3), 15, " "); Space(1); Space(10); Space(1); Padl(INF(tot21, 3), 15, " "); Space(1); Space(12) & Space(1) & Padl(INF(tot23, 3), 15, " ") & Space(1) & Space(15) & Space(1); Space(15); Space(1); Space(15)
        
        Print #f, Space(5) & Space(8); Space(11); Space(5); Space(1); Space(15); Space(1); Space(15); Space(1); Padl(INF(tot18, 2), 15, " "); Space(1); Space(15); Space(1); Space(15); Space(1); Space(15); Space(1); Padl(INF(tot20, 2), 10, " "); Space(1); Space(10); Padl(INF(tot22, 2), 18, " ") & Space(1) & Space(15) & Space(1) & Padl(INF(tot24, 2), 15, "  ") & Space(1); Space(15); Space(1); Space(15)
        Print #f, Space(5) + String(225, "-")
        Print #f,
        Print #f,
        Print #f, Space(184) + "Average Stock For the Month : " & Padl(INF(avgstock, 0), 15, " ")
        Print #f,
        Print #f, Space(184) + "Average Value For the Month : " & Padl(INF(avgvalue, 0), 15, " ")
        Print #f,
        Print #f, 'Space(10) + "Receipt     :" & Padr(INF(avgreckgs, 2), 15, " ") & " " & "Value :" & Padr(INF(avgrecval, 2), 15, " ")
        Print #f, 'Space(10) + "Issue       :" & Padr(INF(avgisskgs, 2), 15, " ") & " " & "Value :" & Padr(INF(avgissval, 2), 15, " ")
        Print #f, 'Space(10) + "Closing     :" & Padr(INF(avgstockkgs, 2), 15, " ") & " " & "Value :" & Padr(INF(avgstockval, 2), 15, " ")
        Print #f,
       ' Print #f, Chr(27) & "E" & Space(70) + "Prepared " & Space(30) & "  Checked" & Space(30) & " F.M " & Chr(27) & "F"
        Call footermod(CInt(f), footerstr, 85)
        Print #f, Space(5) + String(225, "-")
        Close #f
'        Open "c:\INSUR.bat" For Output As #f
'        Print #f, "cd\"
'        Print #f, "c:"
'        Print #f, "cd\"
'        Print #f, "type INSUR.txt > prn"
'        Close #f
'        Rep.txtfile = "c:\INSUR.txt"
'        Rep.Batfile = "c:\INSUR.bat"
f = FreeFile
Call KALBATPROCESS("INSUR")
        Screen.MousePointer = 0
End Sub
    Private Sub prnhead(MON As String, temp5 As String)
    Print #f,
    Print #f, Chr(18)
    Print #f, Space(5) + Chr(27) & "E" & CENTRE(divname, 130, " ") & Chr(27) & "F"
    Print #f, Chr(15)
    Print #f, Space(5) + "Stock Statement for the month of  " & MON & "  " & temp5 & "    "
    Print #f, Space(5) + String(225, "-")
               ''' ("opvalue"), 3), 15, " "); Space(1); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(1); Padl(INF(rs2("recvalue"), 2), 15, " "); Space(1); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(1); Padl(INF(rs2("oprectotval"), 2), 15, " "); Space(1); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("rejectedval"), 2), 10, " "); Space(1); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(1); Padl(INF(rs2("issval"), 2), 12, " ") & Space(1) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(1) & Padl(INF(rs2("adjustedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("closing"), 3), 15, " "); Space(1); Padl(INF(rs2("closingvalue"), 2), 15, " ")
    'Print #f, Space(5); "Date        Opening Kgs.           Value       Receipt Kgs.    Value         Total(Kgs.)       Value   Rejected Kgs.       Value   Issues Kgs.     Value     Transfer Kgs.      Value        Return  Kgs.       Value      Closing Kgs.      Value   "
    Print #f, Space(5); "   Date     Opening Kgs.           Value    Receipt Kgs.           Value     Total(Kgs.)           Value     Rejected Kgs.      Value   Issues Kgs.        Value     Return  Kgs.          Value    Closing Kgs.           Value"
    Print #f, Space(5) + String(225, "-")
End Sub
Public Sub monval(mothval1 As String, monval2 As String)
    MON = Mid(mothval, 1, InStr(mothval, "-") - 1)
    Year1 = Right(mothval, 4)
    Date1 = Format("01-" & MON & "-" & Year1, "yyyy/mm/dd")
    Date2 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
    date3 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
    Call date11
    'date3 = Year(date1) & "/" & Month(date1) - 1 & "/" & Day(date2)
    date3 = yearyy & "/" & monthmm & "/" & Day(Date2)
    date3 = Format(date3, "yyyy-mm-dd")
End Sub
Public Sub date11()
If MONTH(Date1) = "1" Or MONTH(Date1) = "01" Then
    monthmm = "12"
    yearyy = Year(Date1) - 1
Else
    monthmm = MONTH(Date1) - 1
    yearyy = Year(Date1)
End If
End Sub




