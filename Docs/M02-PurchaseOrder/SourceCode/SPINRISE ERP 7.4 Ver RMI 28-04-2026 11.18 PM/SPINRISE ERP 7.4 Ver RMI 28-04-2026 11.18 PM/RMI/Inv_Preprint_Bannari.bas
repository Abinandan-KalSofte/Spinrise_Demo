Attribute VB_Name = "Inv_Preprint_Bannari"
Public Sub WasteInv_PrePrintBANNARI(U As String, V As String, W As String)
On Error Resume Next
Set cnn = New Connection
cnn.Open connectstring
Dim rstDeladd As New ADODB.Recordset

Dim strDelAdd As String
Dim strDelAdd1 As String
Dim strDelAdd2 As String
Dim strDelAdd3 As String
Dim strDelCity As String

strDelAdd = ""
strDelAdd1 = ""
strDelAdd2 = ""
strDelAdd3 = ""
strDelCity = ""

Set RPTV = New Report.ReportView
Close
Close #a
a = FreeFile
'Open "C:\WSINV.TXT" For Output As #a
 Open KALFOLDERDATA & "\WSINV.TXT" For Output As #a
SR = CStr(pdate) + Space(2)
Dim rss As New ADODB.Recordset
Set rss = New ADODB.Recordset

rss.Open "select inv_No from RM_CinvHd where Inv_type='" & U & "' AND divcode='" & Divcode & "' And inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' order by a.inv_no", cnn, adOpenStatic

Do While Not rss.EOF

Set RS2 = New Recordset
 
'    RS2.Open "SELECT  distinct a.INV_NO,a.date,c.slname,c.slcode,c.add1,c.add2,c.add3,c.pin,c.city,c.TINNO,d.NAME,b.product_code," & _
'            " a.VEHICLE_NO,a.CESS_PER,a.CESS_AMT,a.MATL_VALUE,e.description,b.packs,b.nett_kgs,b.rate_ex,b.value,a.CHARITY,a.BED_AMT,a.AED_AMT,a.INS_PER," & _
'            " a.INS_AMT , a.TAX_AMT, a.LSC_AMT, a.FREIGHT, a.RND_OFF,A.fwd_chrg,B.tax_per,A.tcs_per,A.tcs_amt,a.total_amt, c.TINNO,c.cgst,h.description as packtype,b.EDUCESS_PER,b.EDUCESS_amt,A.ECONTCS_AMT,A.HSONTCS_AMT,A.ECONTCS_PER,A.HSONTCS_PER,b.Rate_kg,f.Delcode " & _
'            " FROM IG_RINVHD a,IG_RINVDT b,FA_SLMAS c,IG_AREA d,ig_rproduct e,ig_rbohd f,ig_rbodt g,ig_packtype h WHERE a.divcode=b.divcode and a.divcode=f.divcode and a.bo_no=f.bo_no and a.bo_type=f.bo_type and f.bo_no=g.bo_no and f.bo_type=g.bo_type and e.pack_type=h.pack_type  and " & _
'            " g.product_code=b.product_code and a.divcode=e.divcode and b.product_code=e.product_code and a.INV_NO=b.inv_no AND a.inv_type=b.inv_type and " & _
'            " a.CUST_CODE = c.slcode And a.DESPATCH_TO = d.AREA_CODE" & _
'            " and a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no ='" & Trim(RSS(0)) & "' order by a.inv_no", cnn, adOpenStatic
Set RS2 = New Recordset
RS2.Open " select Distinct Hd.Inv_No,Hd.date,Hd.Cust_Code,sl.SlName,Sl.Add1,Sl.Add2,Sl.city," & _
        " Sl.PIN,Sl.cgst,Dt.product_code as LotNo ,Sl.TINNO,Vr.Varcode,Vr.VarName,Dt.Packs,Dt.InvSNo," & _
        " Dt.Nett_Kgs,Dt.RAte_nett,ISNULL(dt.inv_kgs,0) AS INV_KGS,ISNULL(Dt.inv_Kgs * Dt.RAte_ex,0) as Value,hd.cess_per,hd.Cess_Amt,DT.tax_per,Dt.Tax_Amt,hd.tCS_per,hd.TCS_Amt,hd.TCS_Amt,ta.DESCRIPTION,hd.RND_OFF,l.plotno,HD.fwd_chrg, " & _
        " dt.AED_Amt ,Dt.RAte_ex, dt.BED_Amt, hd.Carrier_code, Car.CARNAME, PRE_TIME, REM_TIME, LR_NO, VEHICLE_NO,isnull(bagidno,'') as prno " & _
        " FROM RM_CinvHd hd " & _
        " INNER JOIN RM_Cinvdt dt ON Hd.Divcode=dt.Divcode and Hd.Inv_Type=Dt.Inv_Type and Hd.Inv_No=dt.Inv_No " & _
        " LEFT OUTER JOIN RM_Lot L ON L.LotNo=Dt.Product_code and L.Divcode=Dt.Divcode " & _
        " INNER JOIN Fa_SlMas Sl ON Sl.SlCode=Hd.Cust_Code " & _
        " LEFT OUTER JOIN RM_Var Vr ON Vr.VarCode=L.VarCode " & _
        " LEFT OUTER JOIN po_car Car ON Car.CARCODE=Hd.Carrier_Code " & _
        " LEFT OUTER JOIN ig_tax ta ON ta.TAX_CODE=dt.TAX_CODE " & _
        " WHERE Hd.Inv_No= '" & Trim(rss(0)) & "'   and Hd.Divcode='" & Divcode & "' and HD.inv_type='" & Trim(Mid(U, 1, 2)) & "' ", db

    
    If Not RS2.EOF Then
       
        '    Set rstDeladd = New ADODB.Recordset
        '    rstDeladd.Open "SELECT isnull(cname,'') as cname,isnull(add1,'') as add1, isnull(add2,'') as add2,isnull(add3,'') as add3,isnull(city,'') as city,isnull(pin,'') as pin FROM ig_deladd Where Delcode='" & RS2("Delcode") & "'", db, adOpenForwardOnly, adLockReadOnly
     
'            If Not rstDeladd.EOF Then
'                strDelAdd = rstDeladd("Cname")
'                strDelAdd1 = rstDeladd("Add1")
'                strDelAdd2 = rstDeladd("Add2")
'                strDelAdd3 = rstDeladd("Add3")
'                If rstDeladd("Pin") <> "" Then
'                    strDelCity = rstDeladd("City") & " - " & rstDeladd("Pin")
'                Else
'                    strDelCity = rstDeladd("City")
'                End If
'            End If
            Print #a,
            
            Print #a, Space(67) + Chr(18) & Chr(27) & Chr(87) & "1" + Padr("SALES OF COTTON", 20, "") & Chr(27) & Chr(87) & "0"
            Print #a,
            Print #a, Space(72) & Chr(27) + "E" & Padr(Format(val(Right(RS2("INV_NO"), 6)), "#0000"), 6, " ") & Chr(27) & "F"
            Print #a, Space(72) & Chr(27) + "E" & Padr(Format(RS2("date"), "DD/MM/YY"), 10, " ") & Chr(27) & "F"
            Print #a,
