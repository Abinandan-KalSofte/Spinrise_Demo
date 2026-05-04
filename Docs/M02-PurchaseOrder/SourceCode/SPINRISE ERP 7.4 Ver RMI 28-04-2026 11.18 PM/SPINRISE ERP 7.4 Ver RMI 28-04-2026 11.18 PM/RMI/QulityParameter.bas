Attribute VB_Name = "quality_parameters"
Option Explicit
Dim Rs As Recordset
Dim PlotNo As Integer
Dim rs2 As Recordset
Dim cn As Connection
Dim pg1 As Integer
Dim pg As Integer
Dim co As Integer
Dim ree As Double
Dim rev As Report.ReportView
Public Sub qu_para(a As String, B As String, dname As String)
Dim r As String
Dim s As String
Dim div As String
ree = 0
r = a
s = B
co = 0
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Open KALFOLDERDATA + "soon.txt" For Output As #1
pg1 = 1
Call callhead(r, s, CInt(pg1))
Set Rs = New Recordset
Rs.Open "select distinct a.lotno,0 plotno,f.slname,c.areaname,d.varcode,a.bales,a.bblflg,a.staplen,a.staplen50 , a.uniratio, a.strength, a.MICRONAIRE, a.TRASH_PER,a.mcoeff,isnull(mature,0) as mature,isnull(hmature,0) as hmature,isnull(imature,0) as imature from rm_lot a, rm_area c,rm_var d,fa_slmas f where a.varcode = d.varcode And a.AREACD = c.areacode and a.supcd = f.slcode and  a.lotdt Between '" & Format(r, "yyyy-mm-dd") & "' and ' " & Format(s, "yyyy-mm-dd") & "' AND A.LOTYEAR='" & Year(yfdate) & "' and a.divcode='" & Divcode & "'", cn, adOpenStatic
If Rs.RecordCount <= 0 Then
    MsgBox "No record found", vbInformation
    Exit Sub
    Close #1
End If
        Set rs2 = New Recordset
        rs2.Open "select distinct a.lotno,a.lotdt,a.plotno,f.slname,c.areaname,d.varname, a.bales,unit=case when a.bblflg = 'b' then 'Bales' else 'Borah' end,a.staplen,a.staplen50 , a.uniratio, a.strength, a.MICRONAIRE, a.TRASH_PER,a.mcoeff,a.catcd,a.divcode,a.lotdt,STAPLEN,UNIRATIO,fqi,MATURE,HMATURE,IMATURE,ROUND(ratecy,0) AS RATECANDY from rm_lot a, rm_area c,rm_var d,fa_slmas f where a.varcode = d.varcode and a.AREACD = c.areacode and a.supcd = f.slcode and  a.lotdt Between '" & Format(r, "dd-mmm-yyyy") & "' and ' " & Format(s, "dd-mmm-yyyy") & "' AND LOTYEAR='" & Year(yfdate) & "' and a.divcode='" & Divcode & "' order by a.lotdt", cn, adOpenStatic
            Do While Not rs2.EOF
                Print #1, Space(3) & Padr(Format(rs2("lotdt"), "dd-mm-yyyy"), 10, " ") & Space(3) & Padr(rs2("slname"), 26, " ") & Space(2) & Padr(rs2("varname"), 15, " ") & Space(2) & Padr(rs2("plotno"), 10, " ") & Space(1) & Padl(rs2("lotno"), 8, " ") & Space(1) & Padl(rs2("bales"), 9, " ") & Space(4) & Padl(INF(rs2("STAPLEN"), 2), 10, " ") & Space(1) & Padl(INF(rs2("STAPLEN50"), 2), 9, " "); Padl(INF(rs2("uniratio"), 2), 10, " "); Padl(INF(rs2("micronaire"), 2), 10, " "); Space(1); Padl(INF(rs2("strength"), 2), 10, " "); Space(1); Padl(INF(rs2("MATURE"), 2), 9, " "); Padl(INF(rs2("HMATURE"), 2), 11, " "); Padl(INF(rs2("IMATURE"), 2), 10, " "); Padl(Format(rs2("mcoeff"), "#0.00"), 10, " "); Padl(INF(rs2("fqi"), 2), 10, " "); Padl(INF(rs2("RATECANDY"), 2), 12, " ")
                co = co + 1
                If co >= 61 Then
                    co = 0
                    Call callhead(CStr(a), CStr(B), CStr(pg1))
                End If
            rs2.MoveNext
            Loop
            
Print #1, Space(3) & String(220, "-")
Print #1, Chr(12)
Close #1
Call KALBATPROCESS("soon")

