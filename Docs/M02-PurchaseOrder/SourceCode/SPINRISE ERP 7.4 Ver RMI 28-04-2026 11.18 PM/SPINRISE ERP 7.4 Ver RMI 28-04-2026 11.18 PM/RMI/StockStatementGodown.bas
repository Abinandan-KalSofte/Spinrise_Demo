Attribute VB_Name = "StockStatementGodown"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Dim X As String
Dim Y As String
Public Sub StockGodownAReport(U As String, V As String, W As String, DIVNAME, X As String, Y As String)
Dim RS2 As Recordset
Dim rs1 As Recordset
Dim RESULT As Recordset
Dim TEMP As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim gtot1 As Double
Dim ab As Integer
Dim gtot2 As Double
Dim god(100) As String, bale(100) As Double, stock(100) As Double, Value1(100) As Double
Dim gtot3 As Double, gt1 As Double, gt2 As Double, gt3 As Double
Dim gtot4 As Double
Dim gtot5 As Double
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim str As String
Dim flg As String
Dim cnn As Connection
Set cnn = New Connection

Set RS2 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
'rs2.Open "select  distinct a.tax_code,b.description from ig_invdt a,ig_tax b,ig_invhd c where a.tax_code*=b.tax_Code and a.inv_no=c.inv_no and c.date between '" & u & "'and '" & v & "' and a.tax_code between '" & w & "' and '" & z & "' and a.divcode='" & divcode & "'", cnn, adOpenStatic, adLockOptimistic
Set RS2 = New Recordset
Set rs1 = New Recordset
Set rs1 = New Recordset
If Trim(W) <> "ALL" Then
    
    rs1.Open " select a.lotno,a.lotdt,a.catcd,a.varname,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.godown,a.ratecandy from ( " & _
             " select distinct a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),3) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0)/355.6187,2) 'val',round((ratecy),0) as ratecandy,a.godown from rm_lot a,rm_var c  where    a.DIVCODE ='" & Divcode & "' and a.catcd='" & W & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
             " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),3) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and  a.catcd='" & W & "' and b.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.catcd)b " & _
             " where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd and a.lotno between '" & X & "' and '" & Y & "' group by a.lotno,a.lotdt,a.catcd,a.varname,a.unit,a.ratecandy,a.val,a.bales,b.bales, a.stock,b.isskgs,a.godown having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.godown,a.lotno", db, adOpenStatic
            
Else
    rs1.Open " select a.lotno,a.lotdt,a.catcd,a.varname,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.godown,a.ratecandy from ( " & _
             " select distinct a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),3) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0)/355.6187,2) 'val',round((ratecy),0) as ratecandy,a.godown from rm_lot a,rm_var c  where    a.DIVCODE ='" & Divcode & "' and  a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
             " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),3) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   and b.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.catcd)b " & _
             " where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd and a.lotno between '" & X & "' and '" & Y & "' group by a.lotno,a.lotdt,a.catcd,a.varname,a.unit,a.ratecandy,a.val,a.bales,b.bales, a.stock,b.isskgs,a.godown having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.godown,a.lotno", db, adOpenStatic
End If
If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\slotg.TXT" For Output As #a
Open KALFOLDERDATA & "\slotg.TXT" For Output As #a
pg1 = 1
Co = 0
Print #a,
Co = Co + 1
Print #a, Chr(18)
Co = Co + 1
Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
Co = Co + 1
Print #a,
Co = Co + 1
Set RS2 = New Recordset
  If Trim(W) <> "ALL" Then
    RS2.Open " select a.lotno,a.lotdt,a.catcd,a.varCode,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.godown,a.ratecandy,a.plotno,a.slname from ( " & _
             " select distinct a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),3) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratekg,0),2) 'val',round((ratecy),0) as ratecandy,a.godown,a.plotno,s.slname,a.varcode from rm_lot a,rm_var c,fa_slmas s  where  a.DIVCODE ='" & Divcode & "' and a.supcd=s.slcode and a.catcd='" & W & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
             " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),3) as Isskgs,s.slname from rm_issb a,rm_lot b ,rm_issh c,rm_bale e,fa_slmas s where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and b.supcd=s.slcode and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and  a.catcd='" & W & "' and b.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.catcd,s.slname)b " & _
             " where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd and a.slname *= b.slname and a.lotno between '" & X & "' and '" & Y & "' group by a.lotno,a.lotdt,a.catcd,a.varCode,a.unit,a.ratecandy,a.val,a.bales,b.bales, a.stock,b.isskgs,a.godown,a.plotno,a.slname having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.godown,a.lotno", db, adOpenStatic
