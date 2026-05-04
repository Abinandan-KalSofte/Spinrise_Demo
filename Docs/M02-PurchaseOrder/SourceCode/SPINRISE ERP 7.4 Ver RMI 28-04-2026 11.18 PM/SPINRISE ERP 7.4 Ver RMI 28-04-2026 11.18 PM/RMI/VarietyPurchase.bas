Attribute VB_Name = "VarietyPurchase"
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim s1, s2 As String
Dim z As Integer
Dim t1 As Integer
Dim t2 As Integer
Dim chk As Integer
Dim Check As Integer
Dim rp As New repform

Public Sub VP(a As String, b As String, C As String, chk As Integer, Category As String, tpe As String, footerstr As String)
s1 = a
s2 = b
s3 = C
Check = chk
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
'dv1.rsCommand2_Grouping.Open "SHAPE {select distinct a.varcode,varname,a.areacode as areacd,areaname,lotdt,lotno, a.catcd,bales=(case bbflag when 'B' then quantity  end), borah=(case bbflag when 'R' then quantity end),ratecy/355.6 as ratekgs, ratequtl=(ratecy/355.6)*100,value=netwt*(ratecy/355.6) from rm_arrival a,rm_var b,rm_area c  where a.varcode=b.varcode and a.areacode=c.areacode and a.divcode='" & divcode & "' and a.arrdate Between '" & Format(DataCombo1.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'varcode','varname'", cn, adOpenStatic, adLockBatchOptimistic
Set RPTV = New Report.ReportView
    S = FreeFile
    Close #11
'    Open "C:\VP.TXT" For Output As #11
Open KALFOLDERDATA & "\VP.TXT" For Output As #11
    pg1 = 1
    Co = 0
    'Print #11, Chr(15)
    z = FreeFile
    Call LotstockRepHeader(pg1, CStr(Category))

    Set rs1 = New Recordset
        'rs1.Open "select distinct a.varcode,varname,a.areacode as areacd,areaname,lotdt,lotno, a.catcd,bales=(case bbflag when 'B' then quantity  end), borah=(case bbflag when 'R' then quantity end),ratecy/355.6 as ratekgs, ratequtl=(ratecy/355.6)*100,value=netwt*(ratecy/355.6) from rm_arrival a,rm_var b,rm_area c  where a.varcode=b.varcode and a.areacode=c.areacode and a.divcode='" & divcode & "' and a.arrdate Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
        ''''''''''''RS1.Open "SELECT DISTINCT A.VARCODE,b.varname from rm_lot a,rm_var b where b.varcode = a.varcode and divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
        vrectype = Trim(Left(tpe, 3))
        If vrectype = "A" Then
            tmptypestr = "a.LotType"
        Else
            tmptypestr = "a.TransferType"
        End If
