Attribute VB_Name = "StockStatementVariety"
Dim opf As New Recordset
Dim opf1 As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9, op10 As Double
Dim rsP As New Recordset
Dim Namers As Recordset
Dim VarName As String
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim RSV As New Recordset
Dim VTOT As Double, vtot1 As Double, vtot2 As Double, vtot3 As Double, VTOT4 As Double
Dim VTOT5 As Double, VTOT6 As Double, VTOT7 As Double, VTOT8 As Double, VTOT9 As Double
Dim VTOT10 As Double, VTOT11 As Double, VTOT12 As Double, VTOT13 As Double, VTOT14 As Double, VTOT15 As Double
Public Sub StockareaReport(F_Date As String, T_Date As String, Catcd As String)
Dim RS1 As Recordset
Dim rs2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim RPTV As REPORT.ReportView
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
Dim cnn As Connection
Set cnn = New Connection

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
SR = Catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
        Set RPTV = New REPORT.ReportView
        a = FreeFile
        Close #a
        Open "C:\sv.TXT" For Output As #a
        pg1 = 1
        co = 0
        
        tot1 = 0
        tot2 = 0
        tot3 = 0
        tot4 = 0
        tot5 = 0
        tot6 = 0
        tot7 = 0
        tot8 = 0
        tot9 = 0
        tot10 = 0
        tot11 = 0
        tot12 = 0
        tot13 = 0
        tot14 = 0
        tot15 = 0
        tot16 = 0
        
        vtot1 = 0
        vtot2 = 0
        vtot3 = 0
        VTOT4 = 0
        VTOT5 = 0
        VTOT6 = 0
        VTOT7 = 0
        VTOT8 = 0
        VTOT9 = 0
        VTOT10 = 0
        VTOT11 = 0
        VTOT12 = 0
        VTOT13 = 0
        VTOT14 = 0
        VTOT15 = 0
        VTOT = 0
        
        Print #a, Chr(15)
        co = co + 1
'        Call PartyHeaderarea(pg1, co, F_Date, T_Date, Catcd)


 Set RS1 = New Recordset
If Trim(SR) = "C" Then
            RS1.Open "select a.areacd,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select areacd, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            "b.catcd = '" & SR & "'  and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0 group by b.areacd,b.bblflg " & _
            "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.areacd,b.bblflg) a  group by areacd" & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.areacd,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.areacd,b.opflg,b.bblflg))a group by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic
                        
Else

RS1.Open "select a.areacd,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select areacd, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            "b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0 group by b.areacd,b.bblflg " & _
            "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.areacd,b.bblflg) a  group by areacd" & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.areacd,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.areacd,b.opflg,b.bblflg))a group by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic





