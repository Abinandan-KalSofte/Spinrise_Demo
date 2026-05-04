Attribute VB_Name = "Form4"
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
Dim sTypeHead As String
Dim totoprectot  As Double
Dim totoprectotkg  As Double
Dim Adjustment As Double
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
        
        DB.CommandTimeout = 1000
        
        monthmm = 0
        If XType = "A" Then
            sTypeHead = "All"
        ElseIf XType = "L" Then
            sTypeHead = "Local"
        ElseIf XType = "I" Then
            sTypeHead = "Import"
        ElseIf XType = "U" Then
            sTypeHead = "Interstate"
        End If
        If XType = "A" Then bolTYPEAll = True Else bolTYPEAll = False
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        End If
        'month_value1 = month_value1
        'months = Mid$(month_value1, 1, InStr(month_value1, "-") - 1)
        'years = Mid$(month_value, Len(Mid$(month_value, 1, InStr(month_value, "-") + 1)), Len(month_value))
        Close
        Open "c:\formIV.txt" For Output As #f
        'Call monval(month_value1, month_value2)
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


        If Table_Exists("formiv") Then
            DB.Execute "drop table formiv"
        End If
         DB.Execute "Create table Formiv (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1), salbale numeric(10),salborah numeric(10), saltot numeric(12), saltotkg numeric(15,3))"
        If MONTH(date3) + 1 = "04" Or MONTH(date3) + 1 = "4" Then
            Set issless = New Recordset
'            DB.ConnectionTimeout = 2000
            issless.Open " SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and " & _
                         " a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' AND E.ISSUED='Y' " & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & " group by bblflg " & _
                         " UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T' " & _
                         " and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Category & "'" & _
                         IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & ") A", DB, adOpenStatic, adLockOptimistic
            
            Set AdjRs = New Recordset
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) - 1 & "' and a.catcd='" & Category & "' " & IIf(bolTYPEAll, " ", " AND A.IM_IND = '" & XType & "'") & " group by a.adjust) A group by adjust", DB, adOpenStatic
        Else
            Set issless = New Recordset
'            issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((Sum(IsNull(e.netwt, 0))), 2) As Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.isstype <> 'T' and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic, adLockOptimistic
             
             issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Category & "' AND E.ISSUED='Y' " & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & " group by bblflg " & _
                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Category & "'" & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & " AND E.ISSUED='Y') A", DB, adOpenStatic, adLockOptimistic
            Set AdjRs = New Recordset
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' " & IIf(bolTYPEAll, " ", " AND A.IM_IND = '" & XType & "'") & " group by a.adjust) A group by adjust", DB, adOpenStatic
        End If
        Do While Not AdjRs.EOF
            If AdjRs("adjust") = "+" Then
                too = too + AdjRs("ADJTOTKGS")
                adjtot = adjtot + AdjRs("adjbale")
            ElseIf AdjRs("adjust") = "-" Then
                too = too - AdjRs("ADJTOTKGS")
                adjtot = adjtot - AdjRs("adjbale")
            End If
            AdjRs.MoveNext
        Loop
        If issless.RecordCount >= 0 Then
            issvalue = issless(3)
        Else
            issvalue = 0
        End If
        
        If MONTH(date3) + 1 = "04" Or MONTH(date3) + 1 = "4" Then
            
            Set Oprs = New Recordset
            Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "'" & _
                      " )" & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & "group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' " & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & " group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.isskgs,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 " & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & " group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", DB, adOpenStatic
            
        Else
            Set Oprs = New Recordset
            'Oprs.Open " select isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from  (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round      from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", DB, adOpenStatic
                      
            Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "'" & _
                      " )" & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & " group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' " & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & " group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.ISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 " & IIf(bolTYPEAll, " ", " AND B.IM_IND = '" & XType & "'") & " group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", DB, adOpenStatic
        End If
               
            
        
        DB.Execute "Insert into formiv (date1,opbales,opborah,optot,optotkg) values('" & Format(Date1, "yyyy-mm-dd") & "'," & IIf(IsNull(Oprs("opbale")), 0, Oprs("opbale")) & "," & Oprs("opborah") & "," & Oprs("optot") & "," & Oprs("optotkgs") + (val(too)) & ")"
        openkgs = Oprs("optotkgs") + (val(too))
        openbales = Oprs("opbale") + val(adjtot)
        opborah = Oprs("opborah") + val(adjtot)
        
        
        Set Rs = New Recordset
        Rs.Open "select datediff(day,'" & Date1 & "' ,'" & Date2 & "') as days ", DB, adOpenStatic, adLockReadOnly
        
'        repform.ProgressBar1.Visible = True
'        repform.ProgressBar1.Value = 0
'        repform.ProgressBar1.Max = val(rs("days")) + 1
        For i = 1 To Rs("days") + 1
'          repform.ProgressBar1.Value = repform.ProgressBar1.Value + 1
          totoprecbale = 0
          totoprecborah = 0
          totoprectot = 0
          totoprectotkg = 0
          Set RecRs = New Recordset
          Date1 = Date1
          
          
          
          
          RecRs.Open "select isnull(sum(isnull(recbale,0)),0) as recbale ,isnull(sum(isnull(recborah,0)),0) as recborah, isnull(sum(isnull(rectot,0)),0) as rectot, isnull(sum(isnull(rectotkgs,0)),0) as rectotkgs From ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as rectotkgs from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & IIf(bolTYPEAll, " ", " AND IM_IND = '" & XType & "'") & " group by b.LOTdt,b.opflg,b.bblflg ) x ", DB, adOpenStatic
          If RecRs.RecordCount > 0 Then
            DB.Execute "Update formiv set recbale=" & RecRs("recbale") & ",recborah=" & RecRs("recborah") & ",rectot=" & RecRs("rectot") & ",rectotkg=" & RecRs("rectotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "' "
            totoprecbale = totoprecbale + RecRs("recbale")
            totoprecborah = totoprecborah + RecRs("recborah")
            totoprectot = totoprectot + RecRs("rectot")
            totoprectotkg = totoprectotkg + RecRs("rectotkgs")
            Receiptkg = Receiptkg + RecRs("rectotkgs")
          End If
            'Rejection Values
            Set rejrs = New Recordset
            rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(FAVAOURABLEWGT,0)) as Rectotkgs from rm_lot where  catcd='" & Category & "' and rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "'  and  lotyear='" & Year(yfdate) & "'" & IIf(bolTYPEAll, " ", " AND IM_IND = '" & XType & "'") & " group by bblflg " & _
                       " UNION SELECT isnull(SUM(ISSBALE),0) AS RecBALE,isnull(SUM(IssBorah),0) AS RecBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS recTOT,isnull(SUM(ISSTOTKGS),0) AS RecTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS issBALE,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS issbORAH ,SUM(KGS) AS isstOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "' AND C.CATCD='" & Category & "' and A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno " & _
                       " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and a.isstype in ( select Issue_code from rm_issuetype where isstype in ('R')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  SELECT B.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB  A,rm_lot c WHERE  C.CATCD='" & Category & "'  and c.divcode='" & Divcode & "' AND A.isstype in ( select Issue_code from rm_issuetype where isstype in ('R')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a)b ", DB, adOpenStatic
            