If vrectype <> "ALL" Then
        If chk = 1 Then
            If C = "A" Then
                rs1.Open "SELECT DISTINCT A.VARCODE,b.varname from rm_lot a,rm_var b where  a.catcd=b.catcd and b.varcode = a.varcode and " & tmptypestr & " = '" & vrectype & "' and divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
            Else
                rs1.Open "SELECT DISTINCT A.VARCODE,b.varname from rm_lot a,rm_var b where a.catcd='" & C & "' and a.catcd=b.catcd and b.varcode = a.varcode and " & tmptypestr & " = '" & vrectype & "' and divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
            End If
        Else
            rs1.Open "SELECT DISTINCT A.VARCODE,b.varname from rm_lot a,rm_var b where b.varcode = a.varcode and " & tmptypestr & " = '" & vrectype & "' and divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
        End If
        Else
        If chk = 1 Then
            If C = "A" Then
                rs1.Open "SELECT DISTINCT A.VARCODE,b.varname from rm_lot a,rm_var b where  a.catcd=b.catcd and b.varcode = a.varcode and divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
            Else
                rs1.Open "SELECT DISTINCT A.VARCODE,b.varname from rm_lot a,rm_var b where a.catcd='" & C & "' and a.catcd=b.catcd and b.varcode = a.varcode and divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
            End If
        Else
            rs1.Open "SELECT DISTINCT A.VARCODE,b.varname from rm_lot a,rm_var b where b.varcode = a.varcode and divcode='" & Divcode & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
        End If
        
        End If
        
        If rs1.RecordCount <= 0 Then
            MsgBox ("No Records found"), vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        Else
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
            Do While Not rs1.EOF
                Print #11, Space(5) & Padr(rs1(1), 20, " ")
               ' Print #11,
                Co = Co + 1
                If Co >= PageLen Then
                        Print #11, Space(5) & String(140, "-");
                        Print #11, Chr(12)
                        pg1 = pg1 + 1
                        Call LotstockRepHeader(pg1, CStr(Category))
                        Co = 0
                    End If
                Set RS2 = New Recordset
                'rs2.Open "select a.areacode as areacd,areaname,lotno, a.catcd,bales=(case bbflag when 'B' then quantity  end), borah=(case bbflag when 'R' then quantity end),ratecy/355.6 as ratekgs, ratequtl=(ratecy/355.6)*100,value=netwt*(ratecy/355.6) from rm_arrival a,rm_var b,rm_area c  where a.varcode=b.varcode and a.areacode=c.areacode and a.divcode='" & Divcode & "' and a.varcode = '" & rs1(0) & "' and a.arrdate Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
                ''''''rs2.Open "select a.areacd as areacd,areaname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.varcode=b.varcode and a.areacd*=c.areacode and a.divcode='" & Divcode & "' and a.varcode = '" & RS1(0) & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
                If vrectype <> "ALL" Then
                If chk = 1 Then
                    If C = "A" Then
                        RS2.Open "select a.areacd as areacd,areaname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*ratekg),value1=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.catcd=b.catcd and a.varcode=b.varcode and a.areacd*=c.areacode and " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.varcode = '" & rs1(0) & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
                    Else
                        RS2.Open "select a.areacd as areacd,areaname,lotno, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs,ratekg, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*ratekg),value1=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.catcd='" & C & "' and a.catcd=b.catcd and a.varcode=b.varcode and " & tmptypestr & " = '" & vrectype & "' and a.areacd*=c.areacode and a.divcode='" & Divcode & "' and a.varcode = '" & rs1(0) & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
                    End If
                Else
                    RS2.Open "select a.areacd as areacd,areaname,lotno,ratekg, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*ratekg),value1=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.varcode=b.varcode and a.areacd*=c.areacode and " & tmptypestr & " = '" & vrectype & "' and a.divcode='" & Divcode & "' and a.varcode = '" & rs1(0) & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
                End If
                Else
                RS2.Open "select a.areacd as areacd,areaname,lotno,ratekg, a.catcd,bales=bales, unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(netwt,2) as ratekgs, ratequtl=round((isnull(ratecy,0)/355.6187),2),value=(netwt*ratekg),value1=(netwt*round((isnull(ratecy,0)/355.6187),2)) from rm_lot a,rm_var b,rm_area c  where a.varcode=b.varcode and a.areacd*=c.areacode and a.divcode='" & Divcode & "' and a.varcode = '" & rs1(0) & "' and a.arrdt Between '" & Format(s1, "yyyy-mm-dd") & "' and '" & Format(s2, "yyyy-mm-dd") & "'", cnn, adOpenStatic
                End If
                tot1 = 0
                t1 = 0
                t2 = 0
                t3 = 0
                Do While Not RS2.EOF
