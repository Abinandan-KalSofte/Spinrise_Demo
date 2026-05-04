Attribute VB_Name = "BrokerandSupplierwisePur"
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim tot4, tot5, tot6, tot7 As Double
Dim tot8, tot9, tot10, tot11 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S, s1, s2 As String
Dim D1, D2 As String
Dim z As Integer
Public Sub BandSPur(D1 As String, D2 As String)

    'Call repproc2(brksuppur)
    Screen.MousePointer = 11
'    Set LB1 = brksuppur.Sections(2).Controls("list")

    Set cnn = New Connection
    a1 = a
    cnn.Provider = "MSDATASHAPE"
    cnn.Open connectstring
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #11
    'Open "C:\BSP.TXT" For Output As #11
     Open KALFOLDERDATA & "\BSP.TXT" For Output As #11
    pg1 = 1
    Co = 0
    Print #11, Chr(15)
     z = FreeFile
     s1 = f1
     s2 = t1
     
     Set rs1 = New Recordset
     rs1.Open "SHAPE {select distinct isnull(a.brkcd,'')brkcd,c.slname as brkname from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(D1, "YYYY-MM-DD") & "' and '" & Format(D2, "YYYY-MM-DD") & "' order by a.brkcd " & "}   AS Command5 APPEND (( SHAPE {select distinct a.brkcd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(D1, "YYYY-MM-DD") & "' and '" & Format(D2, "YYYY-MM-DD") & "' order by a.brkcd,a.supcd " & _
                         "}   AS Command6 APPEND ({select distinct isnull(a.brkcd,'')brkcd,a.supcd,c.slname as supname,arrdt,a.varcode,lotno,a.catcd,bale=(case bblflg when 'B' then bales  end),borah=(case bblflg when  IN ('R','H') then bales end),ratekg as ratekgs, ratequtl=netwt,value=netwt*(ratekg) from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(D1, "YYYY-MM-DD") & "' and '" & Format(D2, "YYYY-MM-DD") & "' order by a.brkcd,a.supcd,arrdt,a.varcode,lotno,a.catcd " & _
                         "}   AS Command7 RELATE 'supcd' TO 'supcd') AS Command7) AS Command6 RELATE 'brkcd' TO 'brkcd') AS Command6 ", Cn, adOpenStatic, adLockBatchOptimistic
    
    If rs1.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    
     Set RS2 = New Recordset
     Set RS2 = rs1("Command6").UnderlyingValue
     Set rs3 = New Recordset
     Set rs3 = RS2("Command7").UnderlyingValue
     rs3.MoveFirst
    Call LotstockRepHeader(pg1)
    Co = 10
            tot4 = 0
            tot5 = 0
            tot6 = 0
            tot7 = 0
    
'    Set rs1 = New Recordset
'    rs1.Open "select distinct a.brkcd,c.slname as brkname from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' order by a.brkcd ", cnn, adOpenStatic
    
    If rs1.RecordCount > 0 Then
'        Print #11, Space(5) + Trim(rs1(1))
'        brk_flg = Trim(rs1(1))
'            co = co + 1
                    tot8 = 0
                    tot9 = 0
                    tot10 = 0
                    tot11 = 0


Do While Not rs1.EOF
            If brk_flg <> rs1(1) Then
        tot8 = 0
        tot9 = 0
        tot10 = 0
        tot11 = 0
                
                brk_flg = rs1(1)
                Print #11, Space(5) + Trim(rs1(1))
                Co = Co + 1
      tot1 = 0
                tot2 = 0
                tot3 = 0
                tot = 0

    Do While Not RS2.EOF
                                If flg <> RS2(2) Then
                    flg = RS2(2)
                    Print #11, Space(5) + Space(3) + RS2(2)  '+ Space(10) + rs2(2)
                    Co = Co + 1
                            
               ' Set rs3 = New Recordset
