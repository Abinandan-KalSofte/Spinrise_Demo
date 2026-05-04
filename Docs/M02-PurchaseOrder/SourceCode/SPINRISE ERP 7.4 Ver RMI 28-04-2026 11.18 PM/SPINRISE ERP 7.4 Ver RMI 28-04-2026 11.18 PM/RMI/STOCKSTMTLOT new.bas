Attribute VB_Name = "STOCKSTMTLOT"
'Dim rsP As New Recordset
'Dim op1, op2, op3, op4, op5, op6, op7, op8, op9 As Double
'Dim rsP1 As New Recordset
'Dim opf As New Recordset
'Dim cat As New Recordset
'Dim pg1 As Integer
'Dim a As Integer
'Dim co As Integer
'Public Sub StockLotReport1(u As String, v As String, w As String, FLtn As Integer, TLtn As Integer)
'Dim RS1 As Recordset
'Dim rs2 As Recordset
'Dim pagelen As Integer
''divname = "KALPATHARU TEXTILES LIMITED"
'Dim RESULT As Recordset
'Dim RPTV As REPORT.ReportView
'Dim SR As String
'Dim tot1 As Double
'Dim tot2 As Double
'Dim tot3 As Double
'Dim tot4 As Double
'Dim tot5 As Double
'Dim tot6 As Double
'Dim tot7 As Double
'Dim tot8 As Double
'Dim tot9 As Double
'Dim tot10 As Double
'Dim totbal As Double
'Dim cnn As Connection
'Set cnn = New Connection
'pagelen = 63
'Set rs2 = New Recordset
'cnn.Provider = "MSDATASHAPE"
'cnn.Open connectstring
'
'Catcd = Left(w, 1)
'If w = "A   -  All" Then
'    Set RS1 = New Recordset
'    RS1.Open " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'    " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0)) AS VALUE  from " & _
'    " (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'    " select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where(B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' group by b.LOTNO,B.LOTDT,b.bblflg " & _
'    " Union select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'    " SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'    " SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(u, "yyyy-mm-dd") & "' AND OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'    " )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  lotyear='" & Year(yfdate) & "' and OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG " & _
'    " )Y GROUP BY LOTNO,LOTDT,BBLFLG ) a  group by LOTNO,LOTDT Union All " & _
'    " select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'    " Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'    " SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'    " SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  lotyear='" & Year(yfdate) & "' and B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'    " )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG " & _
'    " )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT " & _
'    " group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>=0", cnn, adOpenStatic
'Else
'        Set RS1 = New Recordset
'
'    Set RS1 = New Recordset
'    RS1.Open " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'    " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0)) AS VALUE  from " & _
'    " (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'    " select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where catcd='" & Catcd & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' group by b.LOTNO,B.LOTDT,b.bblflg " & _
'    " Union select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'    " SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'    " SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  c.catcd='" & Catcd & "' and lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(u, "yyyy-mm-dd") & "' AND OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'    " )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  c.catcd='" & Catcd & "' and lotyear='" & Year(yfdate) & "' and OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG " & _
'    " )Y GROUP BY LOTNO,LOTDT,BBLFLG ) a  group by LOTNO,LOTDT Union All " & _
'    " select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where catcd='" & Catcd & "' and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(v, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'    " Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'    " SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'    " SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  c.catcd='" & Catcd & "' and lotyear='" & Year(yfdate) & "' and B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'    " )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  c.catcd='" & Catcd & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG " & _
'    " )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE b.catcd='" & Catcd & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT " & _
'    " group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>=0 ", cnn, adOpenStatic
'
'End If
'
'If RS1.EOF Then
'   MsgBox "Sorry ! No Issues found for this month", vbInformation, head
'    Exit Sub
'End If
'Set RPTV = New REPORT.ReportView
'a = FreeFile
'Close #a
'Open KALFOLDERDATA & "\slot.TXT" For Output As #a
'pg1 = 1
'co = 0
'Print #a, Chr(15)
'Call PartyHeader(pg1, co, u, v, w, DIVNAME)
'co = 10
'op2 = 0
'op3 = 0
'op4 = 0
'op5 = 0
'op6 = 0
'op7 = 0
'totbal = 0
'RS1.MoveFirst
'Do While Not RS1.EOF
'        Print #a, Space(5) + Padr(RS1("catname"), 10, " ") + Padl(INF(RS1("lotno"), 0), 6, " ") + "/" + Padl(Year(RS1("lotdt")), 5, " ") + Space(1) + Padl(RS1("plotno"), 5, " ") + Space(1) + Padr(Format(RS1("lotdt"), "dd-mm-yy"), 12, " ") + Padr(RS1("varname"), 15, " ") + Padl(INF(RS1("opkgs"), 3), 18, " ") + Padl(INF(RS1("reckgs"), 3), 24, " ") + Padl(INF(RS1("isskgs"), 3), 22, " ") + Space(1) + Padl(INF(IIf(RS1("clobales") > 0, RS1("clobales"), " "), 0), 6, " ") + Space(8) + Padr(CStr(RS1("unit")), 6, " ") + Space(5) + Padl(INF(RS1("clokgs"), 3), 19, " ") + Padl(INF(RS1("ratekg"), 2), 24, " ") + Space(4) + Padl(INF(RS1("ratecy"), 2), 11, " ") + Padl(INF(RS1("value"), 2), 21, " ")
'        tot12 = tot12 + RS1("opkgs")
'        tot2 = tot2 + RS1("reckgs")
'        tot4 = tot4 + IIf(RS1("clobales") > 0, RS1("clobales"), 0)
'        tot6 = tot6 + RS1("clokgs")
'        tot7 = tot7 + RS1("value")
'        tot8 = tot8 + RS1("value")
'        tot3 = tot3 + RS1("isskgs")
'        co = co + 1
'        If co > pagelen Then
'            Print #a, Space(5) + String(225, "-")
'            Print #a, Chr(12)
'            pg1 = pg1 + 1
'            co = 10
'            Call PartyHeader(pg1, co, u, v, w, DIVNAME)
'        End If
'10:
'    RS1.MoveNext
'Loop
'totbal = tot5 + tot7
'Print #a,
'Print #a, Space(5) + String(225, "-")
'Print #a, Space(21) + " ** Grand Total **" + Padl(INF(tot12, 3), 40, " ") + Padl(INF(tot2, 3), 24, " ") + Padl(INF(tot3, 3), 22, " ") + Space(0) + Padl(INF(tot4, 0), 7, " ") + Space(19) + Padl(INF(tot6, 3), 19, " ") + Space(5) + Padl(INF(" ", 2), 21, " ") + Space(3) + Padl(INF(tot8, 2), 31, " ")
'Print #a, Space(5) + String(225, "-")
'Print #a, Chr(18)
'Print #a, Chr(12)
'Close #a
'a = FreeFile
'Call KALBATPROCESS("Red")
''Open "d:\slot.bat" For Output As #A
''Print #A, "cd\"
''Print #A, "d:"
''Print #A, "cd\"
''Print #A, "type slot.txt>prn"
''Close #A
''RPTV.txtfile = "d:\slot.txt"
''RPTV.Batfile = "d:\slot.bat"
'End Sub
'Public Sub PartyHeader(pg1 As Integer, co As Integer, u As String, v As String, w As String, DIVNAME As String)
'          Print #a,
''          Print #a, Space(5) + Space(Round((232 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((232 - 2 * Len(DIVNAME)) / 2))
'          Print #a, Chr(18)
'          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
'          Print #a,
'          SR = CStr(pdate) + Space(2)
'          'Print #A, Space(3) + Chr(27) + "E" + "Stock statement Lotwise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(16) & Padr(w, 40, " ") + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
'          Print #a, Space(3) + Chr(27) + "E" + "Stock statement Lotwise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yy") & Space(3) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(18) & Padr(w, 40, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
'          Print #a, Space(5) + String(225, "-")
'          Print #a, Space(5) + "               Mill   Party                                                                                                      <-----Closing----->                                                  Rate/        "
'          Print #a, Space(5) + "Category       LotNo  LotNo    Date     Variety                Open Stock              Receipts              Issues        Qty        Unit                 Stock Kgs                   Rate/Kg        Candy                Value"
'          Print #a, Space(5) + "                                                                 Kgs                     Kgs                   Kgs"
'          Print #a, Space(5) + String(225, "-")
'End Sub
'



