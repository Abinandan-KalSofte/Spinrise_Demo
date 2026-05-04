Attribute VB_Name = "godownwisestock"
Dim rs1 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim gtot1, gtot2, gtot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim z As Integer
Public Sub godstockReport(str As String, a As String, LtNF As String, LtNT As String, U As Integer)
Set cnn = New Connection
str1 = str
a1 = a
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
gtot1 = 0
gtot2 = 0
gtot3 = 0
    If str <> "A" Then
        Set ResultRs = New Recordset
        
         ResultRs.Open "select a.lotno,a.godown,a.lotdt,a.catcd,a.varcode,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),3) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.plotno,a.ratecandy,a.val as ratekg,a.Modusrid,a.Moddate,a.catname from ( select distinct a.Modusrid,a.Moddate,a.LOTNO,a.godown,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,a.varcode,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,isnull(a.netwt,0) 'Stock',isnull(ratekg,0) 'Rate/qu',a.totlandcost / a.netwt 'val',isnull(a.PLOTNO,' ')as PLOTNO,round((ratecy),0) as ratecandy,f.catname from rm_lot a,rm_var c,rm_cat f  where   " & _
                       " a.catcd*=f.catcd and a.DIVCODE ='" & Divcode & "' and a.catcd='" & Trim(str) & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(a, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(a, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a,(Select a.lotno,b.godown,a.lotdt,a.catcd,COUNT(*) as bales, (sum(isnull(e.netwt,0))) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e ,rm_cat f where  LOTYEAR='" & Year(yfdate) & "' AND b.catcd=f.catcd and a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(a, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and  a.catcd='" & Trim(str) & "'and b.lotyear='" & Year(yfdate) & "' " & _
                       "group by a.lotno,b.godown,a.lotdt,a.catcd,f.catname)b where a.lotno*=b.lotno and a.lotdt*=b.lotdt  " & _
                       " and a.catcd*=b.catcd and a.godown between '" & LtNF & "' and '" & LtNT & "' group by a.godown,a.lotno,a.lotdt,a.catcd,a.varcode,a.unit,a.plotno,a.ratecandy,a.val,a.Modusrid,a.Moddate,a.bales,b.bales," & _
                       " a.stock,b.isskgs,a.catname having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),3) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,3) > 0 order by a.godown,a.lotno,a.lotdt", db, adOpenStatic
          
    Else
    
    Set ResultRs = New Recordset
    ResultRs.Open "select a.lotno,a.lotdt,a.catcd,a.varcode,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),3) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.plotno,a.ratecandy,a.val as ratekg,a.Modusrid,a.Moddate,a.catname from ( select distinct a.Modusrid,a.Moddate,a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,a.varcode,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,isnull(a.netwt,0) 'Stock',isnull(ratekg,0) 'Rate/qu',a.totlandcost / a.netwt 'val',isnull(a.PLOTNO,' ')as PLOTNO,round((ratecy),0) as ratecandy,f.catname from rm_lot a,rm_var c,rm_cat f  where   " & _
                       " a.catcd*=f.catcd and LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(a, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(a, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a,(Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, (sum(isnull(e.netwt,0))) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e ,rm_cat f where  LOTYEAR='" & Year(yfdate) & "' AND b.catcd=f.catcd and a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(a, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and b.lotyear='" & Year(yfdate) & "'  group by a.lotno,a.lotdt,a.catcd,f.catname)b where a.lotno*=b.lotno and a.lotdt*=b.lotdt  " & _
                       " and a.catcd*=b.catcd and a.godown between " & LtNF & " and " & LtNT & " group by a.lotno,a.lotdt,a.catcd,a.varcode,a.unit,a.plotno,a.ratecandy,a.val,a.Modusrid,a.Moddate,a.bales,b.bales," & _
                       " a.stock,b.isskgs,a.catname having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),3) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,3) > 0 order by a.godown,a.lotno,a.lotDT", db, adOpenStatic
    
          
    End If

    
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #z
    Close
'    Open "c:\Loso.TXT" For Output As #z
 Open KALFOLDERDATA & "\Loso.TXT" For Output As #z
    pg1 = 1
    Co = 0
    
    Call LotstockRepHeader(pg1, Co, S, a, U)
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      TEMP = " "
        Do While Not ResultRs.EOF
            Set RSLOC = New Recordset
            RSLOC.Open "select A.areaname,S.slname from rm_lot L,fa_slmas S,rm_area A where " & _
                       " L.Areacd=A.areacode and L.supcd=s.slcode and L.Lotno='" & ResultRs("LotNo") & "' and l.godown='" & ResultRs("godown") & "'", db, adOpenStatic
                       
        F_Date = Format(yfdate, "YYYY-MM-DD")
        T_Date = Format(a, "yyyy-mm-dd")
        X = LtNF
        Y = LtNT
        SR = str
        YFF = Year(yfdate)
        If Trim(str) <> "A" Then
        
        Set RSV = New Recordset
        RSV.Open " SELECT sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select lotno,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select b.lotno,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & YFF & "','" & Year(F_Date) & "') AND " & _
                "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and  b.lotno ='" & ResultRs("LOTNO") & "'  and  B.LOTDT='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "' group by b.lotno,b.bblflg ,b.ratekg " & _
                "union select b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(b.netwt/BALES) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where LOTYEAR='" & Year(yfdate) & "' AND docdt>='" & Format(yfdate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & YFF & "','" & Year(F_Date) & "') AND B.LOTDT='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  b.lotno ='" & ResultRs("LOTNO") & "' and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                "group by b.lotno,b.bblflg,b.ratekg) a  group by lotno" & _
                " Union All " & _
                "select b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(ISNULL(NETWT,0)) * RATEKG as recvalue,0 as issvalue " & _
                "from rm_lot b " & _
                " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
                " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and  B.lotno ='" & ResultRs("LOTNO") & "' AND B.LOTDT='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "'" & _
                " group by b.lotno,b.opflg,b.bblflg,RATEKG " & _
                " Union All " & _
                "select b.lotno,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(b.netWT/BALES) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                "rm_lot b,rm_issb c,rm_bale e where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and  b.lotno ='" & ResultRs("LOTNO") & "' AND B.LOTDT='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "'  group by b.lotno,b.opflg,b.bblflg,b.ratekg))a group by a.lotno order by a.lotno ", cnn, adOpenStatic, adLockBatchOptimistic
    Else
        Set RSV = New Recordset
        RSV.Open " SELECT sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select B.LOTNO,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) * cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & YFF & "','" & Year(F_Date) & "') AND " & _
                "(b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and B.lotno ='" & ResultRs("LOTNO") & "' AND B.LOTDT='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "'  group by B.LOTNO,b.bblflg ,b.ratekg " & _
                "union select B.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(b.netwt/BALES) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where LOTYEAR='" & Year(yfdate) & "' AND docdt>='" & Format(yfdate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & YFF & "','" & Year(F_Date) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                "group by B.LOTNO,b.bblflg,b.ratekg) a  group by LOTNO" & _
                " Union All " & _
                "select B.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,totlandcost as recvalue,0 as issvalue " & _
                "from rm_lot b " & _
                " where (BALES-ISNULL(ISSBAL,0)>=0 ) and  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and " & _
                " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and  B.lotno ='" & ResultRs("LOTNO") & "' AND B.LOTDT='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "' " & _
                " group by B.LOTNO,b.opflg,b.bblflg,totlandcost " & _
                " Union All " & _
                "select B.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(b.netwt/BALES) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4))  as issvalue from " & _
                "rm_lot b,rm_issb c,rm_bale e where  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and  B.lotno ='" & ResultRs("LOTNO") & "'AND B.LOTDT='" & Format(ResultRs("LOTDT"), "YYYY-MM-DD") & "'  group by B.LOTNO,b.opflg,b.bblflg,b.ratekg))a group by A.LOTNO order by a.lotno", cnn, adOpenStatic, adLockBatchOptimistic
    End If

          
           
            If ResultRs("BALES") > 0 And ResultRs("stock") > 0 Then
               gtot1 = gtot1 + ResultRs("BALES")
               gtot2 = gtot2 + ResultRs("STOCK")
               gtot3 = gtot3 + RSV("CLOSEVALUE")
               If RSLOC.RecordCount > 0 Then
               sn = RSLOC("SLNAME")
               AN = RSLOC("AREANAME")
               Else
               sn = ""
               AN = ""
               End If
                If U = 0 Then
                If ResultRs("godown") <> TEMP Then
                  Print #z, Space(5) & Padl(ResultRs("godown"), 6, " ") & Space(1) & Padl(CStr(ResultRs("LOTNO")), 7, " ") + Space(2) + Padr(CStr(Format(ResultRs("LOTDT"), "DD/MM/YY")), 12, " ") + Space(2) + Padr(CStr(ResultRs("varcode")), 7, " ") + Space(2) + Padr(sn, 38, " ") + Space(1) + Padr(AN, 11, " ") + Space(2) + Padl(INF(ResultRs("bales"), 0), 8, " ") + Space(2) + Padl(IIf(ResultRs("stock") < 1, Format(ResultRs("stock"), "#0.00"), CStr(INF(ResultRs("STOCK"), 2))), 16, " ") + Padl(INF(ResultRs("ratecandy"), 0), 11, " "); Padl(IIf(RSV("CLOSEVALUE") < 1, RSV("CLOSEVALUE"), INF(Round(RSV("CLOSEVALUE"), 0), 2)), 17, " ")
                Else
                   Print #z, Space(5) & Padl(" ", 6, " ") & Space(1) & Padl(CStr(ResultRs("LOTNO")), 7, " ") + Space(2) + Padr(CStr(Format(ResultRs("LOTDT"), "DD/MM/YY")), 12, " ") + Space(2) + Padr(CStr(ResultRs("varcode")), 7, " ") + Space(2) + Padr(sn, 38, " ") + Space(1) + Padr(AN, 11, " ") + Space(2) + Padl(INF(ResultRs("bales"), 0), 8, " ") + Space(2) + Padl(IIf(ResultRs("stock") < 1, Format(ResultRs("stock"), "#0.00"), CStr(INF(ResultRs("STOCK"), 2))), 16, " ") + Padl(INF(ResultRs("ratecandy"), 0), 11, " "); Padl(IIf(RSV("CLOSEVALUE") < 1, RSV("CLOSEVALUE"), INF(Round(RSV("CLOSEVALUE"), 0), 2)), 17, " ")
                End If
                    
                ElseIf U = 1 Then
                    Print #z, Space(5) & Padl(ResultRs("godown"), 6, " ") & Space(1) & Padl(CStr(ResultRs("LOTNO")), 7, " ") + Space(2) + Padr(CStr(Format(ResultRs("LOTDT"), "DD/MM/YY")), 12, " ") + Space(2) + Padr(CStr(ResultRs("varcode")), 7, " ") + Space(2) + Padr(RSLOC("slname"), 36, " ") + Space(1) + Padr(RSLOC("areaname"), 12, " ") + Space(2) + Padl(INF(ResultRs("bales"), 0), 8, " ") + Space(2) + Padl(IIf(ResultRs("stock") < 1, Format(ResultRs("stock"), "#0.00"), CStr(INF(ResultRs("STOCK"), 2))), 16, " ") + Padl(INF(ResultRs("ratecandy"), 0), 11, " "); Padl(IIf(RSV("CLOSEVALUE") < 1, RSV("CLOSEVALUE"), INF(Round(RSV("CLOSEVALUE"), 0), 2)), 17, " ")
                End If
                Co = Co + 1
                If Co >= PageLen Then
                   Print #z, Space(5) & String(145, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, S, a, U)
                End If
               
               tot = tot + ResultRs("BALES")
               tot2 = tot2 + ResultRs("STOCK")
               tot3 = tot3 + RSV("CLOSEVALUE")
            End If
                If ResultRs.EOF = False Then
                TEMP = ResultRs("godown")
                End If
                ResultRs.MoveNext
                
        Loop

        Print #z, Space(5) & String(145, "-")
                Co = Co + 1
                If Co >= PageLen Then
                   Print #z, Space(5) & String(145, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, S, a, U)
                End If
        
        
        
        Print #z, Space(71) & "** Grand Total ** " + Padl(INF(tot, 0), 15, " ") + Space(1) + Padl(CStr(INF((tot2), 2)), 17, " ") + Space(0) + Padl(CStr(Format(Round(INF((tot3), 0), 2), "#0.00")), 28, " ")
        
        If Co >= PageLen Then
                   Print #z, Space(5) & String(145, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, S, a, U)
                End If
        Print #z, Space(5) & String(145, "-")
        If Co >= PageLen Then
                   Print #z, Space(5) & String(145, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call LotstockRepHeader(pg1, Co, S, a, U)
        End If

Print #z, Chr(12)
Close #z
z = FreeFile
'Open "c:\Loso.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type Loso.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\Loso.TXT"
'RPTV.Batfile = "c:\Loso.bat"
Call KALBATPROCESS("Loso")
Screen.MousePointer = 0
End Sub
Public Sub LotstockRepHeader(pg1 As Integer, Co As Integer, S As String, a As String, U As Integer)
          Print #z, Chr(18)
          Print #z, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) & "Godowise Stock Position" + " as on " + Format(Trim(a), "DD/MM/YY"); Space(90); SR + "Pg.:" + Padl(CStr(pg1), 3, "  ") '+ Chr(15)
        If U = 0 Then
          Print #z, Space(5) & String(145, "-")
          Print #z, Space(5) & "          Mill                                                                                                             Rate/ "
          Print #z, Space(5) & "Godown Lot No.  Lot Date      Variety  Supplier Name                         Station          Bales               Kgs      Candy            Value"
          Print #z, Space(5) & String(145, "-")
        ElseIf U = 1 Then
          Print #z, Space(5) & String(145, "-")
          Print #z, Space(5) & "          Mill                                                                                                             Rate/ "
          Print #z, Space(5) & "Godown Lot No.  Lot Date      Variety  Supplier Name                         Station          Bales               Kgs      Candy            Value"
          Print #z, Space(5) & String(145, "-")
        
          'Print #z, Space(5) & String(145, "-")
          'Print #z, Space(5) & "Category                                                                                     <----Closing Stock---->      Rate/ "
          'Print #z, Space(5) & "Lot No.  Lot Date     Variety  Supplier Name                        Station        Rate/Kg   Qty   Unit          Kgs      Candy             Value"
          'Print #z, Space(5) & String(145, "-")
        End If
          Co = Co + 9
End Sub





