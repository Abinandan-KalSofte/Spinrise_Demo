Attribute VB_Name = "issueregisterstationwise"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim TotRs As Recordset
Dim Namers As Recordset
Dim VarName As String
Dim GTotrs As Recordset
Dim iCount As Integer
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Dim rp As New repform1
Dim z As Integer
Public Sub IssuestationReport(U As String, V As String, DIVNAME As String, Optional typeflg As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim rs4 As Recordset
Dim TEMP As String
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
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim S As String
Dim Count As Integer
Dim cnn As Connection
Set cnn = New Connection
Dim qtyt As Double
Dim weigh As Double
Dim amt As Double

'Developed by D.parimalam
amt = 0
atyt = 0
weigh = 0

tot1 = 0
tot2 = 0

Set rs1 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

Set rs4 = New Recordset
'Query Modified By D.Parim
If typeflg <> "A" Then
         
rs4.Open "select distinct a.docno,a.areaname,a.isstype,a.areacd,a.docdt,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg from" & _
         "(select b.isstype, C.DOCDT,a.areacd,f.areaname,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round((sum(isnull(E.NETWT,0))),3) 'netkgs',catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode,c.docno  from rm_lot a,rm_issb b,rm_issh c,ig_product d,rm_bale e,rm_area f  Where  b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt " & _
         "and a.divcode = '" & Divcode & "' and b.isstype in('" & typeflg & "') and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT and  c.docno=b.docno and  d.product_code=*a.cntcode and c.docdt  between '" & Format(U, "yyyy-mm-dd") & "'   and '" & Format(V, "yyyy-mm-dd") & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.areacd=f.areacode " & _
         "group by c.docno,b.isstype, a.bblflg,a.lotno,C.DOCDT,a.catcd,c.cntcd,a.areacd,f.areaname) a " & _
         "group by a.docno,a.isstype, a.lotno,A.DOCDT,a.areacd,unit,a.catcd,a.areaname" & _
         " order by a.docno,a.areaname,a.isstype,a.docdt,a.areacd,a.lotno", cnn, adOpenStatic
             
    
Else

rs4.Open "select distinct a.docno,a.areaname,a.isstype,a.areacd,a.docdt,a.catcd,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),3)netkg from" & _
         "(select b.isstype, C.DOCDT,a.areacd,f.areaname,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round((sum(isnull(E.NETWT,0))),3) 'netkgs',catcd=case when a.catcd='C' then 'Cotton' when a.catcd='P' then 'Polyester' when a.catcd='V' then 'Viscose' end,c.cntcd as cntcode,c.docno  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_area f  Where  b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.lotdt=e.lotdt " & _
         "and a.divcode = '" & Divcode & "' and left(b.isstype,1) <>'T' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt  between '" & Format(U, "yyyy-mm-dd") & "'   and '" & Format(V, "yyyy-mm-dd") & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.areacd=f.areacode " & _
         "group by c.docno,b.isstype, a.bblflg,a.lotno,C.DOCDT,a.catcd,c.cntcd,a.areacd,f.areaname) a " & _
         "group by a.docno,a.isstype, a.lotno,A.DOCDT,a.areacd,unit,a.catcd,a.areaname " & _
         "order by a.docno,a.areaname,a.isstype,a.docdt,a.areacd,a.lotno", cnn, adOpenStatic
End If

If rs4.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If

Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\issc.TXT" For Output As #a
 Open KALFOLDERDATA & "\issc.TXT" For Output As #a
pg1 = 1
Co = 0
Call PartyHeader(pg1, Co, U, V, DIVNAME)
        


              
    Do While Not rs4.EOF
                
                'If temp <> rs4("areaname") Then
            If temp1 <> rs4("docno") Then
                    Print #a,
                    Co = Co + 1
                    Print #a, Space(5) + Chr(27); "E"; Padl("Mix No. : ", 10, " ") + CStr(Padl(rs4("docno"), 4, " ") + Space(1) + Padl("Doc.Dt :", 10, " ")) + Padl(Format(rs4("docdt"), "dd/mm/yyyy"), 10, " "); Space(2); Chr(27); "F"
                    Co = Co + 1
                    Print #a,
                    Co = Co + 1
                    
                    If rs4("areaname") = area Then
                        area = " "
                    Else
                        area = rs4("areaname")
                    End If
                    'area = rs4("areaname")
                    Print #a, Space(6) + Chr(27); "E"; Padr(area, 10, " "); Chr(27) + "F";
                    Print #a, Space(5) & Padr(IIf(IsNull(rs4("catcd")), " ", rs4("catcd")), 9, " ") & Space(5) & Padr(rs4("lotno"), 6, " ") & Space(2) & Padl(INF(rs4("BALE"), 0), 6, " ") & Space(2) + Padl(INF(" ", 0), 6, " ") & Space(2) + Padl(INF(rs4("NETKG"), 3), 13, " ")
                    Co = Co + 1
                    
            Else
                    
                    If rs4("areaname") = area Then
                         area = " "
                    Else
                        area = rs4("areaname")
                    End If
                    
                    
                    Print #a, Space(6) + Chr(27); "E"; Padr(area, 10, " "); Chr(27) + "F";
                    Print #a, Space(5) & Padr(IIf(IsNull(rs4("catcd")), " ", rs4("catcd")), 9, " ") & Space(5) & Padr(rs4("lotno"), 6, " ") & Space(2) & Padl(INF(rs4("BALE"), 0), 6, " ") & Space(2) + Padl(INF(" ", 0), 6, " ") & Space(2) + Padl(INF(rs4("NETKG"), 3), 13, " ")
                    Co = Co + 1
            End If
                    'End If
            qtyt = qtyt + rs4("netkg")
            weigh = weigh + rs4("bale")
        
            tot1 = tot1 + rs4("BALE")
            tot2 = tot2 + rs4("NETKG")
            If Co >= PageLen Then
               Co = 0
               pg1 = pg1 + 1
               Print #a, Space(5) + String(75, "-")
               Print #a, Chr(12)
               Call PartyHeader(pg1, Co, U, V, DIVNAME)
  
            End If
                
            'Count Total
            Set TotRs = New Recordset
            If typeflg <> "A" Then
                TotRs.Open "select Bale=count(d.baleno),round(Sum (d.actisskgs),2) 'netkgs',round(avg(c.ratekg),2) as'ratekg',ROUND(avg(ratekg)*355.6187,0) as ratecandy, sum(d.actisskgs)*avg(c.ratekg) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where a.isstype='" & typeflg & "' and c.divcode = '" & Divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "'  and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by c.bblflg", db, adOpenStatic
            Else
                 TotRs.Open "select Bale=count(d.baleno),round(Sum (d.actisskgs),2) 'netkgs',round(avg(c.ratekg),2) as'ratekg',ROUND(avg(ratekg)*355.6187,0) as ratecandy, sum(d.actisskgs)*avg(c.ratekg) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & Divcode & "' and d.isstype <> 'T' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(U, "YYYY-MM-DD") & "'  and '" & Format(V, "YYYY-MM-DD") & "'   and c.rejflg='N' and c.lotyear='" & Year(yfdate) & "' group by c.bblflg", db, adOpenStatic
            End If
 

        If rs4.EOF = False Then
                temp1 = rs4("docno")
        End If
        area = rs4("areaname")
         rs4.MoveNext
                     
       Loop
          '==================================================
            'co = co + 1
            If Co >= PageLen Then
               Co = 0
               pg1 = pg1 + 1
               Print #a, Space(5) + String(75, "-")
               Print #a, Chr(12)
               Call PartyHeader(pg1, Co, U, V, DIVNAME)
 
            End If

            Print #a, Space(5) + String(75, "-")
            
           ' Print #A, Space(5); Chr(27); "E"; "** Grand Total ** " + Space(22); Padl(GTotrs("bale"), 4, " ") + Space(5) + Padl(INF(GTotrs("netkgs"), 3), 18, " ") 'Padl(INF(GTotrs("ratekg"), 2), 10, " ") + Padl(INF(GTotrs("ratecandy"), 0), 12, " ") + Padl(INF(GTotrs("amount"), 2), 18, " "); Chr(27); "F"
            Print #a, Space(5); Chr(27); "E"; "** Grand Total ** " + Space(22); Padl(tot1, 4, " ") + Space(5) + Padl(INF(tot2, 3), 18, " ")
            
            Print #a, Space(5) + String(75, "-")


Print #a, Chr(12)
Print #a, Chr(18)
Close #a
a = FreeFile
'Open "c:\issc.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type issc.txt>prn"
'Close #a
'RPTV.txtfile = "c:\issc.txt"
'RPTV.Batfile = "c:\issc.bat"
Call KALBATPROCESS("issc")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, DIVNAME)
          Print #a,
