Attribute VB_Name = "Inv_Preprint_sona"
Dim cnn As Connection
Dim Rup As String
Dim X As String
Dim rup2 As String
Dim rup3 As String
Dim Rate As Double
Dim cone As Double
Dim UOMRS As Recordset
Dim Y As String
Dim rs1, RS2, rs3, rs4, rs5, rs7, RS8 As Recordset
Dim memtax, rup1, rup4 As String
Dim Sno, va As Integer
Dim crdate, crdate1, descrip As String
Dim tot, tot1, tot2, tot3 As Double
Dim lph, lpc, lpd, lp, lsp, lep, blp As Integer ' len of startpackno/endpackno/bestlen(lsp,lep & blp)
Dim tmpk As String
Dim pack_no, pack_no1, pack_no2, pack_no3, pack_no4 As String
Dim pack_no5, pack_no6, pack_no7, pack_no8, pack_no9, pack_no10, pack_no11 As String
Dim Cwt, PckWt, cnt, Ct As Double
Dim RsPackWt As Recordset
Dim pagecount, sp As Integer
Dim GLOTCODE As String

Public Sub WasteInv_PrePrintsona(U As String, v As String, W As String)
On Error Resume Next
Dim va As Integer
Dim Rs As New Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim rs7 As Recordset
Dim HHAD As String
Dim memtax As String
Dim rup1 As String
Dim rup2 As String
Dim rup3 As String
Dim rup4 As String
Dim X As String
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
Dim per As String
Dim k As Integer
Dim SPack   As String
Dim EPack   As String
Dim cnt     As Double
Dim Ct      As Double
Dim Rate As Double, value As Double, total_amt As Double


per = Right(Trim(U), 2)
Set RS2 = New Recordset
             
RS2.Open "select distinct(a.inv_no)as inv_no,a.date,a.agent_code,a.cr_days,a.pay_mode,a.cess_amt,a.aed_amt as educess_amt,a.pla_bed,a.pla_aed,a.delivery_dt,a.despatch_to,a.bo_no,isnull(a.freight,0) as freight,isnull(a.ins_amt,0) AS INS ,a.cex_inv_no,a.date,a.cust_code,a.matl_value,isnull(a.charity,0) AS CHARITY,a.bed_amt,a.aed_amt,a.tax_amt,a.lsc_amt,a.total_amt,b.slname,isnull(b.cgst,0) as cgst,b.cgstdt,b.add1,isnull(b.add2,'') as add2,isnull(b.add3,'') as add3,isnull(c.name,'')as  city, " & _
        "a.cons_add1,a.cons_add2,a.cons_add3,a.cons_add4,isnull(a.lr_no,'') as lr_no,a.lr_date,isnull(a.pre_time,' ') ptime,isnull(a.rem_time,' ') rtime,a.vehicle_no,a.pla_no,a.rg23a_no,a.rg23c_no,a.rnd_off,isnull(a.cess_per,0) cp,isnull(a.ins_per,0) ip,a.inv_type,a.vehicle_no,isnull(C.NAME,' ') despto,e.ordrefno,e.ordredate,d.name,RND_OFF,isnull(a.brok_code,'') brcode,n.BED_NOTIFY ,B.rc_no,A.PRE_TIME,A.REM_TIME,A.DELIVERY_DT,A.INS_AMT,e.orderno,e.orderdate,isnull(a.fwd_chrg,0) as packing_chrg  " & _
        " from RM_cinvhd a,fa_slmas b,ig_area c,ig_area d ,ig_rbohd e, ig_notify n where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(v, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and a.cust_code=b.slcode and b.areacode *=d.area_code and a.despatch_to *=c.area_code and a.inv_no*=e.inv_no and a.inv_type*=e.inv_type and a.CEX_INV_TYPE *= n.NOTIFY_CODE order by a.inv_no", cnn, adOpenStatic
    
If RS2.EOF = True Then
    MsgBox "No Records found for selected Invoice Number", vbInformation, head
    Exit Sub
End If
    
Set rs1 = New Recordset
rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,tngstdt,isnull(cgst,'') as cgst,cgstdt,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3 from pp_divmas where divcode='" & Divcode & "'", cnn, adOpenStatic
If rs1.EOF Then
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
    
