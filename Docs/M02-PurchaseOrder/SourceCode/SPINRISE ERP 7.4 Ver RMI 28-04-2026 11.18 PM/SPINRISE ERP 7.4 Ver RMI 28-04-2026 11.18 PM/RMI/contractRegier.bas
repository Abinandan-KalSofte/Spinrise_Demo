Attribute VB_Name = "ContractRegister"
Dim Rs As Recordset
Dim rs2 As Recordset
Dim cn As Connection
Dim pg1 As Integer
Dim co As Integer
Dim tot1 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim ree As Double
Dim rev As Report.ReportView
Dim vtot1 As Double
Dim vtot2 As Double
Dim vtot3 As Double
Dim rp As New repform1
Dim lncnt As Integer
Dim a As Integer

Public Sub pendingbillentry(B As String, c As String, footerstr As String)
co = 0
pg1 = 0
Close
a = FreeFile
If B = c Then
    Set Rs = New Recordset
    Rs.Open "SELECT arrno,arrdt,lotno,supcd,bales,netwt FROM(SELECT arrno,arrdt,lotno,supcd,bales,netwt FROM rm_lot WHERE divcode='" & Divcode & "'" & _
            "and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and lottype='A'  Union All " & _
            "SELECT arrno as arrno,arrdate as arrdt,lotno,supcd,quantity AS bales,netwt AS netwt FROM rm_arrival WHERE divcode='" & Divcode & "' AND " & _
            "ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0 AND " & _
            "ARRDATE <= '" & Format(B, "yyyy-MM-dd") & "' AND lottype='A')a order by arrno,arrdt ", DB, adOpenStatic
Else
    Set Rs = New Recordset
    Rs.Open "SELECT arrno,arrdt,lotno,supcd,bales,netwt FROM(SELECT arrno,arrdt,lotno,supcd,bales,netwt FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' AND arrdt BETWEEN '" & Format(B, "yyyy-MM-dd") & "' AND '" & Format(c, "yyyy-MM-dd") & "'" & _
        "AND pjno IS null and isnull(opflg,'N')='N' and lottype='A' Union All " & _
        "SELECT arrno as arrno,arrdate as arrdt,lotno,supcd,quantity AS bales,netwt AS netwt FROM rm_arrival WHERE divcode='" & Divcode & "' AND " & _
        "ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0 AND " & _
        "ARRDATE Between '" & Format(B, "yyyy-MM-dd") & "' AND '" & Format(c, "yyyy-MM-dd") & "' AND lottype='A')a order by arrno,arrdt ", DB, adOpenStatic
End If
bales = 0
kgs = 0
If Rs.RecordCount = 0 Then
    MsgBox "No Record Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

'Open "C:\pendingbillentry.txt" For Output As #a
 Open KALFOLDERDATA & "\pendingbillentry.TXT" For Output As #a
      Call pendingbillentry_header(CStr(B), CStr(c))
      Do While Not Rs.EOF
        Set rs1 = New Recordset
        rs1.Open "SElect slname from fa_slmas where slcode='" & Rs("supcd") & "'", DB, adOpenStatic
        Print #a, Padr(Format(Rs("arrdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padl(Rs("arrno"), 7, " ") & Space(1) & Padl(Rs("lotno"), 7, " ") & Space(1) & Padr(rs1("slname"), 40, " ") & Space(1) & Padl(Rs("bales"), 8, " ") & Space(1) & Padl(INF(Rs("netwt"), 3), 12, " ")
        bales = bales + Rs("bales")
        kgs = kgs + Rs("netwt")
        co = co + 1
        Rs.MoveNext
        If co >= 57 Then
            Print #a, String(87, "-")
            Print #a, Chr(12)
            co = 0
            Call pendingbillentry_header(CStr(a), CStr(B))
        End If
      Loop
      Print #a, String(87, "-")
      Print #a, Chr(27) & "E" & Space(40) & Padr("TOTAL", 25, " ") & Space(1) & Padl(bales, 8, " ") & Space(1) & Padl(INF(kgs, 3), 12, " ") & Chr(27) & "F"
      Print #a, String(87, "-")
      Print #a, Chr(12)
      Print #a, Chr(18)
Close
Close #a
'Open "C:\pendingbillentry.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type pendingbillentry.txt>prn"
'Close
'Set rev = New Report.ReportView
'rev.txtfile = "C:\pendingbillentry.txt"
'rev.Batfile = "C:\pendingbillentry.bat"
a = FreeFile
Call KALBATPROCESS("pendingbillentry")
End Sub

Public Sub pendingbillentry_header(B As String, c As String)
pg1 = pg1 + 1
Print #a, Chr(18)
Print #a, Chr(27) + "E" + CENTRE(divname, 87, " ") + Chr(27) + "F"
Print #a,
If B = c Then
    Print #a, "Rawmaterial Pending as on " & "From " & Format(B, "dd/mm/yy") & Space(1) & "To " & Format(c, "dd/mm/yy") & Space(17) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.: " & Padl(CInt(pg1), 3, " ")  '& Chr(15)
Else
    Print #a, "Rawmaterial Pending Bill Entry " & "From " & Format(B, "dd/mm/yy") & Space(1) & "To " & Format(c, "dd/mm/yy") & Space(12) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.: " & Padl(CInt(pg1), 3, " ")  '& Chr(15)
End If
Print #a, String(87, "-")
Print #a, "Arrival  Arrival Lot No. Party Name                                  Bales      Net Kgs"
Print #a, "Date         No.     "
Print #a, String(87, "-")
co = co + 7
End Sub
Public Sub con_varity(a As String, B As String, dname As String, ARRIVALTYPE As String, footerstr As String)
Dim r As String
Dim s As String
Dim div As String
r = a
s = B
div = divname
co = 0
pg1 = 1
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Close
'Open "c:\convar.txt" For Output As #1
 Open KALFOLDERDATA & "\convar.TXT" For Output As #1
