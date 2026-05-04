Attribute VB_Name = "WasteArrivalRegisterVariety"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim str1 As String
Dim VN As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim xx As String
Dim yy As String
Dim variety As String
Dim rp As New repform
Public Sub WasteArrivalReport(u As String, v As String)
Dim RS1 As Recordset
Dim rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim RESULT As Recordset
Dim RPTV As REPORT.ReportView
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

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
variety = ""
xx = ""
yy = ""

Set rs = New Recordset
''rs.Open "select distinct a.docdt,a.cntcd,sum(isnull(a.netwt,0)) as netwt,b.wdes from rm_waste a,rm_wastetype b where a.divcode=b.divcode and a.wcode=b.wcode and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.type='U' group by a.cntcd,b.wdes,a.docdt order by a.docdt,a.cntcd,b.wdes", cnn, adOpenStatic
rs.Open "SELECT a.prod_date as  docdt,sum(isnull(a.pack_wt,0)) as netwt,description as wdes from ig_rpacknos a,ig_rproduct b where a.divcode=b.divcode and a.product_code=b.product_code and prod_date between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' group by a.prod_date,description order by a.prod_date,description", cnn, adOpenStatic

If rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If


Set RPTV = New REPORT.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\wiss.TXT" For Output As #a
pg1 = 1
co = 0
Call PartyHeader(pg1, co, u, v)
co = 9
str1 = ""
tot4 = 0
tot = 0
GTot = 0
yy = 0

rs.MoveFirst

Do While Not rs.EOF
    If xx = rs("docdt") Then
        
        Print #a, Space(34) & Padr(rs("wdes"), 30, " ") & Space(2) & Padl(INF(rs("netwt"), 3), 12, " ")
        co = co + 1
        yy = yy + 1
        xx = Format(rs("docdt"), "dd/mm/yyyy")
        'variety = rs("cntcd")
        tot = tot + rs("netwt")
        GTot = GTot + rs("netwt")
        
    Else
        If tot > 0 And yy > 1 Then
            Print #a, Space(10) & Chr(27) & "E" & "** Day Total **" & Padl(INF(tot, 3), 53, " ") & Chr(27) & "F"
            Print #a,
            co = co + 2
            tot = 0
            yy = 0
        Else
            tot = 0
            yy = 0
        End If
        
        Print #a, Space(10) & Padr(Format(rs("docdt"), "dd/mm/yyyy"), 10, " ") & Space(2) & Padr("", 10, " ") & Space(2) & Padr(rs("wdes"), 30, " ") & Space(2) & Padl(INF(rs("netwt"), 3), 12, " ")
        co = co + 1
        yy = yy + 1
        xx = Format(rs("docdt"), "dd/mm/yyyy")
        'variety = IIf(IsNull(rs("cntcd")), 0, rs("cntcd"))
        tot = tot + rs("netwt")
        GTot = GTot + rs("netwt")
        
    End If
    rs.MoveNext
    If co >= PageLen Then
        Print #a, Space(10) + String(68, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call PartyHeader(pg1, co, u, v)
        co = 8
    End If
Loop

If tot > 0 And yy > 1 Then
    Print #a, Space(10) & Chr(27) & "E" & "** Day Total **" & Padl(INF(tot, 3), 53, " ") & Chr(27) & "F"
    co = co + 1
    tot = 0
    yy = 0
Else
    tot = 0
End If

Print #a, Space(10) + String(68, "-")
Print #a, Space(10) & Chr(27) & "E" & "** Grand Total **" & Padl(INF(GTot, 3), 51, " ") & Chr(27) & "F"
Print #a, Space(10) + String(68, "-")
Print #a, Chr(12)
 Call footermod(CInt(a), rp.UserFooter1.SelectedStr, 85)
Close #a
a = FreeFile
Call KALBATPROCESS("wiss")
'Open "C:\wiss.bat" For Output As #A
'Print #A, "cd\"
'Print #A, "C:"
'Print #A, "cd\"
'Print #A, "type wiss.txt>prn"
'Close #A
'RPTV.txtfile = "C:\wiss.txt"
'RPTV.Batfile = "C:\wiss.bat"
End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, u As String, v As String)
          Print #a, Chr(18)
          Print #a, Space(10) + Chr(27) + "E" + CENTRE(DIVNAME, 68, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(10) + Chr(27) + "E" + "Arrival Register " + Chr(27) + "F" + "from" & Space(1) & Format(u, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(8);
          Print #a, Padl(Format(CStr(Date), "dd/mm/yy") & Space(2) + "Pg.: " + Padl(CStr(pg1), 3, " "), 18, " ")
          Print #a, Space(10) + String(68, "-")
          Print #a, Space(10) + " Doc.Date               Variety                         Arrival Kgs."
          Print #a, Space(10) + String(68, "-")
End Sub