Dim rsP As New Recordset
Dim op1, op2, op3, op4, op5, op6, op7, op8, op9 As Double
Dim rsP1 As New Recordset
Dim opf As New Recordset
Dim cat As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
'Public Sub StockLotReport1(u As String, v As String, w As String, fltn As Integer, tltn As Integer)
'Dim RS1 As Recordset
'Dim rs2 As Recordset
'Dim pagelen As Integer
''divname = "KALPATHARU TEXTILES LIMITED"
'Dim RESULT As Recordset
'Dim RPTV As REPORT.ReportView
'Dim SR As String
'Dim tot1 As Double
'Dim tot2 As Double
'Dim tot3 As Double
'Dim tot4 As Double
'Dim tot5 As Double
'Dim tot6 As Double
'Dim tot7 As Double
'Dim tot8 As Double
'Dim tot9 As Double
'Dim tot10 As Double
'Dim totbal As Double
'Dim cnn As Connection
'Set cnn = New Connection
'pagelen = 63
'Set rs2 = New Recordset
'cnn.Provider = "MSDATASHAPE"
'cnn.Open connectstring
'
'catcd = Trim(Left(w, 1))
'If catcd = "A" Then
'    Set RS1 = New Recordset
'    SqlStr = ""
'    SqlStr = SqlStr + Chr(13) & " select a.godown,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS "
'    SqlStr = SqlStr + Chr(13) & " RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end"
'    SqlStr = SqlStr + Chr(13) & " as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))-"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,  case when"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from  (("
'    SqlStr = SqlStr + Chr(13) & " select godown,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as"
'    SqlStr = SqlStr + Chr(13) & " recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from("
'    SqlStr = SqlStr + Chr(13) & " select b.godown,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end"
'    SqlStr = SqlStr + Chr(13) & " as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,"
'    SqlStr = SqlStr + Chr(13) & " 0 as issbales,0 as issboras,0 as isskgs from rm_lot b where(B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "'"
'    SqlStr = SqlStr + Chr(13) & " AND BALES >0 and b.divcode='" & Divcode & "'  and opflg='Y' and b.lotno between " & fltn & " and " & tltn & "   group by b.LOTNO,B.LOTDT,b.bblflg,b.godown"
'    SqlStr = SqlStr + Chr(13) & " Union"
'    SqlStr = SqlStr + Chr(13) & " select godown,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,"
'    SqlStr = SqlStr + Chr(13) & " case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ("
'    SqlStr = SqlStr + Chr(13) & " SELECT godown,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
'    SqlStr = SqlStr + Chr(13) & " SELECT c.godown,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in"
'    SqlStr = SqlStr + Chr(13) & " ('AC','AW') AND lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(u, "yyyy-mm-dd") & "' AND OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND B.ISSUED='Y' AND A.LOTNO="
'    SqlStr = SqlStr + Chr(13) & " B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
'    SqlStr = SqlStr + Chr(13) & " '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and"
'    SqlStr = SqlStr + Chr(13) & " c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG,c.godown  )X GROUP BY"
'    SqlStr = SqlStr + Chr(13) & " LOTNO , LOTDT, BBLFLG, godown"
'    SqlStr = SqlStr + Chr(13) & " Union"
'    SqlStr = SqlStr + Chr(13) & " SELECT c.godown,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in"
'    SqlStr = SqlStr + Chr(13) & " ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and OPFLG='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT="
'    SqlStr = SqlStr + Chr(13) & " B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt"
'    SqlStr = SqlStr + Chr(13) & " and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & ""
'    SqlStr = SqlStr + Chr(13) & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG,c.godown  )Y GROUP BY LOTNO,LOTDT,BBLFLG,godown ) a  group by LOTNO,LOTDT,godown"
'    SqlStr = SqlStr + Chr(13) & " Union All"
'    SqlStr = SqlStr + Chr(13) & " select b.godown,b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0"
'    SqlStr = SqlStr + Chr(13) & " end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where opflg='N' and"
'    SqlStr = SqlStr + Chr(13) & " b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and"
'    SqlStr = SqlStr + Chr(13) & " '" & Format(v, "yyyy-mm-dd") & "'  and b.lotno between " & fltn & " and " & tltn & "  group by"
'    SqlStr = SqlStr + Chr(13) & " b.LOTNO , b.LOTDT, b.opflg, b.BBLFLG, b.godown"
'    SqlStr = SqlStr + Chr(13) & " Union All"
'    SqlStr = SqlStr + Chr(13) & " select godown,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B'"
'    SqlStr = SqlStr + Chr(13) & " then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS"
'    SqlStr = SqlStr + Chr(13) & " from (  SELECT godown,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(  SELECT c.godown,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS"
'    SqlStr = SqlStr + Chr(13) & " BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "' AND  lotyear='" & Year(yfdate) & "'"
'    SqlStr = SqlStr + Chr(13) & " and B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt"
'    SqlStr = SqlStr + Chr(13) & " Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno="
'    SqlStr = SqlStr + Chr(13) & " c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY"
'    SqlStr = SqlStr + Chr(13) & " c.LOTNO,C.LOTDT,A.BALENO,BBLFLG,c.godown  )X GROUP BY LOTNO,LOTDT,BBLFLG,godown"
'    SqlStr = SqlStr + Chr(13) & " Union"
'    SqlStr = SqlStr + Chr(13) & " SELECT c.godown,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in"
'    SqlStr = SqlStr + Chr(13) & " ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND"
'    SqlStr = SqlStr + Chr(13) & " A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and"
'    SqlStr = SqlStr + Chr(13) & " b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and"
'    SqlStr = SqlStr + Chr(13) & " " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG,c.godown"
'    SqlStr = SqlStr + Chr(13) & " )Y GROUP BY LOTNO,LOTDT,BBLFLG,godown ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE B.VARCODE="
'    SqlStr = SqlStr + Chr(13) & " V.VARCODE and b.divcode='" & Divcode & "' AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT  group by CATNAME,a.LOTNO,"
'    SqlStr = SqlStr + Chr(13) & " A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,a.godown HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))-"
'    SqlStr = SqlStr + Chr(13) & " Sum (IsNull(a.issKgs, 0)) >= 0"
'    RS1.Open SqlStr, cnn, adOpenStatic
'    'RS1.Open " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'    " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from " & _
'    " (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'    " select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where(B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0 and b.divcode='" & Divcode & "'  and opflg='Y' and b.lotno between " & fltn & " and " & tltn & "   group by b.LOTNO,B.LOTDT,b.bblflg " & _
'    " Union select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'    " SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'    " SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in ('AC','AW') AND lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(u, "yyyy-mm-dd") & "' AND OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'    " )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and c.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG " & _
'    " )Y GROUP BY LOTNO,LOTDT,BBLFLG ) a  group by LOTNO,LOTDT Union All " & _
'    " select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where opflg='N' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'    " Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'    " SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'    " SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "' AND  lotyear='" & Year(yfdate) & "' and B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'    " )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG " & _
'    " )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE B.VARCODE=V.VARCODE and b.divcode='" & Divcode & "' AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT " & _
'    " group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>=0", cnn, adOpenStatic
'Else
'    Set RS1 = New Recordset
'    SqlStr = ""
'    SqlStr = SqlStr + Chr(13) & " select a.godown,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS "
'    SqlStr = SqlStr + Chr(13) & " RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end"
'    SqlStr = SqlStr + Chr(13) & " as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))-"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,  case when"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from  (("
'    SqlStr = SqlStr + Chr(13) & " select godown,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as"
'    SqlStr = SqlStr + Chr(13) & " recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from("
'    SqlStr = SqlStr + Chr(13) & " select b.godown,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end"
'    SqlStr = SqlStr + Chr(13) & " as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,"
'    SqlStr = SqlStr + Chr(13) & " 0 as issbales,0 as issboras,0 as isskgs from rm_lot b where(B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "'"
'    SqlStr = SqlStr + Chr(13) & " AND BALES >0 and b.divcode='" & Divcode & "'  and opflg='Y' and b.lotno between " & fltn & " and " & tltn & "   group by b.LOTNO,B.LOTDT,b.bblflg,b.godown"
'    SqlStr = SqlStr + Chr(13) & " Union"
'    SqlStr = SqlStr + Chr(13) & " select godown,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,"
'    SqlStr = SqlStr + Chr(13) & " case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ("
'    SqlStr = SqlStr + Chr(13) & " SELECT godown,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
'    SqlStr = SqlStr + Chr(13) & " SELECT c.godown,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in"
'    SqlStr = SqlStr + Chr(13) & " ('AC','AW') AND lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(u, "yyyy-mm-dd") & "' AND OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND B.ISSUED='Y' AND A.LOTNO="
'    SqlStr = SqlStr + Chr(13) & " B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
'    SqlStr = SqlStr + Chr(13) & " '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and"
'    SqlStr = SqlStr + Chr(13) & " c.divcode='" & Divcode & "'  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG,c.godown  )X GROUP BY"
'    SqlStr = SqlStr + Chr(13) & " LOTNO , LOTDT, BBLFLG, godown"
'    SqlStr = SqlStr + Chr(13) & " Union"
'    SqlStr = SqlStr + Chr(13) & " SELECT c.godown,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in"
'    SqlStr = SqlStr + Chr(13) & " ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and OPFLG='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT="
'    SqlStr = SqlStr + Chr(13) & " B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt"
'    SqlStr = SqlStr + Chr(13) & " and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & ""
'    SqlStr = SqlStr + Chr(13) & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG,c.godown  )Y GROUP BY LOTNO,LOTDT,BBLFLG,godown ) a  group by LOTNO,LOTDT,godown"
'    SqlStr = SqlStr + Chr(13) & " Union All"
'    SqlStr = SqlStr + Chr(13) & " select b.godown,b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0"
'    SqlStr = SqlStr + Chr(13) & " end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then"
'    SqlStr = SqlStr + Chr(13) & " sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where opflg='N' and"
'    SqlStr = SqlStr + Chr(13) & " b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and"
'    SqlStr = SqlStr + Chr(13) & " '" & Format(v, "yyyy-mm-dd") & "'  and b.lotno between " & fltn & " and " & tltn & "  group by"
'    SqlStr = SqlStr + Chr(13) & " b.LOTNO , b.LOTDT, b.opflg, b.BBLFLG, b.godown"
'    SqlStr = SqlStr + Chr(13) & " Union All"
'    SqlStr = SqlStr + Chr(13) & " select godown,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B'"
'    SqlStr = SqlStr + Chr(13) & " then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS"
'    SqlStr = SqlStr + Chr(13) & " from (  SELECT godown,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM(  SELECT c.godown,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS"
'    SqlStr = SqlStr + Chr(13) & " BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "' AND  lotyear='" & Year(yfdate) & "'"
'    SqlStr = SqlStr + Chr(13) & " and B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt"
'    SqlStr = SqlStr + Chr(13) & " Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno="
'    SqlStr = SqlStr + Chr(13) & " c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and c.lotno between " & fltn & " and " & tltn & "  GROUP BY"
'    SqlStr = SqlStr + Chr(13) & " c.LOTNO,C.LOTDT,A.BALENO,BBLFLG,c.godown  )X GROUP BY LOTNO,LOTDT,BBLFLG,godown"
'    SqlStr = SqlStr + Chr(13) & " Union"
'    SqlStr = SqlStr + Chr(13) & " SELECT c.godown,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in"
'    SqlStr = SqlStr + Chr(13) & " ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND"
'    SqlStr = SqlStr + Chr(13) & " A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and"
'    SqlStr = SqlStr + Chr(13) & " b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and"
'    SqlStr = SqlStr + Chr(13) & " " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG,c.godown"
'    SqlStr = SqlStr + Chr(13) & " )Y GROUP BY LOTNO,LOTDT,BBLFLG,godown ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE B.VARCODE="
'    SqlStr = SqlStr + Chr(13) & " V.VARCODE and b.divcode='" & Divcode & "' and  b.catcd='" & catcd & "' AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT  group by CATNAME,a.LOTNO,"
'    SqlStr = SqlStr + Chr(13) & " A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,a.godown HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))-"
'    SqlStr = SqlStr + Chr(13) & " Sum (IsNull(a.issKgs, 0)) >= 0"
'    RS1.Open SqlStr, cnn, adOpenStatic
'
'    'RS1.Open " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'    " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from " & _
'    " (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'    " select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where catcd='" & catcd & "' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg " & _
'    " Union select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'    " SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'    " SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'   AND  c.catcd='" & catcd & "' and lotyear='" & Year(yfdate) & "' and DOCDT<'" & Format(u, "yyyy-mm-dd") & "' AND OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.lotno between " & fltn & " and " & tltn & "   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'    " )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') AND  c.catcd='" & catcd & "' and lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'  and OPFLG='Y' AND LOTYEAR='" & Year(yfdate) & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & "  GROUP BY c.LOTNO,C.LOTDT,BBLFLG " & _
'    " )Y GROUP BY LOTNO,LOTDT,BBLFLG ) a  group by LOTNO,LOTDT Union All " & _
'    " select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where catcd='" & catcd & "' and b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(v, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and  b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'    " Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg = 'R' then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'    " SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'    " SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND c.catcd='" & catcd & "' and lotyear='" & Year(yfdate) & "' and B.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.lotno between " & fltn & " and " & tltn & "   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'    " )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  c.catcd='" & catcd & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG " & _
'    " )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE b.catcd='" & catcd & "' and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT " & _
'    " group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>=0 ", cnn, adOpenStatic
'
'End If
'
'If RS1.EOF Then
'   MsgBox "Sorry ! No Issues found for this month", vbInformation, head
'    Exit Sub
'End If
'Set RPTV = New REPORT.ReportView
'a = FreeFile
'Close #a
'Open "d:\slot.TXT" For Output As #a
'pg1 = 1
'co = 0
'Print #a, Chr(15)
'Call PartyHeader(pg1, co, u, v, w, DIVNAME)
'co = 10
'op2 = 0
'op3 = 0
'op4 = 0
'op5 = 0
'op6 = 0
'op7 = 0
'totbal = 0
'RS1.MoveFirst
'Do While Not RS1.EOF
'        If RS1("CLOBALES") + RS1("CLOBORAS") <= 0 Then
'            clokgs = 0
'        Else
'            clokgs = RS1("CLOKGS")
'        End If
'        CLOQTY = 0
'        CLOQTY = RS1("CLOBALES") + RS1("CLOBORAS")
'        issKgs = 0
'        Value = 0
'        If CLOQTY <= 0 Then
'            issKgs = Round(RS1("ISSKGS"), 0)
'            Value = 0
'        Else
'            issKgs = RS1("ISSKGS")
'            Value = IIf(IsNull(RS1("value")), 0, RS1("VALUE"))
'        End If
'
'
'
'        Print #a, Space(5) + Padr(RS1("catname"), 10, " ") + Padl(INF(RS1("lotno"), 0), 6, " ") + "/" + Padl(Year(RS1("lotdt")), 5, " ") + Space(1) + Padl(RS1("plotno"), 5, " ") + Space(1) + Padr(Format(RS1("lotdt"), "dd-mm-yy"), 12, " ") + Padr(RS1("varname"), 15, " ") + Padr(RS1("godown"), 6, " ") + Padl(INF(RS1("opkgs"), 3), 16, " ") + Padl(INF(RS1("reckgs"), 3), 20, " ") + Padl(INF(issKgs, 3), 22, " ") + Space(1) + Padl(INF(CLOQTY, 0), 6, " ") + Space(8) + Padr(CStr(IIf(RS1("unit") = "B", "BALES", "BORAH")), 6, " ") + Space(5) + Padl(INF(clokgs, 3), 19, " ") + Padl(INF(RS1("ratekg"), 4), 24, " ") + Space(4) + Padl(INF(RS1("ratecy"), 2), 11, " ") + Padl(INF(Value, 2), 21, " ")
'        tot12 = tot12 + RS1("opkgs")
'        tot2 = tot2 + RS1("reckgs")
'        tot4 = tot4 + CLOQTY
'        tot6 = tot6 + clokgs
'        tot7 = tot7 + Value
'        tot8 = tot8 + Value
'        tot3 = tot3 + issKgs
'        co = co + 1
'        If co > pagelen Then
'            Print #a, Space(5) + String(225, "-")
'            Print #a, Chr(12)
'            pg1 = pg1 + 1
'            co = 10
'            Call PartyHeader(pg1, co, u, v, w, DIVNAME)
'        End If
'10:
'    RS1.MoveNext
'Loop
'totbal = tot5 + tot7
'Print #a,
'Print #a, Space(5) + String(225, "-")
'Print #a, Space(21) + " ** Grand Total **" + Padl(INF(tot12, 3), 40, " ") + Padl(INF(tot2, 3), 24, " ") + Padl(INF(tot3, 3), 22, " ") + Space(0) + Padl(INF(tot4, 0), 7, " ") + Space(19) + Padl(INF(tot6, 3), 19, " ") + Space(5) + Padl(INF(" ", 2), 21, " ") + Space(3) + Padl(INF(tot8, 2), 31, " ")
'Print #a, Space(5) + String(225, "-")
'Print #a, Chr(18)
'Print #a, Chr(12)
'Close #a
'a = FreeFile
'Open "d:\slot.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "d:"
'Print #a, "cd\"
'Print #a, "type slot.txt>prn"
'Close #a
'RPTV.txtfile = "d:\slot.txt"
'RPTV.Batfile = "d:\slot.bat"
'End Sub