'            Print #a,
            Print #a, Space(13) & Chr(27) & "E" & Padr(RS2("Cust_Code"), 45, " ") & Chr(27) & "F" + Space(10) & Padr(Name, 20, " ")
            Print #a, Space(13) & Chr(27) & "E" & Padr(RS2("slname"), 44, " ") & Chr(27) & "F" + Space(10) & Chr(15) & Padr(strDelAdd, 20, " ") & Chr(18)
            Print #a, Space(13) & Padr(RS2("add1"), 44, " ") + Space(10) & Chr(15) & Padr(strDelAdd1, 20, " ") & Chr(18)
            Print #a, Space(13) & Padr(RS2("add2"), 44, " ") + Space(10) & Chr(15) & Padr(strDelAdd2, 20, " ") & Chr(18)
            Print #a, Space(13) & Padr(RS2("city") & IIf(IsNull(RS2("pin")), " ", IIf(RS2("PIN") = "", " ", "-" & RS2("pin"))), 44, " ") + Space(10) & Chr(15) & Padr(strDelAdd3, 20, " ") & Chr(18)
            Print #a, Space(13) & Padr(RS2("tinno"), 19, " ") & Padr(RS2("cgst"), 25, " ") + Space(10) & Chr(15) & Padr(strDelCity, 20, " ") & Chr(18)
            Print #a,
            Print #a,
            Print #a,
            sno1 = 0
            pack = 0
            Kgs = 0
            value = 0
            
            Set rs1 = New Recordset
             rs1.Open "SELECT IB.BALENO FROM RM_ISSH IH,RM_ISSB IB,RM_CINVHD A WHERE IB.DOCNO=IH.DOCNO AND IH.DOCNO=A.BO_NO AND IH.DOCDT=IB.DOCDT AND IB.DIVCODE=IH.DIVCODE AND A.INV_NO='" & RS2("INV_NO") & "' AND A.DATE='" & Format(RS2("date"), "yyyy-MM-dd") & "' AND IH.DIVCODE='" & Divcode & "' AND IH.ISSTYPE='SA' ", db, adOpenStatic
             Dim bale As String
             Dim CA As Integer
             If Not rs1.EOF Then
                bale = CStr(rs1("BALENO")) + "-"
                BA = rs1("BALENO")
                rs1.MoveNext
             End If
             Do While Not rs1.EOF
                CA = rs1("BALENO") - BA
                If CA <> 1 Then
                    bale = bale + CStr(RS2("packs")) + ","
                    Rs.MoveNext
                    bale = bale + CStr(RS2("packs")) + "-"
                    BA = rs1("baleno")
                End If
                BA = rs1("BALENO")
                rs1.MoveNext
             Loop
            If rs1.EOF = False Then
            rs1.MoveLast
            bale = bale + CStr(rs1("BALENO"))
            
            End If
            
            
            If Not RS2.EOF Then
                sno1 = sno1 + 1
             '   rate1 = (RS2("Rate_EX") / IIf(IsNull(RS2("Rate_kg")), 1, RS2("Rate_kg"))) * 100
                Print #a, Space(1) + Padr(sno1, 3, " ") + Space(1) + Padr(Trim(RS2("Varcode")), 6, " ") + Space(1) + Padr(Trim(RS2("VarName")), 20, " "); Space(1) + Padr(Trim(RS2("packs")), 7, " ") + Space(1) + Padl("bale", 5, " ") + Space(8) + Padl(Trim(INF(RS2("INV_kgs"), 3)), 12, " ") + Space(1) + Padl(Trim(INF(RS2("Rate_Ex"), 2)), 9, " ") + Space(1) + Padl(Trim(INF(RS2("Value"), 2)), 12, " ")
                
                pack = pack + RS2("packs")
                Kgs = Kgs + RS2("Nett_kgs")
                value = value + RS2("value")
             '   RS2.MoveNext
            End If
            
            RS2.MoveFirst
            isno = sno1
    
        For sno1 = sno1 To 27 - isno
            Print #a,
            sno1 = sno1 + 1
        Next
    
        Print #a, Space(36) & Padl(pack, 10, " ") & Space(8) & Padl(INF(Kgs, 3), 12, " ") + Padl(INF(value, 2), 23, " ")
        Print #a,
'        Print #a, Space(75) & Padl(INF(value, 2), 14, " ")
        If RS2("fwd_chrg") <> Empty And RS2("fwd_chrg") <> "0" Then
            Print #a, Space(14) + Padr(Name, 20, " ") & Space(1) + "PACKING MATERIAL COST xxxxxxxx         " + Space(1) + Padl(INF(RS2("fwd_chrg"), 2), 14, " ")
        Else
            Print #a, Space(14) + Padr(Name, 25, " ")
        End If
        Print #a, Space(14) + Padr(RS2("vehicle_no"), 20, " ")
        If RS2("cess_amt") <> Empty And RS2("cess_amt") <> "0" Then
             Print #a, Space(69) & Padl(RS2("cess_per") & "%", 5, " ") & Space(1) & Padl(INF(RS2("cess_amt"), 2), 14, " ")
        Else
             Print #a,
        End If
        
  End If
    
    If RS2("tax_amt") <> Empty And RS2("tax_amt") <> "0" Then
        Print #a, Space(56) & "XXXXXX" & "TNVAT     " & Padl(RS2("tax_per") & "%", 2, " ") & Space(1) & Padl(INF(RS2("tax_amt"), 2), 14, " ")
    Else
        Print #a,
    End If
    Print #a,
    If RS2("tcs_amt") <> Empty And RS2("tcs_amt") <> "0" Then
        Print #a, Space(69) & Padl(RS2("tcs_per") & "%", 5, " ") & Space(1) & Padl(INF(RS2("tcs_amt"), 2), 14, " ")
    Else
        Print #a,
    End If
    If RS2("BED_Amt") <> Empty And RS2("BED_Amt") <> "0" Then
        Print #a, Space(55) & "EC @" & Padl(RS2("BED_Amt") & "%", 6, " ") & " on TCS " & Space(2) & Padl(INF(RS2("BED_Amt"), 2), 14, " ")
      
    Else
        Print #a,
    End If
    If RS2("AED_Amt") <> Empty And RS2("AED_Amt") <> "0" Then
        Print #a, Space(55) & "HS @" & Padl(RS2("AED_Amt") & "%", 6, " ") & " on TCS " & Space(2) & Padl(INF(RS2("AED_Amt"), 2), 14, " ")
        
    Else
        Print #a,
    End If
    
'    Print #a,
'    Print #a, Space(75) + Chr(27) & "E" & Padl(INF(RS2("total_amt"), 2), 14, " ") + Chr(27) + "F"
'    Print #a, Space(10) + Chr(15) & Padr(Trim(Mid$(Num_To_Word(CStr(RS2("total_amt"))), 8, Len(Num_To_Word(CStr(RS2("total_amt")))))), 104, " ") + Chr(18) & Chr(12)

     Dim strRupee As String
     Dim strRupee1 As String
     Dim strRupee2 As String
     
     tot = Round(RS2("Value"), 0) + RS2("Tax_Amt") + RS2("Cess_Amt") + RS2("BED_Amt") + RS2("rnd_off")

     strRupee = Trim(Mid$(Num_To_Word(CStr(tot)), 8, Len(Num_To_Word(CStr(tot)))))
     strRupee1 = Mid(strRupee, 1, 114)
     strRupee2 = Mid(strRupee, 115, 114)
     
     Print #a, Space(10) + Chr(15) + Padr(strRupee1, 112, " ") + Chr(18) + Chr(27) & "E" & Padl(INF(tot, 2), 14, " ") + Chr(27) + "F"
     Print #a, Space(10) + Chr(15) & Padr(strRupee2, 65, " ") + Chr(18)     ' & Chr(12)
    
     Print #a,
     Print #a,
     Print #a,
     Print #a,
     Print #a,
     Print #a,
     Print #a,
   
    
     rss.MoveNext
   Loop
    
'    Print #a,
    Close #a
    a = FreeFile
    
'    Open "C:\WSINV.BAT" For Output As #a
'
'    Print #a, "CD\"
'    Print #a, "C:"
'    Print #a, "CD\"
'    Print #a, "type WSINV.TXT> PRN"
'    Close
'    RPTV.txtfile = "C:\WSINV.TXT"
'    RPTV.Batfile = "C:\WSINV.BAT"
    Call KALBATPROCESS("WSINV")
ER1:
    If Err.Number = 3021 Then
        'MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If
                                                                                                                 
