Attribute VB_Name = "insurancereport"
Dim RecRs As Recordset
Dim issrs As Recordset
Dim issless As Recordset
Dim Oprs As Recordset
Dim TEMP As Recordset
Dim Rep As Report.ReportView
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
Public Sub insurance111(month_value1 As String, month_value2 As String, Category As String, footerstr As String, rectype As String)
        Set Rep = New Report.ReportView
        Dim tot17, tot18, tot19, tot20, tot21, tot22, tot23, tot24 As Double
        tot17 = 0: tot18 = 0: tot19 = 0: tot20 = 0: tot21 = 0: tot22 = 0: tot23 = 0: tot24 = 0
        db.CommandTimeout = 2000
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
            rsa.Open "select catname from rm_cat where catcd='" & Category & "'", db, adOpenStatic
            If rsa.RecordCount > 0 Then
                cat = rsa(0)
            End If
        Else
            cat = "A"
        End If
        Close #f
'        Open "c:\INSUR.txt" For Output As #f
 Open KALFOLDERDATA & "\INSUR.TXT" For Output As #f
        Date1 = Format(month_value1, "yyyy-mm-dd")
        Date2 = Format(month_value2, "yyyy-mm-dd")
        Set Rs = New Recordset
        Rs.Open "select  distinct lOTdt from rm_LOT where lOTdt between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' group by lOTdt", Cn, adOpenStatic, adLockBatchOptimistic
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
            db.Execute "drop table insurance"
        End If
         db.Execute "Create table insurance (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),opvalue numeric(18,2),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),recvalue numeric(18,2), oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),oprectotval numeric(15,2),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstotval numeric(16,2),isstran numeric(16),isstrantot numeric(15,3),isstrantotval numeric(15,3),isstotkg numeric(15,3),isstotvalue numeric(17,2),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),totval numeric(15,2),REJKG NUMERIC(15,3),rejvalue numeric(15,2),adjkg numeric(15,3),adjval numeric(15,3),adjtype char(1))"
        If MONTH(date3) + 1 = "04" Or MONTH(date3) + 1 = "4" Then
            Set issless = New Recordset
'             issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotval),0) as isstotval FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.netwt,0))),2) as Isstotkgs,round((Sum(IsNull(e.netwt, 0))), 2) * (b.ratekg) As Isstotval " & _
                          "from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' group by bblflg,b.ratekg) A", DB, adOpenStatic, adLockOptimistic
            
              issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotval),0) as isstotval FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(a.isskgs,0))),2) as Isstotkgs,round((Sum(IsNull(a.isskgs, 0))), 2) * (b.ratekg) As Isstotval " & _
                          "from rm_issb a,rm_lot b  where  a.lottype=b.lottype and a.lotno=b.lotno and a.catcd=b.catcd and a.varcode=b.varcode and a.lotdt=b.lotdt  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' group by bblflg,b.ratekg) A", db, adOpenStatic, adLockOptimistic
           
            
            Set AdjRs = New Recordset
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(sum(adjtotval),0) as adjtotval,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,sum(isnull(a.adjwt,0)) * (a.ratekg) as adjtotval,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) - 1 & "' group by a.adjust,a.ratekg) A group by adjust", db, adOpenStatic
        Else
            Set issless = New Recordset
