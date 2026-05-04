Attribute VB_Name = "BrokerwiseDatewisePur"
Dim rs5 As Recordset
Dim RS6 As Recordset
Dim rs7 As Recordset
Dim Namers As Recordset
Dim VarName As String
Dim rs4 As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim tot4, tot5, tot6, tot7 As Double
Dim c1 As Integer
Dim Cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S, s1, s2 As String
Dim z As Integer
Dim rp As New rmireports
 
Public Sub BandDPur(a As String, b As String, C As String, footerstr As String)
Screen.MousePointer = 11
Set Cnn = New Connection
a1 = a
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set RPTV = New Report.ReportView
z = FreeFile
Close #11
'Open "C:\BDP.TXT" For Output As #11
 Open KALFOLDERDATA & "\BDP.TXT" For Output As #11
pg1 = 1: Co = 0
Print #11, Chr(15)
z = FreeFile
s1 = a
s2 = b
Call LotstockRepHeader(pg1)
Co = 10
tot8 = 0: tot9 = 0
tot10 = 0: tot11 = 0
vrectype = Trim(Left(C, 3))

        If vrectype = "A" Then
            tmptypestr = "a.LotType"
        Else
            tmptypestr = "a.TransferType"
        End If


Set rs5 = New Recordset
If vrectype <> "ALL" Then
rs5.Open "select distinct a.brkcd,c.slname as brkname from rm_lot a left join fa_slmas c on a.brkcd = c.slcode  where a.divcode='" & Divcode & "' and a.arrdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and " & tmptypestr & "= '" & Trim(vrectype) & " ' order by a.brkcd ", Cnn, adOpenStatic
Else
rs5.Open "select distinct a.brkcd,c.slname as brkname from rm_lot a,fa_slmas c  where a.brkcd *= c.slcode and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "'  order by a.brkcd ", Cnn, adOpenStatic
End If
If rs5.RecordCount = 0 Then
   Close #11
   MsgBox "No Record Found", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
End If
Do While Not rs5.EOF
   tot4 = 0: tot5 = 0
   tot6 = 0: tot7 = 0
   Set RS6 = New Recordset
   If vrectype <> "ALL" Then
   If IsNull(rs5("BRKCD")) = True Then
      RS6.Open "select distinct a.brkcd,arrdt from rm_lot a,fa_slmas c  where  A.BRKCD*=C.SLCODE AND " & tmptypestr & "= '" & Trim(vrectype) & " ' and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' AND A.BRKCD IS NULL order by a.brkcd,arrdt ", Cnn, adOpenStatic, adLockBatchOptimistic
   Else
      RS6.Open "select distinct a.brkcd,arrdt from rm_lot a,fa_slmas c  where  A.BRKCD=C.SLCODE AND a.divcode='" & Divcode & "' and a.arrdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' AND A.BRKCD='" & rs5("BRKCD") & "' and " & tmptypestr & "= '" & Trim(vrectype) & " ' order by a.brkcd,arrdt ", Cnn, adOpenStatic, adLockBatchOptimistic
   End If
   Else
   If IsNull(rs5("BRKCD")) = True Then
      RS6.Open "select distinct a.brkcd,arrdt from rm_lot a,fa_slmas c  where  A.BRKCD*=C.SLCODE AND  a.divcode='" & Divcode & "' and a.arrdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' AND A.BRKCD IS NULL order by a.brkcd,arrdt ", Cnn, adOpenStatic, adLockBatchOptimistic
   Else
      RS6.Open "select distinct a.brkcd,arrdt from rm_lot a,fa_slmas c  where  A.BRKCD=C.SLCODE AND a.divcode='" & Divcode & "' and a.arrdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' AND A.BRKCD='" & rs5("BRKCD") & "' order by a.brkcd,arrdt ", Cnn, adOpenStatic, adLockBatchOptimistic
   End If
   End If
'   If RS6.RecordCount = 0 Then
'      MsgBox "No Records Found", vbInformation, head
'      Exit Sub
'   End If
If RS6.RecordCount = 0 Then
GoTo BDP
End If
   Print #11, Space(5) & Padr(rs5("BRKNAME"), 37, " ") & Padr(RS6("ARRDT"), 10, " ")
