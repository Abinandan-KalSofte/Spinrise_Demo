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
Dim Co As Integer
Dim RSV As New Recordset
Dim VTOT As Double, vtot1 As Double, vtot2 As Double, vtot3 As Double, VTOT4 As Double
Dim VTOT5 As Double, VTOT6 As Double, VTOT7 As Double, VTOT8 As Double, VTOT9 As Double
Dim VTOT10 As Double, VTOT11 As Double, VTOT12 As Double, VTOT13 As Double, VTOT14 As Double, VTOT15 As Double
Dim rp As New repform1
Public Sub StockareaReport(F_Date As String, T_Date As String, catcd As String)
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
Dim cnn As Connection
Set cnn = New Connection

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
SR = catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
        Set RPTV = New Report.ReportView
        a = FreeFile
        Close #a
        'Open "C:\sv.TXT" For Output As #a
        Open KALFOLDERDATA & "\sv.TXT" For Output As #a
        pg1 = 1
        Co = 0
        
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
        Co = Co + 1
        Call PartyHeaderarea(pg1, Co, F_Date, T_Date, catcd)


 Set rs1 = New Recordset
If Trim(SR) = "C" Then
            rs1.Open "select a.areacd,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select areacd, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            "b.catcd = '" & SR & "'  and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and BALES >0 group by b.areacd,b.bblflg " & _
            "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.areacd,b.bblflg) a  group by areacd" & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.areacd,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.areacd,b.opflg,b.bblflg))a group by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic
                        
Else

rs1.Open "select a.areacd,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select areacd, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            "b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0 group by b.areacd,b.bblflg " & _
            "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.areacd,b.bblflg) a  group by areacd" & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.areacd,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.areacd,b.opflg,b.bblflg))a group by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic





End If
            
            

        If rs1.EOF Then
            MsgBox "No Records Found", vbInformation, head
            Close #a
            Exit Sub
        End If
        
        rs1.MoveFirst
            
            Do While Not rs1.EOF
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
                     "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     "b.catcd = '" & SR & "'  and b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.areacd='" & rs1("areacd") & "' group by b.areacd,b.bblflg ,ratekg " & _
                     "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                     "and b.areacd='" & rs1("areacd") & "'AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0 group by b.areacd,b.bblflg,b.ratekg) a  group by areacd" & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
                     "from rm_lot b " & _
                     " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                     "and  b.areacd='" & rs1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,ratekg " & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                     "rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & rs1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,b.ratekg))a group by a.areacd order by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic
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
                     "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     "b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.areacd='" & rs1("areacd") & "' group by b.areacd,b.bblflg ,ratekg " & _
                     "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                     "and b.areacd='" & rs1("areacd") & "'AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and BALES >0 group by b.areacd,b.bblflg,b.ratekg) a  group by areacd" & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
                     "from rm_lot b " & _
                     " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                     "and  b.areacd='" & rs1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,ratekg " & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                     "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & rs1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,b.ratekg))a group by a.areacd order by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic
                     
                     
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
                
             If Co >= PageLen Then
                    Print #a, Space(5) + String(216, "-");
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call PartyHeaderarea(pg1, Co, F_Date, T_Date, catcd)
                End If
           
                
                Set opf = New Recordset
                If SR = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