Else
    RS2.Open " select a.lotno,a.lotdt,a.catcd,a.varCode,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.godown,a.ratecandy,a.plotno,a.slname from ( " & _
             " select distinct a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),3) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0),2) 'val',round((ratecy),0) as ratecandy,a.godown,a.plotno,s.slname,a.varcode from rm_lot a,rm_var c,fa_slmas s  where    a.DIVCODE ='" & Divcode & "' and a.supcd=s.slcode  and a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
             " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),3) as Isskgs,s.slname from rm_issb a,rm_lot b ,rm_issh c,rm_bale e,fa_slmas s where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and b.supcd=s.slcode and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.catcd,s.slname)b " & _
             " where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd and a.slname *= b.slname and  a.lotno between '" & X & "' and '" & Y & "' group by a.lotno,a.lotdt,a.catcd,a.varCode,a.unit,a.ratecandy,a.val,a.bales,b.bales, a.stock,b.isskgs,a.godown,a.plotno,a.slname having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.godown,a.lotno", db, adOpenStatic
End If
RS2.MoveFirst
flg = " "
ab = 0
Do While Not RS2.EOF
    Set TEMP = New Recordset
    Co = Co + 1
        If Trim(W) <> "ALL" Then
        F_Date = Format(yfdate, "YYYY-MM-DD")
        T_Date = Format(V, "yyyy-mm-dd")
        X = X
        Y = Y
        SR = Trim(W)
        YFF = Year(V)
        Set RSV = New Recordset
        RSV.Open " SELECT case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select lotno,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select b.lotno,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and  b.lotno ='" & RS2("LOTNO") & "' group by b.lotno,b.bblflg ,b.ratekg " & _
                "union select b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                "group by b.lotno,b.bblflg,b.ratekg) a  group by lotno" & _
                " Union All " & _
                "select b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(ISNULL(NETWT,0)) * RATEKG as recvalue,0 as issvalue " & _
                "from rm_lot b " & _
                " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
                " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and  B.lotno ='" & RS2("LOTNO") & "' " & _
                " group by b.lotno,b.opflg,b.bblflg,RATEKG " & _
                " Union All " & _
                "select b.lotno,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                "rm_lot b,rm_issb c,rm_bale e where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and  b.lotno ='" & RS2("LOTNO") & "' group by b.lotno,b.opflg,b.bblflg,b.ratekg))a group by a.lotno order by a.lotno ", cnn, adOpenStatic, adLockBatchOptimistic
    Else
        Set RSV = New Recordset
        RSV.Open " SELECT case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                " ((select lotno,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                "select b.lotno,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and  b.lotno ='" & RS2("LOTNO") & "' group by b.lotno,b.bblflg ,b.ratekg " & _
                "union select b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(isnull(e.netwt,0)) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                "group by b.lotno,b.bblflg,b.ratekg) a  group by lotno" & _
                " Union All " & _
                "select b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(ISNULL(NETWT,0)) * RATEKG as recvalue,0 as issvalue " & _
                "from rm_lot b " & _
                " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and " & _
                " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and  B.lotno ='" & RS2("LOTNO") & "' " & _
                " group by b.lotno,b.opflg,b.bblflg,RATEKG " & _
                " Union All " & _
                "select b.lotno,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(isnull(e.netwt,0)) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                "rm_lot b,rm_issb c,rm_bale e where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and  b.lotno ='" & RS2("LOTNO") & "' group by b.lotno,b.opflg,b.bblflg,b.ratekg))a group by a.lotno order by a.lotno ", cnn, adOpenStatic, adLockBatchOptimistic
    End If

    
    
    If flg <> RS2("godown") Then
        flg = RS2("godown")
        If tot1 > 0 Then
            god(ab) = flg
            bale(ab) = tot1
            stock(ab) = tot3
            Value1(ab) = tot4
            ab = ab + 1
            tot1 = 0
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
        End If
                
        flg = RS2("godown")
    Else
        flg = RS2("godown")
    End If
   
    tot1 = tot1 + IIf(IsNull(RS2("bales")), 0, RS2("bales"))
    tot3 = tot3 + IIf(IsNull(RS2("stock")), 0, RS2("stock"))
    tot4 = tot4 + IIf(IsNull(RSV("CLOSEvalUE")), 0, RSV("CLOSEvalUE"))
    
    gtot1 = gtot1 + IIf(IsNull(RS2("bales")), 0, RS2("bales"))
    gtot3 = gtot3 + IIf(IsNull(RS2("stock")), 0, RS2("stock"))
    gtot4 = gtot4 + IIf(IsNull(RSV("CLOSEvalUE")), 0, RSV("CLOSEvalUE"))
    
    RS2.MoveNext
    Loop
    
    god(ab) = flg
    bale(ab) = tot1
    stock(ab) = tot3
    Value1(ab) = tot4
    ab = ab + 1
