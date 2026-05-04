VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Class1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False


Dim A As Integer


Sub STKHEADER801(FD As String, TD As String, O As String, pg1 As Integer, he As String, fi As String, ti As String)

Print #A, Space(5); Chr(18); CENTRE(Chr$(27) & "E" & Trim(divname) & Chr$(27) & "F", 85, " ")
Print #A, Chr(15)
'Print #a, Space(5); Chr$(27) & "E" & "STOCK STATEMENT" & Chr$(27) & "F" & Space(1) & "From" & Space(1) & CStr(Format(FD, "dd/mm/yyyy")); " to "; CStr(Format(TD, "dd/mm/yyyy")) & Space(4) & "  From " & Trim(fi) & Space(1) & "To" & Space(1) & Trim(ti) & " " & Space(55) & CStr(pdate) + Space(2) & Space(1) & "Pg.:" & Space(1) & Padl(pg1, 3, " ")
Print #A, Space(5); Chr(27) + "E" + "STOCK STATEMENT" & Chr(27) + "F" + Space(1) & "From" & Space(1) & CStr(Format(FD, "dd/mm/yy")); " to "; CStr(Format(TD, "dd/mm/yy")) & Space(4) & "  From " & Trim(fi) & Space(1) & "To" & Space(1) & Trim(ti) & " " & Space(58) & CStr(Format(pdate, "dd/mm/yy")) + Space(2) & Space(1) & "Pg.:" & Space(1) & Padl(pg1, 3, " ")
Print #A, Space(5) + String(148, "-")
Print #A, Space(5) & "Code    Group Name" & Space(27) & "<-----Opening ----->" & Space(3) & "<----Receipts------>" & Space(3) & "<------Issues------>" & Space(3) & "<--Closing Stock--->" & Space(2) & "Last Receipt"
'Print #a, Space(5) + "Code " + Space(3) + "Item Description" + Space(15) + "Unit" & Space(2) & "Quantity" & Space(7) & "Value" & Space(3) & "Quantity" & Space(7) & "Value" & Space(3) & "Quantity" & Space(7) & "Value" & Space(3) & "Quantity" & Space(7) & "Value" & Space(10) & "Rate"
Print #A, Space(5) + "Code " + Space(3) + "Item Name       " + Space(15) + "Unit" & Space(2) & "Quantity" & Space(7) & "Value" & Space(3) & "Quantity" & Space(7) & "Value" & Space(3) & "Quantity" & Space(7) & "Value" & Space(3) & "Quantity" & Space(7) & "Value" & Space(10) & "Rate"
Print #A, Space(5) + String(148, "-")

End Sub


Public Sub stkst801(FG As String, TG As String, fi As String, ti As String, FD As String, TD As String, O As String, he As String)
Dim Pageflag As Boolean

Pageflag = False
top = 0
tr = 0
tq = 0
tis = 0
TC1 = 0
TV = 0
isq = 0
isv = 0
clq = 0
clv = 0
gtop = 0
gtr = 0
gtq = 0
gtis = 0
gtc = 0
gtv = 0
gisq = 0
gisv = 0
gclq = 0
gclv = 0

grpcnt = 0