End Sub

Public Sub WasteInv_PrePrintForm1(U As String, V As String, W As String)
On Error Resume Next
Dim va As Integer
Dim Desc1 As String
Dim Desc2 As String
Dim Pos As Integer
Dim Rs As New Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim RS6 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim rss As Recordset
Dim uu As Recordset
Dim HHAD As String
Dim cnt As Integer
Dim memtax As String
Dim rup1 As String
Dim rup2 As String
Dim rup3 As String
Dim rup4 As String
Dim X As String
Dim Rate As Double
Dim P1 As String
Dim P2 As String
Dim P3 As String
Dim P4 As String
Dim tot As Double
Dim Sno As Integer
Dim crdate As String
Dim crdate1 As String
Dim descrip As String
Set cnn = New Connection
cnn.Open connectstring
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim pack_no As String
Dim pack_no1 As String
Dim pack_no2 As String
Dim pack_no3 As String
Dim pack_no4 As String
Dim pack_no5 As String
Dim pack_no6 As String
Dim pack_no7 As String
Dim pinvtype As String
Dim per As String
Dim ii As Integer
Dim str, str1, str2, str3, str4 As String
Dim pp, pp1, pp2, pp3, pp4 As String
Dim k, n As Integer
Dim sno1 As Integer
Dim rem_packs(3) As String

per = Right(Trim(U), 2)
Set RS2 = New Recordset
             
RS2.Open "select distinct a.inv_no,A.DATE,it.inv_type, ISNULL(IT.DESCRIPTION,'') PINVTYPE, a.cr_days,a.pay_mode,a.cess_amt,a.educess_amt,a.pla_bed,a.pla_aed,a.delivery_dt,a.despatch_to,a.bo_no,isnull(a.freight,0) as freight,isnull(a.ins_amt,0) AS INS ,a.cex_inv_no,a.date,a.cust_code,a.matl_value,isnull(a.charity,0) AS CHARITY,a.bed_amt,a.aed_amt,a.tax_amt,a.lsc_amt,a.total_amt,b.slname,isnull(b.cgst,0) as cgst,b.cgstdt,b.add1,isnull(b.add2,'') as add2,isnull(b.add3,'') as add3,isnull(c.name,'')as  city, " & _
        "a.cons_add1,a.cons_add2,a.cons_add3,a.cons_add4,isnull(a.lr_no,'') as lr_no,a.lr_date,isnull(a.pre_time,' ') ptime,isnull(a.rem_time,' ') rtime,a.vehicle_no,a.pla_no,a.rg23a_no,a.rg23c_no,a.rnd_off,isnull(a.cess_per,0) cp,isnull(a.ins_per,0) ip,a.inv_type,a.vehicle_no,isnull(C.NAME,' ') despto,e.ordrefno,e.ordredate,d.name,RND_OFF,isnull(a.brok_code,'') brcode,n.BED_NOTIFY ,B.rc_no,A.PRE_TIME,A.REM_TIME,A.DELIVERY_DT,A.INS_AMT,isnull(a.fwd_chrg,0) as packing_chrg  " & _
        " from ig_Rinvhd a,IG_INVTYPE IT,fa_slmas b,ig_area c,ig_area d ,ig_Rbohd e, ig_notify n where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and IT.INV_TYPE=A.INV_TYPE AND a.cust_code=b.slcode and b.areacode *=d.area_code and a.despatch_to *=c.area_code and a.inv_no*=e.inv_no and a.inv_type*=e.inv_type and a.CEX_INV_TYPE *= n.NOTIFY_CODE AND a.divcode=it.divcode order by a.inv_no", cnn, adOpenStatic
    
If RS2.EOF = True Then
    MsgBox "No Records found for selected Invoice Number", vbInformation, head
    Exit Sub
End If
    
Set rs1 = New Recordset
rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,tngstdt,isnull(cgst,'') as cgst,cgstdt,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3 from pp_divmas where divcode='" & Divcode & "'", cnn, adOpenStatic
If rs1.EOF Then
    MsgBox "No Record Found"
    Exit Sub
End If
    
Set temprs = New Recordset
Set RPTV = New Report.ReportView
Close
Close #a
a = FreeFile
'Open "C:\WSINV.TXT" For Output As #a
 Open KALFOLDERDATA & "\WSINV.TXT" For Output As #a
SR = CStr(pdate) + Space(2)
pg1 = 1
va = 1
k = 0
cnt = 0
Ct = 0
sno1 = 1
Set rs1 = New Recordset
rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt,isnull(cgst,'') as cgst,isnull(cgstdt,'') as cgstdt ,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3,collectorate,pincode from pp_divmas where divcode='" & Divcode & "'", cnn, adOpenStatic
    
Do While Not RS2.EOF
    tot1 = 0
    tot2 = 0
    tot3 = 0
    
    Set rs4 = New Recordset
    rs4.Open "select slcode,slname,add1,add2,isnull(add3,'') as add3,city,pin,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt, isnull(ecc,' ') as ecc,isnull(cgst,'')as cgst,isnull(cgstdt,'') as cgstdt,rc_no,phone1,TINNO from fa_slmas where slcode='" & RS2("cust_code") & "'", cnn, adOpenStatic
        
    Set uu = New Recordset
    uu.Open "select add1,add2,city from ig_deladd  where slcode='" & rs4("slcode") & "'", cnn, adOpenStatic
                 
    Set rs3 = New Recordset
    rs3.Open "select distinct a.product_code,b.description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,a.tax_per,a.tax_amt,a.lsc_per,a.lsc_amt,isnull(b.bundle_wt,1) as bundle," & _
            "a.inv_type,E.DESCRIPTION AS NAME,ISNULL(A.RATE_Ex,0) AS RATE_KG from ig_Rinvdt a,ig_Rproduct b,ig_bodt d,IG_PRODUCTTYPE E where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "'  and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' AND E.PRODUCT_TYPE=B.PRODUCT_TYPE", cnn, adOpenStatic, adLockBatchOptimistic
           
    Dim IR As Integer
    IR = 0
    Sno = 0
        
    Set rsc = New Recordset
    rsc.Open "select name,lr_no,isnull(b.rnd_off,0) as round ,isnull(total_amt,0) as total from ig_carrier a,ig_Rinvhd b where a.carrier_code=b.carrier_code and b.inv_no='" & RS2("inv_no") & "'", cnn
    Set RSNOT = New Recordset
    RSNOT.Open "select DISTINCT a.bed_notify,a.aed_notify,b.cone_wt,b.tariffhead,c.description type,c.bed_per,c.aed_per,c.cess_per,c.educess_per,d.lsc_per,d.tax_per,e.description from ig_notify a," & _
            "ig_Rproduct b,ig_producttype c,ig_Rinvdt d ,ig_tax e where d.inv_no= '" & RS2(0) & "' and d.inv_type='" & RS2("inv_type") & "' and b.product_code = d.product_code and b.product_type *= c.product_type and a.product_cat *= c.product_cat and d.divcode = '" & Divcode & "' and b.ltax_code*=e.tax_code and  d.divcode=b.divcode and b.divcode='" & Divcode & "'", cnn, adOpenStatic

    If RS2!InvType = "W1" Then
