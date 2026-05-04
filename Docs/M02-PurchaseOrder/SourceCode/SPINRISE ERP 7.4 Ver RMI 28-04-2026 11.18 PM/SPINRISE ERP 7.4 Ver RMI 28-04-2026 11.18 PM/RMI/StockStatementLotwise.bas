Attribute VB_Name = "StockStatementLotwise"
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
'StockLotReport
Public Sub StocklotReport(F_Date As String, T_Date As String, catcd As String, X As String, Y As String)
    Dim rs1 As Recordset
    Dim RS2 As Recordset
    Dim RESULT As Recordset
    Dim RPTV As Report.ReportView
    Dim SR As String
    Dim TEMP As String
    Dim temp1 As String
    Dim temp2 As String
    Dim hot1, hot2, hot3, hot4, hot5, hot6, hot7, hot8, hot9, hot10, hot11, hot12 As Double
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
    
    a = 0
    a = FreeFile
    Close #a
    Close
    Open "C:\sv.TXT" For Output As #a
    
    'Initilization of variables
    TEMP = " "
    temp1 = " "
    te1 = ""
    
    temp2 = " "
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
    hot1 = 0: hot2 = 0: hot3 = 0: hot4 = 0: hot5 = 0: hot6 = 0
    hot7 = 0: hot8 = 0: hot9 = 0: hot10 = 0: hot11 = 0: hot12 = 0
    
    
    Call PartyHeader(CStr(pg1), CStr(Co), F_Date, T_Date, catcd)
            
    If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
       YFF = Year(yfdate)
    ElseIf Year(yfdate) + 1 = Year(F_Date) Then
       YFF = Year(yfdate)
    Else
       YFF = Year(yfdate)
    End If
    If Trim(SR) <> "A" Then
        Set RSV = New Recordset
        RSV.Open "select a.lotno,a.lotdt,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select lotno,lotdt,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select b.lotno,b.lotdt,case when b.bblflg = 'B' then COUNT(*) else 0 end as opbales, case when b.bblflg   IN ('R','H') then COUNT(*) else 0 end as opboras,sum(isnull(E.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(E.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b,RM_BALE E where B.LOTNO=E.LOTNO AND B.LOTDT=E.LOTDT AND B.DIVCODE=E.DIVCODE AND B.CATCD=E.CATCD AND (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') AND (E.rejflg='N' or E.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and  b.lotno between '" & X & "' and '" & Y & "' group by b.lotno,b.lotdt,b.bblflg ,b.ratekg " & _
                "union select b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') AND (E.rejflg='N' or E.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "' and  b.lotno between '" & X & "' and '" & Y & "'" & _
                "group by b.lotno,b.lotdt,b.bblflg,b.ratekg) a  group by lotno,lotdt" & _
                " Union All " & _
                "select b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then COUNT(*) else 0 end as recbales, " & _
                "case when b.bblflg   IN ('R','H') then COUNT(*) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(E.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(ISNULL(E.NETWT,0)) * RATEKG as recvalue,0 as issvalue " & _
                "from rm_lot b,RM_BALE E WHERE (E.rejflg='N' or (E.rejdt> '" & Format(T_Date, "yyyy-mm-dd") & "')) AND B.LOTNO=E.LOTNO AND B.LOTDT=E.LOTDT AND B.DIVCODE=E.DIVCODE AND B.CATCD=E.CATCD AND  " & _
                " upper(opflg)='N' and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
                " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and  b.lotno between '" & X & "' and '" & Y & "' " & _
                " group by b.lotno,b.lotdt,b.opflg,b.bblflg,RATEKG,totlandcost " & _
                " Union All " & _
                "select b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                "rm_lot b,rm_issb c,rm_bale e where (E.rejflg='N' or (E.rejdt >'" & Format(T_Date, "yyyy-mm-dd") & "')) AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and  b.lotno between '" & X & "' and '" & Y & "' group by b.lotno,b.lotdt,b.opflg,b.bblflg,b.ratekg))a group by a.lotno,a.lotdt HAVING SUM(OPBALES)>=0   order by a.lotno,a.lotdt ", cnn, adOpenStatic, adLockBatchOptimistic
    Else
        Set RSV = New Recordset
        RSV.Open "select a.lotno,a.lotdt,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select lotno,lotdt,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select b.lotno,b.lotdt,case when b.bblflg = 'B' then COUNT(*) else 0 end as opbales, case when b.bblflg   IN ('R','H') then COUNT(*) else 0 end as opboras,sum(isnull(E.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(E.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b,RM_BALE E where B.LOTNO=E.LOTNO AND B.LOTDT=E.LOTDT AND B.DIVCODE=E.DIVCODE AND B.CATCD=E.CATCD AND (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') AND (E.rejflg='N' or E.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and  b.lotno between '" & X & "' and '" & Y & "' group by b.lotno,b.lotdt,b.bblflg ,b.ratekg " & _
                "union select b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (B.rejflg='N' or B.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') AND (E.rejflg='N' or E.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "' and  b.lotno between '" & X & "' and '" & Y & "'" & _
                "group by b.lotno,b.lotdt,b.bblflg,b.ratekg) a  group by lotno,lotdt" & _
                " Union All " & _
                "select b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then COUNT(*) else 0 end as recbales, " & _
                "case when b.bblflg   IN ('R','H') then COUNT(*) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(E.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(ISNULL(E.NETWT,0)) * RATEKG as recvalue,0 as issvalue " & _
                "from rm_lot b,RM_BALE E WHERE (E.rejflg='N' or (E.rejdt> '" & Format(T_Date, "yyyy-mm-dd") & "')) AND B.LOTNO=E.LOTNO AND B.LOTDT=E.LOTDT AND B.DIVCODE=E.DIVCODE AND B.CATCD=E.CATCD AND  " & _
                " upper(opflg)='N' and B.lotyear='" & Year(yfdate) & "' and " & _
                " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and  b.lotno between '" & X & "' and '" & Y & "' " & _
                " group by b.lotno,b.lotdt,b.opflg,b.bblflg,RATEKG,totlandcost " & _
                " Union All " & _
                "select b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                "rm_lot b,rm_issb c,rm_bale e where (E.rejflg='N' or (E.rejdt >'" & Format(T_Date, "yyyy-mm-dd") & "')) AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and  b.lotno between '" & X & "' and '" & Y & "' group by b.lotno,b.lotdt,b.opflg,b.bblflg,b.ratekg))a group by a.lotno,a.lotdt HAVING SUM(OPBALES)>=0   order by a.lotno,a.lotdt ", cnn, adOpenStatic, adLockBatchOptimistic
        
        
    End If
    If RSV.RecordCount = 0 Then
        MsgBox "No records Found "
        Exit Sub
    End If
     
    If RSV.RecordCount > 0 Then
      RSV.MoveFirst
    'Else
     ' GoTo 30
    End If
      
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
                            
             If (RSV("CLOBALES") > 0 Or RSV("CLOBORAS") > 0) Or RSV("CLOKGS") > 0 And RSV("CLOSEVALUE") > 0 Then
                VTOT9 = VTOT9 + RSV("clobales")
                VTOT10 = VTOT10 + RSV("cloboras")
                VTOT11 = VTOT11 + RSV("clokgs")
                VTOT15 = VTOT15 + RSV("closevalue")
                'calculating for stationwise total
                
                hot1 = hot1 + RSV("clobales")
                hot2 = hot2 + RSV("clokgs")
                hot3 = hot3 + RSV("closevalue")
                
             Else
                VTOT9 = VTOT9 + 0
                VTOT10 = VTOT10 + 0
                VTOT11 = VTOT11 + 0
                VTOT15 = VTOT15 + 0
                
                hot1 = hot1 + 0
                hot2 = hot2 + 0
                hot3 = hot3 + 0
             End If
                                                                            
             VTOT12 = VTOT12 + RSV("opvalue")
             VTOT13 = VTOT13 + RSV("recvalue")
             VTOT14 = VTOT14 + RSV("issvalue")
       
            Set opf = New Recordset
            If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
            
            
            'before 24-11-05
                'Print #a, Space(5) + Padl(RSV("lotno"), 16, " ") & Space(5) & Padl(INF(VTOT, 0), 9, " ") + Padl(INF(vtot1, 0), 7, " ") + Padl(INF(vtot2, 3), 15, " ") + Padl(INF(VTOT12, 2), 17, " ") + Padl(INF(vtot3, 0), 10, " ") + Padl(INF(VTOT4, 0), 9, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 10, " ") + Padl(INF(VTOT7, 0), 9, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(VTOT9, 0), 10, " ") + Padl(INF(VTOT10, 0), 9, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
            
            
            'after 24-11-05
            If RSV("OPbales") = 0 And RSV("OPBORAS") = 0 And RSV("RECBALES") = 0 And RSV("RECboras") = 0 And RSV("ISSBALES") = 0 And RSV("ISSBoraS") = 0 And RSV("CLOBALES") = 0 And RSV("CLOBoras") = 0 Then
            GoTo 30
            Else
            Print #a, Space(5) + Padl(RSV("LotNo"), 8, " ") & Space(2) & Padr(Format(RSV("lotdt"), "dd/mm/yy"), 9, " ") & Space(2) & _
                Padl(INF(RSV("opbales"), 0), 9, " ") + Padl(INF(RSV("opboras"), 0), 7, " ") + Padl(INF(RSV("opkgs"), 3), 15, " ") + Padl(INF(RSV("opvalue"), 2), 17, " ") + _
                Padl(INF(RSV("recboras"), 0), 10, " ") + Padl(INF(RSV("recbales"), 0), 9, " ") + Padl(INF(RSV("reckgs"), 3), 14, " ") + Padl(INF(RSV("recvalue"), 2), 16, " ") + _
                Padl(INF(RSV("issbales"), 0), 10, " ") + Padl(INF(RSV("issboras"), 0), 9, " ") + Padl(INF(RSV("isskgs"), 3), 14, " ") + Padl(INF(RSV("issvalue"), 2), 16, " ") + _
                Padl(INF(RSV("clobales"), 0), 10, " ") + Padl(INF(RSV("cloboras"), 0), 9, " ") + Padl(INF(RSV("clokgs"), 3), 14, " ") + Padl(INF(IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE")), 2), 16, " ")
            
            Co = Co + 1
            te1 = val(te1) + RSV("CLOSEVALUE")
            End If
            Print #a,
        Co = Co + 1
        
        If Co >= 58 Then
          Print #a, Space(5) + String(216, "-");
          Print #a, Chr(12)
          pg1 = pg1 + 1
          Co = 0
          Call PartyHeader(CStr(pg1), CStr(Co), F_Date, T_Date, catcd)
        End If
        'VTOT5 = 0
30:
        RSV.MoveNext
        'temp = areaname
        'temp1 = areaname
    Loop
       'If Namers.RecordCount > 0 Then
    '   If RSV.RecordCount > 0 Then
    '        Print #a,
    '        co = co + 1
    '        Print #a, Space(148) + Chr(27) & "E" & "** Stationwise Total **" + Space(5) + Padl(INF(hot1, 0), 6, " ") + Space(7) + Padl(INF(hot2, 3), 16, " ") + Space(0) + Padl(INF(hot3, 2), 16, " ") & Chr(27) & "F"
    '        co = co + 1
    '        Print #a,
    '        co = co + 1
    '    End If
                    
       If Co >= 58 Then
          Print #a, Space(5) + String(216, "-");
          Print #a, Chr(12)
          pg1 = pg1 + 1
          Co = 0
          Call PartyHeader(CStr(pg1), CStr(Co), F_Date, T_Date, catcd)
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
       tot16 = val(tot16 + VTOT15)   'Clse value
       Co = Co + 1
       If Co >= 58 Then
          Print #a, Space(5) + String(216, "-");
          Print #a, Chr(12)
          pg1 = pg1 + 1
          Co = 0
          Call PartyHeader(CStr(pg1), CStr(Co), F_Date, T_Date, catcd)
       End If
       vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
       VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
       VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0: VTOT = 0
    '30:
       'RSV.MoveNext
    
       
    'Loop
    
    hot1 = 0
    hot2 = 0
    hot3 = 0
    
    Print #a,
    Print #a, Space(5) + String(216, "-")
    Print #a, Space(5) & "** Total **" + " " + Padl(INF(tot1, 0), 18, " ") + Padl(INF(tot2, 0), 6, " ") + Padl(INF(tot3, 3), 16, " ") + Padl(INF(tot13, 2), 17, " ") + Padl(INF(tot4, 0), 10, " ") + Padl(INF(tot5, 0), 9, " ") + Padl(INF(tot6, 3), 14, " ") + Padl(INF(tot14, 2), 16, " ") + Padl(INF(tot7, 0), 10, " ") + Padl(INF(tot8, 0), 9, " ") + Padl(INF(tot9, 3), 14, " ") + Padl(INF(tot15, 2), 16, " ") + Padl(INF(tot10, 0), 10, " ") + Padl(INF(tot11, 0), 9, " ") + Padl(INF(tot12, 3), 14, " ") + Padl(INF(te1, 2), 16, " ")
    Print #a, Space(5) + String(216, "-")
    
    'nithya
    'rejection
    
            Set opf = New Recordset
            opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg,Bales,Rejdt,lotno,lotdt,Netwt,netwt*cast(b.ratekg as decimal (12,4)) as Value FROM RM_LOT B WHERE LOTYEAR='" & Year(yfdate) & "'  and rejflg='Y' and divcode='" & Divcode & "' and rejdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'", DB, adOpenStatic
                If opf.RecordCount > 0 Then
                    Print #a, Space(5) & "Rejection Details"
                    Print #a, Space(5) + String(49, "-")
                    Print #a, Space(5) & "Lotno   Lotdt    Rejected Bales     Rejected Date"
                    Print #a, Space(5) + String(49, "-")
                    cbales = 0
                    ckgs = 0
                    cval = 0
                    
                    Do While opf.EOF = False
                        Print #a, Space(5) & Padr(opf("lotno"), 7, " ") & Space(1) & Padr(Format(opf("lotdt"), "dd-mm-yy"), 8, " ") & Space(2) & Padl(INF(opf("bales"), 0), 13, " ") & Space(5) & Padl(Format(opf("rejdt"), "dd-mm-yy"), 8, " ")
                        cbales = cbales + opf("bales")
                        ckgs = ckgs + opf("netwt")
                        cval = cval + opf("value")
                        opf.MoveNext
                    Loop
                    cbales = tot10 - cbales
                    ckgs = tot12 - ckgs
                    cval = te1 - cval
                    Print #a, Space(5) + String(49, "-")
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
    Open "c:\sv.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "type sv.txt>prn"
    Close #a
    RPTV.txtfile = "c:\sv.txt"
    RPTV.Batfile = "c:\sv.bat"

End Sub

Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String)
    Print #a, Chr(18)
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    SR = Format(pdate, "dd/mm/yy") + Space(2)
    Print #a, Space(5) + "Lotwise Stock Statement Report" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy") & Space(1) & Space(35) & Space(1) + Space(97) + Space(6) + SR + "Pg.:" + Space(3) + Padl(CStr(pg1), 3, " ") + Chr(15)
    Print #a, Space(5) + String(216, "-")
    'Print #a, Space(5) + "                 Mill    <-------------Opening Balance-------------->     <----------------Receipts------------------>     <------------------Issues------------------>     <--------------Closing Balance------------->"
    'Print #a, Space(5) + "                Lotno    Bales                Weight            Value     Bales                 Weight           Value     Bales                 Weight           Value     Bales                 Weight           Value"
    Print #a, Space(5) + "        Mill             <-------------Opening Balance-------------->     <----------------Receipts------------------>     <------------------Issues------------------>     <--------------Closing Balance------------->"
    'Print #a, Space(5) + "                Lotno    Bales                Weight            Value     Bales                 Weight           Value     Bales                 Weight           Value     Bales                 Weight           Value"
    'Print #a, Space(5) + "                         Bales                Weight            Value     Bales                 Weight           Value     Bales                 Weight           Value     Bales                 Weight           Value"
    Print #a, Space(5) + "   Lotno   Date          Bales                Weight            Value     Bales                 Weight           Value     Bales                 Weight           Value     Bales                 Weight           Value"
    Print #a, Space(5) + String(216, "-")
    Co = Co + 8
End Sub