Co = Co + 1
Co = Co + 1
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
Set RS2 = New Recordset
RS2.Open "select a.varcode,b.godown,a.lotno,round(a.ratecy,0) AS RATECY,a.lotdt,case when a.bbflag ='B' then (a.quantity - a.passbl) else 0 end 'bale' ,case when a.bbflag ='R' then (a.quantity - a.passbl) else 0 end 'borah',round((a.netwt/a.quantity)*(a.quantity-a.passbl),2) 'Kgs',a.ratecy*(a.quantity-a.passbl) 'Value',isnull(b.plotno,' ')as plotno from rm_arrival a,rm_lot b where a.isgodown='y' and a.quantity-a.passbl>0 and a.lotno=b.lotno and a.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "'", cnn, adOpenDynamic, adLockOptimistic


Do While Not RS2.EOF
    
    tot1 = tot1 + IIf(IsNull(RS2("bale")), 0, RS2("bale"))
    tot2 = tot2 + IIf(IsNull(RS2("borah")), 0, RS2("borah"))
    tot3 = tot3 + IIf(IsNull(RS2("kgs")), 0, RS2("kgs"))
    tot4 = tot4 + IIf(IsNull(RSV("value")), 0, RS2("value"))
    tot5 = tot5 + IIf(IsNull(RS2("ratecy")), 0, RS2("ratecy"))
    
    gtot1 = gtot1 + IIf(IsNull(RS2("bale")), 0, RS2("bale"))
    gtot2 = gtot2 + IIf(IsNull(RS2("borah")), 0, RS2("borah"))
    gtot3 = gtot3 + IIf(IsNull(RS2("kgs")), 0, RS2("kgs"))
    gtot4 = gtot4 + IIf(IsNull(RS2("value")), 0, RS2("value"))
    gtot5 = gtot5 + IIf(IsNull(RS2("ratecy")), 0, RS2("ratecy"))
    
    RS2.MoveNext
Loop
Print #a, Space(5) & Chr(27) + "E" + CENTRE("GODOWNWISE - ABSTRACT AS ON " & Format(V, "dd/mm/yy"), 80, " ") + Chr(27) + "F"
Print #a,
Print #a, Space(5) + String(80, "-")
Print #a, Space(5) + "         GODOWN             BALES                  STOCK                  VALUE"
Print #a, Space(5) + String(80, "-")
gt1 = 0
gt2 = 0
gt3 = 0
For i = 0 To ab - 1
Print #a, Space(10) & Padl(god(i), 10, " ") & Space(8) & Padl(INF(bale(i), 0), 10, " ") & Space(8) & Padl(INF(stock(i), 3), 15, " ") & Space(8) & Padl(INF(Value1(i), 2), 15, " ") & Space(5)
gt1 = gt1 + val(bale(i))
gt2 = gt2 + val(stock(i))
gt3 = gt3 + val(Value1(i))
Next i
Print #a, Space(5) + String(80, "-")
Print #a, Space(10) + " ** TOTAL **" & Space(6) & Padl(INF(gt1, 0), 10, " ") & Space(8) & Padl(INF(gt2, 3), 15, " ") & Space(8) & Padl(INF(gt3, 2), 15, " ")
Print #a, Space(5) + String(80, "-")

'=====================ABSTRCT
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\slotg.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type slotg.txt>prn"
'Close #a
'RPTV.txtfile = "c:\slotg.txt"
'RPTV.Batfile = "c:\slotg.bat"
Call KALBATPROCESS("slotg")
End Sub
Public Sub StockGodownReport(U As String, V As String, W As String, DIVNAME, X As String, Y As String, ChkFlg As String, Fg As String, Tg As String, Optional pRecType As String)
Dim RS2 As Recordset
Dim rs1 As Recordset
Dim rs3 As Recordset
Dim RESULT As Recordset
Dim TEMP As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim gtot1 As Double
Dim ab As Integer
Dim gtot2 As Double
Dim god(100) As String, bale(100) As Double, stock(100) As Double, Value1(100) As Double
Dim gtot3 As Double, gt1 As Double, gt2 As Double, gt3 As Double
Dim gtot4 As Double
Dim gtot5 As Double
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim str As String
Dim flg As String
Dim cnn As Connection
Set cnn = New Connection

Set RS2 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
'rs2.Open "select  distinct a.tax_code,b.description from ig_invdt a,ig_tax b,ig_invhd c where a.tax_code*=b.tax_Code and a.inv_no=c.inv_no and c.date between '" & u & "'and '" & v & "' and a.tax_code between '" & w & "' and '" & z & "' and a.divcode='" & divcode & "'", cnn, adOpenStatic, adLockOptimistic
vrectype = Trim(Left(pRecType, 3))
cnn.CommandTimeout = 2000
db.CommandTimeout = 2000
Set RS2 = New Recordset
Set rs1 = New Recordset
        strSQL = ""
        strSQL = " select B.GOdown,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,BBLFLG as unit,RATECY,RATEKG,E.SLNAME,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
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
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE "
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, V)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

                    
        If Trim(str) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd ='" & Trim(W) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,B.GOdown Order by B.GOdown,A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & Trim(vrectype) & "' and b.lotyear='" & Year(yfdate) & "'  And b.catcd ='" & Trim(W) & "'  group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,B.GOdown Order by B.GOdown,A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd ='" & Trim(W) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,B.GOdown Order by B.GOdown,A.LOTDT,A.lotno"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,B.GOdown Order by B.GOdownA.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,B.GOdown Order by B.GOdown,A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname,B.GOdown Order by B.GOdown,A.LOTDT,A.lotno"
            End If
        End If



        Set RS2 = New Recordset
        RS2.Open strSQL, db, adOpenStatic
        



