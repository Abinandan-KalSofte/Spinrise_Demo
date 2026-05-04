Attribute VB_Name = "RMI_ReportProcedure"
Dim cn As New Connection
Public Sub Trans_IssuePrint(TDocNo As String, TDocDt As String)
    Call OpenDbConnect
    sql = ""
    cn.Execute "if exists(select name from sysobjects where  name='sp_issuesreport') drop Proc sp_issuesreport "
    'QueryCat " Create Proc sp_issuesreport @Divcode AS varchar(5),@date AS varchar(10),@dcno AS varchar(10) as "
    'QueryCat " Select a.VARCODE,a.LotNo,a.LotDt,grwt,b.tarewt,isnull(b.moiSture_ET,0) as moiture,b.netwt,isnull(b.IsQty,0)'IsQty',isnull(C.ActIssKgs,0) 'AIKgs',isnull(C.ActIssKgs,0)-isnull(b.IsQty,0) 'Excess', "
    'QueryCat " c.Baleno,c.actisskgs,f.MIXGRPNAME,g.cntname,e.ordno,h.divname,h.ADD1,h.ADD2,h.ADD3,h.CITY,h.PINCODE,h.HOState,h.PHONE1 , h.EMAIL, h.WEBADDR, h.FAX, V.VarName, h.DIV_PRINTNAME, h.DIV_UNITNAME, h.DIV_LOGO"
   ' QueryCat " from rm_lot a,rm_bale b,rm_issb c, rm_issuetype d ,RM_ISSH e,RM_MIXGRP f,RM_COUNT g ,pp_divmas h,rm_var v "
   ' QueryCat " Where a.Divcode = b.Divcode And a.Varcode = b.Varcode And a.LOTNO = b.LOTNO And a.LOTDT = b.LOTDT And a.catcd = b.catcd and b.DIVCODE=c.DIVCODE AND b.LOTNO=c.LOTNO AND b.BALENO=c.BALENO AND b.VARCODE=c.VARCODE AND b.CATCD=c.CATCD "
   ' QueryCat " AND c.ISSTYPE=d.issue_code AND e.Divcode = C.Divcode And e.docNo = C.docNo And e.DOCDT = C.DOCDT And e.ISSTYPE = C.ISSTYPE AND e.MIXGRP=f.MIXGRPCD "
   ' QueryCat " AND e.DIVCODE=f.DIVCODE AND e.cntcd=g.cntcd AND e.DIVCODE=g.Divcode AND a.DIVCODE=h.DIVCODE AND a.Varcode = V.Varcode And a.catcd = V.catcd and a.divcode ='" & Divcode & "' and c.docno =" & TDocNo & " AND c.DOCDT='" & Format(TDocDt, "yyyy-mm-dd" & "' ", Sql
   
   QueryCat " Create Proc sp_issuesreport @Divcode AS varchar(5),@date AS varchar(10),@dcno AS varchar(10) as "
    QueryCat " Select e.docno,e.docdt,a.VARCODE,a.LotNo,a.LotDt,grwt,b.tarewt,isnull(b.moiSture_ET,0) as moiture,b.netwt,isnull(b.IsQty,0)'IsQty',isnull(C.ActIssKgs,0) 'AIKgs',isnull(C.ActIssKgs,0)-isnull(b.IsQty,0) 'Excess', "
    QueryCat " c.Baleno,c.actisskgs,f.MIXGRPNAME,g.cntname,e.ordno,h.divname,h.ADD1,h.ADD2,h.ADD3,h.CITY,h.PINCODE,h.HOState,h.PHONE1 , h.EMAIL, h.WEBADDR, h.FAX, V.VarName, h.DIV_PRINTNAME, h.DIV_UNITNAME, h.DIV_LOGO,h.gstinno,h.pan, v.IsOrganic"
    QueryCat " from rm_lot a inner join rm_bale b on a.Divcode = b.Divcode And a.Varcode = b.Varcode And a.LOTNO = b.LOTNO And a.LOTDT = b.LOTDT And a.catcd = b.catcd  inner join   rm_issb c  on  b.DIVCODE=c.DIVCODE AND b.LOTNO=c.LOTNO AND b.BALENO=c.BALENO AND b.VARCODE=c.VARCODE AND b.CATCD=c.CATCD and c.lotdt=b.lotdt "
    QueryCat "  inner join  rm_issuetype d on c.ISSTYPE=d.issue_code   inner join RM_ISSH e  on e.Divcode = C.Divcode And e.docNo = C.docNo And e.DOCDT = C.DOCDT And e.ISSTYPE = C.ISSTYPE"
    QueryCat "  left join RM_MIXGRP f on e.DIVCODE=f.DIVCODE AND  e.MIXGRP=f.MIXGRPCD "
    QueryCat " left join RM_COUNT g on e.DIVCODE=g.Divcode and   e.cntcd=g.cntcd  inner join pp_divmas h  on a.DIVCODE=h.DIVCODE "
    QueryCat " inner join rm_var v  on  a.Varcode = V.Varcode And a.catcd = V.catcd  "
    QueryCat " Where "
    QueryCat " a.divcode ='" & Divcode & "' and c.docno =" & TDocNo & " AND c.DOCDT='" & Format(TDocDt, "yyyy-mm-dd") & "' and  a.lotyear='" & Format(yfdate, "yyyy") & "' ", sql
    cn.Execute sql
