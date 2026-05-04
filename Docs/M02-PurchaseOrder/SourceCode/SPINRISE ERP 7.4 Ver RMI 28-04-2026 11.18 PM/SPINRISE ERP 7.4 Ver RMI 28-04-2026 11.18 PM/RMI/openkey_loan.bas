Attribute VB_Name = "op_key_loan"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer


Public Sub OpenKey(Category As String, Lot_Date As String, DIVNAME As String)
Dim RS1 As Recordset
Dim rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
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

Dim cnn As Connection
Set cnn = New Connection

cnn.Open connectstring
Set RS1 = New Recordset
RS1.Open "select distinct candy_rate = ROUND((a.ratekg * 355.6187),0),a.lotno,a.staplen,a.varcode,a.areacd,a.lotdt,a.lottype,a.supcd,b.openkey,b.isqty,ke_bale  = (select distinct count(*) from rm_lot a,rm_bale b where b.openkey is not null and a.bblflg = 'B' and a.lotdt ='" & Format(Lot_Date, "yyyy/mm/dd") & "' and a.divcode = '" & Divcode & "'),ke_borah = (select distinct count(*) from rm_lot a,rm_bale b where b.openkey is not null and a.bblflg = 'R'and a.lotdt ='" & Format(Lot_Date, "yyyy/mm/dd") & "' and a.divcode ='" & Divcode & "'),op_bale  = (select distinct count(*) from rm_lot a,rm_bale" & _
" where b.openkey is not null and a.bblflg = 'B'and a.lotdt ='" & Format(Lot_Date, "yyyy/mm/dd") & "' and a.divcode ='" & Divcode & "'),op_borah = (select distinct count(*) from rm_lot a,rm_bale b where b.openkey is not null and a.bblflg    IN ('R','H') and a.lotdt ='" & Format(Lot_Date, "yyyy/mm/dd") & "' and a.divcode ='" & Divcode & "') from rm_lot a,rm_bale b where a.lotno=b.lotno and a.lottype=b.lottype and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and a.lotdt='" & Format(Lot_Date, "yyyy/mm/dd") & "'and " & _
"a.catcd=(select distinct catcd from rm_cat where catname='" & UCase(Category) & "')", cnn, adOpenStatic, adLockOptimistic

'rs1.Open "select distinct candy_rate = ROUND((a.ratekg * 355.6187),0),a.lotno,a.staplen,a.varcode,a.areacd,a.lotdt,a.lottype,a.supcd,b.openkey,b.isqty,ke_bale  = (select count(*) from rm_lot where openkey = 'K' and bblflg = 'B' and lotdt ='" & Format(Lot_Date, "yyyy/mm/dd") & "' and divcode ='" & DIVCODE & "'),ke_borah = (select count(*) from rm_lot where openkey = 'K' and bblflg = 'R'and lotdt ='" & Format(Lot_Date, "yyyy/mm/dd") & "' and divcode ='" & DIVCODE & "'),op_bale  = (select count(*) from rm_lot where openkey <> 'K' and bblflg = 'B'and lotdt ='" & Format(Lot_Date, "yyyy/mm/dd") & "' and divcode ='" & DIVCODE & "'),op_borah = (select count(*) from rm_lot where openkey <> 'K' and bblflg = 'R' and lotdt ='" & Format(Lot_Date, "yyyy/mm/dd") & "' and divcode ='" & DIVCODE & "') from rm_lot a,rm_bale b where a.lotno=b.lotno and a.lottype=b.lottype and a.lotdt=b.lotdt and a.catcd=b.catcd and a.divcode=b.divcode and a.lotdt='" & Format(Lot_Date, "yyyy/mm/dd") & "'", cnn, adOpenStatic, adLockOptimistic
If RS1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Open "C:\openkey.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call Purchase_Book_Header(pg1, DIVNAME)
RS1.MoveFirst
Do While Not RS1.EOF
    Print #a, Space(3) + Padl(CStr(INF(RS1("candy_rate"), 0)), 10, " ") + Padl(CStr(RS1("lotno")), 13, " ") + Space(5) + Padl(CStr(IIf(RS1("staplen") = 0, " ", RS1("staplen"))), 11, " ") + Space(4);
    Set rsP = New Recordset
    rsP.Open "select distinct varname from rm_var where varcode='" & RS1("varcode") & " '", cnn, adOpenDynamic, adLockOptimistic
    Print #a, Padr(CStr(rsP("varname")), 30, " ") + Space(10);
    Set rsP = New Recordset
    rsP.Open "select distinct areaname from rm_area where areacode='" & RS1("areacd") & " '", cnn, adOpenDynamic, adLockOptimistic
    Print #a, Padr(CStr(rsP("areaname")), 40, " ") + Space(5);
    Set rsP = New Recordset
    rsP.Open "select distinct slname from fa_slmas where slcode='" & RS1("supcd") & "'", cnn, adOpenDynamic, adLockOptimistic
    Print #a, Space(2) + Padr(rsP("slname"), 40, " ") + Space(5);
