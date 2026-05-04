Attribute VB_Name = "WStockStatement"
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
Dim sno As Integer
Dim rundate As String
Public Sub WStockReport(T_Date As String, F_Date As String)
Dim RS1 As Recordset
Dim rs2 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot4 As Double
Dim tot7 As Double
Dim tot10 As Double
Dim total As Double
Dim cnn As Connection
Set cnn = New Connection
rundate = T_Date
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
Open "C:\WStkRep.txt" For Output As #a
pg1 = 1
co = 0
Call WRepHeader(pg1, co, T_Date)
'----------------------------------------------------------------------------------
'                           Waste STOCK REPORT
'----------------------------------------------------------------------------------
Wastestock:
c = 0
op1 = 0: DY1 = 0
pr1 = 0: cl1 = 0
tot_bag1 = 0

   
Set rs = New Recordset
'rs.Open "select a.product_code,b.description,c.description 'Unit',sum(oppacks)opening,sum(prodpacks)production,sum(desp_packs)delivery,sum(oppacks)+sum(prodpacks)-sum(desp_packs) Closing from( " & _
    "select product_code,sum(prod_packs)-sum(desp_packs) oppacks,sum(prod_kgs)-sum(desp_kgs) opkg,0 as prodpacks,0 as prodkgs,0 as desp_packs,0 as desp_kgs from yarnstock where date <'" & Format(rundate, "yyyy-mm-dd") & "'  group by product_code union " & _
    "select product_code,0 oppacks,0 opkg,sum(prod_packs) as prodpacks,sum(prod_kgs) as prodkgs,sum(desp_packs) as desp_packs,sum(desp_kgs) as desp_kgs from yarnstock where date='" & Format(rundate, "yyyy-mm-dd") & "' group by product_code " & _
    ") a,ig_product b,ig_packtype c where a.product_code=b.product_code and b.pack_type=c.pack_type  and a.product_code like 'W%' AND (oppacks>0 or prodpacks>0 or desp_packs>0 )group by a.product_code,b.description,c.description", cnn, adOpenStatic