Set Cnn = New Connection
Cnn.Open connectstring
Set rs1 = New Recordset
Dim OpnValue As Double
OpnValue = 0
        
    Cnn.CommandTimeout = 200
    strQry = "SELECT substring(X.itemcode,1, " & GrpLen & ") AS GRPCODE,g.grpname, X.ITEMCODE,i.itemname,I.UOM, (SUM(X.ALLREC)-SUM(X.ALLISS)) AS OPQTY,(SUM(X.ALLRECval)-SUM(X.ALLISSval)) as OPVAL, " & _
         " (SUM(X.REC)+sum(x.ISSRET)) AS RCDQTY ,(SUM(X.RECVAL)+SUM(ISSRETVAL)) AS RCVAL,(SUM(X.ISS)+sum(X.RECRET)) AS ISDQTY,(SUM(X.ISSVAL)+SUM(X.RECRETVAL)) AS ISDVAL, " & _
         " ((SUM(X.ALLREC)-SUM(X.ALLISS)) + (SUM(X.REC)+sum(x.ISSRET))-(SUM(X.ISS)+sum(X.RECRET)))AS BALQTY," & _
         " ((SUM(X.ALLRECval)-SUM(X.ALLISSval))+(SUM(X.RECVAL)+SUM(ISSRETVAL))-(SUM(X.ISSVAL)+SUM(X.RECRETVAL)))AS VALUE,(SELECT max(RATE) FROM IN_TRNTAIL a WHERE tc=1 and divcode='" & divcode & "' and a.ITEMCODE=x.ITEMCODE AND A.DOCDT >=  '" & Format(CDate(yfdate), "YYYY-MM-DD") & "' AND A.DOCDT < '" & Format(CDate(yldate), "YYYY-MM-DD") & "' AND a.DOCDT=(SELECT MAX(b.DOCDT) FROM IN_TRNTAIL b WHERE tc=1 and b.DOCDT >=  '" & Format(CDate(yfdate), "YYYY-MM-DD") & "' AND b.DOCDT < '" & Format(CDate(yldate), "YYYY-MM-DD") & "' and b.ITEMCODE=x.ITEMCODE AND b.divcode=a.divcode)) as Rate " & _
         " From ( SELECT ITEMCODE,SUM(isnull(QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS REC,0 as RECRET, 0 AS ISS,0 as ISSRET,SUM(isnull(value,0))  AS ALLRECval,0 AS ALLISSval, 0 AS RECval,0 as RECRETVAL,0 AS ISSval,0 as ISSRETVAL FROM IN_TRNTAIL WHERE DIVCODE = '" & divcode & "' AND  OPFLG='Y'  AND ITEMCODE >= '" & fi & "' AND ITEMCODE <=  '" & ti & "' AND Tyear='" & Year(yfdate) & "' and quantity>0 GROUP BY ITEMCODE,RATE " & _
         " Union All SELECT A.ITEMCODE, SUM(isnull(A.QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS REC,0 as RECRET, 0 AS ISS,0 as ISSRET,SUM(isnull(value,0))  AS ALLRECval,0 AS ALLISSval, 0 AS RECval,0 as RECRETVAL,0 AS ISSval,0 as ISSRETVAL  FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "'  AND (opflg<>'Y' OR OPFLG IS NULL) AND A.TC=T.TC AND ((TCTYPE = 1) OR (TCTYPE = 3) OR (TCTYPE = 5) OR (TCTYPE = 7)) AND A.DOCDT >=  '" & Format(yfdate, "YYYY-MM-DD") & "'  AND A.DOCDT <'" & Format(CDate(FD), "YYYY-MM-DD") & "'  AND ITEMCODE >= '" & fi & "' AND ITEMCODE <=  '" & ti & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND QUANTITY>0  GROUP BY ITEMCODE" & _
         " Union All SELECT A.ITEMCODE, 0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0))) ALLISS, 0 AS REC,0 as RECRET, 0 AS ISS,0 as ISSRET,0 AS ALLRECval,SUM((isnull(A.value,0))) ALLISSval, 0 AS RECval,0 as RECRETVAL,0 AS ISSval,0 as ISSRETVAL  FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "'  AND (opflg<>'Y' OR OPFLG IS NULL) AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >=  '" & Format(yfdate, "YYYY-MM-DD") & "'  AND A.DOCDT < '" & Format(CDate(FD), "YYYY-MM-DD") & "'  AND ITEMCODE >= '" & fi & "' AND ITEMCODE <=  '" & ti & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND QUANTITY>0 GROUP BY ITEMCODE " & _
         " Union All SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(isnull(A.QUANTITY,0)) AS REC,0 as RECRET, 0 AS ISS,0 as ISSRET,0 AS ALLRECval,0 AS ALLISSval,SUM(isnull(A.value,0)) AS RECval,0 as RECRETVAL,0 AS ISSval,0 as ISSRETVAL FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE =  '" & divcode & "' AND (opflg<>'Y' OR OPFLG IS NULL)  AND A.TC=T.TC AND ((TCTYPE = 1)) AND A.DOCDT >=  '" & Format(CDate(FD), "YYYY-MM-DD") & "'  AND A.DOCDT <= '" & Format(CDate(TD), "YYYY-MM-DD") & "'  AND a.ITEMCODE >= '" & fi & "' AND a.ITEMCODE <=  '" & ti & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND QUANTITY>0 AND isnull(strflg,'N') <> 'Y' GROUP BY A.ITEMCODE " & _
         " Union All SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,0 as REC,SUM(isnull(A.QUANTITY,0)) AS RECRET, 0 AS ISS,0 as ISSRET,0 AS ALLRECval,0 AS ALLISSval,0 AS RECval, SUM(isnull(A.value,0)) as RECRETVAL,0 AS ISSval,0 as ISSRETVAL FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE =  '" & divcode & "' AND (opflg<>'Y' OR OPFLG IS NULL)  AND A.TC=T.TC AND ((TCTYPE = 2)) AND A.DOCDT >=  '" & Format(CDate(FD), "YYYY-MM-DD") & "'  AND A.DOCDT <= '" & Format(CDate(TD), "YYYY-MM-DD") & "'  AND a.ITEMCODE >= '" & fi & "' AND a.ITEMCODE <=  '" & ti & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'  AND QUANTITY>0 GROUP BY A.ITEMCODE " & _
         " Union All SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,0 AS REC ,0 as RECRET,SUM(ABS(isnull(A.QUANTITY,0))) AS ISS,0 as ISSRET,0 AS ALLRECval,0 AS ALLISSval,0 AS RECval ,0 as RECRETVAL,SUM(ABS(isnull(A.value,0))) AS ISSval,0 as ISSRETVAL FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE =  '" & divcode & "' AND (opflg<>'Y' OR OPFLG IS NULL)  AND A.TC=T.TC AND ((TCTYPE = 4)) AND A.DOCDT >=  '" & Format(CDate(FD), "YYYY-MM-DD") & "'  AND A.DOCDT <= '" & Format(CDate(TD), "YYYY-MM-DD") & "'  AND a.ITEMCODE >= '" & fi & "' AND a.ITEMCODE <=  '" & ti & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND QUANTITY>0 AND isnull(strflg,'N') <> 'Y' GROUP BY A.ITEMCODE " & _
         " Union All SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,0 AS REC ,0 as RECRET,0 as ISS,SUM(ABS(isnull(A.QUANTITY,0))) AS ISSRET,0 AS ALLRECval,0 AS ALLISSval,0 AS RECval ,0 as RECRETVAL,0 AS ISSval,SUM(ABS(isnull(A.value,0))) as ISSRETVAL FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE =  '" & divcode & "' AND (opflg<>'Y' OR OPFLG IS NULL)  AND A.TC=T.TC AND ((TCTYPE = 3)) AND A.DOCDT >=  '" & Format(CDate(FD), "YYYY-MM-DD") & "'  AND A.DOCDT <= '" & Format(CDate(TD), "YYYY-MM-DD") & "'  AND a.ITEMCODE >= '" & fi & "' AND a.ITEMCODE <=  '" & ti & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND QUANTITY>0 GROUP BY A.ITEMCODE " & _
         " Union All SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(ABS(isnull(A.QUANTITY,0))) AS REC ,0 as RECRET,0 AS ISS,0 as ISSRET,0 AS ALLRECval,0 AS ALLISSval,SUM(ABS(isnull(A.value,0))) AS RECval ,0 as RECRETVAL,0 AS ISSval,0 as ISSRETVAL FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE =  '" & divcode & "' AND (opflg<>'Y' OR OPFLG IS NULL)  AND A.TC=T.TC AND ((TCTYPE = 7) OR (TCTYPE = 5)) AND A.DOCDT >=  '" & Format(CDate(FD), "YYYY-MM-DD") & "'  AND A.DOCDT <= '" & Format(CDate(TD), "YYYY-MM-DD") & "'  AND a.ITEMCODE >= '" & fi & "' AND a.ITEMCODE <=  '" & ti & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND QUANTITY>0  GROUP BY A.ITEMCODE " & _
         " Union All SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,0 AS REC ,0 as RECRET,SUM(ABS(isnull(A.quantity,0))) as ISS,0 AS ISSRET,0 AS ALLRECval,0 AS ALLISSval,0 AS RECval ,0 as RECRETVAL,SUM(ABS(isnull(A.value,0))) AS ISSval,0 as ISSRETVAL FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE =  '" & divcode & "' AND (opflg<>'Y' OR OPFLG IS NULL)  AND A.TC=T.TC AND ((TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >=  '" & Format(CDate(FD), "YYYY-MM-DD") & "'  AND A.DOCDT <= '" & Format(CDate(TD), "YYYY-MM-DD") & "'  AND a.ITEMCODE >= '" & fi & "' AND a.ITEMCODE <=  '" & ti & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND QUANTITY>0  GROUP BY A.ITEMCODE " & _
         " ) X,in_grp g,in_item i where substring(X.itemcode,1, " & GrpLen & ") = g.grpcode and x.itemcode=i.itemcode  AND X.ITEMCODE >= '" & fi & "' AND X.ITEMCODE <=  '" & ti & "' and g.grpcode between '" & FG & "' and '" & TG & "'  GROUP BY g.grpcode,g.grpname,X.ITEMCODE,i.itemname,I.UOM,I.RATE HAVING ((SUM(X.ALLREC)-SUM(X.ALLISS))<>0 or (SUM(X.ALLRECval)-SUM(X.ALLISSval))<>0 OR (SUM(X.REC)+sum(x.ISSRET))<>0 OR (SUM(X.RECVAL)+SUM(ISSRETVAL))<>0 OR (SUM(X.ISS)+sum(X.RECRET))<>0 OR (SUM(X.ISSVAL)+SUM(X.RECRETVAL))<>0 OR ((SUM(X.ALLREC)-SUM(X.ALLISS)) + (SUM(X.REC)+sum(x.ISSRET))-(SUM(X.ISS)+sum(X.RECRET)))<>0 OR ((SUM(X.ALLRECval)-SUM(X.ALLISSval))+(SUM(X.RECVAL)+SUM(ISSRETVAL))-(SUM(X.ISSVAL)+SUM(X.RECRETVAL)))<>0 ) ORDER BY 1,3,5 "

     rs1.Open strQry, Cnn, adOpenStatic
        