'        pinvtype = "LOCAL WSALES"
    ElseIf rs1!InvType = "W2" Then
        pinvtype = "INTER ST.WSALES"
    End If
    
    If Not rsc.EOF Then car = rsc(0)
            Print #a,
            Print #a,
            Print #a,
            'Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            If Divcode <> "02" Then
                Print #a,
            End If
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(66) & Chr(27) + "E" + Padr(pinvtype & "", 15, " ") + Chr(27) + "F"
            'Print #a,
            Print #a, Space(12) & Space(0) & Chr(27) & Chr(87) & "1" & Padr(Format(val(Right(RS2("inv_no"), 6)), "#0000"), 6, " ") & Chr(27) & Chr(87) & "0" & Space(48) & Chr(27) & Chr(87) & "1" & Padr(Format(RS2("date"), "DD/MM/YY"), 10, " ") & Chr(27) & Chr(87) + "0"
            'Print #a, Space(11) & Chr(27) + "E" + Padr(Format(Val(Right(RS2("inv_no"), 6)), "#0000"), 6, " ") & Space(45) & Padr(Format(RS2("Date"), "DD/MM/YY"), 10, " ")  '& Space(38) & Padr(pinvtype & "", 15, " ") + Chr(27) + "F"
            Print #a,
            Print #a, Space(10) & Chr(27) & "E" & Padr(rs4("slname"), 47, " ") & Chr(27) & "F" & Space(5) & Padr(RS2("LR_no"), 10, " ") ' & Space(7) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ") '& Padr(rs2("orderno"), 10, " ") & Space(1) & Padr(Format(rs2("orderdate"), "dd/mm/yy"), 8, " ")
            k = 21
            If rs4("ADD1") <> " " Then
                Print #a, Space(10) & Padr(rs4("add1"), 45, " ")
                k = k + 1
            End If
            If rs4("ADD2") <> " " Then
                Print #a, Space(10) & Padr(rs4("add2"), 45, " ")
                k = k + 1
            End If
            If rs4("CITY") <> " " Then
               Print #a, Space(10) & Padr(RS2("city") & IIf(IsNull(rs4("pin")), " ", IIf(rs4("PIN") = "", " ", "-" & rs4("pin"))), 50, " ") '& Padr(Rss("name"), 20, " ") '& Space(0); Padr(rs2("name"), 12, " ")
               k = k + 1
            End If
            Name = ""
           If rsc.RecordCount > 0 Then
                Name = rss("name")
            End If
            If vecno = " " Then
               vecno = " "
            End If
            
            If k = 20 Then
               Print #a, 'Space(10) & Padr(" ", 53, " ") & Padr(Name, 25, " ") + Space(1) + Padr(vecno, 15, " ")
               k = k + 3
            End If
            
            If k = 21 Then
               Print #a, 'Space(10) & Padr(" ", 53, " ") & Padr(Name, 25, " ") + Space(1) + Padr(vecno, 15, " ")
               k = k + 2
            End If
            If k = 22 Then
               Print #a, 'Space(10) & Padr(" ", 53, " ") & Padr(Name, 25, " ") + Space(1) + Padr(vecno, 15, " ")
               k = k + 1
            End If
        'Print #a, Space(33) + Space(20) & Padr(Name, 25, " ") + Space(1) + Padr(vecno, 15, " ")
        Print #a, Space(10) + "TIN No:" + Padr(rs4("tinno"), 15, " ")
'        Print #a,
        'Print #a,
        Print #a,
        Print #a, Space(67) + "1.00"
        k = k + 5
        crdate = RS2("cr_days")
        crdate1 = DateAdd("d", crdate, RS2("date"))
        
        descrip = rs3("description")
        Set rs3 = New Recordset
     
    
    'Dim AgRs As Recordset
    'Set AgRs = New Recordset
    'AgRs.Open "Select ISNULL(Abbr,'') as Abbr from FA_SlMAs where SlCode='" & Invoice.txtfields(8).Text & "'", cnn, adOpenStatic
    'If Not AgRs.EOF Then VAgentAbbr = AgRs(0).value
   
    'Print #a, Space(5) & Padl(RS1("divname"), 53, " ") & Space(12) & VAgentAbbr
    

    
'    If rs3("inv_type") = "EX" Or rs3("inv_type") = "EE" Or rs3("inv_type") = "EM" Or rs3("inv_type") = "DX" Then
'        Print #a, Space(30) & Chr(18) & Chr(14) + Chr(27) + "E" + "EXPORT INVOICE" + Chr(27) + "F" + Chr(18)
'        Print #a, Space(10) & Chr(27) & Padr(rs4("slname"), 55, " ") & Chr(27) & "F"
'    Else
'        Print #a,
'        Print #a, Space(10) & Chr(27) & "E" & Padr(rs4("slname"), 45, " ") & Space(5) & vDeliAtHead & Chr(27) & "F"
'    End If
'
'    Print #a, Space(10) & Padr(rs4("add1"), 35, " ") & Space(5) & Padr(vDeli1, 25, " ") & Space(1) & Padr(" ", 10, " ") & Space(1) & Padr(Format(" ", "dd/mm/yy"), 8, " ")
'    If rs3("inv_type") = "EX" Or rs3("inv_type") = "EE" Or rs3("inv_type") = "EM" Or rs3("inv_type") = "DX" Then
'        Print #a, Space(10) & Padr(rs4("add2"), 35, " ") & Space(5) & Padr(vDeli2, 25, " ") '& Padr(rs2("LR_no"), 10, " ") & Space(1) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
'    Else
'        Print #a, Space(10) & Padr(rs4("add2"), 35, " ") & Space(5) & Padr(vDeli2, 25, " ") '& Padr(rs2("LR_no"), 10, " ") & Space(1) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
'    End If
'
'    Print #a, Space(10) & Padr(RS2("city") & IIf(IsNull(rs4("pin")), " ", IIf(rs4("PIN") = "", " ", "-" & rs4("pin"))), 30, " ") & Space(10) & Padr(vDeli3, 20, " ") 'Padr(rs2("VEHICLE_NO"), 12, " ")
'
'    If IIf(IsNull(rs4("PHONE1")), "", rs4("PHONE1")) <> "" Then
'        Print #a, Space(10) & Padr(IIf(IsNull(rs4("phone1")), " ", rs4("phone1")), 35, " ") & Space(5) & Padr(vDeli4, 25, " ") '& Space(8) & Padr(rs2("DESPTO"), 25, " ")
'    End If
'
'
'    If Not (IsNull(rs4("TINNO") & " ")) Then
'        Print #a, Space(10) & "TIN NO:" & Padr(rs4("TINNO"), 15, " ");
'    Else
'        Print #a, Space(10) & Space(15);
'    End If
'
'    If Len(rs4("cgst")) > 0 Then
'        Print #a, " CST:" & Padr(rs4("cgst"), 15, " ");
'    Else
'        Print #a, Space(18);
'    End If
'
'    Print #a, Space(1) & Padr(vDeli4, 35, " ")
'
'
'    Print #a,
'    Print #a, 'Space(63) & Padl(INF(rs3("RATE_KG"), 2), 8, " ")
'    descrip = rs3("description")
'    Set rs5 = New Recordset
    Set rs3 = New Recordset

    rs3.Open "select distinct a.product_code,b.description,isnull(b.pack_wt,0) pack_wt,b.finishing,b.kcs,a.packs,a.nett_kgs,a.value,sum(a.rate_ex)/count(a.rate_ex) as rate_ex,b.pack_type,B.PRODUCT_TYPE,a.Inv_Type  from ig_Rinvdt a,ig_Rproduct b,ig_Rbodt d,ig_Rbohd E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE and a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' " & _
            "and a.product_code=d.product_code group by a.product_code,b.description,isnull(b.pack_wt,0),b.pack_type,B.PRODUCT_TYPE,a.Inv_Type,a.packs,a.nett_kgs,a.value,b.finishing,b.kcs ORDER BY A.product_code", cnn, adOpenStatic
        
    Set rsb = New Recordset
    rsb.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex)/count(*) as rate_ex,b.pack_type,a.invsno from ig_Rinvdt a,ig_Rproduct b,ig_Rbodt d,ig_Rbohd E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE AND " & _
            " D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "'  and  a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code group by a.product_code,b.description,b.pack_type,a.invsno ORDER BY A.product_code,INVSNO", cnn, adOpenStatic
    
    Do While Not rs3.EOF
        
            Set UOMRS = New Recordset
            UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", cnn, adOpenStatic, adLockBatchOptimistic
            UOMRS.MoveFirst
            UNT = UCase(Trim(UOMRS("description")))
            
         '   FINISH = UCase(rs3("finishing"))
        '    kcstype = UCase(Trim(rs3("kcs")))
       '     Str = UCase(Trim(rs3("description")))
