Attribute VB_Name = "CottonPassingReport"
Dim rstQry As Recordset
Dim rstMaster As Recordset
Dim dDiff1, dDiff2, dDiff3, dDiff4, dDiff5, dDiff6 As Double
Dim sQuery As String

Public Function CottonPassingReport_PrePrint(LOTNO As Integer, SUPCD As String, Varcode As String)
    Dim sDeltype As String

    Set db = New Connection
    db.Open connectstring
    
    Set rstQry = New Recordset
    dDiff1 = 0: dDiff2 = 0: dDiff3 = 0: dDiff4 = 0: dDiff5 = 0: dDiff6 = 0
    sQuery = ""
    sQuery = sQuery & Chr(13) & " SELECT DISTINCT D.DlyType,a.favaourablewgt,d.rateunit,(isnull(A.RATEKG,0)*isnull(h.value,0))  AS ratecy, a.LOTNO,a.LOTDT,a.ARRNO,a.ARRDT,a.VARCODE,a.BILLNO,a.BILLDT,Round(((isnull(d.candyrate,0) /isnull(h.value,0)) * a.favaourablewgt),2) + isnull(a.vatamt,0)+isnull(a.bedamt,0)+isnull(a.sedamt,0)+isnull(a.aedamt,0)+isnull(a.cessamt,0)+isnull(a.othtaxamt,0)+isnull(a.charityamt,0)+isnull(a.damageamt,0)+ isnull(a.Clearanceamt,0)+isnull(a.othersamt,0)+isnull(a.othertaxableamt,0)+isnull(a.customsdutyamt,0) + isnull(a.Adjvalue,0) -(isnull(a.CashDisAmt,0)+isnull(a.TradeDisamt,0)) as BILLVALUE,isnull(a.pinvval,0) as pinvvalue,a.FBILLNO,a.FBILLDT,a.BALES,"
    sQuery = sQuery & Chr(13) & " a.PNETWT,a.SUPCD,e.slname,e.add1,e.add2,e.add3,e.city,e.pin,c.LORRYNOS,c.FullTruckWgt,c.EmptyTruckWgt,a.GRSWGT,"
    sQuery = sQuery & Chr(13) & " a.TAREWT,a.NETWT,a.assvalue,a.vatamt,a.INSAMT,a.BRKCOM,(isnull(a.LRFRTAMT,0)+isnull(a.RLYFRT,0)) as FrtAmt,a.totlandcost,d.CONTNO,d.CANDYRATE,d.contdt,"
    sQuery = sQuery & Chr(13) & " a.RATEKG,a.BRKCD,d.SEASON,C.CNTCODE,G.mixgrpcd,E.cgst,F.STATION,c.prno,C.PRMARK,a.moiture as moisture_et,a.plotno,a.PTYWGT ,((isnull(d.candyrate,0) /isnull(h.value,0)) * a.favaourablewgt) as AssValue,a.sci,isnull(uhml,0)uhml,isnull(ml,0)ml,isnull(ui,0)ui,a.staplen,a.staplen50,a.uniratio as ur,a.micronaire as miC,a.gtex as strenght,a.trash_per as trash,a.sfi,a.elg,a.ifc,a.scneps_g as scnng,a.nepspergm as nepsg,a.spotpasser  FROM RM_LOT A, RM_ARRIVAL C, RM_CONT D,FA_SLMAS E,RM_AREA F,RM_COUNT g,RM_rateunit H"
    sQuery = sQuery & Chr(13) & " Where a.ARRNO = C.ARRNO And a.ARRDT = C.ARRDATE And a.SUPCD = C.SUPCD And a.Divcode = C.Divcode And C.contno = d.contno"
    sQuery = sQuery & Chr(13) & " AND c.CONTDT =d.CONTdt AND c.DIVCODE=d.DIVCODE AND c.SUPCD=d.SUPCD AND a.SUPCD=e.slcode AND f.AREACODE=a.AREACD and d.rateunit=h.unitname"
    sQuery = sQuery & Chr(13) & " AND a.lotno =" & LOTNO & " and A.SUPCD ='" & Trim(SUPCD) & "' and A.VARCODE ='" & Trim(Varcode) & "' and a.lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and a.Divcode ='" & Divcode & "'"
    rstQry.Open sQuery, db, adOpenStatic
        
    If rstQry.EOF = True Then
        MsgBox "No Record(s) Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Function
    End If
        If rstQry("DlyType") = "F" Then
            sDeltype = "FOR WEIGHT"
        Else
            sDeltype = "SPOT WEIGHT"
        End If
        
        
        Set rstMaster = New Recordset
        rstMaster.Open "Select * from rm_fibrenorms where Varcode = '" & rstQry("Varcode") & "'", db, adOpenStatic
        
        Set RPTV = New Report.ReportView
        Close
        Close #a
        a = FreeFile
       ' Open "C:\PPINV.TXT" For Output As #a
        Open KALFOLDERDATA & "\PPINV.TXT" For Output As #a
        
        Set Rs = New Recordset
        
        Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rstQry("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rstQry("LOTDT"), "yyyy-MM-DD") & "'", db, adOpenStatic
        If Rs.EOF = False Then
            sLotYear = Format(Rs("AYFDATE"), "YY")
        Else
            sLotYear = Format(rstQry("LOTDT"), "YY")
        End If
'        Print #a,
'        Print #a,
        Print #a,
        Print #a,
        Print #a, Space(15) & Chr(18) & Chr(27) & "E" & Padr("", 22, "") & Space(18) & Padr("", 20, "") & Padr(Format(pdate, "DD/MM/YY"), 10, "") & Chr(27) & "F"
        Print #a, Space(15) & Padr("", 22, "") & Space(18) & Padr("", 20, ""); Padr("1", 10, "")
        Print #a, Space(15) '& Chr(15) & Chr(27) & "E" & Chr(18) & Padr("", 8, "") & Chr(27) & "F" & Chr(18)
'        Print #a,
        Print #a, Space(17) & Chr(27) & "E" & Chr(18) & Padr(rstQry("Lotno") & "/" & sLotYear, 22, "") & Space(18) & Padr(rstQry("supcd"), 8, "") & Chr(27) & "F"
        Print #a, Space(17) & Chr(18) & Padr(Format(rstQry("ARRdt"), "DD/MM/YY"), 22, "") & Space(18) & Chr(18) & Chr(27) & "E" & Padr(rstQry("slname"), 40, "") & Chr(27) & "F"
        Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padr(rstQry("add1"), 20, "")
        Print #a, Space(17) & Chr(18) & Padr(rstQry("VARCODE"), 22, "") & Chr(18) & Space(18) & Padr(rstQry("add2"), 20, "")
        Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padr(rstQry("add3"), 20, "")
        Print #a, Space(17) & Padr(rstQry("BILLNO"), 22, "") & Space(18) & Padr(rstQry("City"), 20, "")
        Print #a, Space(17) & Padr(Format(rstQry("bILLdt"), "DD/MM/YY"), 22, "")
        Print #a, Space(17) & Padr(INF(rstQry("pinvvalue"), 2), 22, "")
        Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padl(rstQry("lorrynos"), 20, "")
        Print #a, Space(17) & Padr(rstQry("mixgrpcd"), 22, "") & Space(18) & Padl(INF(rstQry("Fulltruckwgt"), 3), 20, "")
'        Print #a,
        Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padl(INF(rstQry("Emptytruckwgt"), 3), 20, "")
        Print #a, Space(17) & Padr("", 22, "")
        Print #a, Space(17) & Padr(rstQry("cgst"), 22, "") & Space(18) & Padl(INF(rstQry("GrsWgt"), 3), 20, "")
        Print #a, Space(17) & Chr(18) & Chr(27) & "E" & Padr(rstQry("sTATION"), 22, "") & Chr(27) & "F" & Chr(18) & Space(18) & Padl(INF(rstQry("Tarewt"), 3), 20, "")
        Print #a, Space(17) & Padr(rstQry("bALES"), 22, "")
        Print #a, Space(17) & Padr(rstQry("pLOTNO"), 22, "") & Space(18) & Padl(INF(rstQry("NETWT"), 3), 20, "")
        
'        Set Rs = New Recordset
'        Rs.Open "SELECT min(cast(partybaleno AS numeric)),max(cast(partybaleno AS numeric)) FROM rm_bale WHERE lotno=" & rstQry("LOtno") & " and lotdt= '" & Format(rstQry("Lotdt"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'        If Rs.EOF = False Then
'            Print #a, Space(17) & Padr(Rs(0), 12, "") & Padr(Rs(1), 10, "") & Space(18) & Padl(INF(rstQry("NETWT"), 3), 20, "")
'        Else
'            Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padl(INF(rstQry("NETWT"), 3), 20, "")
'        End If
        Print #a, Space(17) & Padr(IIf(IsNull(rstQry("prno")), "", rstQry("prno")), 22, "") & Space(18) & Padl(INF(rstQry("NETWT"), 3), 20, "")
        Print #a, Space(17) & Padr(rstQry("PRMARK"), 22, "")
        Print #a, Space(17) & Padr(INF(rstQry("pnetwt"), 3), 22, "") & Space(18) & Padl(INF(rstQry("Assvalue"), 2), 20, "")
        Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("vatamt"), 2), 20, "")
        Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl("", 20, "")
        Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("insamt"), 2), 20, "")
        Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("BRkCOm"), 2), 20, "")
        Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("FrtAmt"), 2), 20, "")
        Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(String(14, "-"), 20, "")
        Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("totlandcost"), 2), 20, "")
        Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(String(14, "="), 20, "")
        Print #a,