Set rs = New Recordset
'rs.Open " SELECT PRODUCT_CODE,SUM(OPENPACK) AS OPENPACK,SUM(OPENING) AS OPENING,SUM(RECPACK) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS,SUM(OPENPACK)+SUM(RECPACK)-SUM(PPROD_PACKS)-SUM(TPROD_PACKS)-SUM(SPROD_PACKS) CLOSEPACK,SUM(OPENING)+SUM(RECEIPTS)-SUM(PROD_ISS)-SUM(TRN_ISS)-SUM(SAL_ISS) CLOSEKGS" & _
        " From" & _
        " (" & _
        "  SELECT PRODUCT_CODE,DATE,SUM(PROD_PACKS-(PPROD_PACKS+TPROD_PACKS+SPROD_PACKS)) OPENPACK,SUM(RECEIPTS-(PROD_ISS+TRN_ISS+SAL_ISS)) AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE < '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,SUM(PROD_PACKS) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(T_Date, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(T_Date, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(T_Date, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE  " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(T_Date, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
        " ) A" & _
        " GROUP BY PRODUCT_CODE", cnn, adOpenStatic
rs.Open " SELECT PRODUCT_CODE,SUM(OPENPACK) AS OPENPACK,SUM(OPENING) AS OPENING,SUM(RECPACK) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS,SUM(OPENPACK)+SUM(RECPACK)-SUM(PPROD_PACKS)-SUM(TPROD_PACKS)-SUM(SPROD_PACKS) CLOSEPACK,SUM(OPENING)+SUM(RECEIPTS)-SUM(PROD_ISS)-SUM(TRN_ISS)-SUM(SAL_ISS) CLOSEKGS" & _
        " From" & _
        " (" & _
        "  SELECT PRODUCT_CODE,DATE,SUM(PROD_PACKS) OPENPACK,SUM(RECEIPTS) AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE < '" & Format(yfdate, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,SUM(PROD_PACKS) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE <= '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE <= '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE <='" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE  " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS FROM YARNSTOCK1 WHERE DATE <='" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
        " ) A" & _
        " GROUP BY PRODUCT_CODE", cnn, adOpenStatic


If rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
    If co > pagelen - 5 Then
        Print #a, Chr(12)
        co = 0
    End If
    'Print #a, Space(5) + "WASTE NAME             O.B.       RECEIPT             TRANSFER   SALES     C.BAL"
    Print #a, Space(5) & "Product Name          <----------- Bales ------------->      <-------------- Quantity ------------------>   Loose Kgs"
    Print #a, Space(5) & "                       Opening  Production Issues  Closing       Opening     Prodn      Issues     Closing"
    co = co + 1
    Print #a, Space(5) + String(117, "-")
    co = co + 1
    OPPACK = 0
    oPKGS = 0
    RECPACK = 0
    reckgs = 0
    PRPACK = 0
    prkgs = 0
    TRPACK = 0
    trkgs = 0
    SAPACK = 0
    sakgs = 0
    CLPACK = 0
    clkgs = 0
    loosgkgs = 0
    Do While Not rs.EOF
        Set rsP = New Recordset
        rsP.Open "select sum(isnull(prod_kgs,0))-sum(isnull(pack_kgs,0)) as loose_kgs from ig_wastetrn where product_code='" & rs(0) & "' and pdate <= '" & Format(T_Date, "yyyy-mm-dd") & "'", cnn
        Set Namers = New Recordset
        Namers.Open "SELECT DESCRIPTION FROM IG_rPRODUCT WHERE  PRODUCT_CODE ='" & rs(0) & "'", cnn, adOpenStatic
        'MsgBox Namers(0), vbOKOnly
        
        sno = sno + 1
        'cpacks = rs("OPENPACK") - (rs("PPROD_PACKS") + rs("TPROD_PACKS") + rs("SPROD_PACKS"))
        'ckgs = rs("OPENING") - (rs("PROD_ISS") + rs("TRN_ISS") + rs("SAL_ISS"))
        isspacks = rs("TPROD_PACKS") + rs("SPROD_PACKS") + rs("PPROD_PACKS")
        issKgs = rs("TRN_ISS") + rs("SAL_ISS") + rs("PROD_ISS")
        cpacks = (rs("recPACK") - (rs("TPROD_PACKS") + rs("SPROD_PACKS")))
        ckgs = (rs("receipts") - (rs("TRN_ISS") + rs("SAL_ISS")))
        'Print #a, Space(5); Padr(Namers(0), 16, " "); Padl(rs("OPENING"), 10, " "); Padl(rs("RECEIPTS"), 15, " "); Padl(" ", 8, " "); Padl(rs("TRN_ISS"), 13, " "); Padl(rs("SAL_ISS"), 8, " "); Padl(rs("CLOSEKGS"), 10, " ")
        'Print #a, Space(5) & Padr(Namers("DESCRIPTION"), 18, " ") & Space(1) & Padl(INF(rs("OPENPACK"), 0), 8, " ") & Space(2) & Padl(INF(rs("RECPACK"), 0), 8, " ") & Space(2) & Padl(INF(rs("SPROD_PACKS"), 0), 8, " ") & Space(1) & Padl(INF(rs("closePACK"), 0), 8, " ") & Space(1) & Padl(INF(rs("OPENING"), 2), 11, " ") & Space(1) & Padl(INF(rs("RECEIPTS"), 2), 11, " ") & Space(1) & Padl(INF(rs("SAL_ISS"), 2), 11, " ") & Space(1) & Padl(INF(rs("CLOSEKGS"), 2), 11, " ") & Space(2) & Padl(INF(rsp(0), 2), 11, " ")
        Print #a, Space(5) & Padr(Namers("DESCRIPTION"), 18, " ") & Space(1) & Padl(INF(rs("OPENPACK"), 0), 8, " ") & Space(2) & Padl(INF(rs("RECPACK"), 0), 8, " ") & Space(2) & Padl(INF(isspacks, 0), 8, " ") & Space(1) & Padl(INF(cpacks, 0), 8, " ") & Space(1) & Padl(INF(rs("OPENING"), 2), 11, " ") & Space(1) & Padl(INF(rs("RECEIPTS"), 2), 11, " ") & Space(1) & Padl(INF(issKgs, 2), 11, " ") & Space(1) & Padl(INF(ckgs, 2), 11, " ") & Space(2) & Padl(INF(rsP(0), 2), 11, " ")
        
        OPPACK = OPPACK + rs("OPENPACK")
        oPKGS = oPKGS + rs("OPENING")
        RECPACK = RECPACK + rs("RECPACK")
        reckgs = reckgs + rs("RECEIPTS")
        PRPACK = PRPACK + rs("PPROD_PACKS")
        prkgs = prkgs + rs("PROD_ISS")
        TRPACK = TRPACK + rs("TPROD_PACKS")
        trkgs = trkgs + rs("TRN_ISS")
        SAPACK = SAPACK + rs("SPROD_PACKS")
        sakgs = sakgs + rs("SAL_ISS")
        CLPACK = CLPACK + rs("CLOSEPACK")
        clkgs = clkgs + rs("CLOSEKGS")
        loosekgs = loosekgs + rsP("loose_kgs")
        rs.MoveNext
        If co >= pagelen And Not rs.EOF Then
            Print #a, Space(5) + String(117, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            Print #a, Space(5) + String(117, "-")
            'Print #a, Space(5) + "WASTE NAME             O.B.       RECEIPT    PRDN     TRANSFER   SALES     C.BAL"
            Print #a, Space(5) & "Product Name          <----------- Bales ------------->      <-------------- Quantity ------------------>   Loose Kgs"
            Print #a, Space(5) & "                       Opening  Packs    Issues  Closing       Opening     Prodn      Issues     Closing"
            co = co + 1
            Print #a, Space(5) + String(117, "-")
            co = 2
        End If
    Loop
Print #a,
co = co + 1
Print #a, Space(5) + String(117, "-")
co = co + 1
'Print #a, Space(5); Padr("GRNAD TOTAL ", 16, " "); Padl(TOTOP, 10, " "); Padl(TOTRE, 15, " "); Padl(INF(0, 0), 8, " "); Padl(TOTTR, 13, " "); Padl(TOTSA, 8, " "); Padl(TOTCL, 10, " ")
Print #a, Space(5) & Space(6); "Grand Total  " & Padl(INF(OPPACK, 0), 8, " ") & Space(2) & Padl(INF(RECPACK, 0), 8, " ") & Space(2) & Padl(INF(SAPACK, 0), 8, " ") & Space(1) & Padl(INF(CLPACK, 0), 8, " ") & Space(1); Padl(INF(oPKGS, 2), 11, " ") & Space(1); Padl(INF(reckgs, 2), 11, " ") & Space(1); Padl(INF(sakgs, 2), 11, " ") & Space(1); Padl(INF(clkgs, 2), 11, " ") & Space(2) & Padl(INF(loosekgs, 2), 11, " ")

co = co + 1
Print #a, Space(5) + String(117, "-")
co = co + 1

Last1:
    Print #a, Chr(12)
    Close
    Close #a
    a = FreeFile
    Open "c:\WStkRep.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "type WStkRep.txt>prn"
    Close #a
    RPTV.txtfile = "c:\WStkRep.txt"
    RPTV.Batfile = "c:\WStkRep.bat"
End Sub
Public Sub WRepHeader(pg1 As Integer, co As Integer, v As String)
co = 0
Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
'Print #a, Space(5); CENTRE("Date :" + rundate, 78, " ")
SR = CStr(pdate) + Space(2)
Print #a,
Print #a, Space(5); Chr(27); "E"; "Waste Stock on Date " & rundate; Chr(27); "F"; Space(34) & "Pg.No :" + Space(1) + CStr(pg1)
Print #a, Space(5) + String(117, "-")
co = co + 4
End Sub
