Attribute VB_Name = "ArewiseSupplierwisePur"
Dim rs5 As Recordset
Dim RS6 As Recordset
Dim rs7 As Recordset
Dim Namers As Recordset
Dim VarName As String
Dim ResultRs As Recordset
'Dim groupingrs As Recordset

Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14, tot15 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim s1, s2 As String
Dim z As Integer
Dim rp As New rmireports
Public Sub AWSWPUR(C As String, footerstr As String)
tot11 = 0
tot12 = 0
tot15 = 0
tot13 = 0
tot14 = 0
    Set cnn = New Connection
    cnn.Provider = "MSDATASHAPE"
    cnn.Open connectstring
    Set RPTV = New Report.ReportView
    S = FreeFile
    Close #11
   ' Open "C:\ASW.TXT" For Output As #11
    Open KALFOLDERDATA & "\ASW.TXT" For Output As #11
    pg1 = 1
    Co = 0
    'Print #11, Chr(15)
    z = FreeFile
    Call LotstockRepHeader(pg1)
    
    vrectype = Trim(Left(C, 3))
        If vrectype = "A" Then
            tmptypestr = "a.LotType"
        Else
            tmptypestr = "a.TransferType"
        End If

    
    Set rs5 = New Recordset
    If vrectype <> "ALL" Then
    rs5.Open "select distinct a.areacd,d.areaname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd *= d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "'and " & tmptypestr & "= '" & Trim(vrectype) & " ' order by a.areacd ", cnn, adOpenStatic
    Else
    rs5.Open "select distinct a.areacd,d.areaname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd *= d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' order by a.areacd ", cnn, adOpenStatic
    End If
    
    If rs5.EOF = True Then
    MsgBox "No Records Found", vbInformation
    Screen.MousePointer = 0
    Exit Sub
    End If
    
    Do While Not rs5.EOF
        
        
        If vrectype <> "ALL" Then
        If IsNull(rs5("AREACD")) = True Then
            Set RS6 = New Recordset
            RS6.Open "select distinct a.areacd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd *= d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and " & tmptypestr & "= '" & Trim(vrectype) & " ' and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "'  and a.areacd IS NULL order by a.areacd,supcd,c.slname ", cnn, adOpenStatic
        Else
            Set RS6 = New Recordset
            RS6.Open "select distinct a.areacd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and " & tmptypestr & "= '" & Trim(vrectype) & " 'and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "'  and a.areacd = '" & rs5(0) & "' order by a.areacd,supcd,c.slname ", cnn, adOpenStatic
        End If
        Else
        If IsNull(rs5("AREACD")) = True Then
            Set RS6 = New Recordset
            RS6.Open "select distinct a.areacd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd *= d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "'  and a.areacd IS NULL order by a.areacd,supcd,c.slname ", cnn, adOpenStatic
        Else
            Set RS6 = New Recordset
            RS6.Open "select distinct a.areacd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "'  and a.areacd = '" & rs5(0) & "' order by a.areacd,supcd,c.slname ", cnn, adOpenStatic
        End If
        End If
        
        
        Print #11, Space(5) & Padr(rs5(1), 25, " ") & Padr("", (RS6(2).DefinedSize), " ")
                Co = Co + 1
                If Co >= PageLen Then
                    Print #11, Space(5) & String(100, "-");
                    Print #11, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call LotstockRepHeader(pg1)
                End If
                Print #11,
                Co = Co + 1
                If Co >= PageLen Then
                    Print #11, Space(5) & String(100, "-");
                    Print #11, Chr(12)
                    Co = 0
                    pg1 = pg1 + 1
                    Call LotstockRepHeader(pg1)
                End If
        
            tot6 = 0
            tot7 = 0
            tot8 = 0
            tot9 = 0
            tot10 = 0
            tot1 = 0
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
            
            Co = Co + 1
            Do While Not RS6.EOF
              If vrectype <> "ALL" Then
                If IsNull(RS6("AREACD")) = True Then
                    Set rs7 = New Recordset
                    rs7.Open "select distinct a.areacd,a.supcd,c.slname as supname,lotdt,a.varcode,lotno,a.catcd,bale=(bales),Unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),ratekg as ratekgs, ratequtl=round(Favaourablewgt,2),value=round(Favaourablewgt*(isnull(ratekg,0)),2) from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd *= d.areacode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' and a.areacd IS NULL and a.supcd = '" & RS6(1) & "' order by lotno,lotdt,a.varcode,a.catcd ", cnn, adOpenStatic
                Else
                    Print #11, Space(5) & Padr("", 25, " ") & Padr(RS6(2), (RS6(2).DefinedSize), " ")
                    Co = Co + 1
                    Set rs7 = New Recordset
                    'rs7.Open "select distinct a.areacd,a.supcd,c.slname as supname,lotdt,a.varcode,lotno,a.catcd,bale=(bales),Unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),ratekg as ratekgs, ratequtl=round(netwt,2),value=netwt*round((isnull(ratecy,0)/355.6187),2) from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' and a.areacd = '" & RS6(0) & "' and a.supcd = '" & RS6(1) & "' order by lotno,lotdt,a.varcode,a.catcd ", cnn, adOpenStatic
                    rs7.Open "select distinct a.areacd,a.supcd,c.slname as supname,lotdt,a.varcode,lotno,a.catcd,bale=(bales),Unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),ratekg as ratekgs, ratequtl=round(Favaourablewgt,2),value=round(Favaourablewgt*(isnull(ratekg,0)),2) from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and " & tmptypestr & "= '" & Trim(vrectype) & " 'and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' and a.areacd = '" & RS6(0) & "' and a.supcd = '" & RS6(1) & "' order by lotno,lotdt,a.varcode,a.catcd ", cnn, adOpenStatic
                End If
                Else
                If IsNull(RS6("AREACD")) = True Then
                    Set rs7 = New Recordset
                    rs7.Open "select distinct a.areacd,a.supcd,c.slname as supname,lotdt,a.varcode,lotno,a.catcd,bale=(bales),Unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),ratekg as ratekgs, ratequtl=round(Favaourablewgt,2),value=round(Favaourablewgt*(isnull(ratekg,0)),2) from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd *= d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' and a.areacd IS NULL and a.supcd = '" & RS6(1) & "' order by lotno,lotdt,a.varcode,a.catcd ", cnn, adOpenStatic
                Else
                    Print #11, Space(5) & Padr("", 25, " ") & Padr(RS6(2), (RS6(2).DefinedSize), " ")
                    Co = Co + 1
                    Set rs7 = New Recordset
                    'rs7.Open "select distinct a.areacd,a.supcd,c.slname as supname,lotdt,a.varcode,lotno,a.catcd,bale=(bales),Unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),ratekg as ratekgs, ratequtl=round(netwt,2),value=netwt*round((isnull(ratecy,0)/355.6187),2) from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' and a.areacd = '" & RS6(0) & "' and a.supcd = '" & RS6(1) & "' order by lotno,lotdt,a.varcode,a.catcd ", cnn, adOpenStatic
                    rs7.Open "select distinct a.areacd,a.supcd,c.slname as supname,lotdt,a.varcode,lotno,a.catcd,bale=(bales),Unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),ratekg as ratekgs, ratequtl=round(Favaourablewgt,2),value=round(Favaourablewgt*(isnull(ratekg,0)),2) from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' and a.areacd = '" & RS6(0) & "' and a.supcd = '" & RS6(1) & "' order by lotno,lotdt,a.varcode,a.catcd ", cnn, adOpenStatic
                End If
                End If
                
                
                Do While Not rs7.EOF
                        Set Namers = New Recordset
                        Namers.Open "Select varname from rm_var where varcode='" & rs7("VARCODE") & "'", db, adOpenStatic
                        If Not Namers.EOF Then VarName = Namers(0)
                    
                
                    Print #11, Space(5) & Padl(IIf(IsNull(rs7(5)), " ", rs7(5)), 6, " ") & Space(1) & Padl(Format(rs7(3), "dd/mm/yy"), 10, " ") & Space(1) & Padr(rs7(6), 10, " ") & Padr(VarName, 22, " ") & Space(1) & Padl(IIf(IsNull(rs7(7)), " ", rs7(7)), 5, " ") & Space(2) & Padr(rs7("unit"), 5, " ") & Space(1) & IIf(rs7(9) = 0, Space(9), Padl(CStr(rs7(9)), 9, " ")) & Space(0) & IIf(rs7(10) = 0, Space(12), Padl(CStr(INF(rs7(10), 3)), 12, " ")) & Space(3) & IIf(rs7(11) = 0, Space(12), Padl(CStr(INF(rs7(11), 2)), 12, " "))
                    Co = Co + 1
                    tot1 = tot1 + IIf(IsNull(rs7(7)), 0, rs7(7))    'bales
                    tot5 = tot5 + IIf(IsNull(rs7(11)), 0, rs7(11)) 'value
                    tot6 = tot6 + IIf(IsNull(rs7(10)), 0, rs7(10)) 'kgs
                    rs7.MoveNext
                    If Co >= PageLen Then
                        Print #11, Space(5) & String(100, "-");
                        Print #11, Chr(12)
                        Co = 0
                        pg1 = pg1 + 1
                        Call LotstockRepHeader(pg1)
                    End If
               Loop
               RS6.MoveNext
               If Co >= PageLen Then
                    Print #11, Space(5) & String(100, "-");
                    Print #11, Chr(12)
                    Co = 0
                    pg1 = pg1 + 1
                    Call LotstockRepHeader(pg1)
               End If
               
        Loop
            If rs7.RecordCount > 1 Or RS6.RecordCount > 1 Then
                Print #11,
                Co = Co + 1
                Print #11, Space(17) + "  **  Station Total  **  " + Space(14) & Padl(INF(IIf(Trim(tot1) = 0, " ", tot1), 0), 5, " ") & Space(1) & Padl(IIf(Trim(tot2) = 0, " ", tot2), 5, " ") & Padl(INF(IIf(tot6 = 0, " ", tot6), 3), 23, " ") & Padl(INF(IIf(tot5 = 0, " ", tot5), 2), 15, " ")
                Co = Co + 1