'                If sr <> "A" Then
'                opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE LOTYEAR='" & Year(yfdate) & "' AND b.catcd = '" & SR1 & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", DB
'                Else
'                opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE LOTYEAR='" & Year(yfdate) & "' AND  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", DB
'                End If
                
                
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
                If Co >= PageLen Then
                    Print #a, Space(5) + String(216, "-");
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call PartyHeaderarea(pg1, Co, F_Date, T_Date, catcd)
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
            rs1.MoveNext
        Loop
        Print #a,
        Print #a, Space(5) + String(216, "-")
        Print #a, Space(5) + "** Total **" + " " + Padl(INF(tot1, 0), 18, " ") + Padl(INF(tot2, 0), 6, " ") + Padl(INF(tot3, 3), 16, " ") + Padl(INF(tot13, 2), 17, " ") + Padl(INF(tot4, 0), 10, " ") + Padl(INF(tot5, 0), 9, " ") + Padl(INF(tot6, 3), 14, " ") + Padl(INF(tot14, 2), 16, " ") + Padl(INF(tot7, 0), 10, " ") + Padl(INF(tot8, 0), 9, " ") + Padl(INF(tot9, 3), 14, " ") + Padl(INF(tot15, 2), 16, " ") + Padl(INF(tot10, 0), 10, " ") + Padl(INF(tot11, 0), 9, " ") + Padl(INF(tot12, 3), 14, " ") + Padl(INF(tot16, 2), 16, " ")
        Print #a, Space(5) + String(216, "-")
        
        'nithya
    'rejection
    
            Set opf = New Recordset
            opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg,Bales,Rejdt,lotno,lotdt,Netwt,netwt*cast(b.ratekg as decimal (12,4)) as Value,Areacd,areaname FROM RM_LOT B,rm_area a WHERE a.areacode=b.areacd and LOTYEAR='" & Year(yfdate) & "'  and rejflg='Y' and divcode='" & Divcode & "' and rejdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'", db, adOpenStatic
                If opf.RecordCount > 0 Then
                    Print #a, Space(5) & "Rejection Details"
                    Print #a, Space(5) + String(68, "-")
                    Print #a, Space(5) & "Area Name           Lotno   Lotdt    Rejected Bales     Rejected Date"
                    Print #a, Space(5) + String(68, "-")
                    cbales = 0
                    ckgs = 0
                    cval = 0
                    
                    Do While opf.EOF = False
                        Print #a, Space(5) & Padr(opf("areaname"), 18, " ") & Space(2) & Padr(opf("lotno"), 7, " ") & Space(1) & Padr(Format(opf("lotdt"), "dd-mm-yy"), 8, " ") & Space(2) & Padl(INF(opf("bales"), 0), 13, " ") & Space(5) & Padl(Format(opf("rejdt"), "dd-mm-yy"), 8, " ")
                        cbales = cbales + opf("bales")
                        ckgs = ckgs + opf("netwt")
                        cval = cval + opf("value")
                        opf.MoveNext
                    Loop
                    cbales = tot10 - cbales
                    ckgs = tot12 - ckgs
                    cval = tot16 - cval
                    Print #a, Space(5) + String(68, "-")
                    Print #a,
                    Print #a, Space(5) & "Closing Bales   Closing Weight    Closing Value   "
                    Print #a, Space(5) + String(50, "-")
                    Print #a, Space(5) & Padl(INF(cbales, 0), 13, " ") & Space(2) & Padl(INF(ckgs, 3), 15, " ") & Space(2) & Padl(INF(cval, 3), 15, " ")
                    Print #a, Space(5) + String(50, "-")
               End If
    
        Print #a, Chr(12)
        Print #a, Chr(18)
         Call footermod(CInt(a), rp.UserFooter1.SelectedStr, 85)
        Close #a
        a = FreeFile
'        Open "c:\sv.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type sv.txt>prn"
'        Close #a
'        RPTV.txtfile = "c:\sv.txt"
'        RPTV.Batfile = "c:\sv.bat"
Call KALBATPROCESS("sv")
End Sub
Public Sub PartyHeaderarea(pg1 As Integer, Co As Integer, U As String, V As String, W As String)
          Print #a, Chr(18)
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a, Chr(15)
          SR = CStr(pdate) + Space(2)
          'Print #A, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(8) & Padr(w, 40, " ") & Space(5) + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + "Stationwise Stock Statement" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy") & Space(1) & Space(135) & Space(6) + Format(SR, "dd/mm/yy") + Space(4) + "Pg. :" + Space(1) + Padl(pg1, 3, " ") '+ Chr(15)
          Print #a, Space(5) + String(216, "-")
          Print #a, Space(5) + "Station                  <-------------Opening Balance-------------->     <----------------Receipts------------------>     <------------------Issues------------------>     <--------------Closing Balance------------->"
          Print #a, Space(16) + "              Bales                Weight            Value     Bales                 Weight           Value     Bales                 Weight           Value     Bales                 Weight           Value"
          'Print #A, Space(16) + "              Bales    Boras       Weight            Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value"
          Print #a, Space(5) + String(216, "-")
          Co = Co + 9
End Sub


Public Sub StockVarietyReport(F_Date As String, T_Date As String, catcd As String)
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
Dim cnn As Connection
Set cnn = New Connection

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
SR = catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
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
        


Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)