'           rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_lot where  catcd='" & Category & "' and rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "'  and  lotyear='" & Year(yfdate) & "'" & IIf(bolTYPEAll, " ", " AND IM_IND = '" & XType & "'") & " group by bblflg)A ", DB, adOpenStatic
'            rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_lot where  catcd='" & Category & "' and rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "'  and  lotyear='" & Year(yfdate) & "'" & IIf(bolTYPEAll, " ", " AND IM_IND = '" & XType & "'") & " group by bblflg)A " & _
                       " UNION SELECT isnull(SUM(ISSBALE),0) AS REJBALE,isnull(SUM(IssBorah),0) AS RejBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS RejTOT,isnull(SUM(ISSTOTKGS),0) AS rejTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS issBALE,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS issbORAH ,SUM(KGS) AS isstOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "' AND C.CATCD='" & Category & "' and A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno " & _
                       " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and a.isstype in ( select Issue_code from rm_issuetype where isstype in ('R')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  SELECT B.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB  A,rm_lot c WHERE  C.CATCD='" & Category & "'  and c.divcode='" & Divcode & "' AND A.isstype in ( select Issue_code from rm_issuetype where isstype in ('R')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a ", DB, adOpenStatic
            
            
            
            
            DB.Execute "Update formiv set rejbale=" & rejrs("rejbale") & ",rejkg=" & rejrs("rejtotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            rejection = rejection + rejrs("rejtotkgs")
            rejectionbale = rejectionbale + rejrs("rejbale") 'for bale
            
            'Issue Values
            Set issrs = New Recordset
            'IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, sum(isnull(a.actissKGS,0)-tarewt/bales) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c where  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic
            ''IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(A.BALENO) else 0 end as IssBale ,case when bblflg='R' then COUNT(A.BALENO) else 0 end as IssBorah,COUNT(A.BALENO) as IssTot,0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED=E.ISSUED AND A.ISSUED='Y' AND b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) <> 'T' group by bblflg" & _
                       " UNION  Select 0 as IssBale ,0  as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where  b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) <> 'T' group by bblflg ) A", DB, adOpenStatic
                       
                       
'            issrs.Open " SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAH ,SUM(KGS) AS ISSTOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "' AND C.CATCD='" & Category & "' and A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno " & _
'                       " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and a.isstype not in ( select Issue_code from rm_issuetype where isstype in ('R','S')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  SELECT B.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB  A,rm_lot c WHERE  C.CATCD='" & Category & "'  and c.divcode='" & Divcode & "' AND A.isstype not in ( select Issue_code from rm_issuetype where isstype in ('R','S')) " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO AND A.LOTTYPE=B.LOTTYPE AND A.CATCD=B.CATCD AND A.VARCODE=B.VARCODE " & _
'                       " and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a ", DB, adOpenStatic
                       
             issrs.Open " SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE, case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAH ,SUM(KGS) AS ISSTOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT a.varcode,c.lotno,c.lotdt,bblflg,a.BALENO AS BALENO,0 AS KGS  FROM RM_ISSB A, rm_lot c WHERE c.divcode='" & Divcode & "' AND C.CATCD='" & Category & "' and a.ISSUED='Y' AND  a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotyear ='" & Year(yfdate) & "' AND  A.CATCD=c.CATCD and a.lotno=c.lotno  and a.lotdt=c.lotdt and a.lottype=c.lottype and a.divcode=c.divcode" & _
                        " and a.Varcode  =c.varcode  and a.isstype not in ( select Issue_code from rm_issuetype where isstype in ('R','S')) " & _
                        " GROUP BY a.varcode,c.lotno,c.lotdt,a.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  all SELECT a.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ISSKGS) AS KGS  FROM RM_ISSB  A,rm_lot c WHERE  C.CATCD='" & Category & "'  and c.divcode='" & Divcode & "' and c.lotyear ='" & Year(yfdate) & "' AND A.isstype not in ( select Issue_code from rm_issuetype where isstype in ('R','S')) AND a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.Divcode=c.divcode and a.lotno=c.lotno and a.lotdt=c.lotdt and a.lottype=c.lottype and a.catcd=c.catcd and a.varcode=c.varcode GROUP BY a.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a", DB, adOpenStatic
                                               
            
            DB.Execute "Update formiv set issbale=" & issrs("issbale") & ",issboarh=" & issrs("issborah") & ",isstot=" & issrs("isstot") & ",isstotkg=" & issrs("isstotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            
            Consumption = Consumption + issrs("isstotkgs")
            
'***************** ADD Sales Value on 23/10/2008 by vinoth
'***************** Sales Values
            Set salrs = New Recordset
                       
                       
            salrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAH ,SUM(KGS) AS ISSTOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "' AND C.CATCD='" & Category & "' and A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno " & _
            " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and a.isstype = 'SA'  " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & " GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  SELECT B.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB  A,rm_lot c WHERE  C.CATCD='" & Category & "'  and c.divcode='" & Divcode & "' " & IIf(bolTYPEAll, " ", " AND c.IM_IND = '" & XType & "'") & "  and a.isstype ='SA' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a ", DB, adOpenStatic
               
            
            DB.Execute "Update formiv set salbale=" & salrs("issbale") & ",salborah=" & salrs("issborah") & ",saltot=" & salrs("isstot") & ",saltotkg=" & salrs("isstotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            
'            Consumption = Consumption + salrs("isstotkgs")
            
            
            
            
            'Transfer Value
            Set issrs = New Recordset
            'IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, sum(isnull(a.actissKGS,0)-tarewt/bales) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c where  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic
            
            
            
            issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED='Y' AND b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' " & IIf(bolTYPEAll, " ", " AND b.IM_IND = '" & XType & "'") & " group by bblflg " & _
                       " UNION Select 0  as IssBale ,0 as IssBorah,0 as IssTot, round((sum(isnull(e.FAVAOURABLEWGT,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' " & IIf(bolTYPEAll, " ", " AND b.IM_IND = '" & XType & "'") & " group by bblflg ) A", DB, adOpenStatic
            
            DB.Execute "Update formiv set isstran=" & issrs("isstot") & ",isstrantot=" & issrs("isstotkgs") & "  where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            Transfer = Transfer + issrs("isstotkgs")
            
                        
            'Opening +Receipt Values
            Set Oprs = New Recordset
            Oprs.Open "Select isnull(Opbales,0) Opbales,isnull(opborah,0) opborah,isnull(optot,0)optot,isnull(optotkg,0)optotkg from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
            totoprecbale = totoprecbale + Oprs("Opbales")
            totoprecborah = totoprecborah + Oprs("Opborah")
            totoprectot = totoprectot + Oprs("optot")
            totoprectotkg = totoprectotkg + Oprs("optotkg")
            DB.Execute "Update formiv set oprecbale=" & totoprecbale & ",oprecborah=" & totoprecborah & ",oprectot=" & totoprectot & ",oprectotkg=" & totoprectotkg & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            
            Adjustment1 = 0
            'Adjustment Values
            Set AdjRs = New Recordset
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt='" & Format(Date1, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' " & IIf(bolTYPEAll, " ", " AND a.IM_IND = '" & XType & "'") & " group by a.adjust) A group by adjust", DB, adOpenStatic
            
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
                
                If Mid$(Adjustment1, 1, 1) = "-" Then
                    DB.Execute "Update formiv set adjkg=" & Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) & ",adjtype='" & Mid$(Adjustment1, 1, 1) & "' where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                                                            'Mid$(month_value1, InStr(month_value1, "-") + 1, Len(month_value1))
                    
                    'Adjustment = Adjustment - AdjRs("AdjTotkgs")
                Else
                'If Mid$(Adjustment1, 1, 1) = "+" Then
                    DB.Execute "Update formiv set adjkg=" & Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) & ",adjtype='+' where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                    'Adjustment = Adjustment + AdjRs("AdjTotkgs")
                
                End If
                
            Else
                DB.Execute "Update formiv set adjkg='0',adjtype=Null where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                Adjustment1 = Adjustment1 + 0
                Adjustment = Adjustment + 0
                
            End If
            
            
            

            'Closing Values