''''Open "d:\soon.bat" For Output As #1
''''Print #1, "cd\"
''''Print #1, "d:"
''''Print #1, "cd\"
''''Print #1, "type soon.txt>prn"
''''rev.txtfile = "d:\soon.txt"
''''rev.Batfile = "d:\soon.bat"
''''Close #17
End Sub
Private Sub callhead(s As String, q As String, pg1 As String)
Dim div As String
Print #1, Chr(18)
Print #1, Space(10) + Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
Print #1,
Print #1, Chr(15)
Print #1, Space(3) + Chr(27) + "E" + Space(1) & "Inspection & Quality Parameter List " & Space(1) + Chr(27) + "F" & Space(2) & "From " & Format(s, "dd/MM/yy") & Space(2) & "To " & Format(q, "dd/MM/yy") & Space(130) & "Dt " & Date & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #1, Space(3) & String(220, "-")
Print #1, Space(3); "   Date of                                                Party's        Mill     No of          2.5%       50%      U.R %      M/C   Strength                                  Maturity                Rate/               "
Print #1, Space(3); "   Recipt    Party                       Variety          Lot No.     Lot No.     Bales            SL       SL                Value      g/tex    Mature   H.Mature  Immature   Co-effi       FQI      Candy      Remarks   "
Print #1, Space(3) & String(220, "-")
co = co + 9
End Sub
Public Sub SampleRegister(fromdate As String, ToDate As String, dname As String, FromSupplier As String, ToSupplier As String, FromVariety As String, ToVariety As String, PoType As String)
Dim r As String
Dim s As String
Dim div As String
Dim strSQL As String
ree = 0
'r = a
's = b
co = 0
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Open KALFOLDERDATA + "soon.txt" For Output As #1
pg1 = 1
Call Samplehead(fromdate, ToDate, CInt(pg1), PoType)
        Set rs2 = New Recordset
        strSQL = " SELECT f.slname,d.varname,a.SNO,a.DATE,a.SUPCODE,e.slname AS brname,a.VARCODE,a.STAPLEN25,a.STAPLEN50,a.TRASH_PER,a.MICRONAIRE,a.STRENGTH, " & _
                 " a.MCOEFF,a.UNIRATIO,a.STAPHANDTEST,a.HVITEST,a.MOITURE,a.AVGCOUNT,a.YARNAPP, a.csp ,a.tpi, a.avrstrength ,rd, bplus, " & _
                 " a.corr_strenth , a.spot_for , a.rate ,a.prno ,a.prty_sampno,a.brokercode,a.station_code,a.POTYPE,a.GRADE,a.GTEX, " & _
                 " a.COLOR,a.AREA_CODE,a.STATION_NAME,a.CROP_YEAR,a.state_code,a.remarks,a.yellowtouch,a.immature,a.SCI,a.PLOTNO," & _
                 " a.SHORTFIBRE,a.COLOURGRADE,a.QUANTITY,a.FQI, c.Areaname,c.Station FROM RM_SAMPLE a,rm_area c, fa_slmas e, rm_var d,fa_slmas f " & _
                 " where a.varcode = d.varcode and a.AREA_CoDe = c.areacode and a.supcode = f.slcode and a.brokercode = e.slcode " & _
                 " and a.Date Between '" & Format(fromdate, "yyyy-MM-dd") & "' and '" & Format(ToDate, "yyyy-MM-dd") & "'" & _
                 " and a.Supcode Between '" & FromSupplier & "' and '" & ToSupplier & "'" & _
                 " and a.varcode Between '" & FromVariety & "' and '" & ToVariety & "'" & _
                 " AND  a.divcode='" & Divcode & "'"
                 
        If PoType <> "All" Then
                 strSQL = strSQL + " and a.POTYPE = '" & PoType & "' order by a.Date,a.Supcode,a.varcode"
        Else
                 strSQL = strSQL + " order by a.Date,a.Supcode,a.varcode"
        End If
        
        rs2.Open strSQL, cn, adOpenStatic
        If PoType <> "With Basic Sample" Then
        
            Do While Not rs2.EOF
                Print #1,
                Print #1, Space(1) & Chr(27) + "E" & Padr(rs2("SNo"), 9, " ") & Space(2) & Padr(Format(rs2("date"), "dd/MM/yy"), 10, " ") & Space(2) & Padr(rs2("prty_sampno"), 10, " ") & Space(2) & Padr(rs2("slname"), 30, " ") & Space(2) & Padr(rs2("brname"), 25, " ") & Space(2) & Padr(rs2("varname"), 18, " ") & Space(2) & Padr(rs2("Areaname"), 18, " ") & Space(2) & Padr(rs2("station"), 12, " ") & Chr(27) + "E"
                Print #1, Space(1) & Padr(INF(rs2("MICRONAIRE"), 1), 3, " ") & Space(2) & Padl(INF(rs2("GTEX"), 2), 6, " ") & Space(2) & Padl(INF(rs2("TRASH_PER"), 1), 8, " ") & Space(2) & Padl(INF(rs2("SHORTFIBRE"), 2), 11, " ") & Space(2) & Padl(rs2("PLOTNO"), 16, " ") & Space(1) & Padl(rs2("prno"), 9, " ") & Space(1) & Padl(INF(rs2("Quantity"), 0), 9, " ") & Space(1) & Padl(INF(rs2("Rate"), 4), 10, " ") & Space(1) & Padl(INF(rs2("FQI"), 0), 6, " ") & Space(1) & Padl(INF(rs2("SCI"), 0), 5, " ") & Space(1) & Padl(INF(rs2("rd"), 0), 5, " ") & Space(1) & Padl(INF(rs2("bplus"), 0), 6, " ") & Space(2) & Padr(rs2("Color"), 8, " ") & Space(1) & Padr(rs2("ColourGraDE"), 14, " ") & Space(2) & Padr(rs2("rEMARKS"), 15, " ")
                co = co + 3
                If co >= 61 Then
                    co = 0
                    Print #1,
                    Print #1, Space(1) & String(150, "-")
                    Print #1, Chr(12)
                    Call Samplehead(CStr(fromdate), CStr(ToDate), CStr(pg1), PoType)
                End If
            rs2.MoveNext
            Loop
        
        Else
        
            Do While Not rs2.EOF
                Print #1,
                Print #1, Space(1) & Chr(27) + "E" & Padr(rs2("SNo"), 9, " ") & Space(2) & Padr(Format(rs2("date"), "dd/MM/yy"), 10, " ") & Space(2) & Padr(rs2("prty_sampno"), 10, " ") & Space(2) & Padr(rs2("slname"), 30, " ") & Space(2) & Padr(rs2("brname"), 25, " ") & Space(2) & Padr(rs2("varname"), 18, " ") & Space(2) & Padr(rs2("Areaname"), 18, " ") & Space(2) & Padr(rs2("station"), 12, " ") & Chr(27) + "F"
                Print #1, Space(1) & Padl(INF(rs2("STAPLEN25"), 2), 9, " ") & Space(2) & Padl(INF(rs2("STAPLEN50"), 2), 8, " ") & Space(2) & Padl(INF(rs2("MICRONAIRE"), 1), 3, " ") & Space(2) & Padl(INF(rs2("TRASH_PER"), 1), 7, " ") & Space(2) & Padl(INF(rs2("UNIRATIO"), 2), 10, " ") & Space(2) & Padl(INF(rs2("MOITURE"), 2), 7, " ") & Space(2) & Padl(INF(rs2("SHORTFIBRE"), 2), 11, " ") & Space(2) & Padl(rs2("PLOTNO"), 13, " ") & Space(0) & Padl(rs2("prno"), 10, " ") & Space(1) & Padl(INF(rs2("Quantity"), 0), 4, " ") & Space(1) & Padl(INF(rs2("Rate"), 4), 10, " ") & Space(1) & Padl(INF(rs2("FQI"), 0), 6, " ") & Space(0) & Padl(INF(rs2("SCI"), 0), 6, " ") & Space(2) & Padr(rs2("Color"), 8, " ") & Space(0) & Padr(rs2("ColourGraDE"), 12, " ") & Space(0) & Padr(rs2("rEMARKS"), 8, " ")
                co = co + 3
                If co >= 61 Then
                    co = 0
                    Print #1,
                    Print #1, Space(1) & String(150, "-")
                    Print #1, Chr(12)
                    Call Samplehead(CStr(fromdate), CStr(ToDate), CStr(pg1), PoType)
                End If
            rs2.MoveNext
            Loop

        End If
            