If RS2.BOF = False Then
    RS2.MoveFirst
Else
    MsgBox "No Record(s) Found", vbInformation, head
    Exit Sub
End If

Set RPTV = New Report.ReportView
a = FreeFile
Close
'Open "C:\slotg.TXT" For Output As #a
Open KALFOLDERDATA & "\slotg.TXT" For Output As #a
pg1 = 1
Co = 0
Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "main", ChkFlg)
flg = " "
ab = 0
Do While Not RS2.EOF
    
    Set rssup = New Recordset
    rssup.Open "select slname from rm_lot a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' and lotno=" & RS2("lotno") & " and lotdt='" & Format(RS2("LOTDT"), "yyyy-mm-dd") & "'", db, adOpenStatic
    Slname = ""
    If rssup.RecordCount > 0 Then
        Slname = rssup("slname")
    End If
    

    If flg <> RS2("godown") Then
        flg = RS2("godown")
        If tot1 > 0 Then
            If ChkFlg = "N" Then Print #a,
            god(ab) = flg
            bale(ab) = tot1
            stock(ab) = tot3
            Value1(ab) = tot4
            ab = ab + 1
            If ChkFlg = "N" Then Print #a, Space(17) & " ** Godownwise Total **" + Space(24) + Padl(INF(tot1, 0), 23, " ") + Padl(INF(tot2, 0), 1, " ") + Space(1) + Padl(INF(tot3, 3), 15, " ") + Space(1) + Padl(INF(tot5, 2), 7, " ") + Space(3) + Padl(INF(tot4, 2), 18, " ")
            If ChkFlg = "N" Then Print #a,
            tot1 = 0
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
        End If
            clokgs = 0
            CLOVALUE = 0
        If RS2("CLObales") + RS2("CLOBORAS") <= 0 Then
            clokgs = 0
            CLOVALUE = 0
        Else
            clokgs = RS2("CLOKGS")
            CLOVALUE = RS2("CLOSEVALUE")
        End If
        
        Set rs3 = New Recordset
        rs3.Open "select gname from rm_god where gcode='" & RS2("godown") & "'", db, adOpenStatic
        If rs3.RecordCount > 0 Then
            Godown = rs3(0)
        Else
            Godown = ""
        End If
        If ChkFlg = "N" Then Print #a, Space(5) + Padr((CStr(Godown)), 14, " ") + Space(0) + Padl(RS2("VarNAME"), 7, " ") + Space(2) + Padr(Slname, 29, " ") + Space(1) + Padl(RS2("lotno") & "/" & Format(RS2("lotdt"), "yy"), 8, " "); Space(1) + Padl(RS2("plotno"), 5, " "); Space(2); Padl(Format(RS2("lotdt"), "dd/mm/yy"), 8, " ") + Padl(INF(RS2("CLObales") + RS2("CLOBORAS"), 0), 5, " ") + Space(1) + Space(1) + Padl(INF(clokgs, 3), 15, " ") + Space(1) + Padl(INF(RS2("ratecy"), 0), 10, " ") + Space(0) + Padl(INF(CLOVALUE, 2), 18, " ")
        flg = RS2("godown")
    Else
        clokgs = 0
        CLOVALUE = 0
        If RS2("CLObales") + RS2("CLOBORAS") <= 0 Then
            clokgs = 0
            CLOVALUE = 0
        Else
            clokgs = RS2("CLOKGS")
            CLOVALUE = RS2("CLOSEVALUE")
        End If
        If ChkFlg = "N" Then Print #a, Space(19) + Padl(RS2("varname"), 7, " ") + Space(2) + Padr(Slname, 32, " ") + Space(1) + Padl(RS2("lotno"), 5, " "); Space(1) + Padl(RS2("plotno"), 5, " "); Space(2); Padl(Format(RS2("lotdt"), "dd/mm/yy"), 8, " ") + Padl(INF(RS2("CLObales") + RS2("CLOBORAS"), 0), 5, " ") + Space(1) + Space(1) + Padl(INF(clokgs, 3), 15, " ") + Space(1) + Padl(INF(RS2("ratecy"), 0), 10, " ") + Space(0) + Padl(INF(CLOVALUE, 2), 18, " ")
        flg = RS2("godown")
    End If
   
    ''tot1 = tot1 + IIf(IsNull(rs2("bales")), 0, rs2("bales"))
    tot1 = tot1 + RS2("CLObales") + RS2("CLOBORAS")
    'If rs2("CLObales") + rs2("CLOBORAS") > 0 Then
        tot3 = tot3 + RS2("CLOKGS")
        tot4 = tot4 + IIf(IsNull(RS2("CLOSEvalUE")), 0, RS2("CLOSEvalUE"))
    'End If
     
    gtot1 = gtot1 + RS2("CLObales") + RS2("CLOBORAS")
    'If rs2("CLObales") + rs2("CLOBORAS") > 0 Then
        gtot3 = gtot3 + RS2("CLOKGS")
        gtot4 = gtot4 + IIf(IsNull(RS2("CLOSEvalUE")), 0, RS2("CLOSEvalUE"))
    'End If
        
    If ChkFlg = "N" Then Co = Co + 1
    If Co >= PageLen Then
        Print #a, Space(5) + String(128, "-");
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Co = 0
        Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "main", ChkFlg)
    End If
    RS2.MoveNext
