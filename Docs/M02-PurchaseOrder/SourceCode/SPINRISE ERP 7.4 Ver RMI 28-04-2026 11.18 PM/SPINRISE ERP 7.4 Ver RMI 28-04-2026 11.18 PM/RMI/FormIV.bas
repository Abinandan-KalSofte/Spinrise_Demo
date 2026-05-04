Attribute VB_Name = "Form4"
Dim dtFromDate  As Date
Dim dtToDate    As Date
Dim dtCurrDate  As Date

Dim RecRs As Recordset
Dim issrs As Recordset
Dim issless As Recordset
Dim Oprs As Recordset
Dim TEMP As Recordset
Dim Rep As Report.ReportView
Dim SqlStr As String
Dim sQry As String
Dim SqlQry As New Recordset
Dim f As Integer
Dim Date1, Date2, date3 As String
Dim totoprecbale As Double
Dim month_value1 As String
Dim totoprecborah  As Double
Dim sTypeHead As String
Dim totoprectot  As Double
Dim totoprectotkg  As Double
Dim Adjustment As Double
Dim TotalAdjust As Double
Dim AdjRs As New Recordset
Dim bolTYPEAll As Boolean
Dim too As Double
Dim too1 As Double
Dim monthmm As String
Dim yearyy As String
Dim Adjustment1 As String
Dim Adjustm As String
Dim months As String
Dim years As String
Dim adjtot As Double
Dim cat As String
Public Sub mdlform4(month_value1 As String, month_value2 As String, Category As String, XType As String)
        Dim bolLotType As Boolean
        Dim sCondition As String
        Set Rep = New Report.ReportView
        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        adjtot = 0
        Adjustment1 = 0
        Adjustm = 0
        monthmm = 0
        
        
        If XType = "ALL" Then bolTYPEAll = True Else bolTYPEAll = False
        If XType = "A" Then bolLotType = True Else bolLotType = False
        If bolLotType = True Then sCondition = "Lottype ='" & XType & "'" Else sCondition = "transferType ='" & XType & "'"
        
        
        
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        End If
                
        Close