'        Set RECRATE_RS = New Recordset
'        RECRATE_RS.Open "select * from sys.objects where Name='INTEMPRATE'", Cnn, adOpenStatic
'        If RECRATE_RS.EOF = False Then
'            Cnn.Execute ("Drop table INTEMPRATE")
'        End If
'
'        Set RECRATE_RS = New Recordset
'        RECRATE_RS.Open "SELECT a.Divcode,ITEMCODE,RATE into INTEMPRATE FROM IN_TRNHEAD A,IN_TRNTAIL B WHERE a.divcode=b.divcode and a.tc=b.tc and A.DOCNO=B.DOCNO AND A.DOCDT=B.DOCDT and a.divcode='" & divcode & "' AND A.DOCDT >=  '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT < '" & Format(yldate, "YYYY-MM-DD") & "' AND B.DOCNO=(SELECT MAX(C.DOCNO) FROM IN_TRNHEAD C,IN_TRNTAIL D WHERE C.DOCDT >=  '" & Format(yfdate, "YYYY-MM-DD") & "' AND C.DOCDT < '" & Format(yldate, "YYYY-MM-DD") & "' AND C.DOCNO=D.DOCNO AND C.DOCDT=D.DOCDT AND c.divcode=d.divcode and D.ITEMCODE=B.ITEMCODE) ", Cnn, adOpenStatic

    If rs1.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If

    Set RPTV = New Report.ReportView
    A = FreeFile
    Close
    Close #A
    Open KALFOLDERDATA + "\stk.TXT" For Output As #A
    Print #A,
    pg1 = 1
    Call STKHEADER801(CStr(FD), CStr(TD), CStr(O), CInt(pg1), CStr(he), CStr(fi), CStr(ti))
    dbltotcls = 0
    i = 8
    count1 = rs1.RecordCount

    rs1.MoveFirst
    ii = 0

