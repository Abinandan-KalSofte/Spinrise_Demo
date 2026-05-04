Attribute VB_Name = "Closingstockvarietywise"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer

Public Sub StockVariety1Report(U As String, V As String, W As String, DIVNAME)
Dim RS2 As Recordset
'Dim rs2 As Recordset
Dim TEMP As New Recordset
Dim PageLen As Integer
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim gtot1 As Double
Dim gtot2 As Double
Dim gtot3 As Double
Dim gtot4 As Double
Dim gtot5 As Double
Dim Count As Integer
Dim str As String
Dim flg As String
Dim cnn As Connection
Set cnn = New Connection
PageLen = 63
Set RS2 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set RS2 = New Recordset
RS2.Open "select a.varcode,b.godown,a.lotno,a.ratecy,a.lotdt,case when a.bbflag ='B' then  a.passbl else 0 end 'clobale' ,case when a.bbflag ='R' then  a.passbl else 0 end 'cloborah',(a.netwt/a.quantity)*a.passbl 'cloKgs',a.ratecy*a.passbl 'cloVal' from rm_arrival a,rm_lot b where a.lotno=b.lotno and a.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "'order by a.varcode,b.godown,a.lotno", cnn, adOpenStatic, adLockOptimistic

If RS2.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If

Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\stvar.TXT" For Output As #a
Open KALFOLDERDATA & "\stvar.TXT" For Output As #a
pg1 = 1
Co = 0
Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "main")
        RS2.MoveFirst
        Do While Not RS2.EOF
            Set TEMP = New Recordset
            TEMP.Open "select distinct ratecy from rm_arrival where lotno='" & RS2("lotno") & "'", cnn, adOpenDynamic, adLockOptimistic
            Print #a,
            If flg <> RS2(0) Then
                flg = RS2(0)
    '                Print #a, Space(5) + Padr((CStr(rs2(0))), 11, " ") + Padr(rs2(1), 6, " ") + Space(4) + Padl(INF(rs2(2), 3), 22, " ") + Padl(INF(rs2(3), 0), 24, " ") + Padl(INF(rs2(4), 0), 24, " ") + Space(10) + Padl(INF(rs2(5), 2), 29, " ")
                Print #a, Space(5) + Padr((CStr(RS2("varcode"))), 15, " ") + Padr(RS2("godown"), 6, " ") + Space(2) + Padl(RS2("lotno"), 5, " ") + Space(3) + Padr(RS2("lotdt"), 10, " ") + Space(4) + Padl(INF(RS2("clobale"), 0), 6, " ") + Space(4) + Padl(INF(RS2("cloborah"), 0), 12, " ") + Space(2) + Padl(INF(RS2("clokgs"), 3), 18, " ") + Space(2) + Padl(INF(TEMP("ratecy"), 2), 14, " ") + Space(4) + Padl(INF(RS2("cloval"), 2), 22, " ")
                Count = Count + 1
            Else