'        Open "c:\formIV.txt" For Output As #f
         Open KALFOLDERDATA & "\formIV.TXT" For Output As #f
        Date1 = Format(month_value1, "yyyy-mm-dd")
        Date2 = Format(month_value2, "yyyy-mm-dd")
        On Error Resume Next
        'Set TEMP = New Recordset
        'TEMP.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = 'formiv'", DB, adOpenStatic
        'If TEMP.RecordCount > 0 Then
         DB.Execute "drop table formiv"
        'End If
        
        DB.Execute "Create table Formiv (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1), salbale numeric(10),salborah numeric(10), saltot numeric(12), saltotkg numeric(15,3), isskgs numeric(20,3))"
        
        For dtCurrDate = CDate(month_value1) To CDate(month_value2)
         
                SqlStr = ""
                SqlStr = " SELECT CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
                SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) + SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) + SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) + SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.TRANSBAL,0)) as TranBal, SUM(ISNULL(A.TRANSBOR,0)) as TrabBoras, SUM(ISNULL(A.TRANSKGS,0)) as TransKgs, "
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.SALESBAL,0)) as SalBal, SUM(ISNULL(A.SALESBOR,0)) as SalBoras, SUM(ISNULL(A.SALESKGS,0)) as SalKgs, "
                SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) as REJKGS,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END as CLOBALES,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END as CLOBORAS,"
                SqlStr = SqlStr + Chr(13) + " Case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
                SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END as CLOKGS "
                SqlStr = SqlStr + Chr(13) + " FROM ("
                SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(dtCurrDate), CDate(dtCurrDate))
                SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "'"
        
        
                If Trim(Category) <> "ALL" Then
                    If XType <> "ALL" Then
                        If XType = "A" Then
                            SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                        Else
                            SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                        End If
                    Else
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "'"
                    End If
                Else
                    If XType <> "ALL" Then
                        If XType = "A" Then
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "'"
                        Else
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "'"
                        End If
                    Else
                            SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
                    End If
                End If
                
                
                Set Rs = New Recordset
                DB.CommandTimeout = 1000
                Rs.Open SqlStr, DB, adOpenStatic
        
                Set AdjRs = New Recordset
                AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt='" & Format(dtCurrDate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' " & IIf(bolTYPEAll, " ", " and a." & sCondition) & " group by a.adjust) A group by adjust", DB, adOpenStatic
        
                If AdjRs.RecordCount > 0 Then
                    Do While Not AdjRs.EOF
                        If AdjRs("adjust") = "+" Then
                            Adjustment1 = Adjustment1 + AdjRs("ADJBALE")
                            Adjustment = Adjustment + AdjRs("ADJTOTKGS")
                        ElseIf AdjRs("adjust") = "-" Then
                            Adjustment1 = Adjustment1 - AdjRs("ADJBALE")
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
                    sQry = sQry & Chr(13) & " INSERT INTO Formiv (date1,Opbales, opborah, optot,optotkg,recbale,recborah,rectot,"
                    sQry = sQry & Chr(13) & " rectotkg,oprecbale,oprecborah,oprectot,oprectotkg,issbale, issboarh,isstot,isstran,"
                    sQry = sQry & Chr(13) & " isstrantot,isstotkg,rejbale,REJKG, salbale,salborah,saltot,saltotkg,ADJBALE,adjkg,"
                    sQry = sQry & Chr(13) & " adjtype,totbale,totborah,total,totkg,isskgs) Values "
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
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("TranBal")), 0, Rs("TranBal")) + IIf(IsNull(Rs("TrabBoras")), 0, Rs("TrabBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("TranBal")), 0, Rs("TranBal")) + IIf(IsNull(Rs("TrabBoras")), 0, Rs("TrabBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("transkgs")), 0, Rs("transkgs")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJBALES")), 0, Rs("REJBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("REJKGS")), 0, Rs("REJKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBal")), 0, Rs("salBal")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBoras")), 0, Rs("salBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("salBal")), 0, Rs("salBal")) & IIf(IsNull(Rs("salBoras")), 0, Rs("salBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("Salkgs")), 0, Rs("Salkgs")) & ",0," & Adjustment & ",'-',"
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOBALES")), 0, Rs("CLOBALES")) + IIf(IsNull(Rs("CLOBoras")), 0, Rs("CLOBoras")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("CLOKGS")), 0, Rs("CLOKGS")) & ","
                    sQry = sQry & Chr(13) & IIf(IsNull(Rs("isskgs")), 0, Rs("isskgs")) & ")"
                    
                    DB.Execute sQry
                End If
         
        Next
         
        Dim temp6 As String
        Print #f, Chr(15)
        MON = MonthName(MONTH(month_value1))
        temp6 = Format(month_value1, "YY")
        Call prnhead(CStr(MON), CStr(temp6), XType)
        Dim strType As String
        Set RS2 = New Recordset
        RS2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isskgs as isskgs,isstran,isstrantot,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,REJBALE AS REJBALES,rejkg as rejectedkgs,ADJBALE AS ADJBALES,adjkg as adjustedkgs,adjtype,salbale as salbale,salborah as salborah,saltot as saltotal,saltotkg as salkgs from formiv  order by date1 ", DB, adOpenStatic
        RS2.MoveFirst
        For i = 1 To RS2.RecordCount
            
            If RS2!saltotal > 0 Then strType = "Sales" Else strType = ""
            If RS2("adjustedkgs") > 0 Then
                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(6) & Padr(strType, 15, "") & Space(1) & Padl(INF(RS2("salkgs"), 3), 15, " ") & Space(1) & Padl(INF(RS2("adjustedkgs") & "(" & Padr(RS2("adjtype"), 1, " ") & ")", 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
            Else
                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(6) & Padr(strType, 15, "") & Space(1) & Padl(INF(RS2("salkgs"), 3), 15, " ") & Space(1) & Padl(INF(RS2("adjustedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
            End If
            cnt = cnt + 1
  
          stot1 = stot1 + RS2("openbale")
          stot2 = stot2 + RS2("recpbale")
          stot3 = stot3 + RS2("oprebale")
          stot4 = stot4 + RS2("issbale")
          stot5 = stot5 + RS2("closbale")
          stot6 = stot6 + RS2("rectotal")
          stot7 = stot7 + RS2("isstran")
          stot8 = stot8 + RS2("REJBALES")
          stot9 = stot9 + RS2("ADJBALES")
          stot10 = stot10 + RS2("OPENBOARH")
          stot11 = stot11 + RS2("recpborah")
          stot12 = stot12 + RS2("issborah")
          stot13 = stot13 + RS2!salbale
          stot14 = stot14 + RS2!salborah

          stot15 = stot15 + RS2!salkgs

          RS2.MoveNext

        Next

        SqlStr = ""
        SqlStr = " SELECT CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        SqlStr = SqlStr + Chr(13) + " CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBAL,0)) + SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODBOR,0)) + SUM(ISNULL(A.JWBOR,0)) AS ISSBORAS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.PRODKGS,0)) + SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.TRANSBAL,0)) as TranBal, SUM(ISNULL(A.TRANSBOR,0)) as TrabBoras, SUM(ISNULL(A.TRANSKGS,0)) as TransKgs, "
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.SALESBAL,0)) as SalBal, SUM(ISNULL(A.SALESBOR,0)) as SalBoras, SUM(ISNULL(A.SALESKGS,0)) as SalKgs, "
        SqlStr = SqlStr + Chr(13) + " SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) as REJKGS,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END as CLOBALES,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END as CLOBORAS,"
        SqlStr = SqlStr + Chr(13) + " case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        SqlStr = SqlStr + Chr(13) + " else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END as CLOKGS "
        SqlStr = SqlStr + Chr(13) + " FROM ("
        SqlStr = SqlStr + Chr(13) + gStockStatement(CDate(month_value1), CDate(month_value2))
        SqlStr = SqlStr + Chr(13) + "  ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND b.DIVCODE='" & Divcode & "'"


        If Trim(Category) <> "ALL" Then
            If XType <> "ALL" Then
                If XType = "A" Then
                    SqlStr = SqlStr & Chr(13) + "  and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                Else
                    SqlStr = SqlStr & Chr(13) + "  and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd ='" & Trim(Category) & "'"
                End If
            Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Trim(Category) & "'"
            End If
        Else
            If XType <> "ALL" Then
                If XType = "A" Then
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "'"
                Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & XType & "' and b.lotyear='" & Year(yfdate) & "'"
                End If
            Else
                    SqlStr = SqlStr & Chr(13) + "  and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
            End If
        End If
        
        Set RecRs = New Recordset
        DB.CommandTimeout = 1200
        RecRs.Open SqlStr, DB, adOpenStatic
        
        If RecRs.EOF = False Then
            stot1 = RecRs("opbales")
            stot2 = RecRs("RECBALES")
            stot3 = RecRs("RECBALES") + RecRs("opbales")
            stot4 = RecRs("ISSBALES")
            stot5 = RecRs("clobaleS")
