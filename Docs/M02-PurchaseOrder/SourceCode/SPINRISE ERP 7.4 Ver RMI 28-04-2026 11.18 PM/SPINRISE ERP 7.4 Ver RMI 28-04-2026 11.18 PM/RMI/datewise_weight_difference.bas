Attribute VB_Name = "datewise_weight_diff"

Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim Namers As Recordset
Dim VarName, s1, s2 As String
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Dim rp As New repform1
Dim rec_count As Integer

Public Sub Lotwise_Weight_Difference(From_Date As String, To_Date As String, fltn As String, tltn As String, DIVNAME As String, footerstr As String, s1 As String, s2 As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim tot0 As Double
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
Dim tot16 As Double
Dim tot17 As Double
Dim tot18 As Double
Dim tot19 As Double
Dim tot20 As Double
Dim tot21 As Double
Dim tot22 As Double
Dim tot23 As Double
Dim tot24 As Double
Dim tot25 As Double

Dim S As String
's1 = Mid$(rp.dbcmb_fsup.Text, InStr(rp.dbcmb_fsup.Text, "--") + 3, (Len(rp.dbcmb_fsup.Text) - InStr(rp.dbcmb_fsup.Text, "--")))
's2 = Mid$(rp.dbcmb_tsup.Text, InStr(rp.dbcmb_tsup.Text, "--") + 3, (Len(rp.dbcmb_tsup.Text) - InStr(rp.dbcmb_tsup.Text, "--")))
Dim cnn As Connection
Set cnn = New Connection

Set rs1 = New Recordset
cnn.Open connectstring
'rs1.Open "select arrdt,arrno,supcd,catcd,lotno,lotdt,varcode,spot = ROUND(pjamt/ptywgt * 355.6187,0),taxamt Cst,spotexp SE,insamt insurance,brk_amt = ROUND(brkcom /netwt * 355.6187,0),frt_amt = ROUND(freght / netwt * 355.6187,0),short_fibre shortage,tot_exp =ROUND(pjamt/ptywgt * 355.6187,0)+taxamt+spotexp+insamt+ROUND(brkcom /netwt * 355.6187,0)+ROUND(freght / netwt * 355.6187,0)+short_fibre ,mill_rate = ROUND(pjamt/ptywgt * 355.6187,0)+taxamt+spotexp+insamt+ROUND(brkcom /netwt * 355.6187,0)+ROUND(freght / netwt * 355.6187,0)+short_fibre + isnull(ratecy,0),billno inv_no,bales noof_bale,netwt invoice_Weight,ptywgt mill_weight,diff_shortage=(case when ptywgt>netwt then ptywgt-netwt end),diff_excess=(case when netwt>ptywgt then netwt-ptywgt end) from rm_lot where lotdt between '" & Format(from_date, "yyyy-mm-dd") & "' and '" & Format(to_date, "yyyy-mm-dd") & "' order by arrdt", cnn, adOpenStatic, adLockOptimistic
'vasanth on 24/06/02
On Error Resume Next
'rs1.Open "select arrdt,arrno,supcd,catcd,lotno,lotdt,varcode,spot = isnull(ROUND(pjamt/ptywgt * 355.6187,0),0),isnull(taxamt,0) as Cst,spotexp SE,insamt insurance,brk_amt = isnull(ROUND(brkcom /netwt * 355.6187,0),0),frt_amt = isnull(ROUND(freght / netwt * 355.6187,0),0),short_fibre shortage,tot_exp =isnull(ROUND(pjamt/ptywgt * 355.6187,0),0)+isnull(taxamt,0)+isnull(spotexp,0)+isnull(insamt,0)+isnull(ROUND(brkcom /netwt * 355.6187,0),0)+isnull(ROUND(freght / netwt * 355.6187,0),0)+short_fibre ,mill_rate = ROUND( pjamt / ptywgt * 355.6187,0)+isnull(taxamt,0)+isnull(spotexp,0)+isnull(insamt,0)+ROUND(brkcom /netwt * 355.6187,0)+ROUND(freght / netwt * 355.6187,0)+short_fibre + isnull(ratecy,0),billno inv_no," & _
         "bales noof_bale,round(netwt,2) mill_weight ,round(ptywgt,2) invoice_Weight,diff_shortage=(case when ptywgt>netwt then round(ptywgt-netwt,2) end),diff_excess=(case when netwt>ptywgt then round(netwt-ptywgt,2) end) from rm_lot where lotdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrdt,arrno", cnn, adOpenStatic, adLockBatchOptimistic
rs1.Open "select arrdt,arrno,supcd,catcd,lotno,lotdt,varcode,spot = isnull(ROUND(pjamt/pnetwt * 355.6187,0),0),isnull(vatamt,0) as Cst,spotexp SE,insamt insurance,brk_amt = isnull(ROUND(brkcom /netwt * 355.6187,0),0),frt_amt = isnull(ROUND(freght / netwt * 355.6187,0),0),short_fibre shortage,tot_exp =isnull(ROUND(pjamt/pnetwt * 355.6187,0),0)+isnull(taxamt,0)+isnull(spotexp,0)+isnull(insamt,0)+isnull(ROUND(brkcom /netwt * 355.6187,0),0)+isnull(ROUND(freght / netwt * 355.6187,0),0)+short_fibre ,mill_rate = isnull(ROUND( pjamt / pnetwt * 355.6187,0),0)+isnull(vatamt,0)+isnull(spotexp,0)+isnull(insamt,0)+isnull(ROUND(brkcom /netwt * 355.6187,0),0)+isnull(ROUND(freght / netwt * 355.6187,0),0)+short_fibre + isnull(ratecy,0),billno inv_no," & _
         "bales noof_bale,round(netwt,2) mill_weight ,round(pnetwt,2) invoice_Weight,diff_shortage=(case when pnetwt>netwt then round(pnetwt-netwt,2) end),diff_excess=(case when netwt>pnetwt then round(netwt-pnetwt,2) end) from rm_lot where lotdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lottype='A' and supcd between '" & s1 & "' and '" & s2 & "' and lotno between " & fltn & " and " & tltn & " order by arrdt,arrno", cnn, adOpenStatic, adLockBatchOptimistic


If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\lotwise_diff.TXT" For Output As #a

 Open KALFOLDERDATA & "\lotwise_diff.TXT" For Output As #a
pg1 = 1
'Print #a, Chr(15)
Print #a, Chr(15)
Co = 0
Call Lot_wise_Diff(pg1, From_Date, To_Date, DIVNAME, Co)
rs1.MoveFirst
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
tot6 = 0
tot7 = 0
tot8 = 0
tot9 = 0
tot10 = 0
tot11 = 0
tot12 = 0
rec_count = 0
Check_Varcode = rs1("arrdt")
Do While Not rs1.EOF
    Do While Check_Varcode = rs1("arrdt")
        tot0 = tot0 + val(IIf(IsNull(rs1("se")), 0, rs1("se")))
        tot1 = tot1 + val(IIf(IsNull(rs1("insurance")), 0, rs1("insurance")))
        tot2 = tot2 + val(IIf(IsNull(rs1("brk_amt")), 0, rs1("brk_amt")))
        tot3 = tot3 + val(IIf(IsNull(rs1("frt_amt")), 0, rs1("frt_amt")))
        tot4 = tot4 + val(IIf(IsNull(rs1("shortage")), 0, rs1("shortage")))
        tot5 = tot5 + val(IIf(IsNull(rs1("tot_exp")), 0, rs1("tot_exp")))
        tot6 = tot6 + val(IIf(IsNull(rs1("mill_rate")), 0, rs1("mill_rate")))
        tot8 = tot8 + val(IIf(IsNull(rs1("noof_bale")), 0, rs1("noof_bale")))
        tot9 = tot9 + val(rs1("invoice_weight"))
        tot10 = tot10 + val(rs1("mill_weight"))
        tot11 = tot11 + val(IIf(IsNull(rs1("diff_shortage")), 0, rs1("diff_shortage")))
        tot12 = tot12 + val(IIf(IsNull(rs1("diff_excess")), 0, rs1("diff_excess")))
        Check_Varcode = rs1("arrdt")
        rec_count = rec_count + 1
        rs1.MoveNext
        If rs1.EOF Then
            Exit Do
        End If
    Loop
    For i = 1 To rec_count
        rs1.MovePrevious
    Next
    For i = 1 To rec_count
    Set RS2 = New Recordset
    RS2.Open "select slname,city from fa_slmas where slcode='" & rs1("supcd") & "'", cnn, adOpenStatic
    Set Namers = New Recordset
    Namers.Open "Select varname from rm_var where varcode='" & rs1("varcode") & "'", db, adOpenStatic
    If Not Namers.EOF Then VarName = Namers(0)
    Print #a, Space(2) + Padr((CStr(rs1("arrdt"))), 10, " ") + Space(0) + Padl(rs1("arrno"), 7, " ") + Space(1) + Padr(RS2("slname"), 27, " ") + Space(0) + Padl(rs1("lotno"), 5, " ");
    Print #a, Space(1) + Padr(VarName, 13, " ") + Space(1) + Padl(INF(CStr(IIf(IsNull(rs1("spot")), " ", rs1("spot"))), 2), 6, " ") + Space(1) + Padl(INF(IIf(rs1("cst") = 0, " ", rs1("cst")), 2), 10, " ") + Space(1) + Padl(INF(IIf(rs1("se") = 0, " ", rs1("se")), 2), 7, " ") + Space(1) + Padl(INF(IIf(rs1("insurance") = 0, " ", rs1("insurance")), 2), 6, " ") + Space(1) + Padl(IIf(IsNull(rs1("brk_amt")), " ", INF(rs1("brk_amt"), 2)), 7, " ") + Space(1) + Padl(IIf(IsNull(rs1("frt_amt")), " ", INF(rs1("frt_amt"), 2)), 7, " ") + Space(1);
    Print #a, Padl(INF(IIf(rs1("shortage") = 0, " ", rs1("shortage")), 2), 8, " ") + Space(1) + Padl(IIf(IsNull(rs1("tot_exp")), " ", INF(rs1("tot_exp"), 2)), 11, " ") + Space(1) + Padl(IIf(IsNull(rs1("mill_rate")), " ", INF(rs1("mill_rate"), 2)), 13, " ") + Space(1) + Padl(rs1("inv_no"), 6, " ") + Space(1) + Padl(rs1("noof_bale"), 5, " ") + Padl(INF(rs1("invoice_weight"), 2), 17, " ") + Space(1) + Padl(INF(rs1("mill_weight"), 2), 15, " ") + Space(1) + Padl(IIf(IsNull(rs1("diff_shortage")), " ", INF(rs1("diff_shortage"), 2)), 18, " ") + Space(2) + Padl(IIf(IsNull(rs1("diff_excess")) = True, " ", INF(rs1("diff_excess"), 2)), 14, " ")
    'Print #a, Space(23) + IIf(IsNull(rs2("city")), " ", rs2("city"))
    Co = Co + 1
    If Co >= PageLen Then
        pg1 = pg1 + 1
        Print #a, Space(2) + String(229, "-");
        Print #a, Chr(12)
        Co = 0
        Call Lot_wise_Diff(pg1, From_Date, To_Date, DIVNAME, Co)
    End If
    rs1.MoveNext
    Next
    Print #a,
    Co = Co + 1
    If Co >= PageLen Then
    Print #a, Space(2) + String(229, "-");
        pg1 = pg1 + 1
        Print #a, Chr(12)
        Co = 0
        Call Lot_wise_Diff(pg1, From_Date, To_Date, DIVNAME, Co)
    End If
'    Print #a, Space(15) + "  **  Day Total  **  " + Space(44) + Padl(Format(tot0, "######"), 10, " ") + Space(1) + Padl(Format(tot1, "######"), 9, " ") + Space(1) + Padl(Format(tot2, "#"), 10, " ") + Space(1) + Padl(Format(tot3, "#"), 12, " ") + Space(1) + Padl(Format(tot4, "#"), 8, " ") + Space(1) + Padl(Format(tot5, "#"), 13, " ") + Space(20) + Padl(CStr(tot8), 7, " ") + Space(1) + Padl(Format(tot9, "#0.000"), 10, " ") + Space(1) + Padl(Format(tot10, "#0.000"), 14, " ") + Space(1) + Padl(Format(tot11, "#0.0"), 15, " ") + Space(1) + Padl(Format(tot12, "#0.0"), 8, " ")
    'Print #a, Space(82) + "  **  Day Total  **  " + Space(53) + Padl(CStr(IIf(tot8 = 0, " ", tot8)), 7, " ") + Space(1) + Padl(Format(IIf(tot9 = 0, " ", tot9), "#0.00"), 16, " ") + Space(1) + Padl(Format(IIf(tot10 = 0, " ", tot10), "#0.00"), 15, " ") + Space(1) + Padl(Format(IIf(tot11 = 0, " ", tot11), "#0.00"), 18, " ") + Space(2) + Padl(Format(IIf(tot12 = 0, " ", tot12), "#0.00"), 14, " ")
    Print #a, Space(82) + "  **  Day Total  **  " + Space(53) + Padl(CStr(IIf(tot8 = 0, " ", tot8)), 7, " ") + Space(1) + Padl(INF(IIf(tot9 = 0, " ", tot9), 2), 16, " ") + Space(1) + Padl(INF(IIf(tot10 = 0, " ", tot10), 2), 15, " ") + Space(1) + Padl(INF(IIf(tot11 = 0, " ", tot11), 2), 18, " ") + Space(2) + Padl(INF(IIf(tot12 = 0, " ", tot12), 2), 14, " ")
    Co = Co + 1
    Print #a,
    Co = Co + 1
    If Co >= PageLen Then
        pg1 = pg1 + 1
        Print #a, Space(2) + String(229, "-");
        Print #a, Chr(12)
        Co = 0
        Call Lot_wise_Diff(pg1, From_Date, To_Date, DIVNAME, Co)
    End If
    'Print #a,
    'co = co + 3
    
    If rs1.EOF Then
        tot13 = tot1 + tot13
        tot14 = tot2 + tot14
        tot15 = tot3 + tot15
        tot16 = tot4 + tot16
        tot17 = tot5 + tot17
        tot18 = tot6 + tot18
        tot19 = tot7 + tot19
        tot20 = tot8 + tot20
        tot21 = tot9 + tot21
        tot22 = tot10 + tot22
        tot23 = tot11 + tot23
        tot24 = tot12 + tot24
        tot25 = tot25 + tot0
        tot0 = 0
        tot1 = 0
        tot2 = 0
        tot3 = 0
        tot4 = 0
        tot5 = 0
        tot6 = 0
        tot7 = 0
        tot8 = 0
        tot9 = 0
        tot10 = 0
        tot11 = 0
        tot12 = 0
        Exit Do
    End If
    tot13 = tot1 + tot13
    tot14 = tot2 + tot14
    tot15 = tot3 + tot15
    tot16 = tot4 + tot16
    tot17 = tot5 + tot17
    tot18 = tot6 + tot18
    tot19 = tot7 + tot19
    tot20 = tot8 + tot20
    tot21 = tot9 + tot21
    tot22 = tot10 + tot22
    tot23 = tot11 + tot23
    tot24 = tot12 + tot24
    tot25 = tot25 + tot0
    tot0 = 0
    tot1 = 0
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    tot6 = 0
    tot7 = 0
    tot8 = 0
    tot9 = 0
    tot10 = 0
    tot11 = 0
    tot12 = 0
    If rs1.EOF Then
        Exit Do
    End If
    rec_count = 0
    Check_Varcode = rs1("arrdt")
Loop
Print #a,
Co = Co + 1
    If Co >= PageLen Then
        pg1 = pg1 + 1
        Print #a, Space(2) + String(229, "-");
        Print #a, Chr(12)
        Co = 0
        Call Lot_wise_Diff(pg1, From_Date, To_Date, DIVNAME, Co)
    End If
Print #a, Space(2) + String(229, "-")
Co = Co + 1
    If Co >= PageLen Then
        pg1 = pg1 + 1
        Print #a, Space(2) + String(229, "-");
        Print #a, Chr(12)
        Co = 0
        Call Lot_wise_Diff(pg1, From_Date, To_Date, DIVNAME, Co)
    End If
'Print #a, Space(15) + "  **  Grant Total  **  " + Space(41) + Padl(Format(tot25, "######"), 11, " ") + Space(1) + Padl(Format(tot13, "######"), 9, " ") + Padl(Format(tot14, "#"), 11, " ") + Padl(Format(tot15, "#"), 13, " ") + Space(1) + Padl(Format(tot16, "#"), 8, " ") + Space(1) + Padl(Format(tot17, "#"), 13, " ") + Space(11) + Padl(Format(tot19, "#"), 10, " ") + Space(1) + Padl(Format(tot20, "#"), 5, " ") + Space(1) + Padl(Format(tot21, "#0.000"), 10, " ") + Space(1) + Padl(Format(tot22, "#0.000"), 14, " ") + Space(1) + Padl(Format(tot23, "#0.0"), 10, " ") + Space(1) + Padl(Format(tot24, "#0.0"), 8, " ")
Print #a, Space(82) + "  **  Grand Total  **  " + Space(29) + Padl(INF(tot19, 0), 14, " ") + Space(4) + Padl(INF(tot20, 2), 11, " ") + Space(1) + Padl(INF(tot21, 2), 16, " ") + Space(1) + Padl(INF(tot22, 2), 15, " ") + Space(1) + Padl(INF(tot23, 2), 18, " ") + Space(2) + Padl(INF(IIf(tot24 = 0, " ", tot24), 2), 14, " ")
Co = Co + 1
    If Co >= PageLen Then
        pg1 = pg1 + 1
        Print #a, Space(2) + String(229, "-");
        Print #a, Chr(12)
        Co = 0
        Call Lot_wise_Diff(pg1, From_Date, To_Date, DIVNAME, Co)
    End If
'Print #a,
Print #a, Space(2) + String(229, "-")
Co = Co + 1
    If Co >= PageLen Then
        pg1 = pg1 + 1
        Print #a, Space(2) + String(229, "-");
        Print #a, Chr(12)
        Co = 0
        Call Lot_wise_Diff(pg1, From_Date, To_Date, DIVNAME, Co)
    End If

Print #a,
Print #a,
Print #a,
Print #a, Chr(18)
Print #a, Chr(12)
 Call footermod(CInt(a), footerstr, 85)
Close #a
a = FreeFile
'Open "C:\lotwise_diff.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "C:"
'Print #a, "cd\"
'Print #a, "type lotwise_diff.txt>prn"
'Close #a
'RPTV.txtfile = "C:\lotwise_diff.txt"
'RPTV.Batfile = "C:\lotwise_diff.bat"
Call KALBATPROCESS("lotwise_diff")
End Sub
Public Sub Lot_wise_Diff(pg1 As Integer, From_Date As String, To_Date As String, DIVNAME As String, Co As Integer) ', co As Integer, u As String, v As String)
          Print #a, Chr(18)
          Print #a, Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          'Print #a, Space(5) + Space(Round((210 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((163 - 2 * Len(DIVNAME)) / 2))
          'Print #a, Space(194)
          'Print #a,
          Print #a,
          SR = Format(CStr(pdate), "dd/mm/yy") + Space(2)
          Print #a, Space(1) + Chr(27) + "E" + "Lotwise Weight Difference " + Chr(27) + "F" + Space(1) + "List for the Period From " & Space(1) & Format(From_Date, "dd/mm/yy") & Space(1) & "To" & Space(1) & Format(To_Date, "dd/mm/yy") & Space(29) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(2) + String(229, "-")
          Print #a, Space(2) + "Received   Party  Party Name                  Mill Variety         <--------- R A T E   P E R   C A N D Y--------->           Total          Mill   Inv.  Noof            Party            Mill           <-----Difference------->"
          Print #a, Space(2) + "Date       Lot No                           Lot No                 Spot        Tax S.E.   Ins.   Comm. Frieght Shortage                      Rate Number Bales           Weight          Weight           Shortage          Excess"
          Print #a, Space(2) + String(229, "-")
          Co = Co + 8
End Sub