'                tot11 = tot11 + Tot1    'grandtotal bales
'                tot12 = tot12 + tot2    'grandtotal bora
'                tot15 = tot15 + tot5   'grandtotal value
                Print #11,
                Co = Co + 1
            End If
            
    rs5.MoveNext
'     Print #11,
'    co = co + 1
    If Co >= PageLen Then
        Print #11, Space(5) & String(100, "-");
        Print #11, Chr(12)
        Co = 0
        pg1 = pg1 + 1
        Call LotstockRepHeader(pg1)
    End If
    tot11 = tot11 + tot1    'grandtotal bales
    tot12 = tot12 + tot2    'grandtotal bora
    tot15 = tot15 + tot5   'grandtotal value
    tot13 = tot13 + tot6   'grandtotal Kgs
Loop
    Print #11, Space(5) & String(100, "-")
    Print #11, Space(19) + "  **  Grand Total  **  " + Space(11) & Padl(INF(IIf(Trim(tot11) = 0, " ", tot11), 0), 8, " ") & Space(1) & Padl(IIf(Trim(tot12) = 0, " ", tot12), 5, " ") & Padl(INF(IIf(tot13 = 0, " ", tot13), 3), 23, " ") & Padl(INF(tot15, 2), 15, " ")
    Co = Co + 1
    Print #11, Space(5) & String(100, "-")
    Co = Co + 1
    Print #11,
    Print #11,
    Print #11,
 Call footermod(CInt(11), footerstr, 85)
    Close #11
   ' 11 = FreeFile