Set temprs = New Recordset
Set RPTV = New Report.ReportView
Close
Close #a
a = FreeFile
Open "C:\PPINV.TXT" For Output As #a
SR = CStr(pdate) + Space(2)
pg1 = 1
va = 1
k = 1
cnt = 0
Ct = 0
Set rs1 = New Recordset
rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt,isnull(cgst,'') as cgst,isnull(cgstdt,'') as cgstdt ,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3,collectorate,pincode from pp_divmas where divcode='" & Divcode & "'", cnn, adOpenStatic
    
Print #a,
Print #a,

Do While Not RS2.EOF
    tot1 = 0
    tot2 = 0
    tot3 = 0
    
    Set rs4 = New Recordset
    rs4.Open "select slname,add1,add2,isnull(add3,'') as add3,city,pin,isnull(tngst,'') as tngst,tngstdt , isnull(ecc,' ') as ecc,isnull(cgst,'')as cgst,cgstdt,rc_no,phone1,TINNO,TinDt from fa_slmas where slcode='" & RS2("cust_code") & "'", cnn, adOpenStatic
        
    Set RS9 = New Recordset
    'RS9.Open "select distinct a.product_code,b.description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,f.description,a.tax_per,a.tax_amt,a.lsc_per,a.lsc_amt,isnull(b.bundle_wt,1) as bundle," & _
            "a.inv_type,E.DESCRIPTION AS NAME,ISNULL(A.RATE_KG,0) AS RATE_KG from ig_rinvdt a,ig_rproduct b,ig_rbodt d,ig_productTYPE E,ig_tax f where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "'  and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' AND E.PRODUCT_TYPE=B.PRODUCT_TYPE and f.tax_code=a.tax_code", cnn, adOpenStatic, adLockBatchOptimistic
            
     RS9.Open "select distinct a.product_code,c.cust_code,b.varname AS description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt, " & _
                "ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,f.description,a.tax_per,a.tax_amt, " & _
                "a.lsc_per,a.lsc_amt,a.inv_type,ISNULL(A.RATE_ex,0) AS RATE_KG from rm_cinvdt a " & _
                "INNER JOIN RM_Cinvhd c ON a.Divcode=c.Divcode and a.Inv_Type=c.Inv_Type and a.Inv_No=c.Inv_No " & _
                "LEFT OUTER JOIN RM_Lot d ON d.LotNo=a.Product_code and d.Divcode=a.Divcode " & _
                "LEFT OUTER JOIN RM_Var b ON b.VarCode=d.VarCode  " & _
                "INNER JOIN ig_tax f ON  f.tax_code=a.tax_code " & _
                "where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no='" & RS2("inv_no") & "'", DB, adOpenStatic
  
    Dim IR As Integer
    IR = 0
    Sno = 0
        
    Set rsc = New Recordset
    rsc.Open "select carname,lr_no,isnull(b.rnd_off,0) as round ,isnull(total_amt,0) as total from po_car a,rm_cinvhd b where a.carcode=b.carrier_code and b.inv_no='" & RS2("inv_no") & "'", cnn
    Set rsnot = New Recordset
    'rsnot.Open "select DISTINCT a.bed_notify,a.aed_notify,b.cone_wt,b.tariffhead,c.description type,c.bed_per,c.aed_per,c.cess_per,c.educess_per,d.lsc_per,d.tax_per,e.description from ig_notify a," & _
            "ig_rproduct b,ig_producttype c,ig_rinvdt d ,ig_tax e where d.inv_no= '" & RS2(0) & "' and d.inv_type='" & RS2("inv_type") & "' and b.product_code = d.product_code and c.product_type = b.product_type and a.product_cat = c.product_cat and d.divcode = '" & Divcode & "' and b.ltax_code*=e.tax_code and  d.divcode=b.divcode and b.divcode='" & Divcode & "'", cnn, adOpenStatic
    rsnot.Open "select DISTINCT a.bed_per,a.aed_per,c.cess_per,a.lsc_per,a.tax_per from rm_cinvdt a " & _
                "INNER JOIN RM_Cinvhd c ON a.Divcode=c.Divcode and a.Inv_Type=c.Inv_Type and a.Inv_No=c.Inv_No " & _
                "LEFT OUTER JOIN RM_Lot d ON d.LotNo=a.Product_code and d.Divcode=a.Divcode " & _
                "LEFT OUTER JOIN RM_Var b ON b.VarCode=d.VarCode " & _
                "WHERE a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no='" & RS2("inv_no") & "' ", DB, adOpenStatic
    If Not rsc.EOF Then car = rsc(0)
    'If k <> 1 Then
    '    Print #a,
    'End If
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
   
    Dim AgRs As Recordset
    Set AgRs = New Recordset
    AgRs.Open "Select ISNULL(Abbr,'') as Abbr from FA_SlMAs where SlCode='" & RS2(1) & "'", cnn, adOpenStatic
    If Not AgRs.EOF Then VAgentAbbr = AgRs(0).value
   
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    
    Set AgRs = New Recordset
    AgRs.Open "Select * from ig_notify where notify_code='02'", cnn, adOpenStatic
    If AgRs.RecordCount > 0 Then
        cenvatno = AgRs("bed_notify")
        aedno = AgRs("aed_notify")
    Else
        cenvatno = ""
        aedno = ""
    End If
    If RS9("inv_type") = "rr" Then
        'Print #a, Space(30) & Chr(18) & Chr(14) + Chr(27) + "E" + "WASTE INVOICE" + Chr(27) + "F" + Chr(18)
        Print #a,
        Print #a, Space(4) & Chr(27) & Padr(rs4("slname"), 55, " ") & Chr(27) & "F"
    Else
        Print #a,
        Print #a, Space(4) & Chr(27) & "E" & Padr(rs4("slname"), 45, " ") & Chr(27) & "F"
    End If
    
    Print #a, Space(4) & Padr(rs4("add1"), 45, " ")
    Print #a, Space(4) & Padr(rs4("add2"), 45, " ") & Space(17) & Padr(cenvatno, 25, " ")
    Print #a, Space(4) & Padr(RS2("city") & IIf(IsNull(rs4("pin")), " ", IIf(rs4("PIN") = "", " ", "-" & rs4("pin"))), 45, " ") & Space(16) & Padr(aedno, 25, " ")
    Print #a, Space(4) & Space(45)
    If RS9("Cont_No") <> "" Then
        Print #a, Space(4) & "BOOKING ORDER NO. : " & Right(RS9("Cont_No"), 3) & Space(30) & Chr(14) & Chr(27) & "E" & Padl("BILL NO : " & val(Mid(RS2("inv_no"), 3, Len(RS2("inv_no")))), 15, " ") & Chr(27) & "F" & Chr(18)
    Else
        Print #a, Space(25) & Space(30) & Chr(14) & Chr(27) & "E" & Padl("BILL NO : " & val(Mid(RS2("inv_no"), 3, Len(RS2("inv_no")))), 15, " ") & Chr(27) & "F" & Chr(18)
    End If
    Dim DeliRs As Recordset
    'Set delirs1 = New Recordset
    'delirs1.Open "Select ISNULL(DELIVEYAT,'') as DELIVEYAT from ig_rbohd where INV_NO='" & RS2("inv_no") & "'", cnn, adOpenStatic
    Set DeliRs = New Recordset
    DeliRs.Open "Select ISNULL(CName,'') AS CName,ISNULL(ADD1,'') as DeliveyAdd1,ISNULL(ADD2,'') as DeliveyAdd2,ISNULL(ADD3,'') as DeliveyAdd3,ISNULL(CITY,'') as CITY ,ISNULL(PIN,'') AS PIN from rm_deladd where CName='" & RS9("cust_code") & "'", cnn, adOpenStatic
    If DeliRs.RecordCount > 0 Then
        Print #a, Space(4) & "DELIVERY AT:" & Padr(DeliRs!CNAME, 25, " ")
        Print #a, Space(4) & "            " & Padr(DeliRs!DeliveyAdd1, 25, " ") & Space(28) & Padl(Format(RS2("date"), "dd/mm/yy"), 10, " ")
        Print #a, Space(4) & "            " & Padr(DeliRs!DeliveyAdd2, 25, " ")
        If DeliRs!pin <> "" Then
            Print #a, Space(4) & "            " & Padr(DeliRs!City & " - " & DeliRs!pin, 25, " ")
        Else
            Print #a, Space(4) & "            " & Padr(DeliRs!City, 25, " ")
        End If
    Else
        Print #a,
        Print #a, Space(4) & "            " & Padr("", 25, " ") & Space(28) & Padl(Format(RS2("date"), "dd/mm/yy"), 10, " ")
        Print #a,
        Print #a,
    End If
    Dim DRs As Recordset
    Set DRs = New Recordset
    DRs.Open "Select ISNULL(areaname,'') as name from rm_area where areacode='" & RS2("despatch_to") & "'", cnn, adOpenStatic
        
    If Not (IsNull(rs4("TINNO")) Or rs4("TINNO") = "") Then
        Print #a, Space(4) & "VAT TIN NO:" & Padr(rs4("TINNO"), 15, " ") & Space(5) & IIf(IsNull(rs4("TINDT")) = True, " ", Padr(Format(" V " & rs4("TINDT"), "DD.mm.yy"), 12, " "))
    Else
        Print #a,
    End If
    
    If Len(rs4("cgst")) > 0 Then
        Print #a, Space(4) & "CST TIN NO:" & Padr(rs4("cgst"), 16, " ") & Space(5) & IIf(IsNull(rs4("Cgstdt")), " ", Padr(Format(" C " & rs4("cgstdt"), "DD.mm.yy"), 12, " ")) & Space(23);
    Else
        Print #a, Space(34) & Space(37);
    End If
    
    Set AgRs = New Recordset
    AgRs.Open "Select * from FA_SlMAs where SlCode='" & RS2("Agent_code") & "'", cnn, adOpenStatic
    If AgRs.RecordCount > 0 Then
        Print #a, Padr(AgRs("slname"), 17, " ")
    Else
        Print #a,
    End If
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    'Print #a,
    'Print #a, Space(63) & Padl(INF(rs3("RATE_KG"), 2), 8, " ")
    descrip = RS9("description")
    Set rs5 = New Recordset
    Set rs3 = New Recordset

    'rs3.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex)/count(a.rate_ex) as rate_ex,b.pack_type,sum(d.case_rate) as case_rate ,d.packchrg_wt,B.PRODUCT_TYPE,SUM(A.TAX_AMT) AS TAXAMT  from ig_rinvdt a,ig_rproduct b,ig_rbodt d,ig_rbohd E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE and a.invsno = d.sl_no AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type " & _
            "group by a.product_code,b.description,b.pack_type,d.packchrg_wt,B.PRODUCT_TYPE ORDER BY A.product_code", cnn, adOpenStatic
    rs3.Open "select distinct a.product_code,b.varname AS description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value," & _
            "sum(a.rate_ex)/count(a.rate_ex) as rate_ex , " & _
            "SUM(A.TAX_AMT) AS TAXAMT  from rm_cinvdt a " & _
            "INNER JOIN RM_Cinvhd c ON a.Divcode=c.Divcode and a.Inv_Type=c.Inv_Type and a.Inv_No=c.Inv_No " & _
            "LEFT OUTER JOIN RM_Lot d ON d.LotNo=a.Product_code and d.Divcode=a.Divcode " & _
            "LEFT OUTER JOIN RM_Var b ON b.VarCode=d.VarCode " & _
            "where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no='" & RS2("inv_no") & "'  group by a.product_code,b.varname " & _
            "ORDER BY A.product_code", DB, adOpenStatic
            
    
    Set rsb = New Recordset
    'rsb.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex)/count(*) as rate_ex,b.pack_type,sum(d.case_rate) as case_rate,a.invsno from ig_rinvdt a,ig_rproduct b,ig_rbodt d,ig_rbohd E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE AND " & _
            " D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "'  and  a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code AND A.NETT_KGS=D.NETT_KGS  group by a.product_code,b.description,b.pack_type,d.packchrg_wt,a.invsno ORDER BY A.product_code,INVSNO", cnn, adOpenStatic
    rsb.Open "select distinct a.product_code,b.varname AS description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs," & _
            "sum(a.value) as value,sum(a.rate_ex)/count(*) as rate_ex,a.invsno from rm_cinvdt a " & _
            "INNER JOIN RM_Cinvhd c ON a.Divcode=c.Divcode and a.Inv_Type=c.Inv_Type and a.Inv_No=c.Inv_No " & _
            "LEFT OUTER JOIN RM_Lot d ON d.LotNo=a.Product_code and d.Divcode=a.Divcode " & _
            "LEFT OUTER JOIN RM_Var b ON b.VarCode=d.VarCode " & _
            "where a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no='" & RS2("inv_no") & "' " & _
            "group by a.product_code,b.varname,a.invsno ORDER BY A.product_code,INVSNO", DB, adOpenStatic
        