'        Print #a,
        
        If rstMaster.EOF = False Then
            Print #a, Space(21) & Padr(rstQry("cONTNO"), 22, "") & Space(18) & Padr(rstMaster("Spanlen25"), 20, "")
            Print #a, Space(21) & Padr(INF(rstQry("CANDYRATE"), 2), 22, "") & Space(18) & Padr(rstMaster("MIc"), 20, "")
            Print #a, Space(21) & Padr(INF(rstQry("RATECY"), 2), 22, "")
            Print #a, Space(21) & Padr(INF(rstQry("RATEKG"), 4), 22, "") & Space(18) & Padr(rstMaster("Fibrestength"), 20, "")
            Print #a, Space(21) & Padr(rstQry("STATION"), 22, "") & Space(18) & Padr(rstQry("season"), 20, "")
            Print #a,
            Print #a, Space(21) & Chr(18) & Chr(27) & "E" & Padr(getMasterName("slname", "fa_slmas", "slcode", rstQry("BRkCd")), 40, "") & Chr(27) & "F"
            Print #a, Space(21) & Padr(getMasterName("spname", "rm_spotpass", "spcode", rstQry("Spotpasser")), 40, "")
            Print #a,
            Print #a, Space(21) & Chr(18) & Padr(sDeltype, 22, "")
        Else
            Print #a, Space(21) & Padr(rstQry("cONTNO"), 22, "")
            Print #a, Space(21) & Padr(INF(rstQry("CANDYRATE"), 2), 22, "")
            Print #a, Space(21) & Padr(INF(rstQry("RATECY"), 2), 22, "")
            Print #a, Space(21) & Padr(INF(rstQry("RATEKG"), 4), 22, "")
            Print #a, Space(21) & Padr(rstQry("STATION"), 22, "") & Space(18) & Padr(rstQry("season"), 20, "")
            Print #a,
            Print #a, Space(21) & Chr(18) & Chr(27) & "E" & Padr(getMasterName("slname", "fa_slmas", "slcode", rstQry("BRkCd")), 40, "") & Chr(27) & "F"
            If IsNull(rstQry("SpotPasser")) = False Then
                Print #a, Space(21) & Padr(getMasterName("spname", "rm_spotpass", "spcode", rstQry("Spotpasser")), 40, "")
            Else
                Print #a,
            End If
            Print #a,
            Print #a, Space(21) & Chr(18) & Padr(sDeltype, 22, "")
        End If
        
'        Print #a,
'        Print #a,
        Print #a,
        Print #a,
        Print #a,
