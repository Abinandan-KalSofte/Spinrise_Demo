Attribute VB_Name = "pendingcontracts"
Dim rs1 As Recordset
Dim ResultRs As Recordset
Dim rss As Recordset
Dim rptv As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim C1 As Integer
Dim Cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s As String
Dim z As Integer
Dim a11 As String
Dim b11 As String
Dim b1, a, b As String
Dim rp As New repform1
Public Sub ordercancellationReport(a As String, b As String, ARRIVALTYPE As String)
Set Cnn = New Connection
a1 = a
b12 = b
Dim a45, b45 As String
      a45 = Right(Format(a, "yyyy-mm-dd"), 10)
      b45 = Right(Format(b, "yyyy-mm-dd"), 10)

a11 = Mid$(a, 1, InStr(a, "-") - 1)
a1 = Format(Trim(Right(a, 10)), "yyyy-mm-dd")

b11 = Mid$(b, 1, InStr(b, "-") - 1)
b1 = Format(Trim(Right(b, 10)), "yyyy-mm-dd")

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
   Set ResultRs = New Recordset
   ResultRs.Open "select distinct orderno,orderdt,VARCODE from rm_ordcancel where DIVCODE='" & Divcode & "' AND docdt between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(b1, "yyyy-mm-dd") & "'", DB, adOpenStatic
   
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
'    Open "C:\peco1.TXT" For Output As #z
 Open KALFOLDERDATA & "\peco1.TXT" For Output As #z
    pg1 = 1
    co = 0
    Call orderheader(CInt(pg1), CInt(co), CStr(s), CStr(a), CStr(b))
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      gtot1 = 0: gtot2 = 0: gtot3 = 0
           
    Do While Not ResultRs.EOF
      Set rs1 = New Recordset
      rs1.Open "select  * from rm_cont Where  VARCODE='" & ResultRs("VARCODE") & "' AND ISNULL(ARRIVALTYPE,'P')='" & ARRIVALTYPE & "' AND   CANCELFLG ='Y' and contno='" & ResultRs("orderno") & "' and contdt='" & Format(ResultRs("orderdt"), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' order by contno", DB, adOpenStatic, adLockBatchOptimistic
      
     If rs1.RecordCount > 0 Then
           Do While Not rs1.EOF
      TEMP = rs1("contdt")
        If TEMP <> rs1("contdt") Then
            Print #z,
        End If
        Set Ord = New Recordset
        Ord.Open "Select docdt,reason from rm_ordcancel where DIVCODE='" & Divcode & "' AND orderno='" & rs1("contno") & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        'Print #z, Space(5); Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(1) + Padl(CStr(rs1("contno")), 8, " ") + Space(2) + Padr(CStr(rs1("supname")), 26, " ") + Space(1) + Padr(CStr(rs1("brkNAME")), 25, " ") +
        'Space(1) + Padr(CStr(rs1("dlytype")), 5, " ") + Space(1) + Padr(CStr(rs1("VARNAME")), 8, " ") + Space(1) +
        'Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(2) + Padr(CStr(ResultRs("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 11, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("recqty") = 0, " ", rs1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 12, " ")
        Set rsa = New Recordset
        rsa.Open "select slname from fa_slmas where slcode='" & rs1("supcd") & "'", DB
        If rsa.EOF = False Then
            sLname = rsa(0)
        Else
            sLname = ""
        End If
        Set rsa = New Recordset
        rsa.Open "select slname from fa_slmas where slcode='" & rs1("brkcd") & "'", DB
        If rsa.EOF = fasle Then
            brkname = rsa(0)
        Else
            brkname = ""
        End If
        If rs1("dlytype") = "M" Then
            dlytype = "FOR"
        Else
            dlytype = "Spot"
        End If
        If rs1("bbflag") = "B" Then
            unit = "Bales"
        End If
        
        If ARRIVALTYPE = "P" Then
            ordqty = INF(rs1("ORDQTY"), 0)
            RecQty = INF(IIf(IsNull(rs1("RECQTY")), 0, rs1("RECQTY")), 0)
            bales = INF(IIf(IsNull(rs1("CANCELBALES")), 0, rs1("CANCELBALES")), 0)
        Else
            ordqty = INF(rs1("ORDKGS"), 0)
            RecQty = INF(IIf(IsNull(rs1("RCDKGS")), 0, rs1("RCDKGS")), 0)

            bales = INF(IIf(IsNull(rs1("CANCELKGS")), 0, rs1("CANCELKGS")), 0)
            
        End If
        If Trim(RecQty) = "" Then
            RecQty = 0
        End If
        If Trim(bales) = "" Then
            bales = 0
        End If
        
        
        Print #z, Space(5); Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(1) + Padl(rs1("contno"), 8, " ") + Space(2) + Padr(CStr(sLname), 26, " ") + Space(1);
        Print #z, Padr(CStr(brkname), 22, " ") + Space(1) + Padr(CStr(dlytype), 8, " ") + Space(1) + Padr(CStr(rs1("VARcode")), 8, " "); Space(1);
        Print #z, Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(2) + Padr(CStr(unit), 6, " ") + Space(1) + Padl(CStr(ordqty), 11, " ");
        Print #z, Space(1) + Padl(CStr(RecQty), 9, " ") + Space(1) + Padl(CStr(bales), 6, " "); Space(1);
        Print #z, Padl(Format(Ord("docdt"), "dd/mm/yy"), 8, " "); Space(1)
        Print #z, Space(5); "Reason:" & Padr(Ord("reason"), 130, " ")
        Print #z,
         'Print #z, Padl(Format(rs1("docdt"), "dd/mm/yy"), 8, " "); Space(1); Padr(rs1("reason"), 30, " ")
        
        
        
        
        co = co + 3
        If co >= PageLen Then
                  Print #z, Space(5) & String(144, "-")
                  Print #z, Chr(12)
                  pg1 = pg1 + 1
                  co = 0
                  Call orderheader(CInt(pg1), CInt(co), CStr(s), CStr(a), CStr(b))
                  'Call orderheader(pg1, co, s, a, b)
        End If
               tot1 = tot1 + ordqty
               tot2 = tot2 + RecQty
               tot3 = tot3 + bales
               
        
        rs1.MoveNext
            
        Loop
       
        ResultRs.MoveNext
        Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
        
           
          If co >= PageLen Then
                  Print #z, Space(5) & String(144, "-")
                  Print #z, Chr(12)
                  pg1 = pg1 + 1
                  co = 0
                  Call orderheader(CInt(pg1), CInt(co), CStr(s), CStr(a), CStr(b))
           End If
          
    
       Loop
'      Call footermod(CInt(z), rp.UserFooter1.SelectedStr, 85)
      

    Print #z, Space(5) & String(144, "-")
    Print #z, Space(80) + "  **  Grand Total     ** " + Space(5) + Padl(CStr(INF((tot1), 0)), 12, " "); Space(1); Padl(CStr(INF((tot2), 0)), 9, " "); Space(1); Padl(CStr(INF((tot3), 0)), 6, " ")
    Print #z, Space(5) & String(144, "-")
    Print #z,
    Print #z,
    Print #z,
    'UserFooter1.ClearFooter
Call footermod(CInt(z), rp.UserFooter1.SelectedStr, 85)
'Call footermod(CInt(z), ARRIVALTYPE, 85)

Print #z,
Print #z, Chr(12)
Close #z
 z = FreeFile
'Open "c:\peco1.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type peco1.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\peco1.TXT"
'RPTV.Batfile = "c:\peco1.bat"
Call KALBATPROCESS("peco1")
Screen.MousePointer = 0

End Sub
Public Sub orderheader(pg1 As Integer, co As Integer, s As String, a As String, b As String)
a = a1
b = b1
          Print #z, Chr(18)
          Print #z, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) + "Order Cancellation Report" + Space(1) + "from" + Space(1) + Format(Trim(a), "DD/MM/YY") + Space(1) + "to" + Space(1) + Format(Trim(b), "DD/MM/YY") + Space(69) + Space(5) + CStr(SR) + "Pg. : " + Padl(CStr(pg1), 3, " ") '+ Chr(15)
          Print #z, Space(5) & String(144, "-")
          Print #z, Space(5) & "Date        Order  Supplier Name              Broker Name            Delivery Variety  Rate/Candy  Unit         Order  Received Cancel  Cancel    "
           Print #z, Space(5) & "              No.                                                                                                 Qty       Qty    Qty  Date"
           Print #z, Space(5) & String(144, "-")
           co = co + 7
End Sub

Public Sub pendconReport(a As String, b As String, footerstr As String)
Set Cnn = New Connection
a1 = a

'a11 = Mid$(a, 1, InStr(a, "-") - 1)
'a1 = Format(Trim(Right(a, 10)), "yyyy-mm-dd")

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
    Set ResultRs = New Recordset
      '  ResultRs.Open "select distinct a.supcd,c.slname supname,d.slname brkname,a.brkcd,a.areacode,a.contno,a.contdt from rm_cont a,rm_var b,fa_slmas c,fa_slmas d Where a.divcode='" & Divcode & "' and a.varcode = B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode and contdt <='" & a1 & "' and (godown not in ('C','G','M') or godown is null) and a.ORDQTY - (isnull(a.CANCELBALES,0)+isnull(a.RECQTY,0)) >0 ORDER BY a.contdt,SUPNAME", Cnn, adOpenStatic, adLockBatchOptimistic
      ResultRs.Open "select distinct a.supcd,c.slname supname,d.slname brkname,a.brkcd,a.areacode,a.contno,a.contdt from rm_cont a inner join rm_var b on a.varcode = B.varcode left join fa_slmas c on  a.supcd= c.slcode left join fa_slmas d on a.brkcd= d.slcode Where a.divcode='" & Divcode & "'   and (isnull(a.recqty,0) < isnull(a.ordqty,0))  and contdt <='" & a1 & "' and (godown not in ('C','G','M') or godown is null) and a.ORDQTY - (isnull(a.CANCELBALES,0)+isnull(a.RECQTY,0)) >0 ORDER BY a.contdt,SUPNAME", Cnn, adOpenStatic, adLockBatchOptimistic
 
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
'    Set rs1 = New Recordset
'      rs1.Open "select a.supcd,c.slname supname,d.slname brkname,a.brkcd,a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'FOR'  else 'Spot' end as dlytype,(a.ordqty-isnull(a.recqty,0))Bales,a.candyrate from  RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where a.divcode='" & divcode & "' and a.varcode = B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd = c.slcode and a.brkcd = d.slcode and contdt <= '" & a1 & "'", cnn, adOpenStatic
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
'    Open "C:\peco.TXT" For Output As #z
Open KALFOLDERDATA & "\peco.TXT" For Output As #z
    pg1 = 1
    co = 0
   'Print #z, Chr(15)
     'z = FreeFile
    Call pendconHeader(pg1, co, s, a)
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
'        Print #z,
    Do While Not ResultRs.EOF
'      Print #z, CStr(rs1("brkcd")) + Space(8) + CStr(rs1("brkname"))
       Print #z, Space(5) & CStr(ResultRs("supcd")) + Space(8) + CStr(ResultRs("supname"))
          co = co + 1
          If co >= PageLen Then
                  Print #z, Space(5) & String(222, "-")
                  Print #z, Chr(12)
                  pg1 = pg1 + 1
                  co = 0
                  Call pendconHeader(pg1, co, s, a)
                End If
   Set rs1 = New Recordset
      'rs1.Open "select distinct a.supcd,c.slname supname,d.slname brkname,a.brkcd,a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,(a.ordqty-isnull(a.recqty,0))Bales,a.candyrate from  RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where a.divcode='" & Divcode & "' and a.varcode = B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd = c.slcode and a.brkcd = d.slcode and contdt <= '" & a1 & "' and a.supcd='" & rss("supcd") & "' and a.brkcd='" & rss("brkcd") & "'", cnn, adOpenStatic
      'rs1.Open "select distinct a.supcd,c.slname supname,d.slname brkname,a.brkcd,a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,(a.ordqty-isnull(a.recqty,0))Bales,a.candyrate from  RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where a.divcode='" & Divcode & "' and a.varcode = B.varcode and (isnull(a.recqty,0) <= isnull(a.ordqty,0))and  a.supcd = c.slcode and a.brkcd = d.slcode and contdt <= '" & a1 & "' and a.supcd='" & rss("supcd") & "' and a.brkcd='" & rss("brkcd") & "'", cnn, adOpenStatic
      
      rs1.Open "select distinct a.supcd,c.slname supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,(a.ordqty-(isnull(a.recqty,0) + isnull(a.cancelbales,0))) Bales,round(a.candyrate,0)as candyrate from RM_CONT a inner join rm_var b on a.varcode= B.varcode  left join fa_slmas c  on a.supcd= c.slcode left join fa_slmas d on a.brkcd= d.slcode Where a.divcode='" & Divcode & "' and  (isnull(a.recqty,0) < isnull(a.ordqty,0))and   contdt = '" & Format(ResultRs("contdt"), "yyyy-mm-dd") & "' and contno='" & ResultRs("contno") & "'", Cnn, adOpenStatic
   Do While Not rs1.EOF
'         Print #z, CStr(rs1("brkcd")) + Space(8) + CStr(rs1("brkname"))

          If rs1("bales") <> 0 Then
          Print #z, Space(10) & Padr(CStr(rs1("brkcd")), 10, " ") + Space(5) + Padr(CStr(rs1("brkNAME")), 40, " ") + Space(14) + Padr(CStr(rs1("contno")), 10, " ") + Space(4) + Padr(CStr(Format(rs1("contdt"), "DD/MM/YY")), 8, " ") + Space(2) + Padr(CStr(rs1("dlytype")), 10, " ") + Space(2) + Padr(CStr(rs1("VARNAME")), 20, " ") + Space(2) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 25, " ") + Space(11) + Padl(CStr(Format(IIf(IsNull(rs1("ordqty")), " ", rs1("ordqty")), "##,##0")), 8, " ") + Space(8) + Padl(CStr(Format(IIf(IsNull(rs1("recqty")), " ", rs1("recqty")), "##,##0")), 14, " ") + Space(5) + Padl(CStr(Format(IIf(rs1("BALES") = 0, " ", rs1("BALES")), "##,##0")), 16, " ") + Space(2)
          
          co = co + 1
          End If
          If co >= PageLen Then
                  Print #z, Space(5) & String(222, "-")
                  Print #z, Chr(12)
                  pg1 = pg1 + 1
                  co = 0
                  Call pendconHeader(pg1, co, s, a)
                End If
                If rs1("BALES") <> " " Then
               tot = tot + rs1("BALES")
               End If
'               tot1 = tot1 + resultrs("BORAH")
'               tot2 = tot2 + resultrs("STOCK")
'               tot3 = tot3 + resultrs("VAL")
                rs1.MoveNext
        Loop
        Print #z,
         co = co + 1
          If co >= PageLen Then
                  Print #z, Space(5) & String(222, "-")
                  Print #z, Chr(12)
                  pg1 = pg1 + 1
                  co = 0
                  Call pendconHeader(pg1, co, s, a)
                End If
        'Print #z, Space(160) + "  **  Broker-Total  ** " + Space(10) + Padl(CStr(Format(tot, "###,###")), 7, " ")
        tot1 = tot1 + tot
        tot = 0
        ResultRs.MoveNext
        Loop
        
        '----outer loop
    
      If tot1 <> 0 Then
        Print #z, Space(162) + "**  Grand Total  ** " + Space(10) + Padl(CStr(Format(IIf(tot1 = 0, " ", tot1), "###,###")), 32, " ")
        Print #z, Space(5) & String(222, "-")
        End If
        
        Print #z,
        Print #z,
Print #z, Chr(12)
Print #z, Chr(18)
Print #z,
Print #z,
Call footermod(CInt(z), footerstr, 132)
        

Close #z
 z = FreeFile
'Open "C:\peco.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "C:"
'Print #z, "cd\"
'Print #z, "type peco.TXT>prn"
'Close #z
'RPTV.txtfile = "C:\peco.TXT"
'RPTV.Batfile = "C:\peco.bat"
Call KALBATPROCESS("peco")
'Screen.MousePointer = 0
End Sub
Public Sub pendconHeader(pg1 As Integer, co As Integer, s As String, a As String)
a = a1
'b = b
          Print #z, Chr(18)
          'Print #z, Space(20) + Space(Round((222 - 2 * Len(DIVNAME)) / 2)) + Chr(27) + "E" + DIVNAME + Space(2) + Chr(27) + "F" + Space(Round((222 - 2 * Len(DIVNAME)) / 2))
            Print #z, Space(5) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
          'Print #z, Space(67)
          'Print #z,
          Print #z,
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(3) + Chr(27) + "E" + "Pending Orders as on" + Chr(27) + "F" + Format(Trim(a), "DD/MM/YY") + Space(56) + "               " + CStr(SR) + "Pg.No : " + CStr(pg1)
          'Print #z,
          Print #z, Space(5) & String(222, "-")
          Print #z, Space(5) & "Code          Supplier Name                                               Order No.     Date      Delivery    Variety                              Rate/Candy        Ordered Qty          Received Qty          Balance Qty"
          Print #z, Space(5) & "     Code           Broker Name      "
          Print #z, Space(5) & String(222, "-")
          co = co + 8
End Sub