'             issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotval),0) as isstotval FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((Sum(IsNull(e.netwt, 0))), 2) As Isstotkgs,round((Sum(IsNull(e.netwt, 0))), 2) * (b.ratekg) As Isstotval " & _
                           "from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.isstype <> 'T' and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg,b.ratekg) A", DB, adOpenStatic ', adLockOptimistic
             issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotval),0) as isstotval FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((Sum(IsNull(a.isskgs, 0))), 2) As Isstotkgs,round((Sum(IsNull(a.isskgs, 0))), 2) * (b.ratekg) As Isstotval " & _
                           "from rm_issb a,rm_lot b where a.lottype=b.lottype and a.lotno=b.lotno and a.catcd=b.catcd and a.varcode=b.varcode and a.lotdt=b.lotdt and a.isstype <> 'T' and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg,b.ratekg) A", db, adOpenStatic ', adLockOptimistic
            Set AdjRs = New Recordset
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(sum(adjtotval),0) as adjtotval,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,sum(isnull(a.adjwt,0))* (a.ratekg) as Adjtotval,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust,a.ratekg) A group by adjust", db, adOpenStatic
        End If
        Do While Not AdjRs.EOF
            If AdjRs("adjust") = "+" Then
                too = too + AdjRs("ADJTOTKGS")
                too1 = too1 + AdjRs("ADJTOTval")
            ElseIf AdjRs("adjust") = "-" Then
                too = too - AdjRs("ADJTOTKGS")
                too = too - AdjRs("ADJTOTval")
            End If
            AdjRs.MoveNext
        Loop
        If issless.RecordCount >= 0 Then
            issvalue = issless(3) 'kgs
            isstotval = issless(4) 'value
        Else
            issvalue = 0
            isstotvalue = 0
        End If
        
        If MONTH(date3) + 1 = "04" Or MONTH(date3) + 1 = "4" Then
            If Category <> "A" Then
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    Set Oprs = New Recordset
                    Oprs.Open "select sum(opbales)""opbale"",sum(opboras)""opborah"",sum(opkgs)""optotkgs"",sum(opvalue)""opvalue"",(sum(opbales)+sum(opboras)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,sum(opvalue-issvalue)as opvalue,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as issvalue,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                    "(select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,sum(isnull(b.netwt,0))*(b.ratekg) as opvalue,0 as issbales,0 as issboras,0 as isskgs,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and " & tmptypestr & "='" & vrectype & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg " & _
                    "union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as opvalue,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,round((sum(isnull(e.netwt,0))),3)*(b.ratekg) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.divcode and b.divcode = e.divcode and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt and " & tmptypestr & "='" & vrectype & "'  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "and b.lotno=c.lotno  and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd =  '" & Category & "'  and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO )b ", db, adOpenStatic
                Else
                    Set Oprs = New Recordset
                    Oprs.Open "select sum(opbales)""opbale"",sum(opboras)""opborah"",sum(opkgs)""optotkgs"",sum(opvalue)""opvalue"",(sum(opbales)+sum(opboras)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,sum(opvalue-issvalue)as opvalue,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as issvalue,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                    "(select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,sum(isnull(b.netwt,0))*(b.ratekg) as opvalue,0 as issbales,0 as issboras,0 as isskgs,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg " & _
                    "union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as opvalue,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,round((sum(isnull(e.netwt,0))),3)*(b.ratekg) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.divcode and b.divcode = e.divcode and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "and b.lotno=c.lotno  and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd =  '" & Category & "'  and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO )b ", db, adOpenStatic
                End If
            Else
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    Set Oprs = New Recordset
                    Oprs.Open "select sum(opbales)""opbale"",sum(opboras)""opborah"",sum(opkgs)""optotkgs"",sum(opvalue)""opvalue"",(sum(opbales)+sum(opboras)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,sum(opvalue-issvalue)as opvalue,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as issvalue,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                    "(select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,sum(isnull(b.netwt,0))*(b.ratekg) as opvalue,0 as issbales,0 as issboras,0 as isskgs,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' and B.lotyear='" & Year(yfdate) & "' AND b.lotdt < '" & Date1 & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg " & _
                    "union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as opvalue,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,round((sum(isnull(e.netwt,0))),3)*(b.ratekg) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.divcode and b.divcode = e.divcode and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt and " & tmptypestr & "='" & vrectype & "'   and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "and b.lotno=c.lotno  and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO )b ", db, adOpenStatic
                Else
                    Set Oprs = New Recordset
                    Oprs.Open "select sum(opbales)""opbale"",sum(opboras)""opborah"",sum(opkgs)""optotkgs"",sum(opvalue)""opvalue"",(sum(opbales)+sum(opboras)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,sum(opvalue-issvalue)as opvalue,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as issvalue,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                    "(select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,sum(isnull(b.netwt,0))*(b.ratekg) as opvalue,0 as issbales,0 as issboras,0 as isskgs,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.lotdt < '" & Date1 & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg " & _
                    "union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as opvalue,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,round((sum(isnull(e.netwt,0))),3)*(b.ratekg) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.divcode and b.divcode = e.divcode and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "and b.lotno=c.lotno  and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO )b ", db, adOpenStatic
                End If
            End If
        Else
            If Category <> "A" Then
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    Set Oprs = New Recordset
                    Oprs.Open "select sum(opbales)""opbale"",sum(opboras)""opborah"",sum(opkgs)""optotkgs"",sum(opvalue) ""opvalue"",(sum(opbales)+sum(opboras)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,sum(opvalue-issvalue)as opvalue,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as issvalue,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                    "(select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs, sum(isnull(b.netwt,0))*(b.ratekg) as opvalue ,0 as issbales,0 as issboras,0 as isskgs,0 as issvalue  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and " & tmptypestr & "='" & vrectype & "' AND b.catcd =  '" & Category & "'  and b.lotdt < '" & Date1 & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg " & _
                    "union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as opvalue,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.Actisskgs,0))),3) as isskgs,round((sum(isnull(e.Actisskgs,0))),3)*(b.ratekg) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.divcode and b.divcode = e.divcode and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and " & tmptypestr & "='" & vrectype & "'  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "and b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "'  and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO )b ", db, adOpenStatic
                Else
                    Set Oprs = New Recordset
                    Oprs.Open "select sum(opbales)""opbale"",sum(opboras)""opborah"",sum(opkgs)""optotkgs"",sum(opvalue) ""opvalue"",(sum(opbales)+sum(opboras)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,sum(opvalue-issvalue)as opvalue,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as issvalue,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                    "(select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs, sum(isnull(b.netwt,0))*(b.ratekg) as opvalue ,0 as issbales,0 as issboras,0 as isskgs,0 as issvalue  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd =  '" & Category & "'  and b.lotdt < '" & Date1 & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg " & _
                    "union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as opvalue,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.Actisskgs,0))),3) as isskgs,round((sum(isnull(e.Actisskgs,0))),3)*(b.ratekg) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.divcode and b.divcode = e.divcode and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "and b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "'  and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO )b ", db, adOpenStatic
                End If
            Else
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    Set Oprs = New Recordset
                    Oprs.Open "select sum(opbales)""opbale"",sum(opboras)""opborah"",sum(opkgs)""optotkgs"",sum(opvalue) ""opvalue"",(sum(opbales)+sum(opboras)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,sum(opvalue-issvalue)as opvalue,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as issvalue,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                    "(select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs, sum(isnull(b.netwt,0))*(b.ratekg) as opvalue ,0 as issbales,0 as issboras,0 as isskgs,0 as issvalue  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' and " & tmptypestr & "='" & vrectype & "' AND b.lotdt < '" & Date1 & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg " & _
                    "union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as opvalue,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.Actisskgs,0))),3) as isskgs,round((sum(isnull(e.Actisskgs,0))),3)*(b.ratekg) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.divcode and b.divcode = e.divcode and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and " & tmptypestr & "='" & vrectype & "'  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "and b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO )b ", db, adOpenStatic
                Else
                    Set Oprs = New Recordset
                    Oprs.Open "select sum(opbales)""opbale"",sum(opboras)""opborah"",sum(opkgs)""optotkgs"",sum(opvalue) ""opvalue"",(sum(opbales)+sum(opboras)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,sum(opvalue-issvalue)as opvalue,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as issvalue,0 as tranbales,0 as tranboras,0 as trankgs from " & _
                    "(select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs, sum(isnull(b.netwt,0))*(b.ratekg) as opvalue ,0 as issbales,0 as issboras,0 as isskgs,0 as issvalue  from rm_lot b where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.lotdt < '" & Date1 & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg " & _
                    "union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as opvalue,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.Actisskgs,0))),3) as isskgs,round((sum(isnull(e.Actisskgs,0))),3)*(b.ratekg) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.divcode and b.divcode = e.divcode and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "and b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO )b ", db, adOpenStatic
                End If
            End If
        End If
        db.Execute "Insert into insurance (date1,opbales,opborah,optot,optotkg,opvalue) values('" & Format(Date1, "yyyy-mm-dd") & "'," & IIf(IsNull(Oprs("opbale")), 0, Oprs("opbale")) & "," & IIf(IsNull(Oprs("opborah")), 0, Oprs("opborah")) & "," & IIf(IsNull(Oprs("optot")), 0, Oprs("optot")) & "," & IIf(IsNull(Oprs("optotkgs")), 0, Oprs("optotkgs")) + (val(too)) & "," & IIf(IsNull(Oprs("opvalue")), 0, Oprs("opvalue")) & ")"
        openkgs = Oprs("optotkgs") + (val(too))
        openval = Oprs("opvalue")
        Set Rs = New Recordset
        Rs.Open "select datediff(day,'" & Date1 & "' ,'" & Date2 & "') as days ", db, adOpenStatic, adLockReadOnly
        For i = 1 To Rs("days") + 1
             totoprecbale = 0
             totoprecborah = 0
             totoprectot = 0
             totoprectotkg = 0
             totoprectotval = 0
         Set RecRs = New Recordset
         Date1 = Date1
          'Receipt Values
        If Category <> "A" Then
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "b.LotType"
                Else
                    tmptypestr = "b.TransferType"
                End If
                RecRs.Open "select isnull(sum(recbale),0) as recbale,isnull(sum(recborah),0) as recborah,isnull(sum(rectot),0) as rectot,isnull(sum(rectotkgs),0) as rectotkgs,isnull(sum(recvalue),0) as recvalue from ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs,case when 'N' = 'N' then  (sum(isnull(b.netwt,0))*b.ratekg) else 0 end as recvalue from rm_lot b  where B.DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "'  and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTdt,b.opflg,b.bblflg,b.ratekg )x", db, adOpenStatic
            Else
                RecRs.Open "select isnull(sum(recbale),0) as recbale,isnull(sum(recborah),0) as recborah,isnull(sum(rectot),0) as rectot,isnull(sum(rectotkgs),0) as rectotkgs,isnull(sum(recvalue),0) as recvalue from ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs,case when 'N' = 'N' then  (sum(isnull(b.netwt,0))*b.ratekg) else 0 end as recvalue from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "'  and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTdt,b.opflg,b.bblflg,b.ratekg )x", db, adOpenStatic
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    tmptypestr = "b.LotType"
                Else
                    tmptypestr = "b.TransferType"
                End If
                RecRs.Open "select isnull(sum(recbale),0) as recbale,isnull(sum(recborah),0) as recborah,isnull(sum(rectot),0) as rectot,isnull(sum(rectotkgs),0) as rectotkgs,isnull(sum(recvalue),0) as recvalue from ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs,case when 'N' = 'N' then  (sum(isnull(b.netwt,0))*b.ratekg) else 0 end as recvalue from rm_lot b  where B.DIVCODE='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' and B.lotyear='" & Year(yfdate) & "' AND b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTdt,b.opflg,b.bblflg,b.ratekg )x", db, adOpenStatic
            Else
                RecRs.Open "select isnull(sum(recbale),0) as recbale,isnull(sum(recborah),0) as recborah,isnull(sum(rectot),0) as rectot,isnull(sum(rectotkgs),0) as rectotkgs,isnull(sum(recvalue),0) as recvalue from ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs,case when 'N' = 'N' then  (sum(isnull(b.netwt,0))*b.ratekg) else 0 end as recvalue from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTdt,b.opflg,b.bblflg,b.ratekg )x", db, adOpenStatic
            End If
        End If
           If RecRs.RecordCount > 0 Then
            db.Execute "Update insurance set recbale=" & RecRs("recbale") & ",recborah=" & RecRs("recborah") & ",rectot=" & RecRs("rectot") & ",rectotkg=" & RecRs("rectotkgs") & ",recvalue=" & RecRs("recvalue") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "' "
            totoprecbale = totoprecbale + RecRs("recbale")
            totoprecborah = totoprecborah + RecRs("recborah")
            totoprectot = totoprectot + RecRs("rectot")
            totoprectotkg = totoprectotkg + RecRs("rectotkgs")
            Receiptkg = Receiptkg + RecRs("rectotkgs")
            receptvalue = receiptvalue + RecRs("recvalue")
          Else
            db.Execute "Update insurance set recbale=0,recborah=0,rectot=0,rectotkg=0,recvalue=0 where date1='" & Format(Date1, "yyyy-mm-dd") & "' "
            totoprecbale = totoprecbale + 0
            totoprecborah = totoprecborah + 0
            totoprectot = totoprectot + 0
            totoprectotkg = totoprectotkg + 0
            Receiptkg = Receiptkg + 0
            receptvalue = receiptvalue + 0
          End If
            'Rejection Values
            Set rejrs = New Recordset
                    
            If Category <> "A" Then
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs,isnull(SUM(isnull(Rejvalue,0)),0) AS Rejvalue FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs,sum(isnull(netwt,0))*ratekg  as rejvalue from rm_lot b where  divcode ='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' AND b.catcd = '" & Category & "' and rejflg='Y' and rejdt='" & Format(Date1, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' group by bblflg,ratekg)A", db, adOpenStatic
                Else
                    rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs,isnull(SUM(isnull(Rejvalue,0)),0) AS Rejvalue FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs,sum(isnull(netwt,0))*ratekg  as rejvalue from rm_lot b where  divcode ='" & Divcode & "' AND b.catcd = '" & Category & "' and rejflg='Y' and rejdt='" & Format(Date1, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' group by bblflg,ratekg)A", db, adOpenStatic
                End If
            Else
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs,isnull(SUM(isnull(Rejvalue,0)),0) AS Rejvalue FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs,sum(isnull(netwt,0))*ratekg  as rejvalue from rm_lot b where  divcode ='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' and rejflg='Y' and rejdt='" & Format(Date1, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' group by bblflg,ratekg)A", db, adOpenStatic
                Else
                    rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs,isnull(SUM(isnull(Rejvalue,0)),0) AS Rejvalue FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs,sum(isnull(netwt,0))*ratekg  as rejvalue from rm_lot b where  divcode ='" & Divcode & "' and rejflg='Y' and rejdt='" & Format(Date1, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' group by bblflg,ratekg)A", db, adOpenStatic
                End If
            End If
        