Call callhead(r, s, div)
        Set rs2 = New Recordset
       '' If arrivaltype = "P" Then
           '     rs2.Open "select distinct a.contdt,c.varname,b.slname,z.slname,v.areaname,cast(a.contno as varchar) as contno,round(a.candyrate,0),unit=case when a.dlytype='F' then 'FOR' else 'SPOT' end,unit =case when a.bbflag='b' then 'Bales' else 'Bohra' end,isnull(a.ordqty,0)ordqty,a.duedate,isnull(a.ordkgs,0)ordkgs,a.MillRefNo from rm_cont a,fa_slmas b,fa_slmas z,rm_var c,rm_area v where  c.varcode=a.varcode and a.areacOdE*=v.areacode and a.brkcd*=z.slcode and a.SUPCD=b.SLCODE and a.contdt Between '" & Format(r, "dd-mmm-yyyy") & "' and ' " & Format(s, "dd-mmm-yyyy") & "'and divcode='" & Divcode & "' order by cast(contno as varchar)", cn, adOpenStatic, adLockBatchOptimistic
           ' Added on 19-09-19 by mariyaiya
                rs2.Open "select distinct a.contdt,c.varname,b.slname,z.slname,v.areaname,cast(a.contno as varchar) as contno,round(a.candyrate,0),unit=case when a.dlytype='F' then 'FOR' else 'SPOT' end,unit =case when a.bbflag='b' then 'Bales' else 'Bohra' end,isnull(a.ordqty,0)ordqty,a.duedate,isnull(a.ordkgs,0)ordkgs,a.MillRefNo from  rm_cont a inner join fa_slmas b on a.SUPCD=b.SLCODE left join fa_slmas z on  a.brkcd=z.slcode   inner join rm_var c on  c.varcode=a.varcode left join rm_area v on a.areacOdE =v.areacode  where a.contdt Between '" & Format(r, "dd-mmm-yyyy") & "' and ' " & Format(s, "dd-mmm-yyyy") & "'and divcode='" & Divcode & "' order by cast(contno as varchar)", cn, adOpenStatic, adLockBatchOptimistic

        ''Else
        ''        rs2.Open "select distinct a.contdt,c.varname,b.slname,z.slname,v.areaname,cast(a.contno as numeric) as contno,round(a.candyrate,0),unit=case when a.dlytype='m' then 'FOR' else 'Spot' end,unit =case when a.bbflag='b' then 'Bales' else 'Bohra' end,isnull(a.ordKGS,0)ordqty,a.duedate,isnull(a.ordkgs,0)ordkgs from rm_cont a,fa_slmas b,fa_slmas z,rm_var c,rm_area v where  ISNULL(A.ARRIVALTYPE,'P')='K' AND c.varcode=a.varcode and a.areacOdE*=v.areacode and a.brkcd*=z.slcode and a.SUPCD=b.SLCODE and a.contdt Between '" & Format(r, "dd-mmm-yyyy") & "' and ' " & Format(s, "dd-mmm-yyyy") & "'and divcode='" & Divcode & "' order by cast(contno as numeric)", cn, adOpenStatic, adLockBatchOptimistic
        ''End If
        If rs2.RecordCount <= 0 Then
             MsgBox "No record found", vbInformation
             Close #1
             Exit Sub
         End If
         tot6 = 0
    Do While Not rs2.EOF
            'Print #1, Space(5) & Padr(Format(rs2(0), "dd/mm/yy"), 10, " ") & Space(2) & Padl(rs2(5), 8, " ") & Space(4) & Padr(rs2(1), 16, " ") & Space(3) & Padr(rs2(2), 40, " ") & Space(1) & Padr(rs2(3), 40, "") & Space(1) & Padr(rs2(4), 15, " ") & Space(2) & Padl(INF(Round(rs2(6), 0), 0), 10, " ") & Space(2) & rs2(7) & Space(5) & Padl(rs2(9), 4, " ") & Space(1) & Padl(rs2(8), 7, " ") & Space(2) & Padr(Format(rs2(10), "dd/mm/yy"), 10, "")
            Print #1, Space(5) & Padr(Format(rs2(0), "dd/mm/yy"), 8, " ") & Space(1) & Padl(rs2(5), 6, " ") & Space(1) & Padr(rs2("MillRefNo"), 12, " ") & Space(1) & Padr(rs2(1), 10, " ") & Space(1) & Padr(rs2(2), 29, " ") & Space(1) & Padr(rs2(3), 24, " ") & Space(1) & Padr(rs2(4), 15, " ") & Space(1) & Padl(INF(Round(rs2(6), 0), 0), 10, " ") & Space(2) & Padr(rs2(7), 8, " ") & Space(1) & Padl(INF(rs2("ORDQTY"), 0), 7, " ") & Space(1) & Padl(INF(rs2("ordkgs"), 3), 10, " ") & Space(1) & Padr(Format(rs2(10), "dd/mm/yy"), 8, "")
            co = co + 1
            tot5 = tot5 + rs2("ordqty")
            tot6 = tot6 + rs2("ordkgs")
            rs2.MoveNext
         If co > PageLen Then
            Print #1, Chr(12)
            Print #1, String(159, "-")
            co = 0
            pg1 = pg1 + 1
        Call callhead(r, s, div)
      End If
   Loop
Print #1, Space(5) & String(159, "-")
Print #1, Space(5) & Space(60) & "** Grand Total **" & Space(47) & Padl(INF(tot5, 0), 15, " ") & Space(1) & Padl(INF(tot6, 3), 10, " ")
tot5 = 0
Print #1, Space(5) & String(159, "-")
'Print #z, Space(15) + Space(5) & "_______________                ______________                __________________                __________________"
Print #1,
Print #1,
Print #1,
 Call footermod(CInt(1), footerstr, 85)