Do While Not rs1.EOF

    ii = ii + 1

    If grpcode <> rs1(0) Then
    
      If grpcnt > 1 Then
        Print #A, Space(29) + Chr(27) + "E" + "** Group Total **" + Space(2) + Space(10) + Padl(IIf(tq > 0, INF(tq, 2), ""), 12, " ") + Space(11) + Space(1) + Padl(IIf(TV > 0, INF(TV, 2), ""), 11, " ") + Space(11) + Padl(IIf(isv > 0, INF(isv, 2), ""), 12, " ") + Space(11) + Space(0) + Padl(IIf(clv > 0, INF(clv, 2), ""), 12, " ") + Chr(27) + "F"
        i = i + 1
        
      End If
      
      grpcnt = 0
     
      gtop = gtop + top
      gtq = gtq + tq
      gtr = gtr + tr
      gtis = gtis + tis
      gtc = gtc + TC1
      gtv = gtv + TV
      gisq = gisq + isq
      gisv = gisv + isv
      gclq = gclq + clq
      gclv = gclv + clv
      top = 0
      tq = 0
      tr = 0
      tis = 0
      TC1 = 0
      TV = 0
      isq = 0
      isv = 0
      clq = 0
      clv = 0
      rt = 0

    If i >= (pagelen + 3) Then
        i = 0
        Print #A, Space(5) + String(148, "-")
        Print #A, Chr(12)
        pg1 = pg1 + 1
        Call STKHEADER801(CStr(FD), CStr(TD), CStr(O), CInt(pg1), CStr(he), CStr(fi), CStr(ti))
        
        i = 8
    End If
      
      If ((rs1("balqty") > 0 And rs1("VALUE") > 0) Or (rs1("opqty") > 0 And rs1("opval") > 0) Or (rs1("rcdqty") > 0 And rs1("rcval") > 0) Or (rs1("isdqty") > 0 And rs1("isdqty") > 0)) Then
            Print #A,
            Print #A, Space(5) & Chr$(27) & "E" & Padr(CStr(rs1(0)), 4, " ") + Space(4) + Padr(CStr(rs1(1)), 71, " ") & Chr$(27) & "F"
            i = i + 1
            grpcode = rs1(0)
      End If
      
    End If
    
'        Set RECRATE_RS = New Recordset
'        RECRATE_RS.Open "SELECT rate From INTEMPRATE WHERE divcode='" & divcode & "' AND ITEMCODE='" & rs1(2) & "'", Cnn, adOpenStatic

        If Not IsNull(rs1("rate")) Then
            rec_rate = rs1("rate")
        Else
            rec_rate = 0
        End If
        
       If i >= (pagelen + 3) Then
            i = 0
            Print #A, Space(5) + String(148, "-")
            Print #A, Chr(12)
            pg1 = pg1 + 1
            Call STKHEADER801(CStr(FD), CStr(TD), CStr(O), CInt(pg1), CStr(he), CStr(fi), CStr(ti))
            Pageflag = True
            i = 8
        End If
        
        If Pageflag = True And ((rs1("balqty") > 0 And rs1("VALUE") > 0) Or (rs1("opqty") > 0 And rs1("opval") > 0) Or (rs1("rcdqty") > 0 And rs1("rcval") > 0) Or (rs1("isdqty") > 0 And rs1("isdqty") > 0)) Then
            Print #A,
            Print #A, Space(5) & Chr$(27) & "E" & Padr(CStr(rs1(0)), 4, " ") + Space(4) + Padr(CStr(rs1(1)), 71, " ") & Chr$(27) & "F"
            Pageflag = False
        End If
        
        If ((rs1("balqty") > 0 And rs1("VALUE") > 0) Or (rs1("opqty") > 0 And rs1("opval") > 0) Or (rs1("rcdqty") > 0 And rs1("rcval") > 0) Or (rs1("isdqty") > 0 And rs1("isdqty") > 0)) Then
            Print #A, Space(5) + Padr(rs1(2), 7, " ") + Space(1) & Padr(rs1(3), 30, " ") & Space(1) & Padr(rs1(4), 4, " ") + Padl(INF(IIf(rs1("opqty") > 0, rs1("opqty"), 0), 3), 10, " ") + Space(1) + Padl(INF(IIf(rs1("opval") > 0, rs1("opval"), 0), 2), 11, " ") + Space(1) + Padl(INF(rs1("rcdqty"), 3), 10, " ") + Space(1) + Padl(INF(rs1("rcval"), 2), 11, " ") + Space(1) + Padl(INF(rs1("isdqty"), 3), 10, " ") + Space(1) + Padl(INF(rs1("isdval"), 2), 11, " ") + Space(1) + Padl(INF(IIf(rs1("balqty") > 0, rs1("balqty"), 0), 3), 10, " ") + Space(1) + Padl(INF(IIf(rs1("VALUE") > 0, rs1("VALUE"), 0), 2), 11, " ") + Space(3) + Padl(INF(IIf(rec_rate > 0, rec_rate, 0), 2), 11, " ")
            i = i + 1
            grpcnt = grpcnt + 1
        End If
        
        
      
        top = top + (rs1("opqty"))
        tq = tq + (rs1("opval"))
        
        OpnValue = OpnValue + IIf(IsNull(rs1("opval")), 0, rs1("opval"))
        rt = rt + Abs(rec_rate)
               
        TC1 = TC1 + rs1("rcdqty")
        TV = TV + rs1("rcval")
        isq = isq + rs1("isdqty")
        isv = isv + rs1("isdval")
        clq = clq + rs1("balqty")
        clv = clv + rs1("VALUE")
        
        dbltotcls = val(dbltotcls) + val(rs1("VALUE"))
    
    rs1.MoveNext
    