'                    Print #11, Space(5) + Padr("Source of Purchase", 34, " ")                                                     + Space(2) + Padr("Lotno", 5, " ")                                         + Space(2) + Padr("Bale", 4, " ")                                          + Space(2) + Padr("Borah", 5, " ")                                         + Space(2) + Padr("qty.In Kgs.", 10, " ")                                  + Space(2) + Padr("Rate / Qutl", 10, " ")                                  + Space(2) + Padr("Value", 5, " "); ""
                    'Print #11, Space(32) & Padr(rs2("areacd"), rs2("areacd").DefinedSize, " ") & Space(2) & Padr(rs2("areaname"), rs2("areaname").DefinedSize, " ") & Space(0) & Padl(IIf(IsNull(rs2("lotno")), " ", rs2(2)), 1, " ") & Space(8) & Padl(IIf(IsNull(rs2("bales")), " ", rs2("bales")), 5, " ") & Space(5) & Padl(IIf(IsNull(rs2("borah")), " ", rs2("borah")), 5, " ") & Space(2) & Padl(IIf(IsNull(rs2("ratekgs")), " ", Format(rs2("ratekgs"), "##,###,##0.000")), rs2("ratekgs").DefinedSize, " ") & Space(2) & Padl(IIf(IsNull(rs2("ratequtl")), " ", Format(rs2("ratequtl"), "##,###,###,##0.00")), rs2("ratequtl").DefinedSize, " ") & Space(2) & Padl(IIf(IsNull(rs2("value")), 0, Format(rs2("value"), "#,###,###,##0.00")), rs2("value").DefinedSize, " ")
                    
                    Print #11, Space(32) & Padr(RS2("areacd"), RS2("areacd").DefinedSize, " ") & Space(2) & Padr(RS2("areaname"), (RS2("areaname").DefinedSize) - 5, " ") & Space(2) & Padl(IIf(IsNull(RS2("lotno")), " ", RS2(2)), 4, " ") & Space(5) & Padl(IIf(IsNull(RS2("bales")), " ", RS2("bales")), 5, " ") & Space(3) & Padr(RS2("UNIT"), 5, " ") & Space(2) & Padl(IIf(IsNull(RS2("ratekgs")), " ", INF(RS2("ratekgs"), 2)), 14, " ") & Space(5) & Padl(IIf(IsNull(RS2("ratekg")), " ", INF(RS2("ratekg"), 2)), 16, " ") & Space(2) & Padl(IIf(IsNull(RS2("value")), " ", INF(RS2("value"), 2)), 19, " ")
                    'Print #11,
                    Co = Co + 1
                    If Co >= PageLen Then
                    Print #11, Space(5) & String(140, "-");
                        Print #11, Chr(12)
                        pg1 = pg1 + 1
                        Call LotstockRepHeader(pg1, CStr(Category))
                        Co = 0
                    End If
                    t1 = t1 + CDbl(IIf(IsNull(RS2("bales")), 0, RS2("bales")))
                    t3 = t3 + CDbl(IIf(IsNull(RS2("ratekgs")), 0, RS2("ratekgs")))
                    tot1 = tot1 + CDbl(RS2("ratekgs") * RS2("ratekg"))
                    RS2.MoveNext
                    If Co >= PageLen Then
                    Print #11, Space(5) & String(140, "-");
                        Print #11, Chr(12)
                        pg1 = pg1 + 1
                        Call LotstockRepHeader(pg1, CStr(Category))
                        Co = 0
                    End If
                Loop
                tot2 = tot2 + tot1
                tot3 = tot3 + t1
                tot4 = tot4 + t2
                tot5 = tot5 + t3
                If RS2.RecordCount > 1 Then
                Print #11,
                Co = Co + 1
                If Co >= PageLen Then
                Print #11, Space(5) & String(140, "-");
                        Print #11, Chr(12)
                        pg1 = pg1 + 1
                        Call LotstockRepHeader(pg1, CStr(Category))
                        Co = 0
                    End If
                Print #11, Space(41) & "  **  Variety Total  **  " & Space(6) & Padl(INF(str(t1), 0), 7, " ") & Padl(INF(str(t2), 0), 7, " ") & Padl(INF(str(t3), 2), 17, " ") & Space(23) & Padl(INF(str(tot1), 2), 19, " ")
                Co = Co + 1
                If Co >= PageLen Then
                        Print #11, Space(5) & String(140, "-");
                        Print #11, Chr(12)
                        pg1 = pg1 + 1
                        Call LotstockRepHeader(pg1, CStr(Category))
                        Co = 0
                    End If
                End If
                Print #11,
                Co = Co + 1
                If Co >= PageLen Then
                        Print #11, Space(5) & String(140, "-");
                        Print #11, Chr(12)
                        pg1 = pg1 + 1
                        Call LotstockRepHeader(pg1, CStr(Category))
                        Co = 0
                End If
                rs1.MoveNext
            Loop
        End If
        Print #11, Space(5) & String(140, "-")
        Print #11, Space(41) & "  **  Grand Total  **  " & Space(8) & Padl(INF(str(tot3), 0), 7, " ") & Padl(INF(str(tot4), 0), 7, " ") & Padl(INF(str(tot5), 2), 17, " ") & Space(23) & Padl(INF(str(tot2), 2), 19, " ")
        Print #11, Space(5) & String(140, "-")
        Print #11, Chr(18)
        Print #11, Chr(12)
 Call footermod(CInt(11), footerstr, 85)
        Close #11
         
         
         z = FreeFile
'        Open "c:\VP.bat" For Output As #11
'        Print #11, "cd\"
'        Print #11, "c:"
'        Print #11, "cd\"
'        Print #11, "type VP.TXT>prn"
'        Close #11
'        RPTV.txtfile = "c:\VP.TXT"
'        RPTV.Batfile = "c:\VP.bat"
      Call KALBATPROCESS("VP")

Screen.MousePointer = 0
End Sub
Public Sub LotstockRepHeader(pg1 As Integer, cat As String)
a = a1
'b = b
          Print #11, Chr(18)
          Print #11, Space(3) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #11, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #11, Space(5) + "Varierty Purchase analysis" + Space(1) + "from" + Space(2) + Format(Trim(s1), "DD/MM/YY") + Space(1) + "to" + Space(2) + Format(Trim(s2), "DD/MM/YY");
          If Check = 1 Then
            Print #11, Space(5) + "Category : " & Padr(cat, 25, " ") + Space(65 - 42) + Format(SR, "dd/mm/yy") + Space(4) + "Pg. : " + Padl(CStr(pg1), 3, " ") ' + Chr(15)
          Else
            Print #11, Space(65) + Format(SR, "dd/mm/yy") + Space(4) + "Pg. : " + Padl(CStr(pg1), 3, " ") ' + Chr(15)
          End If
          Print #11, Space(5) & String(140, "-")
          Print #11, Space(5) + Padr("Variety ", 20, " ") '+ Space(2) + Padr("Variety", 20, " ")
          Print #11, Space(5); Padr(" ", 27, " ") + Padr("Source of Purchase", 29, " ") + Space(2) + Padl("Lot No", 6, " ") + Space(5) + Padl("  Qty", 5, " ") + Space(2) + Padl(" Unit", 5, " ") + Space(2) + Padl(" NetWeight", 15, " ") + Space(2) + Padl("Rate/Kg     ", 19, " ") + Space(2) + Padl("Value", 19, " ")
          'Print #11,  + "                                    Rate(Rs)                       "
          Print #11, Space(5) & String(140, "-")
          Co = Co + 9
End Sub