'            RS1.Open "select a.areacd,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
'            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
'            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
'            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'            "from ((select b.areacd " & _
'            "case when b.opflg = 'Y' and b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, " & _
'            "case when b.opflg = 'Y' and b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras, " & _
'            "case when b.opflg = 'Y' then sum(isnull(b.netwt,0)) else 0 end as opkgs,0 as recbales,0 as recboras,0 as reckgs, " & _
'            "0 as issbales,0 as issboras,0 as isskgs from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & sr & "' and b.lotdt < '" & Format(T_Date, "yyyy-mm-dd") & "' group by b.areacd,b.opflg,b.bblflg " & _
'            "Union All " & _
'            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.opflg = 'N' and b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
'            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'            " sum(isnull(b.netwt,0))  as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
'            "from rm_lot b " & _
'            " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & sr & "' And b.lotdt < '" & Format(T_Date, "yyyy-mm-dd") & "' " & _
'            " group by b.areacd,b.opflg,b.bblflg " & _
'            " Union All " & _
'            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(baleno) else 0 end as issboras,sum(ISSKGS) As isskgs from " & _
'            "rm_lot b,rm_issb c where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & sr & "' and docdt between '" & Format(T_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' group by b.areacd,b.opflg,b.bblflg))a group by a.areacd order by areacd ", cnn, adOpenStatic, adLockBatchOptimistic
End If
            
            

        If RS1.EOF Then
            MsgBox "No Records Found", vbInformation, head
            Close #a
            Exit Sub
        End If
        
        RS1.MoveFirst
            
            Do While Not RS1.EOF
            If SR <> "A" Then
            Set RSV = New Recordset
            RSV.Open "select a.areacd,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                     "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                     "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                     "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                     "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                     "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                     " , sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                     " ((select areacd,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(opvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                     "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     "b.catcd = '" & SR & "'  and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.areacd='" & RS1("areacd") & "' group by b.areacd,b.bblflg ,ratekg " & _
                     "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                     "and b.areacd='" & RS1("areacd") & "'AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0 group by b.areacd,b.bblflg,b.ratekg) a  group by areacd" & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
                     "from rm_lot b " & _
                     " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                     "and  b.areacd='" & RS1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,ratekg " & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                     "rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & RS1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,b.ratekg))a group by a.areacd order by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic
            Else
            
            Set RSV = New Recordset
            RSV.Open "select a.areacd,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                     "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                     "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                     "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                     "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                     "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                     " , sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                     " ((select areacd,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(opvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                     "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     "b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.areacd='" & RS1("areacd") & "' group by b.areacd,b.bblflg ,ratekg " & _
                     "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                     "and b.areacd='" & RS1("areacd") & "'AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0 group by b.areacd,b.bblflg,b.ratekg) a  group by areacd" & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
                     "from rm_lot b " & _
                     " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                     "and  b.areacd='" & RS1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,ratekg " & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                     "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & RS1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,b.ratekg))a group by a.areacd order by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic
                     
                     
           End If
           Set rsv2 = New Recordset
           'select a.areaname from rm_area a,rm_lot b where a.areacode=b.areacd and b.areacd='0004'
           rsv2.Open "select distinct a.areaname from rm_area a,rm_lot b where a.areacode=b.areacd and a.areacode='" & RSV("areacd") & "' ", cnn, adOpenStatic
                'Print #A,
                areaname = rsv2![areaname]
                'co = co + 1
                If rsv2.RecordCount > 0 Then
                  rsv2.MoveFirst
                If RSV.RecordCount > 0 Then
                    RSV.MoveFirst
                       'Do While Not rsv2.EOF
                    Do While Not RSV.EOF
                        
                        VTOT = VTOT + RSV("opbales")
                        vtot1 = vtot1 + RSV("opboras")
                        vtot2 = vtot2 + RSV("opkgs")
                        vtot3 = vtot3 + RSV("recbales")
                        VTOT4 = VTOT4 + RSV("recboras")
                        VTOT5 = VTOT5 + RSV("reckgs")
                        VTOT6 = VTOT6 + RSV("issbales")
                        VTOT7 = VTOT7 + RSV("issboras")
                        VTOT8 = VTOT8 + RSV("isskgs")
                        
                        If (RSV("CLOBALES") > 0 Or RSV("CLOBORAS") > 0) And RSV("CLOKGS") > 0 And RSV("CLOSEVALUE") > 0 Then
                            VTOT9 = VTOT9 + RSV("clobales")
                            VTOT10 = VTOT10 + RSV("cloboras")
                            VTOT11 = VTOT11 + RSV("clokgs")
                            VTOT15 = VTOT15 + RSV("closevalue")
                        Else
                            VTOT9 = VTOT9 + 0
                            VTOT10 = VTOT10 + 0
                            VTOT11 = VTOT11 + 0
                            VTOT15 = VTOT15 + 0
                        End If
                                                                        
                        VTOT12 = VTOT12 + RSV("opvalue")
                        VTOT13 = VTOT13 + RSV("recvalue")
                        VTOT14 = VTOT14 + RSV("issvalue")
                        
                        RSV.MoveNext
                
                    Loop
                
                Else
                    GoTo 30
                End If
                End If
                
             If co >= pagelen Then
                    Print #a, Space(5) + String(216, "-");
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
'                    Call PartyHeaderarea(pg1, co, F_Date, T_Date, Catcd)
                End If
           
                
                Set opf = New Recordset
                If SR = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
                If SR <> "A" Then
                opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE LOTYEAR='" & Year(yfdate) & "' AND b.catcd = '" & SR1 & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", DB
                Else
                opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE LOTYEAR='" & Year(yfdate) & "' AND  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", DB
                End If
                
                
                'Print #A, Space(5) + Padr((CStr(VarName)), 21, " ") & Padl(INF(rs1(1), 0), 9, " ") + Padl(INF(rs1(2), 0), 7, " ") + Padl(INF(rs1(3), 3), 15, " ") + Padl(INF(rs1(3) * opf(0), 2), 17, " ") + Padl(INF(rs1(4), 0), 10, " ") + Padl(INF(rs1(5), 0), 9, " ") + Padl(INF(rs1(6), 3), 14, " ") + Padl(INF(rs1(6) * opf(0), 2), 16, " ") + Padl(INF(rs1(7), 0), 10, " ") + Padl(INF(rs1(8), 0), 9, " ") + Padl(INF(rs1(9), 3), 14, " ") + Padl(INF(rs1(9) * opf(0), 2), 16, " ") + Padl(INF(rs1(10), 0), 10, " ") + Padl(INF(rs1(11), 0), 9, " ") + Padl(INF(rs1(12), 3), 14, " ") + Padl(INF(rs1(12) * opf(0), 2), 16, " ")
                 ''''Print #a, Space(5); Padr(rsv2("areaname"), 21, " ") & Padl(INF(VTOT, 0), 9, " ") + Padl(INF(vtot1, 0), 7, " ") + Padl(INF(vtot2, 3), 15, " ") + Padl(INF(VTOT12, 2), 17, " ") + Padl(INF(vtot3, 0), 10, " ") + Padl(INF(VTOT4, 0), 9, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 10, " ") + Padl(INF(VTOT7, 0), 9, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(VTOT9, 0), 10, " ") + Padl(INF(VTOT10, 0), 9, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
                 If val(VTOT9) > 0 Then
                   Print #a, Space(5); Padr(rsv2("areaname"), 21, " ") & Padl(INF(VTOT, 0), 9, " ") + Padl(INF(vtot1, 0), 7, " ") + Padl(INF(vtot2, 3), 15, " ") + Padl(INF(VTOT12, 2), 17, " ") + Padl(INF(vtot3, 0), 10, " ") + Padl(INF(VTOT4, 0), 9, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 10, " ") + Padl(INF(VTOT7, 0), 9, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(VTOT9, 0), 10, " ") + Padl(INF(VTOT10, 0), 9, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
                 End If
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
                tot16 = val(tot16 + VTOT15)   'Closing value
               ' co = co + 1
                If co >= pagelen Then
                    Print #a, Space(5) + String(216, "-");
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
'                    Call PartyHeaderarea(pg1, co, F_Date, T_Date, Catcd)
                End If
                vtot1 = 0
                vtot2 = 0
                vtot3 = 0
                VTOT4 = 0
                VTOT5 = 0
                VTOT6 = 0
                VTOT7 = 0
                VTOT8 = 0
                VTOT9 = 0
                VTOT10 = 0
                VTOT11 = 0
                VTOT12 = 0
                VTOT13 = 0
                VTOT14 = 0
                VTOT15 = 0
                VTOT = 0
30:
            RS1.MoveNext
        Loop
        Print #a,
        Print #a, Space(5) + String(216, "-")
        Print #a, Space(5) + "** Total **" + " " + Padl(INF(tot1, 0), 18, " ") + Padl(INF(tot2, 0), 6, " ") + Padl(INF(tot3, 3), 16, " ") + Padl(INF(tot13, 2), 17, " ") + Padl(INF(tot4, 0), 10, " ") + Padl(INF(tot5, 0), 9, " ") + Padl(INF(tot6, 3), 14, " ") + Padl(INF(tot14, 2), 16, " ") + Padl(INF(tot7, 0), 10, " ") + Padl(INF(tot8, 0), 9, " ") + Padl(INF(tot9, 3), 14, " ") + Padl(INF(tot15, 2), 16, " ") + Padl(INF(tot10, 0), 10, " ") + Padl(INF(tot11, 0), 9, " ") + Padl(INF(tot12, 3), 14, " ") + Padl(INF(tot16, 2), 16, " ")
        Print #a, Space(5) + String(216, "-")
        Print #a, Chr(12)
        Print #a, Chr(18)
        Close #a
        a = FreeFile
        Open "c:\sv.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "c:"
        Print #a, "cd\"
        Print #a, "type sv.txt>prn"
        Close #a
        RPTV.txtfile = "c:\sv.txt"
        RPTV.Batfile = "c:\sv.bat"
End Sub

Public Sub StockVarietyReport(F_Date As String, T_Date As String, Catcd As String)
Dim RS1 As Recordset
Dim rs2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim RPTV As REPORT.ReportView
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
Dim cnn As Connection
Set cnn = New Connection

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
SR = Catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
        Set RPTV = New REPORT.ReportView
        a = FreeFile
        Close #a
        Close
        Open "d:\sv.TXT" For Output As #a
        pg1 = 1
        co = 0
        
        tot1 = 0
        tot2 = 0
        tot3 = 0
        tot4 = 0
        tot5 = 0
        tot6 = 0
        tot7 = 0
        tot8 = 0
        tot9 = 0
        tot10 = 0
        tot11 = 0
        tot12 = 0
        tot13 = 0
        tot14 = 0
        tot15 = 0
        tot16 = 0
        
        vtot1 = 0
        vtot2 = 0
        vtot3 = 0
        VTOT4 = 0
        VTOT5 = 0
        VTOT6 = 0
        VTOT7 = 0
        VTOT8 = 0
        VTOT9 = 0
        VTOT10 = 0
        VTOT11 = 0
        VTOT12 = 0
        VTOT13 = 0
        VTOT14 = 0
        VTOT15 = 0
        VTOT = 0
        
        Print #a, Chr(15)
        co = co + 1
        Call PartyHeader(pg1, co, F_Date, T_Date, Catcd)


 Set RS1 = New Recordset
If Trim(SR) <> "A" Then
            RS1.Open "select a.varcode,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  AND " & _
            "b.catcd = '" & SR & "'  and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and opflg='Y' group by b.varcode,b.bblflg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0  and opflg='Y' group by b.varcode,b.bblflg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.opflg,b.bblflg))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic
                        
Else
            RS1.Open "select a.varcode,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select b.varcode, " & _
            "case when b.opflg = 'Y' and b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, " & _
            "case when b.opflg = 'Y' and b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras, " & _
            "case when b.opflg = 'Y' then sum(isnull(b.netwt,0)) else 0 end as opkgs,0 as recbales,0 as recboras,0 as reckgs, " & _
            "0 as issbales,0 as issboras,0 as isskgs from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and b.lotdt < '" & Format(T_Date, "yyyy-mm-dd") & "'  AND opflg='Y' group by b.varcode,b.opflg,b.bblflg " & _
            "Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.opflg = 'N' and b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            " sum(isnull(b.netwt,0))  as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  And b.lotdt < '" & Format(T_Date, "yyyy-mm-dd") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(baleno) else 0 end as issboras,sum(ISSKGS) As isskgs from " & _
            "rm_lot b,rm_issb c where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(T_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic
End If
            
            

        If RS1.EOF Then
            MsgBox "No Records Found", vbInformation, head
            Close #a
            Exit Sub
        End If
        
        RS1.MoveFirst
            
            Do While Not RS1.EOF
            
            If Trim(SR) <> "A" Then
            
            Set RSV = New Recordset
            RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                     "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                     "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                     "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                     "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                     "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                     ", sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                     " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,lotno,sum(recvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                     "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,sum(isnull(b.netwt,0)) *round((isnull(b.ratecy,0)/355.616),2) as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     "b.catcd = '" & SR & "'  and opflg='Y' and  b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & RS1("varcode") & "' group by b.varcode,b.bblflg ,b.lotno,b.ratecy " & _
                     "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))),3)*round((isnull(b.ratecy,0)/355.616),2) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & RS1("varcode") & "'" & _
                     "AND BALES >0 AND opflg='Y' group by b.varcode,b.bblflg,b.lotno,b.ratecy) a  group by varcode,lotno" & _
                     " Union All " & _
                     "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,(case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end )*round((isnull(b.ratecy,0)/355.616),2) as recvalue,0 as issvalue " & _
                     "from rm_lot b " & _
                     " where opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & RS1("varcode") & "' " & _
                     " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.ratecy " & _
                     " Union All " & _
                     "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))),3)*round((isnull(b.ratecy,0)/355.616),2)  as issvalue from " & _
                     "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.varcode='" & RS1("varcode") & "' group by b.varcode,b.opflg,b.bblflg,b.lotno,b.ratecy))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic
            

            Else
            
            Set RSV = New Recordset
            'RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                     "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                     "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                     "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                     "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                     "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                     ", sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                     " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,lotno,sum(recvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                     "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,sum(isnull(b.netwt,0)) *round((isnull(b.ratecy,0)/355.616),2) as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(F_DATE, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     " b.lotdt < '" & Format(F_DATE, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & RS1("varcode") & "' group by b.varcode,b.bblflg ,b.lotno,b.ratecy " & _
                     "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))),3)*round((isnull(b.ratecy,0)/355.616),2) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(F_DATE, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & Format(F_DATE, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & RS1("varcode") & "'" & _
                     "AND BALES >0 group by b.varcode,b.bblflg,b.lotno,b.ratecy) a  group by varcode,lotno" & _
                     " Union All " & _
                     "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,(case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end )*round((isnull(b.ratecy,0)/355.616),2) as recvalue,0 as issvalue " & _
                     "from rm_lot b " & _
                     " where opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and b.lotdt between '" & Format(F_DATE, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & RS1("varcode") & "' " & _
                     " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.ratecy " & _
                     " Union All " & _
                     "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))),3)*round((isnull(b.ratecy,0)/355.616),2)  as issvalue from " & _
                     "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_DATE, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.varcode='" & RS1("varcode") & "' group by b.varcode,b.opflg,b.bblflg,b.lotno,b.ratecy))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic
            
            'RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                     "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                     "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                     "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                     "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                     "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                     ", sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                     " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,lotno,sum(recvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                     "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,sum(isnull(b.netwt,0)) *round((isnull(b.ratecy,0)/355.616),2) as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(F_DATE, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     " b.lotdt < '" & Format(F_DATE, "YYYY/MM/DD") & "' AND BALES >0  and b.varcode='" & RS1("varcode") & "' group by b.varcode,b.bblflg ,b.lotno,b.ratecy " & _
                     "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))),3)*round((isnull(b.ratecy,0)/355.616),2) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(F_DATE, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & Format(F_DATE, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & RS1("varcode") & "'" & _
                     "AND BALES >0 group by b.varcode,b.bblflg,b.lotno,b.ratecy) a  group by varcode,lotno" & _
                     " Union All " & _
                     "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,(case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end )*round((isnull(b.ratecy,0)/355.616),2) as recvalue,0 as issvalue " & _
                     "from rm_lot b " & _
                     " where opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and b.lotdt between '" & Format(F_DATE, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & RS1("varcode") & "' " & _
                     " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.ratecy " & _
                     " Union All " & _
                     "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(e.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(e.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))),3)*round((isnull(b.ratecy,0)/355.616),2)  as issvalue from " & _
                     "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_DATE, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and e.isqty >0 and b.varcode='" & RS1("varcode") & "' group by b.varcode,b.opflg,b.bblflg,b.lotno,b.ratecy))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic
            
RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                     "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                     "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                     "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                     "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                     "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                     ", sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                     " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,lotno,sum(recvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                     " select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,sum(isnull(b.netwt,0)) *round((isnull(b.ratecy,0)/355.616),2) as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     " b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0   AND opflg='Y' and b.varcode='" & RS1("varcode") & "' group by b.varcode,b.bblflg ,b.lotno,b.ratecy " & _
                     " union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))),3) as isskgs,b.lotno,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))),3)*round((isnull(b.ratecy,0)/355.616),2) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & RS1("varcode") & "'" & _
                     " AND BALES >0 AND opflg='Y' group by b.varcode,b.bblflg,b.lotno,b.ratecy) a  group by varcode,lotno" & _
                     " Union All " & _
                     " select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     " case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,b.lotno,0 as opvalue,(case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end )*round((isnull(b.ratecy,0)/355.616),2) as recvalue,0 as issvalue " & _
                     " from rm_lot b " & _
                     " where opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.varcode='" & RS1("varcode") & "' " & _
                     " group by b.varcode,b.opflg,b.bblflg,b.lotno,b.ratecy " & _
                     " Union All " & _
                     " select varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,sum(kgs),sum(bales) from (SELECT varcode,COUNT(BALENO) AS BALES,0 AS KGS FROM( SELECT c.varcode,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE B.isqty>0 AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '2006-04-01' and '2006-07-14' and a.docdt Between '2006-04-01' and '2007-03-31'AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.varcode='FLAX-B'   GROUP BY c.varcode,A.BALENO)X GROUP BY varcode " & _
                     " UNION SELECT c.varcode,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '2006-04-01' and '2006-07-14' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.varcode='FLAX-B'  and a.docdt Between '2006-04-01' and '2007-03-31' GROUP BY c.varcode )Y GROUP BY varcode))a group by a.varcode ", cnn, adOpenStatic, adLockBatchOptimistic
            



            End If
            
                Print #a,
                co = co + 1
                If RSV.RecordCount > 0 Then
                    RSV.MoveFirst
                    Do While Not RSV.EOF
                        
                        VTOT = VTOT + RSV("opbales")
                        vtot1 = vtot1 + RSV("opboras")
                        vtot2 = vtot2 + RSV("opkgs")
                        vtot3 = vtot3 + RSV("recbales")
                        VTOT4 = VTOT4 + RSV("recboras")
                        VTOT5 = VTOT5 + RSV("reckgs")
                        VTOT6 = VTOT6 + RSV("issbales")
                        VTOT7 = VTOT7 + RSV("issboras")
                        VTOT8 = VTOT8 + RSV("isskgs")
                        
                       ' If (RSV("CLOBALES") > 0 Or RSV("CLOBORAS") > 0) And RSV("CLOKGS") > 0 And RSV("CLOSEVALUE") > 0 Then
                            VTOT9 = VTOT9 + RSV("clobales")
                            VTOT10 = VTOT10 + RSV("cloboras")
                            VTOT11 = VTOT11 + RSV("clokgs")
                            VTOT15 = VTOT15 + RSV("closevalue")
                       ' Else
                       '     VTOT9 = VTOT9 + 0
                       '     VTOT10 = VTOT10 + 0
                        '    VTOT11 = VTOT11 + 0
                        '    VTOT15 = VTOT15 + 0
                       ' End If
                                                                        
                        VTOT12 = VTOT12 + RSV("opvalue")
                        VTOT13 = VTOT13 + RSV("recvalue")
                        VTOT14 = VTOT14 + RSV("issvalue")
                        
                        RSV.MoveNext
                    Loop
                
                Else
                    GoTo 30
                End If
                
             If co >= pagelen Then
                    Print #a, Space(5) + String(216, "-");
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call PartyHeader(pg1, co, F_Date, T_Date, Catcd)
                End If
           
                Set Namers = New Recordset
                Namers.Open "Select varname from rm_var where varcode='" & RS1("VARCODE") & "'", DB, adOpenStatic
                If Not Namers.EOF Then VarName = Namers(0)
                
                Set opf = New Recordset
                If SR = "A" Then
                
                opf.Open "SELECT round((AVG(isnull(ratecy,0))/355.616),2) as raekg FROM RM_LOT B WHERE  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", DB
                Else
                opf.Open "SELECT round((AVG(isnull(ratecy,0))/355.616),2) as raekg FROM RM_LOT B WHERE  b.catcd='" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", DB
                End If
                If VTOT < 0 Then VTOT = 0
                If VTOT10 < 0 Then VTOT10 = 0
                If VTOT9 < 0 Then VTOT9 = 0
                'Print #A, Space(5) + Padr((CStr(VarName)), 21, " ") & Padl(INF(rs1(1), 0), 9, " ") + Padl(INF(rs1(2), 0), 7, " ") + Padl(INF(rs1(3), 3), 15, " ") + Padl(INF(rs1(3) * opf(0), 2), 17, " ") + Padl(INF(rs1(4), 0), 10, " ") + Padl(INF(rs1(5), 0), 9, " ") + Padl(INF(rs1(6), 3), 14, " ") + Padl(INF(rs1(6) * opf(0), 2), 16, " ") + Padl(INF(rs1(7), 0), 10, " ") + Padl(INF(rs1(8), 0), 9, " ") + Padl(INF(rs1(9), 3), 14, " ") + Padl(INF(rs1(9) * opf(0), 2), 16, " ") + Padl(INF(rs1(10), 0), 10, " ") + Padl(INF(rs1(11), 0), 9, " ") + Padl(INF(rs1(12), 3), 14, " ") + Padl(INF(rs1(12) * opf(0), 2), 16, " ")
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
                co = co + 1
                If co >= pagelen Then
                    Print #a, Space(5) + String(216, "-");
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call PartyHeader(pg1, co, F_Date, T_Date, Catcd)
                End If
                vtot1 = 0
                vtot2 = 0
                vtot3 = 0
                VTOT4 = 0
                VTOT5 = 0
                VTOT6 = 0
                VTOT7 = 0
                VTOT8 = 0
                VTOT9 = 0
                VTOT10 = 0
                VTOT11 = 0
                VTOT12 = 0
                VTOT13 = 0
                VTOT14 = 0
                VTOT15 = 0
                VTOT = 0
30:
            RS1.MoveNext
        Loop
        Print #a,
        Print #a, Space(5) + String(216, "-")
        Print #a, Space(5) + "** Total **" + " " + Padl(INF(tot1, 0), 18, " ") + Padl(INF(tot2, 0), 6, " ") + Padl(INF(tot3, 3), 16, " ") + Padl(INF(tot13, 2), 17, " ") + Padl(INF(tot4, 0), 10, " ") + Padl(INF(tot5, 0), 9, " ") + Padl(INF(tot6, 3), 14, " ") + Padl(INF(tot14, 2), 16, " ") + Padl(INF(tot7, 0), 10, " ") + Padl(INF(tot8, 0), 9, " ") + Padl(INF(tot9, 3), 14, " ") + Padl(INF(tot15, 2), 16, " ") + Padl(INF(tot10, 0), 10, " ") + Padl(INF(tot11, 0), 9, " ") + Padl(INF(tot12, 3), 14, " ") + Padl(INF(tot16, 2), 16, " ")
        Print #a, Space(5) + String(216, "-")
        Print #a, Chr(12)
        Print #a, Chr(18)
        Close #a
        a = FreeFile
        Open "d:\sv.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "d:"
        Print #a, "cd\"
        Print #a, "type sv.txt>prn"
        Close #a
        RPTV.txtfile = "d:\sv.txt"
        RPTV.Batfile = "d:\sv.bat"
End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, u As String, v As String, w As String)
          Print #a, Chr(18)
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          'Print #A, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(8) & Padr(w, 40, " ") & Space(5) + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(8) & Padr(w, 40, " ") & Space(5) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(216, "-")
          Print #a, Space(5) + "Variety                  <-------------Opening Balance-------------->     <----------------Receipts------------------>     <------------------Issues------------------>     <--------------Closing Balance------------->"
          Print #a, Space(16) + "              Bales    Boras       Weight            Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value"
          Print #a, Space(5) + String(216, "-")
                   co = co + 9
End Sub