BDP:   Co = Co + 1
   If Co >= PageLen Then
      Print #11, Space(5) + String(157, "-");
      Print #11, Chr(12)
      Co = 0
      Call LotstockRepHeader(pg1)
      Co = 10
   End If
                            
   Do While Not RS6.EOF
      tot1 = 0
      tot3 = 0
      tot = 0
      Set rs7 = New Recordset
      If vrectype <> "ALL" Then
      If IsNull(RS6("BRKCD")) = True Then
      rs7.Open "select distinct a.brkcd,arrdt,a.supcd,c.slname as supname,a.varcode," & _
                  " lotno,a.catcd,bale=bales,unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(ratekg,2) as ratekgs, " & _
                  " ratequtl=round(fAVAOURABLEWGT,2),value=ROUND(fAVAOURABLEWGT*(isnull(ratekg,0)),2) from rm_lot a,rm_var b,fa_slmas c  where a.supcd *= c.slcode " & _
                  " and a.varcode=b.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and a.catcd = b.catcd and a.divcode='" & Divcode & "' and  A.BRKCD IS NULL AND ARRDT='" & Format(RS6("ARRDT"), "yyyy-mm-dd") & "' order by a.brkcd,arrdt,a.varcode,lotno,a.catcd ", Cnn, adOpenStatic, adLockBatchOptimistic
      Else
        rs7.Open "select distinct a.brkcd,arrdt,a.supcd,c.slname as supname,a.varcode," & _
                  " lotno,a.catcd,bale=bales,unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(ratekg,2) as ratekgs, " & _
                  " ratequtl=round(fAVAOURABLEWGT,2),value=ROUND(fAVAOURABLEWGT*(isnull(rateKG,0)),2) from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode " & _
                  " and a.varcode=b.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and a.catcd = b.catcd and a.divcode='" & Divcode & "' and  A.BRKCD='" & RS6("BRKCD") & "' AND ARRDT='" & Format(RS6("ARRDT"), "yyyy-mm-dd") & "' order by a.brkcd,arrdt,a.varcode,lotno,a.catcd ", Cnn, adOpenStatic, adLockBatchOptimistic
      End If
      Else
      If IsNull(RS6("BRKCD")) = True Then
      rs7.Open "select distinct a.brkcd,arrdt,a.supcd,c.slname as supname,a.varcode," & _
                  " lotno,a.catcd,bale=bales,unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(ratekg,2) as ratekgs, " & _
                  " ratequtl=round(fAVAOURABLEWGT,2),value=ROUND(fAVAOURABLEWGT*(isnull(ratekg,0)),2) from rm_lot a,rm_var b,fa_slmas c  where a.supcd *= c.slcode " & _
                  " and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and  A.BRKCD IS NULL AND ARRDT='" & Format(RS6("ARRDT"), "yyyy-mm-dd") & "' order by a.brkcd,arrdt,a.varcode,lotno,a.catcd ", Cnn, adOpenStatic, adLockBatchOptimistic
      Else
        rs7.Open "select distinct a.brkcd,arrdt,a.supcd,c.slname as supname,a.varcode," & _
                  " lotno,a.catcd,bale=bales,unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),round(ratekg,2) as ratekgs, " & _
                  " ratequtl=round(fAVAOURABLEWGT,2),value=ROUND(fAVAOURABLEWGT*(isnull(rateKG,0)),2) from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode " & _
                  " and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and  A.BRKCD='" & RS6("BRKCD") & "' AND ARRDT='" & Format(RS6("ARRDT"), "yyyy-mm-dd") & "' order by a.brkcd,arrdt,a.varcode,lotno,a.catcd ", Cnn, adOpenStatic, adLockBatchOptimistic
      End If
      
      End If
      
                                             
      Do While Not rs7.EOF
         Set Namers = New Recordset
         Namers.Open "Select varname from rm_var where varcode='" & rs7("VARCODE") & "'", db, adOpenStatic
         If Not Namers.EOF Then VarName = Namers(0)
         'Print #11, Space(19) & Padl(rs7("LOTNO"), 8, " ") & Space(2) & Padr(rs7("supname"), 37, " ") & Space(2) & Padr(rs7("catcd"), 8, " ") & Space(3) & Padr(rs7("varcode"), 10, " ") & Space(3) & Padl(IIf(IsNull(rs7("BALE")), " ", rs7("bale")), 5, " ") & Space(3) & Padl(IIf(IsNull(rs7("borah")), " ", rs7("borah")), 5, " ") & Space(1) & Padl(Format(IIf(rs7("ratekgs") = 0, " ", rs7("ratekgs")), "###,###.00"), 10, " ") & Space(1) & Padl(Format(IIf(rs7("ratequtl"), " ", rs7("ratequtl")), "###,##0.000"), 11, " ") & Space(2) & Padl(Format(IIf(rs7("value") = 0, " ", rs7("value")), "##,###,##0.00"), 15, " ")
         Print #11, Space(19) & Padl(rs7("LOTNO"), 8, " ") & Space(2) & Padr(rs7("supname"), 37, " ") & Space(2) & Padr(rs7("catcd"), 8, " ") & Space(3) & Padr(VarName, 22, " ") & Space(3) & Padl(IIf(IsNull(rs7("BALE")), " ", rs7("bale")), 5, " ") & Space(4) & Padr(rs7("unit"), 5, " ") & Padl(INF(rs7("ratekgs"), 2), 10, " ") & Space(1) & _
         Padl(INF(rs7("ratequtl"), 2), 16, " ") & Space(2) & Padl(Format(IIf(rs7("value") = 0, " ", rs7("value")), "##,###,##0.00"), 15, " ")
                                    
         Co = Co + 1
         If Co >= PageLen Then
            Print #11, Space(5) + String(157, "-");
            Print #11, Chr(12)
            Co = 0
            Call LotstockRepHeader(pg1)
            Co = 10
         End If
         tot = tot + IIf(IsNull(rs7("BALE")), 0, rs7("BALE"))
         tot1 = tot1 + Round(rs7("ratekgs"), 2)
         tot2 = tot2 + Round(rs7("ratequtl"), 2)
         tot3 = tot3 + rs7("value")
         tot4 = tot4 + IIf(IsNull(rs7("BALE")), 0, rs7("bale"))
         tot5 = tot5 + rs7("ratekgs")
         tot6 = tot6 + rs7("ratequtl")
         tot7 = tot7 + rs7("value")
         tot8 = tot8 + IIf(IsNull(rs7("BALE")), 0, rs7("bale"))
         tot9 = tot9 + Round(rs7("ratekgs"), 2)
         tot10 = tot10 + Round(rs7("ratequtl"), 2)
         tot11 = tot11 + rs7("value")
         rs7.MoveNext
                                    
      Loop
                                    
      Print #11,
      Co = Co + 1
      If Co >= PageLen Then
         Print #11, Space(5) + String(157, "-");
         Print #11, Chr(12)
         Co = 0
         Call LotstockRepHeader(pg1)
         Co = 10
      End If
      Print #11,
      Co = Co + 1
      If Co >= PageLen Then
         Print #11, Space(5) + String(157, "-");
         Print #11, Chr(12)
         Co = 0
         Call LotstockRepHeader(pg1)
         Co = 10
      End If
      RS6.MoveNext
   Loop
   Print #11, Space(69); Chr(27); "E" & "  **  Broker Total  **" & Space(11) & Padl(INF(tot4, 0), 7, " ") & Space(6) & Padl(INF(0, 2), 13, " ") & Space(1) & Padl(INF(tot2, 2), 16, " ") & Space(2) & Padl(INF(tot7, 2), 15, " "); Chr(27); "F"
   tot2 = 0
   tot7 = 0
   Co = Co + 1
   If Co >= PageLen Then
      Print #11, Space(5) + String(157, "-");
      Print #11, Chr(12)
      Co = 0
      Call LotstockRepHeader(pg1)
      Co = 10
   End If
         
   rs5.MoveNext