'                    Print #a, Space(16) + Padr(rs2(1), 6, " ") + Space(4) + Padl(INF(rs2(2), 3), 22, " ") + Padl(INF(rs2(3), 0), 24, " ") + Padl(INF(rs2(4), 0), 24, " ") + Space(10) + Padl(INF(rs2(5), 2), 29, " ")
                Print #a, Space(20) + Padr(RS2("godown"), 6, " ") + Space(2) + Padl(RS2("lotno"), 5, " ") + Space(3) + Padr(RS2("lotdt"), 10, " ") + Space(4) + Padl(INF(RS2("clobale"), 0), 6, " ") + Space(4) + Padl(INF(RS2("cloborah"), 0), 12, " ") + Space(2) + Padl(INF(RS2("clokgs"), 3), 18, " ") + Space(2) + Padl(INF(TEMP("ratecy"), 2), 14, " ") + Space(4) + Padl(INF(RS2("cloval"), 2), 22, " ")
                Count = Count + 1
            End If
            First = "no"
            tot1 = tot1 + IIf(IsNull(RS2("clobale")), 0, RS2("clobale"))
            tot2 = tot2 + IIf(IsNull(RS2("cloborah")), 0, RS2("cloborah"))
            tot3 = tot3 + IIf(IsNull(RS2("clokgs")), 0, RS2("clokgs"))
            tot4 = tot4 + IIf(IsNull(TEMP("ratecy")), 0, TEMP("ratecy"))
            tot5 = tot5 + IIf(IsNull(RS2("cloval")), 0, RS2("cloval"))
            
            gtot1 = gtot1 + IIf(IsNull(RS2("clobale")), 0, RS2("clobale"))
            gtot2 = gtot2 + IIf(IsNull(RS2("cloborah")), 0, RS2("cloborah"))
            gtot3 = gtot3 + IIf(IsNull(RS2("clokgs")), 0, RS2("clokgs"))
            gtot4 = gtot4 + IIf(IsNull(TEMP("ratecy")), 0, TEMP("ratecy"))
            gtot5 = gtot5 + IIf(IsNull(RS2("cloval")), 0, RS2("cloval"))
            Co = Co + 1
            If Co >= PageLen Then
                Print #a, Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "main")
            End If
            RS2.MoveNext
        Loop
        If RS2.RecordCount > 1 Then
            Print #a,
            Print #a, Space(6) + " ** Variety Total **" + Space(7) + Padl(INF(tot1, 0), 23, " ") + Padl(INF(tot2, 0), 16, " ") + Padl(INF(tot3, 3), 20, " ") + Space(2) + Padl(INF(tot4, 2), 14, " ") + Space(2) + Padl(INF(tot5, 2), 24, " ")
            Print #a,
            Co = Co + 3
            If Co >= PageLen Then
                Print #a, Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "main")
            End If
            tot1 = tot2 = tot3 = tot4 = tot5 = 0
        End If
'        rs1.MoveNext
'    Else
'        rs1.MoveNext
'    End If
'Loop
Print #a,
Print #a, Space(6) + " ** Sub Total **" + Space(11) + Padl(INF(gtot1, 0), 23, " ") + Padl(INF(gtot2, 0), 16, " ") + Padl(INF(gtot3, 3), 20, " ") + Space(2) + Padl(INF(gtot4, 2), 14, " ") + Space(2) + Padl(INF(gtot5, 2), 24, " ")
Print #a,
Co = Co + 4
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0

Set RS2 = New Recordset
'rs2.Open "select a.varcode,b.godown,a.lotno,a.ratecy,a.lotdt,case when a.bbflag ='B' then (a.quantity - a.passbl) else 0 end 'bale' ,case when a.bbflag ='R' then (a.quantity - a.passbl) else 0 end 'borah',(a.netwt/a.quantity)*(a.quantity-a.passbl) 'Kgs',a.ratecy*(a.quantity-a.passbl) 'Value' from rm_arrival a,rm_lot b where a.isgodown='y' and a.quantity-a.passbl>0 and a.lotno=b.lotno", cnn, adOpenDynamic, adLockOptimistic
RS2.Open "select a.varcode,b.godown,a.lotno,a.ratecy,a.lotdt,case when a.bbflag ='B' then (a.quantity - a.passbl) else 0 end 'bale' ,case when a.bbflag ='R' then (a.quantity - a.passbl) else 0 end 'borah',(a.netwt/a.quantity)*(a.quantity-a.passbl) 'Kgs',a.ratecy*(a.quantity-a.passbl) 'Value' from rm_arrival a,rm_lot b where a.isgodown='y' and a.quantity-a.passbl>0 and a.lotno=b.lotno and a.arrdate=b.lotdt and a.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "'", cnn, adOpenDynamic, adLockOptimistic

If RS2.RecordCount > 0 Then
    Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "sub")
End If