Close #1
'Open "c:\convar.bat" For Output As #1
'Print #1, "cd\"
'Print #1, "c:"
'Print #1, "cd\"
'Print #1, "type convar.txt>prn"
'rev.txtfile = "c:\convar.txt"
'rev.Batfile = "c:\convar.bat"
'1 = FreeFile
Call KALBATPROCESS("convar")

Screen.MousePointer = 0
End Sub
Private Sub callhead(s As String, q As String, V As String)
Print #1,
Print #1, Space(50) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1, Chr(15)
Print #1,
Print #1, Space(5) & "PO List " & "from " & Format(s, "dd/mm/yy") & Space(1) & "to " & Format(q, "dd/mm/yy") & Space(100) & Format(pdate, "dd/mm/yy") & Space(4) & "Pg.: " & Padl(CInt(pg1), 3, " ") '& Chr(15)
Print #1, Space(5) & String(159, "-")
Print #1, Space(5) & "P.O.Date   P.O. Mill         Variety    Supplier Name                 Broker Name              Station Name       PO Rate  Delivery     Qty        Qty  Duedate"
Print #1, Space(5) & "            No. Ref No.      Name                                                                                          Type    In Bales     In Kgs"

'Print #1, Space(5) & "P.O.Date" & Space(8) & "P.O." & Space(4) & "Variety" & Space(12) & "Supplier Name" & Space(28) & "Broker Name" & Space(30) & "Station Name" & Space(5) & "Rate/Candy" & Space(2) & "Delivery" & Space(2) & "Qty " & Space(2) & "Unit" & Space(4) & "Duedate"
'Print #1, Space(21) & " No." & Space(2) & "  Name" & Space(107) & "      " & Space(12) & " Type"
Print #1, Space(5) & String(159, "-")
co = co + 9
End Sub
Public Sub SalConf(a As String, dname As String)
'Dim r As String
'Dim s As String
Dim div As String
'r = A
's = b
div = divname
'co = 0
pg1 = 1
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Close
'Open "c:\conConfirm.txt" For Output As #1
 Open KALFOLDERDATA & "\conConfirm.TXT" For Output As #1