'                rs3.Open "select distinct a.brkcd,a.supcd,c.slname as supname,arrdt,a.varcode,lotno,a.catcd,bale=(case bblflg when 'B' then bales  end),borah=(case bblflg when 'R' then bales end),ratekg as ratekgs, ratequtl=netwt,value=netwt*(ratekg) from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(f1, "YYYY-MM-DD") & "' and '" & Format(t1, "YYYY-MM-DD") & "' and a.brkcd = '" & rs2(0) & "'  and a.supcd = '" & rs2(1) & "' and c.slname = '" & rs2(2) & "' order by a.brkcd,a.supcd,arrdt,a.varcode,lotno,a.catcd ", cn, adOpenStatic
      Do While Not rs3.EOF
                    'Print #11, Space(15) + Padl(rs3("lotno"), 6, " ") + Space(4) + Trim(rs3("arrdt")) + Space(6) + Padr(rs3("catcd"), 1, " ") + Space(11) + Padr(rs3("varcode"), 6, " ") + Space(9) + Padl(IIf(IsNull(rs3("bale")), " ", Trim(rs3("bale"))), 5, " ") + Space(3) + Padl(IIf(IsNull(rs3("borah")), " ", Trim(rs3("borah"))), 5, " ") + Space(4) + Padl(INF(rs3("ratekgs"), 2), 15, " ") + Space(2) + Padl(INF(rs3("ratequtl"), 3), 14, " ") + Space(2) + Padl((Format(rs3("value"), "##,###,##0.00")), 15, " ")
                    Print #11, Space(15) + Padl(rs3("lotno"), 6, " ") + Space(4) + Trim(rs3("arrdt")) + Space(6) + Padr(rs3("catcd"), 1, " ") + Space(11) + Padr(rs3("varcode"), 6, " ") + Space(9) + Padl(IIf(IsNull(rs3("bale")), " ", Trim(rs3("bale"))), 5, " ") + Space(3) + Padl(IIf(IsNull(rs3("borah")), " ", Trim(rs3("borah"))), 5, " ") + Space(4) + IIf(rs3("ratekgs") = 0, Space(15), Padl(CStr(INF(rs3("ratekgs"), 2)), 15, " ")) + Space(2) + IIf(rs3("ratequtl") = 0, Space(14), Padl(CStr(INF(rs3("ratequtl"), 3)), 14, " ")) + Space(2) + IIf(rs3("value") = 0, Space(15), Padl(CStr(INF(rs3("value"), 2)), 15, " "))
                    Co = Co + 1
                    If Co >= 63 Then
                        Print #11, Chr(15)
                        Call LotstockRepHeader(pg1)
                        Co = 10
                    End If
                    'supplier
                    tot = tot + val(IIf(IsNull(rs3("BALE")), 0, rs3("BALE")))
                    tot1 = tot1 + val(rs3("ratekgs"))
                    tot2 = tot2 + val(rs3("ratequtl"))
                    tot3 = tot3 + val(rs3("value"))
                    'broker
                    tot8 = tot8 + val(IIf(IsNull(rs3("BALE")), 0, rs3("BALE")))
                    tot9 = tot9 + val(rs3("ratekgs"))
                    tot10 = tot10 + val(rs3("ratequtl"))
                    tot11 = tot11 + val(rs3("value"))
                    'grand
                    tot4 = tot4 + val(IIf(IsNull(rs3("BALE")), 0, rs3("bale")))
                    tot5 = tot5 + val(rs3("ratekgs"))
                    tot6 = tot6 + val(rs3("ratequtl"))
                    tot7 = tot7 + val(rs3("value"))
                    
                    rs3.MoveNext
     Loop
            RS2.MoveNext
            
            Print #11,
  End If
   
  Loop
      If RS2.RecordCount > 1 Then
            Print #11, Space(35) & "** Supplier Total **" & Space(6) & Padl(Format(Trim(tot), "###,###,##0"), 12, " ") & Space(14) & Padl(INF(IIf(tot1 = 0, " ", tot1), 2), 13, " ") & Space(2) & Padl(INF(IIf(tot2 = 0, " ", tot2), 3), 14, " ") & Space(2) & Padl((INF(IIf(tot3 = 0, " ", tot3), 2)), 15, " ")
            End If

  tot = 0
                    tot1 = 0
                    tot2 = 0
                    tot3 = 0
