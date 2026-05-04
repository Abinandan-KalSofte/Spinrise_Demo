Attribute VB_Name = "rec_reg_varity"
Dim Rs As Recordset
Dim rs2 As Recordset
Dim cn As Connection
Dim pg1 As Integer
Dim co As Integer
Dim tot1 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim ree As Double
Dim rev As Report.ReportView
Dim vtot1 As Double
Dim PAGE As Integer
Dim vtot2 As Double
Dim vtot3 As Double
Dim rp As New repform1

Public Sub rec_varity(a As String, B As String, dname As String)
Dim r As String
Dim s As String
Dim div As String
PAGE = 1
co = 0
tot1 = 0
tot2 = 0
tot3 = 0
vtot1 = 0
vtot2 = 0
vtot3 = 0
ree = 0
r = a
s = B
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set rev = New Report.ReportView
Close
Open KALFOLDERDATA & "\recvar.txt" For Output As #1
Call callhead(r, s, div, PAGE)
Print #1,
co = co + 1
Set Rs = New Recordset
'rs.Open "SELECT DISTINCT a.varcode,b.VARname FROM RM_LOT a ,rm_Var b WHERE a.varcode=b.varcode and arrdt Between '" & Format(r, "yyyy-MM-dd") & "' and ' " & Format(s, "yyyy-MM-dd") & "' and opflg='N' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' ", cn, adOpenStatic, adLockBatchOptimistic
Rs.Open " select distinct a.varcode,varname from  rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_var f  where a.lotno = " & _
        "b.lotno And b.contno = c.contno And a.lotdt = b.lotdt and b.contdt=c.contdt and a.divcode=b.divcode and a.divcode=c.divcode and a.varcode=f.varcode and a.supcd= " & _
        "e.slcode  and a.supcd=c.supcd and a.lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and " & _
        "'" & Format(yldate, "yyyy-MM-dd") & "'  AND A.DIVCODE='" & Divcode & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "'", DB, adOpenStatic
If Rs.RecordCount <= 0 Then
MsgBox "No record found", vbInformation
Exit Sub
Close #1
End If
        Do While Not Rs.EOF
        Print #1, Space(5); Padr(Rs("varname"), 20, " ")
        co = co + 1
        Set rs2 = New Recordset
        rs2.Open "SELECT B.VARNAME,A.ARRDT,A.LOTNO,C.SLNAME,sum(A.BALES),UNIT =CASE WHEN A.BBLFLG='B' THEN 'Bales' else 'Borah' end,round(sum(isnull(a.favaourablewgt,0)),3) AS KGS,avg(a.RATEKG) AS 'RATE/CANDY',sum(isnull(a.favaourablewgt,0))*round((isnull(a.ratecy,0)/355.6187),2) AS 'VALUE',isnull(a.ratecy,0) as ratecy,sum(a.totlandcost) as totlandcost FROM RM_LOT A,RM_VAR B,FA_SLMAS C,rm_arrival d,rm_cont e WHERE a.arrno=d.arrno and a.lotno=d.lotno and a.lotdt=d.lotdt and a.divcode = d.divcode and d.contno=e.contno and d.contdt=e.contdt and d.divcode=e.divcode and a.supcd=e.supcd and  a.divcode=e.divcode and A.VARCODE=B.VARCODE AND A.SUPCD=C.SLCODE AND A.VARCODE='" & Rs(0) & "'  AND A.arrdt BETWEEN '" & Format(r, "yyyy-MM-dd") & "' AND '" & Format(s, "yyyy-MM-dd") & "' and opflg='N' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.divcode='" & Divcode & "' group by B.VARNAME,A.ARRDT,A.LOTNO,C.SLNAME,a.bblflg,a.ratecy order by a.lotno", cn, adOpenStatic, adLockBatchOptimistic
            Do While Not rs2.EOF
            If IsNull(rs2(7)) Then
            ree = 0
            Else
            ree = rs2(7)
            End If
            value = rs2!RATECY
'            Value = rs2!Kgs * (Value / 355.6187)
            value = rs2!totlandcost
            Print #1, Space(6) & Padl(rs2("LOTNO"), 5, " ") & Space(5) & Padr(rs2(3), 30, " ") & Space(2) & Padl(rs2(1), 10, " ") & Space(2) & Padl(rs2(4), 4, " ") & Space(2) & Padl(rs2(5), 5, " ") & Space(2) & Padl(INF(rs2(6), 2), 9, " ") & Space(3) & Padl(INF(rs2(7), 2), 5, " ") & Space(2) & Padl(INF(value, 2), 11, "")
            co = co + 1
            tot1 = tot1 + rs2(4)
            tot2 = tot2 + rs2(6)
            tot3 = tot3 + value
            vtot1 = vtot1 + rs2(4)
            vtot2 = vtot2 + rs2(6)
            vtot3 = vtot3 + value
            rs2.MoveNext
            If co > PageLen Then
            Print #1, Space(5) & String(98, "-")
            Print #1, Chr(12)
            co = 0
            PAGE = PAGE + 1
            Call callhead(r, s, div, PAGE)
            End If
            Loop
            If rs2.RecordCount > 1 Then
           Print #1, ' Space(5) & String(110, "-")
           co = co + 1
            Print #1, Space(39) + Chr(27) + "E" + "**Total**" + Space(8) + Padl(vtot1, 8, " ") + Space(4) + Padl(INF(vtot2, 2), 14, " ") + Space(5) + Padl(INF(vtot3, 2), 16, " ") + Chr(27) + "F"
            co = co + 1
   '         Print #1, Space(5) & String(110, "-")
           ' co = co + 1
           Else
           Print #1,
           co = co + 1
            End If
            
            
        
            vtot1 = 0
            vtot2 = 0
            vtot3 = 0
            Rs.MoveNext
         Loop
Print #1, Space(5) & String(98, "-")
'co = co + 1
Print #1, Space(36) + Chr(27) + "E" + "**GrandTotal**" & Space(6) & Padl(tot1, 8, " ") & Space(4) & Padl(INF(tot2, 2), 14, " ") & Space(6) & Padl(INF(tot3, 2), 15, " ") + Chr(27) + "F"
'co = co + 1
Print #1, Space(5) & String(98, "-")
'co = co + 1
        
Close #1
Call KALBATPROCESS("recvar")
Close #1
End Sub

Private Sub callhead(s As String, q As String, V As String, pa As Integer)
Print #1, Space(5) + Chr(27) + "E" + CENTRE(V, 93, " ") + Chr(27) + "F"
Print #1, Chr(18)
Print #1, Space(5) + Chr(27) + "E" + "VarietyWise Receipt List" + Chr(27) + "F" + Space(3) & "From " & Format(s, "dd/MM/yy") & Space(1) & "To " & Format(q, "dd/MM/yy") & Space(14) & "   " & Format(Date, "dd/MM/yy"); Space(3) & "Pg. " & pa
Print #1, Space(5) & String(98, "-")
Print #1, Space(5) + "VarietyName"
Print #1, Space(6) & "LotNo" & Space(5) & Padr("Supplier Name", 30, " ") & Space(3) & "Rpt.Date" & Space(4) & Padl("Qty", 3, " ") & Space(1) & Padl("Uint", 5, " ") & Space(2) & Padl("Kgs", 10, " ") & Space(1) & Padl("Rate/kg", 7, " ") & Space(2) & Padl("Value", 11, " ")
Print #1, Space(5) & String(98, "-")
co = co + 7
End Sub
