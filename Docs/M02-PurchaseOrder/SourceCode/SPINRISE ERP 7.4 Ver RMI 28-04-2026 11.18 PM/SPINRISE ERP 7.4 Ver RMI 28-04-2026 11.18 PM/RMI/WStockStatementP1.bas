Attribute VB_Name = "WStockStatementP1"
Dim opf As New Recordset
Dim opf1 As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9, op10 As Double
Dim rsp As New Recordset
Dim Namers As Recordset
Dim VarName As String
Dim rsp1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim sno As Integer
Dim rundate As String

Public Sub WStockReportP1(F_DATE As String, T_Date As String)
Dim RS1 As Recordset
Dim rs2 As Recordset
Dim result As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
'Dim opval, recval, prval, trval, saval, clval As Double
Dim tot1 As Double
Dim tot4 As Double
Dim tot7 As Double
Dim tot10 As Double
Dim PkTot As Double
Dim PkTot1 As Double
Dim PkTot2 As Double
Dim PkTot3 As Double
Dim cnn As Connection

Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
Open "C:\WStkRepP.txt" For Output As #a
pg1 = 1
co = 0
Call WRepHeaderP1(pg1, co, F_DATE, T_Date)
c = 0
co = 7
op1 = 0
dy1 = 0
pr1 = 0
cl1 = 0
tot_bag1 = 0
opval = 0
recval = 0
prval = 0
trval = 0
saval = 0
clval = 0
If Table_Exists("yarnstock1") = False Then
    cnn.Execute "CREATE VIEW YARNSTOCK1 AS SELECT DISTINCT DATE,PRODUCT_CODE,SUM(PROD_PACKS) PROD_PACKS,SUM(PPROD_PACKS) PPROD_PACKS,SUM(TPROD_PACKS) TPROD_PACKS,SUM(SPROD_PACKS) SPROD_PACKS,SUM(RECEIPTS) RECEIPTS,SUM(P_ISS) PROD_ISS,SUM(T_ISS) AS TRN_ISS,SUM(S_ISS) AS SAL_ISS,RECE_RATE AS RECRATE,PRO_RATE AS PRRATE,TPROD_RATE AS TRRATE,SPROD_RATE AS SARATE FROM ( " & _
                "SELECT DATE,A.PRODUCT_CODE,SUM(EPACK_NO-SPACK_NO+1) AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,SUM(KGS)AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, A.RATE AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE FROM IG_RPACKHD A,IG_RPACKDT B  WHERE A.DIVCODE=B.DIVCODE AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY DATE,A.PRODUCT_CODE,A.RATE  union " & _
                "SELECT DATE,PRODUCT_CODE,0 AS PROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,SUM(NETT_KGS) P_ISS,0 AS T_ISS,0 AS S_ISS,0 AS RECE_RATE,A.TRATE AS PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE FROM IG_RBODT A,IG_RBOHD B WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO AND ISSFLG='P' GROUP BY DATE,PRODUCT_CODE,A.TRATE UNION " & _
                "SELECT DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,SUM(NETT_KGS) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE AS TPROD_RATE,0 AS SPROD_RATE FROM IG_RBODT A,IG_RBOHD B WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO AND ISSFLG='T' GROUP BY DATE,PRODUCT_CODE,A.TRATE UNION " & _
                "SELECT DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,SUM(NETT_KGS) AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,A.TRATE AS SPROD_RATE  FROM IG_RBODT A,IG_RBOHD B WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO AND ISSFLG='S' GROUP BY DATE,PRODUCT_CODE,A.TRATE ) A  GROUP BY DATE,PRODUCT_CODE,RECE_RATE,PRO_RATE,TPROD_RATE,SPROD_RATE "
End If
            
