Attribute VB_Name = "StockLedgerVariety"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Public Sub StockVReport(U As String, V As String, DIVNAME As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
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
Dim S As String

Dim cnn As Connection
Set cnn = New Connection

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

Set rs1 = New Recordset
rs1.Open " SHAPE {select distinct d.varname,a.lotno from rm_lot  a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  (lottype='A' or lottype='T' )" & _
 " and a.arrdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and (round(a.netwt-isnull(a.isswt,0), 2)) > 0  group by d.varname,a.lotno}  AS Command8 APPEND ({select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Borah' end ,sum(a.bales-isnull(issbal,0)),sum(round(a.netwt-isnull(isswt,0), 2)) from rm_lot a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  (lottype='A' or lottype='T') and a.arrdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and (round(a.netwt-isnull(a.isswt,0),2)) > 0  group by a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,a.bblflg,round(a.netwt,2)}  AS Command9 RELATE 'varname' TO 'varname','lotno' TO 'lotno' ) AS Command9 ", Cn, adOpenStatic, adLockBatchOptimistic
If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set Rs = New Recordset
Set Rs = rs1("command9").UnderlyingValue
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
'Open "C:\stv.TXT" For Output As #a
Open KALFOLDERDATA & "\stv.TXT" For Output As #a
pg1 = 1
Co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, Co, U, V, DIVNAME)
rs1.MoveFirst
Do While Not rs1.EOF
Print #a, Space(10) + Padr((CStr(Rs("varname"))), 20, " ")
Co = Co + 1
If Co >= PageLen Then
        Print #a, Space(10) + String(130, "-");
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Co = 0
        Call PartyHeader(pg1, Co, U, V, DIVNAME)
End If
Rs.MoveFirst
      Do While Not Rs.EOF
'      Print #a, Space(5) + Padr((CStr(rs(1))), 8, " ") + Padr(rs(0), 17, " ") + Padr(rs(2), 16, " ") + Padr(IIf(IsNull(rs(3)), " ", rs(3)), 41, " ") + Padr(rs(4), 38, " ") + Padr(rs(6), 9, " ") + Padl(CStr(rs(7)), 15, " ") + Padl(CStr(Format(rs(8), "###,###,##0.000")), 19, " ")
      Print #a, Space(10) + Padr((CStr(Rs(1))), 8, " ") + Padr(Rs(0), 13, " ") + Padr(Rs(2), 12, " ") + Padr(IIf(IsNull(Rs(3)), " ", Rs(3)), 45, " ") + Padr(Rs(4), 11, " ") + Padl(Rs(7), 7, " ") + Space(8) + Padr(IIf(Rs(7) > 0, Rs(6), " "), 5, " ") + Padl(IIf(Rs(8) < 1, Format(Rs(8), "#0.000"), INF(Rs(8), 2)), 21, " ")
    
    Co = Co + 1
    If Co >= PageLen Then
        Print #a, Space(10) + String(130, "-");
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Co = 0
        Call PartyHeader(pg1, Co, U, V, DIVNAME)
    End If
    tot1 = tot1 + Rs(7)
    tot2 = tot2 + Rs(8)
    Rs.MoveNext
Loop
Print #a,
            Co = Co + 1
            If Co >= PageLen Then
                  Print #a, Space(10) + String(130, "-");
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 12
                  Call PartyHeader(pg1, Co, U, V, DIVNAME)
            End If
  
rs1.MoveNext
Loop

Set Rs = New Recordset
Rs.Open "Select * from rm_lot where LOTTYPE='T' and lotdt between '" & Format(U, "yyyy-mm-dd") & "' and  '" & Format(V, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db, adOpenStatic
If Rs.RecordCount > 0 Then
        Set Rs = New Recordset
        Rs.Open "select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Borah' end ,sum(a.bales-isnull(a.issbal,0)),sum(round(a.netwt,2)-isnull(a.isswt,0)) from rm_lot a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='T' and arrdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and (a.netwt-isnull(a.isswt,0)) > 0  group by a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,a.bblflg  order by lotno", db, adOpenStatic
        Do While Not Rs.EOF
            'Print #a, Space(5) + Padr((CStr(rs(1))), 6, " ") + Space(2) + Padr(rs(0), 10, " ") + Space(2) + Padr(rs(3), 38, " ") + Padr(IIf(IsNull(rs(4)), " ", rs(4)), 24, " ") + Padr(rs(5), 16, " ") + Padr(rs(6), 10, " ") + Padl(INF(rs(7), 0), 7, " ") + Padl(INF(rs(8), 3), 15, " ")
            'tot1 = tot1 + Rs(7)
            'tot2 = tot2 + Rs(8)
        Rs.MoveNext
        Loop
End If

'Print #a,
Print #a, Space(10) + String(130, "-")
'Print #a, Space(115) + " ** Grand Total **" + Space(6) + Padl(CStr(Format(tot1, "###,##0")), 10, " ") + Space(4) + Padl(Format(tot2, "###,###,##0.000"), 15, " ")
Print #a, Space(76) + " ** Grand Total **" + Padl(INF(tot1, 0), 12, " "); Space(15) + Padl(INF(tot2, 2), 19, " ")
'Print #a,
Print #a, Space(10) + String(130, "-")
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\stv.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type stv.txt>prn"
'Close #a
'RPTV.txtfile = "c:\stv.txt"
'RPTV.Batfile = "c:\stv.bat"
Call KALBATPROCESS("stv")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, DIVNAME As String)
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(6) + Chr(27) + "E" + "Variety Wise Lot Stock Position " + Chr(27) + "F" + "From  " & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy")
          Print #a, Space(57) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(10) + String(130, "-")
          Print #a, Space(10) + "Variety                Arrival"
          Print #a, Space(10) + "Lot No   Lot Date       Date     Party                                        Category       Qty        Unit                   Kgs"
          Print #a, Space(10) + String(130, "-")
          Co = Co + 9
End Sub
