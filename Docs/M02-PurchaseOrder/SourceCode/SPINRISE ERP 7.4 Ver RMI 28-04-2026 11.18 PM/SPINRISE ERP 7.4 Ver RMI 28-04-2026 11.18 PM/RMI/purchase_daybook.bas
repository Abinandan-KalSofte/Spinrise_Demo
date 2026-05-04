Attribute VB_Name = "purchase_day_bk"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer

Public Sub Purchase_Day_Book(From_Date As String, To_Date As String, Category As String, Lot_Type As String, divname As String, footerstr As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim s As String
Dim Cnn As Connection
Set Cnn = New Connection
PageLen = 63
Cnn.Open connectstring
Set rs1 = New Recordset
If Category = "A" Then
  rs1.Open "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales=(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(Favaourablewgt,2) as netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt=(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code then isnull(vatamt,0) else 0 end),isnull(fbillvalue,0) as fbillvalue,isnull(lrfrtamt,0) as freight,isnull(totlandcost,0) as totlandcost,isnull(pjamt,0) as pjamt from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and pjdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "'" & _
            "and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY lotdt,arrdt,VARCODE", Cnn, adOpenStatic, adLockOptimistic
Else
  rs1.Open "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales=(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(Favaourablewgt,2) as netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt=(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code then isnull(vatamt,0) else 0 end),isnull(fbillvalue,0) as fbillvalue,isnull(lrfrtamt,0) as freight,isnull(totlandcost,0) as totlandcost,isnull(pjamt,0) as pjamt from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and pjdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' " & _
            "and a.varcode=z.varcode and a.catcd='" & Category & "' and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY lotdt,arrdt,VARCODE", Cnn, adOpenStatic, adLockOptimistic
End If
If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set rptv = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\purchase_day_book.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call Purchase_Book_Header(pg1, From_Date, To_Date, divname)
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
tot6 = 0
tot7 = 0
tot8 = 0

'RS1.MoveFirst
Do While Not rs1.EOF
    'pcost = rs1("itemvalue") + rs1("cstamt")
    'pcost = rs1("fbillvalue") + rs1("freight")
    pcost = rs1("totlandcost")
    Set rsP = New Recordset
    rsP.Open "select slname from fa_slmas where slcode='" & rs1("supcd") & "'", Cnn, adOpenDynamic, adLockOptimistic
    'Print #a, Space(5) + Padr(Format(RS1("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padr(Format(RS1("arrdt"), "dd/mm/yy"), 8, " ") + Space(2) + Padr(rsP(0), 40, " ") + Space(2) + Padr((CStr(RS1("varcode"))), 14, " ") + Space(2) + Padl(RS1("billno"), 7, " ") + Space(4) + Padr(Format(RS1("billdt"), "dd/mm/yy"), 16, " ") + Space(2) + Padl(INF(RS1("lotno"), 0), 6, " ") + Space(3) + Padl(INF(RS1("bales"), 0), 5, " ") + Space(2) + Padl(INF(RS1("rate_qntl"), 2), 8, " ") + Space(1) + Padl(INF(RS1("NETWT"), 2), 15, " ") + Space(2) + Padl(INF(RS1("itemvalue"), 2), 15, " ") + Space(2) + Padl(INF(RS1("vatamt"), 2), 13, " ") + Space(1) + Padl(INF(RS1("cstamt"), 2), 13, " ") + Space(1) + Padl(INF(pcost, 2), 15, " ") + Space(1) + Padl(INF(RS1("insamt"), 2), 16, " ")
    If rs1("bales") <> 0 Then
        Print #a, Space(5) + Padr(Format(rs1("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padr(Format(rs1("arrdt"), "dd/mm/yy"), 8, " ") + Space(2) + Padr(rsP(0), 40, " ") + Space(2) + Padr((CStr(rs1("varcode"))), 14, " ") + Space(2) + Padl(rs1("billno"), 7, " ") + Space(4) + Padr(Format(rs1("billdt"), "dd/mm/yy"), 16, " ") + Space(2) + Padl(INF(rs1("lotno"), 0), 6, " ") + Space(3) + Padl(INF(rs1("bales"), 0), 5, " ") + Space(2) + Padl(INF(rs1("rate_qntl"), 2), 8, " ") + Space(1) + Padl(INF(rs1("NETWT"), 2), 15, " ") + Space(2) + Padl(INF(rs1("itemvalue"), 2), 15, " ") + Space(2) + Padl(INF(rs1("vatamt"), 2), 13, " ") + Space(1) + Padl(INF(rs1("cstamt"), 2), 13, " ") + Space(1) + Padl(INF(pcost, 2), 15, " ") + Space(1) + Padl(INF(rs1("fbillvalue"), 2), 16, " ")
    Else
        Print #a, Space(5) + Padr(Format(rs1("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padr(Format(rs1("arrdt"), "dd/mm/yy"), 8, " ") + Space(2) + Padr(rsP(0), 40, " ") + Space(2) + Padr((CStr(rs1("varcode"))), 14, " ") + Space(2) + Padl(rs1("billno"), 7, " ") + Space(4) + Padr(Format(rs1("billdt"), "dd/mm/yy"), 16, " ") + Space(2) + Padl(INF(rs1("lotno"), 0), 6, " ") + Space(3) + Padl(INF(rs1("borah"), 0), 5, " ") + Space(2) + Padl(INF(rs1("rate_qntl"), 2), 8, " ") + Space(1) + Padl(INF(rs1("NETWT"), 2), 15, " ") + Space(2) + Padl(INF(rs1("itemvalue"), 2), 15, " ") + Space(2) + Padl(INF(rs1("vatamt"), 2), 13, " ") + Space(1) + Padl(INF(rs1("cstamt"), 2), 13, " ") + Space(1) + Padl(INF(pcost, 2), 15, " ") + Space(1) + Padl(INF(rs1("fbillvalue"), 2), 16, " ")
    End If
    co = co + 1
    tot1 = tot1 + rs1("bales")
    If IsNull(rs1("borah")) Then
        tot2 = tot2 + 0
    Else
        tot2 = tot2 + val(rs1("borah"))
    End If
    tot3 = tot3 + val(IIf(IsNull(rs1("netwt")), 0, rs1("netwt")))
    tot4 = tot4 + val(IIf(IsNull(rs1("insamt")), 0, rs1("insamt")))
    tot5 = tot5 + val(IIf(IsNull(rs1("vatamt")), 0, rs1("vatamt")))
    tot6 = tot6 + val(IIf(IsNull(rs1("cstamt")), 0, rs1("cstamt")))
    tot7 = tot7 + val(IIf(IsNull(rs1("itemvalue")), 0, rs1("itemvalue")))
    tot8 = tot8 + pcost
    tot9 = tot9 + val(IIf(IsNull(rs1("fbillvalue")), 0, rs1("fbillvalue")))
    co = co + 1
    If co > PageLen Then
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 10
        Call Purchase_Book_Header(pg1, From_Date, To_Date, divname) ', co, u, v)
    End If
    rs1.MoveNext
Loop
Print #a, Space(5) + String(225, "-")
'Print #a, Space(5) + Padr(Format(RS1("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padr(Format(RS1("arrdt"), "dd/mm/yy"), 8, " ") + Space(2) + Padr(rsP(0), 40, " ") + Space(2) + Padr((CStr(RS1("varcode"))), 14, " ") + Space(2) + Padl(RS1("billno"), 7, " ") + Space(4) + Padr(Format(RS1("billdt"), "dd/mm/yy"), 16, " ") + Space(2) + Padl(INF(RS1("lotno"), 0), 6, " ") + Space(3) + Padl(INF(RS1("bales"), 0), 5, " ") + Space(2) + Padl(INF(RS1("rate_qntl"), 2), 8, " ") + Space(1) + Padl(INF(RS1("NETWT"), 2), 15, " ") + Space(2) + Padl(INF(RS1("itemvalue"), 2), 15, " ") + Space(2) + Padl(INF(RS1("vatamt"), 2), 13, " ") + Space(1) + Padl(INF(RS1("cstamt"), 2), 13, " ") + Space(1) + Padl(INF(pcost, 2), 15, " ") + Space(1) + Padl(INF(RS1("insamt"), 2), 16, " ")
Print #a, Space(5 + 40 + 19) + " ** Grand Total **" + Space(10 + 28) + Padl(INF(tot1 + tot2, 0), 5, " ") + Space(11) + Padl(INF(tot3, 2), 15, " ") + Space(2) + Padl(INF(tot7, 2), 15, " ") + Space(2) + Padl(INF(tot5, 2), 13, " ") + Space(1) + Padl(INF(tot6, 2), 13, " ") + Space(1) + Padl(INF(tot8, 2), 15, " ") + Space(1) + Padl(INF(tot9, 2), 16, " ")
'Print #a,
Print #a, Space(5) + String(225, "-")
Print #a,
Print #a,
co = co + 6
Call Purchase_abstract(Lot_Type)
co = co + 6

Set rs1 = New Recordset
If Category = "A" Then
  rs1.Open "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales=(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as netwt,a.ratekg as rate_qntl,isnull(a.fbillvalue,0) as fbillvalue,isnull(lrfrtamt,0) as freight" & _
  ",a.pjamt as itemvalue,a.pjamt as insamt,vatamt=(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code then isnull(vatamt,0) else 0 end) from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and pjdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY VARCODE,lotdt,arrdt", Cnn, adOpenStatic, adLockOptimistic
Else
  rs1.Open "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales=(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as netwt,a.ratekg as rate_qntl,isnull(a.fbillvalue,0) as fbillvalue,isnull(lrfrtamt,0) as freight " & _
            ",a.pjamt as itemvalue,a.pjamt as insamt,vatamt=(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code then isnull(vatamt,0) else 0 end) from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and pjdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and a.varcode=z.varcode and a.catcd='" & Category & "' and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY VARCODE,lotdt,arrdt", Cnn, adOpenStatic, adLockOptimistic
End If
If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If


rs1.MoveFirst
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
tot6 = 0
tot7 = 0
tot8 = 0
Check_Varcode = rs1("varcode")
Do While Not rs1.EOF
    Do While Check_Varcode = rs1("VARCODE")
        tot5 = tot5 + rs1("bales")
        If IsNull(rs1("borah")) Then
            tot6 = tot6 + 0
        Else
            tot6 = tot6 + val(rs1("borah"))
        End If
        tot7 = tot7 + rs1("netwt")
        tot8 = tot8 + rs1("insamt")
        Check_Varcode = rs1("varcode")
        rs1.MoveNext
        If rs1.EOF Then
            Exit Do
        End If
            
    Loop
    rs1.MovePrevious
    Set rsP = New Recordset
    rsP.Open "select varname from rm_var where varname='" & rs1("VARCODE") & "'", Cnn, adOpenDynamic, adLockOptimistic
    Print #a, Space(15) + Padr(rs1("VARCODE"), 10, " ") + Space(4) + Padr(rsP("varname"), 25, " ") + Space(20) + Padl(INF(tot5, 0), 10, " ") + Space(3) + Padl(INF(tot6, 0), 15, " ") + Space(6) + Padl(INF(tot7, 2), 19, " ") + Space(6) + Padl(INF(tot8, 2), 19, " ")

'    rs1.MoveNext
    If rs1.EOF Then
        tot1 = tot1 + tot5
        tot2 = tot2 + tot6
        tot3 = tot3 + tot7
        tot4 = tot4 + tot8
        tot5 = 0
        tot6 = 0
        tot7 = 0
        tot8 = 0
        Exit Do
    End If
    tot1 = tot1 + tot5
    tot2 = tot2 + tot6
    tot3 = tot3 + tot7
    tot4 = tot4 + tot8
    tot5 = 0
    tot6 = 0
    tot7 = 0
    tot8 = 0
    rs1.MoveNext
    If rs1.EOF Then
        Exit Do
    End If
    Check_Varcode = rs1("varcode")
    co = co + 1
    If co > PageLen Then
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 4
        Call Purchase_abstract(Lot_Type)
    End If
Loop
'If extra_print = "Yes" Then
'    rs1.MovePrevious
'        Print #a, Space(15) + Padr(rs1("VARCODE"), 10, " ") + Space(4) + Padr(rsP("varname"), 25, " ") + Space(20) + Padl(rs1("bales"), 10, " ") + Space(3) + Padl(IIf(IsNull(rs1("borah")), 0, rs1("borah")), 15, " ") + Space(1) + Padl(Format(rs1("netwt"), "##,###,##0.000"), 19, " ") + Space(1) + Padl(Format(rs1("insamt"), "##,###,##0.000"), 19, " ")
'End If
Print #a, Space(15) + String(137, "-")
Print #a, Space(40) + " ** Total Purchase **" + Space(20) + Padr(INF(tot1, 0), 11, " ") + Space(1) + Padl(INF(tot2, 0), 9, " ") + Space(13) + Padl(INF(tot3, 2), 12, " ") + Space(10) + Padl(INF(tot4, 2), 15, " ")
Print #a, Space(15) + String(137, "-")
Print #a, Chr(18)
Print #a,
Print #a,
Print #a,
Call footermod(CInt(a), footerstr, 132)
Print #a, Chr(12)
Close #a
a = FreeFile
Open KALFOLDERDATA & "\purchase_day_book.bat" For Output As #a
Print #a, "cd\"
Print #a, KALFOLDERDATA
Print #a, "cd\"
Print #a, "type purchase_day_book.txt>prn"
Close #a
rptv.txtfile = KALFOLDERDATA & "\purchase_day_book.txt"
rptv.Batfile = KALFOLDERDATA & "\purchase_day_book.bat"
End Sub
Public Sub Purchase_Book_Header(pg1 As Integer, From_Date As String, To_Date As String, divname As String) ', co As Integer, u As String, v As String)
          Print #a,
'          Print #a, Space(10) + Space(Round((194 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((163 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Purchase Day Book " + Chr(27) + "F" + "From " & Space(1) & Format(From_Date, "dd/mm/yy") & Space(1) & "To" & Space(1) & Format(To_Date, "dd/mm/yy") & Space(57 + 5 + 8) + Format(SR, "dd/mm/yy") + Space(3) + "Pg.:" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(225, "-")
         'Print #a, Space(5) + "Account     Receipt       Party Name                                     Spot/For Variety                 Bill No        Bill         Mill Lot        No.of      No.of                              Rate/                 Invoice"
          'Print #a, Space(5) + "Account     Receipt       Party Name                                     Variety Name                     Bill No        Bill         Mill Lot        No.of      No.of                                Tax                   Total"
          'Print #a, Space(5) + "Date        Date                                                                                                         Date              No.        Bales      Borah              Kgs            Amount                   Value"\
          Print #a, Space(5) + "Account  Receipt   Party Name                                Variety Name    Bill No        Bill         Mill Lot  No.of      Rate                           Cotton            VAT           CST        Purchase             Bill"
          Print #a, Space(5) + "Date     Date                                                                               Date              No.  Bales                       Kgs            Value                                         cost            Value"
          Print #a, Space(5) + "                                                                                                                  /Borah                                                                                                         "
          
          Print #a, Space(5) + String(225, "-")
End Sub

Public Sub Purchase_abstract(Lot_Type As String)
          Print #a,
          Print #a, Space(15) + Chr(27) + "E" + "Purchase Abstract (" & Mid(Lot_Type, 4, Len(Lot_Type) - 3) & ")" + Chr(27) + "F"  'Type value
          Print #a,
          Print #a, Space(15) + String(137, "-")
          Print #a, Space(15) + "Code          Description                                        Bale             Borah                   Weight                    Value"
          Print #a, Space(15) + String(137, "-")
End Sub

Public Sub Purchase_glAbstract(From_Date As String, To_Date As String)
          Print #a,
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #a,
          Print #a, Chr(15)
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + Chr(27) + "E" + "Purchase Day Book Abstract  " + Chr(27) + "F" + "From " & Space(1) & Format(From_Date, "dd/mm/yy") & Space(1) & "To" & Space(1) & Format(To_Date, "dd/mm/yy") & Space(57 + 4) + Format(SR, "dd/mm/yy") + Space(3) + "Pg.:" + Padl(pg1, 3, " ") + Chr(15)
          Print #a, Space(5) + String(137, "-")
          Print #a, Space(5) + "GL Code       Description                                        Bale             Borah                   Weight                    Value"
          Print #a, Space(5) + String(137, "-")
End Sub

Public Sub Purchase_glAbstract1()
          Print #a,
'          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
'          Print #a,
'          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + Chr(27) + "E" + "Purchase Day Book VAT Abstract  " + Chr(27) + "F" '+ "From " & Space(1) & Format(From_Date, "dd/mm/yy") & Space(1) & "To" & Space(1) & Format(To_Date, "dd/mm/yy") & Space(57 + 5 + 8) + Format(SR, "dd/mm/yy") + Space(3) + "Pg.:" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(83, "-")
          Print #a, Space(5) + "GL Code       Description                                                     Value"
          Print #a, Space(5) + String(83, "-")
End Sub

Public Sub Purchase_abstract1(From_Date As String, To_Date As String, Category As String, Lot_Type As String, divname As String, footerstr As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim s As String
Dim Cnn As Connection
Set Cnn = New Connection
PageLen = 63
Cnn.Open connectstring
Set rptv = New Report.ReportView
a = FreeFile
Close #a
pg1 = 1
co = 0
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
tot6 = 0
tot7 = 0
'lottype = Mid$(Lot_Type, InStr(Lot_Type, "--") - 0, Len(Lot_Type))
lottype = Trim(Mid$(Lot_Type, 1, InStr(Lot_Type, "-") - 2))
Set RS2 = New Recordset
If Category = "A" Then

    If lottype <> "ALL" Then
        If lottype = "A" Then
            tmptypestr = "a.LotType"
        Else
            tmptypestr = "a.TransferType"
        End If
        RS2.Open "select tax_code,pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt,avg(rate_qntl) as rate_qntl," & _
        "sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from (select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end)," & _
        "borah=(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(favaourablewgt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as " & _
        "insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from  rm_lot a ,rm_var z,fa_tcmas b,fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN " & _
        "'" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and a.varcode=z.varcode and pjdt between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' " & _
        "and pjno is not null and a.lotyear='" & Year(yfdate) & "' and " & tmptypestr & " = '" & lottype & "' group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg)s group by tax_code,pjtc,glcode,glhead", DB, adOpenStatic
    Else
        RS2.Open "select tax_code,pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt,avg(rate_qntl) as rate_qntl," & _
        "sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from (select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end)," & _
        "borah=(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(favaourablewgt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as " & _
        "insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from  rm_lot a ,rm_var z,fa_tcmas b,fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN " & _
        "'" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and a.varcode=z.varcode and pjdt between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' " & _
        "and pjno is not null and a.lotyear='" & Year(yfdate) & "' group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg)s group by tax_code,pjtc,glcode,glhead", DB, adOpenStatic
    End If


Else

 If lottype <> "ALL" Then
   
   If lottype = "A" Then
       tmptypestr = "a.LotType"
   Else
       tmptypestr = "a.TransferType"
   End If

        RS2.Open "select tax_code,pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt,avg(rate_qntl) as rate_qntl," & _
        "sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from (select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end)," & _
        "borah=(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as " & _
        "insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from  rm_lot a ,rm_var z,fa_tcmas b,fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN " & _
        "'" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and a.varcode=z.varcode and a.catcd='" & Category & "' and pjdt between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' " & _
        "and pjno is not null and a.lotyear='" & Year(yfdate) & "' and " & tmptypestr & " = '" & lottype & "' group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg)s group by tax_code,pjtc,glcode,glhead", DB, adOpenStatic
        
  Else
  
  RS2.Open "select tax_code,pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt,avg(rate_qntl) as rate_qntl," & _
        "sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from (select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end)," & _
        "borah=(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as " & _
        "insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from  rm_lot a ,rm_var z,fa_tcmas b,fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN " & _
        "'" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and a.varcode=z.varcode and a.catcd='" & Category & "' and pjdt between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' " & _
        "and pjno is not null and a.lotyear='" & Year(yfdate) & "' group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg)s group by tax_code,pjtc,glcode,glhead", DB, adOpenStatic
 End If
End If
If RS2.RecordCount = 0 Then
    MsgBox "No record found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
If RS2.RecordCount > 0 Then
    a = FreeFile
    Close #a
    Open KALFOLDERDATA & "\purchase_abstract.TXT" For Output As #a
    Print #a, Chr(18)
    Call Purchase_glAbstract(From_Date, To_Date)
    co = co + 8
    Do While Not RS2.EOF
        Set rs3 = New Recordset
        rs3.Open "Select * from ig_tax where tax_code='" & RS2("tax_code") & "'", DB, adOpenStatic
        If rs3.RecordCount > 0 Then
            If rs3("itctaxstatus") = "Y" Then
                value = RS2("pjamt") ' - rs2("vatamt")
            Else
                value = RS2("pjamt")
            End If
        Else
            value = RS2("pjamt")
        End If
        Print #a, Space(5) + Padr(RS2("glcode"), 10, " ") + Space(4) + Padr(RS2("glhead"), 44, " ") + Space(1) + Padl(INF(RS2("bales"), 0), 10, " ") + Space(3) + Padl(INF(RS2("borah"), 0), 15, " ") + Space(6) + Padl(INF(RS2("netwt"), 3), 19, " ") + Space(6) + Padl(INF(value, 2), 19, " ")
        tot1 = tot1 + RS2("bales")
        tot2 = tot2 + RS2("borah")
        tot3 = tot3 + RS2("netwt")
        tot4 = tot4 + value
        co = co + 1
        If co > 58 Then
            Print #a, Space(5) + String(137, "-")
            co = 0
            Print #a, Chr(12)
            Call Purchase_glAbstract(From_Date, To_Date)
            co = co + 8
        End If
        RS2.MoveNext
    Loop
End If
If co > 58 Then
    Print #a, Space(5) + String(137, "-")
    Print #a, Chr(12)
    Call Purchase_glAbstract(From_Date, To_Date)
End If
Print #a, Space(5) + String(137, "-")
Print #a, Space(5) + Padr("", 10, " ") + Space(4) + Padr("", 44, " ") + Space(1) + Padl(INF(tot1, 0), 10, " ") + Space(3) + Padl(INF(tot2, 0), 15, " ") + Space(6) + Padl(INF(tot3, 3), 19, " ") + Space(6) + Padl(INF(tot4, 2), 19, " ")
Print #a, Space(5) + String(137, "-")
If co > 58 Then
    Print #a, Space(5) + String(137, "-")
    co = 0
    Print #a, Chr(12)
    Call Purchase_glAbstract(From_Date, To_Date)
    co = co + 8
End If
Print #a,
Print #a,
tot5 = 0
Set rs4 = New Recordset
rs4.Open "select tax_code,pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt,avg(rate_qntl) as rate_qntl," & _
        "sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from (select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end)," & _
        "borah=(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as " & _
        "insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt from  rm_lot a ,rm_var z,fa_tcmas b,fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode='" & Divcode & "' and a.opflg in('N','n') and  a.lotyear='" & Year(yfdate) & "' and lotdt BETWEEN " & _
        "'" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and a.varcode=z.varcode and a.catcd='" & Category & "' and pjdt between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' " & _
        "and pjno is not null and a.lotyear='" & Year(yfdate) & "' and isnull(vatamt,0) <> 0 group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg)s group by tax_code,pjtc,glcode,glhead", DB, adOpenStatic
        RS2.MoveFirst
If rs4.RecordCount > 0 Then
    If rs4("tax_code") <> "" Then
        co = co + 5
        Call Purchase_glAbstract1
        co = co + 6
        Print #a, Space(5) + Padr(RS2("glcode"), 10, " ") + Space(4) + Padr(RS2("glhead"), 44, " ") + Space(6) + Padl(INF(tot4, 2), 19, " ")
        Do While Not rs4.EOF
            Set rsP = New Recordset
            rsP.Open "Select isnull(itcglcode,'') as itcglcode from ig_tax where tax_code='" & rs4("tax_code") & "'", DB, adOpenStatic
            Set rs3 = New Recordset
            rs3.Open "Select isnull(glhead,'') as glhead from fa_glmas where glcode='" & rsP("itcglcode") & "'", DB, adOpenStatic
            'If rsP("itctaxstatus") = "Y" Then
                Print #a, Space(5) + Padr(rsP("itcglcode"), 10, " ") + Space(4);
                If rs3.RecordCount > 0 Then
                    Print #a, Padr(rs3("glhead"), 44, " ");
                Else
                    Print #a, Padr("", 44, " ");
                End If
                Print #a, Space(6) + Padl(INF(rs4("vatamt"), 2), 19, " ")
            'End If
            tot5 = tot5 + rs4("vatamt")
            co = co + 1
            rs4.MoveNext
        Loop
        'tot5 = tot5 + tot4
        Print #a, Space(5) + String(83, "-")
        Print #a, Space(5) + Padr("", 10, " ") + Space(4) + Padr("", 44, " ") + Space(6) + Padl(INF(tot5 + tot4, 2), 19, " ")
        Print #a, Space(5) + String(83, "-")
    End If
End If
Print #a,
Print #a,
Print #a,
Print #a,
co = co + 7
Print #a, Chr(18)
Call footermod(CInt(a), footerstr, 80)
Print #a, Chr(12)
Close #a
a = FreeFile
Open KALFOLDERDATA & "\purchase_abstract.bat" For Output As #a
Print #a, "cd\"
Print #a, KALFOLDERDATA
Print #a, "cd\"
Print #a, "type purchase_abstract.txt>prn"
Close #a
rptv.txtfile = KALFOLDERDATA & "\purchase_abstract.txt"
rptv.Batfile = KALFOLDERDATA & "\purchase_abstract.bat"
End Sub

Public Sub sales_DayBook(From_Date As String, To_Date As String, Category As String, Lot_Type As String, divname As String, footerstr As String, S1 As String, s2 As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim s As String
Dim Cnn As Connection
Set Cnn = New Connection
PageLen = 63
Cnn.Open connectstring
'cat = Left(Category, InStr(1, Category, "-") - 1)
cat = Category
Category = Left(Category, 1)

Set rs1 = New Recordset
If Category = "A" Then
    rs1.Open "select delivery_dt,c.lotdt,b.value,product_code,a.inv_no,date,cust_code,slname,a.agent_code,d.state_code,brok_code,matl_value,total_amt,case when c.bblflg = 'B' then packs  else 0 end as bales,case when c.bblflg   IN ('R','H') then packs else 0 end as boras,rate_nett,s.state_code as divstate,nett_kgs,ISNULL(INV_KGS,0) AS INV_KGS,c.varcode,b.cess_amt,catcd,vatamt=(case when d.state_code=s.state_code then round(isnull(b.tax_amt,0),0) else 0 end),cstamt=(case when d.state_code<>s.state_code then round(isnull(b.tax_amt,0),0) else 0 end)from rm_cinvhd a,rm_cinvdt b,rm_lot c,fa_slmas d,pp_divmas s where a.divcode=s.divcode and a.cust_code=d.slcode and b.product_code=c.lotno and a.divcode=c.divcode and a.divcode=b.divcode " & _
             " and a.inv_type=b.inv_type and a.inv_no=b.inv_no and a.divcode='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "' and Date Between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and cust_code between '" & S1 & "' and '" & s2 & "' AND c.lottype='A'" & _
             "order by date", DB, adOpenStatic
Else
    rs1.Open "select delivery_dt,c.lotdt,product_code,a.inv_no,date,cust_code,slname,a.agent_code,d.state_code,brok_code,matl_value,total_amt,case when c.bblflg = 'B' then packs  else 0 end as bales,case when c.bblflg   IN ('R','H') then packs else 0 end as boras,rate_nett,s.state_code as divstate,nett_kgs,ISNULL(INV_KGS,0) AS INV_KGS, b.cess_amt" & _
    ",varcode,catcd,vatamt=(case when d.state_code=s.state_code then isnull(b.tax_amt,0) else 0 end),cstamt=(case when d.state_code<>s.state_code then isnull(b.tax_amt,0) else 0 end),b.value from rm_cinvhd a,rm_cinvdt b,rm_lot c,fa_slmas d,pp_divmas s where a.divcode=s.divcode and a.cust_code=d.slcode and b.product_code=c.lotno and a.divcode=c.divcode and c.catcd='" & Category & "' and a.divcode=b.divcode and a.inv_type=b.inv_type and a.inv_no=b.inv_no and a.divcode='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "' and Date Between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "'  and cust_code between '" & S1 & "' and '" & s2 & "' AND c.lottype='A' order by date", DB, adOpenStatic
End If
If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set rptv = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\sales_day_book.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call sales_Book_Header(pg1, From_Date, To_Date, divname, CStr(cat))
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
tot6 = 0
tot7 = 0
tot8 = 0

'RS1.MoveFirst
Do While Not rs1.EOF
    pcost = rs1("matl_value") + rs1("cstamt")
    Set rsP = New Recordset
    rsP.Open "select slname from fa_slmas where slcode='" & rs1("cust_code") & "'", Cnn, adOpenDynamic, adLockOptimistic
    Set rsP1 = New Recordset
    rsP1.Open "select varname from rm_var where varcode='" & rs1("VARCODE") & "'", Cnn, adOpenDynamic, adLockOptimistic
    Print #a, Space(5) + Padr(Format(rs1("date"), "dd/mm/yy"), 8, " ") + Space(1) + Padr(Format(rs1("delivery_dt"), "dd/mm/yy"), 8, " ") + Space(2) + Padr(rsP(0), 45, " ") + Space(2) + Padr((CStr(rsP1("varname"))), 14, " ") + Space(1) + Padl(val(Mid(rs1("inv_no"), 3, Len(rs1("inv_no")))), 8, " ") + Space(4) + Padr(Format(rs1("date"), "dd/mm/yy"), 13, " ") + Space(2) + Padl(INF(rs1("product_code"), 0), 6, " ") + Space(2) + Padl(INF(rs1("bales") + rs1("boras"), 0), 5, " ") + Space(2) + Padl(INF(rs1("rate_nett"), 2), 8, " ") + Space(1) + Padl(INF(rs1("INV_kgs"), 3), 15, " ") + Space(1) + Padl(INF(rs1("value"), 2), 15, " ") + Space(1) + Padl(INF(rs1("vatamt"), 2), 11, " ") + Space(1) + Padl(INF(rs1("cstamt"), 2), 11, " ") + Space(1) + Padl(INF(rs1("cess_amt"), 2), 11, " ") + Space(1) + Padl(INF(rs1("total_amt"), 2), 14, " ")
    Print #a,
    co = co + 2
    tot1 = tot1 + rs1("bales") + rs1("boras")
    If IsNull(rs1("boras")) Then
        tot2 = tot2 + 0
    Else
        tot2 = tot2 + val(rs1("boras"))
    End If
    tot3 = tot3 + val(IIf(IsNull(rs1("inv_kgs")), 0, rs1("inv_kgs")))
    tot4 = tot4 + val(IIf(IsNull(rs1("total_amt")), 0, rs1("total_amt")))
    tot5 = tot5 + val(IIf(IsNull(rs1("vatamt")), 0, rs1("vatamt")))
    tot6 = tot6 + val(IIf(IsNull(rs1("cstamt")), 0, rs1("cstamt")))
    tot7 = tot7 + val(IIf(IsNull(rs1("matl_value")), 0, rs1("matl_value")))
    tot8 = tot8 + pcost
    
    'co = co + 1
    If co > PageLen Then
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 10
        Call sales_Book_Header(pg1, From_Date, To_Date, divname, CStr(cat)) ', co, u, v)
    End If
    rs1.MoveNext
Loop
Print #a, Space(5) + String(214, "-")
'Print #a, Space(5) + Padr(Format(RS1("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padr(Format(RS1("arrdt"), "dd/mm/yy"), 8, " ") + Space(2) + Padr(rsP(0), 40, " ") + Space(2) + Padr((CStr(RS1("varcode"))), 14, " ") + Space(2) + Padl(RS1("billno"), 7, " ") + Space(4) + Padr(Format(RS1("billdt"), "dd/mm/yy"), 16, " ") + Space(2) + Padl(INF(RS1("lotno"), 0), 6, " ") + Space(3) + Padl(INF(RS1("bales"), 0), 5, " ") + Space(2) + Padl(INF(RS1("rate_qntl"), 2), 8, " ") + Space(1) + Padl(INF(RS1("NETWT"), 2), 15, " ") + Space(2) + Padl(INF(RS1("itemvalue"), 2), 15, " ") + Space(2) + Padl(INF(RS1("vatamt"), 2), 13, " ") + Space(1) + Padl(INF(RS1("cstamt"), 2), 13, " ") + Space(1) + Padl(INF(pcost, 2), 15, " ") + Space(1) + Padl(INF(RS1("insamt"), 2), 16, " ")
Print #a, Space(5 + 40 + 19) + " ** Grand Total **" + Space(10 + 29) + Padl(INF(tot1, 0), 5, " ") + Space(11) + Padl(INF(tot3, 2), 15, " ") + Space(2) + Padl(INF(tot7, 2), 15, " ") + Space(2) + Padl(INF(tot5, 0), 13, " ") + Space(0) + Padl(INF(tot6, 0), 12, " ") + Space(1) + Padl(INF(tot4, 2), 22, " ")
'Print #a,
Print #a, Space(5) + String(214, "-")
Print #a,
Print #a,
co = co + 6
'Lot_Type = " "
Call sales_abstract(Lot_Type)
co = co + 6

Set rs1 = New Recordset
If Category = "A" Then
    rs1.Open "select c.lotdt,product_code,a.inv_no,date,cust_code,slname,b.value,a.agent_code,d.state_code,brok_code,matl_value,total_amt,case when c.bblflg = 'B' then packs  else 0 end as bales,case when c.bblflg   IN ('R','H') then packs else 0 end as boras,rate_nett,s.state_code as divstate,nett_kgs,ISNULL(INV_KGS,0)AS INV_KGS,c.varcode,catcd,vatamt=(case when d.state_code=s.state_code then isnull(a.tax_amt,0) else 0 end),cstamt=(case when d.state_code<>s.state_code then isnull(a.tax_amt,0) else 0 end)from rm_cinvhd a,rm_cinvdt b,rm_lot c,fa_slmas d,pp_divmas s where a.divcode=s.divcode and a.cust_code=d.slcode and b.product_code=c.lotno and a.divcode=c.divcode and a.divcode=b.divcode and a.inv_type=b.inv_type and a.inv_no=b.inv_no and a.divcode='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "' and Date Between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "'  and cust_code between '" & S1 & "' and '" & s2 & "' AND c.lottype='A' order by varcode", DB, adOpenStatic
Else
    rs1.Open "select c.lotdt,product_code,a.inv_no,date,cust_code,slname,b.value,a.agent_code,d.state_code,brok_code,matl_value,total_amt,case when c.bblflg = 'B' then packs  else 0 end as bales,case when c.bblflg   IN ('R','H') then packs else 0 end as boras,rate_nett,s.state_code as divstate,nett_kgs,ISNULL(INV_KGS,0) AS INV_KGS " & _
    ",c.varcode,catcd,vatamt=(case when d.state_code=s.state_code then isnull(a.tax_amt,0) else 0 end),cstamt=(case when d.state_code<>s.state_code then isnull(a.tax_amt,0) else 0 end)from rm_cinvhd a,rm_cinvdt b,rm_lot c,fa_slmas d,pp_divmas s where a.divcode=s.divcode and a.cust_code=d.slcode and b.product_code=c.lotno and a.divcode=c.divcode and c.catcd='" & Category & "' and a.divcode=b.divcode and a.inv_type=b.inv_type and a.inv_no=b.inv_no and a.divcode='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "' and Date Between '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and cust_code between '" & S1 & "' and '" & s2 & "' AND c.lottype='A' order by varcode", DB, adOpenStatic
End If
If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If


rs1.MoveFirst
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
tot6 = 0
tot7 = 0
tot8 = 0
Check_Varcode = rs1("varcode")
Do While Not rs1.EOF
    Do While Check_Varcode = rs1("VARCODE")
        tot5 = tot5 + rs1("bales")
        If IsNull(rs1("boras")) Then
            tot6 = tot6 + 0
        Else
            tot6 = tot6 + val(rs1("boras"))
        End If
        tot7 = tot7 + rs1("INV_kgs")
        tot8 = tot8 + rs1("total_amt")
        Check_Varcode = rs1("varcode")
        rs1.MoveNext
        If rs1.EOF Then
            Exit Do
        End If
            
    Loop
    rs1.MovePrevious
    Set rsP = New Recordset
    rsP.Open "select varname from rm_var where varcode='" & rs1("VARCODE") & "'", Cnn, adOpenDynamic, adLockOptimistic
    Print #a, Space(35) + Padr(rs1("VARCODE"), 10, " ") + Space(4) + Padr(rsP("varname"), 25, " ") + Space(20) + Padl(INF(tot5, 0), 10, " ") + Space(3) + Padl(INF(tot6, 0), 15, " ") + Space(6) + Padl(INF(tot7, 2), 19, " ") + Space(6) + Padl(INF(tot8, 2), 19, " ")
    Print #a,
    co = co + 2
'    rs1.MoveNext
    If rs1.EOF Then
        tot1 = tot1 + tot5
        tot2 = tot2 + tot6
        tot3 = tot3 + tot7
        tot4 = tot4 + tot8
        tot5 = 0
        tot6 = 0
        tot7 = 0
        tot8 = 0
        Exit Do
    End If
    tot1 = tot1 + tot5
    tot2 = tot2 + tot6
    tot3 = tot3 + tot7
    tot4 = tot4 + tot8
    tot5 = 0
    tot6 = 0
    tot7 = 0
    tot8 = 0
    rs1.MoveNext
    If rs1.EOF Then
        Exit Do
    End If
    Check_Varcode = rs1("varcode")
    co = co + 1
'    If co > PageLen Then
'        Print #a, Chr(12)
'        pg1 = pg1 + 1
'        co = 4
'        Call sales_abstract(Lot_Type)
'    End If
Loop
'If extra_print = "Yes" Then
'    rs1.MovePrevious
'        Print #a, Space(15) + Padr(rs1("VARCODE"), 10, " ") + Space(4) + Padr(rsP("varname"), 25, " ") + Space(20) + Padl(rs1("bales"), 10, " ") + Space(3) + Padl(IIf(IsNull(rs1("borah")), 0, rs1("borah")), 15, " ") + Space(1) + Padl(Format(rs1("netwt"), "##,###,##0.000"), 19, " ") + Space(1) + Padl(Format(rs1("insamt"), "##,###,##0.000"), 19, " ")
'End If
Print #a, Space(35) + String(137, "-")
Print #a, Space(60) + " ** Total Sales **" + Space(23) + Padr(INF(tot1, 0), 11, " ") + Space(1) + Padl(INF(tot2, 0), 9, " ") + Space(13) + Padl(INF(tot3, 2), 12, " ") + Space(10) + Padl(INF(tot4, 2), 15, " ")
Print #a, Space(35) + String(137, "-")
Print #a,
Print #a,
Print #a,
Print #a,
Call footermod(CInt(a), footerstr, 132)
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
Open KALFOLDERDATA & "\sales_day_book.bat" For Output As #a
Print #a, "cd\"
Print #a, KALFOLDERDATA
Print #a, "cd\"
Print #a, "type sales_day_book.txt>prn"
Close #a
rptv.txtfile = KALFOLDERDATA & "\sales_day_book.txt"
rptv.Batfile = KALFOLDERDATA & "\sales_day_book.bat"

'Do not change the format the format
'done by rejitha on 27/06/2008 under the guidance of auditor


End Sub
Public Sub sales_Book_Header(pg1 As Integer, From_Date As String, To_Date As String, divname As String, Category As String) ', co As Integer, u As String, v As String)
          Print #a,
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Rawmaterial Sales Day Book    " + Chr(27) + "F" + "From " & Space(1) & Format(From_Date, "dd/mm/yy") & Space(1) & "To" & Space(1) & Format(To_Date, "dd/mm/yy") & CENTRE(Category, 52, " ") & Format(SR, "dd/mm/yy") + Space(3) + "Pg.:" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(214, "-")
          Print #a, Space(5) + "Account  Delivery  Supplier Name                                  Variety         Bill No        Bill     Mill Lot  No.of      Rate            Kgs          Taxable         VAT        CST         Cess           Bill"
          Print #a, Space(5) + "Date     Date                                                                                    Date          No.  Bales                                     Value                                              Value"
          Print #a, Space(5) + "                                                                                                                   /Borah                                                                                             "
          
          Print #a, Space(5) + String(214, "-")
'Do not change the format the format
'done by rejitha on 27/06/2008 under the guidance of auditor
End Sub

Public Sub sales_abstract(Lot_Type As String)
          Print #a,
          Print #a, Space(35) + Chr(27) + "E" + "Rawmaterial Sales Abstract " + Chr(27) + "F"  'Type value
          Print #a, Space(35) + String(137, "-")
          Print #a, Space(35) + "Code          Description                                       Bales            Borahs                   Weight                    Value"
          Print #a, Space(35) + String(137, "-")
'Do not change the format the format
'done by rejitha on 27/06/2008 under the guidance of auditor
End Sub

