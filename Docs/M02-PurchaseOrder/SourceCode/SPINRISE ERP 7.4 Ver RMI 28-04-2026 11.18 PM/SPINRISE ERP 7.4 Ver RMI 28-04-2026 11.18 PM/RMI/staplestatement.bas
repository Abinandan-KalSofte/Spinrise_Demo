Attribute VB_Name = "staple_statement"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer


Public Sub StapleStatement(From_Date As String, To_Date As String)
Dim RS1 As Recordset
Dim rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim pagelen As Integer
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
pagelen = 53
cnn.Open connectstring
Set RS1 = New Recordset

RS1.Open "select a.varcode,d.varname ,b.catcd, b.lotno,b.docdt,c.cntcd, null as oildesc,c.oilcode,c.oilwt,c.wtrwt, a.staplen 'Staplen',sum(b.isskgs)'sumiss',sum(b.isskgs*100)/totisskgs 'perc' From (select sum(b.isskgs)'totisskgs',l.cntcode from rm_issb b,rm_lot l Where b.lotno = l.lotno group by l.cntcode)k, rm_lot a,rm_issb b,rm_issh c,rm_var d Where b.lotno = a.lotno and c.divcode = b.divcode and c.docno=b.docno  and b.catcd=a.catcd  and d.varcode= a.varcode and b.docdt between ' " & Format(From_Date, "yyyy-mm-dd") & " ' and ' " & Format(To_Date, "yyyy-mm-dd") & " ' group by c.cntcd,a.varcode,b.lotno,b.catcd,b.docdt,a.staplen,d.varname,  k.totisskgs, C.oilcode, C.oilwt, C.wtrwt ", cn, adOpenStatic, adLockBatchOptimistic
If RS1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Open "C:\staple_st.TXT" For Output As #a
pg1 = 1
co = 10
Call Staple_Header(pg1, From_Date, To_Date)
RS1.MoveFirst
X = 0
Do While Not RS1.EOF
    X = X + 1
    Print #a, Space(5) + Padl(CStr(RS1("varname")), 5, " ") + Space(25) + Padl(CStr(RS1("lotno")), 11, " ") + Space(5) + Padl(CStr(Format(IIf(RS1("staplen") = 0, " ", RS1("staplen")), "#0.00")), 16, " ") + Space(5) + Padl(CStr(Format(IIf(RS1("perc") = 0, " ", RS1("perc")), "#0.00")), 14, " ")
    co = co + 1
    If co > pagelen Then
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call Staple_Header(pg1, From_Date, To_Date) ', co, u, v)
    End If
    tot1 = tot1 + val(RS1("staplen"))
    tot2 = tot2 + val(RS1("perc"))
    RS1.MoveNext
Loop
tot_perc = tot2 / X
avgstaplen = tot1 / X
If avgstaplen = 32 Then
    mavgsplen = 1
End If
If avgstaplen > 32 Then
    mavgstplen = avgstaplen - 32
End If
Print #a,

Print #a, Space(61) + String(6, "-") + Space(12) + String(7, "-")
Print #a, Space(57) + Padl(CStr(Format(IIf(IsNull(mavgstplen), " ", mavgstplen), "#0.00")), 10, " ") + Space(9) + Padl(CStr(Format(IIf(IsNull(tot_perc), " ", tot_perc), "#0.000")), 10, " ")
Print #a, Space(61) + String(6, "-") + Space(12) + String(7, "-")
Print #a,
Print #a, Space(5) + " Stock last upto            :"
Print #a, Space(5) + " Present Mixing in m.m      :";
co = co + 7
If avgstplen > 32 Then
    presmix = Round(((avgstplen - 32) * 25.4 / 32), 1) + 25.4
Else
    presmix = Round(avgstplen * 25.4 / 32, 1)
End If
'If premix <> Empty Then
Print #a, Space(2) + CStr(presmix)
Print #a, Space(5) + " Previous Mixing in m.m     :"
'End If

'Print #a, Space(2) + CStr(presmix) through 'mix' table
Print #a, Space(5) + " Present Mixing Cost/Candy  :"
Print #a, Space(5) + " Previous Mixing Cost/Candy :"
Print #a,
Print #a, Space(5) + " Proportionate              :"
Print #a, Space(5) + " Methyl Bornoxy Oil         :"
Print #a, Space(5) + " Water                      :"
Print #a, Space(5) + " Cotton                     :"

co = co + 9
If co > pagelen Then
    Print #a, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call Staple_Header(pg1, From_Date, To_Date) ', co, u, v)
End If
Close #a
a = FreeFile
Open "C:\staple_st.bat" For Output As #a
Print #a, "cd\"
Print #a, "C:"
Print #a, "cd\"
Print #a, "type staple_st.txt>prn"
Close #a
RPTV.txtfile = "C:\staple_st.txt"
RPTV.Batfile = "C:\staple_st.bat"
End Sub
Public Sub Staple_Header(pg1 As Integer, From_Date As String, To_Date As String) ', co As Integer, u As String, v As String)
          Print #a,
          Print #a, Space(10) + Space(Round((85 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((163 - 2 * Len(DIVNAME)) / 2))
          Print #a, Space(85)
          Print #a,
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + "Count and Average Staple Statement from " + CStr(From_Date) + " To " + CStr(To_Date)
          Print #a, Space(5) + String(85, "-")
          Print #a, Space(5) + "Variety                        Lot Number               Staple         Percentage"
          Print #a, Space(5) + "                                                        Length            (%)"
          Print #a, Space(5) + String(85, "-")
End Sub