'        Print #a, Space(15) & Chr(18)
        'Print #a, Space(12) & Chr(15) & Padr("SCI", 5, "") & Space(6) & Padr("2.5% SL", 7, "") & Space(6) & Padr("50% SL", 6, "") & Space(6) & Padr("UR", 5, "") & Space(6) & Padr("MIC", 4, "") & Space(8) & Padr("FIB.STR", 7, "") & Space(6) & Padr("Trash %", 7, "") & Space(4) & Padr("SFI", 5, "") & Space(4) & Padr("ELG", 5, "") & Space(4) & Padr("IFC", 5, "") & Space(4) & Padr("NEPS/G", 6, "") & Space(4) & Padr("SCN/G", 5, "")
        Print #a, Space(12) & Chr(15) & Padr("SCI", 5, "") & Space(6) & Padr("UHML", 7, "") & Space(6) & Padr("ML", 6, "") & Space(6) & Padr("UI", 5, "") & Space(6) & Padr("MIC", 4, "") & Space(8) & Padr("FIB.STR", 7, "") & Space(6) & Padr("Trash %", 7, "") & Space(4) & Padr("SFI", 5, "") & Space(4) & Padr("ELG", 5, "") & Space(4) & Padr("IFC", 5, "") & Space(4) & Padr("NEPS/G", 6, "") & Space(4) & Padr("SCN/G", 5, "")
        Print #a,
        ' Fibre Norms Form Sample
        Set Rs = New Recordset
        Rs.Open "select sci,isnull(uhml,0)uhml,isnull(ml,0)ml,isnull(ui,0)ui,a.staplen25 as staplen,a.staplen50 as staplen50,a.uniratio as ur,a.micronaire as mic,a.gtex as strength,a.Trash_per as trash,contno from rm_sample a, rm_cont b where a.sno=b.sno and a.divcode=b.divcode AND a.SUPCODE=b.SUPCD AND a.VARCODE=b.VARCODE and contno=" & rstQry("contno") & " and Contdt ='" & Format(rstQry("Contdt"), "YYYY-MM-dd") & "' and b.supcd='" & rstQry("supcd") & "' and b.varcode='" & rstQry("varcode") & "' and b.divcode ='" & Divcode & "'", db, adOpenStatic
        If Rs.EOF = False Then
            'Print #a, Space(21) & Chr(15) & Padr(INF(Rs("sci"), 1), 5, "") & Space(6) & Padr(INF(Rs("staplen"), 1), 5, "") & Space(8) & Padr(INF(Rs("staplen50"), 1), 5, "") & Space(6) & Padr(INF(Rs("ur"), 1), 5, "") & Space(6) & Padr(INF(Rs("mic"), 2), 4, "") & Space(8) & Padr(INF(Rs("strength"), 2), 5, "") & Space(9) & Padr(INF(Rs("trash"), 1), 4, "")
            Print #a, Space(21) & Chr(15) & Padr(INF(Rs("sci"), 1), 5, "") & Space(6) & Padr(INF(Rs("uhml"), 1), 5, "") & Space(8) & Padr(INF(Rs("ml"), 1), 5, "") & Space(6) & Padr(INF(Rs("ui"), 1), 5, "") & Space(6) & Padr(INF(Rs("mic"), 2), 4, "") & Space(8) & Padr(INF(Rs("strength"), 2), 5, "") & Space(9) & Padr(INF(Rs("trash"), 1), 4, "")
        Else
            Print #a,
        End If
         Print #a,
        ' Fibre Norms Form Inspection
        'Print #a, Space(21) & Chr(15) & Chr(27) & "E" & Padr(INF(rstQry("sci"), 1), 10, "") & Space(1) & Padr(INF(rstQry("staplen"), 1), 5, "") & Space(8) & Padr(INF(rstQry("staplen50"), 1), 5, "") & Space(6) & Padr(INF(rstQry("ur"), 1), 5, "") & Space(6) & Padr(INF(rstQry("mic"), 2), 4, "") & Space(8) & Padr(INF(rstQry("strenght"), 2), 5, "") & Space(9) & Padr(INF(rstQry("trash"), 1), 4, "") & Space(7) & Padr(INF(rstQry("SFI"), 2), 5, "") & Space(4) & Padr(INF(rstQry("elg"), 2), 5, "") & Space(4) & Padr(INF(rstQry("IFC"), 2), 5, "") & Space(4) & Padr(INF(rstQry("nepsg"), 0), 6, "") & Space(4) & Padr(INF(rstQry("scnng"), 0), 4, "") & Chr(27) & "F"
        Print #a, Space(21) & Chr(15) & Chr(27) & "E" & Padr(INF(rstQry("sci"), 1), 10, "") & Space(1) & Padr(INF(rstQry("uhml"), 1), 5, "") & Space(8) & Padr(INF(rstQry("ml"), 1), 5, "") & Space(6) & Padr(INF(rstQry("ui"), 1), 5, "") & Space(6) & Padr(INF(rstQry("mic"), 2), 4, "") & Space(8) & Padr(INF(rstQry("strenght"), 2), 5, "") & Space(9) & Padr(INF(rstQry("trash"), 1), 4, "") & Space(7) & Padr(INF(rstQry("SFI"), 2), 5, "") & Space(4) & Padr(INF(rstQry("elg"), 2), 5, "") & Space(4) & Padr(INF(rstQry("IFC"), 2), 5, "") & Space(4) & Padr(INF(rstQry("nepsg"), 0), 6, "") & Space(4) & Padr(INF(rstQry("scnng"), 0), 4, "") & Chr(27) & "F"
'        Print #a,
        If Rs.EOF = False Then
'            dDiff1 = val(rstQry("staplen")) - val(Rs("staplen"))
'            dDiff2 = val(rstQry("staplen50")) - val(Rs("staplen50"))
'            dDiff3 = val(rstQry("ur")) - val(Rs("ur"))
            dDiff1 = val(rstQry("uhml")) - val(Rs("uhml"))
            dDiff2 = val(rstQry("ml")) - val(Rs("ml"))
            dDiff3 = val(rstQry("ui")) - val(Rs("ui"))
            dDiff4 = val(rstQry("mic")) - val(Rs("mic"))
            dDiff5 = val(rstQry("strenght")) - val(Rs("strength"))
            dDiff6 = val(rstQry("trash")) - val(Rs("trash"))
         Else
'            dDiff1 = val(rstQry("staplen"))
'            dDiff2 = val(rstQry("staplen50"))
'            dDiff3 = val(rstQry("ur"))
'            dDiff4 = val(rstQry("mic"))
'            dDiff5 = val(rstQry("strenght"))
'            dDiff6 = val(rstQry("trash"))
            dDiff1 = 0
            dDiff2 = 0
            dDiff3 = 0
            dDiff4 = 0
            dDiff5 = 0
            dDiff6 = 0
         End If
' Fibre Norms Form Master
        If rstMaster.EOF = False Then
            'Print #a, Space(32) & Chr(15) & Padr(rstMaster("Spanlen25"), 5, "") & Space(8) & Padr(rstMaster("Spanlen50"), 5, "") & Space(6) & Padr(rstMaster("ur"), 5, "") & Space(6) & Padr(rstMaster("mic"), 10, "") & Space(2) & Padr(rstMaster("Fibrestength"), 10, "") & Space(4) & Padr(rstMaster("trashper"), 10, "") & Space(1) & Padr(rstMaster("SFI"), 7, "") & Space(2) & Padr(rstMaster("ELongation"), 5, "") & Space(4) & Padr(rstMaster("IFC"), 5, "") & Space(4) & Padr(rstMaster("neps"), 6, "") & Space(4) & Padr(rstMaster("scn"), 6, "")
            Print #a, Space(32) & Chr(15) & Padr(rstMaster("uhml"), 5, "") & Space(8) & Padr(rstMaster("ml"), 5, "") & Space(6) & Padr(rstMaster("ui"), 5, "") & Space(6) & Padr(rstMaster("mic"), 10, "") & Space(2) & Padr(rstMaster("Fibrestength"), 10, "") & Space(4) & Padr(rstMaster("trashper"), 10, "") & Space(1) & Padr(rstMaster("SFI"), 7, "") & Space(2) & Padr(rstMaster("ELongation"), 5, "") & Space(4) & Padr(rstMaster("IFC"), 5, "") & Space(4) & Padr(rstMaster("neps"), 6, "") & Space(4) & Padr(rstMaster("scn"), 6, "")
        Else
            Print #a,
        End If
        Print #a,
        Print #a, Space(23) & Chr(15) & Padr(INF(0, 0), 5, "") & Space(4) & Padr(INF(dDiff1, 1), 5, "") & Space(8) & Padr(INF(dDiff2, 1), 5, "") & Space(6) & Padr(INF(dDiff3, 1), 5, "") & Space(6) & Padr(INF(dDiff4, 2), 4, "") & Space(8) & Padr(INF(dDiff5, 2), 5, "") & Space(9) & Padr(INF(dDiff6, 1), 4, "")
'        Print #a,
        Print #a, Space(17) & Chr(18)
        Print #a, Space(17) & Chr(18) & Chr(27) & "E" & Padr(INF(rstQry("FrtAmt") / rstQry("BALES"), 2), 22, "") & Chr(27) & "F"
        Print #a, Space(17) & Padr(INF(rstQry("CANDYRATE"), 4), 22, "")
        Print #a, Space(17) & Padr(INF(rstQry("NETWT") - rstQry("PnetwT"), 3), 22, "")
        Print #a, Space(17) & Padr(INF(rstQry("moisture_et"), 2), 22, "")
               
        Print #a, Chr(12)
           Close #a
        a = FreeFile
'        Open "C:\PPINV.BAT" For Output As #a
'        Print #a, "CD\"
'        Print #a, "C:"
'        Print #a, "CD\"
'        Print #a, "type PPINV.TXT> PRN"
'        Close
'
'        RPTV.txtfile = "C:\PPINV.TXT"
'        RPTV.Batfile = "C:\PPINV.BAT"
        Call KALBATPROCESS("PPINV")