Set rs1 = New Recordset
rs1.Open "select distinct a.varcode from rm_var a,rm_lot b where LOTYEAR='" & Year(yfdate) & "' AND a.varcode=b.varcode", cnn
            
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
  If Trim(SR) <> "A" Then
   Set RSV = New Recordset
   
   RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,b.bblflg ,b.ratekg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and b.varcode='" & rs1("varcode") & "' and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.varcode,b.bblflg,b.ratekg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.varcode='" & rs1("varcode") & "' group by b.varcode,b.opflg,b.bblflg,b.ratekg))a group by a.varcode", cnn, adOpenStatic, adLockBatchOptimistic
            '''''''''' HAVING ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0)))>0 AND SUM(OPBALES)>=0
   Else
   Set RSV = New Recordset
   RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,b.bblflg ,b.ratekg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and b.varcode='" & rs1("varcode") & "' and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            "group by b.varcode,b.bblflg,b.ratekg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,b.opflg,b.bblflg,b.ratekg))a group by a.varcode", cnn, adOpenStatic, adLockBatchOptimistic
            '''''''''' HAVING ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0)))>0 AND SUM(OPBALES)>=0
      
   End If
   Print #a,
   Co = Co + 1
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
                        
         If (RSV("CLOBALES") >= 0 Or RSV("CLOBORAS") >= 0) And RSV("CLOKGS") >= 0 And RSV("CLOSEVALUE") >= 0 Then
            VTOT9 = VTOT9 + RSV("clobales")
            VTOT10 = VTOT10 + RSV("cloboras")
            VTOT11 = VTOT11 + RSV("clokgs")
            VTOT15 = VTOT15 + IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))
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
                
   If Co >= PageLen Then
      Print #a, Space(5) + String(216, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)
   End If
           
   Set Namers = New Recordset
   Namers.Open "Select varname from rm_var where varcode='" & rs1("VARCODE") & "'", db, adOpenStatic
   If Not Namers.EOF Then VarName = Namers(0)
                
   Set opf = New Recordset
   If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
'   If Trim(sr) = "A" Then
'   opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE LOTYEAR='" & Year(yfdate) & "' AND b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'", DB
'   Else
'   opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE LOTYEAR='" & Year(yfdate) & "' AND b.catcd = '" & SR1 & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'", DB
'   End If
  ' If Val(VTOT) > 0 Then
   'Print #A, Space(5) + Padr((CStr(VarName)), 21, " ") & Padl(INF(rs1(1), 0), 9, " ") + Padl(INF(rs1(2), 0), 7, " ") + Padl(INF(rs1(3), 3), 15, " ") + Padl(INF(rs1(3) * opf(0), 2), 17, " ") + Padl(INF(rs1(4), 0), 10, " ") + Padl(INF(rs1(5), 0), 9, " ") + Padl(INF(rs1(6), 3), 14, " ") + Padl(INF(rs1(6) * opf(0), 2), 16, " ") + Padl(INF(rs1(7), 0), 10, " ") + Padl(INF(rs1(8), 0), 9, " ") + Padl(INF(rs1(9), 3), 14, " ") + Padl(INF(rs1(9) * opf(0), 2), 16, " ") + Padl(INF(rs1(10), 0), 10, " ") + Padl(INF(rs1(11), 0), 9, " ") + Padl(INF(rs1(12), 3), 14, " ") + Padl(INF(rs1(12) * opf(0), 2), 16, " ")
   Print #a, Space(5) + Padr((CStr(VarName)), 21, " ") & Padl(INF(VTOT, 0), 9, " ") + Padl(INF(vtot1, 0), 7, " ") + Padl(INF(vtot2, 3), 15, " ") + Padl(INF(VTOT12, 2), 17, " ") + Padl(INF(vtot3, 0), 10, " ") + Padl(INF(VTOT4, 0), 9, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 10, " ") + Padl(INF(VTOT7, 0), 9, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(VTOT9, 0), 10, " ") + Padl(INF(VTOT10, 0), 9, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
  ' End If
   
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
      Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)
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
'nithya
'Rejection
            Set opf = New Recordset
            opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg,Bales,Rejdt,Varcode,lotno,lotdt,Netwt,netwt*cast(b.ratekg as decimal (12,4)) as Value FROM RM_LOT B WHERE LOTYEAR='" & Year(yfdate) & "'  and rejflg='Y' and divcode='" & Divcode & "' and rejdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'", db, adOpenStatic
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

Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String)
Print #a, Chr(18)
Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
Print #a, Chr(15)
SR = Format(pdate, "dd/mm/yy") + Space(2)
'Print #A, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(8) & Padr(w, 40, " ") & Space(5) + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
Print #a, Space(5) + "Stock Statement Varietywise" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy") & Space(8) & Space(136) + SR + "Pg.:" + Space(1) + Padl(CStr(pg1), 3, " ") + Chr(15)
Print #a, Space(5) + String(216, "-")
Print #a, Space(5) + "Variety                  <-------------Opening Balance-------------->     <----------------Receipts------------------>     <------------------Issues------------------>     <--------------Closing Balance------------->"
'Print #a, Space(16) + "              Bales    Boras       Weight            Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value"
Print #a, Space(16) + "              Bales                Weight            Value     Bales                 Weight           Value     Bales                 Weight           Value     Bales                 Weight           Value"
Print #a, Space(5) + String(216, "-")
Co = Co + 9
End Sub