Loop

'Next

    gtop = gtop + top
    gtq = gtq + tq
    gtr = gtr + tr
    grt = grt + rt
    gtis = gtis + tis
    gtc = gtc + TC1
    gtv = gtv + TV
    gisq = gisq + isq
    gisv = gisv + isv
    gclq = gclq + clq
    gclv = gclv + clv

    Print #A, Space(29) + Chr(27) + "E" + "** Group Total **" + Space(2) + Space(10) + Padl(IIf(tq > 0, INF(tq, 2), ""), 12, " ") + Space(11) + Space(1) + Padl(IIf(TV > 0, INF(TV, 2), ""), 11, " ") + Space(11) + Padl(IIf(isv > 0, INF(isv, 2), ""), 12, " ") + Space(11) + Space(0) + Padl(IIf(clv > 0, INF(clv, 2), ""), 12, " ") + Chr(27) + "F"
    Print #A,
    Print #A, Space(5) + String(148, "-")
    
    Print #A, Space(29) + Chr(27) + "E" + "** Grand Total **" + Space(2) + Padl(INF(OpnValue, 2), 12 + 10, " ") + Space(1) + Padl(INF(gtv, 2), 11 + 11, " ") + Padl(INF(gisv, 2), 12 + 11, " ") + Space(1) + Padl(INF(gclv, 2), 11 + 11, " ") + Chr(27) + "F"
    
    Print #A, Space(5) + String(148, "-")
    Print #A, Chr(12)
    
    Close #A
    A = FreeFile
    Call KALBATPROCESS("stk")

End Sub

Public Sub Loadgridsource(grd As DataGrid, rst As ADODB.Recordset)
'==========   Lookup Grid data loading purpose  =================
    Set grd.DataSource = rst

End Sub
Public Function Loadgridsource_1(grd As DataGrid, strQuery As String, Con As ADODB.Connection) As ADODB.Recordset
'Public Sub Loadgridsource(grd As fpSpread, rst As ADODB.Recordset, strQuery As String)
'==========   Lookup Grid data loading purpose  =================
    
    Set rst1 = New ADODB.Recordset
    rst1.CursorLocation = adUseClient
    rst1.Open strQuery, Con, adOpenForwardOnly, adLockReadOnly
    If Not rst1.EOF Then
        Set grd.DataSource = rst1
    Else
        Set grd.DataSource = Nothing
    End If
  
    Set Loadgridsource_1 = rst1
    
End Function



Public Function gGetRecordset(strQry As String) As ADODB.Recordset
'==========   Lookup Grid data loading purpose  =================
    Set Cnn = New Connection
    Cnn.Open connectstring
    Set rs1 = New ADODB.Recordset
    rs1.Open strQry, Cnn, adOpenStatic
    
    Set gGetRecordset = rs1
    
End Function

Public Function specificdaysreg(ichk As Integer, sDate As String, sFGrp As String, sTGrp As String) As Boolean

Dim Rs, rs1, RS2, RsDoc As Recordset
Dim rsGrp As Recordset
Dim v1, v2, pg1 As Integer
Dim tot, tot1, tot2, gtot, gtot1, gtot2 As Double
Dim RPTV As Report.ReportView
Dim SR As String
Dim SNO As Integer
Dim RSStk As Recordset
Dim Cnn As Connection
Dim itemcode As String
Dim datediffdays As Integer
Dim ToDate As Date
On Error GoTo Errh

    day1 = days
    Set Cnn = New Connection
    Cnn.Open connectstring

    Dim rstItem As New ADODB.Recordset

    v1 = 0
    v2 = 0
    gtot1 = 0
    gtot = 0
    SNO = 1
    FLAG = "days"
    
    Cnn.Execute "ksp_TableExists 'tmpanalysis1" & divcode & "'"
    