End Sub

Public Sub RMI_WeightList()
    Call OpenDbConnect
    sql = ""
    
    If CustID = "SOUTHERN" Then
    
    'Cn.Execute "if exists(select name from sysobjects where  name='RawMatrialWeightList') drop Proc RawMatrialWeightList "
    'QueryCat " CREATE Proc [RawMatrialWeightList]  @Divcode VARCHAR (5) As "
    'QueryCat " SELECT  a.b1,a.g1,a.b2,a.g2,a.b3,a.g3,a.b4,a.g4,a.b5,a.g5,a.b6,a.g6,a.b7,a.g7,a.b8,a.g8,a.b9,a.g9,A.b10,a.g10,a.SNO,catname,VARNAME,Quantity,d.slname,b.LOTNO,cast(b.LOTNO AS VARCHAR)+'/'+ (CAST(right(YEAR(p.AYFDATE),2) AS VARCHAR)+'-'+CAST(right(YEAR(p.AYLDATE),2) AS VARCHAR)) AS Lotwithyear,prno,b.plotno,e.b2 as [Quantity],e.b3 as [Grosswt], "
    'QueryCat " e.b4 as [tarewt],e.b5 as [Netwt],e.b6 as [RateCy],e.b7 as [Ptywgt],e.b8 as [LotDt],e.b9 as [Allow], "
    'QueryCat " e.b10 as [lrfrtAmt], b.catname, prno, b.ptywgt ,b.ptarewt, b.pnetwt, b.lotdt, b.ALLOWANCEAMT, b.Billno,"
    'QueryCat " b.lorrynos,   pd.DIV_LOGO, pd.DIVNAME, pd.add1,pd.add2,pd.add3, pd.phone1, pd.fax, pd.email,pd.webaddr , pd.PINCODE, pd.HOState, pd.CITY, pd.DIV_PRINTNAME, pd.DIV_UNITNAME "
    'QueryCat " FROM ACH1 a,ACH3 b,rm_var c,fa_slmas d,ACH4 e,pp_divmas pd,PP_YEAR p,RM_LOT l Where a.lotno=b.lotno and a.catcd=b.catcd and b.varcode=c.varcode and d.slcode=b.supcd and b.lotno=e.b1 and l.LOTNO = a.LOTNO AND l.LOTYEAR= LEFT(p.AYEAR,4) and a.lottype='A'  AND pd.DIVCODE ='" & Divcode & "' Order by a.Lotno", Sql
    
    'Cn.Execute "if exists(select name from sysobjects where  name='RawMatrialWeightList') drop Proc RawMatrialWeightList "
    'QueryCat " CREATE Proc [RawMatrialWeightList]  @Divcode VARCHAR (5) As "
    'QueryCat " SELECT  a.b1,a.g1,a.b2,a.g2,a.b3,a.g3,a.b4,a.g4,a.b5,a.g5,a.b6,a.g6,a.b7,a.g7,a.b8,a.g8,a.b9,a.g9,A.b10,a.g10,a.SNO,catname,VARNAME,Quantity,d.slname,b.LOTNO,cast(b.LOTNO AS VARCHAR)+'/'+ (CAST(right(YEAR(p.AYFDATE),2) AS VARCHAR)+'-'+CAST(right(YEAR(p.AYLDATE),2) AS VARCHAR)) AS Lotwithyear,prno,b.plotno,e.b2 as [Quantity],e.b3 as [Grosswt], "
    'QueryCat " e.b4 as [tarewt],e.b5 as [Netwt],e.b6 as [RateCy],e.b7 as [Ptywgt],e.b8 as [LotDt],e.b9 as [Allow], "
    'QueryCat " e.b10 as [lrfrtAmt], b.catname, prno, b.ptywgt ,b.ptarewt, b.pnetwt, b.lotdt, b.ALLOWANCEAMT, b.Billno,"
    'QueryCat " b.lorrynos,   pd.DIV_LOGO, pd.DIVNAME, pd.add1,pd.add2,pd.add3, pd.phone1, pd.fax, pd.email,pd.webaddr , pd.PINCODE, pd.HOState, pd.CITY, pd.DIV_PRINTNAME, pd.DIV_UNITNAME "
    'QueryCat " FROM ACH1 a,ACH3 b,rm_var c,fa_slmas d,ACH4 e,pp_divmas pd,PP_YEAR p,RM_LOT l Where a.lotno=b.lotno and a.catcd=b.catcd and b.varcode=c.varcode and d.slcode=b.supcd and b.lotno=e.b1 and l.LOTNO = a.LOTNO AND l.LOTYEAR= LEFT(p.AYEAR,4) and a.lottype='A'  AND pd.DIVCODE ='" & Divcode & "'  Order by a.Lotno", Sql
    ''AND a.catcd= '" & Left(DataCombo7, 1) & "' AND a.Lotno BETWEEN '" & DCmbFLtN.Text & "' and '" & DCmbTLtN.Text & "' AND b.lotdt BETWEEN '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker3.value, "yyyy-mm-dd") & "'
    
    
        cn.Execute " if exists(select name from sysobjects where  name='RawMatrialWeightList') drop Proc RawMatrialWeightList "
        QueryCat " CREATE Proc [RawMatrialWeightList]  @Divcode VARCHAR (5) As "
        QueryCat " SELECT  a.b1,a.g1,a.b2,a.g2,a.b3,a.g3,a.b4,a.g4,a.b5,a.g5,a.b6,a.g6,a.b7,a.g7,a.b8,a.g8,a.b9,a.g9,A.b10,a.g10,"
        QueryCat " a.SNO,c.CATCD,catname,VARNAME,Quantity,d.slname,b.LOTNO,cast(b.LOTNO AS VARCHAR)+'/'+ (CAST(right(YEAR(p.AYFDATE),2) AS VARCHAR)+'-'+CAST(right(YEAR(p.AYLDATE),2) AS VARCHAR)) AS Lotwithyear,"
        QueryCat " prno,b.plotno,(e.b2) as [Quantity],(e.b3) as [Grosswt],(e.b4) as [tarewt],(e.b5) as [Netwt],(e.b6) as [RateCy]"
        QueryCat " ,(e.b8) as [LotDt],(e.b9) as [Allow], (e.b10) as [lrfrtAmt] ,e.b7 as [Ptywgt],b.catname, prno, b.ptywgt ,b.ptarewt,"
        QueryCat " b.pnetwt, b.lotdt, b.ALLOWANCEAMT, b.Billno, b.lorrynos,pd.DIV_LOGO, pd.DIVNAME, pd.add1,pd.add2,pd.add3, "
        QueryCat " pd.phone1, pd.fax, pd.email,pd.webaddr, pd.PINCODE,pd.HOState, pd.CITY, pd.DIV_PRINTNAME, pd.DIV_UNITNAME "
        QueryCat " FROM ACH4 e LEFT OUTER JOIN ACH3 b ON e.catcd=b.catcd AND e.b1=b.lotno  AND e.lotdt=b.lotdt   LEFT OUTER JOIN rm_var c ON c.VARCODE=b.varcode and  c.catcd=b.catcd"
        QueryCat " LEFT OUTER JOIN fa_slmas d ON d.slcode=b.supcd  LEFT OUTER JOIN ACH1 a ON b.catcd=a.catcd AND b.lotno=a.lotno AND e.lotdt=a.lotdt    "
        QueryCat " LEFT OUTER JOIN RM_LOT l ON d.slcode=l.supcd  and  a.LOTNO=l.LOTNO AND a.catcd = l.CATCD AND l.LOTTYPE=a.LOTTYPE AND b.varcode=l.varcode AND l.LOTDT=e.lotdt LEFT OUTER JOIN PP_YEAR p on l.LOTDT BETWEEN p.AYFDATE AND p.AYLDATE"
        QueryCat " LEFT OUTER JOIN pp_divmas pd ON pd.DIVCODE='" & Divcode & "'  WHERE l.LOTYEAR=year(p.AYFDATE) and a.lottype='A' AND  c.CATCD='" & Left(repform1.DataCombo7, 1) & "'  ", sql
        'l.Divcode='" & Divcode & "' and  AND b.LOTNO BETWEEN '" & repform1.DCmbFLtN.Text & "' and '" & repform1.DCmbTLtN.Text & "' AND b.lotdt BETWEEN '" & Format(repform1.DTPicker2.value, "yyyy-mm-dd") & "' and '" & Format(repform1.DTPicker3.value, "yyyy-mm-dd") & "' ", Sql
    
    Else