Public Sub StockRec_Consumption(F_Date As String, catcd As String, Optional pRecType As String)

Dim rs1 As Recordset
Dim RS2 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim cnn As Connection
Dim T_Date, C_DATE As String
Set cnn = New Connection
Dim pg1 As Integer
Dim Co As Integer

Dim TrcdBales As Double
Dim TissBales As Double
Dim TotRcdBales As Double
Dim TotIssBales As Double
Dim stock As Double
Dim Totalrcd As Double
Dim Tocome As Double
Dim opstk As Double


Dim SubTrcdBales As Double
Dim SubTissBales As Double
Dim SubTotRcdBales As Double
Dim SubTotIssBales As Double
Dim SubStock As Double
Dim SubTotalrcd As Double
Dim SubTocome As Double
Dim SubOpStk As Double


Dim GrndTrcdBales As Double
Dim GrndTissBales As Double
Dim GrndTotRcdBales As Double
Dim GrndTotIssBales As Double
Dim GrndStock As Double
Dim GrndTotalrcd As Double
Dim GrndTocome As Double
Dim GrndOpStk As Double



GrndTrcdBales = 0
GrndTissBales = 0
GrndTotRcdBales = 0
GrndTotIssBales = 0
GrndStock = 0
GrndTotalrcd = 0
GrndTocome = 0
GrndOpStk = 0

SubTrcdBales = 0
SubTissBales = 0
SubTotRcdBales = 0
SubTotIssBales = 0
SubStock = 0
SubTotalrcd = 0
SubTocome = 0
SubOpStk = 0

TrcdBales = 0
TissBales = 0
TotRcdBales = 0
TotIssBales = 0
stock = 0
Totalrcd = 0
Tocome = 0
opstk = 0


cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
SR = catcd
''SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\sv.TXT" For Output As #a
Open KALFOLDERDATA & "\sv.TXT" For Output As #a
pg1 = 1
Co = 0
        


vrectype = Trim(Left(pRecType, 3))
        
If vrectype <> "ALL" Then
    If vrectype = "A" Then
        tmptypestr = " and b.LotType = '" & vrectype & "'"
    Else
        tmptypestr = " and b.TransferType = '" & vrectype & "'"
    End If
Else
    tmptypestr = ""
End If


Set rs1 = New Recordset
If SR = "ALL" Then
    rs1.Open "select distinct a.varcode,a.catcd from rm_var a,rm_lot b where LOTYEAR='" & Year(yfdate) & "' and b.DivCode='" & Divcode & "' AND a.varcode=b.varcode " & tmptypestr & " ORDER BY A.CATCD", cnn
Else
    rs1.Open "select distinct a.varcode,a.catcd from rm_var a,rm_lot b where LOTYEAR='" & Year(yfdate) & "' and b.Divcode='" & Divcode & "' AND a.varcode=b.varcode and a.CatCd='" & SR & "' " & tmptypestr & " ORDER BY A.CATCD", cnn
End If
           
If rs1.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Close #a
   Exit Sub
End If
catg = ""
Call StockHeader(pg1, Co, F_Date)