'        Print #11,
'        Print #11, Space(35) & "** Broker Total **" & Space(17) & Padl(IIf(Trim(tot8) = 0, " ", tot8), 3, " ") & Space(13) & Padl(Format(IIf(tot9 = 0, " ", tot9), "##,###,##0.00"), 14, " ") & Space(2) & Padl(Format(tot10, "##,###,##0.000"), 14, " ") & Space(2) & Padl((Format(tot11, "##,###,###.00")), 15, " ")
'        Print #11,
  End If
        rs1.MoveNext
        'If rs3.RecordCount > 1 Then
        If rs1.EOF Then
            If RS2.RecordCount > 1 Then
            Print #11,
            Print #11, Space(35) & "** Broker Total **" & Space(8) & Padl(Format(IIf(Trim(tot8) = 0, " ", tot8), "###,###,##0"), 12, " ") & Space(13) & Padl(INF(IIf(tot9 = 0, " ", tot9), 2), 14, " ") & Space(2) & Padl(INF(tot10, 3), 14, " ") & Space(2) & Padl((INF(tot11, 2)), 15, " ")
            Print #11,
            End If
        ElseIf brk_flg <> rs1(1) Then
            Print #11,
            Print #11, Space(35) & "** Broker Total **" & Space(8) & Padl(Format(IIf(Trim(tot8) = 0, " ", tot8), "###,###,##0"), 12, " ") & Space(13) & Padl(INF(IIf(tot9 = 0, " ", tot9), 2), 14, " ") & Space(2) & Padl(INF(tot10, 3), 14, " ") & Space(2) & Padl((INF(tot11, 2)), 15, " ")
            Print #11,
        End If
       ' End If
        Co = Co + 3
        If Co >= 63 Then
           Print #11, Chr(15)
           Call LotstockRepHeader(pg1)
           Co = 10
        End If
  Loop
    End If
    Print #11, Space(5) + String(128, "-")
    Print #11, Space(35) & "** Grand Total **" & Space(9) & Padl(Format(IIf(Trim(tot4) = 0, " ", tot4), "###,###,##0"), 12, " ") & Space(10) & Padl(INF(IIf(tot5 = 0, " ", tot5), 2), 17, " ") & Space(2) & Padl(INF(IIf(tot6 = 0, " ", tot6), 3), 14, " ") & Space(2) & Padl((INF(tot7, 2)), 15, " ")
    Print #11, Space(5) + String(128, "-")
    Print #11, Chr(18)
    Print #11, Chr(12)
    Close #11
        
   ' 11 = FreeFile
'    Open "C:\BSP.bat" For Output As #11
'    Print #11, "cd\"
'    Print #11, "C:"
'    Print #11, "cd\"
'    Print #11, "type BSP.TXT>prn"
'    Close #11
'    RPTV.txtfile = "C:\BSP.TXT"
'    RPTV.Batfile = "C:\BSP.bat"
Call KALBATPROCESS("BSP")
    Screen.MousePointer = 0
End Sub
Public Sub LotstockRepHeader(pg1 As Integer)
a = a1
          Print #11, Chr(18)
          Print #11, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          'Print #11, Space(67)
          Print #11,
          
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #11, Space(3) + Chr(27) + "E" + "Brokerwise,Supplierwise Purchase" + Chr(27) + "F" + " from" + Space(2) + Format(Trim(s1), "DD/MM/YYYY") + Space(2) + "To" + Space(2) + Format(Trim(s2), "DD/MM/YYYY")
          Print #11,
          Print #11, Space(56) + CStr(SR) + "Pg.No : " + CStr(pg1) + Chr(15)
          Print #11, Space(5) + String(128, "-")
          Print #11, Space(5) + "Broker"
          Print #11, Space(8) + "Supplier"
          Print #11, Space(15) + "Lot No   Arrival Date     Category    Variety          Qty   Unit            Rate/Kgs      Net Weight           Amount"
          'Print #11, "                                     Rate(Rs)                       "
          Print #11, Space(5) + String(128, "-")
             
End Sub