End Function
Public Function CottonPassingReport_ContinuesPrint(FromLotNO As Integer, ToLotNo As Integer)
    Dim sDeltype As String

    Set db = New Connection
    db.Open connectstring
    
    Set rstQry = New Recordset
    
    sQuery = ""
    sQuery = sQuery & Chr(13) & " SELECT D.DlyType,a.favaourablewgt,d.rateunit,(isnull(A.RATEKG,0)*isnull(h.value,0))  AS ratecy, a.LOTNO,a.LOTDT,a.ARRNO,a.ARRDT,a.VARCODE,a.BILLNO,a.BILLDT,Round(((isnull(d.candyrate,0) /isnull(h.value,0)) * a.favaourablewgt),2) + isnull(a.vatamt,0)+isnull(a.bedamt,0)+isnull(a.sedamt,0)+isnull(a.aedamt,0)+isnull(a.cessamt,0)+isnull(a.othtaxamt,0)+isnull(a.charityamt,0)+isnull(a.damageamt,0)+ isnull(a.Clearanceamt,0)+isnull(a.othersamt,0)+isnull(a.othertaxableamt,0)+isnull(a.customsdutyamt,0) + isnull(a.Adjvalue,0) -(isnull(a.CashDisAmt,0)+isnull(a.TradeDisamt,0)) as BILLVALUE,isnull(a.pinvval,0) as pinvvalue,a.FBILLNO,a.FBILLDT,a.BALES,"
    sQuery = sQuery & Chr(13) & " a.PNETWT,a.SUPCD,e.slname,e.add1,e.add2,e.add3,e.city,e.pin,c.LORRYNOS,c.FullTruckWgt,c.EmptyTruckWgt,a.GRSWGT,"
    sQuery = sQuery & Chr(13) & " a.TAREWT,a.NETWT,a.assvalue,a.vatamt,a.INSAMT,a.BRKCOM,(isnull(a.LRFRTAMT,0)+isnull(a.RLYFRT,0)) as FrtAmt,a.totlandcost,d.CONTNO,d.CANDYRATE,d.contdt,d.millrefno,"
    sQuery = sQuery & Chr(13) & " a.RATEKG,a.BRKCD,d.SEASON,C.CNTCODE,E.cgst,F.STATION,C.PRMARK,c.prno,a.moiture as moisture_et,a.plotno,a.PTYWGT ,((isnull(d.candyrate,0) /isnull(h.value,0)) * a.favaourablewgt) as AssValue,a.sci,isnull(uhml,0)uhml,isnull(ml,0)ml,isnull(ui,0)ui,a.staplen,a.staplen50,a.uniratio as ur,a.micronaire as miC,a.gtex as strenght,a.trash_per as trash,a.sfi,a.elg,a.ifc,a.scneps_g as scnng,a.nepspergm as nepsg,isnull(a.spotpasser,0) spotpasser,A.WeightFlg  FROM RM_LOT A, RM_ARRIVAL C, RM_CONT D,FA_SLMAS E,RM_AREA F,RM_rateunit H"
    sQuery = sQuery & Chr(13) & " Where a.ARRNO = C.ARRNO And a.ARRDT = C.ARRDATE And a.SUPCD = C.SUPCD And a.Divcode = C.Divcode And C.contno = d.contno"
    sQuery = sQuery & Chr(13) & " AND c.CONTDT =d.CONTdt AND c.DIVCODE=d.DIVCODE AND a.SUPCD=e.slcode AND f.AREACODE=a.AREACD and d.rateunit=h.unitname"
    sQuery = sQuery & Chr(13) & " AND a.lotno between " & FromLotNO & " and " & ToLotNo & " and a.lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and lotyear='" & Year(yfdate) & "' and a.Divcode ='" & Divcode & "'"
    rstQry.Open sQuery, db, adOpenStatic
        
    If rstQry.EOF = True Then
        MsgBox "No Record(s) Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Function
    End If
    Set RPTV = New Report.ReportView
    Close
    Close #a
    a = FreeFile
    'Open "C:\PPINV.TXT" For Output As #a
     Open KALFOLDERDATA & "\PPINV.TXT" For Output As #a
        Print #a,
        rstQry.MoveFirst
        Do While rstQry.EOF = False
            dDiff1 = 0: dDiff2 = 0: dDiff3 = 0: dDiff4 = 0: dDiff5 = 0: dDiff6 = 0