'    If Table_Exists("tmpanalysis1" & divcode & "") = True Then  '' Preparatory Details
'            cn.Execute "drop table tmpanalysis1" & divcode & ""
'    End If
    
    cn.Execute "CREATE TABLE tmpanalysis1" & divcode & " (monthno numeric(5), itemcode varchar(7), value numeric (12, 2))"
    
    FG = Trim(sFGrp)
    TG = Trim(sTGrp)
    

    If ichk = 3 Then
            strQry = "  select Itemcode,sum(balValue) as balValue from ("
            strQry = strQry & " select recno,recdt,recdocsno,Itemcode,sum(BalanceQty) as BalanceQty ,sum(balValue) as balValue from ("
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & " AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " select Docno,docdt,docsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1,5,7) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity)*-1 as BalanceQty ,isnull(sum(value),0)*-1 as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (2,3,6,8) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (4) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode )x group by recno,recdt,recdocsno,itemcode) y"
            strQry = strQry & " group by Itemcode "
            strQry = strQry & " Having Sum(BALVALUE) <> 0  Order by Itemcode"
            
    ElseIf ichk = 4 Then
            strQry = "  select y.Itemcode,sum(balValue) as balValue from ("
            strQry = strQry & " select recno,recdt,recdocsno,Itemcode,sum(BalanceQty) as BalanceQty ,sum(balValue) as balValue from ("
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & " AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " select Docno,docdt,docsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1,5,7) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity)*-1 as BalanceQty ,isnull(sum(value),0)*-1 as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (2,3,6,8) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (4) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode )x group by recno,recdt,recdocsno,itemcode) y , in_item Z  where y.ITEMCODE =Z.ITEMCODE and ISNULL(Z.EssFlag,'N')='Y'   "
            strQry = strQry & " group by y.Itemcode "
            strQry = strQry & " Having Sum(BALVALUE) <> 0  Order by y.Itemcode"
            
    ElseIf ichk = 5 Then
            strQry = "  select y.Itemcode,sum(balValue) as balValue from ("
            strQry = strQry & " select recno,recdt,recdocsno,Itemcode,sum(BalanceQty) as BalanceQty ,sum(balValue) as balValue from ("
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & " AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " select Docno,docdt,docsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1,5,7) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity)*-1 as BalanceQty ,isnull(sum(value),0)*-1 as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (2,3,6,8) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (4) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode )x group by recno,recdt,recdocsno,itemcode) y  , in_item Z  where y.ITEMCODE =Z.ITEMCODE and ISNULL(Z.EssFlag,'N')='N'   "
            strQry = strQry & " group by y.Itemcode "
            strQry = strQry & " Having Sum(BALVALUE) <> 0  Order by y.Itemcode"
            
    Else
            strQry = "  select Itemcode,sum(balValue) as balValue from ("
            strQry = strQry & " select recno,recdt,recdocsno,Itemcode,sum(BalanceQty) as BalanceQty ,sum(balValue) as balValue from ("
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & " AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " select Docno,docdt,docsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1,5,7) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity)*-1 as BalanceQty ,isnull(sum(value),0)*-1 as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (2,3,6,8) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode"
            strQry = strQry & " Union All"
            strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (4) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode )x group by recno,recdt,recdocsno,itemcode) y"
            strQry = strQry & " group by Itemcode "
            strQry = strQry & " Having Sum(BALVALUE) <> 0  Order by Itemcode"
            
    End If

        Set RSq = New Recordset
        RSq.Open strQry, Cnn, adOpenStatic
        
        Do While Not RSq.EOF
            
            Set rstItem = New ADODB.Recordset
            
            strQry = "  Select recno,recdt as docdt,recdocsno,sum(balValue) as Value FROM ("
            strQry = strQry & " Select recno,recdt,recdocsno,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & "" & _
                    " AND itemcode = '" & RSq("itemCode") & "' AND tc in (1) and DIVCODE='" & divcode & "'" & _
                    " and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'" & _
                    " and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno "
            strQry = strQry & " Union All"
            strQry = strQry & " select Docno,docdt,docsno,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as Value"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "'" & _
                    " AND itemcode = '" & RSq("itemCode") & "' AND tc in (1,5,7,4) and DIVCODE='" & divcode & "'" & _
                    " and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'" & _
                    " and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno )x " & _
                    " group by recno,recdt,recdocsno Order By recdt desc,recno Desc,recdocsno"
            
            rstItem.Open strQry, Cnn, adOpenStatic
            
            ItemBal = 0
            
            If RSq("BALVALUE") > 0 Then
                ItemBal = RSq("BALVALUE")
           
                Do While Not rstItem.EOF

                    ItemBal = ItemBal - rstItem("value")
                    
                    If ItemBal > 0 Then
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Value) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & rstItem("Value") & ")")
                    Else
                        ItemBal = ItemBal + rstItem("value")
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Value) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & ItemBal & ")")
                          Exit Do
                    End If
                    rstItem.MoveNext
                
                Loop

            Else
            
                ItemBal = Abs(RSq("BALVALUE"))
                Do While Not rstItem.EOF
                
                   ItemBal = ItemBal - rstItem("value")

                    If ItemBal > 0 Then
                       
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Value) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & (rstItem("value") * -1) & ")")
                      
                    Else
                        ItemBal = ItemBal + rstItem("value")
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Value) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & ItemBal * -1 & ")")
                           Exit Do
                    End If
              
                    
                     rstItem.MoveNext
                Loop
           
            End If
                       
            RSq.MoveNext
        Loop
    
    Set rstItem = New ADODB.Recordset
    rstItem.Open "Select * from tmpanalysis1" & divcode & "", cn, adOpenForwardOnly, adLockReadOnly
    If Not rstItem.EOF Then
        specificdaysreg = True
    Else
        MsgBox "No Record Found", vbInformation, head
        specificdaysreg = False
    End If
    
Exit Function

Errh:

MsgBox "Error No :  " & err.Number & Chr(13) & Chr(13) & "Description : " & err.description & Chr(13) & Chr(13) & "Procedure : specificdaysreg " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: repAnalysis"
End Function


Public Function specificdaysreg_Qty(ichk As Integer, sDate As String, sFGrp As String, sTGrp As String) As Boolean