Set rs = New Recordset
rs.Open " SELECT PRODUCT_CODE,SUM(OPENPACK) AS OPENPACK,SUM(OPENING) AS OPENING,SUM(RECPACK) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS,SUM(OPENPACK)+SUM(RECPACK)-SUM(PPROD_PACKS)-SUM(TPROD_PACKS)-SUM(SPROD_PACKS) CLOSEPACK,SUM(OPENING)+SUM(RECEIPTS)-SUM(PROD_ISS)-SUM(TRN_ISS)-SUM(SAL_ISS) CLOSEKGS" & _
        " From" & _
        " (" & _
        "  SELECT PRODUCT_CODE,DATE,SUM(PROD_PACKS-(PPROD_PACKS+TPROD_PACKS+SPROD_PACKS)) OPENPACK,SUM(RECEIPTS-(PROD_ISS+TRN_ISS+SAL_ISS)) AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE < '" & Format(F_DATE, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,SUM(PROD_PACKS) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(F_DATE, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(F_DATE, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(F_DATE, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE  " & _
        "  Union" & _
        "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(F_DATE, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
        " ) A" & _
        " GROUP BY PRODUCT_CODE", cnn, adOpenStatic
If rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
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

loosekgs = 0

Do While Not rs.EOF
    Set rsp = New Recordset
    rsp.Open "select sum(isnull(prod_kgs,0))-sum(isnull(pack_kgs,0)) as loose_kgs from ig_wastetrn where product_code='" & rs(0) & "' and pdate between '" & Format(F_DATE, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'", cnn
    Dim x As Recordset
    'Set x = New Recordset
    'x.Open "SELECT SUM(TARE) TARE FROM IG_RPACKDT WHERE DOC_NO IN (SELECT DOC_NO FROM IG_RPACKHD WHERE product_code='" & rs(0) & "' and date between '" & Format(F_DATE, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "')", cnn, adOpenStatic, adLockBatchOptimistic
    Set RSNAME = New Recordset
    RSNAME.Open "Select SHORT_CODE,rate from ig_rproduct where product_Code='" & rs(0) & "' and divcode='" & Divcode & "'", cnn
    If Not RSNAME.EOF Then
'''        Print #a, Space(5) & Padr(RSNAME("DESCRIPTION"), 18, " ") & Space(1) & Padl(INF(rs("OPENPACK"), 0), 8, " ") & Space(2) & Padl(INF(rs("RECPACK"), 0), 8, " ") & Space(2) & Padl(INF(rs("SPROD_PACKS"), 0), 8, " ") & Space(1) & Padl(INF(rs("closePACK"), 0), 8, " ") & Space(1) & Padl(INF(rs("OPENING"), 2), 11, " ") & Space(1) & Padl(INF(rs("RECEIPTS"), 2), 11, " ") & Space(1) & Padl(INF(rs("SAL_ISS"), 2), 11, " ") & Space(1) & Padl(INF(rs("CLOSEKGS"), 2), 11, " ") & Space(2) & Padl(INF((rsp(0) - x(0)), 2), 11, " ")
        
        '----command by prakash
        'Print #a, Space(5) & Padr(RSNAME("SHORT_CODE"), 12, " ") & Space(1) & Padl(INF(rs("OPENPACK"), 0), 8, " ") & Space(1) & Padl(INF(rs("RECPACK"), 0), 8, " ") & Space(2) & Padl(INF(rs("TPROD_PACKS"), 0), 8, " ") & Space(2) & Padl(INF(rs("SPROD_PACKS"), 0), 8, " ") & Space(1) & Padl(INF(rs("closePACK"), 0), 8, " ") & Space(3) & Padl(INF(rs("OPENING"), 2), 11, " ") & Space(1) & Padl(INF(rs("RECEIPTS"), 2), 11, " ") & Space(1) & Padl(INF(rs("TRN_ISS"), 2), 11, " ") & Space(1) & Padl(INF(rs("SAL_ISS"), 2), 11, " ") & Space(1) & Padl(INF(rs("CLOSEKGS"), 2), 11, " ") & Space(2)
        Print #a,
        Print #a, Space(3) & Chr(15) & Padr(RSNAME("SHORT_CODE"), 15, " ") & Space(1) & Padl(INF(rs("OPENING"), 2), 11, " ") & Space(2) & Padl(INF(rs("OPENING") * RSNAME("Rate"), 2), 11, " ") & Space(1) & Padl(INF(rs("RECEIPTS"), 2), 11, " ") & Space(2) & Padl(INF(rs("RECEIPTS") * RSNAME("Rate"), 2), 11, " ") & Space(1) & Padl(INF(rs("TRN_ISS"), 2), 11, " ") & Space(2) & Padl(INF(rs("TRN_ISS") * RSNAME("Rate"), 2), 11, " ") & Space(1) & Padl(INF(rs("SAL_ISS"), 2), 11, " ") & Space(2) & Padl(INF(rs("SAL_ISS") * RSNAME("Rate"), 2), 11, " ") & Space(1) & Padl(INF(rs("CLOSEKGS"), 2), 11, " ") & Space(2) & Padl(INF(rs("CLOSEKGS") * RSNAME("Rate"), 2), 11, " ") & Chr(18)
        'OPPACK = OPPACK + rs("OPENPACK")
        oPKGS = oPKGS + rs("OPENING")
        opval = opval + rs("OPENING") * IIf(IsNull(RSNAME("Rate")), 0, RSNAME("rate"))
        'RECPACK = RECPACK + rs("RECPACK")
        reckgs = reckgs + rs("RECEIPTS")
        recval = recval + rs("RECEIPTS") * IIf(IsNull(RSNAME("Rate")), 0, RSNAME("rate"))
        'PRPACK = PRPACK + rs("PPROD_PACKS")
        prkgs = prkgs + rs("PROD_ISS")
        prval = prval + rs("PROD_ISS") * IIf(IsNull(RSNAME("Rate")), 0, RSNAME("rate"))
        'TRPACK = TRPACK + rs("TPROD_PACKS")
        trkgs = trkgs + rs("TRN_ISS")
        trval = trval + rs("TRN_ISS") * IIf(IsNull(RSNAME("Rate")), 0, RSNAME("rate"))
        'SAPACK = SAPACK + rs("SPROD_PACKS")
        sakgs = sakgs + rs("SAL_ISS")
        saval = saval + rs("SAL_ISS") * IIf(IsNull(RSNAME("Rate")), 0, RSNAME("rate"))
        'CLPACK = CLPACK + rs("CLOSEPACK")
        clkgs = clkgs + rs("CLOSEKGS")
        clval = clval + rs("CLOSEKGS") * IIf(IsNull(RSNAME("Rate")), 0, RSNAME("rate"))
'''        loosekgs = loosekgs + (rsp("loose_kgs") - x(0).Value)
        loosekgs = loosekgs + (rsp("loose_kgs"))
    End If
    rs.MoveNext
    If co >= pagelen And Not rs.EOF Then
        Print #a, Space(5) + String(137, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Call WRepHeaderP1(pg1, co, F_DATE, T_Date)
    End If
Loop
Print #a, Chr(15)
Print #a, Space(5) + String(137, "-")
Print #a, Space(5) & Space(6) & Chr(15); "Grand Total  "; Padl(INF(oPKGS, 2), 11, " ") & Space(1) & Padl(INF(opval, 2), 11, " ") & Space(1); Padl(INF(reckgs, 2), 11, " ") & Space(1); Padl(INF(recval, 2), 11, " ") & Space(1); Padl(INF(trkgs, 2), 11, " ") & Space(1); Padl(INF(trval, 2), 11, " ") & Space(1); Padl(INF(sakgs, 2), 11, " ") & Space(1); Padl(INF(saval, 2), 11, " ") & Space(1); Padl(INF(clkgs, 2), 11, " ") & Space(1); Padl(INF(clval, 2), 11, " ") & Chr(15)
Print #a, Space(5) + String(137, "-")
co = co + 1
Print #a, Chr(12)
Close
Close #a
a = FreeFile
Open "c:\WStkRepP.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type WStkRepP.txt>prn"
Close #a
RPTV.txtfile = "c:\WStkRepP.txt"
RPTV.Batfile = "c:\WStkRepP.bat"
End Sub
Public Sub WRepHeaderP1(pg1 As Integer, co As Integer, FDt As String, TDt As String)
    co = 0
    Print #a, Space(5); Chr(18) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    Print #a, Space(5); Chr(27); "E"; "Waste Stock From " & FDt & " To " & TDt; Chr(27); "F"; Space(24) & Padl("Pg.No : " + CStr(pg1), 122 - Len(Space(5) & "Waste Stock From " & FDt & " To " & TDt & Space(24)), " ")
    Print #a, Space(5) & String(137, "-")
    Print #a, Space(5) & "Product Name            <-Opening Stock->    <--- Collection--->        <--- Transfer--->       <---- Sales----->       <-Closing Stock-> "
    Print #a, Space(5) & "                         Kgs.      Values    Kgs.       Values          Kgs.      Values        Kgs.      Values      Kgs.       Values "
'    Print #a, Space(5) & "Product Name      <--------------------- Bales ---------------->    <---------------------Quantity ----------------------->  "
'    Print #a, Space(5) & "                  Opening  Collection    Issues   Sales  Closing    Opening    Collection   Issues    Sales   Closing"
    Print #a, Space(5) & String(137, "-")
    Print #a, Chr(15)
    co = 7
End Sub
