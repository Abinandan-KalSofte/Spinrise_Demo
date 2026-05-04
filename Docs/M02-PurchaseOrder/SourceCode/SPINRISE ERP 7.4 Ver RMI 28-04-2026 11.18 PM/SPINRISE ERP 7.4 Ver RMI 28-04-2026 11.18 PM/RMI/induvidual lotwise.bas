Attribute VB_Name = "induviduallotwise"
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
Public Sub StocklotareaReport(F_Date As String, T_Date As String, catcd As String, X As String, Y As String)
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
Open "C:\sv.TXT" For Output As #a
'Initilization of variables
TEMP = " "
temp1 = " "
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
te1 = 0

Call PartyHeader(CStr(pg1), CStr(Co), F_Date, T_Date, catcd)
Set rs1 = New Recordset
'rs1.Open "select distinct a.varcode from rm_var a,rm_lot b where a.varcode=b.varcode", cnn
rs1.Open "select distinct b.areacd from rm_area a,rm_lot b where a.areacode=b.areacd and b.lotno between '" & X & "' and '" & Y & "'", cnn
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
   RSV.Open "select a.areacd,a.lotno,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select areacd,lotno,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.areacd,b.lotno,case when b.bblflg = 'B' then count(*) else 0 end as opbales, case when b.bblflg   IN ('R','H') then count(*) else 0 end as opboras,sum(isnull(e.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(e.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.divcode=e.divcode and B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd = '" & SR & "'  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and b.areacd='" & rs1("areacd") & "' and b.lotno between '" & X & "' and '" & Y & "' group by b.areacd,b.lotno,b.bblflg ,b.ratekg " & _
            "union select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where  (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            "group by b.areacd,b.lotno,b.bblflg,b.ratekg) a  group by areacd,lotno" & _
            " Union All " & _
            "select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
            "from rm_lot b,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.divcode=e.divcode and b.catcd=e.catcd and " & _
            " upper(opflg)='N' and (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & SR & "' and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.areacd='" & rs1("areacd") & "' and b.lotno between '" & X & "' and '" & Y & "' " & _
            " group by b.areacd,b.lotno,b.opflg,b.bblflg,ratekg " & _
            " Union All " & _
            "select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4))as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0  and (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & rs1("areacd") & "' and b.lotno between '" & X & "' and '" & Y & "' group by b.areacd,b.lotno,b.opflg,b.bblflg,b.ratekg))a group by a.areacd,a.lotno HAVING SUM(OPBALES)>=0   ", cnn, adOpenStatic, adLockBatchOptimistic
            
   Else
   Set RSV = New Recordset
   RSV.Open "select a.areacd,a.lotno,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select areacd,lotno,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.areacd,b.lotno,case when b.bblflg = 'B' then count(*) else 0 end as opbales, case when b.bblflg   IN ('R','H') then count(*) else 0 end as opboras,sum(isnull(e.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(e.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.divcode=e.divcode and B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and b.areacd='" & rs1("areacd") & "' and b.lotno between '" & X & "' and '" & Y & "' group by b.areacd,b.lotno,b.bblflg ,b.ratekg " & _
            "union select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where  (e.rejflg='N' or e.rejdt>='" & Format(T_Date, "yyyy-mm-dd") & "') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            "group by b.areacd,b.lotno,b.bblflg,b.ratekg) a  group by areacd,lotno" & _
            " Union All " & _
            "select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
            "from rm_lot b,rm_bale e where b.lotno=e.lotno and b.lotdt=e.lotdt and b.divcode=e.divcode and b.catcd=e.catcd and " & _
            " upper(opflg)='N' and (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.areacd='" & rs1("areacd") & "' and b.lotno between '" & X & "' and '" & Y & "' " & _
            " group by b.areacd,b.lotno,b.opflg,b.bblflg,ratekg " & _
            " Union All " & _
            "select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4))as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0  and (e.rejflg='N' or e.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & rs1("areacd") & "' and b.lotno between '" & X & "' and '" & Y & "' group by b.areacd,b.lotno,b.opflg,b.bblflg,b.ratekg))a group by a.areacd,a.lotno HAVING SUM(OPBALES)>=0   ", cnn, adOpenStatic, adLockBatchOptimistic
    End If
    If RSV.RecordCount > 0 Then
      RSV.MoveFirst
    Else
      GoTo 30
    End If
      
      Do While Not RSV.EOF

   
   Set Namers = New Recordset
   Namers.Open "Select areaname from rm_area a where  a.areacode='" & rs1("areacd") & "'", DB, adOpenStatic
   If Not Namers.EOF Then areaname = Namers(0)
                
   Set opf = New Recordset
        If Trim(SR) = "A" Then SR1 = "'C','P','V'" Else SR1 = SR
        If Trim(SR) = "A" Then
           opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", DB
        Else
           opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE b.catcd = '" & SR1 & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", DB
        End If
    If RSV("OPbales") = 0 And RSV("opkgs") = 0 And RSV("RECBALES") = 0 And RSV("ISSBALES") = 0 And RSV("CLOBALES") = 0 Then
        RSV.MoveNext
        GoTo 31
    Else
        If TEMP <> areaname Then
            'Print #a, Space(5) + Chr(27) + "E" + Padr((CStr(AREANAME)), 16, " ") & Chr(27) & "F" & Padl(RSV("lotno"), 5, " ") & Padl(INF(VTOT, 0), 9, " ") + Padl(INF(vtot1, 0), 7, " ") + Padl(INF(vtot2, 3), 15, " ") + Padl(INF(VTOT12, 2), 17, " ") + Padl(INF(vtot3, 0), 10, " ") + Padl(INF(VTOT4, 0), 9, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 10, " ") + Padl(INF(VTOT7, 0), 9, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(VTOT9, 0), 10, " ") + Padl(INF(VTOT10, 0), 9, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
            Print #a, Space(5) + Chr(27) + "E" + Padr((CStr(areaname)), 16, " ") & Chr(27) & "F" & Padl(RSV("lotno"), 5, " ") & Padl(INF(RSV("opbales"), 0), 9, " ") + Padl(INF(RSV("opboras"), 0), 7, " ") + Padl(INF(RSV("opkgs"), 3), 15, " ") + Padl(INF(RSV("opvalue"), 2), 17, " ") + Padl(INF(RSV("recbales"), 0), 10, " ") + Padl(INF(RSV("recboras"), 0), 9, " ") + Padl(INF(RSV("reckgs"), 3), 14, " ") + Padl(INF(RSV("recvalue"), 2), 16, " ") + Padl(INF(RSV("issbales"), 0), 10, " ") + Padl(INF(RSV("issboras"), 0), 9, " ") + Padl(INF(RSV("isskgs"), 3), 14, " ") + Padl(INF(RSV("issvalue"), 2), 16, " ") + Padl(INF(RSV("clobales"), 0), 10, " ") + Padl(INF(RSV("cloboras"), 0), 9, " ") + Padl(INF(RSV("clokgs"), 3), 14, " ") + Padl(INF(RSV("closevalue"), 2), 16, " ")
            Co = Co + 1
            
        Else
            'Print #a, Space(5) + Padr("  ", 16, " ") & Padl(RSV("lotno"), 5, " ") & Padl(INF(VTOT, 0), 9, " ") + Padl(INF(vtot1, 0), 7, " ") + Padl(INF(vtot2, 3), 15, " ") + Padl(INF(VTOT12, 2), 17, " ") + Padl(INF(vtot3, 0), 10, " ") + Padl(INF(VTOT4, 0), 9, " ") + Padl(INF(VTOT5, 3), 14, " ") + Padl(INF(VTOT13, 2), 16, " ") + Padl(INF(VTOT6, 0), 10, " ") + Padl(INF(VTOT7, 0), 9, " ") + Padl(INF(VTOT8, 3), 14, " ") + Padl(INF(VTOT14, 2), 16, " ") + Padl(INF(VTOT9, 0), 10, " ") + Padl(INF(VTOT10, 0), 9, " ") + Padl(INF(VTOT11, 3), 14, " ") + Padl(INF(VTOT15, 2), 16, " ")
            Print #a, Space(5) + Padr("", 16, " ") & Padl(RSV("lotno"), 5, " ") & Padl(INF(RSV("opbales"), 0), 9, " ") + Padl(INF(RSV("opboras"), 0), 7, " ") + Padl(INF(RSV("opkgs"), 3), 15, " ") + Padl(INF(RSV("opvalue"), 2), 17, " ") + Padl(INF(RSV("recbales"), 0), 10, " ") + Padl(INF(RSV("recboras"), 0), 9, " ") + Padl(INF(RSV("reckgs"), 3), 14, " ") + Padl(INF(RSV("recvalue"), 2), 16, " ") + Padl(INF(RSV("issbales"), 0), 10, " ") + Padl(INF(RSV("issboras"), 0), 9, " ") + Padl(INF(RSV("isskgs"), 3), 14, " ") + Padl(INF(RSV("issvalue"), 2), 16, " ") + Padl(INF(RSV("clobales"), 0), 10, " ") + Padl(INF(RSV("cloboras"), 0), 9, " ") + Padl(INF(RSV("clokgs"), 3), 14, " ") + Padl(INF(RSV("closevalue"), 2), 16, " ")
            Co = Co + 1
           
        End If
    End If
    te1 = te1 + VTOT15
    Print #a,
    Co = Co + 1
    tot1 = val(tot1) + RSV("opbales")
    tot2 = val(tot2) + RSV("opboras")
   tot3 = val(tot3) + RSV("opkgs")
   tot4 = val(tot4) + RSV("recbales")
   tot5 = val(tot5) + RSV("recboras")
   tot6 = val(tot6) + RSV("reckgs")
   tot7 = val(tot7) + RSV("issbales")
   tot8 = val(tot8) + RSV("issboras")
    
   tot9 = val(tot9) + RSV("isskgs")
   tot10 = val(tot10) + RSV("clobales")
   tot11 = val(tot11) + RSV("cloboras")
   tot12 = val(tot12) + RSV("clokgs")
   tot13 = val(tot13) + RSV("opvalue")   'Opening value
   tot14 = val(tot14) + RSV("recvalue")  'Received value
   tot15 = val(tot15) + RSV("issvalue")   'Issue VaLUE
   tot16 = val(tot16) + RSV("closevalue")  'Clse value
    If Co >= PageLen Then
      Print #a, Space(5) + String(216, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call PartyHeader(CStr(pg1), CStr(Co), F_Date, T_Date, catcd)
    End If