'    Open "c:\ASW.bat" For Output As #11
'    Print #11, "cd\"
'    Print #11, "c:"
'    Print #11, "cd\"
'    Print #11, "type ASW.TXT>prn"
'    Close #11
'    RPTV.txtfile = "c:\ASW.TXT"
'    RPTV.Batfile = "c:\ASW.bat"
Call KALBATPROCESS("ASW")
    Screen.MousePointer = 0
End Sub
Public Sub LotstockRepHeader(pg1 As Integer)
a = a1
          Print #11,
          Print #11, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #11, Chr(27) & Chr(205) & Chr(27) & Chr(77)
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          'Stationwise,Supplierwise Purchase Analysis
          Print #11, Space(5) + "Stationwise,Supplierwise Purchase analysis" + Space(1); "from" + Space(1) + Format(f1, "DD/MM/YY") + Space(1) + "to" + Space(2) + Format(t1, "DD/MM/YY") + Space(12) + Format(SR, "dd/mm/yy") + Space(3) + "Pg.: " + Padl(CStr(pg1), 3, " ")
          Print #11, Space(5) + String(100, "-")
          Print #11, Space(5) + "Station Name" + Space(0) + Space(14) + "Supplier Name"
          Print #11, Space(5) + "Lot No" + Space(1) + "  Arr.Date" + Space(1) + "Category" + Space(2) + "Variety" + Space(16) + "  Qty" + Space(1) + " Unit" + Space(3) + " Rate/Kg" + Space(2) + "Net Weight" + Space(3) + Padl("Value", 12, " ")
          Print #11, Space(5) & String(100, "-")
          Co = Co + 8
End Sub