'          Print #a, Space(5) + Space(Round((190 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((190 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate)
          Print #a, Space(5) + Chr(27) + "E" + "Issue Checklist" + " From" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "To " & Space(1) & Format(V, "dd/mm/yy") & Chr(27) & "F" & Space(12) + Format(SR, "dd/mm/yy") & Space(1) + "Pg.:" + Padl(CStr(pg1), 3, " ")
          'Print #A, Space(3) + Chr(27) + "E" + "Stationwise Issue Register" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy"); Space(1) + "Dt:"; sr + Space(1); "Pg.:"; Padl(CStr(pg1), 3, " ")
          Print #a, Space(5) + String(75, "-")
          'Print #a, Space(5) + " Station        Category  Lot No       Bales   Borah     Net weight  "
          Print #a, Space(5) + " Station        Category  Lot No       Bales             Net weight  "
          Print #a, Space(5) + String(75, "- ")
          Co = Co + 7
End Sub



Public Sub Issreg(a As String, ISSTYPE As String, TrType1 As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim slno, r, r1 As Integer
Dim varno1, supplier1, VarName As String
Dim Sname   As String
Dim issrs As Recordset
Dim subcnt As Integer
Dim value, totrate1, gtotrate1, tgtotrate1 As Double
Dim totper1, gtotper1, tgtotper1 As Double
Dim strvarcode As String
Dim Rate, ratekg12 As Double
Dim MIXNO, vrectype, tmptypestr As String
Dim pertotal, pertotal1, pertotal2 As Double
Dim tot4, tot5, tot6, tot7, tot8, tot9 As Double
Dim gtot2, gtot3, gtot4, gtot5, gtot6 As Double
Dim ntot1, ntot2, ntot3, ntot4, ntot5, Ntotper1, Ntotrate1 As Double
Dim gtot1 As Double
Dim mixlot, mixgrp, mixcnt As String
Dim lotmix, lotno1, lotmonth, lotcat, lotyear As String
Dim rs55 As New Recordset
Dim RS78 As New Recordset
Set cnn = New Connection
cnn.Open connectstring
    
Set rs1 = New Recordset
    
If Trim(ISSTYPE) = "A" Then
    rs1.Open "select distinct a.isstype,b.issue_desc from rm_issh a, rm_issuetype b where a.isstype=b.issue_code and docdt = '" & Format(a, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db, adOpenStatic
Else
    rs1.Open "select distinct a.isstype,b.issue_desc " & _
         " from rm_issh a , rm_issuetype b where a.isstype=b.issue_code and docdt = '" & Format(a, "yyyy-mm-dd") & "' and a.isstype = '" & ISSTYPE & "' and divcode='" & Divcode & "'", db, adOpenStatic
End If
If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0
tgtot1 = 0: tgtot2 = 0: tgtot3 = 0: Tgtot4 = 0: tgtot5 = 0: tgtotper1 = 0: tgtotrate1 = 0

vrectype = Trim(Left(TrType1, 3))
        If vrectype = "A" Then
            tmptypestr = "d.LotType"
        Else
            tmptypestr = "d.TransferType"
        End If

                          
Set RPTV = New Report.ReportView
z = FreeFile
    
Close #z
'Open "C:\CotRecn78.TXT" For Output As #z
Open KALFOLDERDATA & "\CotRecn78.TXT" For Output As #z
pg1 = 1
Co = 0
r1 = 0: r2 = 0
i = 0: U = 0

Call IssregHeader(pg1, Co, a, "")

pertotal = 0
Do While Not rs1.EOF
    If MIXNO = rs1("isstype") Then
        Print #a, Space(45)
        Co = Co + 1
    Else
        If Co >= 60 Then
            Print #z, Space(5) + String(142, "-")
            Co = 0
            pg1 = pg1 + 1
            Call IssregHeader(pg1, Co, a, "")
        End If
        
        If U > 1 Then
        If Not tot4 = 0 Then
            totrate1 = tot5 / tot4
            Print #z, 'Space(5) & Space(20) & String(122, "-")
            Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("Issue Total", 20, " ") & Space(31) & Padl(tot1, 6, " ") & Space(1) & Padl(INF(tot2, 3), 14, " ") & Space(1) & Padl(INF(tot3, 3), 10, " ") & Space(0) & Padl(INF(tot4, 3), 13, " ") & Space(1) & Padl(INF(totrate1, 2), 10, " ") & Space(1) & Padl(INF(tot5, 2), 14, " ") + Chr(27) + "F"
            Print #z, 'Space(5) & Space(20) & String(122, "-")
            Co = Co + 3
            Else
            totrate1 = 0
            End If
        End If
        U = 0
        tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totrate1 = 0
        If Co >= 57 Then
            Print #z, Space(5) + String(142, "-")
            Co = 0
            pg1 = pg1 + 1
            Call IssregHeader(pg1, Co, a, "")
        End If
        Print #z,
        Print #z, Space(5) & Chr(27) + "E" + Padr(rs1("Isstype"), 17, " ") & Space(1) + Padr(rs1("Issue_Desc"), 20, " ") + Chr(27) + "F"
        mixnp = rs1("isstype")
        Co = Co + 2
    End If

    
    'For Rate Avg
    
    Set rs5 = New Recordset
    rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
         " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND b.ISSTYPE = '" & rs1("Isstype") & "' and b.docdt = '" & Format(a, "dd-mmm-yy") & "'" & _
         " and a.docno=b.docno and a.docdt=b.docdt", db, adOpenStatic
    r1 = rs5.RecordCount
    
    subcnt = 0
    Do While Not rs5.EOF
        If VarName = rs5("varname") Then
            Print #z, Space(20);
'            iCount = 0
        Else
            iCount = 0
            If i > 1 Then
                If (gtot4 <> 0) Then
                gtotrate1 = gtot5 / gtot4
                Else
                gtotrate1 = 0
                End If
                Print #z, 'Space(5) & Space(20) & String(122, "-")
                Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("Variety Total", 20, " ") & Space(31); Padl(INF(gtot1, 0), 6, " ") & Space(1) & Padl(INF(gtot2, 3), 14, " ") & Space(1) & Padl(INF(gtot3, 3), 10, " ") & Space(0) & Padl(INF(gtot4, 3), 13, " ") & Space(1) & Padl(INF(gtotrate1, 2), 10, " ") & Space(1) & Padl(INF(tot5, 2), 14, " ") + Chr(27) + "F"
                Print #z, 'Space(5) & Space(20) & String(122, "-")
                Co = Co + 3
            End If
            i = 0
            gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0
            If Co >= 60 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call IssregHeader(pg1, Co, a, "")
            End If
            Print #z,  '''''''''''''''''''''''''''
            Co = Co + 1
            Print #z, Space(5) + Padr(rs5!VarName, 19, " ") + Space(1);
            VarName = rs5("varname")
            Sname = ""
        End If
                
        varno1 = rs5!Varcode
        Set RS2 = New Recordset
If vrectype <> "ALL" Then

      RS2.Open "SELECT SUM(GRWT) AS GRWT,SUM(TAREWT) AS TAREWT,SUM(netwt) AS NETWT,SUM(QTY) AS QTY,lotno,lotdt,catcd FROM ( " & _
            " select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(a.FAVAOURABLEWGT) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d " & _
            " Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.divcode=c.divcode and b.divcode=a.divcode " & _
            " and b.baleno=a.baleno  and b.varcode = '" & rs5!Varcode & "' and c.isstype = '" & rs1("Isstype") & "'  and  b.varcode=a.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' AND D.LOTYEAR='" & Year(yfdate) & "' AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype  and b.divcode='" & Divcode & "' group by b.lotno,b.lotdt,b.catcd,D.WeightFlg" & _
            " UNION select 0 as grwt,0 as tarewt,0 as netwt,count(B.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_issb b,rm_issh c,rm_lot d " & _
            " Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and B.ISSUED='Y' AND  b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
            " and b.varcode = '" & rs5!Varcode & "' and c.isstype = '" & rs1("Isstype") & "' and " & tmptypestr & "= '" & Trim(vrectype) & " ' AND D.LOTYEAR='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' group by b.lotno,b.lotdt,b.catcd)X GROUP BY lotno,lotdt,catcd", db, adOpenStatic
            Else
            RS2.Open "SELECT SUM(GRWT) AS GRWT,SUM(TAREWT) AS TAREWT,SUM(NETWT) AS NETWT,SUM(QTY) AS QTY,lotno,lotdt,catcd FROM ( " & _
            " select case when weightflg='M' then sum(A.grwt) else sum(isnull(a.pgrswt,0)) end as grwt,case when weightflg='M' then sum(A.tarewt) else sum(isnull(a.ptarewt,0)) end as tarewt,sum(a.FAVAOURABLEWGT) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d " & _
            " Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
            " and b.baleno=a.baleno  and b.varcode = '" & rs5!Varcode & "' and c.isstype = '" & rs1("Isstype") & "'  and  b.varcode=a.varcode and d.lotyear='" & Year(yfdate) & "' AND a.divcode=b.divcode AND a.CATCD=b.catcd AND  a.lottype=b.lottype and b.divcode='" & Divcode & "' group by b.lotno,b.lotdt,b.catcd ,D.WeightFlg" & _
            " UNION select 0 as grwt,0 as tarewt,0 as netwt,count(B.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_issb b,rm_issh c,rm_lot d " & _
            " Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and B.ISSUED='Y' AND  b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
            " and b.varcode = '" & rs5!Varcode & "' and c.isstype = '" & rs1("Isstype") & "' and d.lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' group by b.lotno,b.lotdt,b.catcd)X GROUP BY lotno,lotdt,catcd", db, adOpenStatic

          
            
            End If
                                                       
                                                       
        av = 0
        r = 0
        Do While Not RS2.EOF
            r = r + 1
            Set RS78 = New Recordset
            RS78.Open "SELECT isnull(ratekg,0) ratekg FROM rm_lot where lotno = '" & RS2!LOTNO & "' and lotdt ='" & Format(RS2!LOTDT, "dd-mmm-yy") & "' and varcode = '" & rs5!Varcode & "' ", db, adOpenStatic
            
            ratekg12 = 0
            ratekg12 = Round(val(RS78!ratekg), 2)
            value = val(ratekg12) * val(RS2!netwt)
            'Rate = Round(val(ratekg12), 2)
            If (value = 0) Then
             Rate = 0
            Else
             Rate = value / RS2("netwt")
            End If
            
            
            Call lot(RS2("catcd"), RS2("lotno"), RS2("lotdt"), lotmix)
            Call supplier3(RS2("catcd"), RS2("lotno"), RS2("lotdt"), rs5!Varcode, supplier1)
            If Trim(Sname) = Trim(supplier1) Then
                Print #z, Space(av) + Space(40);
                av = 25
                iCount = iCount + 1
            Else
                 If Count > 1 Then av = 20
                 Print #z, Space(av) + Padr(supplier1, 39, "") & Space(1);
                 iCount = 1
                 Sname = supplier1
                 av = 25
            End If
            Print #z, Padl(RS2("lotno") & "/" & Format(RS2("lotdt"), "yy"), 10, "") & Space(1) & Padl(RS2("qty"), 6, " ") & Space(1) & Padl(INF(RS2("TAREWT") + RS2("NETWT"), 3), 14, " ") & Space(1) & Padl(INF(RS2("tarewt"), 3), 10, " ") & Space(0) & Padl(INF(RS2("netwt"), 3), 13, " ") & Space(1) & Padl(INF(Rate, 2), 10, " ") & Space(1) & Padl(INF(value, 2), 14, " ")
            Co = Co + 1
            i = i + 1
            U = U + 1
            
            
            
            ''Issue Total
            tot1 = tot1 + val(RS2!qty)
            tot2 = tot2 + val(RS2!grwt)
            tot3 = tot3 + val(RS2!TAREWT)
            tot4 = tot4 + val(RS2!netwt)
            tot5 = tot5 + Round(val(value), 2)
            
            ''Variety Total
            gtot1 = gtot1 + val(RS2!qty)
            gtot2 = gtot2 + val(RS2!grwt)
            gtot3 = gtot3 + val(RS2!TAREWT)
            gtot4 = gtot4 + val(RS2!netwt)
            gtot5 = gtot5 + Round(val(value), 2)
            
            ''Grand Total
            tgtot1 = tgtot1 + val(RS2!qty)
            tgtot2 = tgtot2 + val(RS2!grwt)
            tgtot3 = tgtot3 + val(RS2!TAREWT)
            Tgtot4 = Tgtot4 + val(RS2!netwt)
            tgtot5 = tgtot5 + Round(val(value), 2)
                
            If Co >= 63 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call IssregHeader(pg1, Co, a, "")
            End If
            RS2.MoveNext
        Loop
        rs5.MoveNext
        If Co >= 63 Then
            Print #z, Space(5) & String(142, "-")
            Print #z, Chr(12)
            pg1 = pg1 + 1
            Co = 0
            Call IssregHeader(pg1, Co, a, "")
        End If
    Loop
    rs1.MoveNext
    If i > 1 Then
    If Not gtot4 = 0 Then
        gtotrate1 = gtot5 / gtot4
        Print #z, 'Space(5) & Space(20) & String(122, "-")
        Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("Variety Total", 20, " ") & Space(31); Padl(INF(gtot1, 0), 6, " ") & Space(1) & Padl(INF(gtot2, 3), 14, " ") & Space(1) & Padl(INF(gtot3, 3), 10, " ") & Space(0) & Padl(INF(gtot4, 3), 13, " ") & Space(1) & Padl(INF(gtotrate1, 2), 10, " ") & Space(1) & Padl(INF(gtot5, 2), 14, " ") + Chr(27) + "F"
        Print #z, 'Space(5) & Space(20) & String(122, "-")
        Co = Co + 3
        Else
        gtotrate1 = 0
        End If
    End If
    i = 0
    gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0
Loop

If Co >= 52 Then
    Print #z, Space(5) & String(142, "-")
    Print #z, Chr(12)
    pg1 = pg1 + 1
    Co = 0
    Call IssregHeader(pg1, Co, a, "")
End If

If U > 1 Then
If Not tot4 = 0 Then
    totrate1 = tot5 / tot4
'    Print #z, Space(5) & Space(20) & String(122, "-")
    Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("Issue Total", 20, " ") & Space(31) & Padl(tot1, 6, " ") & Space(1) & Padl(INF(tot2, 3), 14, " ") & Space(1) & Padl(INF(tot3, 3), 10, " ") & Space(0) & Padl(INF(tot4, 3), 13, " ") & Space(1) & Padl(INF(totrate1, 2), 10, " ") & Space(1) & Padl(INF(tot5, 2), 14, " ") + Chr(27) + "F"
    Print #z, 'Space(5) & Space(20) & String(122, "-")
    Else
    totrate1 = 0
    End If
End If
If (Tgtot4 = 0) Then
avgrt = 0
Else
avgrt = Round(tgtot5 / Tgtot4, 2)
End If
'Print #z, Space(5) & String(142, "-")
Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("** Grand Total **", 20, " ") & Space(31) & Padl(tgtot1, 6, " ") & Space(1) & Padl(INF(tgtot2, 3), 14, " ") & Space(1) & Padl(INF(tgtot3, 3), 10, " ") & Space(0) & Padl(INF(Tgtot4, 3), 13, " ") & Space(1) & Padl(INF(avgrt, 2), 10, " ") & Space(1) & Padl(INF(tgtot5, 2), 14, " ") + Chr(27) + "F"
Print #z, Space(5) & String(142, "-")
Print #z,
Print #z,
Print #z, Chr(12) + Chr(18)
 Call footermod(CInt(z), rp.UserFooter1.SelectedStr, 85)

Print #z,

'Print #z, Space(5) + Space(15) & " Prepared by                    Checked by                    Factory Manager                   General Manager"
Print #z, Chr(12) + Chr(18)
Close #z
z = FreeFile
'Open "c:\CotRec78.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type CotRecn1.TXT>prn"
'Close #z
'z = FreeFile
'RPTV.txtfile = "c:\CotRecn78.TXT"
'RPTV.Batfile = "c:\CotRec78.bat"
Call KALBATPROCESS("CotRecn78")
Screen.MousePointer = 0
End Sub

Public Sub Issreg_Periodical(a As String, b As String, ISSTYPE As String, lottype As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim slno, r, r1 As Integer
Dim varno1, supplier1, VarName As String
Dim Sname   As String
Dim issrs As Recordset
Dim subcnt As Integer
Dim value, totrate1, gtotrate1, tgtotrate1 As Double
Dim totper1, gtotper1, tgtotper1 As Double
Dim strvarcode As String
Dim Rate, ratekg12 As Double
Dim MIXNO As String
Dim pertotal, pertotal1, pertotal2 As Double
Dim tot4, tot5, tot6, tot7, tot8, tot9 As Double
Dim gtot2, gtot3, gtot4, gtot5, gtot6 As Double
Dim ntot1, ntot2, ntot3, ntot4, ntot5, Ntotper1, Ntotrate1 As Double
Dim gtot1 As Double
Dim mixlot, mixgrp, mixcnt As String
Dim lotmix, lotno1, lotmonth, lotcat, lotyear As String
Dim rs55 As New Recordset
Dim RS78 As New Recordset
Set cnn = New Connection
cnn.Open connectstring
    
Set rs1 = New Recordset
    
    ltype = Trim(Mid(lottype, 1, 3))
If Trim(ISSTYPE) = "A" Then
    rs1.Open "select distinct a.isstype,b.issue_desc from rm_issh a, rm_issuetype b where a.isstype=b.issue_code and docdt between '" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & "'", db, adOpenStatic
Else
    rs1.Open "select distinct a.isstype,b.issue_desc " & _
         " from rm_issh a , rm_issuetype b where a.isstype=b.issue_code and docdt Between '" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & "' and a.isstype = '" & ISSTYPE & "'", db, adOpenStatic
End If
If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totper1 = 0: totrate1 = 0
gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0
tgtot1 = 0: tgtot2 = 0: tgtot3 = 0: Tgtot4 = 0: tgtot5 = 0: tgtotper1 = 0: tgtotrate1 = 0
                          
db.CommandTimeout = 1000
                         
Set RPTV = New Report.ReportView
z = FreeFile
Close
Close #z
'Open "C:\CotRecn78.TXT" For Output As #z
 Open KALFOLDERDATA & "\CotRecn78.TXT" For Output As #z
pg1 = 1
Co = 0
r1 = 0: r2 = 0
i = 0: U = 0

Call IssregHeader(pg1, Co, a, b)

pertotal = 0
Do While Not rs1.EOF
    If MIXNO = rs1("isstype") Then
        Print #a, Space(45)
        Co = Co + 1
    Else
        If Co >= 60 Then
            Print #z, Space(5) + String(142, "-")
            Co = 0
            pg1 = pg1 + 1
            Call IssregHeader(pg1, Co, a, b)
        End If
        
        If U > 1 Then
            If tot5 <> 0 Then
                totrate1 = tot5 / tot4
            End If
            Print #z, Space(5) & Space(20) & String(122, "-")
            Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("Issue Total", 20, " ") & Space(31) & Padl(tot1, 6, " ") & Space(1) & Padl(INF(tot2, 3), 14, " ") & Space(1) & Padl(INF(tot3, 3), 10, " ") & Space(0) & Padl(INF(tot4, 3), 13, " ") & Space(1) & Padl(INF(totrate1, 2), 10, " ") & Space(1) & Padl(INF(tot5, 2), 14, " ") + Chr(27) + "F"
            Print #z, Space(5) & Space(20) & String(122, "-")
            Co = Co + 3
        End If
        U = 0
        tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: totrate1 = 0
        If Co >= 57 Then
            Print #z, Space(5) + String(142, "-")
            Co = 0
            pg1 = pg1 + 1
            Call IssregHeader(pg1, Co, a, b)
        End If
    End If

    
    'For Rate Avg
    Set rs5 = New Recordset
    If ltype = "ALL" Then
    rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
         " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND b.ISSTYPE = '" & rs1("Isstype") & "' and b.docdt Between  '" & Format(a, "dd-mmm-yy") & "' and '" & Format(b, "dd-mmm-yy") & "'" & _
         " and a.docno=b.docno and a.docdt=b.docdt", db, adOpenStatic
    Else
    rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
         " C.ISSUE_CODE=A.ISSTYPE and a.LotType= '" & ltype & "' AND C.ISSUE_CODE=B.ISSTYPE AND b.ISSTYPE = '" & rs1("Isstype") & "' and b.docdt Between  '" & Format(a, "dd-mmm-yy") & "' and '" & Format(b, "dd-mmm-yy") & "'" & _
         " and a.docno=b.docno and a.docdt=b.docdt", db, adOpenStatic
    End If
    r1 = rs5.RecordCount
    If r1 > 0 Then
        Print #z,
        Print #z, Space(5) & Chr(27) + "E" + Padr(rs1("Isstype"), 19, " ") & Space(1) + Padr(rs1("Issue_Desc"), 20, " ") + Chr(27) + "F"
        mixnp = rs1("isstype")
        Co = Co + 2
    End If
    subcnt = 0
    Do While Not rs5.EOF
        If VarName = rs5("varname") Then
            Print #z, Space(25);
        Else
            If i > 1 Then
                If gtot5 <> 0 Then
                    gtotrate1 = gtot5 / gtot4
                End If
                Print #z, Space(5) & Space(20) & String(122, "-")
                Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("Variety Total", 20, " ") & Space(31); Padl(INF(gtot1, 0), 6, " ") & Space(1) & Padl(INF(gtot2, 3), 14, " ") & Space(1) & Padl(INF(gtot3, 3), 10, " ") & Space(0) & Padl(INF(gtot4, 3), 13, " ") & Space(1) & Padl(INF(gtotrate1, 2), 10, " ") & Space(1) & Padl(INF(tot5, 2), 14, " ") + Chr(27) + "F"
                Print #z, Space(5) & Space(20) & String(122, "-")
                Co = Co + 3
            End If
            i = 0
            gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0
            If Co >= 60 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call IssregHeader(pg1, Co, a, b)
            End If
            Print #z,  '''''''''''''''''''''''''''
            Co = Co + 1
            Print #z, Space(5) + Padr(rs5!VarName, 19, " ") + Space(1);
            VarName = rs5("varname")
            Sname = ""
        End If
                
        varno1 = rs5!Varcode
        Set RS2 = New Recordset
        If ltype <> "ALL" Then
            RS2.Open "SELECT SUM(GRWT) AS GRWT,SUM(TAREWT) AS TAREWT,SUM(NETWT) AS NETWT,SUM(QTY) AS QTY,lotno,lotdt,catcd FROM ( " & _
            " select 0 as grwt,sum(A.tarewt) as tarewt,sum(B.actISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c " & _
            " Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt Between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(b, "dd-mmm-yy") & "' " & _
            " and b.baleno=a.baleno  AND A.DIVCODE=B.DIVCODE and b.LotType= '" & ltype & "' and b.varcode = '" & rs5!Varcode & "' and b.ISSTYPE = '" & rs1("Isstype") & "' and b.divcode=c.divcode and c.divcode='" & Divcode & "' and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd" & _
            " UNION select 0 as grwt,0 as tarewt,0 as netwt,count(B.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_issb b,rm_issh c " & _
            " Where B.ISSUED='Y' AND  b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(b, "dd-mmm-yy") & "' " & _
            " and b.varcode = '" & rs5!Varcode & "' and b.LotType= '" & ltype & "' and b.ISSTYPE = '" & rs1("Isstype") & "' and b.divcode=c.divcode and c.divcode='" & Divcode & "' group by b.lotno,b.lotdt,b.catcd)X GROUP BY lotno,lotdt,catcd", db, adOpenStatic
            Else
            RS2.Open "SELECT SUM(GRWT) AS GRWT,SUM(TAREWT) AS TAREWT,SUM(NETWT) AS NETWT,SUM(QTY) AS QTY,lotno,lotdt,catcd FROM ( " & _
            " select 0 as grwt,sum(A.tarewt) as tarewt,sum(B.actISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c " & _
            " Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt Between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(b, "dd-mmm-yy") & "' " & _
            " and b.baleno=a.baleno and b.varcode = '" & rs5!Varcode & "' and b.ISSTYPE = '" & rs1("Isstype") & "' and b.divcode=c.divcode AND A.DIVCODE=B.DIVCODE and c.divcode='" & Divcode & "' and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd" & _
            " UNION select 0 as grwt,0 as tarewt,0 as netwt,count(B.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_issb b,rm_issh c " & _
            " Where B.ISSUED='Y' AND  b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt between '" & Format(a, "dd-mmm-yy") & "' and '" & Format(b, "dd-mmm-yy") & "' " & _
            " and b.varcode = '" & rs5!Varcode & "'and b.ISSTYPE = '" & rs1("Isstype") & "' and b.divcode=c.divcode and c.divcode='" & Divcode & "' group by b.lotno,b.lotdt,b.catcd)X GROUP BY lotno,lotdt,catcd", db, adOpenStatic
         End If
                                                       
        av = 0
        r = 0
        If RS2.RecordCount = 0 Then
            Print #z,
        End If
        Do While Not RS2.EOF
            r = r + 1
            Set RS78 = New Recordset
            RS78.Open "SELECT isnull(ratekg,0) ratekg FROM rm_lot where lotno = '" & RS2!LOTNO & "' and lotdt ='" & Format(RS2!LOTDT, "dd-mmm-yy") & "' and varcode = '" & rs5!Varcode & "' ", db, adOpenStatic
            
            ratekg12 = 0
            If RS78.RecordCount > 0 Then
                ratekg12 = RS78!ratekg
            End If
            value = val(ratekg12) * val(RS2!netwt)
            'Rate = Round(val(ratekg12), 2)
            If value <> 0 Then
                Rate = val(value) / val(RS2("netwt"))
            End If
            
            Call lot(RS2("catcd"), RS2("lotno"), RS2("lotdt"), lotmix)
            Call supplier3(RS2("catcd"), RS2("lotno"), RS2("lotdt"), rs5!Varcode, supplier1)
            If Sname = supplier1 Then
                Print #z, Space(av) + Space(40);
            Else
                 Print #z, Space(av) + Padr(supplier1, 39, "") & Space(1);
                 Sname = supplier1
            End If
            Print #z, Padr(RS2("lotno") & "/" & Format(RS2("lotdt"), "yy"), 10, "") & Space(1) & Padl(RS2("qty"), 6, " ") & Space(1) & Padl(INF(RS2("netwt"), 3), 14, " ") & Space(1) & Padl(INF(RS2("tarewt"), 3), 10, " ") & Space(0) & Padl(INF(RS2("netwt") - RS2("tarewt"), 3), 13, " ") & Space(1) & Padl(INF(Rate, 2), 10, " ") & Space(1) & Padl(INF(value, 2), 14, " ")
            Co = Co + 1
            i = i + 1
            U = U + 1
            av = 25
            
            ''Issue Total
            tot1 = tot1 + val(RS2!qty)
            tot2 = tot2 + val(RS2!grwt)
            tot3 = tot3 + val(RS2!TAREWT)
            tot4 = tot4 + val(RS2!netwt)
            tot5 = tot5 + Round(val(value), 2)
            
            ''Variety Total
            gtot1 = gtot1 + val(RS2!qty)
            gtot2 = gtot2 + val(RS2!grwt)
            gtot3 = gtot3 + val(RS2!TAREWT)
            gtot4 = gtot4 + val(RS2!netwt)
            gtot5 = gtot5 + Round(val(value), 2)
            
            ''Grand Total
            tgtot1 = tgtot1 + val(RS2!qty)
            tgtot2 = tgtot2 + val(RS2!grwt)
            tgtot3 = tgtot3 + val(RS2!TAREWT)
            Tgtot4 = Tgtot4 + val(RS2!netwt)
            tgtot5 = tgtot5 + Round(val(value), 2)
                
            If Co >= 63 Then
                Print #z, Space(5) & String(142, "-")
                Print #z, Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call IssregHeader(pg1, Co, a, b)
            End If
            RS2.MoveNext
        Loop
        rs5.MoveNext
        If Co >= 63 Then
            Print #z, Space(5) & String(142, "-")
            Print #z, Chr(12)
            pg1 = pg1 + 1
            Co = 0
            Call IssregHeader(pg1, Co, a, b)
        End If
    Loop
    rs1.MoveNext
    If i > 1 Then
        If gtot5 <> 0 Then
            gtotrate1 = gtot5 / gtot4
        End If
        Print #z, Space(5) & Space(20) & String(122, "-")
        Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("Variety Total", 20, " ") & Space(31); Padl(INF(gtot1, 0), 6, " ") & Space(1) & Padl(INF(gtot2, 3), 14, " ") & Space(1) & Padl(INF(gtot3, 3), 10, " ") & Space(0) & Padl(INF(gtot4, 3), 13, " ") & Space(1) & Padl(INF(gtotrate1, 2), 10, " ") & Space(1) & Padl(INF(gtot5, 2), 14, " ") + Chr(27) + "F"
        Print #z, Space(5) & Space(20) & String(122, "-")
        Co = Co + 3
    End If
    i = 0
    gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0: gtot5 = 0: gtotper1 = 0: gtotrate1 = 0
Loop

If Co >= 52 Then
    Print #z, Space(5) & String(142, "-")
    Print #z, Chr(12)
    pg1 = pg1 + 1
    Co = 0
    Call IssregHeader(pg1, Co, a, b)
End If

If U > 1 Then
    totrate1 = tot5 / tot4
    Print #z, Space(5) & Space(20) & String(122, "-")
    Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("Issue Total", 20, " ") & Space(31) & Padl(tot1, 6, " ") & Space(1) & Padl(INF(tot2, 3), 14, " ") & Space(1) & Padl(INF(tot3, 3), 10, " ") & Space(0) & Padl(INF(tot4, 3), 13, " ") & Space(1) & Padl(INF(totrate1, 2), 10, " ") & Space(1) & Padl(INF(tot5, 2), 14, " ") + Chr(27) + "F"
    Print #z, Space(5) & Space(20) & String(122, "-")
End If
If tgtot5 <> 0 Then
    avgrt = Round(tgtot5 / Tgtot4, 2)
End If
Print #z, Space(5) & String(142, "-")
Print #z, Space(5) + Space(18) + Chr(27) + "E" + Padr("** Grand Total **", 20, " ") & Space(31) & Padl(tgtot1, 6, " ") & Space(1) & Padl(INF(tgtot2, 3), 14, " ") & Space(1) & Padl(INF(tgtot3, 3), 10, " ") & Space(0) & Padl(INF(Tgtot4, 3), 13, " ") & Space(1) & Padl(INF(avgrt, 2), 10, " ") & Space(1) & Padl(INF(tgtot5, 2), 14, " ") + Chr(27) + "F"
Print #z, Space(5) & String(142, "-")

Print #z,
Print #z,
Print #z,
Print #z,
Print #z, Space(5) + Space(15) & " Prepared by                    Checked by                    Factory Manager                   General Manager"
Print #z, Chr(12) + Chr(18)
Close #z
z = FreeFile
'Open "c:\CotRec78.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type CotRecn1.TXT>prn"
'Close #z
'z = FreeFile
'RPTV.txtfile = "c:\CotRecn78.TXT"
'RPTV.Batfile = "c:\CotRec78.bat"
Call KALBATPROCESS("CotRecn78")
Screen.MousePointer = 0
End Sub



Public Sub IssregHeader(pg1 As Integer, Co As Integer, a As String, b As String)
    Print #z, Chr(18)
    Print #z, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
    Print #z, Chr(15)
    SR = CStr(Format((pdate), "dd/mm/yy"))
    'Print #z, Space(5) & Chr(27) + "E" + "Raw Material Issue Report" + Chr(27) + "F" + Space(1) + "from " + Format(a, "dd/mm/yy") + " to " + Format(b, "dd/mm/yy") + Space(71) + CStr(SR) + Space(3) + "Pg. :" + Padl(CStr(pg1), 3, "  ")
    Print #z, Space(5) & Chr(27) + "E" + "Raw Material Issue Report" + Chr(27) + "F" + Space(1) + " As On " + Format(a, "dd/mm/yy") + Space(72) + CStr(SR) + Space(3) + "Pg. :" + Padl(CStr(pg1), 3, "  ")
    Print #z, Space(5) & String(142, "-")
    Print #z, Space(5) & "IssueType           Description "
    Print #z, Space(5) & "Variety             Supplier                              Mill Lot No.    Qty      Gross Wt.   Tare Wt.      Net Wt.    Rate/Kg          Value"
    Print #z, Space(5) & String(142, "-")
    Co = 8
End Sub