C_DATE = F_Date
F_Date = Format(fnmfdate(Format(F_Date, "dd/mm/yy")), "yyyy-mm-dd")
T_Date = C_DATE

rs1.MoveFirst
While Not rs1.EOF
   
  Set rscat = New Recordset
  rscat.Open "select catname as name from rm_cat where catcd='" & rs1("catcd") & "'", db, adOpenStatic
  CNAME = ""
  If rscat.RecordCount > 0 Then
    CNAME = rscat("name")
  End If
  If catg <> rs1("catcd") Then
    Print #a, Space(3) + Chr(27) + "E" + CNAME + Chr(27) + "F"
  End If
  Co = Co + 1
  If Co >= PageLen Then
      Print #a, Space(5) + String(101, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call StockHeader(pg1, Co, F_Date)
  End If
  catg = rs1("catcd")
  SR = rs1("catcd")

  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
   
   
  
  
   Set RSV = New Recordset
   RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where b.Divcode='" & Divcode & "' and B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.varcode='" & rs1("varcode") & "' and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,b.bblflg ,b.ratekg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.divcode=c.Divcode and b.Divcode=e.Divcode and b.Divcode='" & Divcode & "' and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and b.varcode='" & rs1("varcode") & "' and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.varcode,b.bblflg,b.ratekg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  b.Divcode='" & Divcode & "' and upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.varcode='" & rs1("varcode") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where b.Divcode=c.Divcode and b.Divcode=e.Divcode and b.Divcode='" & Divcode & "' and BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.varcode='" & rs1("varcode") & "' group by b.varcode,b.opflg,b.bblflg,b.ratekg))a group by a.varcode", cnn, adOpenStatic, adLockBatchOptimistic
   If RSV.RecordCount > 0 And Not RSV.EOF Then
   opstk = RSV("opbales") + RSV("opboras")
   Set rsg = New Recordset
   rsg.Open "select count(*) as Bales from rm_bale A,RM_LOT B where A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.CATCD=B.CATCD AND A.VARCODE=B.VARCODE AND A.DIVCODE=B.DIVCODE AND ISNULL(A.REJFLG,'N')='N' AND A.LOTTYPE=B.LOTTYPE AND B.LOTTYPE='A'  AND  A.LOTdt='" & Format(C_DATE, "yyyy-mm-dd") & "' and A.varcode='" & RSV("varcode") & "' and A.divcode='" & Divcode & "' AND ISNULL(OPFLG,'N')='N'", db, adOpenStatic
   TrcdBales = 0  ''Today  Rcd Bales
   If rsg.RecordCount > 0 Then
        TrcdBales = rsg("bales")
   End If
   Set rsg1 = New Recordset
   rsg1.Open "select count(*) as Bales from rm_bale A,RM_LOT B where A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.CATCD=B.CATCD AND A.VARCODE=B.VARCODE AND A.DIVCODE=B.DIVCODE AND ISNULL(A.REJFLG,'N')='N' AND A.LOTTYPE=B.LOTTYPE AND  B.LOTTYPE ='A' AND  A.LOTdt>='" & Format(F_Date, "yyyy-mm-dd") & "' and  A.LOTdt<='" & Format(C_DATE, "yyyy-mm-dd") & "' and A.varcode='" & RSV("varcode") & "' and A.divcode='" & Divcode & "' AND ISNULL(OPFLG,'N')='N'", db, adOpenStatic
   TotRcdBales = 0   ''Total Rcd Bales from Month Begining
   If rsg1.RecordCount > 0 Then
        TotRcdBales = rsg1("bales")
   End If
   Totalrcd = opstk + TotRcdBales
      
   Set rsg = New Recordset
   rsg.Open "select count(*) as Bales from rm_issb where docdt='" & Format(C_DATE, "yyyy-mm-dd") & "' and varcode='" & RSV("varcode") & "' and divcode='" & Divcode & "'", db, adOpenStatic
   TissBales = 0  ''Today  issue Bales
   If rsg.RecordCount > 0 Then
        TissBales = rsg("bales")
   End If
   
   Set rsg1 = New Recordset
   rsg1.Open "select count(*) as Bales from rm_issb where docdt>='" & Format(F_Date, "yyyy-mm-dd") & "' and  docdt<='" & Format(C_DATE, "yyyy-mm-dd") & "' and varcode='" & RSV("varcode") & "' and divcode='" & Divcode & "'", db, adOpenStatic
   TotIssBales = 0   ''Total Issue Bales from Month Begining
   If rsg1.RecordCount > 0 Then
        TotIssBales = rsg1("bales")
   End If
   stock = Totalrcd - TotIssBales
      
   Set rscont = New Recordset
   rscont.Open "select isnull(sum(ordqty),0)- (isnull(sum(rEcqty),0)+isnull(sum(cancelbales),0)) as Tocome from rm_cont where varcode='" & RSV("varcode") & "' and divcode='" & Divcode & "' Having sum(ordqty)-SUM(isnull(rECqty,0))>0", db, adOpenStatic
   
   Set rsLot = New Recordset
   rsLot.Open "select isnull(sum(bales),0) as bales from rm_lot where lotdt>'" & Format(C_DATE, "yyyy-mm-dd") & "' and varcode='" & RSV("varcode") & "' and divcode='" & Divcode & "'", db, adOpenStatic
   arrived = 0
   If rsLot.RecordCount > 0 Then
        arrived = rsLot("bales")
   End If
   
   
   Tocome = 0  ''Pending Contract Quantity
   If rscont.RecordCount > 0 Then
        Tocome = rscont("Tocome") - arrived
        If Tocome < 0 Then
            Tocome = 0
        End If
   End If
   
   Set rsc = New Recordset
   rsc.Open "select * from rm_var where varcode='" & RSV("varcode") & "'", db, adOpenStatic
   VarName = ""
   If rsc.RecordCount > 0 Then
        VarName = rsc("varname")
   End If
   
   Print #a, Space(3) + Padr(VarName, 20, " ") + Space(1) + Padl(opstk, 8, " ") + Space(1) + Padl(TrcdBales, 8, " ") + Space(1) + Padl(TotRcdBales, 8, " ") + Space(1) + Padl(Totalrcd, 8, " ") + Space(1); Padl(TissBales, 8, " ") + Space(1) + Padl(TotIssBales, 8, " ") + Space(1) + Padl(stock, 8, " ") + Space(1) + Padl(Tocome, 8, " ") + Space(1) + Padl(" ", 8, " ")
   Co = Co + 1
   If Co >= PageLen Then
      Print #a, Space(5) + String(101, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call StockHeader(pg1, Co, C_DATE)
   End If
    SubTrcdBales = SubTrcdBales + TrcdBales
    SubTissBales = SubTissBales + TissBales
    SubTotRcdBales = SubTotRcdBales + TotRcdBales
    SubTotIssBales = SubTotIssBales + TotIssBales
    SubStock = SubStock + stock
    SubTotalrcd = SubTotalrcd + Totalrcd
    SubTocome = SubTocome + Tocome
    SubOpStk = SubOpStk + opstk
    
    GrndTrcdBales = GrndTrcdBales + TrcdBales
    GrndTissBales = GrndTissBales + TissBales
    GrndTotRcdBales = GrndTotRcdBales + TotRcdBales
    GrndTotIssBales = GrndTotIssBales + TotIssBales
    GrndStock = GrndStock + stock
    GrndTotalrcd = GrndTotalrcd + Totalrcd
    GrndTocome = GrndTocome + Tocome
    GrndOpStk = GrndOpStk + opstk
    