'    Print #a, Space(4) & "POLYSTER YARN: 5509.21"
'    Print #a, Space(4) & "~~~~~~~~~~~~~~~~~~~~~~"
    Print #a,
    Print #a,
    Do While Not rs3.EOF
        
        Rate = IIf(val(rs3!rate_ex) = 0, 0, val(rs3!rate_ex))
        Sno = Sno + 1
        v1 = 0
        v1 = rs3("VALUE") + RS2("CHARITY")
        value = IIf(val(rs3("VALUE")) = 0, 0, val(rs3("value")))
         
        Print #a, Space(4) & Padr(rs3("description"), 21, " ") & Space(1) & Padl(Format(val(rs3("nett_kgs") / rs3("packs")), "#0.00"), 7, " ") & Space(1) & Padl(rs3("packs"), 7, " ") & Space(1) & Padl(Format(val(rs3("NETT_KGS")), "#0.00"), 8, " ") & Padl(Format(Rate, "#0.00"), 7, " ") & Space(1) & Padl(INF(value, 2), 14, " ")
        
        i = 48
'        Set UOMRS = New Recordset
'        UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", cnn, adOpenStatic, adLockBatchOptimistic
'        UOMRS.MoveFirst
'
'        Set COMMODITY = New Recordset
'        COMMODITY.Open "SELECT DESCRIPTION FROM ig_productTYPE WHERE PRODUCT_TYPE='" & rs3("PRODUCT_TYPE") & "' ", cnn, adOpenStatic
'        COMMODITY.MoveFirst
'
'        UNT = UOMRS("description")
'        Set rs5 = New Recordset
'        rs5.Open "select distinct a.product_code,b.description,l.description as ldesc,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code,a.invsno from ig_rinvdt a,ig_rproduct b,ig_rbodt d,ig_rbohd e,ig_lot l where l.lot_code = d.lot_code and e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and" & _
'                " e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(v, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "'and a.divcode=b.divcode and " & _
'                " a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "' and a.invsno=d.sl_no" & _
'                " and a.inv_no='" & RS2("inv_no") & "'" & " ", cnn, adOpenStatic, adLockBatchOptimistic

        pack_no = " "
             
        tot1 = tot1 + value
        rs3.MoveNext
        ci = ci + 1
        rsb.MoveNext
    Loop
        
    For i = 1 To 8 - rs3.RecordCount
      Print #a,
    Next i
      
    t1 = 0

    Set rsd = New Recordset

    rsd.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,b.pack_type,sum(d.case_rate) as case_rate ,d.packchrg_wt,b.printprefix from ig_rinvdt a,ig_rproduct b,ig_rbodt d,ig_rbohd E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
            "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & RS2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code  group by a.product_code,b.description,b.pack_type,d.packchrg_wt, b.printprefix ORDER BY A.product_code", cnn, adOpenStatic
   
   pack_no = ""
    Do While Not rsd.EOF
        If rs5.State = adStateOpen Then rs5.Close
        Set RS6 = New Recordset
        RS6.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,isnull(b.bo_no,'') as bo_no from ig_rpacknos a,ig_rbodt b,ig_rbohd C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                " a.pack_no>=spack_no and a.pack_no<=epack_no and b.bo_no='" & RS2("bo_no") & "' and INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "'   order by b.lot_code", cnn, adOpenStatic
        
        Set rs5 = New Recordset
        'rs5.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,a.pack_year from ig_rpacknos a,ig_rbodt b,ig_rbohd C where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE AND" & _
                " a.pack_no>=spack_no and a.pack_no<=epack_no and c.INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "' and b.bo_no='" & RS2("bo_no") & "' order by b.lot_code", cnn, adOpenStatic
        
        
        rs5.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,a.pack_year from ig_rpacknos a,ig_rbodt b,ig_rbohd C, ig_rinvhd d where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode AND C.BO_NO=B.BO_NO AND C.BO_TYPE=B.BO_TYPE AND C.DIVCODE=B.DIVCODE and d.inv_no=c.inv_no AND" & _
                " a.pack_no>=spack_no and a.pack_no<=epack_no and d.INV_no='" & RS2("inv_no") & "' and a.product_code='" & rsd("product_code") & "' AND B.BO_TYPE='" & Left(U, 2) & "' and b.bo_no='" & RS2("bo_no") & "' order by b.lot_code", cnn, adOpenStatic
        
        
        'pack_no = " "
        rs5.MoveFirst
        lot_Des = ""
        lot_desc = ""
        GG = 1
        Dim pp As String
        pp = IIf(IsNull(rsd("printprefix")), " ", rsd("printprefix"))
        While Not rs5.EOF
        If rs5("spack_no") = rs5("epack_no") Then
            If pack_no = "" Then
                    pack_no = pp + CStr(rs5("spack_no"))
            Else
                    pack_no = pack_no + "," + pp + CStr(rs5("spack_no"))
            End If
        Else
            If pack_no = "" Then
                    pack_no = pp + CStr(rs5("spack_no")) + "-" + pp + CStr(rs5("epack_no"))
            Else
                    pack_no = pack_no + "," + pp + CStr(rs5("spack_no")) + "-" + pp + CStr(rs5("epack_no"))
            End If
        End If
        rs5.MoveNext
       Wend
     rsd.MoveNext
    Loop
        pack_no1 = Mid$(pack_no, 1, 40)
        pack_no2 = Mid$(pack_no, 41, 80)
        pack_no3 = Mid$(pack_no, 81, 120)
        pack_no4 = Mid$(pack_no, 121, 160)
        pack_no5 = Mid$(pack_no, 161, 200)
        
    Bed = IIf(IsNull(rsnot("bed_per") Or rsnot("bed_per") = 0), Padl("", 19, " "), Padl(rsnot("bed_per"), 5, " ")) & Padl(INF(RS2("bed_amt"), 2), 14, " ")
    'Print #a,
    Print #a, Space(43) & Padr("SUB TOTAL", 15, " ") & Padl(INF(tot1, 2), 14, " ")
    Print #a,
    Print #a, Space(4) & "EXCISE DUTY EXEMPTION UNDER NOTIFICATION NO.30/2004 DT.9.7.2004"
    Print #a,
    Print #a, Space(43) & Padr("SUB TOTAL", 15, " ") & Padl(INF(tot1, 2), 14, " ")
    
    Set Rs = New Recordset
    'Rs.Open "select distinct E.ABBR AS description,d.tax_per,d.lsc_per,c.vehicle_no AS VEHICLE,PRE_TIME,REM_TIME," & _
            " a.bed_amt,a.aed_amt,a.cess_amt,a.tax_Amt,a.lsc_Amt,a.rnd_off,a.total_Amt,c.ordrefno," & _
            " c.ordredate,a.entdate,a.charity,A.REMARKS,a.cess_per  from ig_rinvhd A,ig_rbohd c,ig_rinvdt d,ig_tax e where " & _
            " a.inv_no='" & RS2(0) & "' and a.date='" & Format(RS2("DATE"), "yyyy/mm/dd") & "' " & _
            " AND a.INV_TYPE='" & RS2("inv_type") & "' and a.inv_no=d.inv_no" & _
            " and a.inv_type=d.inv_type  and a.divcode=d.divcode  and" & _
            " a.DATE=c.DATE and a.divcode=c.divcode and a.bo_no=c.bo_no and a.inv_no=c.inv_no and a.cust_code=c.cust_code and a.divcode=d.divcode and d.tax_code=e.tax_code", cnn, adOpenStatic
    Rs.Open "select distinct g.ABBR AS description,b.tax_per,b.lsc_per,a.vehicle_no AS VEHICLE,PRE_TIME,REM_TIME, a.bed_amt,a.aed_amt, " & _
            "a.cess_amt , a.tax_Amt, a.lsc_Amt, a.rnd_off, a.total_amt, a.entdate, a.Charity, a.remarks, a.cess_per " & _
            "FROM RM_CinvHd a INNER JOIN RM_Cinvdt b ON a.Divcode=b.Divcode and a.Inv_Type=b.Inv_Type and a.Inv_No=b.Inv_No " & _
            "LEFT OUTER JOIN RM_Lot c ON c.LotNo=b.Product_code and c.Divcode=b.Divcode " & _
            "INNER JOIN Fa_SlMas d ON d.SlCode=a.Cust_Code " & _
            "LEFT OUTER JOIN RM_Var e ON e.VarCode=c.VarCode " & _
            "LEFT OUTER JOIN po_car f ON f.CARCODE=a.Carrier_Code " & _
            "LEFT OUTER JOIN ig_tax g ON g.TAX_CODE=b.TAX_CODE  where  a.divcode='" & Divcode & "' and a.inv_type='" & Trim(Mid(U, 1, 2)) & "' and a.inv_no='" & RS2("inv_no") & "' and a.date='" & Format(RS2("DATE"), "yyyy/mm/dd") & "'", DB, adOpenStatic
            
    X = Num_To_Word(Round(val(Rs("total_amt")), 0))
    tot3 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!tax_Amt + Rs!lsc_Amt + Rs!rnd_off
    tot1 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!Charity
    totd = Rs!bed_amt + Rs!aed_amt + Rs!cess_amt
    
    If Rs!cess_amt > 0 Then
        Print #a, Space(30) & Padl("CESS", 20, " ") & Space(1) & Padr(Rs("cess_per") & "%", 6, " ") & Space(1) & Padl(INF(Rs("cess_amt"), 2), 14, " ")
    Else
        Print #a, Space(30) & Padl("", 20, " ") & Space(7) & Padl(INF(0, 2), 14, " ")
    End If
    
    If Rs!bed_amt > 0 Then
        Print #a, Space(30) & Padl("BED", 20, " ") & Space(1) & Padr(Rs("bed_per") & "%", 6, " ") & Space(1) & Padl(INF(Rs("bed_amt"), 2), 14, " ")
    Else
        Print #a, Space(31) & Padl("", 20, " ") & Space(7) & Padl(INF(0, 2), 14, " ")
    End If
    If Rs!aed_amt > 0 Then
        Print #a, Space(31) & Padl("AED", 20, " ") & Space(7) & Padl(INF(Rs("aed_amt"), 2), 14, " ")
    Else
        Print #a, Space(31) & Padl("", 20, " ") & Space(7) & Padl(INF(0, 2), 14, " ")
    End If
    If Rs("tax_amt") <> Empty And Rs("tax_amt") <> "0" Then
        Print #a, Space(30) & Padl(Rs("description") & " @", 20, "") & Space(1) & Padr(Rs("tax_per") & "%", 6, " ") & Space(1) & Padl(INF(Rs("tax_amt"), 2), 14, " ")
    Else
        Print #a,
    End If
    Print #a,
    If Rs("rnd_off") = 0 Then
        Print #a,
    Else
        Print #a, Space(42) & Padr("ROUNDED OFF", 20, " ") & Padl(Format(Rs("rnd_off"), "0.00"), 10, " ")
    End If
    'Print #a, 'Space(85)
    
    total_amt = IIf(val(Rs("total_amt")) = 0, 0, val(Rs("total_amt")))
    Print #a, Chr(15) & "." & Chr(18) & Chr(20)
    Print #a, Space(20) & Padr(RS2("vehicle_no"), 15, " ") & Space(23) & Chr(27) + "E" & Padl(INF(total_amt, 2), 14, " ") & Chr(27) + "F"
    'Print #a, 'Space(85)
    aa = "": b = 0:
    Print #a,
    Print #a, Space(4) + Padr(Trim(Mid$(Num_To_Word(CStr(Rs("total_amt"))), 8, Len(Num_To_Word(CStr(Rs("total_amt")))))), 75, " ")
    Print #a, Chr(18)
    Print #a, Chr(12)
    RS2.MoveNext
Loop

Print #a, Chr(12)
a = FreeFile
Open "C:\PPINV.BAT" For Output As #a
Print #a, "CD\"
Print #a, "C:"
Print #a, "CD\"
Print #a, "type PPINV.TXT> PRN"
Close
RPTV.txtfile = "C:\PPINV.TXT"
RPTV.Batfile = "C:\PPINV.BAT"
ER1:
    If err.Number = 3021 Then
        'MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If

End Sub