'            If AdjRs.RecordCount > 0 Then
'                AdjRs.MoveFirst
        
             If Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) > 0 Then
                If Mid$(Adjustment1, 1, 1) = "-" Then
                    
                    Adjustm = Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1))
                    
                    Set Oprs = New Recordset
                    Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0))- sum(isnull(salbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0))- sum(isnull(salborah,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0))- sum(isnull(saltot,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))+sum(isnull(rejkg,0))-sum(isnull(Adjkg,0))- sum(isnull(salkg,0)) as ClosingKgs  from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
                    
                Else
                    'If Mid$(Adjustment1, 1, 1) = "+" Or Mid$(Adjustment1, 1, 1) <> "+" Then
                    Adjustm = Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1))
                    Set Oprs = New Recordset
                    
                    'Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0)) as ClosingKgs  from formiv where date1='" & Format(date1, "yyyy-mm-dd") & "'", db, adOpenStatic
                    Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))+sum(isnull(rejkg,0))+sum(isnull(Adjkg,0)) as ClosingKgs  from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
                End If
            Else
                Set Oprs = New Recordset
                Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) -sum(isnull(salbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0))-sum(isnull(salborah,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0))- -sum(isnull(saltot,0))  as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))-sum(isnull(rejkg,0))-sum(isnull(saltotkg,0)) as ClosingKgs  from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
            End If
                
                DB.Execute "Update formiv set totbale=" & Oprs("ClosingBale") & ",totborah=" & Oprs("ClosingBorah") & ",total=" & Oprs("ClosingTot") & ",totkg=" & Oprs("ClosingKgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                        
             'Opening Balance for the next day
             Set Oprs = New Recordset
             Oprs.Open "Select sum(isnull(totbale,0)),sum(isnull(totborah,0)),sum(isnull(total,0)),sum(isnull(totkg,0)) from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
             Date1 = DateAdd("d", 1, Date1)
             DB.Execute "Insert into formiv(date1,opbales,opborah,optot,optotkg) values('" & Format(Date1, "yyyy-mm-dd") & "'," & Oprs(0) & "," & Oprs(1) & "," & Oprs(2) & "," & Oprs(3) & ")"
    
        Next
'        repform.ProgressBar1.Visible = False
        Dim temp6 As String
        Print #f, Chr(15)
        MON = MonthName(MONTH(month_value1))
        temp6 = Format(month_value1, "YY")
        Call prnhead(CStr(MON), CStr(temp6), sTypeHead)
        Dim strType As String
        Set RS2 = New Recordset
        'rs2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing from formiv where Date1 <= '" & Format(date1, "dd/mmm/yyyy") & "' order by date1 ", db, adOpenStatic
         RS2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,isstran,isstrantot,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,REJBALE AS REJBALES,rejkg as rejectedkgs,ADJBALE AS ADJBALES,adjkg as adjustedkgs,adjtype,salbale as salbale,salborah as salborah,saltot as saltotal,saltotkg as salkgs from formiv where Date1 <= '" & Format(Date1, "dd/mmm/yyyy") & "' order by date1 ", DB, adOpenStatic
        RS2.MoveFirst
        For i = 1 To RS2.RecordCount - 1
            
            If RS2!saltotal > 0 Then strType = "Sales" Else strType = ""
            If RS2("adjustedkgs") > 0 Then
             'Print #f, Space(5) & Padr(rs2(0), 10, " "); Padl(Format(rs2("opkgs"), "#0.000"), 13, " "); Padl(Format(rs2("reckgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("oprekgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("isskgs"), "#0.000"), 12, " "); Space(53); Padl(Format(rs2("closing"), "#0.000"), 21, " ")
                 'Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(inf(rs2("opkgs"), "#0.000"), 13, " "); Padl(Format(rs2("reckgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("oprekgs"), "#0.000"), 12, " "); Padl(Format(rs2("rejectedkgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("isskgs"), "#0.000"), 12, " "); Space(2) & Padl(Format(rs2("isstrantot"), "#0.000"), 12, " ") & Space(26) & Padl(Format(rs2("adjustedkgs") & "(" & Padr(rs2("adjtype"), 1, " ") & ")", "#0.000"), 17, " "); Padl(Format(rs2("closing"), "#0.000"), 14, " ")
                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(6) & Padr(strType, 15, "") & Space(1) & Padl(INF(RS2("salkgs"), 3), 15, " ") & Space(1) & Padl(INF(RS2("adjustedkgs") & "(" & Padr(RS2("adjtype"), 1, " ") & ")", 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
                ' Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2) & Padl(INF(12345678912345#, 3), 15, " ") & Space(20) & Padl(INF(12345678912345# & "(" & Padr(12345678912345#, 1, " ") & ")", 3), 17, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " ")
            Else
                 'Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(Format(rs2("opkgs"), "#0.000"), 13, " "); Padl(Format(rs2("reckgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("oprekgs"), "#0.000"), 12, " "); Padl(Format(rs2("rejectedkgs"), "#0.000"), 12, " "); Space(2); Padl(Format(rs2("isskgs"), "#0.000"), 12, " "); Space(2) & Padl(Format(rs2("isstrantot"), "#0.000"), 12, " ") & Space(26) & Padl(Format(rs2("adjustedkgs"), "#0.000"), 17, " "); Padl(Format(rs2("closing"), "#0.000"), 14, " ")
               '''Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2) & Padl(INF(12345678912345#, 3), 15, " ") & Space(39) & Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " ")
                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(6) & Padr(strType, 15, "") & Space(1) & Padl(INF(RS2("salkgs"), 3), 15, " ") & Space(1) & Padl(INF(RS2("adjustedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
            End If
            cnt = cnt + 1
'            MON = ""
'            mo = MONTH(rs2(0))
'            If Day(rs2(0)) = 30 Then
'                rs2.MoveNext
'                If rs2(0) = 31 Then
'                    If (Day(rs2(0)) = 31) Then
'
'                        Print #f, Space(5) + String(225, "-")
'                        Print #f, Chr(12)
'                        MON = MonthName(MONTH(rs2(0)))
'                        mo1 = MONTH(rs2(0))
'                        Call prnhead(CStr(MON))
'                    End If
'                Else
'                    If (Day(rs2(0)) = 1) Then
'                        Print #f, Space(5) + String(225, "-")
'                        Print #f, Chr(12)
'                        MON = MonthName(MONTH(rs2(0)))
'                        mo1 = MONTH(rs2(0))
'                        Call prnhead(CStr(MON))
'                    End If
'                End If
'                rs2.MovePrevious
'            Else
'                If (Day(rs2(0)) >= 30) Then
'                    Print #f, Space(5) + String(225, "-")
'                    Print #f, Chr(12)
'                    MON = MonthName(MONTH(rs2(0) + 1))
'                    mo1 = MONTH(rs2(0))
'                    Call prnhead(CStr(MON))
'                End If
'            End If
  
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
        Set rs3 = New Recordset
'        Set rs = New Recordset
'        rs.Open "select isnull(sum(isnull(rectotkg,0)),0),isnull(sum(isnull(isstotkg,0)),0) from formiv", db, adOpenStatic
'        If Not rs.EOF Then
'            Receiptkg = rs(0)
'            Consumption = rs(1)
'        End If
'        Set issless = New Recordset
'        issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, sum(isnull(issKGS,0)) as Isstotkgs from rm_issb a,rm_lot b where a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' group by bblflg) A", db, adOpenStatic, adLockOptimistic
'        If issless.RecordCount >= 0 Then
'            ISSVALUE = issless(3)
'        Else
'            ISSVALUE = 0
'        End If
'        Set rs = New Recordset
'        rs.Open "select isnull(SUM(isnull(OPBALE,0)),0) AS OPBALE,isnull(SUM(isnull(OpBorah,0)),0) AS OpBorah,isnull(SUM(isnull(OpTOT,0)),0) AS OpTOT,isnull(SUM(isnull(OpTOTKGS,0)),0) AS OpTOTKGS  FROM (SELECT case when bblflg='B' then sum(isnull(bales,0)-isnull(issbal,0)) else 0 end as OpBale,case when bblflg='R' then sum(isnull(bales,0)-isnull(issbal,0)) else 0 end as OpBorah ,sum(isnull(bales,0)-isnull(issbal,0)) as OpTot, sum(isnull(netwt,0)) - " & ISSVALUE & " as optotkgs from rm_lot where lotdt<= '" & Format(date2, "dd/mmm/yyyy") & "' group by bblflg) A", db, adOpenStatic
'
'        If Not rs.EOF Then
'            Openkg = rs("OpTOTKGS")
'        End If
'        TOkg = Receiptkg + Openkg
'        Balance = TOkg - Consumption
        
        TOkg = openkgs + Receiptkg
        TOTBALES = openbales + stot2
        totborahs = opborah + stot11
        Print #f, Space(5) + String(225, "-")
        Print #f, Space(10) + Space(116) & Chr(27) & "E" & Padr("  BALES       BORAHS", 18, " ") & Space(18) & Padr("KGS", 16, " ") & Chr(27) & "F"
        Print #f, Space(10) + Space(92) & "Opening Stock   :" & Padl(INF(openbales, 0), 12, " ") & Space(1) & Padl(INF(opborah, 0), 12, " ") & Space(5) & Padl(INF(openkgs, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Receipts        :" & Padl(INF(stot2, 0), 12, " ") & Space(1) & Padl(INF(stot11, 0), 12, " ") & Space(5) & Padl(INF(Receiptkg, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Total           :" & Padl(INF(TOTBALES, 0), 12, " ") & Space(1) & Padl(INF(totborahs, 0), 12, " ") & Space(5) & Padl(INF(TOkg, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Consumption     :" & Padl(INF(stot4, 0), 12, " ") & Space(1) & Padl(INF(stot12, 0), 12, " ") & Space(5) & Padl(INF(Consumption, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Transfer        :" & Padl(INF(stot7, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(Transfer, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Others          :" & Padl(INF(stot13, 0), 12, " ") & Space(1) & Padl(INF(stot14, 0), 12, " ") & Space(5) & Padl(INF(stot15, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Rejected        :" & Padl(INF(stot8, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(rejection, 3), 16, " ")
        Print #f, Space(10) + Space(92) + "Adjustment      :" & Padl(INF(stot9, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(Adjustment, 3), 16, " ")
        stot10 = TOkg - (Consumption + Transfer + rejection + stot15) + (Adjustment)
        stot11 = TOTBALES - (stot4) - (stot13) '+ stot7 + stot8) + (stot9)
        stot12 = totborahs - stot12 - stot14
        Print #f, Space(10) + Space(92) & "Balance         :" & Padl(INF(stot11, 0), 12, " ") & Space(1) & Padl(INF(stot12, 0), 12, " ") & Space(5) & Padl(INF(stot10, 3), 16, " ")
        
        'Print #f, Space(11) & CENTRE("Opening Stock :" + Space(1) + Padl(INF(openkgs, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Opening Bales :" + Space(1) + Padl(INF(openbales, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Receipts      :" + Space(1) + Padl(INF(Receiptkg, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Receipts Bales :" + Space(1) + Padl(INF(stot2, 0), 12, " "), 110, " ")
        'TOkg = openkgs + Receiptkg
        'totbales = openbales + stot2
        'Print #f, Space(11) & CENTRE("Total         :" + Space(1) + Padl(INF(TOkg, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Total Bales :" + Space(1) + Padl(INF(totbales, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Consumption   :" + Space(1) + Padl(INF(Consumption, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Consumption Bales :" + Space(1) + Padl(INF(stot4, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Transfer      :" + Space(1) + Padl(INF(transfer, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Transfer Bales :" + Space(1) + Padl(INF(stot7, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Rejected      :" + Space(1) + Padl(INF(rejection, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Rejected Bales :" + Space(1) + Padl(INF(stot8, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Adjustment    :" + Space(1) + Padl(INF(Adjustment, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Adjustment Bales :" + Space(1) + Padl(INF(stot9, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Balance       :" + Space(1) + Padl(INF(TOkg - (Consumption + transfer + rejection) + (Adjustment), 3), 16, " "), 110, " ") & Space(5) & CENTRE("Balance       :" + Space(1) + Padl(INF(totbales - (stot4 + stot7 + stot8) + (stot9), 0), 16, " "), 110, " ")
        
                
        
'        Print #f, Space(11) & CENTRE("Opening Stock :" + Space(1) + Padl(INF(openkgs, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Opening Bales :" + Space(1) + Padl(INF(openbales, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Receipts      :" + Space(1) + Padl(INF(Receiptkg, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Receipts Bales :" + Space(1) + Padl(INF(stot2, 0), 12, " "), 110, " ")
'        TOkg = openkgs + Receiptkg
'        totbales = openbales + stot2
'        Print #f, Space(11) & CENTRE("Total         :" + Space(1) + Padl(INF(TOkg, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Total Bales :" + Space(1) + Padl(INF(totbales, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Consumption   :" + Space(1) + Padl(INF(Consumption, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Consumption Bales :" + Space(1) + Padl(INF(stot4, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Transfer      :" + Space(1) + Padl(INF(Transfer, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Transfer Bales :" + Space(1) + Padl(INF(stot7, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Rejected      :" + Space(1) + Padl(INF(rejection, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Rejected Bales :" + Space(1) + Padl(INF(stot8, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Adjustment    :" + Space(1) + Padl(INF(Adjustment, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Adjustment Bales :" + Space(1) + Padl(INF(stot9, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Balance       :" + Space(1) + Padl(INF(TOkg - (Consumption + Transfer + rejection) + (Adjustment), 3), 16, " "), 110, " ") & Space(5) & CENTRE("Balance       :" + Space(1) + Padl(INF(totbales - (stot4 + stot7 + stot8) + (stot9), 0), 16, " "), 110, " ")
        
        
        
        Print #f, Space(5) + String(225, "-")
        Print #f, Chr(12)
        Close #f
        Open "c:\formIV.bat" For Output As #f
        Print #f, "cd\"
        Print #f, "c:"
        Print #f, "cd\"
        Print #f, "type formIV.txt > prn"
        Close #f
        Rep.txtfile = "c:\formIV.txt"
        Rep.Batfile = "c:\formIV.bat"
        Screen.MousePointer = 0
End Sub
Public Sub mdlform4_OLD(month_value1 As String, month_value2 As String, Category As String)
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
        Set rsa = New Recordset
        rsa.Open "select catname from rm_cat where catcd='" & Category & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            cat = rsa(0)
        End If
        'month_value1 = month_value1
        'months = Mid$(month_value1, 1, InStr(month_value1, "-") - 1)
        'years = Mid$(month_value, Len(Mid$(month_value, 1, InStr(month_value, "-") + 1)), Len(month_value))
        Close
        Open "c:\formIV.txt" For Output As #f
        'Call monval(month_value1, month_value2)
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


        If Table_Exists("formiv") Then
            DB.Execute "drop table formiv"
        End If
         DB.Execute "Create table Formiv (date1 datetime,Opbales numeric(8),opborah numeric(8),optot numeric(16),optotkg numeric(15,3),recbale numeric(8),recborah numeric(8),rectot numeric(16),rectotkg numeric(15,3),oprecbale numeric(8),oprecborah numeric(8),oprectot numeric(16),oprectotkg numeric(15,3),issbale numeric(8),issboarh numeric(8),isstot numeric(16),isstran numeric(16),isstrantot numeric(15,3),isstotkg numeric(15,3),totbale numeric(8),totborah numeric(8),total numeric(16),totkg numeric(15,3),rejbale numeric(12),REJKG NUMERIC(15,3),ADJBALE NUMERIC(15),adjkg numeric(15,3),adjtype char(1))"
        If MONTH(date3) + 1 = "04" Or MONTH(date3) + 1 = "4" Then
            Set issless = New Recordset
            issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' AND E.ISSUED='Y' group by bblflg " & _
                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' group by bblflg) A", DB, adOpenStatic, adLockOptimistic
            
            Set AdjRs = New Recordset
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) - 1 & "' and a.catcd='" & Category & "' group by a.adjust) A group by adjust", DB, adOpenStatic
        Else
            Set issless = New Recordset
            ''issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, round((Sum(IsNull(e.netwt, 0))), 2) As Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.isstype <> 'T' and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic, adLockOptimistic
             
             issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then count(*) else 0 end as IssBale,case when bblflg='R' then count(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(date3, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and b.catcd='" & Category & "' AND E.ISSUED='Y' group by bblflg " & _
                          "UNION Select 0 as IssBale,0 as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b ,rm_issh c,RM_BALE E where  a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.isstype <> 'T'  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) - 1 & "' and b.catcd='" & Category & "' group by bblflg) A", DB, adOpenStatic, adLockOptimistic
            Set AdjRs = New Recordset
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt<='" & Format(date3, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust) A group by adjust", DB, adOpenStatic
        End If
        Do While Not AdjRs.EOF
            If AdjRs("adjust") = "+" Then
                too = too + AdjRs("ADJTOTKGS")
                adjtot = adjtot + AdjRs("adjbale")
            ElseIf AdjRs("adjust") = "-" Then
                too = too - AdjRs("ADJTOTKGS")
                adjtot = adjtot - AdjRs("adjbale")
            End If
            AdjRs.MoveNext
        Loop
        If issless.RecordCount >= 0 Then
            issvalue = issless(3)
        Else
            issvalue = 0
        End If
        
        If MONTH(date3) + 1 = "04" Or MONTH(date3) + 1 = "4" Then
            
            Set Oprs = New Recordset
            Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.ACTISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", DB, adOpenStatic
            
        Else
            Set Oprs = New Recordset
            'Oprs.Open " select isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from  (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round      from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and b.lotno=c.lotno and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", DB, adOpenStatic
                      
            Oprs.Open " select  isnull(sum(opbales),0) ""opbale"",isnull(sum(opboras),0)""opborah"",isnull(sum(opkgs),0)""optotkgs"",(isnull(sum(opbales),0)+isnull(sum(opboras),0)) ""optot"" from (select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt < '" & Date1 & "' AND BALES >0 and (B.rejflg='N' or B.rejdt >='" & Date1 & "') group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,0 as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 AND E.ISSUED='Y' group by b.LOTNO,b.bblflg " & _
                      " union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0  as issbales,0 as issboras,round((sum(isnull(C.ACTISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.catcd='" & Category & "' and B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt    and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                      " and b.lotno=c.lotno  and (B.rejflg='N' or B.rejdt >='" & Date1 & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & Category & "' and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND BALES >0 group by b.LOTNO,b.bblflg ) a  group by LOTNO )b ", DB, adOpenStatic
        End If
               
            
        
        DB.Execute "Insert into formiv (date1,opbales,opborah,optot,optotkg) values('" & Format(Date1, "yyyy-mm-dd") & "'," & IIf(IsNull(Oprs("opbale")), 0, Oprs("opbale")) & "," & Oprs("opborah") & "," & Oprs("optot") & "," & Oprs("optotkgs") + (val(too)) & ")"
        openkgs = Oprs("optotkgs") + (val(too))
        openbales = Oprs("opbale") + val(adjtot)
        opborah = Oprs("opborah") + val(adjtot)
        
        
        Set Rs = New Recordset
        Rs.Open "select datediff(day,'" & Date1 & "' ,'" & Date2 & "') as days ", DB, adOpenStatic, adLockReadOnly
        
'        repform.ProgressBar1.Visible = True
'        repform.ProgressBar1.Value = 0
'        repform.ProgressBar1.Max = val(rs("days")) + 1
        For i = 1 To Rs("days") + 1
'          repform.ProgressBar1.Value = repform.ProgressBar1.Value + 1
          totoprecbale = 0
          totoprecborah = 0
          totoprectot = 0
          totoprectotkg = 0
          Set RecRs = New Recordset
          Date1 = Date1
          RecRs.Open "select isnull(sum(isnull(recbale,0)),0) as recbale ,isnull(sum(isnull(recborah,0)),0) as recborah, isnull(sum(isnull(rectot,0)),0) as rectot, isnull(sum(isnull(rectotkgs,0)),0) as rectotkgs From ( select case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbale, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recborah,sum(b.bales) ""Rectot"", case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as rectotkgs from rm_lot b  where B.DIVCODE='" & Divcode & "'  and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & Category & "' and b.lotdt = '" & Format(Date1, "yyyy-mm-dd") & "'   AND  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTdt,b.opflg,b.bblflg ) x ", DB, adOpenStatic
          If RecRs.RecordCount > 0 Then
            DB.Execute "Update formiv set recbale=" & RecRs("recbale") & ",recborah=" & RecRs("recborah") & ",rectot=" & RecRs("rectot") & ",rectotkg=" & RecRs("rectotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "' "
            totoprecbale = totoprecbale + RecRs("recbale")
            totoprecborah = totoprecborah + RecRs("recborah")
            totoprectot = totoprectot + RecRs("rectot")
            totoprectotkg = totoprectotkg + RecRs("rectotkgs")
            Receiptkg = Receiptkg + RecRs("rectotkgs")
          End If
            'Rejection Values
            Set rejrs = New Recordset
            rejrs.Open "SELECT isnull(SUM(isnull(RECBALE,0)),0) AS REJBALE, isnull(SUM(isnull(RecBorah,0)),0) AS ReJBorah, isnull(SUM(isnull(RecTot,0)),0) AS RejTot, isnull(SUM(isnull(Rectotkgs,0)),0) AS Rejtotkgs FROM (Select case when bblflg='B' then sum(isnull(bales,0)) else 0 end as recbale,case when bblflg='R' then sum(isnull(bales,0)) else 0 end as recborah,sum(isnull(bales,0)) as RecTot, sum(isnull(netwt,0)) as Rectotkgs from rm_lot where  catcd='" & Category & "' and rejflg='Y' and rejdt = '" & Format(Date1, "yyyy-mm-dd") & "'  and  lotyear='" & Year(yfdate) & "' group by bblflg)A", DB, adOpenStatic
            DB.Execute "Update formiv set rejbale=" & rejrs("rejbale") & ",rejkg=" & rejrs("rejtotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            rejection = rejection + rejrs("rejtotkgs")
            rejectionbale = rejectionbale + rejrs("rejbale") 'for bale
            
            'Issue Values
            Set issrs = New Recordset
            'IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, sum(isnull(a.actissKGS,0)-tarewt/bales) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c where  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic
            ''IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(A.BALENO) else 0 end as IssBale ,case when bblflg='R' then COUNT(A.BALENO) else 0 end as IssBorah,COUNT(A.BALENO) as IssTot,0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED=E.ISSUED AND A.ISSUED='Y' AND b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) <> 'T' group by bblflg" & _
                       " UNION  Select 0 as IssBale ,0  as IssBorah,0 as IssTot, round((sum(isnull(A.ACTISSKGS,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where  b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) <> 'T' group by bblflg ) A", DB, adOpenStatic
                       
                       
            issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSBALE),0)+ISnull(SUM(IssBorah),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM ( select case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALE,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAH ,SUM(KGS) AS ISSTOTKGS from (SELECT varcode,lotno,lotdt,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(SELECT B.varcode,c.lotno,c.lotdt,bblflg,b.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW')  and c.divcode='" & Divcode & "' AND C.CATCD='" & Category & "' and A.ISSUED=B.ISSUED AND b.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' AND a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND  A.CATCD=B.CATCD and b.lotno=c.lotno " & _
            " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,b.baleno,BBLFLG )X GROUP BY varcode,lotno,lotdt,BBLFLG Union  SELECT B.varcode,c.lotno,c.lotdt,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB  A,rm_lot c WHERE  C.CATCD='" & Category & "'  and c.divcode='" & Divcode & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd GROUP BY B.varcode,c.lotno,c.lotdt,BBLFLG )Y GROUP BY bblflg )a ", DB, adOpenStatic
                       
                       
            
            DB.Execute "Update formiv set issbale=" & issrs("issbale") & ",issboarh=" & issrs("issborah") & ",isstot=" & issrs("isstot") & ",isstotkg=" & issrs("isstotkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            
            Consumption = Consumption + issrs("isstotkgs")
            
            'Transfer Value
            Set issrs = New Recordset
            'IssRs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, sum(isnull(a.actissKGS,0)-tarewt/bales) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c where  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' group by bblflg) A", DB, adOpenStatic
            issrs.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, 0 as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where A.ISSUED='Y' AND b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' group by bblflg " & _
                       " UNION Select 0  as IssBale ,0 as IssBorah,0 as IssTot, round((sum(isnull(e.netwt,0))),2) as Isstotkgs from rm_issb a,rm_lot b,rm_issh c,rm_bale e where b.catcd='" & Category & "' and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt='" & Format(Date1, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "' and left(a.isstype,1) = 'T' group by bblflg ) A", DB, adOpenStatic
            
            DB.Execute "Update formiv set isstran=" & issrs("isstot") & ",isstrantot=" & issrs("isstotkgs") & "  where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            Transfer = Transfer + issrs("isstotkgs")
            
                        
            'Opening +Receipt Values
            Set Oprs = New Recordset
            Oprs.Open "Select isnull(Opbales,0) Opbales,isnull(opborah,0) opborah,isnull(optot,0)optot,isnull(optotkg,0)optotkg from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
            totoprecbale = totoprecbale + Oprs("Opbales")
            totoprecborah = totoprecborah + Oprs("Opborah")
            totoprectot = totoprectot + Oprs("optot")
            totoprectotkg = totoprectotkg + Oprs("optotkg")
            DB.Execute "Update formiv set oprecbale=" & totoprecbale & ",oprecborah=" & totoprecborah & ",oprectot=" & totoprectot & ",oprectotkg=" & totoprectotkg & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            
            Adjustment1 = 0
            'Adjustment Values
            Set AdjRs = New Recordset
            AdjRs.Open "SELECT isnull(SUM(ADJBALE),0) AS ADJBALE,isnull(SUM(AdjBorah),0) AS AdjBorah,isnull(SUM(ADJTOT),0) AS ADJTOT,isnull(SUM(ADJTOTKGS),0) AS ADJTOTKGS,isnull(adjust,' ')  as Adjust FROM (Select  0 as AdjBale ,0  as AdjBorah,0 as AdjTot, sum(isnull(a.adjwt,0)) as Adjtotkgs,isnull(a.adjust,' ') as adjust from rm_lot a where a.catcd='" & Category & "' and a.adjdt='" & Format(Date1, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' group by a.adjust) A group by adjust", DB, adOpenStatic
            
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
                
                If Mid$(Adjustment1, 1, 1) = "-" Then
                    DB.Execute "Update formiv set adjkg=" & Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) & ",adjtype='" & Mid$(Adjustment1, 1, 1) & "' where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                                                            'Mid$(month_value1, InStr(month_value1, "-") + 1, Len(month_value1))
                    
                    'Adjustment = Adjustment - AdjRs("AdjTotkgs")
                Else
                'If Mid$(Adjustment1, 1, 1) = "+" Then
                    DB.Execute "Update formiv set adjkg=" & Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) & ",adjtype='+' where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                    'Adjustment = Adjustment + AdjRs("AdjTotkgs")
                
                End If
                
            Else
                DB.Execute "Update formiv set adjkg='0',adjtype=Null where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                Adjustment1 = Adjustment1 + 0
                Adjustment = Adjustment + 0
                
            End If
            
            
            

            'Closing Values
'            If AdjRs.RecordCount > 0 Then
'                AdjRs.MoveFirst
        
             If Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1)) > 0 Then
                If Mid$(Adjustment1, 1, 1) = "-" Then
                    
                    Adjustm = Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1))
                    
                    Set Oprs = New Recordset
                    Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))+sum(isnull(rejkg,0))-sum(isnull(Adjkg,0)) as ClosingKgs  from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
                    
                Else
                    'If Mid$(Adjustment1, 1, 1) = "+" Or Mid$(Adjustment1, 1, 1) <> "+" Then
                    Adjustm = Mid$(Adjustment1, InStr(Adjustment1, "-") + 1, Len(Adjustment1))
                    Set Oprs = New Recordset
                    
                    'Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0)) as ClosingKgs  from formiv where date1='" & Format(date1, "yyyy-mm-dd") & "'", db, adOpenStatic
                    Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0)) as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))+sum(isnull(rejkg,0))+sum(isnull(Adjkg,0)) as ClosingKgs  from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
                End If
            Else
                Set Oprs = New Recordset
                Oprs.Open "Select sum(isnull(oprecbale,0))-sum(isnull(issbale,0)) as ClosingBale,sum(isnull(oprecborah,0))-sum(isnull(issboarh,0)) as ClosingBorah,sum(isnull(oprectot,0))-sum(isnull(isstot,0))-sum(isnull(isstran,0))  as ClosingTot,sum(isnull(oprectotkg,0))-sum(isnull(isstotkg,0))-sum(isnull(isstrantot,0))-sum(isnull(rejkg,0)) as ClosingKgs  from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
            End If
                
                DB.Execute "Update formiv set totbale=" & Oprs("ClosingBale") & ",totborah=" & Oprs("ClosingBorah") & ",total=" & Oprs("ClosingTot") & ",totkg=" & Oprs("ClosingKgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
                        
             'Opening Balance for the next day
             Set Oprs = New Recordset
             Oprs.Open "Select sum(isnull(totbale,0)),sum(isnull(totborah,0)),sum(isnull(total,0)),sum(isnull(totkg,0)) from formiv where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
             Date1 = DateAdd("d", 1, Date1)
             DB.Execute "Insert into formiv(date1,opbales,opborah,optot,optotkg) values('" & Format(Date1, "yyyy-mm-dd") & "'," & Oprs(0) & "," & Oprs(1) & "," & Oprs(2) & "," & Oprs(3) & ")"
    
        Next
'        repform.ProgressBar1.Visible = False
        Dim temp6 As String
        Print #f, Chr(15)
        MON = MonthName(MONTH(month_value1))
        temp6 = Format(month_value1, "YY")
        Call prnhead(CStr(MON), CStr(temp6), sTypeHead)
             
        Set RS2 = New Recordset
        'rs2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing from formiv where Date1 <= '" & Format(date1, "dd/mmm/yyyy") & "' order by date1 ", db, adOpenStatic
         RS2.Open "Select date1,opbales as Openbale,opborah as OPENBOARH,optot as oPENTOTAL,optotkg as opkgs,recbale as Recpbale,recborah recpborah,rectot Rectotal,rectotkg as reckgs,oprecbale as oprebale,oprecborah opreborah,oprectot opretot,oprectotkg oprekgs,issbale as issbale,issboarh as issborah,isstot as isstotal,isstotkg as isskgs,isstran,isstrantot,totbale as closbale,totborah as closborah,total as closbaleboar,totkg  as closing,REJBALE AS REJBALES,rejkg as rejectedkgs,ADJBALE AS ADJBALES,adjkg as adjustedkgs,adjtype from formiv where Date1 <= '" & Format(Date1, "dd/mmm/yyyy") & "' order by date1 ", DB, adOpenStatic
        RS2.MoveFirst
        For i = 1 To RS2.RecordCount - 1
            If RS2("adjustedkgs") > 0 Then
             'Print #f, Space(5) & Padr(rs2(0), 10, " "); Padl(Format(rs2("opkgs"), "#0.000"), 13, " "); Padl(Format(rs2("reckgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("oprekgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("isskgs"), "#0.000"), 12, " "); Space(53); Padl(Format(rs2("closing"), "#0.000"), 21, " ")
                 'Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(inf(rs2("opkgs"), "#0.000"), 13, " "); Padl(Format(rs2("reckgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("oprekgs"), "#0.000"), 12, " "); Padl(Format(rs2("rejectedkgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("isskgs"), "#0.000"), 12, " "); Space(2) & Padl(Format(rs2("isstrantot"), "#0.000"), 12, " ") & Space(26) & Padl(Format(rs2("adjustedkgs") & "(" & Padr(rs2("adjtype"), 1, " ") & ")", "#0.000"), 17, " "); Padl(Format(rs2("closing"), "#0.000"), 14, " ")
                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(39) & Padl(INF(RS2("adjustedkgs") & "(" & Padr(RS2("adjtype"), 1, " ") & ")", 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
                ' Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2) & Padl(INF(12345678912345#, 3), 15, " ") & Space(20) & Padl(INF(12345678912345# & "(" & Padr(12345678912345#, 1, " ") & ")", 3), 17, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " ")
            Else
                 'Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(Format(rs2("opkgs"), "#0.000"), 13, " "); Padl(Format(rs2("reckgs"), "#0.000"), 12, " "); Space(1); Padl(Format(rs2("oprekgs"), "#0.000"), 12, " "); Padl(Format(rs2("rejectedkgs"), "#0.000"), 12, " "); Space(2); Padl(Format(rs2("isskgs"), "#0.000"), 12, " "); Space(2) & Padl(Format(rs2("isstrantot"), "#0.000"), 12, " ") & Space(26) & Padl(Format(rs2("adjustedkgs"), "#0.000"), 17, " "); Padl(Format(rs2("closing"), "#0.000"), 14, " ")
               '''Print #f, Space(5) & Padr(Format(rs2(0), "dd-mm-yy"), 8, " "); Padl(INF(rs2("opkgs"), 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " "); Space(2) & Padl(INF(12345678912345#, 3), 15, " ") & Space(39) & Padl(INF(12345678912345#, 3), 15, " "); Space(2); Padl(INF(12345678912345#, 3), 15, " ")
                 Print #f, Space(5) & Padr(Format(RS2(0), "dd-mm-yy"), 8, " "); Padl(INF(RS2("opkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("reckgs"), 3), 15, " "); Space(2); Padl(INF(RS2("oprekgs"), 3), 15, " "); Space(2); Padl(INF(RS2("rejectedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("isskgs"), 3), 15, " "); Space(2) & Padl(INF(RS2("isstrantot"), 3), 15, " ") & Space(39) & Padl(INF(RS2("adjustedkgs"), 3), 15, " "); Space(2); Padl(INF(RS2("closing"), 3), 15, " ")
            End If
            cnt = cnt + 1
'            MON = ""
'            mo = MONTH(rs2(0))
'            If Day(rs2(0)) = 30 Then
'                rs2.MoveNext
'                If rs2(0) = 31 Then
'                    If (Day(rs2(0)) = 31) Then
'
'                        Print #f, Space(5) + String(225, "-")
'                        Print #f, Chr(12)
'                        MON = MonthName(MONTH(rs2(0)))
'                        mo1 = MONTH(rs2(0))
'                        Call prnhead(CStr(MON))
'                    End If
'                Else
'                    If (Day(rs2(0)) = 1) Then
'                        Print #f, Space(5) + String(225, "-")
'                        Print #f, Chr(12)
'                        MON = MonthName(MONTH(rs2(0)))
'                        mo1 = MONTH(rs2(0))
'                        Call prnhead(CStr(MON))
'                    End If
'                End If
'                rs2.MovePrevious
'            Else
'                If (Day(rs2(0)) >= 30) Then
'                    Print #f, Space(5) + String(225, "-")
'                    Print #f, Chr(12)
'                    MON = MonthName(MONTH(rs2(0) + 1))
'                    mo1 = MONTH(rs2(0))
'                    Call prnhead(CStr(MON))
'                End If
'            End If
  
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
          RS2.MoveNext
            
        Next
        Set rs3 = New Recordset
'        Set rs = New Recordset
'        rs.Open "select isnull(sum(isnull(rectotkg,0)),0),isnull(sum(isnull(isstotkg,0)),0) from formiv", db, adOpenStatic
'        If Not rs.EOF Then
'            Receiptkg = rs(0)
'            Consumption = rs(1)
'        End If
'        Set issless = New Recordset
'        issless.Open "SELECT isnull(SUM(ISSBALE),0) AS ISSBALE,isnull(SUM(IssBorah),0) AS IssBorah,isnull(SUM(ISSTOT),0) AS ISSTOT,isnull(SUM(ISSTOTKGS),0) AS ISSTOTKGS FROM (Select case when bblflg='B' then COUNT(*) else 0 end as IssBale ,case when bblflg='R' then COUNT(*) else 0 end as IssBorah,COUNT(*) as IssTot, sum(isnull(issKGS,0)) as Isstotkgs from rm_issb a,rm_lot b where a.lotdt=b.lotdt and a.lotno=b.lotno  and a.docdt<='" & Format(date3, "yyyy-mm-dd") & "' group by bblflg) A", db, adOpenStatic, adLockOptimistic
'        If issless.RecordCount >= 0 Then
'            ISSVALUE = issless(3)
'        Else
'            ISSVALUE = 0
'        End If
'        Set rs = New Recordset
'        rs.Open "select isnull(SUM(isnull(OPBALE,0)),0) AS OPBALE,isnull(SUM(isnull(OpBorah,0)),0) AS OpBorah,isnull(SUM(isnull(OpTOT,0)),0) AS OpTOT,isnull(SUM(isnull(OpTOTKGS,0)),0) AS OpTOTKGS  FROM (SELECT case when bblflg='B' then sum(isnull(bales,0)-isnull(issbal,0)) else 0 end as OpBale,case when bblflg='R' then sum(isnull(bales,0)-isnull(issbal,0)) else 0 end as OpBorah ,sum(isnull(bales,0)-isnull(issbal,0)) as OpTot, sum(isnull(netwt,0)) - " & ISSVALUE & " as optotkgs from rm_lot where lotdt<= '" & Format(date2, "dd/mmm/yyyy") & "' group by bblflg) A", db, adOpenStatic
'
'        If Not rs.EOF Then
'            Openkg = rs("OpTOTKGS")
'        End If
'        TOkg = Receiptkg + Openkg
'        Balance = TOkg - Consumption
        
        TOkg = openkgs + Receiptkg
        TOTBALES = openbales + stot2
        totborahs = opborah + stot11
        Print #f, Space(5) + String(225, "-")
        Print #f, Space(10) + Space(116) & Chr(27) & "E" & Padr("  BALES       BORAHS", 18, " ") & Space(18) & Padr("KGS", 16, " ") & Chr(27) & "F"
        Print #f, Space(10) + Space(92) & "Opening Stock   :" & Padl(INF(openbales, 0), 12, " ") & Space(1) & Padl(INF(opborah, 0), 12, " ") & Space(5) & Padl(INF(openkgs, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Receipts        :" & Padl(INF(stot2, 0), 12, " ") & Space(1) & Padl(INF(stot11, 0), 12, " ") & Space(5) & Padl(INF(Receiptkg, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Total           :" & Padl(INF(TOTBALES, 0), 12, " ") & Space(1) & Padl(INF(totborahs, 0), 12, " ") & Space(5) & Padl(INF(TOkg, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Consumption     :" & Padl(INF(stot4, 0), 12, " ") & Space(1) & Padl(INF(stot12, 0), 12, " ") & Space(5) & Padl(INF(Consumption, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Transfer        :" & Padl(INF(stot7, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(Transfer, 3), 16, " ")
        Print #f, Space(10) + Space(92) & "Rejected        :" & Padl(INF(stot8, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(rejection, 3), 16, " ")
        Print #f, Space(10) + Space(92) + "Adjustment      :" & Padl(INF(stot9, 0), 12, " ") & Space(1) & Padl(INF(0, 0), 12, " ") & Space(5) & Padl(INF(Adjustment, 3), 16, " ")
        stot10 = TOkg - (Consumption + Transfer + rejection) + (Adjustment)
        stot11 = TOTBALES - (stot4) '+ stot7 + stot8) + (stot9)
        stot12 = totborahs - stot12
        Print #f, Space(10) + Space(92) & "Balance         :" & Padl(INF(stot11, 0), 12, " ") & Space(1) & Padl(INF(stot12, 0), 12, " ") & Space(5) & Padl(INF(stot10, 3), 16, " ")
        
        'Print #f, Space(11) & CENTRE("Opening Stock :" + Space(1) + Padl(INF(openkgs, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Opening Bales :" + Space(1) + Padl(INF(openbales, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Receipts      :" + Space(1) + Padl(INF(Receiptkg, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Receipts Bales :" + Space(1) + Padl(INF(stot2, 0), 12, " "), 110, " ")
        'TOkg = openkgs + Receiptkg
        'totbales = openbales + stot2
        'Print #f, Space(11) & CENTRE("Total         :" + Space(1) + Padl(INF(TOkg, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Total Bales :" + Space(1) + Padl(INF(totbales, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Consumption   :" + Space(1) + Padl(INF(Consumption, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Consumption Bales :" + Space(1) + Padl(INF(stot4, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Transfer      :" + Space(1) + Padl(INF(transfer, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Transfer Bales :" + Space(1) + Padl(INF(stot7, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Rejected      :" + Space(1) + Padl(INF(rejection, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Rejected Bales :" + Space(1) + Padl(INF(stot8, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Adjustment    :" + Space(1) + Padl(INF(Adjustment, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Adjustment Bales :" + Space(1) + Padl(INF(stot9, 0), 12, " "), 110, " ")
        'Print #f, Space(11) & CENTRE("Balance       :" + Space(1) + Padl(INF(TOkg - (Consumption + transfer + rejection) + (Adjustment), 3), 16, " "), 110, " ") & Space(5) & CENTRE("Balance       :" + Space(1) + Padl(INF(totbales - (stot4 + stot7 + stot8) + (stot9), 0), 16, " "), 110, " ")
        
                
        
'        Print #f, Space(11) & CENTRE("Opening Stock :" + Space(1) + Padl(INF(openkgs, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Opening Bales :" + Space(1) + Padl(INF(openbales, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Receipts      :" + Space(1) + Padl(INF(Receiptkg, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Receipts Bales :" + Space(1) + Padl(INF(stot2, 0), 12, " "), 110, " ")
'        TOkg = openkgs + Receiptkg
'        totbales = openbales + stot2
'        Print #f, Space(11) & CENTRE("Total         :" + Space(1) + Padl(INF(TOkg, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Total Bales :" + Space(1) + Padl(INF(totbales, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Consumption   :" + Space(1) + Padl(INF(Consumption, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Consumption Bales :" + Space(1) + Padl(INF(stot4, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Transfer      :" + Space(1) + Padl(INF(Transfer, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Transfer Bales :" + Space(1) + Padl(INF(stot7, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Rejected      :" + Space(1) + Padl(INF(rejection, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Rejected Bales :" + Space(1) + Padl(INF(stot8, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Adjustment    :" + Space(1) + Padl(INF(Adjustment, 3), 16, " "), 110, " ") & Space(5) & CENTRE("Adjustment Bales :" + Space(1) + Padl(INF(stot9, 0), 12, " "), 110, " ")
'        Print #f, Space(11) & CENTRE("Balance       :" + Space(1) + Padl(INF(TOkg - (Consumption + Transfer + rejection) + (Adjustment), 3), 16, " "), 110, " ") & Space(5) & CENTRE("Balance       :" + Space(1) + Padl(INF(totbales - (stot4 + stot7 + stot8) + (stot9), 0), 16, " "), 110, " ")
        
        
        
        Print #f, Space(5) + String(225, "-")
        Print #f, Chr(12)
        Close #f
        Open "c:\formIV.bat" For Output As #f
        Print #f, "cd\"
        Print #f, "c:"
        Print #f, "cd\"
        Print #f, "type formIV.txt > prn"
        Close #f
        Rep.txtfile = "c:\formIV.txt"
        Rep.Batfile = "c:\formIV.bat"
        Screen.MousePointer = 0
End Sub
    Private Sub prnhead(MON As String, temp6 As String, sTypeHead As String)
    Print #f,
    Print #f, Chr(18)
    Print #f, Space(5) + Chr(27) & "E" & CENTRE(Trim(DIVNAME) & Chr(27) & "F", 132, " ")
    Print #f,
    Print #f, Space(5) + CENTRE("Annexure  V. Form IV  (Rule  173 G.)", 132, " ")
    Print #f,
    Print #f, Space(5) + Chr(27) & "E"; CENTRE("Account of Raw Materials and Components", 132, " "); Chr(27) & "F"
    Print #f,
    Print #f, Space(3) + "Description of Raw Materials/Components : " & Padr(cat, 17, " "); Space(1) + " Purchase Type : " & Padr(sTypeHead, 11, "") + Space(25) + "Month :" & MON & Space(1) & temp6; " " + Chr(15)
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