'            If (FINISH = "CO" Or FINISH = "CH" Or FINISH = "CP") And (kcstype = "CO") Then
'                     mstrno = InStr(Str, " ")
'                     mstr = Mid(Str, 1, mstrno - 1)
'                     Str = mstr + " COTTON COMBED"
'                     fintype = "CONE YARN"
'            ElseIf (FINISH = "CO" Or FINISH = "CH" Or FINISH = "CP") And (kcstype = "KA") Then
'                     mstrno = InStr(Str, " ")
'                     mstr = Mid(Str, 1, mstrno - 1)
'                     Str = mstr + " COTTON KARDED"
'                     fintype = "CONE YARN"
'                Else
'                     fintype = "COTTON COMBED"
'            End If
'            If FINISH = "DC" Or FINISH = "SC" Then
'                     mstrno = InStr(Str, " ")
'                     mstr = Mid(Str, 1, mstrno - 1)
'                     Str = mstr + " HANK YARN IN"
'                     fintype = "CROSS REEL"
'            End If
'            If FINISH = "DP" Or FINISH = "SP" Then
'                     mstrno = InStr(Str, " ")
'                     mstr = Mid(Str, 1, mstrno - 1)
'                     Str = mstr + " HANK YARN IN"
'                     fintype = "PLAIN REEL"
'            End If
            Set rsd = New Recordset
            rsd.Open "select distinct a.product_code,b.description,a.packs as packs, a.nett_kgs as nett_kgs, a.value as value, a.rate_ex as rate_ex,b.pack_type from ig_Rinvdt a,ig_Rproduct b,ig_Rbodt d,IG_RBOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
                "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code", cnn, adOpenStatic
 
             i = 0
             Do While Not rsd.EOF
            
                 Set rs5 = New Recordset
                 rs5.Open "select distinct a.product_code,isnull(b.spack_no,'') as spack_no,isnull(b.epack_no,'') as epack_no,b.lot_code as ldesc  from ig_Rpacknos a,ig_Rbodt b,IG_RBOHD C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                    " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                    "  a.pack_no>=spack_no and a.pack_no<=epack_no and  INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "'   order by b.lot_code", cnn, adOpenStatic
                pack_no = " "
                rs5.MoveFirst
         
                 lot_des = ""
                 lot_desc = ""
                 GG = 1
                 ii = 1
                rs5.MoveFirst
                
            While Not rs5.EOF
            
                Set RS6 = New Recordset
                RS6.Open "select distinct a.product_code,isnull(b.spack_no,'') as spack_no,isnull(b.epack_no,'') as epack_no,b.lot_code as ldesc  from ig_Rpacknos a,ig_Rbodt b,IG_RBOHD C where a.product_code=b.product_code and a.packno_code=b.packno_code " & _
                    "and b.spack_no='" & rs5("spack_no") & "' and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                    "  a.pack_no>=spack_no and a.pack_no<=epack_no and  INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "'   order by b.lot_code", cnn, adOpenStatic

                Do While Not RS6.EOF
                    P1 = CStr(RS6("spack_no")) + "-" + CStr(RS6("epack_no"))
                    i = i + 1
                    RS6.MoveNext
                Loop

                If i = 1 Then
                    ''pack_no = P1
                    SU_PACK_NO = P1
                End If

                If i = 2 Then
''                    pack_no1 = P1
                      SU_PACK_NO1 = P1
                End If
                If i = 3 Then
                    ''pack_no2 = P1
                    SU_PACK_NO2 = P1
                End If
                If i = 4 Then
''                    pack_no3 = P1
                      SU_PACK_NO3 = P1
                End If
                rs5.MoveNext
            Wend

             rsd.MoveNext
       Loop
            
            Set UOMRS = New Recordset
            UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", cnn, adOpenStatic, adLockBatchOptimistic
            UOMRS.MoveFirst
             
            Rate = val(rs3!RAte_ex & "")
            Sno = Sno + 1
            v1 = 0
            v1 = rs3("VALUE") + RS2("CHARITY")
            If Sno = 1 Then
                tdesc = ds
            End If
            If Sno = 2 Then
                tdesc = ds1
            End If
            If Sno = 3 Then
                tdesc = ds2
            End If
            If Sno = 4 Then
                tdesc = ds3
            End If
            
            Desc1 = "": Desc2 = "": Pos = 0
            Pos = InStr(InStr(1, Trim(rs3("descriPtion")), " ") + 1, Trim(rs3("description")), " ")
            Desc1 = rs3("descriPtion")
            Desc2 = rs3("descriPtion")
            
            If Len(Desc1) > 0 Then
                str1 = Mid(Desc1, 1, 20)
                Print #a, Space(5) + Padr(sno1, 3, " ") + Space(1) + Padr(Trim(str1), 20, " ");
             Else
                Print #a, Space(5) + Padr(sno1, 3, " ") + Space(1) + Padr(Trim(Desc2), 20, " ");
                Desc2 = ""
             End If
                        
                   
            Print #a, Space(13) + Padl(rs3("packs"), 6, " ") & Space(0);
             
            If Sno = 1 Then
              'Print #a, Space(8); '& Padr(SU_PACK_NO, 11, " ");
            End If

            If Sno = 2 Then
              'Print #a, Space(8); '& Padr(SU_PACK_NO1, 11, " ");
            End If

            If Sno = 3 Then
             ' Print #a, Space(8); '& Padr(SU_PACK_NO2, 11, " ");
            End If

            If Sno = 4 Then
              'Print #a, Space(8); '& Padr(SU_PACK_NO3, 11, " ");
            End If
                         
             'Print #a, Space(1) + Padl(rs3("pack_wt"), 8, " ") + Space(1) + Padl(INF(rs3("nett_kgs"), 3), 10, " ") & Space(1) & Padl(INF(rs3("rate_ex"), 2), 8, " ") & Space(0) & Padl(INF(rs3("value"), 2), 13, " ") ' & Space(4) & Padl(INF(v1, 2), 14, " ")
             'Print #a, Space(9) + Space(1) + Padl(INF(rs3("nett_kgs"), 3), 10, " ") & Space(1) & Padl(INF(rs3("rate_ex"), 2), 8, " ") & Space(0) & Padl(INF(rs3("value"), 2), 13, " ") ' & Space(4) & Padl(INF(v1, 2), 14, " ")
             Print #a, Space(3) + Space(0) + Padl(INF(rs3("nett_kgs"), 3), 10, " ") & Space(5) & Padl(INF(rs3("rate_ex"), 2), 8, " ") & Space(1) & Padl(INF(rs3("value"), 2), 13, " ") ' & Space(4) & Padl(INF(v1, 2), 14, " ")  '---Prasad
             'Print #a, Space(6) + Padr(Trim(Desc2), 22, " ") + Space(1) + Padr(UNT, 20, " ")
             
             If Trim(tdesc) <> "" Then
                Print #a, Space(5) + Padr(tdesc, 20, " ")
                k = k + 1
                cnt = cnt + 1
             End If
             'If Trim(rs3!proremarks <> "") Then
              '  Print #a, Space(5) + Padr(rs3!proremarks, 80, " ")
               ' k = k + 1
                'cnt = cnt + 1
             'End If
             'Print #a,  -  Prasad
            k = k + 4
            cnt = cnt + 4
            sno1 = sno1 + 1
            tdesc = " "
    
        Set UOMRS = New Recordset
        UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", cnn, adOpenStatic, adLockBatchOptimistic
        UOMRS.MoveFirst
        
        Set COMMODITY = New Recordset
        COMMODITY.Open "SELECT DESCRIPTION FROM IG_PRODUCTTYPE WHERE PRODUCT_TYPE='" & rs3("PRODUCT_TYPE") & "' ", cnn, adOpenStatic
        COMMODITY.MoveFirst

        UNT = UOMRS("description")
        Set rs5 = New Recordset
        rs5.Open "select distinct a.product_code,b.description,l.description as ldesc,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code,a.invsno from ig_Rinvdt a,ig_Rproduct b,ig_Rbodt d,ig_Rbohd e,ig_lot l where l.lot_code = d.lot_code and e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and" & _
                " e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "'and a.divcode=b.divcode and " & _
                " a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "' and a.invsno=d.sl_no" & _
                " and a.inv_no='" & RS2("inv_no") & "' ", cnn, adOpenStatic, adLockBatchOptimistic

                     
            pack_no = " "
            tot1 = tot1 + rs3!value
            rs3.MoveNext
            ci = ci + 1
            rsb.MoveNext
    Loop
     
    If sno1 = 5 Then
        Print #a,
        Print #a,
        Print #a,
    ElseIf sno1 = 6 Then
        Print #a,
        Print #a,
    ElseIf sno1 = 7 Then
        Print #a,
    ElseIf sno1 = 4 Then
        Print #a,
        Print #a,
        Print #a,
        Print #a,
    ElseIf sno1 = 3 Then
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        Print #a,
    ElseIf sno1 = 2 Then
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        Print #a,
    End If
    
    

    