'Public Sub StockLotReport1(u As String, v As String, w As String, fltn As Integer, tltn As Integer, Optional pRecType As String)
'Dim RS1 As Recordset
'Dim rs2 As Recordset
'Dim pagelen As Integer
''divname = "KALPATHARU TEXTILES LIMITED"
'Dim RESULT As Recordset
'Dim RPTV As Report.ReportView
'Dim SR As String
'Dim tot1 As Double
'Dim tot2 As Double
'Dim tot3 As Double
'Dim tot4 As Double
'Dim tot5 As Double
'Dim tot6 As Double
'Dim tot7 As Double
'Dim tot8 As Double
'Dim tot9 As Double
'Dim tot10 As Double
'Dim totbal As Double
'Dim cnn As Connection
'Set cnn = New Connection
'pagelen = 63
'Set rs2 = New Recordset
'cnn.Provider = "MSDATASHAPE"
'cnn.Open connectstring
''vrectype = Trim(Left(pRecType, 3))
'catcd = Trim(Left(w, 1))
'If catcd = "A" Then
'    Set RS1 = New Recordset
'        SqlStr = ""
'        SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES-issbales)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,"
'        SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from"
'        SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from("
'        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & "Union"
'        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(u, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & "Union"
'        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
'        SqlStr = SqlStr + Chr(13) & "Union"
'        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(u, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(u, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
'        SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & ") a  group by LOTNO,LOTDT Union All"
'        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ("
'        SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
'        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
'        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
'        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(u, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
'        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
'        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
'        SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
'        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
'        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(u, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
'        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
'        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT and (b.TransferType='' OR b.TransferType='JR')"
'        SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG"
'        RS1.Open SqlStr, cnn, adOpenStatic
'
'Else
'        Set RS1 = New Recordset
'        SqlStr = ""
'        SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES-issbales)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,"
'        SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from"
'        SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from("
'        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & "Union"
'        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(u, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & "Union"
'        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
'        SqlStr = SqlStr + Chr(13) & "Union"
'        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(u, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(u, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
'        SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & ") a  group by LOTNO,LOTDT Union All"
'        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ("
'        SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
'        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
'        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
'        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(u, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
'        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
'        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
'        SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
'        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
'        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(u, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
'        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
'        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
'        SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.catcd='" & catcd & "' and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT and (b.TransferType='' OR b.TransferType='JR')"
'        SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG"
'        RS1.Open SqlStr, cnn, adOpenStatic
'End If
'
'If RS1.EOF Then
'   MsgBox "No Stock found for this month", vbInformation, head
'   Screen.MousePointer = 0
'    Exit Sub
'End If
'Set RPTV = New Report.ReportView
'a = FreeFile
'Close #a
'Open "C:\slot.TXT" For Output As #a
'pg1 = 1
'co = 0
'Print #a, Chr(15)
'Call PartyHeader(pg1, co, u, v, w, DIVNAME)
'co = 10
'op2 = 0
'op3 = 0
'op4 = 0
'op5 = 0
'op6 = 0
'op7 = 0
'totbal = 0
'tot12 = 0
'tot2 = 0
'tot4 = 0
'tot6 = 0
'tot7 = 0
'tot8 = 0
'tot3 = 0
'RS1.MoveFirst
'Do While Not RS1.EOF
'
'        If RS1("clobales") + RS1("cloboras") > 0 Then
'            clokgs = RS1("CLOKGS")
'            CLOQTY = 0
'            CLOQTY = RS1("CLOBALES") + RS1("CLOBORAS")
'            issKgs = 0
'            Value = 0
'
'            oPKG = RS1("opkgs")
'            Value = RS1("value")
'        Else
'            clokgs = 0
'            CLOQTY = 0
'            CLOQTY = 0
'            issKgs = 0
'            Value = 0
'            issKgs = 0
'            oPKG = 0
'        End If
'            issKgs = RS1("ISSKGS")
'            'Value = IIf(IsNull(RS1("value")), 0, RS1("VALUE"))
'
'
''If RS1("CLOBALES") + RS1("CLOBORAS") > 0 Then
'
'        Print #a, Space(5) + Padr(RS1("catname"), 10, " ") + Padl(INF(RS1("lotno"), 0), 6, " ") + "/" + Padl(Year(RS1("lotdt")), 5, " ") + Space(1) + Padl(RS1("plotno"), 5, " ") + Space(1) + Padr(Format(RS1("lotdt"), "dd-mm-yy"), 12, " ") + Padr(RS1("varname"), 15, " ") + Padl(INF(oPKG, 3), 18, " ") + Padl(INF(RS1("reckgs"), 3), 24, " ") + Padl(INF(issKgs, 3), 22, " ") + Space(1) + Padl(INF(CLOQTY, 0), 6, " ") + Space(8) + Padr(CStr(IIf(RS1("unit") = "B", "BALES", "BORAH")), 6, " ") + Space(5) + Padl(INF(clokgs, 3), 19, " ") + Padl(INF(RS1("ratekg"), 2), 24, " ") + Space(4) + Padl(INF(RS1("rateCY"), 2), 11, " ") + Padl(INF(Value, 2), 21, " ")
'        tot12 = tot12 + oPKG  ''RS1("opkgs")
'        tot2 = tot2 + RS1("reckgs")
'        tot4 = tot4 + CLOQTY
'        tot6 = tot6 + clokgs
'        tot7 = tot7 + Value
'        tot8 = tot8 + Value
'        tot3 = tot3 + issKgs
'        co = co + 1
'        If co > pagelen Then
'            Print #a, Space(5) + String(225, "-")
'            Print #a, Chr(12)
'            pg1 = pg1 + 1
'            co = 10
'            Call PartyHeader(pg1, co, u, v, w, DIVNAME)
'        End If
''End If
'10:
'    RS1.MoveNext
'Loop
'totbal = tot5 + tot7
'Print #a,
'Print #a, Space(5) + String(225, "-")
'Print #a, Space(21) + " ** Grand Total **" + Padl(INF(tot12, 3), 40, " ") + Padl(INF(tot2, 3), 24, " ") + Padl(INF(tot3, 3), 22, " ") + Space(0) + Padl(INF(tot4, 0), 7, " ") + Space(19) + Padl(INF(tot6, 3), 19, " ") + Space(5) + Padl(INF(" ", 2), 21, " ") + Space(3) + Padl(INF(tot8, 2), 31, " ")
'Print #a, Space(5) + String(225, "-")
'Print #a, Chr(18)
'Print #a, Chr(12)
'' Call footermod(CInt(a), footerstr, 85)
'Close #a
'a = FreeFile
'Open "C:\slot.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type slot.txt>prn"
'Close #a
'RPTV.txtfile = "C:\slot.txt"
'RPTV.Batfile = "C:\slot.bat"
'End Sub