'Call callhead(r, s, div)
        Set rs2 = New Recordset
        'rs2.Open "select distinct a.contdt,c.varname,b.slname,z.slname,v.areaname,a.contno,round(a.candyrate,0),unit=case when a.dlytype='m' then 'Mill' else 'Spot' end,unit =case when a.bbflag='b' then 'Bales' else 'Bohra' end,a.ordqty,a.duedate from rm_cont a,fa_slmas b,fa_slmas z,rm_var c,rm_area v where c.varcode=a.varcode and a.areacOdE*=v.areacode and a.brkcd*=z.slcode and a.SUPCD=b.SLCODE and a.contdt Between '" & Format(r, "dd-mmm-yyyy") & "' and ' " & Format(s, "dd-mmm-yyyy") & "'", cn, adOpenStatic, adLockBatchOptimistic
        'rs2.Open "select distinct a.contdt,a.cntcode,b.slname,a.brkcd,a.areacode,a.contno,a.candyrate,unit=case when a.dlytype='m' then 'Mill' else 'Spot' end from rm_cont a,fa_slmas b where a.SUPCD=b.SLCODE and a.contdt Between '" & Format(r, "dd-mmm-yyyy") & "' and ' " & Format(s, "dd-mmm-yyyy") & "'", cn, adOpenStatic, adLockBatchOptimistic
        rs2.Open "select distinct a.contdt,b.slname as Broker,c.slname as Supplier,a.ordqty,a.varcode,d.areaname," & _
                 " a.candyrate,a.dlytype,'' as despatch ,a.payterms from rm_cont a,fa_slmas b,fa_slmas c,rm_area d where a.brkcd*=b.slcode " & _
                 " and a.supcd=c.slcode and a.areacode=d.areacode and a.contno='" & a & "'" & _
                 " and a.contdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and ' " & Format(yldate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
                 
'         If rs2.RecordCount <= 0 Then
'            MsgBox "No record found", vbInformation
'            Close #1
'            Exit Sub
'         End If
Print #1,
Print #1,
Print #1,
Print #1, Space(5) + Chr(27) + "E" + CENTRE("SALE CONFIRMATION MEMO NO.", 65, " ") + Chr(27) + "F"
Print #1, Space(5) + Chr(27) + "E" + CENTRE("PURCHASE ORDER NO." & a & "/" & Right(Year(rs2("contdt")), 2), 65, " ") + Chr(27) + "F"
Print #1,
Print #1, Space(49) & "Date :" & Format(rs2("contdt"), "dd-mm-yy")
Print #1,
Set rs4 = New Recordset
rs4.Open "select city from pp_divmas ", cn, adOpenStatic, adLockBatchOptimistic
Print #1, Space(5) + Chr(27) + "E" + "M/s." & divname + Chr(27) + "F"
'Print #1, Space(5) + Chr(27) + "E" + "GOBICHETTIPALAYAM" + Chr(27) + "F"
Print #1, Space(5) + Chr(27) & "E" & rs4("city") & Chr(27) & "F"
Print #1,
Print #1,

Print #1, Space(5) + "Dear Sir,"
Print #1,
'Print #1, Space(5) + "Ref : As per the advice of Mr." & rs2("broker")
Print #1, Space(5) + "Ref : As per the advice of M/s." & rs2("broker")
Print #1,
Print #1, Space(5) + "We are pleased to confirm having negotiated sale to you this day on "
Print #1, Space(5) + "account and behalf of our principals noted below :"
Print #1,
Print #1, Space(5) + "NAME OF THE SELLER     :" & rs2("SUPPLIER")
Print #1,
Print #1, Space(5) + "QUANTITY               :" & rs2("ORDQTY")
Print #1,
Print #1, Space(5) + "QUALITY                :" & rs2("VARCODE")
Print #1,
Print #1, Space(5) + "CROP YEAR              :" & Year(yfdate) & "/" & Year(yldate)
Print #1,
Print #1, Space(5) + "STATION                :" & rs2("AREANAME")
Print #1,
Print #1, Space(5) + "SAMPLE NO.             :" & "NILL"
Print #1,
If rs2("DLYTYPE") = "S" Then
Print #1, Space(5) + "PRICE                  :" & INF(rs2("CANDYRATE"), 2) & " " & "SPOT"
Print #1,
ElseIf rs2("DLYTYPE") = "M" Then
Print #1, Space(5) + "PRICE                  :" & INF(rs2("CANDYRATE"), 2) & " " & "FOR"
Print #1,
End If
Print #1, Space(5) + "DESPATCH               :" & rs2("DESPATCH")
Print #1,
Print #1, Space(5) + "PAYMENT                :" & rs2("PAYTERMS")
Print #1,
Print #1, Space(5) + "1.CST,LORRY HIRE,TRANSIT INSURANCE CHARGES ANS OTHER"
Print #1, Space(5) + "  EXPENCES IF ANY ALL SELLER'S A/C"
Print #1,
Print #1, Space(5) + "2.PASSING AND WEIGHMENT AT MILLS."
Print #1,
Print #1, Space(5) + "3.SUBJECT TO C FORM TO BE ISSUED BY THE BUYER AGAINST SELLERS"
Print #1, Space(5) + "  FINAL INVOICE."
Print #1,
Print #1, Space(5) + "Kindly return the duplicate copy of this letter duly signed by your "
Print #1, Space(5) + "good selves."
Print #1,
Print #1, Space(5) & "Thanking You."
Print #1, Space(48) & "Yours faithfully,"

Close #1
'Open "c:\conConfirm.bat" For Output As #1
'Print #1, "cd\"
'Print #1, "c:"
'Print #1, "cd\"
'Print #1, "type conConfirm.txt>prn"
'rev.txtfile = "c:\conConfirm.txt"
'rev.Batfile = "c:\conConfirm.bat"
'Close #1
'1 = FreeFile
Call KALBATPROCESS("conConfirm")
End Sub

Public Sub con_varity2(a As String, dname As String)
Dim r As String
Dim s As String
Dim div As String
r = a
s = B
div = divname
co = 0
pg1 = 1
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Close
'Open "c:\convar.txt" For Output As #1
 Open KALFOLDERDATA & "\convar.TXT" For Output As #1
Call callhead2(r, s, div)
        Set rs2 = New Recordset
        rs2.Open "select distinct a.contdt,c.varname,b.slname,z.slname,v.areaname,cast(a.contno as numeric) as contno,round(a.candyrate,0),unit=case when a.dlytype='m' then 'FOR' else 'Spot' end,unit =case when a.bbflag='b' then 'Bales' else 'Bohra' end,a.ordqty,a.duedate from rm_cont a,fa_slmas b,fa_slmas z,rm_var c,rm_area v where c.varcode=a.varcode and a.areacOdE*=v.areacode and a.brkcd*=z.slcode and a.SUPCD=b.SLCODE and a.contdt = '" & Format(r, "dd-mmm-yyyy") & "' and divcode='" & Divcode & "' order by cast(contno as numeric)", cn, adOpenStatic, adLockBatchOptimistic
        'rs2.Open "select distinct a.contdt,a.cntcode,b.slname,a.brkcd,a.areacode,a.contno,a.candyrate,unit=case when a.dlytype='m' then 'Mill' else 'Spot' end from rm_cont a,fa_slmas b where a.SUPCD=b.SLCODE and a.contdt Between '" & Format(r, "dd-mmm-yyyy") & "' and ' " & Format(s, "dd-mmm-yyyy") & "'", cn, adOpenStatic, adLockBatchOptimistic
         If rs2.RecordCount <= 0 Then
         MsgBox "No record found", vbInformation
         Close #1
         Exit Sub
         
         End If
    Do While Not rs2.EOF
            Print #1, Space(5) & Padr(Format(rs2(0), "dd/mm/yy"), 8, " ") & Space(1) & Padl(rs2(5), 6, " ") & Space(1) & Padr(rs2(1), 10, " ") & Space(1) & Padr(rs2(2), 29, " ") & Space(1) & Padr(rs2(3), 24, " ") & Space(1) & Padr(rs2(4), 15, " ") & Space(1) & Padl(INF(Round(rs2(6), 0), 0), 10, " ") & Space(2) & Padr(rs2(7), 8, " ") & Space(1) & Padl(INF(rs2(9), 0), 6, " ") & Space(1) & Padl(rs2(8), 5, " ") & Space(1) & Padr(Format(rs2(10), "dd/mm/yy"), 8, "")
            co = co + 1
            tot5 = tot5 + rs2("ordqty")
            rs2.MoveNext
         If co > PageLen Then
            Print #1, Chr(12)
            Print #1, String(140, "-")
            co = 0
            pg1 = pg1 + 1
        Call callhead2(r, s, div)
      End If
   Loop
Print #1, Space(5) & String(140, "-")
Print #1, Space(5) & Space(60) & "** Grand Total **" & Space(39) & Padl(INF(tot5, 0), 9, " ") '& Chr(27) & "F"
'Print #1, Space(5) & Space(105) & "** Grand Total **" & Space(37) & Padl(INF(tot5, 0), 8, " ") '& Chr(27) & "F"
tot5 = 0
Print #1, Space(5) & String(140, "-")
Close #1
'Open "c:\convar.bat" For Output As #1
'Print #1, "cd\"
'Print #1, "c:"
'Print #1, "cd\"
'Print #1, "type convar.txt>prn"
'rev.txtfile = "c:\convar.txt"
'rev.Batfile = "c:\convar.bat"
'Close #1
'1 = FreeFile
Call KALBATPROCESS("convar")
End Sub

Private Sub callhead2(s As String, q As String, V As String)
Dim div As String
Print #1,
Print #1, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1, Chr(15)
Print #1,
Print #1, Space(5) & "Purchase order List " & "as on " & Format(s, "dd/mm/yy") & Space(3) & Space(78) & Format(pdate, "dd/mm/yy") & Space(5) & "Pg.: " & Padl(CInt(pg1), 3, " ")  '& Chr(15)
'Print #1, Space(5) & "Purchase order Register " & "as on " & Format(s, "dd/mm/yy") & Space(9) & Space(119) & Format(pdate, "dd/mm/yy") & Space(7) & "Pg.: " & CInt(pg1)  '& Chr(15)
Print #1, Space(5) & String(140, "-")
Print #1, Space(5) & "P.O.Date   P.O. Variety    Supplier Name                 Broker Name              Station Name         Rate/  Delivery    Qty Unit   Duedate"
Print #1, Space(5) & "            No. Name                                                                                   Candy  Type"
Print #1, Space(5) & String(140, "-")
co = co + 9
End Sub

Public Sub PurOrdReg_Datewise(r As String, s As String, footerstr As String)
    Dim dt As String
    Dim reccnt As Integer

    Dim OB As Double
    Dim OK As Double
    Dim RB As Double
    Dim rk As Double
    Dim bb As Double
    Dim BK As Double
    Dim PK As Double
    Dim val As Double
    
    Dim GOB As Double
    Dim GOK As Double
    Dim GRB As Double
    Dim GRK As Double
    Dim GBB As Double
    Dim GPK As Double
    Dim GBK As Double
    Dim GVAL As Double
    
    OB = 0
    OK = 0
    RB = 0
    rk = 0
    bb = 0
    BK = 0
    PK = 0
    val = 0
    
    GOB = 0
    GOK = 0
    GRB = 0
    GRK = 0
    GBB = 0
    GBK = 0
    GPK = 0
    GVAL = 0
    
    pg1 = 1
    
    lncnt = 0
    reccnt = 0
    
    Set cn = New Connection
    cn.Provider = "msdatashape"
    cn.Open connectstring
    Close
    Set rev = New Report.ReportView
    Open "d:\Ppurord_dt1.txt" For Output As #1
    
    
    Set rs2 = New Recordset
            
            sQry = ""
            sQry = sQry & Chr(13) & " select distinct a.contdt,c.varname,b.slname as Suppliername,z.slname as BrokerName,v.areaname,v.state,a.SUPCD,cast(a.contno as varchar) as contno,round(a.candyrate,0) as Candyrate,unit=case when a.dlytype='F' then 'FOR' else 'SPOT' end,unit =case when a.bbflag='b' then 'Bales' else 'Bohra' end,isnull(a.ordqty,0)ordqty,isnull(a.ordkgs,0)ordkgs,isnull(e.bales,0)recqty,isnull(e.favaourablewgt,0) rcdkgs,isnull(a.ordqty,0) - isnull(e.bales,0) as balqty,"
            sQry = sQry & Chr(13) & " isnull(a.ordkgs,0) - isnull(e.favaourablewgt,0) as balkgs,e.totlandcost,isnull(e.FavaourableWgt,0) * isnull(a.ratekg,0) as Value,"
            sQry = sQry & Chr(13) & " isnull(x.value,0)*isnull(a.ratekg,0) as rate_can_quin,b.add1,b.add2,b.add3,b.city,b.state,a.MillRefNo,a.duedate,Y.cntname , a.cntcode,a.rateunit,isnull(a.ratekg,0) as RateKG,e.lotno,e.pnetwt,e.lotdt,f.carname"
            sQry = sQry & Chr(13) & " from rm_cont a,fa_slmas b,fa_slmas z,rm_var c,rm_area v,rm_rateunit x,rm_count y,rm_Arrival d,RM_LOT e,po_car f"
            sQry = sQry & Chr(13) & " where d.carcode =f.carcode and c.varcode=a.varcode and a.areacode*=v.areacode and  a.brkcd*=z.slcode and  a.SUPCD=b.SLCODE and"
            sQry = sQry & Chr(13) & " a.contno=d.contno and a.contdt=d.contdt and a.varcode=d.varcode and a.cntcode*=y.cntcd and"
            sQry = sQry & Chr(13) & " a.Divcode = d.Divcode And d.Divcode = e.Divcode And d.arrno = e.arrno And d.arrdate = e.Arrdt"
            sQry = sQry & Chr(13) & " and d.varcode=e.varcode and d.SUPCD=e.SUPCD and e.lotdt Between '" & Format(r, "yyyy-mm-dd") & "' and ' " & Format(s, "yyyy-mm-dd") & "' and e.lotyear='" & Year(yfdate) & "'"
            sQry = sQry & Chr(13) & " and  e.divcode='" & Divcode & "' and  x.unitname = a.rateunit and  a.Divcode*=Y.Divcode  order by cast(a.contno as varchar) "
            
            rs2.Open sQry, DB, adOpenStatic
            
    If rs2.RecordCount <= 0 Then
         MsgBox "No record found", vbInformation
         Close #1
         Exit Sub
     End If
     Call PPurOrd_dtHead(r, s, pg1)
  
    Do While Not rs2.EOF
            Set Rs = New Recordset
            Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rs2("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rs2("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
            If Rs.EOF = False Then
                sLotYear = Format(Rs("AYFDATE"), "YY")
            Else
                sLotYear = Format(rs2("LOTDT"), "YY")
            End If
    
    
        If lncnt >= 57 Then
            pg1 = pg1 + 1
            Print #1, Space(1) + String(232, "-")
            Print #1, Chr(12)
            lncnt = 0
            Call PPurOrd_dtHead(r, s, pg1)
        End If
    
        If dt = Empty Then
            Print #1, Space(1) + Chr(27) + "E" + Padr(Format(rs2("contdt"), "dd/mm/yy"), 8, " ") + Chr(27) + "F"
            lncnt = lncnt + 1
        ElseIf dt <> Empty And dt <> rs2("contdt") Then
'            If reccnt > 1 Then
                Print #1, Space(1) + String(232, "-")
                Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr("", 7, " ") + Space(1) + Padr("", 23, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("Sub Total", 10, " ") + Space(1) + Padl(OB, 6, " ") + Space(1) + Padl(INF(OK, 3), 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(PK, 3), 20, " ") + Space(1) + Padl(RB, 6, " ") + Space(1) + Padl(INF(rk, 3), 15, " ") + Space(1) + Padl(INF(bb, 0), 6, " ") + Space(1) + Padl(INF(BK, 3), 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(val, 2), 20, " ")
                Print #1, Space(1) + String(232, "-")
                lncnt = lncnt + 3
'            End If

            Print #1, Space(1) + Chr(27) + "E" + Padr(Format(rs2("contdt"), "dd/mm/yy"), 8, " ") + Chr(27) + "F"
            lncnt = lncnt + 1

            OB = 0
            OK = 0
            RB = 0
            rk = 0
            bb = 0
            BK = 0
            PK = 0
            val = 0
            reccnt = 0
        End If
'        val = IIf(RS2("balkgs") < 0, 0, RS2("balkgs"))
        Print #1, Space(1) + Padl(rs2("contno"), 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr(rs2("SUPCD"), 7, " ") + Space(1) + Padr(rs2("Suppliername"), 23, " ") + Space(1) + Padr(rs2("cntname"), 20, " ") + Space(1) + Padr(rs2("varname"), 10, " ") + Space(1) + Padl(rs2("ordqty"), 6, " ") + Space(1) + Padl(INF(rs2("ordkgs"), 3), 15, " ") + Space(1) + Padl(rs2("Candyrate"), 10, " ") + Space(1) + Padl(INF((rs2("ratekg") * 100), 2), 10, " ") + Space(1) + Padl(INF(rs2("pnetwt"), 3), 20, " ") + Space(1) + Padl(INF(rs2("recqty"), 0), 6, " ") + Space(1) + Padl(INF(rs2("rcdkgs"), 3), 15, " ") + Space(1) + Padl(INF(rs2("balqty"), 0), 6, " ") + Space(1) + Padl(INF(IIf(rs2("balkgs") < 0, 0, rs2("balkgs")), 3), 15, " ") + Space(1) + Padl(rs2("lotno") & "/" & sLotYear, 10, " ") + Space(1) + Padl(INF(rs2("Value"), 2), 20, " ")
        lncnt = lncnt + 1
        
        If Not IsNull(rs2("add1")) Then
            Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr(rs2("add1"), 30, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ") + Space(2) + Padr(rs2("carname"), 21, " ") + Space(0) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ")
            lncnt = lncnt + 1
        End If
        
        If Not IsNull(rs2("add2")) Then
            Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr(rs2("add2"), 30, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ")
            lncnt = lncnt + 1
        End If
        
        If Not IsNull(rs2("Add3")) And Not IsNull(rs2("City")) Then
            Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr(rs2("Add3") & " " & rs2("City"), 30, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ")
            lncnt = lncnt + 1
        Else
            If Not IsNull(rs2("City")) Then
                Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr(rs2("City"), 30, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ")
                lncnt = lncnt + 1
            End If
        End If
        
        reccnt = reccnt + 1
        
        OB = OB + rs2("ordqty")
        OK = OK + rs2("ordkgs")
        RB = RB + rs2("recqty")
        rk = rk + rs2("rcdkgs")
        bb = bb + rs2("balqty")
        PK = PK + rs2("pnetwt")
        BK = BK + IIf(rs2("balkgs") < 0, 0, rs2("balkgs"))
        val = val + rs2("Value")
        
        GOB = GOB + rs2("ordqty")
        GOK = GOK + rs2("ordkgs")
        GRB = GRB + rs2("recqty")
        GRK = GRK + rs2("rcdkgs")
        GPK = GPK + rs2("pnetwt")
        GBB = GBB + rs2("balqty")
        GBK = GBK + IIf(rs2("balkgs") < 0, 0, rs2("balkgs"))
        GVAL = GVAL + rs2("Value")
        
        dt = rs2("contdt")
        rs2.MoveNext
    Loop
    
    If lncnt >= 58 Then
        pg1 = pg1 + 1
        Print #1, Space(1) + String(232, "-")
        Print #1, Chr(12)
        lncnt = 0
        Call PPurOrd_dtHead(r, s, pg1)
    End If

'    If reccnt > 1 Then
        Print #1, Space(1) + String(232, "-")
        Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr("", 7, " ") + Space(1) + Padr("", 23, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("Sub Total", 10, " ") + Space(1) + Padl(OB, 6, " ") + Space(1) + Padl(INF(OK, 3), 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(PK, 3), 20, " ") + Space(1) + Padl(RB, 6, " ") + Space(1) + Padl(INF(rk, 3), 15, " ") + Space(1) + Padl(INF(bb, 0), 6, " ") + Space(1) + Padl(INF(BK, 3), 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(val, 2), 20, " ")
'        Print #1, Space(1) + String(232, "-")
'    End If

    Print #1, Space(1) + String(232, "-")
    Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr("", 7, " ") + Space(1) + Padr("", 23, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("Grand Total", 11, " ") + Padl(GOB, 6, " ") + Space(1) + Padl(INF(GOK, 3), 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(GPK, 3), 20, " ") + Space(1) + Padl(GRB, 6, " ") + Space(1) + Padl(INF(GRK, 3), 15, " ") + Space(1) + Padl(INF(GBB, 0), 6, " ") + Space(1) + Padl(INF(GBK, 3), 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl(INF(GVAL, 2), 20, " ")
    Print #1, Space(1) + String(232, "-")

    Print #1, Chr(18) + Chr(12)

    Close #1

    Open "d:\Ppurord_dt1.bat" For Output As #1
    Print #1, "cd\"
    Print #1, "d:"
    Print #1, "cd\"
    Print #1, "type Ppurord_dt1.TXT>prn"
    Close #1
    rev.txtfile = "d:\Ppurord_dt1.txt"
    rev.Batfile = "d:\Ppurord_dt1.bat"
End Sub
'Balance 11
Private Sub PPurOrd_dtHead(U As String, V As String, pg1 As Integer)
    Print #1, Chr(18)
    Print #1, Space(1) + Chr(27) + "E" + CENTRE(divname, 110, " ") + Chr(27) + "F"
    Print #1,
    Print #1, Chr(15) + Space(2) + "Purchase List From " & Format(U, "dd/mm/yy") & " To " & Format(V, "dd/mm/yy") & Space(60) & "Option : Datewise" & Space(90) & "Pg.No " & pg1
    Print #1, Space(1) + String(232, "-")
    Print #1, Space(1) + Padr("P.O. Date", 8, " ")
    Print #1, Space(1) + Padl("P.O No", 6, " ") + Space(1) + Padr("Inv Date", 8, " ") + Space(1) + Padr("<-----Party Particulars------>", 30, " ") + Space(1) + Padr("Count", 20, " ") + Space(1) + Padr("Variety", 10, " ") + Space(1) + Padl("<--Ordered Quantity-->", 22, " ") + Space(1) + Padl("<-----Rate Per------>", 21, " ") + Space(1) + Padl("Party Net Kgs", 20, " ") + Space(1) + Padl("<-Received Quantity-->", 22, " ") + Space(1) + Padl("<--Balance Quantity-->", 22, " ") + Space(1) + Padl("Lot No", 10, " ") + Space(1) + Padl("Value in Rs.", 20, " ")
    Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr("Code Name & Address", 30, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Kgs", 15, " ") + Space(1) + Padl("Candy", 10, " ") + Space(1) + Padl("Quintal", 10, " ") + Space(1) + Padl("", 20, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Kgs", 15, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("Kgs", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ")
    Print #1, Space(1) + Padl("", 6, " ") + Space(1) + Padr("", 8, " ") + Space(1) + Padr("                   ", 30, " ") + Space(1) + Padr("", 20, " ") + Space(1) + Padr("", 10, " ") + Space(1) + Padl("     ", 6, " ") + Space(1) + Padl("   ", 15, " ") + Space(1) + Padl("     ", 10, " ") + Space(1) + Padl("       ", 10, " ") + Space(1) + Padl("", 20, " ") + Space(2) + Padr("Transporter Name", 21, " ") + Space(0) + Space(1) + Padl("", 6, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("", 10, " ") + Space(1) + Padl("", 20, " ")
    Print #1, Space(1) + String(232, "-")
    lncnt = 10
End Sub

Public Sub Customized_PurchaseOrd_Abs(r As String, s As String, footerstr As String)
    Dim avgSpot As Double
    Dim dTot1, dTot2, dTot3, dTot4, dTot5, dTot6 As Double
    Dim iCnt As Integer
    Dim sQry As String
    Set cn = New Connection
    cn.Provider = "msdatashape"
    cn.Open connectstring
    
    avgSpot = 0
    iCnt = 0
    Set rev = New Report.ReportView
    Set Rs = New Recordset
    
    sQry = ""

    
    sQry = sQry & Chr(13) & " SELECT VARCODE,SUM(NOOFBALES) AS NOOFBALES,SUM(WEIGHT) AS WEIGHT, SUM(ACTVALUE) AS ACTVALUE,"
    sQry = sQry & Chr(13) & " AVG(SPOT) AS SPOT,AVG(RATEKG) AS RATEKG,AVG(MILLCandy) AS MILLCandy,AVG(PORATE) AS PORATE FROM (    "
    sQry = sQry & Chr(13) & " SELECT  a.Varcode,SUM(a.bales) AS NoOfBales,SUM(a.FAVAOURABLEWGT) AS WEIGHT,SUM(a.netwt) AS Weight1, "
    sQry = sQry & Chr(13) & " (sum(a.FAVAOURABLEWGT) * (d.ratekg)) AS ActValue, d.rateunit,d.DLYTYPE,AVG(d.CANDYRATE)  AS SPOT,AVG(a.RATEKG) AS a,AVG(a.RATECY) AS B,"
    sQry = sQry & Chr(13) & " (SUM(a.TOTLANDCOST)/SUM(a.FAVAOURABLEWGT))  AS ratekg,((SUM(a.TOTLANDCOST)/SUM(a.FAVAOURABLEWGT)) * (c.VALUE)) AS MILLCandy,d.ratekg as porate FROM RM_LOT a,RM_ARRIVAL b, RM_CONT D,RM_RATEUNIT c"
    sQry = sQry & Chr(13) & " WHERE a.arrno=b.arrno AND a.arrdt=b.arrdate AND a.divcode=b.divcode AND a.varcode=b.varcode and"
    sQry = sQry & Chr(13) & " b.contno = d.contno And b.contdt = d.contdt And b.Divcode = d.Divcode And b.Varcode = d.Varcode"
    sQry = sQry & Chr(13) & " AND d.rateunit=c.UNITname AND a.DIVCODE='" & Divcode & "' AND a.LOTDT BETWEEN '" & Format(r, "yyyy-mm-dd") & "' and ' " & Format(s, "yyyy-mm-dd") & "' AND c.UNITCODE='CAN' and a.lotyear='" & Year(yfdate) & "'"
    sQry = sQry & Chr(13) & " GROUP BY a.VARCODE, d.rateunit,d.DLYTYPE,c.VALUE,d.ratekg ) X GROUP BY VARCODE"

    Rs.Open sQry, DB, adOpenStatic
    If Rs.RecordCount <= 0 Then
         MsgBox "No record found", vbInformation, head
         Exit Sub
    End If
              
    
    Set rev = New ReportView
    Close
    Open "d:\Cust_PO_Abs.txt" For Output As #1
    
    Print #1, Space(3) + CENTRE(divname, 90, " ")
    Print #1,
    Print #1, Space(3) + Chr(15) + Chr(27) & "E" & "Purchase List Abstract From " & Format(r, "dd/mm/yy") & " To " & Format(s, "dd/mm/yy") & Space(20) & "Pg.No " & "1" & Chr(27) & "F"
    Print #1, Space(1) + String(110, "-")
    Print #1, Space(3) + Chr(27) + "E" + Padr("Variety", 10, " ") + Space(1) + Padl("No. of", 6, " ") + Space(1) + Padl("Weight In Kgs", 20, " ") + Space(1) + Padl("Actual Value In Rs.", 20, " ") + Space(1) + Padl("Average Spot", 15, " ") + Space(1) + Padl("Rate/Candy", 15, " ") + Space(1) + Padl("Rate/Kg", 15, " ")
    Print #1, Space(3) + Padl("", 10, " ") + Space(1) + Padl("Bales", 6, " ") + Space(1) + Padl("", 20, " ") + Space(1) + Padl("", 20, " ") + Space(1) + Padl("", 15, " ") + Space(1) + Padl("Mill", 15, " ") + Space(1) + Padl("", 15, " ") + Chr(27) + "F"
    Print #1, Space(1) + String(110, "-")
    dTot1 = 0: dTot2 = 0: dTot3 = 0: dTot4 = 0: dTot5 = 0: dTot6 = 0
    
    Rs.MoveFirst
    Do While Not Rs.EOF
    
        Set rs2 = New Recordset
        rs2.Open "Select distinct avg(isnull(a.candyrate,0)) as Rate_Candy fROM RM_CONT A where  a.contdt  BETWEEN '" & Format(r, "yyyy-mm-dd") & "' and ' " & Format(s, "yyyy-mm-dd") & "' and " & _
            "a.divcode='" & Divcode & "' and a.dlytype <>'F' and a.varcode='" & Rs("Varcode") & "'", cn, adOpenStatic, adLockReadOnly
        
        If Not rs2.EOF Then
            avgSpot = IIf(IsNull(rs2("Rate_Candy")), 0, rs2("Rate_Candy"))
        Else
            avgSpot = 0
        End If
            
    
        Print #1, Space(3) + Padr(Rs("Varcode"), 10, " ") + Space(1) + Padl(INF(Rs("NoOfBales"), 0), 6, " ") + Space(1) + Padl(INF(Rs("Weight"), 2), 20, " ") + Space(1) + Padl(INF(Rs("ActValue"), 2), 20, " ") + Space(1) + Padl(INF(avgSpot, 2), 15, " ") + Space(1) + Padl(INF(Rs("millcandy"), 2), 15, " ") + Space(1) + Padl(INF(Rs("RateKg"), 4), 15, " ")
        dTot1 = dTot1 + Rs("NoOfBales")
        dTot2 = dTot2 + Rs("Weight")
        dTot3 = dTot3 + Rs("ActValue")
        dTot4 = dTot4 + avgSpot
        dTot5 = dTot5 + Rs("millcandy")
        dTot6 = dTot6 + Rs("RateKg")
        iCnt = iCnt + 1
        Rs.MoveNext
    Loop
    
        dTot4 = Round(dTot4 / iCnt, 2)
        dTot5 = Round(dTot5 / iCnt, 2)
        dTot6 = Round(dTot6 / iCnt, 4)
    
    Print #1, Space(1) + String(110, "-")
    Print #1, Space(3) + Chr(27) + "E" + Padr(" Total", 10, " ") + Space(1) + Padl(INF(dTot1, 0), 6, " ") + Space(1) + Padl(INF(dTot2, 2), 20, " ") + Space(1) + Padl(INF(dTot3, 2), 20, " ") + Space(1) + Padl(INF(dTot4, 2), 15, " ") + Space(1) + Padl(INF(dTot5, 2), 15, " ") + Space(1) + Padl(INF(dTot6, 4), 15, " ") + Chr(27) + "F"
    Print #1, Space(1) + String(110, "=")
    
    
    Print #1,
    Print #1,
    Print #1,
    Call footermod(CInt(1), footerstr, 85)
    
    Print #1, Chr(12)
    
    Close #1
   
    Open "d:\Cust_PO_Abs.bat" For Output As #1
    Print #1, "cd\"
    Print #1, "d:"
    Print #1, "cd\"
    Print #1, "type Cust_PO_Abs.TXT>prn"
    Close #1
    rev.txtfile = "d:\Cust_PO_Abs.txt"
    rev.Batfile = "d:\Cust_PO_Abs.bat"
End Sub