'    Set rsd = New Recordset
'
'    rsd.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,b.pack_type,b.printprefix from ig_Rinvdt a,ig_Rproduct b,ig_bodt d,ig_Rbohd E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
'            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(u, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code  group by a.product_code,b.description,b.pack_type, b.printprefix ORDER BY A.product_code", cnn, adOpenStatic
'
'   pack_no = ""
'    Do While Not rsd.EOF
'        If rs5.State = adStateOpen Then rs5.Close
'        Set rs6 = New Recordset
'        rs6.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,isnull(a.bo_no,'') as bo_no from ig_packnos a,ig_bodt b,ig_Rbohd C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
'                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
'                " a.pack_no>=spack_no and a.pack_no<=epack_no and a.bo_no='" & RS2("bo_no") & "' and INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(u, 2) & "'   order by b.lot_code", cnn, adOpenStatic
'
'        Set rs5 = New Recordset
'        rs5.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,a.pack_year from ig_packnos a,ig_bodt b,ig_Rbohd C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
'                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
'                " a.pack_no>=spack_no and a.pack_no<=epack_no and c.INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(u, 2) & "' and b.bo_no='" & RS2("bo_no") & "' order by b.lot_code", cnn, adOpenStatic
'
'        'pack_no = " "
'        rs5.MoveFirst
'        lot_Des = ""
'        lot_desc = ""
'        GG = 1
'        Dim pp As String
'        pp = IIf(IsNull(rsd("printprefix") & ""), "", rsd("printprefix"))
'        While Not rs5.EOF
'        If rs5("spack_no") = rs5("epack_no") Then
'            If pack_no = "" Then
'                    pack_no = pp + CStr(rs5("spack_no"))
'            Else
'                    pack_no = pack_no + "," + pp + CStr(rs5("spack_no"))
'            End If
'        Else
'            If pack_no = "" Then
'                    pack_no = pp + CStr(rs5("spack_no")) + "-" + pp + CStr(rs5("epack_no"))
'            Else
'                    pack_no = pack_no + "," + pp + CStr(rs5("spack_no")) + "-" + pp + CStr(rs5("epack_no"))
'            End If
'        End If
'        rs5.MoveNext
'       Wend
'     rsd.MoveNext
'    Loop
'
'
'        pack_no1 = Mid$(pack_no, 1, 40)
'        pack_no2 = Mid$(pack_no, 41, 80)
'        pack_no3 = Mid$(pack_no, 81, 120)
'        pack_no4 = Mid$(pack_no, 121, 160)
'        pack_no5 = Mid$(pack_no, 161, 200)
             
        
'
'    Bed = IIf(IsNull(RSNOT("bed_per") Or RSNOT("bed_per") = 0), Padl("", 19, " "), Padl(RSNOT("bed_per"), 5, " ")) & Padl(INF(RS2("bed_amt"), 2), 14, " ")
'    If RS2("packing_chrg") = 0 Then
'    Print #a,
'    Else
'    Print #a, Space(4) & "Packing Charges : " & Space(12) & Space(39) & Padl(Format(RS2("packing_chrg"), "#0.00"), 14, " ")
'    End If
'    Print #a, Space(73) & Padl(Format(tot1 + RS2("packing_chrg"), "#0.00"), 14, " ")
'    Print #a,
'    Print #a, Space(4) & Padr(Trim(CStr(pack_no1)), 40, " ") & Space(17) & IIf(Bed = 0, " ", Bed)
'    Print #a, Space(4) & Padr(Trim(CStr(pack_no2)), 40, " ")
'    Print #a, Space(3) & Padr("", 35, " ") & Space(22) & IIf(IsNull(RS2("aed_amt")), " ", Padl(INF(RS2("aed_amt"), 2), 14, " "))
    
    
'    Dim NotRs As Recordset
'    Set NotRs = New Recordset
'    NotRs.Open "Select BED_Notify,AED_Notify from IG_Notify ", cnn, adOpenStatic
'    If Not NotRs.EOF Then
'        Print #a, Space(4) & NotRs("BED_Notify").value
'        Print #a, Space(4) & Padr(NotRs("AED_Notify").value, 30, " ") & Space(5);
'    Else
'        Print #a,
'        Print #a, Space(35);
'    End If
    
    t1 = 0
    Set Rs = New Recordset
    Rs.Open "select distinct d.tax_per,d.lsc_per,c.vehicle_no AS VEHICLE,(ISNULL(A.TCS_AMT,0)+ ISNULL(a.lsc_amt,0) +ISNULL(a.freight,0)+ISNULL(a.ins_amt,0)+ISNULL(a.fwd_chrg,0)) as others,PRE_TIME,REM_TIME," & _
            " a.bed_amt,a.aed_amt,a.cess_amt,a.tax_Amt,a.lsc_Amt,a.rnd_off,total_Amt,c.ordrefno," & _
            " c.ordredate,a.entdate,a.charity,A.REMARKS,a.matl_value,a.pre_time,a.rem_time,a.date   from ig_Rinvhd A,ig_Rbohd c,ig_Rinvdt d where " & _
            " a.inv_no='" & RS2(0) & "' and a.date='" & Format(RS2("DATE"), "yyyy/mm/dd") & "' " & _
            " AND a.INV_TYPE='" & RS2("inv_type") & "' and a.inv_no=d.inv_no" & _
            " and a.inv_type=d.inv_type  and a.divcode=d.divcode  and" & _
            " a.DATE=c.DATE and a.divcode=c.divcode and a.bo_no=c.bo_no and a.inv_no=c.inv_no and a.cust_code=c.cust_code and a.divcode=d.divcode", cnn, adOpenStatic
    
     X = Num_To_Word(Round(Rs("total_amt"), 0))
             tot3 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!tax_Amt + Rs!lsc_Amt + Rs!rnd_off
             tot1 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!Charity
            k = k + 1
