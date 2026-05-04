Attribute VB_Name = "PeriodReceiptParty"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim Namers As Recordset
Dim VarName As String
Dim a As Integer
Dim co As Integer
Public Sub PartyReport(U As String, V As String, W As String, Y As String)
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim Cnn As Connection
Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs2 = New Recordset
'rs2.Open "select distinct r.supcd,a.slname,isnull(e.slname,' ')'broker' from rm_lot r,fa_slmas a,rm_area ar,rm_cont c,fa_slmas e where r.supcd = a.slcode and r.brkcd *= e.slcode and ar.areacode=*r.areacd  and r.arrdt between '" & Format(u, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and r.supcd between '" & Mid$(w, 1, 6) & "' and '" & Mid$(y, 1, 6) & "' and (r.lottype='T' or r.lottype='A') and r.opflg='N'  and r.rejflg='N' and r.lotyear='" & Year(yfdate) & "' ", cnn, adOpenStatic, adLockOptimistic
rs2.Open "select distinct r.supcd,a.slname from rm_lot r,fa_slmas a,rm_area ar,rm_cont c,fa_slmas e where r.supcd = a.slcode and r.brkcd *= e.slcode and ar.areacode=*r.areacd  and r.arrdt between '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(V, "YYYY-MM-DD") & "' and r.supcd between '" & Mid$(W, 1, 6) & "' and '" & Mid$(Y, 1, 6) & "' and (r.lottype='T' or r.lottype='A') and r.opflg='N'  and r.rejflg='N' and r.lotyear='" & Year(yfdate) & "' ORDER BY r.supcd", Cnn, adOpenStatic, adLockOptimistic
If rs2.EOF Then
    Screen.MousePointer = 0
'    Call TransferReceipt(CStr(u), CStr(v), CStr(w), CStr(DIVNAME))
     MsgBox "No Record Found", vbInformation, head
    Exit Sub
End If
Set rptv = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\reci.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
co = co + 1
Call PartyHeader(pg1, co, U, V, W)
rs2.MoveFirst
Do While Not rs2.EOF
    Print #a, Space(5) + Padr((CStr(rs2("SUPCD"))), 7, " ") + Padr(rs2("SLNAME"), 41, " ") '+ Padr(rs2("BROKER"), 40, " ")
     co = co + 1
     If co >= PageLen Then
        Print #a, Space(5) + String(215, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call PartyHeader(pg1, co, U, V, W)
   End If
    Set rs1 = New Recordset
     rs1.Open "select distinct r.supcd,a.slname,isnull(e.slname,' ')'broker',ISNULL(r.plotno,''),r.lotno ,ar.areaname, r.varcode,r.arrdt,Bale=r.bales , unit=(case when r.bblflg='R' then 'Borah' else 'Bales' end),  round(sum(r.netwt),2) NETWT,  round(avg(R.RATECY),0) CANDYRATE, (avg(R.RATECY)/355.6187) AVGCANDYRATE , sum(NETWT)*round((isnull(ratecy,0)/355.6187),2) 'Value'  from rm_lot r,fa_slmas a,rm_area ar,fa_slmas e where r.supcd = a.slcode and r.brkcd *= e.slcode and ar.areacode=*r.areacd  and r.arrdt between '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(V, "YYYY-MM-DD") & "' and r.supcd ='" & rs2("supcd") & "' and (r.lottype='T' or r.lottype='A') and r.opflg='N'  and r.rejflg='N' and r.lotyear='" & Year(yfdate) & "' group by r.supcd,a.slname,e.slname,r.lotno,ar.areaname,r.varcode,r.bales,r.plotno,r.arrdt,r.bblflg,r.netwt,ratecy order by lotno", Cnn, adOpenStatic, adLockOptimistic
    Do While Not rs1.EOF
        Print #a,
        co = co + 1
        If co >= PageLen Then
            Print #a, Space(5) + String(215, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call PartyHeader(pg1, co, U, V, W)
        End If
        Set Namers = New Recordset
        Namers.Open "Select varname from rm_var where varcode='" & rs1(6) & "' ", DB, adOpenStatic
         If Not Namers.EOF Then
            VarName = Namers(0)
        End If
        Print #a, Space(5) + Padl(rs1(3), 9, " ") + Padl(INF(rs1(4), 0), 10, " ") + Space(2) + Padr(rs1(5), 31, " ") + Space(5) + Padr(VarName, 20, " ") + Space(10) + Padr(rs1(7), 11, " ") + Space(4) + Padl(INF(rs1(8), 0), 5, " ") + Space(6) + Space(5) + Padr(rs1("unit"), 8, " ") + Space(5) + Padl(INF(rs1(10), 2), 15, " ") + Space(5) + Padl(INF(rs1(11), 0), 19, " ") + Space(5) + Space(5) + Padl(INF(rs1(12), 2), 14, " ") + Space(5) + Padl(INF(rs1(13), 2), 16, " ")