End If
   rs1.MoveNext

   If Not rs1.EOF Then
        If catg <> rs1("catcd") Then
            Print #a, Space(9) + String(95, "-")
            Print #a, Space(3) + Padl("Category Total", 20, " ") + Space(1) + Padl(SubOpStk, 8, " ") + Space(1) + Padl(SubTrcdBales, 8, " ") + Space(1) + Padl(SubTotRcdBales, 8, " ") + Space(1) + Padl(SubTotalrcd, 8, " ") + Space(1); Padl(SubTissBales, 8, " ") + Space(1) + Padl(SubTotIssBales, 8, " ") + Space(1) + Padl(SubStock, 8, " ") + Space(1) + Padl(SubTocome, 8, " ") + Space(1) + Padl(" ", 8, " ")
            Print #a, Space(9) + String(95, "-")
            Co = Co + 3
            If Co >= PageLen Then
               Print #a, Space(5) + String(101, "-");
               Print #a, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call StockHeader(pg1, Co, C_DATE)
            End If
            SubTrcdBales = 0
            SubTissBales = 0
            SubTotRcdBales = 0
            SubTotIssBales = 0
            SubStock = 0
            SubTotalrcd = 0
            SubTocome = 0
            SubOpStk = 0
        End If
   Else
            Print #a, Space(9) + String(95, "-")
            Print #a, Space(3) + Padl("Category Total", 20, " ") + Space(1) + Padl(SubOpStk, 8, " ") + Space(1) + Padl(SubTrcdBales, 8, " ") + Space(1) + Padl(SubTotRcdBales, 8, " ") + Space(1) + Padl(SubTotalrcd, 8, " ") + Space(1); Padl(SubTissBales, 8, " ") + Space(1) + Padl(SubTotIssBales, 8, " ") + Space(1) + Padl(SubStock, 8, " ") + Space(1) + Padl(SubTocome, 8, " ") + Space(1) + Padl(" ", 8, " ")
            Print #a, Space(9) + String(95, "-")
            Co = Co + 3
            If Co >= PageLen Then
               Print #a, Space(5) + String(101, "-");
               Print #a, Chr(12)
               pg1 = pg1 + 1
               Co = 0
               Call StockHeader(pg1, Co, C_DATE)
            End If
   End If