Print #1, Space(1) & String(150, "-")
Print #1, Chr(12)
Close #1
Call KALBATPROCESS("soon")

End Sub
Private Sub Samplehead(FromDT As String, ToDT As String, pg1 As String, PoType As String)
Dim div As String
Print #1, Chr(18)
Print #1, Space(10) + Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
Print #1,
Print #1, Chr(15)
Print #1, Space(1) + Chr(27) + "E" + Space(0) & "Sample List from " & Space(1) + Chr(27) + "F" & Format(FromDT, "dd/MM/yy") & " to " & Format(ToDT, "dd/MM/yy") & Space(18) & Padl(" Option : " & PoType, 30, " ") & Space(30) & Format(Date, "DD/MM/YY") & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #1, Space(1) & String(150, "-")
Print #1, Space(1) + Chr(27) + "E" + "Mill                   Supplier    Supplier                        Broker                     Variety             Area                Station "
Print #1, Space(1) & "Sample No.     Date    Sample No.                                                                                                                     "
If PoType <> "With Basic Sample" Then
    Print #1, Space(1) & "MIC   G.Tex   Trash %  Short Fibre  Supplier Lot No.    PR No.  Quantity  Rate/Unit    FQI   SCI    RD     +b  Colour   Colour Grade    Remarks "
Else
    Print #1, Space(1) & "2.5% S.L.  50% S.L.  MIC  Trash %  Uni. Ratio  Moiture  Short Fibre   Sup. Lot No.    PR No.  Qty  Rate/Unit    FQI   SCI  Colour  Col. Grade  Remarks " + Chr(27) + "F"
End If
Print #1, Space(1) & String(150, "-")

co = co + 10
End Sub