'            If rstQry("DlyType") = "F" Then
'                sDeltype = "FOR WEIGHT"
'            Else
'                sDeltype = "SPOT WEIGHT"
'            End If
            
            If rstQry("WeightFlg") = "M" Then
                sDeltype = "MILL WEIGHT"
            Else
                sDeltype = "SUPPLIER WEIGHT"
            End If
            
            Set rstMaster = New Recordset
            rstMaster.Open "Select * from rm_fibrenorms where Varcode = '" & rstQry("Varcode") & "'", db, adOpenStatic
            
            
            Set Rs = New Recordset
            
            Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rstQry("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rstQry("LOTDT"), "yyyy-MM-DD") & "'", db, adOpenStatic
            If Rs.EOF = False Then
                sLotYear = Format(Rs("AYFDATE"), "YY")
            Else
                sLotYear = Format(rstQry("LOTDT"), "YY")
            End If
            Print #a,
            Print #a, Chr(18)
            Print #a, Space(15) & Chr(18) & Chr(27) & "E" & Padr("", 22, "") & Space(18) & Padr("", 20, "") & Padr(Format(pdate, "DD/MM/YY"), 10, "") & Chr(27) & "F"
            Print #a, Space(15) & Padr("", 22, "") & Space(18) & Padr("", 20, ""); Padr("1", 10, "")
            Print #a, Space(15) '& Chr(15) & Chr(27) & "E" & Chr(18) & Padr("", 8, "") & Chr(27) & "F" & Chr(18)
            Print #a, Space(17) & Chr(27) & "E" & Chr(18) & Padr(rstQry("Lotno") & "/" & sLotYear, 22, "") & Space(18) & Padr(rstQry("supcd"), 8, "") & Chr(27) & "F"
            Print #a, Space(17) & Chr(18) & Padr(Format(rstQry("ARRdt"), "DD/MM/YY"), 22, "") & Space(18) & Chr(18) & Chr(27) & "E" & Padr(rstQry("slname"), 40, "") & Chr(27) & "F"
            Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padr(rstQry("add1"), 20, "")
            Print #a, Space(17) & Chr(18) & Padr(rstQry("VARCODE"), 22, "") & Chr(18) & Space(18) & Padr(rstQry("add2"), 20, "")
            Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padr(rstQry("add3"), 20, "")
            Print #a, Space(17) & Padr(rstQry("BILLNO"), 22, "") & Space(18) & Padr(rstQry("City"), 20, "")
            Print #a, Space(17) & Padr(Format(rstQry("bILLdt"), "DD/MM/YY"), 22, "")
            Print #a, Space(17) & Padr(INF(rstQry("pinvvalue"), 2), 22, "")
            Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padl(rstQry("lorrynos"), 20, "")
            'MIX GROUP CODE HIDE BY VINOTH
            Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padl(INF(rstQry("Fulltruckwgt"), 3), 20, "")
            Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padl(INF(rstQry("Emptytruckwgt"), 3), 20, "")
            Print #a, Space(17) & Padr("", 22, "")
            Print #a, Space(17) & Padr(rstQry("cgst"), 22, "") & Space(18) & Padl(INF(rstQry("GrsWgt"), 3), 20, "")
            Print #a, Space(17) & Chr(18) & Chr(27) & "E" & Padr(rstQry("sTATION"), 22, "") & Chr(27) & "F" & Chr(18) & Space(18) & Padl(INF(rstQry("Tarewt"), 3), 20, "")
            Print #a, Space(17) & Padr(rstQry("bALES"), 22, "")
            Print #a, Space(17) & Padr(rstQry("pLOTNO"), 22, "") & Space(18) & Padl(INF(rstQry("NETWT"), 3), 20, "")
            
'            Set Rs = New Recordset
'            Rs.Open "SELECT min(cast(partybaleno AS numeric)),max(cast(partybaleno AS numeric)) FROM rm_bale WHERE lotno=" & rstQry("LOtno") & " and lotdt= '" & Format(rstQry("Lotdt"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'            If Rs.EOF = False Then
'                Print #a, Space(17) & Padr(Rs(0), 12, "") & Padr(Rs(1), 10, "") & Space(18) & Padl(INF(rstQry("NETWT"), 3), 20, "")
'            Else
'                Print #a, Space(17) & Padr("", 22, "") & Space(18) & Padl(INF(rstQry("NETWT"), 3), 20, "")
'            End If
            'This From To Baleno print is Hide By Mr.Vinoth As Per Customer Required(Mr.Selvakumar SHIVA Cotton Clerk)
            Print #a, Space(17) & Padr(IIf(IsNull(rstQry("prno")), "", rstQry("prno")), 22, "") & Space(18) & Padl(INF(rstQry("NETWT"), 3), 20, "")
            Print #a, Space(17) & Padr(rstQry("PRMARK"), 22, "")
            Print #a, Space(17) & Padr(INF(rstQry("pnetwt"), 3), 22, "") & Space(18) & Padl(INF(rstQry("Assvalue"), 2), 20, "")
            Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("vatamt"), 2), 20, "")
            Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl("", 20, "")
            Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("insamt"), 2), 20, "")
            Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("BRkCOm"), 2), 20, "")
            Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("FrtAmt"), 2), 20, "")
            Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(String(14, "-"), 20, "")
            Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(INF(rstQry("totlandcost"), 2), 20, "")
            Print #a, Space(17) & Padr(INF(0, 3), 22, "") & Space(18) & Padl(String(14, "="), 20, "")
            Print #a,
            
            If rstMaster.EOF = False Then
                Print #a, Space(21) & Padr(rstQry("millrefno"), 22, "") & Space(18) & Padr(rstMaster("Spanlen25"), 20, "")
                Print #a, Space(21) & Padr(INF(rstQry("CANDYRATE"), 2), 22, "") & Space(18) & Padr(rstMaster("MIc"), 20, "")
                Print #a, Space(21) & Padr(INF(rstQry("RATECY"), 2), 22, "")
                Print #a, Space(21) & Padr(INF(rstQry("RATEKG"), 4), 22, "") & Space(18) & Padr(rstMaster("Fibrestength"), 20, "")
                Print #a, Space(21) & Padr(rstQry("STATION"), 22, "") & Space(18) & Padr(rstQry("season"), 20, "")
                Print #a,
                Print #a, Space(21) & Chr(18) & Chr(27) & "E" & Padr(getMasterName("slname", "fa_slmas", "slcode", rstQry("BRkCd")), 40, "") & Chr(27) & "F"
                Print #a, Space(21) & Padr(getMasterName("spname", "rm_spotpass", "spcode", rstQry("Spotpasser")), 40, "")
                Print #a,
                Print #a, Space(21) & Chr(18) & Padr(sDeltype, 22, "")
            Else
                Print #a, Space(21) & Padr(rstQry("millrefno"), 22, "")
                Print #a, Space(21) & Padr(INF(rstQry("CANDYRATE"), 2), 22, "")
                Print #a, Space(21) & Padr(INF(rstQry("RATECY"), 2), 22, "")
                Print #a, Space(21) & Padr(INF(rstQry("RATEKG"), 4), 22, "")
                Print #a, Space(21) & Padr(rstQry("STATION"), 22, "") & Space(18) & Padr(rstQry("season"), 20, "")
                Print #a,
                Print #a, Space(21) & Chr(18) & Chr(27) & "E" & Padr(getMasterName("slname", "fa_slmas", "slcode", rstQry("BRkCd")), 40, "") & Chr(27) & "F"
                If IsNull(rstQry("SpotPasser")) = False Then
                    Print #a, Space(21) & Padr(getMasterName("spname", "rm_spotpass", "spcode", rstQry("Spotpasser")), 40, "")
                Else
                    Print #a,
                End If
                Print #a,
                Print #a, Space(21) & Chr(18) & Padr(sDeltype, 22, "")
            End If
            
            Print #a,
            Print #a,
            Print #a,
    
            'Print #a, Space(12) & Chr(15) & Padr("SCI", 5, "") & Space(6) & Padr("2.5% SL", 7, "") & Space(6) & Padr("50% SL", 6, "") & Space(6) & Padr("UR", 5, "") & Space(6) & Padr("MIC", 4, "") & Space(8) & Padr("FIB.STR", 7, "") & Space(6) & Padr("Trash %", 7, "") & Space(4) & Padr("SFI", 5, "") & Space(4) & Padr("ELG", 5, "") & Space(4) & Padr("IFC", 5, "") & Space(4) & Padr("NEPS/G", 6, "") & Space(4) & Padr("SCN/G", 5, "")
            Print #a, Space(12) & Chr(15) & Padr("SCI", 5, "") & Space(6) & Padr("UHML", 7, "") & Space(6) & Padr("ML", 6, "") & Space(6) & Padr("UI", 5, "") & Space(6) & Padr("MIC", 4, "") & Space(8) & Padr("FIB.STR", 7, "") & Space(6) & Padr("Trash %", 7, "") & Space(4) & Padr("SFI", 5, "") & Space(4) & Padr("ELG", 5, "") & Space(4) & Padr("IFC", 5, "") & Space(4) & Padr("NEPS/G", 6, "") & Space(4) & Padr("SCN/G", 5, "")
            Print #a,
            ' Fibre Norms Form Sample
            Set Rs = New Recordset
            Rs.Open "select sci,isnull(uhml,0)uhml,isnull(ml,0)ml,isnull(ui,0)ui,staplen25 as staplen,staplen50 as staplen50,uniratio as ur,micronaire as mic,isnull(gtex,0) as strength,Trash_per as trash,contno from rm_sample a, rm_cont b where a.sno=b.sno and a.divcode=b.divcode AND a.SUPCODE=b.SUPCD AND a.VARCODE=b.VARCODE and contno=" & rstQry("contno") & " and Contdt ='" & Format(rstQry("Contdt"), "YYYY-MM-dd") & "' and b.supcd='" & rstQry("supcd") & "' and b.varcode='" & rstQry("varcode") & "' and b.divcode ='" & Divcode & "'", db, adOpenStatic
            If Rs.EOF = False Then
                'Print #a, Space(21) & Chr(15) & Padr(INF(Rs("sci"), 1), 5, "") & Space(6) & Padr(INF(Rs("staplen"), 1), 5, "") & Space(8) & Padr(INF(Rs("staplen50"), 1), 5, "") & Space(6) & Padr(INF(Rs("ur"), 1), 5, "") & Space(6) & Padr(INF(Rs("mic"), 2), 4, "") & Space(8) & Padr(INF(Rs("strength"), 2), 5, "") & Space(9) & Padr(INF(Rs("trash"), 1), 4, "")
                Print #a, Space(21) & Chr(15) & Padr(INF(Rs("sci"), 1), 5, "") & Space(6) & Padr(INF(Rs("uhml"), 1), 5, "") & Space(8) & Padr(INF(Rs("ml"), 1), 5, "") & Space(6) & Padr(INF(Rs("ui"), 1), 5, "") & Space(6) & Padr(INF(Rs("mic"), 2), 4, "") & Space(8) & Padr(INF(Rs("strength"), 2), 5, "") & Space(9) & Padr(INF(Rs("trash"), 1), 4, "")
            Else
                Print #a,
            End If
             Print #a,
            ' Fibre Norms Form Inspection
            'Print #a, Space(21) & Chr(15) & Chr(27) & "E" & Padr(INF(rstQry("sci"), 1), 10, "") & Space(1) & Padr(INF(rstQry("staplen"), 1), 5, "") & Space(8) & Padr(INF(rstQry("staplen50"), 1), 5, "") & Space(6) & Padr(INF(rstQry("ur"), 1), 5, "") & Space(6) & Padr(INF(rstQry("mic"), 2), 4, "") & Space(8) & Padr(INF(rstQry("strenght"), 2), 5, "") & Space(9) & Padr(INF(rstQry("trash"), 1), 4, "") & Space(7) & Padr(INF(rstQry("SFI"), 2), 5, "") & Space(4) & Padr(INF(rstQry("elg"), 2), 5, "") & Space(4) & Padr(INF(rstQry("IFC"), 2), 5, "") & Space(4) & Padr(INF(rstQry("nepsg"), 0), 6, "") & Space(4) & Padr(INF(rstQry("scnng"), 0), 4, "") & Chr(27) & "F"
            Print #a, Space(21) & Chr(15) & Chr(27) & "E" & Padr(INF(rstQry("sci"), 1), 10, "") & Space(1) & Padr(INF(rstQry("uhml"), 1), 5, "") & Space(8) & Padr(INF(rstQry("ml"), 1), 5, "") & Space(6) & Padr(INF(rstQry("ui"), 1), 5, "") & Space(6) & Padr(INF(rstQry("mic"), 2), 4, "") & Space(8) & Padr(INF(rstQry("strenght"), 2), 5, "") & Space(9) & Padr(INF(rstQry("trash"), 1), 4, "") & Space(7) & Padr(INF(rstQry("SFI"), 2), 5, "") & Space(4) & Padr(INF(rstQry("elg"), 2), 5, "") & Space(4) & Padr(INF(rstQry("IFC"), 2), 5, "") & Space(4) & Padr(INF(rstQry("nepsg"), 0), 6, "") & Space(4) & Padr(INF(rstQry("scnng"), 0), 4, "") & Chr(27) & "F"
    
            If Rs.EOF = False Then
