Attribute VB_Name = "clwithValue"
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
Dim Sno As Integer
Dim rundate As String
Public Sub WStockReportP11(F_Date As String, T_Date As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
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
'Open "C:\WStkRepP.txt" For Output As #a
Open KALFOLDERDATA & "\WStkRepP.TXT" For Output As #a
pg1 = 1
Co = 0
Call WRepHeaderP11(pg1, Co, F_Date, T_Date)
C = 0
Co = 7
op1 = 0
dy1 = 0
pr1 = 0
cl1 = 0
tot_bag1 = 0
If Table_Exists("yarnstock1") = False Then
cnn.Execute " CREATE VIEW YARNSTOCK1 AS SELECT DISTINCT DATE,PRODUCT_CODE,SUM(PROD_PACKS) PROD_PACKS,SUM(PPROD_PACKS) PPROD_PACKS,SUM(TPROD_PACKS) TPROD_PACKS,SUM(SPROD_PACKS) SPROD_PACKS,SUM(RECEIPTS) RECEIPTS,SUM(P_ISS) PROD_ISS,SUM(T_ISS) AS TRN_ISS,SUM(S_ISS) AS SAL_ISS" & _
            " FROM ( SELECT DATE,A.PRODUCT_CODE,SUM(EPACK_NO-SPACK_NO+1) AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,SUM(KGS)AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS FROM IG_RPACKHD A,IG_RPACKDT B WHERE A.DIVCODE=B.DIVCODE AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE " & _
            " GROUP BY DATE,A.PRODUCT_CODE union SELECT DATE,PRODUCT_CODE,0 AS PROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,SUM(NETT_KGS) P_ISS,0 AS T_ISS,0 AS S_ISS FROM IG_RBODT A,IG_RBOHD B " & _
            " WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO AND ISSFLG='P' GROUP BY DATE,PRODUCT_CODE UNION SELECT DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,SUM(NETT_KGS) AS T_ISS,0 AS S_ISS" & _
            " FROM IG_RBODT A,IG_RBOHD B WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO AND ISSFLG='T' GROUP BY DATE,PRODUCT_CODE " & _
            " UNION SELECT DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,SUM(NETT_KGS) AS S_ISS FROM IG_RBODT A,IG_RBOHD B WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO AND ISSFLG='S' GROUP BY DATE,PRODUCT_CODE ) A GROUP BY DATE,PRODUCT_CODE "
End If
            
Set Rs = New Recordset


Rs.Open "SELECT PRODUCT_CODE,SUM(OPENPACK) AS OPENPACK,SUM(OPENING) AS OPENING,SUM(RECPACK) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS,SUM(OPENPACK)+SUM(RECPACK)-SUM(PPROD_PACKS)-SUM(TPROD_PACKS)-SUM(SPROD_PACKS) CLOSEPACK,SUM(OPENING)+SUM(RECEIPTS)-SUM(PROD_ISS)-SUM(TRN_ISS)-SUM(SAL_ISS) CLOSEKGS,sUM(OPVALUE+RECVALUE-(TRVALUE+SAVALUE+PRVALUE)) AS CLVALUE,SUM(SAVALUE) AS SALEVALUE From ( " & _
        "SELECT PRODUCT_CODE,DATE,SUM(PROD_PACKS-(PPROD_PACKS+TPROD_PACKS+SPROD_PACKS)) OPENPACK,SUM(RECEIPTS-(PROD_ISS+TRN_ISS+SAL_ISS)) AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS,SUM(RECEIPTS*RECRATE-(PROD_ISS*PRRATE+TRN_ISS*TRRATE+SAL_ISS*SARATE))    as OPVALUE,0 AS RECVALUE,0 AS PRVALUE,0 AS TRVALUE,0 AS SAVALUE FROM YARNSTOCK1 WHERE DATE < '" & Format(F_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE   Union " & _
        "SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,SUM(PROD_PACKS) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS,0 AS OPVALUE, SUM(ISNULL(recrate,0)*ISNULL(RECEIPTS,0)) as recVALUE, 0 AS PRVALUE,0 AS TRVALUE,0 AS SAVALUE  FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(F_Date, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE   Union " & _
        "SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS,0 AS OPVALUE,0 AS RECVALUE, SUM(ISNULL(PROD_ISS,0)*ISNULL(PRRATE,0)) as PRVALUE,0 AS TRVALUE,0 AS SAVALUE FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(F_Date, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE   Union " & _
        "SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS ,0 AS OPVALUE,0 AS RECVALUE,0 AS PRVALUE,SUM(ISNULL(TRN_ISS,0)*ISNULL(TRRATE,0)) as TRVALUE,0 AS SAVALUE FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(F_Date, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE    Union " & _
        "SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS,0 AS OPVALUE,0 AS RECVALUE,0 AS PRVALUE,0 AS TRVALUE ,SUM(ISNULL(SAL_ISS,0)*ISNULL(SARATE,0)) as SAVALUE  FROM YARNSTOCK1 WHERE DATE BETWEEN '" & Format(F_Date, "YYYY-MM-DD") & "' AND '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE  ) A GROUP BY PRODUCT_CODE", cnn, adOpenStatic
        
If Rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Do While Not Rs.EOF
    Set RSNAME = New Recordset
    RSNAME.Open "Select description from ig_product where product_Code='" & Rs(0) & "' and divcode='" & Divcode & "'", cnn
    If (MONTH(T_Date) = 4 Or MONTH(T_Date) = 5 Or MONTH(T_Date) = 6) Then QUA = "I"
    If (MONTH(T_Date) = 7 Or MONTH(T_Date) = 8 Or MONTH(T_Date) = 9) Then QUA = "II"
    If (MONTH(T_Date) = 10 Or MONTH(T_Date) = 11 Or MONTH(T_Date) = 12) Then QUA = "III"
    If (MONTH(T_Date) = 1 Or MONTH(T_Date) = 2 Or MONTH(T_Date) = 3) Then QUA = "IV"
    Set RATERS = New Recordset
'    RATERS.Open "SELECT * FROM IG_TENDERFINAL WHERE QUARTER='" & QUA & "' AND DIVCODE='" & divcode & "' AND PRODUCT_CODE='" & rs("PRODUCT_CODE") & "'", cnn, adOpenStatic
'    If Not RATERS.EOF Then
'        RATE1 = RATERS("RATE")
'    End If
    If Not RSNAME.EOF Then
    
    If Rs("SAL_ISS") > 0 Then SALVAL = Rs("CLVALUE") / Rs("SAL_ISS") Else SALVAL = 0
    Print #a, Space(5) & Padr(RSNAME("description"), 18, " ") & Space(1) & Space(1) & Padl(Rs("OPENING"), 11, " ") & Space(1) & Padl(Rs("RECEIPTS"), 11, " ") & Space(3) & Space(1) & Padl(Rs("PROD_ISS"), 9, " ") & Space(1) & Padl(Rs("TRN_ISS"), 9, " ") & Space(1) & Padl(Rs("SAL_ISS"), 10, " ") & Space(1); Padl(SALVAL, 11, " "); Space(1); Padl(Format(Rs("SALEVALUE"), "#0.00"), 12, " ") & Padl(Rs("CLOSEKGS"), 9, " "); Padl(INF(RATE1, 2), 11, " "); Space(1); Padl(Format(Rs("CLOSEKGS") * RATE1, "#0.00"), 14, " ")
    
    OPPACK = OPPACK + Rs("OPENPACK")
    oPKGS = oPKGS + Rs("OPENING")
    salevaluetot = SALVAL + salevaluetot
    RECPACK = RECPACK + Rs("RECPACK")
    reckgs = reckgs + Rs("RECEIPTS")
    PRPACK = PRPACK + Rs("PPROD_PACKS")
    prkgs = prkgs + Rs("PROD_ISS")
    TRPACK = TRPACK + Rs("TPROD_PACKS")
    closevalue = closevalue + Rs("CLOSEKGS") * RATE1
    trkgs = trkgs + Rs("TRN_ISS")
    SAPACK = SAPACK + Rs("SPROD_PACKS")
    sakgs = sakgs + Rs("SAL_ISS")
    CLPACK = CLPACK + Rs("CLOSEPACK")
    clkgs = clkgs + Rs("CLOSEKGS")
    
    End If
    Rs.MoveNext
    If Co >= PageLen And Not Rs.EOF Then
        Print #a, Space(5) + String(139, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Call WRepHeaderP11(pg1, Co, F_Date, T_Date)
    End If
Loop
Print #a, Space(5) + String(139, "-")
Print #a, Space(5) & Space(6); " Grand Total " & Space(1) & Padl(oPKGS, 11, " ") & Space(1) & Padl(reckgs, 11, " ") & Space(3) & Space(1) & Padl(prkgs, 9, " ") & Space(1) & Padl(trkgs, 9, " ") & Space(1) & Padl(sakgs, 10, " ") & Space(1); Padl(SALVAL, 11, " "); Space(1); Padl(Format(salevaluetot, "#0.00"), 12, " ") & Padl(clkgs, 9, " "); Padl(INF(RATE1, 2), 11, " "); Space(1); Padl(Format(closevalue, "#0.00"), 14, " ")
Print #a, Space(5) + String(139, "-")
Co = Co + 1
Print #a, Chr(12)
Close
Close #a
a = FreeFile
'Open "c:\WStkRepP.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type WStkRepP.txt>prn"
'Close #a
'RPTV.txtfile = "c:\WStkRepP.txt"
'RPTV.Batfile = "c:\WStkRepP.bat"
Call KALBATPROCESS("WStkRepP")
End Sub
Public Sub WRepHeaderP11(pg1 As Integer, Co As Integer, FDt As String, TDt As String)
    Co = 0
    Print #a, Chr(18); Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    Print #a, Space(5); Chr(27); "E"; "Waste Stock From " & FDt & " To " & TDt; Chr(27); "F"; Space(42) & Padl("Pg.No : " + CStr(pg1), 122 - Len(Space(5) & "Waste Stock From " & FDt & " To " & TDt & Space(24)), " ")
    Print #a, Space(5) & String(139, "-")
    Print #a, Space(5) & "PRODUCT NAME                 OP         REC         PROD      TRNS        <-------SALES-------------->      <----------CLOSING----------->"
    Print #a, Space(5) & "                            KGS         KGS          KGS       KGS        KGS        RATE        VALUE      KGS    RATE/QNT          VALUE "
    Print #a, Space(5) & String(139, "-")
    Co = 7
End Sub


