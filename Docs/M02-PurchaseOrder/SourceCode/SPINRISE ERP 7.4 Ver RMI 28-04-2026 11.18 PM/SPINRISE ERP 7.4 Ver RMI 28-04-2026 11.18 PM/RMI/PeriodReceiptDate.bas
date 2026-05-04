Attribute VB_Name = "PeriodReceiptDate"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim Namers As Recordset
Dim VarName As String
Dim a As Integer
Dim co As Integer
Public Sub PartyDtReport(U As String, V As String, W As String, divname As String)
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
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
Dim Check_Date As String
Dim s As String
Dim Cnn As Connection
Set Cnn = New Connection
Set rs2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Set rs2 = New Recordset
If W <> "A" Then
        Set rs2 = New Recordset
        rs2.Open "select A.ARRDT,A.SUPCD,B.SLNAME,0 as broker ,A.PLOTNO,A.LOTNO,C.AREANAME,A.VARCODE," & _
         " Bale=SUM(BALES), unit=(case when A.BBLFLG='R' thEn 'Borah' else 'Bales 'end)," & _
         " SUM(round(A.netwt,2))AS NETWT,round(isnull(ratecy,0),0)as CANDYRATE, " & _
         " round((isnull(A.RATEcy,0)/355.6187),2),SUM(NETWT)*round((isnull(ratecy,0)/355.6187),2) as VALUE " & _
         " FROM RM_LOT A,FA_SLMAS B,RM_AREA C WHERE A.SUPCD=B.SLCODE AND " & _
         " A.AREACD*=C.AREACODE AND A.arrDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' AND A.CATCD='" & W & "' AND A.DIVCODE='" & Divcode & "'  and opflg='N' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' GROUP BY A.ARRDT,A.SUPCD,B.SLNAME,A.PLOTNO,A.LOTNO," & _
         " C.AREANAME,A.VARCODE,A.BBLFLG,ratecy ", DB, adOpenStatic
Else
          Set rs2 = New Recordset
          rs2.Open "select A.ARRDT,A.SUPCD,B.SLNAME,0 as broker ,A.PLOTNO,A.LOTNO,C.AREANAME,A.VARCODE," & _
         " Bale=SUM(BALES), unit=(case when A.BBLFLG='R' thEn 'Borah' else 'Bales 'end)," & _
         " SUM(round(A.netwt,2))AS NETWT,round(avg((A.ratekg)*355.6187),0)as CANDYRATE, " & _
         " AVG(round(A.RATEKG,2)),avg(A.ratekg)*SUM(NETWT) as VALUE " & _
         " FROM RM_LOT A,FA_SLMAS B,RM_AREA C WHERE A.SUPCD=B.SLCODE AND " & _
         " A.AREACD*=C.AREACODE AND A.LOTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' AND A.DIVCODE='" & Divcode & "' and opflg='N'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' GROUP BY A.ARRDT,A.SUPCD,B.SLNAME,A.PLOTNO,A.LOTNO," & _
         " C.AREANAME,A.VARCODE,A.BBLFLG ", DB, adOpenStatic
End If



If rs2.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set rptv = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\dat.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, co, U, V, divname)
co = co + 10
rs2.MoveFirst
Check_Date = Empty
Do While Not rs2.EOF
    If Check_Date = Empty Then
        Print #a, Space(5) + Padr((CStr(rs2("arrdt"))), 10, " ")
            co = co + 1
                If co >= PageLen Then
                    Print #a, Space(5) + String(190, "-")
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call PartyHeader(pg1, co, U, V, divname)
                    co = 10
                End If
    End If
    If rs2("arrdt") <> Check_Date Then
        If Check_Date <> Empty Then
'                Print #a, Space(117) + " **  Day Total  **" + Space(5) + Padl(CStr(tot11), 12, " ") + Space(14) + Padl(Format(tot12, "#0.000"), 13, " ") + Padl(Format(tot13, "#0.00"), 16, " ") + Padl(Format(tot14, "#0.00"), 16, " ") + Space(2) + Padl(Format(tot15, "#0.00"), 17, " ")
                Print #a, Space(82) + " **  Day Total  **" + Space(5) + Padl(INF(tot11, 0), 12, " ") + Space(14) + Padl(INF(tot12, 2), 13, " ") + Padl(" ", 16, " ") + Padl(" ", 16, " ") + Space(2) + Padl(INF(tot15, 2), 17, " ")
                co = co + 1
                If co >= PageLen Then
                    Print #a, Space(5) + String(190, "-")
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call PartyHeader(pg1, co, U, V, divname)
                    co = 10
                End If
                tot11 = 0
                tot12 = 0
                tot13 = 0
                tot14 = 0
                tot15 = 0
                Print #a, Space(5) + Padr((CStr(rs2("arrdt"))), 10, " ")
                co = co + 1
                If co >= PageLen Then
                    Print #a, Space(5) + String(190, "-")
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call PartyHeader(pg1, co, U, V, divname)
                    co = 10
                End If
        End If
        Check_Date = rs2("arrdt")
        Print #a,
          co = co + 1
            If co >= PageLen Then
                Print #a, Space(5) + String(190, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call PartyHeader(pg1, co, U, V, divname)
                co = 10
            End If
    End If