'                dDiff1 = IIf(IsNull(rstQry("staplen")), 0, rstQry("staplen")) - IIf(IsNull(Rs("staplen")), 0, Rs("staplen"))
'                dDiff2 = IIf(IsNull(rstQry("staplen50")), 0, rstQry("staplen50")) - IIf(IsNull(Rs("staplen50")), 0, Rs("staplen50"))
'                dDiff3 = IIf(IsNull(rstQry("ur")), 0, rstQry("ur")) - IIf(IsNull(Rs("ur")), 0, Rs("ur"))
                dDiff1 = IIf(IsNull(rstQry("uhml")), 0, rstQry("uhml")) - IIf(IsNull(Rs("uhml")), 0, Rs("uhml"))
                dDiff2 = IIf(IsNull(rstQry("ml")), 0, rstQry("ml")) - IIf(IsNull(Rs("ml")), 0, Rs("ml"))
                dDiff3 = IIf(IsNull(rstQry("ui")), 0, rstQry("ui")) - IIf(IsNull(Rs("ui")), 0, Rs("ui"))
                dDiff4 = IIf(IsNull(rstQry("mic")), 0, rstQry("mic")) - IIf(IsNull(Rs("mic")), 0, Rs("mic"))
                dDiff5 = IIf(IsNull(rstQry("strenght")), 0, rstQry("strenght")) - IIf(IsNull(Rs("strength")), 0, Rs("strength"))
                dDiff6 = IIf(IsNull(rstQry("trash")), 0, rstQry("trash")) - IIf(IsNull(Rs("trash")), 0, Rs("trash"))
            Else
'                dDiff1 = IIf(IsNull(rstQry("staplen")), 0, rstQry("staplen"))
'                dDiff2 = IIf(IsNull(rstQry("staplen50")), 0, rstQry("staplen50"))
'                dDiff3 = IIf(IsNull(rstQry("ur")), 0, rstQry("ur"))
'                dDiff4 = IIf(IsNull(rstQry("mic")), 0, rstQry("mic"))
'                dDiff5 = IIf(IsNull(rstQry("strenght")), 0, rstQry("strenght"))
'                dDiff6 = IIf(IsNull(rstQry("trash")), 0, rstQry("trash"))
                dDiff1 = 0
                dDiff2 = 0
                dDiff3 = 0
                dDiff4 = 0
                dDiff5 = 0
                dDiff6 = 0
             End If
    ' Fibre Norms Form Master
            If rstMaster.EOF = False Then
                'Print #a, Space(32) & Chr(15) & Padr(rstMaster("Spanlen25"), 5, "") & Space(8) & Padr(rstMaster("Spanlen50"), 5, "") & Space(6) & Padr(rstMaster("ur"), 5, "") & Space(6) & Padr(rstMaster("mic"), 10, "") & Space(2) & Padr(rstMaster("Fibrestength"), 10, "") & Space(4) & Padr(rstMaster("trashper"), 10, "") & Space(1) & Padr(rstMaster("SFI"), 7, "") & Space(2) & Padr(rstMaster("ELongation"), 5, "") & Space(4) & Padr(rstMaster("IFC"), 5, "") & Space(4) & Padr(rstMaster("neps"), 6, "") & Space(4) & Padr(rstMaster("scn"), 6, "")
                Print #a, Space(32) & Chr(15) & Padr(rstMaster("uhml"), 5, "") & Space(8) & Padr(rstMaster("ml"), 5, "") & Space(6) & Padr(rstMaster("ui"), 5, "") & Space(6) & Padr(rstMaster("mic"), 10, "") & Space(2) & Padr(rstMaster("Fibrestength"), 10, "") & Space(4) & Padr(rstMaster("trashper"), 10, "") & Space(1) & Padr(rstMaster("SFI"), 7, "") & Space(2) & Padr(rstMaster("ELongation"), 5, "") & Space(4) & Padr(rstMaster("IFC"), 5, "") & Space(4) & Padr(rstMaster("neps"), 6, "") & Space(4) & Padr(rstMaster("scn"), 6, "")
            Else
                Print #a,
            End If
            Print #a,
            Print #a, Space(23) & Chr(15) & Padr(INF(0, 0), 5, "") & Space(4) & Padr(INF(dDiff1, 1), 5, "") & Space(8) & Padr(INF(dDiff2, 1), 5, "") & Space(6) & Padr(INF(dDiff3, 1), 5, "") & Space(6) & Padr(INF(dDiff4, 2), 4, "") & Space(8) & Padr(INF(dDiff5, 2), 5, "") & Space(9) & Padr(INF(dDiff6, 1), 4, "")
    
            Print #a, Space(17) & Chr(18)
            Print #a, Space(17) & Chr(18) & Chr(27) & "E" & Padr(INF(rstQry("FrtAmt") / rstQry("BALES"), 2), 22, "") & Chr(27) & "F"
            Print #a, Space(17) & Padr(INF(rstQry("CANDYRATE"), 4), 22, "")
            Print #a, Space(17) & Padr(INF(rstQry("NETWT") - rstQry("PnetwT"), 3), 22, "")
            Print #a, Space(17) & Padr(INF(rstQry("moisture_et"), 2), 22, "")
                   
            Print #a, Chr(12)
            rstQry.MoveNext
        Loop
          Close #a
        a = FreeFile