'    Set rs2 = New Recordset
'    rs2.Open "select a.lottype,a.lotno,a.lotdt,a.isqty from rm_bale a,rm_lot b where b.lotno='" & rs1("lotno") & "' and b.lotdt=" & Format(rs1("lotdt"), "dd/mm/yyyy") & " and b.lottype='" & rs1("lottype") & "'", cn, adOpenDynamic, adLockOptimistic
'    If rs2.RecordCount = 0 Then
'        GoTo 10
'    End If
'    rs1.MoveFirst
'    Do While Not rs1.EOF And rs1("lottype") = rs2("lottype") And rs1("lotno") = rs2("lotno")
'        If rs1("lotdt") > Lot_Date Then
'            If rs2("openkey") = "K" Then
'                If rs2("bblflg") = "B" Then
'                    key_bale = keybale + 1
'                Else
'                    key_borah = key_bora + 1
'            Else
'                If rs2("bblflg") = "B" Then
'                    open_bale = open_bale + 1
'                Else
'                    open_borah = open_bora + 1
'                End If
'            End If
'            ok_qty = ok_qty + rs1("isqty")
'        End If
'        rs1.MoveNext
'    Loop
    candy = Round((ok_qty / 355.6187), 0)
'    Print #a, Space(5) + Padl(CStr(IIf(rs1("ke_bale") = 0, " ", rs1("ke_bale"))), 4, " ") + Space(4) + Padl(CStr(IIf(rs1("ke_borah") = 0, " ", rs1("ke_borah"))), 4, " ") + Space(3) + Padl(CStr(IIf(rs1("op_bale") = 0, " ", rs1("op_bale"))), 4, " ") + Space(5) + Padl(CStr(IIf(rs1("op_borah") = 0, " ", rs1("op_borah"))), 4, " ") + Space(3) + Padl(CStr(IIf(candy = 0, " ", candy)), 16, " ")
    Print #a, Space(5) + Padl(INF(RS1("ke_bale"), 0), 4, " ") + Space(4) + Padl(INF(RS1("ke_borah"), 0), 4, " ") + Space(3) + Padl(INF(RS1("op_bale"), 0), 4, " ") + Space(5) + Padl(INF(RS1("op_borah"), 0), 4, " ") + Space(3) + Padl(INF(candy, 0), 16, " ")
    tot1 = tot1 + val(RS1("ke_bale"))
    tot2 = tot2 + val(RS1("ke_borah"))
    tot3 = tot2 + val(RS1("op_bale"))
    tot4 = tot4 + val(RS1("op_borah"))
    tot5 = tot5 + val(candy)
    vtot_candy = vtot_candy + val(candy)
    RS1.MoveNext
    co = co + 1
    If co >= pagelen Then
        Print #a, Space(5) + String(225, "-");
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call Purchase_Book_Header(pg1, DIVNAME) ', co, u, v)
    End If
Loop
Print #a, Space(5) + String(225, "-")
'Print #a, Space(88) + " ** Grand Total **" + Space(77) + Padl(CStr(IIf(tot1 = 0, " ", tot1)), 4, " ") + Space(4) + Padl(CStr(IIf(tot2 = 0, " ", tot2)), 4, " ") + Space(3) + Padl(CStr(IIf(tot3 = 0, " ", tot3)), 4, " ") + Space(5) + Padl(CStr(IIf(tot4 = 0, " ", tot4)), 4, " ") + Space(3) + Padl(CStr(IIf(candy = 0, " ", candy)), 16, " ")
Print #a, Space(88) + " ** Grand Total **" + Space(77) + Padl(INF(tot1, 0), 4, " ") + Space(4) + Padl(INF(tot2, 0), 4, " ") + Space(3) + Padl(INF(tot5, 0), 4, " ") + Space(5) + Padl(INF(tot4, 0), 4, " ") + Space(3) + Padl(INF(candy, 0), 16, " ")
Print #a, Space(5) + String(225, "-")
'Print #a,
co = co + 1
If co > pagelen Then
    Print #a, Space(5) + String(225, "-");
    Print #a, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call Purchase_Book_Header(pg1, DIVNAME) ', co, u, v)
End If
'Print #a, Space(15) + String(150, "-")
'Print #a, Space(40) + " ** Total Purchase **" + Space(19) + Padr(CStr(tot1), 10, " ") + Space(2) + Padl(CStr(tot2), 10, " ") + Space(13) + Padl(Format(tot3, "##,###,###.000"), 12, " ") + Space(10) + Padl(Format(tot4, "##,###,###.000"), 15, " ")
'Print #a, Space(15) + String(150, "-")
Print #a, Chr(15)
Print #a, Chr(12)
Close #a
a = FreeFile
Open "c:\openkey.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type openkey.txt>prn"
Close #a
RPTV.txtfile = "c:\openkey.txt"
RPTV.Batfile = "c:\openkey.bat"
End Sub
Public Sub Purchase_Book_Header(pg1 As Integer, DIVNAME As String) ', co As Integer, u As String, v As String)
'          Print #a,
                      
'          Print #a, Space(10) + Space(Round((176 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((163 - 2 * Len(DIVNAME)) / 2))
          Print #a, Chr(18)
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Open Key Loan" + Chr(27) + "F" & Space(93) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(225, "-")
'          Print #a, Space(8) + "Rate/       Lot_no        Stp 1    Variety                         Area Name                       Party                                Key          Opn        Noof      Prp      Stk "
'          Print #a, Space(8) + "Candy                     &abve                                                                    Name                             Bal     Bor   Bal    Bor    Cndy       %       Day "
          
'          Print #a, Space(8) + "Rate/       Lot No          Step 1    Variety                         Area Name                       Party                                  Key            Open              Noof  "
'          Print #a, Space(8) + "Candy                       &above                                                                    Name                              Bales   Boras  Bales    Boras         Cndy  "
         
          Print #a, Space(8) + "Rate/       Lot No          Step 1    Variety                                 Area Name                                      Party                                                 Key            Open                    Noof"
          Print #a, Space(8) + "Candy                       &above                                                                                           Name                                             Bales   Borah  Bales    Borah               Cndy"
         
         Print #a, Space(5) + String(225, "-")
         co = co + 8
End Sub