Do While Not RS2.EOF
    Print #a, Space(5) + Padr((CStr(RS2("varcode"))), 15, " ") + Padr(RS2("godown"), 6, " ") + Space(2) + Padl(RS2("lotno"), 5, " ") + Space(3) + Padr(RS2("lotdt"), 10, " ") + Space(4) + Padl(INF(RS2("bale"), 0), 6, " ") + Space(4) + Padl(INF(RS2("borah"), 0), 12, " ") + Space(2) + Padl(INF(RS2("kgs"), 3), 18, " ") + Space(2) + Padl(INF(RS2("ratecy"), 2), 14, " ") + Space(4) + Padl(INF(RS2("value"), 2), 22, " ")
    Co = Co + 1
    If Co >= PageLen Then
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Co = 0
        Call PartyHeader(pg1, Co, U, V, W, DIVNAME, "sub")
    End If
    
    tot1 = tot1 + IIf(IsNull(RS2("bale")), 0, RS2("bale"))
    tot2 = tot2 + IIf(IsNull(RS2("borah")), 0, RS2("borah"))
    tot3 = tot3 + IIf(IsNull(RS2("kgs")), 0, RS2("kgs"))
    tot4 = tot4 + IIf(IsNull(RS2("value")), 0, RS2("value"))
    tot5 = tot5 + IIf(IsNull(RS2("ratecy")), 0, RS2("ratecy"))
    
    gtot1 = gtot1 + IIf(IsNull(RS2("bale")), 0, RS2("bale"))
    gtot2 = gtot2 + IIf(IsNull(RS2("borah")), 0, RS2("borah"))
    gtot3 = gtot3 + IIf(IsNull(RS2("kgs")), 0, RS2("kgs"))
    gtot4 = gtot4 + IIf(IsNull(RS2("value")), 0, RS2("value"))
    gtot5 = gtot5 + IIf(IsNull(RS2("ratecy")), 0, RS2("ratecy"))
    
    RS2.MoveNext
Loop
If RS2.RecordCount > 0 Then
Print #a,
Print #a, Space(6) + " ** Sub Total **" + Space(11) + Padl(INF(tot1, 0), 23, " ") + Padl(INF(tot2, 0), 16, " ") + Padl(INF(tot3, 3), 20, " ") + Space(2) + Padl(INF(tot4, 2), 14, " ") + Space(2) + Padl(INF(tot5, 2), 24, " ")
End If
Print #a, Space(5) + String(130, "-")
Print #a, Space(6) + " ** Grand Total **" + Space(9) + Padl(INF(gtot1, 0), 23, " ") + Padl(INF(gtot2, 0), 16, " ") + Padl(INF(gtot3, 3), 20, " ") + Space(2) + Padl(INF(gtot4, 2), 14, " ") + Space(2) + Padl(INF(gtot5, 2), 24, " ")
Print #a, Space(5) + String(130, "-")
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\stvar.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type stvar.txt>prn"
'Close #a
'RPTV.txtfile = "c:\stvar.txt"
'RPTV.Batfile = "c:\stvar.bat"
Call KALBATPROCESS("stvar")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String, DIVNAME, Where As String)
          Print #a,
          Print #a, Chr(18)
          If Where = "main" Then
            Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
            Print #a,
            SR = CStr(pdate) + Space(2)
            Print #a, Space(3) + Chr(27) + "E" + "Closing Stock Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy") & Space(5) & Padr(W, 20, " ")
            Print #a, Space(55) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
            Print #a, Space(5) + String(130, "-")
            Print #a, Space(5) + "Variety        Godown    Lot      Recd        <--------------- Closing  -------------->           Rate/                     Value"
            Print #a, Space(5) + "                          No      Date        Bales           Borah                 kgs           Candy            "
            Print #a, Space(5) + String(130, "-")
          ElseIf Where = "sub" Then
            Print #a, Space(3) + Chr(27) + "E" + "Rejected Lots" + Chr(27) + "F" + Chr(15) '+ Space(35) + sr + "Pg.No :" + Space(1) + CStr(pg1)
            Print #a,
          End If
          
        Co = Co + 10
End Sub