'        Open "C:\PPINV.BAT" For Output As #a
'        Print #a, "CD\"
'        Print #a, "C:"
'        Print #a, "CD\"
'        Print #a, "type PPINV.TXT> PRN"
'        Close
'
'        RPTV.txtfile = "C:\PPINV.TXT"
'        RPTV.Batfile = "C:\PPINV.BAT"
Call KALBATPROCESS("PPINV")
        Screen.MousePointer = 0
End Function
Public Sub COTTONARRIVALREPORT_Shiva_ConPrint(fromArrivalNo As Integer, ToArrivalNo As Integer)
On Error GoTo COTTONARRIVALREPORT_Error
    Dim stg As Double
    Dim frt As Double
Screen.MousePointer = 11
SqlStr = ""
SqlStr = SqlStr + Chr(13) & " SELECT distinct a.arrno,a.arrdate,A.VARCODE,A.LOTNO,e.FAVAOURABLEWGT as ptywgt,A.PLOTNO,E.RATECY,A.AREACODE,A.SUPCD,C.slname,C.add1,C.add2,C.add3,C.city,C.state,C.pin,"
SqlStr = SqlStr + Chr(13) & " QUANTITY,LORRYNOS,A.FREIGHT,a.InwardNo,e.LOTNO,e.LOTDT,E.weighbridgewt,SUM(F.NETWT)INDIWT,E.pnetwt,G.STATION,D.MILLREFNO,G.AREANAME FROM RM_ARRIVAL A"
SqlStr = SqlStr + Chr(13) & " INNER JOIN RM_CONT D ON A.CONTNO=D.CONTNO AND A.CONTDT=D.CONTDT AND A.DIVCODE=D.DIVCODE"
SqlStr = SqlStr + Chr(13) & " INNER JOIN RM_LOT E ON A.LOTNO=E.LOTNO AND A.lotdt=E.LOTDT AND A.ARRNO=E.ARRNO AND A.ARRDATE=E.ARRDT AND A.lottype=E.LOTTYPE AND A.SUPCD=E.SUPCD "
SqlStr = SqlStr + Chr(13) & " INNER JOIN RM_BALE F ON E.LOTNO=F.LOTNO AND E.LOTDT=F.lotdt AND E.LOTTYPE=F.lottype"
SqlStr = SqlStr + Chr(13) & " INNER JOIN FA_SLMAS C ON E.SUPCD=C.slcode"
SqlStr = SqlStr + Chr(13) & " INNER JOIN RM_AREA G ON A.AREACODE=G.AREACODE"
SqlStr = SqlStr + Chr(13) & " WHERE E.ARRDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND  E.ARRNO between " & val(fromArrivalNo) & " and " & val(ToArrivalNo) & " and E.Divcode='" & Divcode & "' and e.lotyear='" & Year(yfdate) & "' GROUP BY a.arrno,a.arrdate,A.VARCODE,A.LOTNO,e.FAVAOURABLEWGT,A.PLOTNO,E.RATECY,A.AREACODE,A.SUPCD,C.slname,C.add1,C.add2,C.add3,C.city,C.state,C.pin,"
SqlStr = SqlStr + Chr(13) & " Quantity , LORRYNOS, a.Freight, a.InwardNo, e.LOTNO, e.LOTDT, e.weighbridgewt,e.pnetwt,G.STATION,D.MILLREFNO,G.AREANAME"
Set Rs = New Recordset
Rs.Open SqlStr, db, adOpenStatic
If Rs.RecordCount = 0 Then
    MsgBox "No Record Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

fileno = FreeFile()
Close
Pg = 0
lcnt = 0
'Open "c:\cottonarrivalreport.txt" For Output As #fileno
Open KALFOLDERDATA & "\cottonarrivalreport.TXT" For Output As #fileno
Rs.MoveFirst
Do While Rs.EOF = False
    For i = 0 To 2
        Print #fileno,
    Next
    
    Set rs1 = New Recordset
    rs1.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(Rs("LOTDT"), "yyyy-MM-DD") & "'", db, adOpenStatic
    If Rs.EOF = False Then
        sLotYear = Format(rs1("AYFDATE"), "YY")
    Else
        sLotYear = Format(Rs("LOTDT"), "YY")
    End If
'    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Chr(15) & Space(75) & Chr(18) & Chr(14) & Chr(27) & "E" & Format(Rs("arrdate"), "dd/mm/yy") & Space(7) & Rs("MILLREFNO") & Chr(27) & "F" & Chr(15)

    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    
    If Rs("quantity") > 0 Then
        frt = val(Rs("freight")) / val(Rs("quantity"))
    Else
        frt = 0
    End If
    
    Print #fileno, Space(3) & Padr(Rs("varcode"), 10, " ") & Space(1) & Padr(Rs("lotno") & "/" & sLotYear, 10, " ") & Space(1) & Padl(Format(Rs("pnetwt"), "0.00"), 13, " ") & Space(1) & Padl(Format(Rs("ratecy"), "0.00"), 13, " ") & Space(7) & Padr(Rs("plotno"), 14, " ");
    Print #fileno, Space(1) & Padr(Rs("AREANAME"), 12, " ") & Space(1) & Padr(Rs("slname"), 38, " ") & Space(1) & Padl(Format(Rs("Quantity"), "0"), 8, " ") & Space(2) & Padr(Rs("lorrynos"), 12, " ")
    Print #fileno, Padr("", 14, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("add1"), 38, " ")
    Print #fileno, Padr("", 14, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("add2"), 38, " ")
    Print #fileno, Padr("", 14, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("add3"), 38, " ")
    Print #fileno, Padr("", 14, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("city") & "-" & Rs("pin"), 38, " ")
    Print #fileno, Padr("", 14, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("state"), 38, " ")
    Print #fileno, Padr("", 14, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ")
    Print #fileno, Padr("", 14, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(5) & Padr("Party Code : ", 14, " ") & Space(2) & Padr(Rs("supcd"), 10, " ")
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Space(11) & Padl("Mill Indiv.net Wt.     :", 25, " ") & Space(3) & Padl(Format(Rs("pnetwt"), "0.000"), 10, " ") & Space(70) & Padl(INF(Rs("inwardno"), 0), 10, " ")
    Print #fileno, Space(11) & Padl("Mill W.B.NET WT.       :", 25, " ") & Space(3) & Padl(Format(Rs("weighbridgewt"), "0.000"), 10, " ")
    Print #fileno, Space(11) & Padl("Mill Party Invoice Wt. :", 25, " ") & Space(3) & Padl(Format(Rs("ptywgt"), "0.000"), 10, " ")

    
    stg = val(Rs("weighbridgewt")) - val(Rs("pnetwt"))
    
    Print #fileno, Space(11) & Padl("SHORATGE               :", 25, " ") & Space(3) & Padl(Format(stg, "0.000"), 10, " ") & Space(51) & "Freight Per Bale : " & Padl(Format(frt, "0.00"), 15, " ")