'
'        Cn.Execute "if exists(select name from sysobjects where  name='RawMatrialWeightList') drop Proc RawMatrialWeightList "
'        QueryCat " CREATE Proc [RawMatrialWeightList]  @Divcode VARCHAR (5) As "
'        QueryCat " SELECT  a.b1,a.g1,a.b2,a.g2,a.b3,a.g3,a.b4,a.g4,a.b5,a.g5,a.b6,a.g6,a.b7,a.g7,a.b8,a.g8,a.b9,a.g9,A.b10,a.g10,SNO,catname,VARNAME,Quantity,d.slname,b.LOTNO,prno,plotno,e.b2 as [Quantity],e.b3 as [Grosswt], "
'        QueryCat " e.b4 as [tarewt],e.b5 as [Netwt],e.b6 as [RateCy],e.b7 as [Ptywgt],e.b8 as [LotDt],e.b9 as [Allow], "
'        QueryCat " e.b10 as [lrfrtAmt], b.catname, prno, b.ptywgt ,b.ptarewt, b.pnetwt, b.lotdt, b.ALLOWANCEAMT, b.Billno,"
'        QueryCat " b.lorrynos,   pd.DIV_LOGO, pd.DIVNAME, pd.add1,pd.add2,pd.add3, pd.phone1, pd.fax, pd.email,pd.webaddr , pd.PINCODE, pd.HOState, pd.CITY, pd.DIV_PRINTNAME, pd.DIV_UNITNAME "
'        QueryCat " FROM ACH1 a,ACH3 b,rm_var c,fa_slmas d,ACH4 e,pp_divmas pd Where a.lotno=b.lotno and a.catcd=b.catcd and b.varcode=c.varcode and d.slcode=b.supcd and b.lotno=e.b1 and lottype='A'  AND pd.DIVCODE ='" & Divcode & "' Order by a.Lotno", Sql
'
        cn.Execute "if exists(select name from sysobjects where  name='RawMatrialWeightList') drop Proc RawMatrialWeightList "
        QueryCat " CREATE Proc [RawMatrialWeightList]  @Divcode VARCHAR (5) As "
        QueryCat " SELECT  a.b1,a.g1,a.b2,a.g2,a.b3,a.g3,a.b4,a.g4,a.b5,a.g5,a.b6,a.g6,a.b7,a.g7,a.b8,a.g8,a.b9,a.g9,A.b10,a.g10,a.SNO,catname,VARNAME,Quantity,d.slname,b.LOTNO,prno,b.plotno,e.b2 as [Quantity],e.b3 as [Grosswt], "
        QueryCat " e.b4 as [tarewt],e.b5 as [Netwt],e.b6 as [RateCy],e.b7 as [Ptywgt],e.b8 as [LotDt],e.b9 as [Allow], "
        QueryCat " e.b10 as [lrfrtAmt], b.catname, prno, b.ptywgt ,b.ptarewt, b.pnetwt, b.lotdt, b.ALLOWANCEAMT, b.Billno,"
        QueryCat " b.lorrynos, pd.DIV_LOGO, pd.DIVNAME, pd.add1,pd.add2,pd.add3, pd.phone1, pd.fax, pd.email,pd.webaddr , pd.PINCODE, pd.HOState, pd.CITY, pd.DIV_PRINTNAME, pd.DIV_UNITNAME "
        QueryCat " FROM ACH4 e  LEFT OUTER JOIN ACH3 b ON e.catcd=b.catcd AND e.b1=b.lotno and e.lotdt=b.lotdt LEFT OUTER JOIN rm_var c ON c.VARCODE=b.varcode  "
        QueryCat " LEFT OUTER JOIN fa_slmas d ON d.slcode=b.supcd  LEFT OUTER JOIN ACH1 a ON e.catcd=a.catcd AND e.b1=a.lotno AND e.lotdt=a.lotdt   "
        QueryCat " LEFT OUTER JOIN RM_LOT l ON d.slcode=l.supcd  and a.LOTNO=l.LOTNO AND a.catcd = l.CATCD AND l.LOTTYPE=a.LOTTYPE and b.lotdt=l.lotdt  LEFT OUTER JOIN PP_YEAR p on l.LOTDT BETWEEN p.AYFDATE AND p.AYLDATE"
        QueryCat " LEFT OUTER JOIN pp_divmas pd ON pd.DIVCODE='" & Divcode & "'  WHERE l.LOTYEAR=year(p.AYFDATE) and c.CATCD='" & Left(repform1.DataCombo7, 1) & "'"
        QueryCat " and pd.DIVCODE ='" & Divcode & "' Order by a.Lotno ", sql
    
    End If
        
    cn.Execute sql