30:
              
    If RSV.EOF = False Then RSV.MoveNext
    TEMP = areaname
    temp1 = areaname
31:
Loop
                
   If Co >= 58 Then
      Print #a, Space(5) + String(216, "-");
      Print #a, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      Call PartyHeader(CStr(pg1), CStr(Co), F_Date, T_Date, catcd)
   End If
           
   
   
   
   
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
   
str1:

   rs1.MoveNext

   
Loop

hot1 = 0
hot2 = 0
hot3 = 0

Print #a,
Print #a, Space(5) + String(216, "-")
Print #a, Space(5) + Chr(27) & "E" & "** Total **" + " " + Padl(INF(tot1, 0), 18, " ") + Padl(INF(tot2, 0), 6, " ") + Padl(INF(tot3, 3), 16, " ") + Padl(INF(tot13, 2), 17, " ") + Padl(INF(tot4, 0), 10, " ") + Padl(INF(tot5, 0), 9, " ") + Padl(INF(tot6, 3), 14, " ") + Padl(INF(tot14, 2), 16, " ") + Padl(INF(tot7, 0), 10, " ") + Padl(INF(tot8, 0), 9, " ") + Padl(INF(tot9, 3), 14, " ") + Padl(INF(tot15, 2), 16, " ") + Padl(INF(tot10, 0), 10, " ") + Padl(INF(tot11, 0), 9, " ") + Padl(INF(tot12, 3), 14, " ") + Padl(INF(tot16, 2), 16, " ") & Chr(27) & "F"
Print #a, Space(5) + String(216, "-")
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
Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
Print #a, Chr(15)
SR = CStr(pdate) + Space(2)
Print #a, Space(5) + "Stationwise Lotwise Stock Statement" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy") & Space(1) & Space(35) & Space(100) + Format(SR, "dd/mm/yy") + Space(2) + "Pg. :" + Space(1) + Padl(CStr(pg1), 3, " ")  '+ Chr(15)
Print #a, Space(5) + String(216, "-")
Print #a, Space(5) + "Station          Mill    <-------------Opening Balance-------------->     <----------------Receipts------------------>     <------------------Issues------------------>     <--------------Closing Balance------------->"
Print #a, Space(5) + "                Lotno    Bales                Weight            Value     Bales                 Weight           Value     Bales                 Weight           Value     Bales                 Weight           Value"
Print #a, Space(5) + String(216, "-")
Co = Co + 8
End Sub