Loop
    
    If ChkFlg = "N" Then Print #a,
    god(ab) = flg
    bale(ab) = tot1
    stock(ab) = tot3
    Value1(ab) = tot4
    ab = ab + 1
'Print #A, Space(10) + Chr(27) & "E" & " ** Godownwise Total **" + Space(23) + Padl(INF(tot1, 0), 23, " ") + Padl(INF(tot2, 0), 6, " ") + Space(1) + Padl(INF(tot3, 3), 15, " ") + Space(1) + Padl(INF(tot5, 2), 8, " ") + Space(3) + Padl(INF(tot4, 2), 19, " ") & Chr(27) & "F"
    If ChkFlg = "N" Then
        Print #a, Space(17) & " ** Godownwise Total **" + Space(24) + Padl(INF(tot1, 0), 23, " ") + Padl(INF(tot2, 0), 1, " ") + Space(1) + Padl(INF(tot3, 3), 15, " ") + Space(1) + Padl(INF(tot5, 2), 7, " ") + Space(3) + Padl(INF(tot4, 2), 18, " ")
        Print #a,
        Print #a, Space(15) + "   ** Sub Total **" + Space(44) + Padl(INF(gtot1, 0), 10, " ") + Space(1) + Space(1) + Padl(INF(gtot3, 3), 15, " ") + Space(2) + Padl(INF(gtot5, 3), 9, " ") + Space(0) + Padl(INF(gtot4, 2), 18, " ")
        Co = Co + 1
        Print #a,
        Co = Co + 1
    End If
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "sub", ChkFlg)
Set RS2 = New Recordset
RS2.Open "select a.varcode,b.godown,a.lotno,round(a.ratecy,0) AS RATECY,a.lotdt,case when a.bbflag ='B' then (a.quantity - a.passbl) else 0 end 'bale' ,case when a.bbflag ='R' then (a.quantity - a.passbl) else 0 end 'borah',round((a.netwt/a.quantity)*(a.quantity-a.passbl),2) 'Kgs',a.ratecy*(a.quantity-a.passbl) 'Value',isnull(b.plotno,' ')as plotno from rm_arrival a,rm_lot b where a.isgodown='y' and a.quantity-a.passbl>0 and a.lotno=b.lotno and a.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.lotdt=b.lotdt", cnn, adOpenDynamic, adLockOptimistic


Do While Not RS2.EOF

    If ChkFlg = "N" Then
        Print #a, Space(10) + Padr((CStr(RS2("godown"))), 2, " ") + Space(4) + Padr(RS2("varcode"), 15, " ") + Space(2) + Padl(RS2("lotno"), 7, " ") + Space(1); Padl(RS2("plotno"), 5, " ") + Space(2) + Padl(Format(RS2("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(INF(RS2("bale"), 0), 10, " ") + Space(2) + Padl(INF(RS2("borah"), 0), 10, " ") + Space(1) + Padl(INF(RS2("kgs"), 2), 15, " ") + Space(1) + Padl(INF(RS2("ratecy"), 0), 12, " ") + Space(3) + Padl(INF(RS2("value"), 2), 18, " ")
        Co = Co + 1
    End If
    
    If Co >= PageLen Then
        Print #a, Space(5) + String(128, "-");
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Co = 0
        Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "sub", ChkFlg)
    End If
    
    tot1 = tot1 + IIf(IsNull(RS2("bale")), 0, RS2("bale"))
    tot2 = tot2 + IIf(IsNull(RS2("borah")), 0, RS2("borah"))
    tot3 = tot3 + IIf(IsNull(RS2("kgs")), 0, RS2("kgs"))
    tot4 = tot4 + IIf(IsNull(RS2("value")), 0, RS2("value"))
    tot5 = tot5 + IIf(IsNull(RS2("ratecy")), 0, RS2("ratecy"))
    
    gtot1 = gtot1 + IIf(IsNull(RS2("bale")), 0, RS2("bale"))
    gtot2 = gtot2 + IIf(IsNull(RS2("borah")), 0, RS2("borah"))
    gtot3 = gtot3 + IIf(IsNull(RS2("kgs")), 0, RS2("kgs"))
    gtot4 = gtot4 + IIf(IsNull(RS2("value")), 0, RS2("value"))
    gtot5 = gtot5 + IIf(IsNull(RS2("ratecy")), 0, RS2("ratecy"))
    
    RS2.MoveNext