'            stot6 = RecRs("rectotal")
            stot7 = RecRs("TRANBAL")
            stot8 = RecRs("REJBALES")
            stot9 = 0
            stot10 = RecRs("OPBORAS")
            stot11 = RecRs("RECBORAS")
            stot12 = RecRs("ISSBORAS")
            stot13 = RecRs!salbal
            stot14 = RecRs!salboraS
            stot15 = RecRs!salkgs
        End If
        
        
        Set rs3 = New Recordset
        TOkg = openkgs + Receiptkg
        TOTBALES = stot3
        totborahs = stot10 + stot11
        
        
        
        Print #f, Space(5) + String(225, "-")
        Print #f, Space(10) + Space(116) & Chr(27) & "E" & Padr("  BALES       BORAHS", 18, " ") & Space(18) & Padr("KGS", 16, " ") & Chr(27) & "F"
        Print #f, Space(10) + Space(92) & "Opening Stock   :" & Padl(INF(stot1, 0), 12, " ") & Space(1) & Padl(INF(stot10, 0), 12, " ") & Space(5) & Padl(INF(RecRs("OPKGS"), 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Receipts        :" & Padl(INF(stot2, 0), 12, " ") & Space(1) & Padl(INF(stot11, 0), 12, " ") & Space(5) & Padl(INF(RecRs("RECKGS"), 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Total           :" & Padl(INF(TOTBALES, 0), 12, " ") & Space(1) & Padl(INF(totborahs, 0), 12, " ") & Space(5) & Padl(INF(RecRs("OPKGS") + RecRs("RECKGS"), 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Consumption     :" & Padl(INF(stot4, 0), 12, " ") & Space(1) & Padl(INF(stot12, 0), 12, " ") & Space(5) & Padl(INF(RecRs("ISSKGS"), 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Transfer        :" & Padl(INF(stot7, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(RecRs("TRANSKGS"), 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Others          :" & Padl(INF(stot13, 0), 12, " ") & Space(1) & Padl(INF(stot14, 0), 12, " ") & Space(5) & Padl(INF(RecRs("SALKGS"), 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Rejected        :" & Padl(INF(stot8, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(RecRs("REJKGS"), 3), 16, " ")
        Print #f, Space(10) + Space(92) + "Adjustment      :" & Padl(INF(stot9, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(TotalAdjust, 3), 16, " ")
        stot10 = TOkg - (Consumption + Transfer + rejection + stot15) + (Adjustment)
        stot11 = TOTBALES - (stot4) - (stot13 + stot7 + stot8) + (stot9)
        stot12 = totborahs - stot12 - stot14
        Print #f, Space(10) + Space(92) & "Balance         :" & Padl(INF(stot11, 0), 12, " ") & Space(1) & Padl(INF(stot12, 0), 12, " ") & Space(5) & Padl(INF(RecRs("clokgs"), 3), 16, " ")
  
        
        Print #f, Space(5) + String(225, "-")
        Print #f, Chr(12)
        Close #f