'    Print #fileno, Chr(12) & Chr(18)
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Rs.MoveNext
Loop
Close
Close #fileno
'Open "c:\cottonarrivalreport.bat" For Output As #fileno
'    Print #fileno, "cd\"
'    Print #fileno, "c:\"
'    Print #fileno, "cd\"
'    Print #fileno, "c:\cottonarrivalreport.txt>prn"
'Close
'Set RPTV = New Report.ReportView
'RPTV.txtfile = "c:\cottonarrivalreport.txt"
'RPTV.Batfile = "c:\cottonarrivalreport.bat"
fileno = FreeFile
Call KALBATPROCESS("cottonarrivalreport")
Screen.MousePointer = 0
On Error GoTo 0
Exit Sub

COTTONARRIVALREPORT_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure COTTONARRIVALREPORT of Form Frmlotbale", vbInformation, head
End Sub

Public Sub COTTONARRIVALREPORT_Bannari_ConPrint(fromArrivalNo As Integer, ToArrivalNo As Integer)
On Error GoTo COTTONARRIVALREPORT_Error
    Dim stg As Double
    Dim frt As Double
    
Screen.MousePointer = 11
SqlStr = ""
SqlStr = SqlStr + Chr(13) & " SELECT distinct a.arrno,a.arrdate,A.VARCODE,A.LOTNO,e.FAVAOURABLEWGT as ptywgt,A.PLOTNO,E.RATECY,A.AREACODE,A.SUPCD,C.slname,C.add1,C.add2,C.add3,C.city,C.state,C.pin,"
SqlStr = SqlStr + Chr(13) & " QUANTITY,LORRYNOS,A.FREIGHT,a.InwardNo,e.LOTNO,e.LOTDT,E.weighbridgewt,SUM(F.NETWT)INDIWT,e.pnetwt,G.STATION,D.MILLREFNO,G.AREANAME FROM RM_ARRIVAL A"
SqlStr = SqlStr + Chr(13) & " INNER JOIN RM_CONT D ON A.CONTNO=D.CONTNO AND A.CONTDT=D.CONTDT AND A.DIVCODE=D.DIVCODE"
SqlStr = SqlStr + Chr(13) & " INNER JOIN RM_LOT E ON A.LOTNO=E.LOTNO AND A.lotdt=E.LOTDT AND A.ARRNO=E.ARRNO AND A.ARRDATE=E.ARRDT AND A.lottype=E.LOTTYPE AND A.SUPCD=E.SUPCD AND A.DIVCODE=E.DIVCODE "
SqlStr = SqlStr + Chr(13) & " INNER JOIN RM_BALE F ON E.LOTNO=F.LOTNO AND E.LOTDT=F.lotdt AND E.LOTTYPE=F.lottype AND A.DIVCODE =F.DIVCODE "
SqlStr = SqlStr + Chr(13) & " INNER JOIN FA_SLMAS C ON E.SUPCD=C.slcode"
SqlStr = SqlStr + Chr(13) & " INNER JOIN RM_AREA G ON A.AREACODE=G.AREACODE"
SqlStr = SqlStr + Chr(13) & " WHERE E.ARRDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND  E.ARRNO between " & val(fromArrivalNo) & " and " & val(ToArrivalNo) & " and E.Divcode='" & Divcode & "' and e.lotyear='" & Year(yfdate) & "' GROUP BY a.arrno,a.arrdate,A.VARCODE,A.LOTNO,e.FAVAOURABLEWGT,A.PLOTNO,E.RATECY,A.AREACODE,A.SUPCD,C.slname,C.add1,C.add2,C.add3,C.city,C.state,C.pin,"
SqlStr = SqlStr + Chr(13) & " Quantity , LORRYNOS, a.Freight, a.InwardNo, e.LOTNO, e.LOTDT, e.weighbridgewt,e.pnetwt,G.STATION,D.MILLREFNO,G.AREANAME"
Set Rs = New Recordset
Rs.Open SqlStr, db, adOpenStatic
If Rs.RecordCount = 0 Then
    MsgBox "No Record Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

fileno = FreeFile()
Close
Pg = 0
lcnt = 0
'Open "c:\cottonarrivalreport.txt" For Output As #fileno
Open KALFOLDERDATA & "\cottonarrivalreport.TXT" For Output As #fileno
Rs.MoveFirst
Do While Rs.EOF = False
    For i = 0 To 2
        Print #fileno,
    Next
    
    Set rs1 = New Recordset
    rs1.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(Rs("LOTDT"), "yyyy-MM-DD") & "'", db, adOpenStatic
    If Rs.EOF = False Then
        sLotYear = Format(rs1("AYFDATE"), "YY")
    Else
        sLotYear = Format(Rs("LOTDT"), "YY")
    End If
'    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Space(75) & Chr(18) & Chr(14) & Chr(27) & "E" & Format(Rs("arrdate"), "dd/mm/yy") & Space(7) & Rs("MILLREFNO") & Chr(27) & "F" & Chr(15)
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Padr(Rs("varcode"), 10, " ") & Space(1) & Padr(Rs("lotno") & "/" & sLotYear, 10, " ") & Space(1) & Padl(Format(Rs("pnetwt"), "0.00"), 13, " ") & Space(1) & Padl(Format(Rs("ratecy"), "0.00"), 13, " ") & Space(5) & Padr(Rs("plotno"), 10, " ");
    Print #fileno, Space(1) & Padr(Rs("AREANAME"), 15, " ") & Space(3) & Padr(Rs("slname"), 36, " ") & Space(1) & Padl(Format(Rs("Quantity"), "0"), 10, " ") & Space(2) & Padr(Rs("lorrynos"), 12, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("add1"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("add2"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("add3"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("city") & "-" & Rs("pin"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(Rs("state"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(5) & Padr("Party Code : ", 14, " ") & Space(2) & Padr(Rs("supcd"), 10, " ")
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Space(35) & Padl(Format(Rs("indiwt"), "0.000"), 10, " ")
    Print #fileno, Space(35) & Padl(Format(Rs("weighbridgewt"), "0.000"), 10, " ") & Space(70) & Padl(INF(Rs("inwardno"), 0), 10, " ")
    Print #fileno, Space(35) & Padl(Format(Rs("pnetwt"), "0.000"), 10, " ")

    
    stg = val(Rs("weighbridgewt")) - val(Rs("pnetwt"))
    If Rs("quantity") > 0 Then
        frt = val(Rs("freight")) / val(Rs("quantity"))
    Else
        frt = 0
    End If
    Print #fileno, Space(35) & Padl(Format(stg, "0.000"), 10, " ") & Space(70) & Padl(Format(frt, "0.00"), 15, " ")
'    Print #fileno, Chr(12) & Chr(18)
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Rs.MoveNext
Loop
Close
Close #fileno
fileno = FreeFile
Call KALBATPROCESS("cottonarrivalreport")
Screen.MousePointer = 0
On Error GoTo 0
Exit Sub

COTTONARRIVALREPORT_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure COTTONARRIVALREPORT of Form Frmlotbale", vbInformation, head
End Sub