'        Print #A, Space(5) + Padl(" ", 9, " ") + Padl(INF(rs1(3), 0), 10, " ") + Space(2) + Padr(rs1(4), 31, " ") + Space(5) + Padr(VarName, 20, " ") + Space(10) + Padr(rs1(6), 11, " ") + Space(4) + Padl(INF(rs1(9), 0), 5, " ") + Space(6) + Space(5) + Padr(rs1("unit"), 8, " ") + Space(5) + Padl(INF(rs1(9), 2), 15, " ") + Space(5) + Padl(INF(rs1(10), 0), 19, " ") + Space(5) + Space(5) + Padl(INF(rs1(11), 2), 14, " ") + Space(5) + Padl(INF(rs1(12), 2), 16, " ")
        co = co + 1
        If co >= PageLen Then
            Print #a, Space(5) + String(215, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call PartyHeader(pg1, co, U, V, W)
        End If
        tot1 = tot1 + val(IIf(IsNull(rs1(8)), 0, rs1(8)))
        tot2 = tot2 + rs1(10)
        tot3 = tot3 + val(IIf(IsNull(rs1(13)), 0, rs1(13)))
        tot4 = tot4 + val(IIf(IsNull(rs1(8)), 0, rs1(8)))
        tot5 = tot5 + rs1(10)
        tot6 = tot6 + val(IIf(IsNull(rs1(13)), 0, rs1(13)))
        rs1.MoveNext
    Loop
    Print #a,
    co = co + 1
        If co >= PageLen Then
            Print #a, Space(5) + String(215, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call PartyHeader(pg1, co, U, V, W)
        End If
    tot4 = 0
    tot5 = 0
    tot6 = 0
    rs2.MoveNext
Loop