'        Open "c:\formIV.bat" For Output As #f
'        Print #f, "cd\"
'        Print #f, "c:"
'        Print #f, "cd\"
'        Print #f, "type formIV.txt > prn"
'        Close #f
'        Rep.txtfile = "c:\formIV.txt"
'        Rep.Batfile = "c:\formIV.bat"
f = FreeFile
Call KALBATPROCESS("formIV")
        Screen.MousePointer = 0
End Sub
    Private Sub prnhead(MON As String, temp6 As String, sTypeHead As String)
    Dim RSMaster As Recordset
    Dim sType As String
    Print #f,
    Print #f, Chr(18)
    Print #f, Space(5) + Chr(27) & "E" & CENTRE(Trim(DIVNAME) & Chr(27) & "F", 132, " ")
    Print #f,
    Print #f, Space(5) + CENTRE("Annexure  V. Form IV  (Rule  173 G.)", 132, " ")
    Print #f,
    Print #f, Space(5) + Chr(27) & "E"; CENTRE("Account of Raw Materials and Components", 132, " "); Chr(27) & "F"
    Print #f,
    If sTypeHead = "ALL" Then
        sType = "All"
    ElseIf sTypeHead = "A" Then
        sType = "Own"
    Else
    Set RSMaster = New Recordset
    RSMaster.Open "Select Isstype from rm_isstype where issue_code='" & sTypeHead & "'", DB, adOpenStatic
        If RSMaster.EOF = False Then sType = Rs(0)
    End If
        
        
        
    
    Print #f, Space(3) + "Description of Raw Materials/Components : " & Padr(cat, 17, " "); Space(1) + "            Type : " & Padr(sType, 11, "") + Space(25) + "Month :" & MON & Space(1) & temp6; " " + Chr(15)
    '& Padr(Mid$(month_value1, InStr(month_value1, "-") + 1, Len(month_value1)), 20, " ");
    Print #f, Space(5) + String(225, "-")
    
'    Print #f, Space(5); "Date            Opening    Quantity        Total        Quantity use in the    Quantity    Otherwise            Quantity                     Quantity of                          "
'    Print #f, Space(5); "                Balance    Received                         Manufacture        Disposed of                      Wasted by       Closing      Excisable                    Signature of the"
'    Print #f, Space(5); "                                                        Excisable     Other    Nature of the    Quantity        Destroyed       Balance      goods              Remarks   assessee or the agent"
'    Print #f, Space(19); "                                          Goods         Goods    Disposal                              "; Space(23); " Manufactured "
    
    Print #f, Space(5); "Date            Opening         Quantity            Total        Quantity       <---Quantity used in the--->      <---  Quantity  Otherwise ---->         Quantity         Closing   Quantity of  Remarks         Signature      "
    Print #f, Space(5); "                Balance         Received                         Rejected             Manufacture of                        Disposed of                  Wasted by         Balance     Excisable                  of the         "
    'Print #f, Space(5); "                                                                    Excisable     Other    Nature of the    Quantity        Destroyed       Balance      goods              Remarks   assessee or the agent"
    Print #f, Space(5); "                                                                                  Excisable         Transfer      Nature of              Quantity        Destroyed                         Goods                  Assessee or the"
    Print #f, Space(5); "                                                                                      Goods                       the Despatch                                                      Manufactured                  Agent"
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