Public Sub StockLotReport1(u As String, v As String, w As String, fltn As Integer, tltn As Integer, Optional pRecType As String, Optional footerstr As String)
Dim RS1 As Recordset
Dim rs2 As Recordset
Dim PageLen As Integer
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
Dim totbal As Double
Dim cnn As Connection
Set cnn = New Connection
PageLen = 63
Set rs2 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
catcd = Trim(Left(w, 1))
If Trim(Left(w, 3)) = "A" Then
    Set RS1 = New Recordset
        SqlStr = ""
        SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,b.godown,BBLFLG as unit,SUM(OPBALES-issbales)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,"
        SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from"
        SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from("
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(u, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(u, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(u, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
        SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
        SqlStr = SqlStr + Chr(13) & ") a  group by LOTNO,LOTDT Union All"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ("
        SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(u, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
        SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(u, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
        SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT and (b.TransferType='' OR b.TransferType='JR') "
        SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,b.godown,BBLFLG,RATECY,RATEKG Order by a.lotdt, a.lotno"
        RS1.Open SqlStr, cnn, adOpenStatic
Else
        Set RS1 = New Recordset
        
        SqlStr = ""
        SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,b.godown,BBLFLG as unit,SUM(OPBALES-issbales)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras,"
        SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from"
        SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from("
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(u, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(u, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (e.rejflg='N' or e.rejdt>'" & Format(u, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(u, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
        SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
        SqlStr = SqlStr + Chr(13) & ") a  group by LOTNO,LOTDT Union All"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(u, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ("
        SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(u, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
        SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(u, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
        SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.catcd='" & catcd & "' and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND b.lottype = 'A' "
        SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,b.godown,BBLFLG,RATECY,RATEKG order by a.lotdt, a.lotno"
        RS1.Open SqlStr, cnn, adOpenStatic
End If

If RS1.EOF Then
   MsgBox "No Stock found for this month", vbInformation, head
   Screen.MousePointer = 0
    Exit Sub
End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Open "C:\slot.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, co, u, v, w, DIVNAME)
co = 10
op2 = 0
op3 = 0
op4 = 0
op5 = 0
op6 = 0
op7 = 0
totbal = 0
RS1.MoveFirst
Do While Not RS1.EOF
        
        'If RS1("CLOBALES") + RS1("CLOBORAS") <= 0 Then
        '    clokgs = 0
        'Else
            clokgs = RS1("CLOKGS")
        'End If
        CLOQTY = 0
        CLOQTY = RS1("CLOBALES") + RS1("CLOBORAS")
        issKgs = 0
        Value = 0
        'If CLOQTY <= 0 Then
         '   issKgs = Round(RS1("ISSKGS"), 0)
        '    Value = 0
        'Else
            issKgs = RS1("ISSKGS")
            Value = IIf(IsNull(RS1("value")), 0, RS1("VALUE"))
        'End If
        
        'MsgBox " Bale  :   " & RS1("OPBALES")
        'MsgBox " Bhora :   " & RS1("OPBORAS")
        'If RS1("OPBALES") + RS1("OPBORAS") <= 0 Then
        '    oPKG = 0
        'Else
            oPKG = RS1("opkgs")
        'End If
        
'If RS1("CLOBALES") + RS1("CLOBORAS") > 0 Then
        
        Print #a, Space(5) + Padr(RS1("catname"), 10, " ") + Space(2) + Padr(RS1("godown"), 4, " ") + Padl(RS1("lotno"), 6, " ") + "/" + Padr(Format(RS1("lotdt"), "yy"), 2, " ") + Space(2) + Padl(RS1("plotno"), 6, " ") + Space(2) + Padr(Format(RS1("lotdt"), "dd-mm-yy"), 12, " ") + Padr(RS1("varname"), 9, " ") + Padl(INF(oPKG, 3), 18, " ") + Padl(INF(RS1("reckgs"), 3), 24, " ") + Padl(INF(issKgs, 3), 22, " ") + Space(1) + Padl(INF(CLOQTY, 0), 6, " ") + Space(8) + Padr(CStr(IIf(RS1("unit") = "B", "BALES", "BORAH")), 6, " ") + Space(5) + Padl(INF(clokgs, 3), 19, " ") + Padl(INF(RS1("ratekg"), 4), 24, " ") + Space(4) + Padl(INF(RS1("rateCY"), 2), 11, " ") + Padl(INF(Value, 2), 21, " ")
        tot12 = tot12 + oPKG  ''RS1("opkgs")
        tot2 = tot2 + RS1("reckgs")
        tot4 = tot4 + CLOQTY
        tot6 = tot6 + clokgs
        tot7 = tot7 + Value
        tot8 = tot8 + Value
        tot3 = tot3 + issKgs
        co = co + 1
        If co > PageLen Then
            Print #a, Space(5) + String(225, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 10
            Call PartyHeader(pg1, co, u, v, w, DIVNAME)
        End If
'End If
10:
    RS1.MoveNext
Loop
totbal = tot5 + tot7
Print #a,
Print #a, Space(5) + String(225, "-")
Print #a, Chr(27) & "E" & Space(21) + " ** Grand Total **" + Padl(INF(tot12, 3), 40, " ") + Padl(INF(tot2, 3), 24, " ") + Padl(INF(tot3, 3), 22, " ") + Space(0) + Padl(INF(tot4, 0), 7, " ") + Space(19) + Padl(INF(tot6, 3), 19, " ") + Space(5) + Padl(INF(" ", 2), 21, " ") + Space(3) + Padl(INF(tot8, 2), 31, " ") & Chr(27) & "F"
Print #a, Space(5) + String(225, "-")
Print #a, Chr(18)
Print #a, Chr(12)
' Call footermod(CInt(a), footerstr, 85)
Close #a
a = FreeFile
Open "C:\slot.bat" For Output As #a
Print #a, "cd\"
Print #a, "C:"
Print #a, "cd\"
Print #a, "type slot.txt>prn"
Close #a
RPTV.txtfile = "C:\slot.txt"
RPTV.Batfile = "C:\slot.bat"
End Sub

Public Sub PartyHeader(pg1 As Integer, co As Integer, u As String, v As String, w As String, DIVNAME As String)
          Print #a,
'          Print #a, Space(5) + Space(Round((232 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((232 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(Format(pdate, "dd/MM/yy")) + Space(2)
          'Print #A, Space(3) + Chr(27) + "E" + "Stock statement Lotwise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(16) & Padr(w, 40, " ") + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(3) + Chr(27) + "E" + "Stock statement Lotwise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(18) & Padr(w, 40, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(225, "-")
          Print #a, Space(5) + "                  Mill     Party                                                                                            <----------------Closing---------------->                                  Rate/        "
          Print #a, Space(5) + "Category    GC    LotNo    LotNo       Date    Variety          Open Stock                Receipts                Issues    Qty        Unit                 Stock Kgs                 Rate/Kg        Quintol                Value"
          Print #a, Space(5) + "                                                                       Kgs                     Kgs                   Kgs"
          Print #a, Space(5) + String(225, "-")
End Sub