'            If k <> 0 Then
'                For k = k To 39
'                    Print #a,
'                    k = k + 1
'                Next
'            End If
                     
            Print #a, Space(74) & Padl(INF(Rs("matl_value"), 2), 14, " ")
            'Print #a, Space(77) & Padl(INF(rs3("value"), 2), 14, " ")
            If Rs("charity") <> 0 Then
            Print #a, Space(74) & Padl(Rs("charity"), 14, " ")
            Else
            Print #a,
            End If
           Print #a,
            Print #a,
            
            k = k + 2
            tot1 = Rs("matl_value") + Rs("cess_amt") + Rs("charity")
            If Divcode = "02" Then
                Print #a,
            End If
            If Rs("others") <> Empty And Rs("others") <> "0" Then
                Print #a, Space(57) & Padr("Packing charges:", 15, " ") & Space(2) & Padl(Format(Rs("others"), "#.00"), 14, " ")
            Else
             Print #a,
            End If
             Print #a,
            If RSNOT.RecordCount > 0 Then
                'Print #a, Space(15) & Padr(" ", 40, " ") & Space(13) & Padl(" ", 5, " ") & Space(3) & Padl(INF(Rs("cess_amt"), 2), 14, " ")
                Print #a, Space(57) & "M.CESS  " & Padl("1" & "%", 6, " ") & Space(3) & Padl(INF(Rs("cess_amt"), 2), 14, " ")
                'Print #a, Space(85) & Padl(INF(tot1, 2), 14, " ")
                k = k + 2
            Else
                Print #a, Space(15) & Space(40) & Space(13) & Space(1) & Space(1) & Padl(INF(Rs("cess_amt"), 2), 14, " ")
                Print #a, Space(57) & "M.CESS  " & Padl("1" & "%", 6, " ") & Space(8) & Padl(INF(Rs("cess_amt"), 2), 14, " ")
                'Print #a, Space(85) & Padl(INF(tot1, 2), 14, " ")
                k = k + 2
            End If
             If Rs("tax_amt") <> Empty And Rs("tax_amt") <> "0" Then
                 Print #a,
                 Print #a, Space(57) & "TNVAT   " & Padl(Rs("tax_per") & "%", 6, " ") & Space(3) & Padl(INF(Rs("tax_amt"), 2), 14, " ")
                 k = k + 1
             Else
                 Print #a,
                 Print #a,
                 k = k + 1
             End If
'            If Rs("others") <> Empty And Rs("others") <> "0" Then
'                Print #a, Space(57) & Padr("Packing charges:", 15, " ") & Space(2) & Padl(Format(Rs("others"), "#.00"), 14, " ")
'            Else
            If Divcode <> "02" Then
            Print #a,
            End If
             k = k + 2
                        
             'If uu.RecordCount > 0 Then
              '  Print #a, Space(3) + "Delivery At :" + Space(2) + Padr(uu("add1"), 25, " ")
               ' Print #a, Space(18) + Padr(uu("add2"), 25, " ") & Space(34) & Padl(INF(Rs("rnd_off"), 2), 14, " ")
               ' Print #a, Space(18) + Padr(uu("city"), 15, " ")
               ' Print #a, Space(77) & Chr(27) + "E" & Padl(INF(Rs("total_amt"), 2), 14, " ") & Chr(27) + "F"
               ' k = k + 4
             'Else
            
                Print #a, Space(16) + Padr(" ", 25, " ") & Space(33) & Padl(INF(Rs("rnd_off"), 2), 14, " ")
                If Divcode <> "02" Then
                Print #a,
                End If
                Print #a, Space(74) & Chr(27) + "E" & Padl(INF(Rs("total_amt"), 2), 14, " ") & Chr(27) + "F"
                k = k + 3
             'End If
            If Divcode = "02" Then
                Print #a,
            End If
             Print #a,
             Print #a,
             Print #a,
             Print #a,
             Print #a,
             Print #a,
             Print #a,
             Print #a,
             Print #a,
             k = k + 1
             aa = "": b = 0:
             Print #a, Space(23) + Chr(27) + "E" + Padr(Trim(Mid$(Num_To_Word(CStr(Rs("total_amt"))), 8, Len(Num_To_Word(CStr(Rs("total_amt")))))), 70, " ") + Chr(27) + "F"
             Print #a,
             k = k + 2
            Print #a, Space(16) + Padr("", 25, " ") + Space(23) + Padr(Rs("pre_time"), 25, " ")
            Print #a, Space(16) + Padr(Rs("VEHICLE"), 25, " ")
            Print #a, Space(7) + Padr("", 25, " ") + Space(32) + Padr(Rs("rem_time"), 25, " ")
            Print #a, Space(10) + Padr(Format(Rs("date"), "dd-mm-yy"), 25, " ")
             Print #a,
'             If Rs("tax_per") <> Empty And Rs("tax_per") <> "0" Then
'               ' *** Total AED & BED amt in Words ***
'                 x = IIf(Rs!bed_amt + Rs!aed_amt = 0, " ", Replace(Num_To_Word(Round(Rs!bed_amt + Rs!aed_amt, 0)), "  ", " "))
'                 x = Replace(x, "RUPEES ", "")
'                 If Len(x) > 40 Then
'                    If Mid(x, 40, 1) = " " Or Mid(x, 41, 1) = " " Then
'                        Print #a, Space(10) & Padr(Mid(x, 1, 40), 40, " ");
'                        Print #a, Padr(Mid(x, 41, Len(x)), 40, " ")
'                    Else
'                        aa = Right(x, 8)
'                        For j = 1 To 8
'                            If Mid(aa, j, 1) = " " Then
'                                Exit For
'                            End If
'                        Next j
'                        B = 40 - 8 + (j - 1)
'                        Print #a, Space(10) & Padr(Mid(x, 1, B), 40, " ");
'                        Print #a, Padr(Mid(x, B + 1, Len(x)), 40, " ")
'                    End If
'                ElseIf Len(x) > 0 Then
'                        Print #a, Space(10) & Padr(Mid(x, 1, Len(x)), 40, " ")
'                End If
'                If Len(x) = 0 Then
'                        Print #a, Space(10)
'                End If
'
'             Else
'                    x = Rs("remarks")
'                    If Len(x) > 70 Then
'                    If Mid(x, 70, 1) = " " Or Mid(x, 71, 1) = " " Then
'                        Print #a, Space(10) & Padr(Mid(x, 1, 70), 70, " ")
'                        Print #a, Space(10) & Padr(Mid(x, 71, Len(x)), 70, " ")
'                    Else
'                        aa = Right(x, 8)
'                        For j = 1 To 8
'                            If Mid(aa, j, 1) = " " Then
'                                Exit For
'                            End If
'                        Next j
'                        B = 80 - 8 + (j - 1)
'                        Print #a, Space(10) & Padr(Mid(x, 1, B), 70, " ")
'                        Print #a, Space(10) & Padr(Mid(x, B + 1, Len(x)), 70, " ")
'                    End If
'                ElseIf Len(x) > 0 Then
'                        'Print #a, Space(10) & Padr(Mid(X, 1, Len(X)), 70, " ")
'                End If
'                If Len(x) = 0 Then
'                        'Print #a, Space(10)
'                End If
'
'             End If

             RS2.MoveNext
             'Print #a, Chr(12)
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            'Print #a, Space(10) & "PREPARED BY" & Space(20) & "CHECKED BY"
            
            Print #a, Chr(12)
Loop

   Close #a
a = FreeFile
'Open "C:\WSINV.BAT" For Output As #a
'Print #a, "CD\"
'Print #a, "C:"
'Print #a, "CD\"
'Print #a, "type WSINV.TXT> PRN"
'Close
'RPTV.txtfile = "C:\WSINV.TXT"
'RPTV.Batfile = "C:\WSINV.BAT"
Call KALBATPROCESS("WSINV")
ER1:
    If Err.Number = 3021 Then
        'MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If

End Sub

Public Sub WasteInvgatepass_PrePrintBANNARI(U As String, V As String, W As String)
On Error Resume Next
Set cnn = New Connection
cnn.Open connectstring
Dim rstDeladd As New ADODB.Recordset

Dim strDelAdd As String
Dim strDelAdd1 As String
Dim strDelAdd2 As String
Dim strDelAdd3 As String
Dim strDelCity As String