Loop
If RS2.RecordCount > 0 And ChkFlg = "N" Then
    Print #a,
    Print #a, Space(14) + "   ** Sub Total **" + Space(44) + Padl(INF(tot1, 0), 10, " ") + Space(2) + Padl(INF(tot2, 3), 4, " ") + Space(1) + Padl(INF(tot3, 3), 7, " ") + Space(2) + Padl(INF(tot5, 3), 9, " ") + Space(3) + Padl(INF(tot4, 2), 18, " ")
End If

If ChkFlg = "N" Then
    Print #a, Space(5) + String(128, "-")
    Print #a, Space(14) + "   ** Grand Total **" + Space(43) + Padl(INF(gtot1, 0), 10, " ") + Space(2) + Padl(INF(gtot2, 3), 0, " ") + Space(0) + Padl(INF(gtot3, 3), 15, " ") + Space(2) + Padl(INF(gtot5, 3), 6, " ") + Space(3) + Padl(INF(gtot4, 2), 18, " ")
    Print #a, Space(5) + String(128, "-")
End If

'=======================ABSTRACT
If ChkFlg = "Y" Then
    Print #a, Chr(18)
    Print #a, Space(5) + String(80, "-")
    Print #a,
    Print #a, Space(5) & Chr(27) + "E" + CENTRE("GODOWNWISE - ABSTRACT", 80, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(5) + String(80, "-")
    Print #a, Space(5) + "         GODOWN             BALES                  STOCK                  VALUE"
    Print #a, Space(5) + String(80, "-")
    gt1 = 0
    gt2 = 0
    gt3 = 0
    For i = 0 To ab - 1
        Print #a, Space(10) & Padl(god(i), 10, " ") & Space(8) & Padl(INF(bale(i), 0), 10, " ") & Space(8) & Padl(INF(stock(i), 3), 15, " ") & Space(8) & Padl(INF(Value1(i), 2), 15, " ") & Space(5)
        gt1 = gt1 + val(bale(i))
        gt2 = gt2 + val(stock(i))
        gt3 = gt3 + val(Value1(i))
    Next i
    Print #a, Space(5) + String(80, "-")
    Print #a, Space(10) + " ** TOTAL **" & Space(6) & Padl(INF(gt1, 0), 10, " ") & Space(8) & Padl(INF(gt2, 3), 15, " ") & Space(8) & Padl(INF(gt3, 2), 15, " ")
    Print #a, Space(5) + String(80, "-")
End If

'=====================ABSTRCT
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\slotg.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type slotg.txt>prn"
'Close #a
'RPTV.txtfile = "c:\slotg.txt"
'RPTV.Batfile = "c:\slotg.bat"
Call KALBATPROCESS("slotg")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String, DIVNAME, Where As String, CF As String)
          If Where = "main" Then
            Print #a,
            Co = Co + 1
            Print #a, Chr(18)
            Co = Co + 1
            Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
            Co = Co + 1
            Print #a, Chr(15)
            Co = Co + 1
            SR = CStr(pdate) + Space(2)
            
            Print #a, Space(5) + "Closing Stock Godownwise" + Space(1) & "from " & Format(U, "dd/mm/yy") & " to " & Format(V, "dd/mm/yy") & Space(15); '& Padr(w, 20, " ")
            Print #a, Space(45) + Format(SR, "dd/mm/yy") + Space(2) + "Pg.:" + Space(1) + Padl(pg1, 3, " ")
            Co = Co + 1
            If CF = "N" Then
                
                Print #a, Space(5) + String(128, "-")
                Co = Co + 1
                Print #a, Space(5) + "Godown        Variety  Supplier                          Lot  Party  Received   <------ Closing --->     Rate/             Value"
                Co = Co + 1
                'Print #A, Space(5) + "Code                                               No. LotNo Date         Bale     Borah       Kgs     Candy "
                Print #a, Space(5) + "Code                                                      No. LotNo  Date       Bale            Kgs      Candy "
                Co = Co + 1
                Print #a, Space(5) + String(128, "-")
                Co = Co + 1
            End If
          ElseIf Where = "sub" And CF = "N" Then
            Print #a, Space(5) + "Rejected Lots" '+ Chr(27) + "F" + Chr(15)  '+ Space(35) + sr + "Pg.No :" + Space(1) + CStr(pg1)
            Co = Co + 1
            Print #a,
            Co = Co + 1
          End If
End Sub