Dim Rs, rs1, RS2, RsDoc As Recordset
Dim rsGrp As Recordset
Dim v1, v2, pg1 As Integer
Dim tot, tot1, tot2, gtot, gtot1, gtot2 As Double
Dim RPTV As Report.ReportView
Dim SR As String
Dim SNO As Integer
Dim RSStk As Recordset
Dim Cnn As Connection
Dim itemcode As String
Dim datediffdays As Integer
Dim ToDate As Date
On Error GoTo Errh

    day1 = days
    Set Cnn = New Connection
    Cnn.Open connectstring

    Dim rstItem As New ADODB.Recordset

    v1 = 0
    v2 = 0
    gtot1 = 0
    gtot = 0
    SNO = 1
    FLAG = "days"
    
    Cnn.Execute "ksp_TableExists 'tmpanalysis1" & divcode & "'"
    
'    If Table_Exists("tmpanalysis1" & divcode & "") = True Then          '' Preparatory Details
'            cn.Execute "drop table tmpanalysis1" & divcode & ""
'    End If
    
    cn.Execute "CREATE TABLE tmpanalysis1" & divcode & " (monthno numeric(5), itemcode varchar(7), Value numeric (12, 2) Default(0),Qty numeric (12, 2) Default(0))"
    
    FG = Trim(sFGrp)
    TG = Trim(sTGrp)
    
    If ichk = 3 Then
        strQry = "  select Itemcode,sum(balValue) as balValue,sum(BalanceQty) as BalanceQty from ("
        strQry = strQry & " select recno,recdt,recdocsno,Itemcode,sum(BalanceQty) as BalanceQty ,sum(balValue) as balValue from ("
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & " AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " select Docno,docdt,docsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1,5,7) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity)*-1 as BalanceQty ,isnull(sum(value),0)*-1 as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (2,3,6,8) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (4) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode )x group by recno,recdt,recdocsno,itemcode) y"
        strQry = strQry & " group by Itemcode "
        strQry = strQry & " Having Sum(BALVALUE) <> 0  Order by Itemcode"
        
    ElseIf ichk = 4 Then
    
        strQry = "  select y.Itemcode,sum(balValue) as balValue,sum(BalanceQty) as BalanceQty from ("
        strQry = strQry & " select recno,recdt,recdocsno,Itemcode,sum(BalanceQty) as BalanceQty ,sum(balValue) as balValue from ("
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & " AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " select Docno,docdt,docsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1,5,7) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity)*-1 as BalanceQty ,isnull(sum(value),0)*-1 as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (2,3,6,8) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (4) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode )x group by recno,recdt,recdocsno,itemcode) y  , in_item Z  where y.ITEMCODE =Z.ITEMCODE and ISNULL(Z.EssFlag,'N')='Y' "
        strQry = strQry & " group by y.Itemcode "
        strQry = strQry & " Having Sum(BALVALUE) <> 0  Order by y.Itemcode"
    
    ElseIf ichk = 5 Then
    
        strQry = "  select y.Itemcode,sum(balValue) as balValue,sum(BalanceQty) as BalanceQty from ("
        strQry = strQry & " select recno,recdt,recdocsno,Itemcode,sum(BalanceQty) as BalanceQty ,sum(balValue) as balValue from ("
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & " AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " select Docno,docdt,docsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1,5,7) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity)*-1 as BalanceQty ,isnull(sum(value),0)*-1 as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (2,3,6,8) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (4) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode )x group by recno,recdt,recdocsno,itemcode) y  , in_item Z  where y.ITEMCODE =Z.ITEMCODE and ISNULL(Z.EssFlag,'N')='N' "
        strQry = strQry & " group by y.Itemcode "
        strQry = strQry & " Having Sum(BALVALUE) <> 0  Order by y.Itemcode"
    Else
    
        strQry = "  select Itemcode,sum(balValue) as balValue,sum(BalanceQty) as BalanceQty from ("
        strQry = strQry & " select recno,recdt,recdocsno,Itemcode,sum(BalanceQty) as BalanceQty ,sum(balValue) as balValue from ("
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & " AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " select Docno,docdt,docsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND tc in (1,5,7) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity)*-1 as BalanceQty ,isnull(sum(value),0)*-1 as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (2,3,6,8) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode"
        strQry = strQry & " Union All"
        strQry = strQry & " Select recno,recdt,recdocsno,Itemcode,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as balValue"
        strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "' AND  left(itemcode, 3) between '" & FG & "' and '" & TG & "' AND  tc in (4) and DIVCODE='" & divcode & "' and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and quantity>0 group by recno,recdt,recdocsno,itemcode )x group by recno,recdt,recdocsno,itemcode) y"
        strQry = strQry & " group by Itemcode "
        strQry = strQry & " Having Sum(BALVALUE) <> 0  Order by Itemcode"
    
    End If
    
        Set RSq = New ADODB.Recordset
        RSq.Open strQry, Cnn, adOpenStatic
        
        Do While Not RSq.EOF
            
            Set rstItem = New ADODB.Recordset
            
            strQry = "  Select recno,recdt as docdt,recdocsno,sum(balValue) as Value,sum(BalanceQty) as BalanceQty FROM ("
            strQry = strQry & " Select recno,recdt,recdocsno,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & "" & _
                    " AND itemcode = '" & RSq("itemCode") & "' AND tc in (1) and DIVCODE='" & divcode & "'" & _
                    " and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'" & _
                    " and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno "
            strQry = strQry & " Union All"
            strQry = strQry & " select Docno,docdt,docsno,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as Value"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "'" & _
                    " AND itemcode = '" & RSq("itemCode") & "' AND tc in (1,5,7,4) and DIVCODE='" & divcode & "'" & _
                    " and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'" & _
                    " and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno )x " & _
                    " group by recno,recdt,recdocsno Order By recdt desc,recno Desc,recdocsno"
            
            rstItem.Open strQry, Cnn, adOpenStatic
            
            ItemBal = 0
            
            If RSq("BALVALUE") > 0 Then
                ItemBal = RSq("BALVALUE")
           
                Do While Not rstItem.EOF

                    ItemBal = ItemBal - rstItem("value")
                    
                    If ItemBal > 0 Then
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Value) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & rstItem("Value") & ")")
                    Else
                        ItemBal = ItemBal + rstItem("value")
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Value) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & ItemBal & ")")
                          Exit Do
                    End If
                    rstItem.MoveNext
                
                Loop

            Else
            
                ItemBal = Abs(RSq("BALVALUE"))
                Do While Not rstItem.EOF
                
                   ItemBal = ItemBal - rstItem("value")

                    If ItemBal > 0 Then
                       
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Value) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & (rstItem("value") * -1) & ")")
                      
                    Else
                        ItemBal = ItemBal + rstItem("value")
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Value) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & ItemBal * -1 & ")")
                           Exit Do
                    End If
              
                    
                     rstItem.MoveNext
                Loop
           
            End If
                       
            RSq.MoveNext
        Loop
        
        If RSq.RecordCount > 0 Then RSq.MoveFirst