Dim rss As New ADODB.Recordset
'Set rss = New ADODB.Recordset
'
'rss.Open "select inv_No from RM_CinvHd where Inv_type='" & U & "' AND divcode='" & Divcode & "' And inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' order by a.inv_no", cnn, adOpenStatic
Set rss = New ADODB.Recordset

rss.Open "select inv_No from RM_CinvHd where Inv_type='" & U & "' AND divcode='" & Divcode & "' And inv_no = '" & Trim(Mid(V, 1, 8)) & "' order by a.inv_no", cnn, adOpenStatic



Dim i As Integer

i = 0

Do While Not rss.EOF

Set RS2 = New Recordset
RS2.Open " select Distinct Hd.Inv_No,Hd.date,Hd.Cust_Code,sl.SlName,Sl.Add1,Sl.Add2,Sl.city," & _
        " Sl.PIN,Sl.cgst,Dt.product_code as LotNo ,Sl.TINNO,Vr.Varcode,Vr.VarName,Dt.Packs,Dt.InvSNo," & _
        " Dt.Nett_Kgs,Dt.RAte_nett,ISNULL(dt.inv_kgs,0) AS INV_KGS,ISNULL(Dt.inv_Kgs * Dt.RAte_ex,0) as Value,hd.cess_per,hd.Cess_Amt,DT.tax_per,Dt.Tax_Amt,hd.tCS_per,hd.TCS_Amt,hd.TCS_Amt,ta.DESCRIPTION,hd.RND_OFF,l.plotno,HD.fwd_chrg, " & _
        " dt.AED_Amt ,Dt.RAte_ex, dt.BED_Amt, hd.Carrier_code, Car.CARNAME, PRE_TIME, REM_TIME, LR_NO, VEHICLE_NO,isnull(bagidno,'') as prno " & _
        " FROM RM_CinvHd hd " & _
        " INNER JOIN RM_Cinvdt dt ON Hd.Divcode=dt.Divcode and Hd.Inv_Type=Dt.Inv_Type and Hd.Inv_No=dt.Inv_No " & _
        " LEFT OUTER JOIN RM_Lot L ON L.LotNo=Dt.Product_code and L.Divcode=Dt.Divcode " & _
        " INNER JOIN Fa_SlMas Sl ON Sl.SlCode=Hd.Cust_Code " & _
        " LEFT OUTER JOIN RM_Var Vr ON Vr.VarCode=L.VarCode " & _
        " LEFT OUTER JOIN po_car Car ON Car.CARCODE=Hd.Carrier_Code " & _
        " LEFT OUTER JOIN ig_tax ta ON ta.TAX_CODE=dt.TAX_CODE " & _
        " WHERE Hd.Inv_No= '" & Trim(rss(0)) & "'   and Hd.Divcode='" & Divcode & "' and HD.inv_type='" & Trim(Mid(U, 1, 2)) & "' ", db

i = i + 1


If Not RS2.EOF Then
    
    Set Rep = New Report.ReportView
    a = FreeFile
    Dim Pg As Integer
    Dim Co As Integer
    Dim pl As Integer
    Dim strinvno As String
    pl = 60
    Pg = 1
    Co = 0
    
    strInvNo1 = ""
    strInvNo2 = ""
    strInvNo3 = ""
    strInvNo4 = ""
    Close
    Close #a
    a = FreeFile
   ' Open "c:\RmiOutPreprint.txt" For Output As #a
   Open KALFOLDERDATA & "\RmiOutPreprint.TXT" For Output As #a
    Print #a, Space(55) + Chr(27) + "E" + "SL. NO.  : " & Padl(val(Mid(RS2("inv_no"), 3, 6)), 12, "") + Chr(27) + "F"
    Print #a, Space(55) + Chr(27) + "E" + "DATE     : " & Padl(Format(RS2("date"), "dd/mm/yyyy"), 12, "") + Chr(27) + "F"
    Print #a,
    'Print #a, Space(55) + Chr(27) + "E" + "RMI OUT PASS" + Chr(27) + "F"
    Print #a, Space(55) + Chr(27) + "E" + "SALE OF COTTON OUT PASS" + Chr(27) + "F"
    Print #a,
    Print #a, Space(55) + "IN TIME  : " & Space(10) & "OUT TIME :"
    Print #a,
    Print #a, Space(5) + "SL.NO." & Space(3) & "DESCRIPTION" & Space(35) & "UOM" & Space(10) & "QTY"
    Print #a, Space(5) + Padr("", 80, "-")
    
     Dim totpack As Double
    totpack = 0
    If Not RS2.EOF Then
        Print #a, Space(5) + Padl(i, 2, "") & Space(7) & Padr(RS2(1), 40, "") & Space(5) & Padr("bales", 5, "") & Space(2) & Padl(RS2("Packs"), 10, "")
        If strInvNo1 <> RS2("inv_no") Then
            strinvno = strinvno & Mid(RS2("inv_no"), 3, 6) & ","
             strInvNo1 = RS2("inv_no")
        End If
        Co = Co + 1
        totpack = totpack + RS2("packs")
    End If
    
    For i = Co To 12
        Print #a,
    Next
    
    strInvNo1 = Trim(Mid(strinvno, 1, Len(strinvno) - 1))
    strInvNo2 = Mid(strInvNo1, 1, 55)
    strInvNo3 = Mid(strInvNo1, 57, 55)
    strInvNo4 = Mid(strInvNo1, 114, 42)
        
    Print #a, Space(5) + "Invoice No.       : " & Trim(Mid(strInvNo2, 1, Len(strinvno) - 1))
    If strInvNo3 <> "" Then
        Print #a, Space(5) + "                  : " & strInvNo3
        Print #a, Space(5) + "Dated             : " & Padr(Format(RS2("date"), "dd/mm/yyyy"), 12, "") & strInvNo4
    Else
        Print #a, Space(5) + "Dated             : " & Padr(Format(RS2("date"), "dd/mm/yyyy"), 12, "")
        Print #a,
    End If

Set rs1 = New ADODB.Recordset

rs1.Open "SELECT NAME FROM RM_CinvHd a,ig_AREA b WHERE a.DESPATCH_TO=b.AREA_CODE and Inv_type='" & U & "' AND divcode='" & Divcode & "' And inv_no = '" & Trim(RS2("Inv_No")) & "'  order by a.inv_no", cnn, adOpenStatic

'    Print #a, Space(5) + "Invoice No.       : " & Trim(Mid(strinvno, 1, Len(strinvno) - 1)) & Space(5) & "Dated  : " & Padr(Format(MaskEdBox1(0).Text, "dd/mm/yyyy"), 12, "")
'    Print #a,
    Print #a, Space(5) + "Cash Receipt No.  : " & Space(10) & "Dated : " & Space(10) & "Amount   : "
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + "Total......   " & Space(52) & Padl(totpack, 5, "") + Chr(27) + "F"
    Print #a, Space(5) + Padr("", 80, "=")
    Print #a, Space(5) + "Destination Place     : " & Padr(rs1("name"), 50, "")
    Print #a, Space(5) + "Lorry No              : " & Padr(RS2("VEHICLE_NO"), 50, "")
    Print #a, Space(5) + "Removal Time          : " & Padr(Format(Now, "hh:mm AM/PM"), 10, "")
    
    Print #a,       ' Chr(12)
    Print #a,
    Print #a,
    
  End If
    
    rss.MoveNext
    
Loop
    

    Close #a
'    Open "c:\RmiOutPreprint.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type RmiOutPreprint.txt > prn"
'    Close #a
'    Rep.txtfile = "c:\RmiOutPreprint.txt"
'    Rep.Batfile = "c:\RmiOutPreprint.bat"
'
a = FreeFile
Call KALBATPROCESS("RmiOutPreprint")
   ' Me.MousePointer = vbNormal
    
ER1:
    If Err.Number = 3021 Then
        'MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If
                                                                                                                 
End Sub