Public Sub StockGodownAbsReport(U As String, V As String, W As String, DIVNAME, X As String, Y As String)
Dim RS2 As Recordset
Dim rs1 As Recordset
Dim RESULT As Recordset
Dim TEMP As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim str As String
Dim flg As String
Dim cnn As Connection
Set cnn = New Connection

Set RS2 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs1 = New Recordset
If Trim(W) <> "ALL" Then
   
    rs1.Open " select a.lotno,a.lotdt,a.catcd,a.varname,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.godown,a.ratecandy from ( " & _
             " select distinct a.LOTNO,a.LOTDT,a.catcd,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),2) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0)/355.6187,2) 'val',round((ratecy),0) as ratecandy,a.godown from rm_lot a,rm_var c  where    a.DIVCODE ='" & Divcode & "' and a.catcd='" & W & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
             " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),2) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and  a.catcd='" & W & "' and b.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.catcd)b " & _
             " where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd and a.lotno between '" & X & "' and '" & Y & "' group by a.lotno,a.lotdt,a.catcd,a.varname,a.unit,a.ratecandy,a.val,a.bales,b.bales, a.stock,b.isskgs,a.godown having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.godown,a.lotno", db, adOpenStatic
            
Else
    rs1.Open " select a.lotno,a.lotdt,a.catcd,a.varname,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.godown,a.ratecandy from ( " & _
             " select distinct a.LOTNO,a.LOTDT,a.catcd,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),2) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0)/355.6187,2) 'val',round((ratecy),0) as ratecandy,a.godown from rm_lot a,rm_var c  where    a.DIVCODE ='" & Divcode & "' and  a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
             " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),2) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   and b.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.catcd)b " & _
             " where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd and a.lotno between '" & X & "' and '" & Y & "' group by a.lotno,a.lotdt,a.catcd,a.varname,a.unit,a.ratecandy,a.val,a.bales,b.bales, a.stock,b.isskgs,a.godown having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.godown,a.lotno", db, adOpenStatic
End If
If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\slotg.TXT" For Output As #a
Open KALFOLDERDATA & "\slotg.TXT" For Output As #a
pg1 = 1
Co = 0
Call PartyHeader1(pg1, Co, U, V, W, DIVNAME, "main")
Set RS2 = New Recordset
If Trim(W) <> "ALL" Then
    'rs2.Open " select b.varcode,b.godown,b.lotno,round(b.ratecy,0),b.lotdt,case when b.bblflg ='B' then (sum(bales)-sum(isnull(issbal,0))) else 0 end 'clobale' ,case when b.bblflg ='R' then  sum(bales) else 0 end 'cloborah',round((sum(b.netwt)-sum(isnull(b.isswt,0))),2) 'cloKgs',sum(netwt*ratekg) 'cloVal',round(avg(ratekg)*355.6187 ,0)as ratecandy,isnull(b.plotno,'')as plotno from rm_lot b  where b.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.catcd='" & Mid$(w, 1, InStr(w, "-") - 1) & "' group by b.varcode,b.godown,b.lotno,b.ratecy,b.lotdt,bblflg,b.plotno order by b.godown,b.varcode,b.lotno,b.plotno", DB, adOpenStatic
    RS2.Open " select a.lotno,a.lotdt,a.catcd,a.varname,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.godown,a.ratecandy,a.plotno from ( " & _
             " select distinct a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),2) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0)/355.6187,2) 'val',round((ratecy),0) as ratecandy,a.godown,a.plotno from rm_lot a,rm_var c  where    a.DIVCODE ='" & Divcode & "' and a.catcd='" & W & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
             " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),2) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and  a.catcd='" & W & "' and b.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.catcd)b " & _
             " where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd and a.lotno between '" & X & "' and '" & Y & "' group by a.lotno,a.lotdt,a.catcd,a.varname,a.unit,a.ratecandy,a.val,a.bales,b.bales, a.stock,b.isskgs,a.godown,a.plotno having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.godown,a.lotno", db, adOpenStatic
Else
    'rs2.Open " select b.varcode,b.godown,b.lotno,round(b.ratecy,0),b.lotdt,case when b.bblflg ='B' then (sum(bales)-sum(isnull(issbal,0))) else 0 end 'clobale' ,case when b.bblflg ='R' then  sum(bales) else 0 end 'cloborah',round((sum(b.netwt)-sum(isnull(b.isswt,0))),2) 'cloKgs',sum(netwt*ratekg) 'cloVal',round(avg(ratekg)*355.6187 ,0) as ratecandy,isnull(b.plotno,'')as plotno from rm_lot b  where b.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "'  group by b.varcode,b.godown,b.lotno,b.ratecy,b.lotdt,bblflg,b.plotno order by b.godown,b.varcode,b.lotno,b.plotno", DB, adOpenStatic
    RS2.Open " select a.lotno,a.lotdt,a.catcd,a.varname,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.godown,a.ratecandy,a.plotno from ( " & _
             " select distinct a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),2) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0)/355.6187,2) 'val',round((ratecy),0) as ratecandy,a.godown,a.plotno from rm_lot a,rm_var c  where    a.DIVCODE ='" & Divcode & "'  and a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a, " & _
             " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),2) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotyear='" & Year(yfdate) & "' group by a.lotno,a.lotdt,a.catcd)b " & _
             " where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd and a.lotno between '" & X & "' and '" & Y & "' group by a.lotno,a.lotdt,a.catcd,a.varname,a.unit,a.ratecandy,a.val,a.bales,b.bales, a.stock,b.isskgs,a.godown,a.plotno having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.godown,a.lotno", db, adOpenStatic