End Sub
Public Sub RMI_ReceiptRegVarietywise(fdt As String, Tdt As String, LYear As String)
    Call OpenDbConnect
    
  If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'    cn.Execute "if exists(select name from sysobjects where  name='SP_rmi_receiptreg_varitywise') drop Proc SP_rmi_receiptreg_varitywise "
'    Sql = ""
'    QueryCat "create proc SP_rmi_receiptreg_varitywise  @Divcode as varchar(5),@FromDate as varchar(10),@Todate as varchar(10),@Lotyear as varchar(5) as "
'    QueryCat " SELECT     A.VARCODE, B.VARNAME, A.ARRDT, A.LOTNO, C.slname, SUM(A.BALES) AS Bales_qty,CASE WHEN A.BBLFLG = 'B' THEN 'Bales' ELSE 'Borah' END AS UNIT, ROUND(SUM(A.favaourablewgt), 2) AS KGS,"
'    QueryCat " AVG(A.RATEKG) AS 'RATE/CANDY', SUM(A.NETWT) * ROUND(ISNULL(A.RATECY, 0) / 355.6187, 2) AS 'VALUE',ISNULL(A.RATECY, 0) AS ratecy, SUM(A.LANDCOSTWITHTAX) AS totlandcost, A.ARRNO, A.inwardno, A.inwarddate,"
'    QueryCat " e.ORDQTY, e.CANDYRATE, e.CONTNO, e.CONTDT, SUM(A.LRFRTAMT) AS freight, d.PRNO AS SERIALNO,PP_DIVMAS.DIVNAME , PP_DIVMAS.ADD1, a.ratekg FROM RM_LOT AS A INNER JOIN RM_ARRIVAL AS d ON A.ARRNO = d.ARRNO AND A.DIVCODE = d.DIVCODE AND A.ARRDT = d.ARRDATE AND "
'    QueryCat " A.VARCODE = d.VARCODE AND A.LOTNO = d.LOTNO AND A.LOTDT = d.lotdt AND A.SUPCD = d.SUPCD INNER JOIN RM_CONT AS e ON d.CONTNO = e.CONTNO AND d.CONTDT = e.CONTDT  AND A.SUPCD = e.SUPCD AND d.VARCODE = e.VARCODE  and (( E.DIVCODE =D.Gdivcode and E.im_ind  ='I') or D.DIVCODE=E.DIVCODE)   INNER JOIN "
'    QueryCat " RM_VAR AS B ON A.VARCODE = B.VARCODE INNER JOIN FA_SLMAS AS C ON A.SUPCD = C.slcode INNER JOIN PP_DIVMAS ON A.DIVCODE = PP_DIVMAS.DIVCODE WHERE     (A.LOTDT BETWEEN @FromDate AND @Todate) AND (A.OPFLG = 'N') AND (A.REJFLG = 'N') AND (A.LOTYEAR = @Lotyear) AND (A.DIVCODE = @Divcode) "
'    QueryCat " GROUP BY A.VARCODE, B.VARNAME, A.ARRDT, A.LOTNO, C.slname, A.BBLFLG, A.RATECY, A.ARRNO, A.inwardno, a.inwarddate , e.ORDQTY, e.CANDYRATE, e.contno, e.contdt,a.ratekg, d.PRNO, PP_DIVMAS.DIVNAME, PP_DIVMAS.ADD1 ORDER BY A.LOTNO", Sql
'    cn.Execute Sql
  Else
     cn.Execute "if exists(select name from sysobjects where  name='SP_rmi_receiptreg_varitywise') drop Proc SP_rmi_receiptreg_varitywise "
    sql = ""
    QueryCat "create proc SP_rmi_receiptreg_varitywise  @Divcode as varchar(5),@FromDate as varchar(10),@Todate as varchar(10),@Lotyear as varchar(5) as "
    QueryCat " SELECT     A.VARCODE, B.VARNAME, A.ARRDT, A.LOTNO, C.slname, SUM(A.BALES) AS Bales_qty,CASE WHEN A.BBLFLG = 'B' THEN 'Bales' ELSE 'Borah' END AS UNIT, ROUND(SUM(A.favaourablewgt), 2) AS KGS,"
    QueryCat " AVG(A.RATEKG) AS 'RATE/CANDY', SUM(A.NETWT) * ROUND(ISNULL(A.RATECY, 0) / 355.6187, 2) AS 'VALUE',ISNULL(A.RATECY, 0) AS ratecy, SUM(A.TOTLANDCOST) AS totlandcost, A.ARRNO, A.inwardno, A.inwarddate,"
    QueryCat " e.ORDQTY, e.CANDYRATE, e.CONTNO, e.CONTDT, SUM(A.LRFRTAMT) AS freight, d.PRNO AS SERIALNO,PP_DIVMAS.DIVNAME , PP_DIVMAS.ADD1, a.ratekg FROM RM_LOT AS A INNER JOIN RM_ARRIVAL AS d ON A.ARRNO = d.ARRNO AND A.DIVCODE = d.DIVCODE AND A.ARRDT = d.ARRDATE AND "
    QueryCat " A.VARCODE = d.VARCODE AND A.LOTNO = d.LOTNO AND A.LOTDT = d.lotdt AND A.SUPCD = d.SUPCD INNER JOIN RM_CONT AS e ON d.CONTNO = e.CONTNO AND d.CONTDT = e.CONTDT AND d.DIVCODE = e.DIVCODE AND A.SUPCD = e.SUPCD AND d.VARCODE = e.VARCODE AND A.DIVCODE = e.DIVCODE INNER JOIN "
    QueryCat " RM_VAR AS B ON A.VARCODE = B.VARCODE INNER JOIN FA_SLMAS AS C ON A.SUPCD = C.slcode INNER JOIN PP_DIVMAS ON A.DIVCODE = PP_DIVMAS.DIVCODE WHERE     (A.LOTDT BETWEEN @FromDate AND @Todate) AND (A.OPFLG = 'N') AND (A.REJFLG = 'N') AND (A.LOTYEAR = @Lotyear) AND (A.DIVCODE = @Divcode) "
    QueryCat " GROUP BY A.VARCODE, B.VARNAME, A.ARRDT, A.LOTNO, C.slname, A.BBLFLG, A.RATECY, A.ARRNO, A.inwardno, a.inwarddate , e.ORDQTY, e.CANDYRATE, e.contno, e.contdt,a.ratekg, d.PRNO, PP_DIVMAS.DIVNAME, PP_DIVMAS.ADD1 ORDER BY A.LOTNO", sql
    cn.Execute sql

  End If
End Sub
Private Sub OpenDbConnect()
On Error GoTo openconnection_Error
    Set cn = New Connection
    cn.CursorLocation = adUseClient
    cn.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Lot Bale Entry"
End Sub