'    Print #a, Space(5) + Padr(rs2("suppcd"), 6, " ") + Space(1) + Padr(rs2("slname"), 32, " ") + Space(3) + Padr(rs2("broker"), 32, " ") + Space(3) + Padl(IIf(IsNull(rs2("plotno")), " ", rs2("plotno")), 7, " ") + Space(5) + Padr(IIf(IsNull(rs2("lotno")), " ", rs2("lotno")), 6, " ") + Padr(rs2("areaname"), 31, " ") + Padr(rs2("varcode"), 10, " ") + Space(1) + Padl(IIf(IsNull(rs2("bale")), " ", rs2("bale")), 10, " ") + Padl(IIf(IsNull(rs2("bora")), " ", rs2("bora")), 12, " ") + Padl(CStr(Format(rs2("netwt"), "#0.000")), 15, " ") + Padl(CStr(Format(rs2("candyrate"), "#0.00")), 16, " ") + Padl(CStr(Format(rs2("rate/quintal"), "#0.00")), 16, " ") + Space(2) + Padl(CStr(Format(rs2("value"), "#0.00")), 17, " ")
Set Namers = New Recordset
    Namers.Open "Select varname from rm_var where varcode='" & rs2("varcode") & "'", DB, adOpenStatic
    If Not Namers.EOF Then
        VarName = Namers(0)
    End If

Print #a, Space(5) + Padr(rs2("supcd"), 6, " ") + Space(1) + Padr(rs2("slname"), 32, " ") + Space(3); Padl(IIf(IsNull(rs2("plotno")), " ", rs2("plotno")), 7, " ") + Space(6) + Padr(IIf(IsNull(rs2("lotno")), " ", rs2("lotno")), 5, " ") + Padr(rs2("areaname"), 21, " ") + Padr(VarName, 20, " ") + Space(1) + Padl(INF(rs2("bale"), 0), 10, " ") + Space(7); Padr(rs2("unit"), 6, " ") + Padl(INF(rs2("netwt"), 2), 14, " ") + Padl(INF(rs2("candyrate"), 0), 16, " ") + Padl(INF(rs2(12), 2), 16, " ") + Space(2) + Padl(INF(rs2("value"), 2), 17, " ")
        co = co + 1
        If co >= PageLen Then
            Print #a, Space(5) + String(190, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call PartyHeader(pg1, co, U, V, divname)
            co = 10
        End If
    
    tot1 = tot1 + val(IIf(IsNull(rs2(8)), 0, rs2(8)))

    tot5 = tot5 + val(IIf(IsNull(rs2(11)), 0, rs2(11)))
    tot4 = tot4 + val(IIf(IsNull(rs2(12)), 0, rs2(12)))
    tot2 = tot2 + rs2(10)
    tot3 = tot3 + val(IIf(IsNull(rs2(13)), 0, rs2(13)))
    tot11 = tot11 + val(IIf(IsNull(rs2(8)), 0, rs2(8)))
    tot12 = tot12 + rs2(10)
    tot13 = tot13 + val(IIf(IsNull(rs2(11)), 0, rs2(11)))
    tot14 = tot14 + val(IIf(IsNull(rs2(12)), 0, rs2(12)))
    tot15 = tot15 + val(IIf(IsNull(rs2(13)), 0, rs2(13)))
    Print #a,
    co = co + 1
    If co >= PageLen Then
        Print #a, Space(5) + String(190, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call PartyHeader(pg1, co, U, V, divname)
        co = 10
    End If
    rs2.MoveNext
Loop
Print #a, Space(5) + String(190, "-")
Print #a, Space(82) + " **  Grand Total  **" + Space(3) + Padl(INF(tot1, 0), 12, " "); IIf(val(Total) = 0, Space(12), Padl(INF(Total, 0), 12, " ")) + Space(2) + Padl(INF(tot2, 2), 13, " ") + Padl(" ", 16, " ") + Space(18) + Padl(INF(tot3, 2), 17, " ")
Print #a, Space(5) + String(190, "-")
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
Call KALBATPROCESS("dat")
End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, U As String, V As String, divname As String)
          Print #a,
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Datewise Receipt List" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy") & Space(20) + Space(34) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(190, "-")
          Print #a, Space(5) + "    Date                                                                                                           "
          Print #a, Space(5) + "                                            Party Mill"
          Print #a, Space(5) + "Code   Supplier Name                       Lot No Lot No    Areaname             Variety                     Qty       Unit      Net weight      Rate/Candy         Rate/Kg              Value"
          Print #a, Space(5) + String(190, "-")
End Sub