Wend
''Print #a, Space(3) + String(104, "-")
Print #a, Space(9) + Chr(27) + "E" + Padr("Grand Total", 14, " ") + Space(1) + Padl(GrndOpStk, 8, " ") + Space(1) + Padl(GrndTrcdBales, 8, " ") + Space(1) + Padl(GrndTotRcdBales, 8, " ") + Space(1) + Padl(GrndTotalrcd, 8, " ") + Space(1); Padl(GrndTissBales, 8, " ") + Space(1) + Padl(GrndTotIssBales, 8, " ") + Space(1) + Padl(GrndStock, 8, " ") + Space(1) + Padl(GrndTocome, 8, " ") + Space(1) + Padl(" ", 8, " ") + Chr(27) + "E"
Print #a, Space(3) + String(101, "-")
Print #a, Chr(12)
Print #a, Chr(18)
 Call footermod(CInt(a), rp.UserFooter1.SelectedStr, 85)
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




Public Sub StockHeader(pg1 As Integer, Co As Integer, U As String)
Print #a, Chr(18)
Print #a, Space(3) + Chr(27) + "E" + CENTRE(DIVNAME, 84, " ") + Chr(27) + "F"
Print #a, Chr(27) & Chr(205) & Chr(27) & Chr(77)
SR = Format(pdate, "dd/mm/yy") + Space(2)
Print #a, Space(3) + Chr(27) + "E" + "Stock Received & Consumption Report As On " + Padl(Format(U, "dd/mm/yy"), 8, " ") + Space(30) + Padl(Format(pdate, "dd/mm/yy"), 10, " ") + Space(3) + "Pg.:" + Space(1) + Padl(CStr(pg1), 3, " ") + Chr(27) + "F"
Print #a, Space(3) + String(101, "-")
Print #a, Space(3) + Chr(27) + "E" + Padr("Category", 20, " ") + Space(1) + Padl(" Op.  ", 8, " ") + Space(1) + Padl("<---Received---->", 17, " ") + Space(1) + Padl("Total", 8, " ") + Space(1) + Padl("<----Consumed--->", 17, " ") + Space(1) + Padl("Total", 8, " ") + Space(1) + Padl(" ", 8, " ") + Space(1) + Padl("  In Dept", 8, " ") + Chr(27) + "F"
Print #a, Space(3) + Chr(27) + "E" + Padr("Description Of Goods", 20, " ") + Space(1) + Padl("Stock", 8, " ") + Space(1) + Padl("Today", 8, " ") + Space(1) + Padl("Up To", 8, " ") + Space(1) + Padl(" ", 8, " ") + Space(1) + Padl("Today", 8, " ") + Space(1) + Padl("Up To", 8, " ") + Space(1) + Padl("Stock", 8, " ") + Space(1) + Padl("To Come", 8, " ") + Space(1) + Padl("    Stock", 8, " ") + Chr(27) + "F"
Print #a, Space(3) + String(101, "-")
Co = Co + 8
End Sub
        