Loop
Print #11, Space(5) + String(157, "-")
Co = Co + 1
If Co >= PageLen Then
   Print #11, Space(5) + String(157, "-");
   Print #11, Chr(12)
   Co = 0
   Call LotstockRepHeader(pg1)
   Co = 10
End If
Print #11, Space(69); Chr(27); "E"; "  **  Grand Total  **  " & Space(5) & Padl(INF(tot8, 0), 12, " "); Space(19) & Space(1) & Padl(INF(tot10, 2), 16, " ") & Space(2) & Padl(INF(tot11, 2), 15, " "); Chr(27); "F"
Co = Co + 1
If Co >= PageLen Then
   Print #11, Space(5) + String(157, "-");
   Print #11, Chr(12)
   Co = 0
   Call LotstockRepHeader(pg1)
   Co = 10
End If
Print #11, Space(5) + String(157, "-")
'co = co + 1
'If co >= PageLen Then
'   Print #11, Space(5) + String(157, "-");
'   Print #11, Chr(12)
'   co = 0
'   Call LotstockRepHeader(pg1)
'   co = 10
'End If
    
Print #11, Chr(18)
Print #11, Chr(12)
 Call footermod(CInt(11), footerstr, 85)
Close #11
        
'11 = FreeFile
'Open "C:\BDP.bat" For Output As #11
'Print #11, "cd\"
'Print #11, "C:"
'Print #11, "cd\"
'Print #11, "type BDP.TXT>prn"
'Close #11
'RPTV.txtfile = "C:\BDP.TXT"
'RPTV.Batfile = "C:\BDP.bat"
Call KALBATPROCESS("BDP")
End Sub