Print #a, Space(5) + String(215, "-")
Print #a, Space(72) + " ** Grand Total **" + Space(10) + Padl(INF(tot1, 0), 12, " ") + Space(10) + Padl(INF(tot2, 2), 29, " ") + Space(53) + Padl(INF(tot3, 2), 16, " ")
'Print #a,
Print #a, Space(5) + String(215, "-")
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
Call KALBATPROCESS("reci")
'Open "C:\reci.bat" For Output As #A
'Print #A, "cd\"
'Print #A, "C:"
'Print #A, "cd\"
'Print #A, "type reci.txt>prn"
'Close #A
'RPTV.txtfile = "C:\reci.txt"
'RPTV.Batfile = "C:\reci.bat"
Screen.MousePointer = 0
End Sub
Public Sub TransferReceipt(U As Date, V As Date, W As String, divname As String)
    Set Rs = New Recordset
    Rs.Open " select r.supcd,b.slname,isnull(b.slname,' ')'broker',0 as plotno,r.lotno ,c.areaname,r.varcode, " & _
        " r.arrdt,Bale=(case when r.bblflg='B' then r.Bales end), Bora=(case when r.bblflg='R' then r.Bales end)," & _
        " r.netwt, r.ratekg*355.6187, (r.ratekg) * 100 'Rate/Quintal',(r.ratekg*355.6187)*r.netwt'Value' from rm_lot r," & _
        " fa_slmas b,rm_area c,fa_slmas f where r.supcd=b.slcode and r.areacd=c.areacode and r.brkcd*=f.slcode  and r.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and Lottype='T' and supcd='" & Mid$(W, 1, 6) & "' ", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set rptv = New Report.ReportView
    a = FreeFile
    Close #a
    Open KALFOLDERDATA & "\reci.TXT" For Output As #a
    Print #a, Chr(15)
    pg1 = 1
    Call PartyHeader(pg1, co, CStr(U), CStr(V), CStr(W))
      Set Rs = New Recordset
      Rs.Open "Select distinct a.supcd,isnull(b.slname,'')as slname,isnull(h.slname,'') as broker from rm_lot a,fa_slmas b,fa_slmas h where a.supcd=b.slcode and a.brkcd*=h.slcode and a.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and Lottype='T' and supcd='" & Mid$(W, 1, 6) & "'", DB, adOpenStatic
      Do While Not Rs.EOF
                Print #a, Space(5) + Padr((CStr(Rs("SUPCD"))), 7, " ") + Padr(Rs("SLNAME"), 41, " ") '+ Padr(rs("BROKER"), 40, " ")
                Print #a,
                Set rsP = New Recordset
                rsP.Open " select r.supcd,b.slname,isnull(b.slname,' ')'broker',0 as plotno,r.lotno ,c.areaname,r.varcode, " & _
                " r.arrdt,Bale=r.Bales, unit=(case when r.bblflg='R' then 'Borah' else 'Bales 'end)," & _
                " round(r.netwt,2) as netwt , round(r.ratekg*355.6187,0), round(r.ratekg,2)  'Rate/Quintal',(r.ratekg*355.6187)*r.netwt'Value' from rm_lot r," & _
                " fa_slmas b,rm_area c,fa_slmas f where r.supcd=b.slcode and r.areacd=c.areacode and r.brkcd*=f.slcode  and r.lotdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and Lottype='T' and r.supcd='" & Rs(0) & "'", DB, adOpenStatic
                Do While Not rsP.EOF
                Set Namers = New Recordset
                Namers.Open "Select varname from rm_var where varcode='" & rsP(6) & "' ", DB, adOpenStatic
                    If Not Namers.EOF Then
                    VarName = Namers(0)
                End If
                Print #a, Space(5) + Padl(rsP(3), 9, " ") + Padl(INF(rsP(4), 0), 10, " ") + Space(2) + Padr(rsP(5), 31, " ") + Space(5) + Padr(VarName, 20, " ") + Space(10) + Padr(rsP(7), 11, " ") + Space(4) + Padl(INF(rsP(8), 0), 5, " "); Space(11) + Padr(rsP("unit"), 8, " ") + Space(5) + Padl(INF(rsP(10), 2), 15, " ") + Space(5) + Padl(INF(rsP(11), 0), 19, " ") + Space(5) + Space(5) + Padl(INF(rsP(12), 2), 14, " ") + Space(5) + Padl(INF(rsP(13), 2), 16, " ")
                rsP.MoveNext
                Loop
    Rs.MoveNext
    Loop
    Print #a, Space(5) + String(215, "-")
    Print #a, Chr(12)
    Close #a
     a = FreeFile
    Call KALBATPROCESS("reci")
 End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, U As String, V As String, W As String)
          Print #a, Chr(18)
          co = co + 1
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
          co = co + 1
          'Print #a, Space(171)
          'Print #a,
          Print #a,
          co = co + 1
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Partywise Receipt List " + Chr(27) + "F" + "from" & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy") & Space(10) & Padr(Mid$(W, InStr(1, W, "-") + 1, Len(W)), 38, " ") + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          co = co + 1
          Print #a, Space(5) + String(215, "-")
          co = co + 1
          Print #a, Space(5) + "Code   Supllier Name                            Broker Name                                  "
          co = co + 1
          'Print #a,
          Print #a, Space(5) + "Party Lot  Mill Lot  Areaname                            Variety                     Received Date      Qty           Unit              Net Weight              Rate/Candy                 Rate/Kg                Value                       "
          co = co + 1
          Print #a, Space(5) + "   Number    Number "
          co = co + 1
          Print #a, Space(5) + String(215, "-")
          co = co + 1
End Sub