'            rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs,isnull(SUM(isnull(Rejvalue,0)),0) AS Rejvalue FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs,sum(isnull(netwt,0))*ratekg  as rejvalue from rm_lot where  divcode ='" & Divcode & "' and rejflg='Y' and rejdt='" & Format(Date1, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' group by bblflg,ratekg)A", DB, adOpenStatic
            db.Execute "Update insurance set rejkg=" & rejrs("rejtotkgs") & ",rejvalue=" & rejrs("rejvalue") & "  where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            rejection = rejection + rejrs("rejtotkgs")
            rejectvalue = rejectvalue + rejrs("rejvalue")
            
            'Issue Values
            
            'issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.netwt,0))),3) as Isstotkgs,round((sum(isnull(e.netwt,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and a.isstype <> 'T' group by bblflg,b.ratekg) A", DB, adOpenStatic
'''            issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and a.isstype <> 'T' group by bblflg,b.ratekg) A", DB, adOpenStatic
            
            Set issrs = New Recordset
            If Category <> "A" Then
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' and b.catcd = '" & Category & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype <> 'T' group by bblflg,b.ratekg) A", db, adOpenStatic
                Else
                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and b.catcd = '" & Category & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype <> 'T' group by bblflg,b.ratekg) A", db, adOpenStatic
                End If
            Else
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype <> 'T' group by bblflg,b.ratekg) A", db, adOpenStatic
                Else
                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype <> 'T' group by bblflg,b.ratekg) A", db, adOpenStatic
                End If
            End If
        
'            issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
'                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
'                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
'                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
'                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype <> 'T' group by bblflg,b.ratekg) A", DB, adOpenStatic
                    
            db.Execute "Update insurance set issbale=" & issrs("issbale") & ",issboarh=" & issrs("issborah") & ",isstot=" & issrs("isstot") & ",isstotkg=" & issrs("isstotkgs") & ",isstotvalue=" & issrs("isstotvalue") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            Consumption = Consumption + issrs("isstotkgs")
            consvalue = consvalue + issrs("isstotvalue")
            
            'Transfer Value
            Set issrs = New Recordset
            'issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.netwt,0))),3) as Isstotkgs,round((sum(isnull(e.netwt,0))),3)* (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and a.isstype = 'T' group by bblflg,b.ratekg) A", DB, adOpenStatic
            
            If Category <> "A" Then
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' and b.catcd = '" & Category & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype = 'T' group by bblflg,b.ratekg) A", db, adOpenStatic
                Else
                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and b.catcd = '" & Category & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype = 'T' group by bblflg,b.ratekg) A", db, adOpenStatic
                End If
            Else
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        tmptypestr = "b.LotType"
                    Else
                        tmptypestr = "b.TransferType"
                    End If
                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and " & tmptypestr & "='" & vrectype & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype = 'T' group by bblflg,b.ratekg) A", db, adOpenStatic
                Else
                    issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE," & _
                    "isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT," & _
                    "isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS,isnull(sum(isstotvalue),0) as isstotvalue " & _
                    " FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ," & _
                    "case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3) * (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and f.isstype = 'T' group by bblflg,b.ratekg) A", db, adOpenStatic
                End If
            End If
'            issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah," & _
'                "isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS," & _
'                "isnull(sum(isstotvalue),0) as isstotvalue FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((sum(isnull(e.ACTISSKGS,0))),3) as Isstotkgs,round((sum(isnull(e.ACTISSKGS,0))),3)* (b.ratekg) as Isstotvalue from rm_issb a,rm_lot b,rm_issh c,rm_bale e,rm_issuetype f where a.divcode='" & Divcode & "' and a.divcode=c.divcode and a.divcode=b.divcode and a.divcode=e.divcode and a.isstype=f.issue_code and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and f.isstype = 'T' group by bblflg,b.ratekg) A", DB, adOpenStatic
            db.Execute "Update insurance set isstran=" & issrs("isstot") & ",isstrantot=" & issrs("isstotkgs") & ",isstrantotval=" & issrs("isstotvalue") & "  where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            Transfer = Transfer + issrs("isstotkgs")
            transfervalue = transfervalue + issrs("isstotvalue")
            'Opening +Receipt Values
            Set Oprs = New Recordset
            Oprs.Open "Select isnull(Opbales,0) Opbales,isnull(opborah,0) opborah,isnull(optot,0)optot,isnull(optotkg,0)optotkg,isnull(opvalue,0) as opvalue from insurance where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
            totoprecbale = totoprecbale + Oprs("Opbales")
            totoprecborah = totoprecborah + Oprs("Opborah")
            totoprectot = totoprectot + Oprs("optot")
            totoprectotkg = totoprectotkg + Oprs("optotkg")
            totoprectotval = totoprectotval + Oprs("opvalue")
            db.Execute "Update insurance set oprecbale=" & totoprecbale & ",oprecborah=" & totoprecborah & ",oprectot=" & totoprectot & ",oprectotkg=" & totoprectotkg & ",oprectotval=" & totoprectotval & "  where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            Adjustment1 = 0
            'Adjustment Values
            Set AdjRs = New Recordset
                        'SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(sum(adjtotval),0) as adjtotval,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,(sum(isnull(a.adjwt,0))*a.ratekg) as Adjtotval,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt='2005-09-01' and a.lotyear='2005' group by a.adjust,a.ratekg) A group by adjust
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(sum(adjtotval),0) as adjtotval,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,(sum(isnull(a.adjwt,0))*a.ratekg) as Adjtotval,isnull(a.adjust,' ') as adjust from rm_lot a where a.divcode='" & Divcode & "' and a.adjdt='" & Format(Date1, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust,a.ratekg) A group by adjust", db, adOpenStatic
            If AdjRs.RecordCount > 0 Then
                Do While Not AdjRs.EOF
                    If AdjRs("adjust") = "+" Then
                        Adjustment1 = Adjustment1 + AdjRs("ADJTOTKGS")
                        Adjustment = Adjustment + AdjRs("ADJTOTKGS")
                        adjustmentval = adjustmentval + AdjRs("ADJTOTVAL")
                    ElseIf AdjRs("adjust") = "-" Then
                        Adjustment1 = Adjustment1 - AdjRs("ADJTOTKGS")
                        Adjustment = Adjustment - AdjRs("ADJTOTKGS")
                        adjustmentval = adjustmentval + AdjRs("ADJTOTVAL")
                    End If
                    AdjRs.MoveNext
                Loop
                
                If Mid$(Adjustment1, 1, 1) = "-" Then
                    db.Execute "Update insurance set adjkg=" & Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) & ",adjtype='" & Mid$(Adjustment1, 1, 1) & "' where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                Else
                   db.Execute "Update insurance set adjkg=" & Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) & ",adjtype='+' where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                End If
            Else
                db.Execute "Update insurance set adjkg='0',adjval='0',adjtype=Null where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                Adjustment1 = Adjustment1 + 0
                Adjustment = Adjustment + 0
                Adjustment2 = Adjustment2 + 0
            End If
             If Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) > 0 Then
                If Mid$(Adjustment1, 1, 1) = "-" Then
                    Adjustm = Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1))
                    Set Oprs = New Recordset
                    Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))+sum(isnull(rejkg,0))-sum(isnull(Adjkg,0)) as ClosingKgs,sum(isnull(opvalue,0))+sum(isnull(recvalue,0))-sum(isnull(isstotvalUE,0))-sum(isnull(isstrantotval,0))-sum(isnull(rejvalue,0)) as Closingval   from insurance where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
                Else
                    Adjustm = Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1))
                    Set Oprs = New Recordset
                    Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))+sum(isnull(rejkg,0))+sum(isnull(Adjkg,0)) as ClosingKgs,sum(isnull(opvalue,0))+sum(isnull(recvalue,0))-sum(isnull(isstotval,0))-sum(isnull(isstrantotval,0))+sum(isnull(rejvalue,0))+sum(isnull(Adjval,0)) as ClosingKgs,sum(isnull(opvalue,0))+sum(isnull(recvalue,0))-sum(isnull(isstotvalUE,0))-sum(isnull(isstrantotval,0))-sum(isnull(rejvalue,0)) as Closingval   from insurance where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
                End If
            Else
                Set Oprs = New Recordset
                
                           'Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0))  as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))-sum(isnull(rejkg,0)) as ClosingKgs,sum(isnull(oprectotval,0))-sum(isnull(isstotval,0))-sum(isnull(isstrantotval,0))-sum(isnull(rejvalue,0)) as Closingval  from insurance where date1='2005-09-01'
                
                Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0))  as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))-sum(isnull(rejkg,0)) as ClosingKgs,sum(isnull(opvalue,0))+sum(isnull(recvalue,0))-sum(isnull(isstotvalUE,0))-sum(isnull(isstrantotval,0))-sum(isnull(rejvalue,0)) as Closingval  from insurance where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
            End If
                db.Execute "Update insurance set totbale=" & Oprs("ClosingBale") & ",totborah=" & Oprs("ClosingBorah") & ",total=" & Oprs("ClosingTot") & ",totkg=" & Oprs("ClosingKgs") & ",totval=" & Oprs("closingval") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
             'Opening Balance for the next day
             Set Oprs = New Recordset
             Oprs.Open "Select sum(isnull(totbale,0)),sum(isnull(totborah,0)),sum(isnull(total,0)),sum(isnull(totkg,0)),sum(isnull(totval,0)) from insurance where date1='" & Format(Date1, "yyyy-mm-dd") & "'", db, adOpenStatic
             Date1 = DateAdd("d", 1, Date1)
             db.Execute "Insert into insurance(date1,opbales,opborah,optot,optotkg,opvalue) values('" & Format(Date1, "yyyy-mm-dd") & "'," & Oprs(0) & "," & Oprs(1) & "," & Oprs(2) & "," & Oprs(3) & "," & Oprs(4) & ")"
        Next
        Print #f, Chr(15)
        temp1 = 0
        MON = MonthName(MONTH(month_value1))
        Dim temp5 As String
        temp5 = Year(month_value1)
        Call prnhead(CStr(MON), CStr(temp5))
        Set RS2 = New Recordset
         RS2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,opvalue as opvalue,isstotval as isstotval,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,recvalue as recvalue,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,oprectotval as oprectotval,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,isstotvalue as issval,isstran,isstrantot,isstrantotval,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,totval as closingvalue,rejkg as rejectedkgs,rejvalue as rejectedval,adjkg as adjustedkgs,adjval as adjval,adjtype from insurance where Date1 <= '" & Format(Date1, "dd/mmm/yyyy") & "' order by date1 ", db, adOpenStatic
         'Set rs3 = New Recordset
         RS2.MoveFirst
         
        For i = 1 To RS2.RecordCount - 1
            If RS2("adjustedkgs") > 0 Then
                'Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("opvalue"), 3), 15, " "); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(2); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(39) & Padl(INF(rs2("adjustedkgs") & "(" & Padr(rs2("adjtype"), 1, " ") & ")", 3), 15, " "); Space(2); Padl(INF(rs2("closing"), 3), 15, " ")
            Else
            'Print #f, Space(5) & Padr(Format(rs2("date1"), "dd-mm-yy"), 8, " "); Space(1); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("opvalue"), 3), 15, " "); Space(1); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(1); Padl(INF(rs2("recvalue"), 2), 15, " "); Space(1); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(1); Padl(INF(rs2("oprectotval"), 2), 15, " "); Space(1); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("rejectedval"), 2), 10, " "); Space(1); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(1); Padl(INF(rs2("issval"), 2), 12, " ") & Space(1) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(1) & Padl(INF(rs2("isstrantotval"), 2), 10, "  ") & Space(1) & Padl(INF(rs2("adjustedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("closing"), 3), 15, " "); Space(1); Padl(INF(rs2("closingvalue"), 2), 15, " ")
            'before adjvalue Print #f, Space(5) & Padr(Format(rs2("date1"), "dd-mm-yy"), 8, " "); Space(1); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("opvalue"), 3), 15, " "); Space(1); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(1); Padl(INF(rs2("recvalue"), 2), 15, " "); Space(1); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(1); Padl(INF(rs2("oprectotval"), 2), 15, " "); Space(1); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("rejectedval"), 2), 10, " "); Space(1); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(1); Padl(INF(rs2("issval"), 2), 12, " ") & Space(1) & Padl(INF(rs2("isstrantot"), 3), 10, " ") & Space(1) & Padl(INF(rs2("isstrantotval"), 2), 11, "  ") & Space(0) & Padl(INF(rs2("adjustedkgs"), 3), 10, " "); Space(1); Padl(INF(rs2("closing"), 3), 15, " "); Space(1); Padl(INF(rs2("closingvalue"), 2), 15, " ")
            
                 Print #f, Space(5) & Padr(Format(RS2("date1"), "dd-mm-yy"), 8, " "); Space(1); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(1); Padl(INF(RS2("opvalue"), 3), 15, " "); Space(1); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(1); Padl(INF(RS2("recvalue"), 2), 15, " "); Space(1); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(1); Padl(INF(RS2("oprectotval"), 2), 15, " "); Space(1); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(1); Padl(INF(RS2("rejectedval"), 2), 10, " "); Space(1); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(1); Padl(INF(RS2("issval"), 2), 12, " ") & Space(1) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(1) & Padl(INF(RS2("isstrantotval"), 2), 15, "  ") & Space(1); Padl(INF(RS2("closing"), 3), 15, " "); Space(1); Padl(INF(RS2("closingvalue"), 2), 15, " ")
                 'Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("opvalue"), 3), 15, " "); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(2); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(39) & Padl(INF(rs2("adjustedkgs"), 3), 15, " "); Space(2); Padl(INF(rs2("closing"), 3), 15, " ")
            End If
            cnt = cnt + 1
            tot17 = tot17 + RS2("reckgs")
            tot18 = tot18 + RS2("recvalue")
            tot19 = tot19 + RS2("rejectedkgs")
            tot20 = tot20 + RS2("rejectedval")
            tot21 = tot21 + RS2("isskgs")
            tot22 = tot22 + RS2("issval")
            tot23 = tot23 + RS2("isstrantot")
            tot24 = tot24 + RS2("isstrantotval")
            
            
            avgstockkgs = avgstockkgs + RS2("closing")
            avgstockval = avgstockval + RS2("closingvalue")
            avgreckgs = avgreckgs + RS2("reckgs")
            avgrecval = avgrecval + RS2("recvalue")
            
            avgisskgs = avgisskgs + RS2("isskgs")
            avgissval = avgissval + RS2("issval")
            
            RS2.MoveNext
            temp1 = temp1 + 1
        Next
        avgstock = avgstockkgs / temp1
        avgvalue = avgstockval / temp1
        Set rs3 = New Recordset
'        Balance = TOkg - Consumption
        Print #f, Space(5) + String(225, "-")
        'Print #f, Space(11) & CENTRE("Opening Stock :" + Space(1) + Padl(INF(openkgs, 3), 16, " "), 220, " ")
        'Print #f, Space(11) & CENTRE("Receipts      :" + Space(1) + Padl(INF(Receiptkg, 3), 16, " "), 220, " ")
        'TOkg = openkgs + Receiptkg
        'Print #f, Space(11) & CENTRE("Total         :" + Space(1) + Padl(INF(TOkg, 3), 16, " "), 220, " ")
        'Print #f, Space(11) & CENTRE("Consumption   :" + Space(1) + Padl(INF(Consumption, 3), 16, " "), 220, " ")
        'Print #f, Space(11) & CENTRE("Transfer      :" + Space(1) + Padl(INF(Transfer, 3), 16, " "), 220, " ")
        'Print #f, Space(11) & CENTRE("Rejected      :" + Space(1) + Padl(INF(rejection, 3), 16, " "), 220, " ")
        'Print #f, Space(11) & CENTRE("Adjustment    :" + Space(1) + Padl(INF(Adjustment, 3), 16, " "), 220, " ")
        'Print #f, Space(11) & CENTRE("Balance       :" + Space(1) + Padl(INF(TOkg - (Consumption + Transfer + rejection) + (Adjustment), 3), 16, " "), 220, " ")
        'Print #f, Space(5) & Space(8); Space(11); "Total"; Space(1); Space(15); Space(1); Padl(INF(tot17, 3), 15, " "); Space(1); Padl(INF(tot18, 2), 15, " "); Space(1); Space(15); Space(1); Space(15); Space(1); Padl(INF(tot19, 3), 15, " "); Space(1); Padl(INF(tot20, 2), 10, " "); Space(1); Padl(INF(tot21, 3), 15, " "); Space(1); Padl(INF(tot22, 2), 12, " ") & Space(1) & Padl(INF(tot23, 3), 15, " ") & Space(1) & Padl(INF(tot24, 2), 15, "  ") & Space(1); Space(15); Space(1); Space(15)
        
        
        
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
    Private Sub prnhead111(MON As String, temp5 As String)
    Print #f,
    Print #f, Chr(18)
    Print #f, Space(5) + Chr(27) & "E" & CENTRE(DIVNAME, 130, " ") & Chr(27) & "F"
    Print #f, Chr(15)
    Print #f, Space(5) + "Stock Statement for the month of  " & MON & "  " & temp5 & "    "
    Print #f, Space(5) + String(225, "-")
               ''' ("opvalue"), 3), 15, " "); Space(1); Padl(INF(rs2("reckgs"), 3), 15, " "); Space(1); Padl(INF(rs2("recvalue"), 2), 15, " "); Space(1); Padl(INF(rs2("oprekgs"), 3), 15, " "); Space(1); Padl(INF(rs2("oprectotval"), 2), 15, " "); Space(1); Padl(INF(rs2("rejectedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("rejectedval"), 2), 10, " "); Space(1); Padl(INF(rs2("isskgs"), 3), 15, " "); Space(1); Padl(INF(rs2("issval"), 2), 12, " ") & Space(1) & Padl(INF(rs2("isstrantot"), 3), 15, " ") & Space(1) & Padl(INF(rs2("adjustedkgs"), 3), 15, " "); Space(1); Padl(INF(rs2("closing"), 3), 15, " "); Space(1); Padl(INF(rs2("closingvalue"), 2), 15, " ")
    'Print #f, Space(5); "Date        Opening Kgs.           Value       Receipt Kgs.    Value         Total(Kgs.)       Value   Rejected Kgs.       Value   Issues Kgs.     Value     Transfer Kgs.      Value        Return  Kgs.       Value      Closing Kgs.      Value   "
    Print #f, Space(5); "   Date     Opening Kgs.           Value    Receipt Kgs.           Value     Total(Kgs.)           Value     Rejected Kgs.      Value   Issues Kgs.        Value     Return  Kgs.          Value    Closing Kgs.           Value"
    Print #f, Space(5) + String(225, "-")
End Sub
Public Sub monval11(mothval1 As String, monval2 As String)
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