Public Sub LotstockRepHeader(pg1 As Integer)
a = a1
Print #11, Chr(18)
Print #11, Space(5) + Chr(27) + "E"; CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
Print #11,
SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
Print #11, Space(3) + Chr(27) + "E" + "Brokerwise and Datewise Purchase from" + Chr(27) + "F" + Space(2) + Format(Trim(s1), "DD/MM/YYYY") + Space(2) + "To" + Space(2) + Format(Trim(s2), "DD/MM/YYYY")
Print #11, Space(61) + CStr(SR) + "Pg.No : " + CStr(pg1) + Chr(15)
Print #11, Space(5) + String(157, "-")
Print #11, Space(5) + "Broker" & Space(30) & "Arrival Date"
Print #11, Space(19) & "  Lot No  Party                                  Category   Variety                    Qty    Unit    Rate/Kg       Net Weight           Amount"
'Print #11,  + "                                    Rate(Rs)                       "
Print #11, Space(5) + String(157, "-")
Screen.MousePointer = 0
End Sub

Public Sub BandDPurCRY(a As String, b As String, C As String, footerstr As String)
Screen.MousePointer = 11
Set Cnn = New Connection
a1 = a
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
s1 = a
s2 = b
vrectype = Trim(Left(C, 3))
On Error Resume Next
    Cnn.Execute "drop table TMP_RMI_BANDDPUR"
    If vrectype = "A" Then
        tmptypestr = "a.LotType"
    Else
        tmptypestr = "a.TransferType"
    End If
    Set rs7 = New Recordset
    If vrectype <> "ALL" Then
        rs7.Open "SELECT * INTO TMP_RMI_BANDDPUR FROM (select a.brkcd,D.slname BRKNAME,A.AREACD,E.AREANAME,E.STATION,arrdt,a.supcd,c.slname as supname,a.varcode,B.VARNAME,lotno,a.catcd,bale=bales,unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),ratekg as ratekgs,NETWT=round(fAVAOURABLEWGT,2)," & _
                "value=A.TOTLANDCOST  from rm_lot a inner join rm_var b on a.varcode=b.varcode and a.catcd = b.catcd left join fa_slmas c on a.supcd = c.slcode left join FA_SLMAS D on A.BRKCD = D.slcode left join RM_AREA E on A.AREACD = E.AREACODE where " & tmptypestr & "= '" & Trim(vrectype) & " ' and a.divcode='" & Divcode & "'" & _
                "AND ARRDT Between '" & Format(a, "YYYY-MM-DD") & "' AND '" & Format(b, "YYYY-MM-DD") & "')X", Cnn, adOpenStatic
    Else
        rs7.Open "SELECT * INTO TMP_RMI_BANDDPUR FROM (select a.brkcd,D.slname BRKNAME,A.AREACD,E.AREANAME,E.STATION,arrdt,a.supcd,c.slname as supname,a.varcode,B.VARNAME,lotno,a.catcd,bale=bales,unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),ratekg as ratekgs,NETWT=round(fAVAOURABLEWGT,2)," & _
                "value=A.TOTLANDCOST  from rm_lot a inner join rm_var b on a.varcode=b.varcode and a.catcd = b.catcd left join fa_slmas c on a.supcd = c.slcode  left join FA_SLMAS D on A.BRKCD = D.slcode left join RM_AREA E on A.AREACD = E.AREACODE where  a.divcode='" & Divcode & "'" & _
                "AND ARRDT Between '" & Format(a, "YYYY-MM-DD") & "' AND '" & Format(b, "YYYY-MM-DD") & "')X", Cnn, adOpenStatic
    End If
    If Repindex = 73 Then
        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_aanddpur.rpt"
        FrmRpt.RptHead = 1
        parameter1 = DIVNAME
        rephead = Format(a, "DD/MM/YY") & " To " & Format(b, "DD/MM/YY")
        FrmRpt.Show
        
    Else
        ''FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_banddpur.rpt"
    End If
    Screen.MousePointer = 0
End Sub