'        RSq.MoveFirst
        Do While Not RSq.EOF
            
            Set rstItem = New ADODB.Recordset
            
            strQry = "  Select recno,recdt as docdt,recdocsno,sum(balValue) as Value,sum(BalanceQty) as Qty FROM ("
            strQry = strQry & " Select recno,recdt,recdocsno,sum(Quantity) as BalanceQty,isnull(sum(value),0) as balValue"
            strQry = strQry & " from In_trntail  where  Tyear=" & Year(yfdate) & "" & _
                    " AND itemcode = '" & RSq("itemCode") & "' AND tc in (1) and DIVCODE='" & divcode & "'" & _
                    " and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'" & _
                    " and isnull(opflg,'N')='Y' and quantity>0 group by recno,recdt,recdocsno "
            strQry = strQry & " Union All"
            strQry = strQry & " select Docno,docdt,docsno,sum(Quantity) as BalanceQty ,isnull(sum(value),0) as Value"
            strQry = strQry & " from In_trntail  where docdt<='" & Format(sDate, "yyyy-MM-dd") & "'" & _
                    " AND itemcode = '" & RSq("itemCode") & "' AND tc in (1,5,7,4) and DIVCODE='" & divcode & "'" & _
                    " and docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'" & _
                    " and isnull(opflg,'N')<>'Y' and quantity>0 group by docno,docdt,docsno )x " & _
                    " group by recno,recdt,recdocsno Order By recdt desc,recno Desc,recdocsno"
            
            rstItem.Open strQry, Cnn, adOpenStatic
            
            ItemBal = 0
            
            If RSq("BalanceQty") > 0 Then
                ItemBal = RSq("BalanceQty")
           
                Do While Not rstItem.EOF

                    ItemBal = ItemBal - rstItem("Qty")
                    
                    If ItemBal > 0 Then
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Qty) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & rstItem("Qty") & ")")
                    Else
                        ItemBal = ItemBal + rstItem("Qty")
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Qty) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & ItemBal & ")")
                          Exit Do
                    End If
                    rstItem.MoveNext
                
                Loop

            Else
            
                ItemBal = Abs(RSq("BalanceQty"))
                Do While Not rstItem.EOF
                
                   ItemBal = ItemBal - rstItem("Qty")

                    If ItemBal > 0 Then
                       
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Qty) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & (rstItem("Qty") * -1) & ")")
                      
                    Else
                        ItemBal = ItemBal + rstItem("Qty")
                        Cnn.Execute ("INSERT INTO tmpanalysis1" & divcode & " (Monthno,Itemcode,Qty) Values (" & _
                            DateDiff("m", Format(rstItem("docdt"), "yyyy-MM-dd"), Format(sDate, "yyyy-MM-dd")) & _
                            ",'" & RSq("ItemCode") & "'," & ItemBal * -1 & ")")
                           Exit Do
                    End If
              
                    
                     rstItem.MoveNext
                Loop
           
            End If
                       
            RSq.MoveNext
        Loop
        
        
    Set rstItem = New ADODB.Recordset
    rstItem.Open "Select * from tmpanalysis1" & divcode & "", cn, adOpenForwardOnly, adLockReadOnly
    If Not rstItem.EOF Then
        specificdaysreg_Qty = True
    Else
        MsgBox "No Record Found", vbInformation, head
        specificdaysreg_Qty = False
    End If
      
      
Exit Function

Errh:

MsgBox "Error No :  " & err.Number & Chr(13) & Chr(13) & "Description : " & err.description & Chr(13) & Chr(13) & "Procedure : specificdaysreg " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: repAnalysis"
End Function