End If
RS2.MoveFirst
flg = " "
bl = " "
Do While Not RS2.EOF
    'Set temp = New Recordset
    'Ravi Temp.Open "select distinct ratecy from rm_arrival where lotno = " & rs2("lotno") & " and lotdt='" & Format(rs2("lotdt"), "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockOptimistic
    'Temp.Open "select distinct isnull(ratecy,0) from rm_arrival where lotno = " & rs2("lotno") & " and lotdt='" & Format(rs2("lotdt"), "yyyy/mm/dd") & "'", cnn, adOpenDynamic, adLockOptimistic
    'If Not Temp.EOF Then v = Temp(0) Else v = 0
    'Print #A,
    'co = co + 1
    
    Set rsVar = New Recordset
    rsVar.Open "select varcode from rm_var where varname = '" & RS2("Varname") & "'", db, adOpenStatic
    
    If flg <> RS2("godown") Then
        If bl <> " " Then
            Print #a,
            Print #a, Space(14) & "**  Total  **   " + Padl(INF(bl, 0), 9, " ")
            Co = Co + 2
        End If
        flg = RS2("godown")
        bl = 0
        Print #a,
        Print #a, Space(8) + Padr((CStr(RS2("godown"))), 2, " ") + Space(3) + Padr(rsVar("Varcode"), 4, " ") + Space(38) + Padl(RS2("lotno"), 4, " ") & Space(17) + Padl(INF(RS2("bales"), 0), 5, " ")

        flg = RS2("godown")
        Co = Co + 2
        bl = bl + RS2("bales")
    Else
'        Set Namers = New Recordset
'        Namers.Open "Select varname from rm_Var where varcode='" & rs2("varcode") & "'", DB, adOpenStatic
        'Print #A, Space(12) + Padr(Namers(0), 16, " ") + Space(2) + Padl(rs2("lotno"), 7, " ") + Space(1) + Padl(rs2("plotno"), 6, " "); Space(2) + Padl(rs2("lotdt"), 10, " ") + Padl(INF(rs2("clobale"), 0), 9, " ") + Space(2) + Padl(INF(rs2("cloborah"), 0), 10, " ") + Space(1) + Padl(INF(rs2("clokgs"), 2), 15, " ") + Space(3) + Padl(INF(rs2(9), 0), 12, " ") + Space(3) + Padl(INF(rs2("cloval"), 2), 18, " ")
        Print #a, Space(13) + Padr(rsVar("Varcode"), 4, " ") + Space(38) + Padl(RS2("lotno"), 4, " ") & Space(17) + Padl(INF(RS2("bales"), 0), 5, " ")
        flg = RS2("godown")
        bl = bl + RS2("bales")
        Co = Co + 1
    End If
    If Co >= PageLen Then
        Print #a, Space(5) + String(81, "-");
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Co = 0
        Call PartyHeader1(pg1, Co, U, V, W, DIVNAME, "main")
    End If
    RS2.MoveNext
    Loop
    If RS2.EOF = True Then
         Print #a,
         Print #a, Space(14) & "**  Total  **   " + Padl(INF(bl, 0), 9, " ")
         Co = Co + 2
    End If
    Print #a,
    Co = Co + 1
    Print #a, Space(5) + String(81, "-");
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\slotg.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type slotg.txt>prn"
'Close #a
'RPTV.txtfile = "c:\slotg.txt"
'RPTV.Batfile = "c:\slotg.bat"
Call KALBATPROCESS("slotg")
End Sub
Public Sub PartyHeader1(pg1 As Integer, Co As Integer, U As String, V As String, W As String, DIVNAME, Where As String)
            Print #a, Chr(18)
            Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
            Print #a,
            SR = CStr(pdate) + Space(2)
            Print #a, Space(5) + "Closing Stock Godownwise" + Chr(27) + "F" + "on" & Space(1) & Format(V, "dd/mm/yyyy") & Space(5) & Padr(W, 20, " ")
            Print #a, Space(55) + SR + "Pg.:" + Space(1) + CStr(pg1) + Chr(18)
            Print #a, Space(5) + String(81, "-")
            Print #a, Space(5) + "Godowncode   Variety           Lot No      Bales"
            Print #a, Space(5) + String(81, "-")
            Co = Co + 8
End Sub



