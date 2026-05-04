Attribute VB_Name = "WasteIssueRegisterVariety"
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
Dim ISSTYPE As String
Dim rp As New repform
Public Sub WasteIssueVReport(u As String, v As String, iss As String)
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
ISSTYPE = iss
Set RS1 = New Recordset
''RS1.Open "select distinct docdt,docno from rm_wissue where divcode='" & Divcode & "' and docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' order by docdt", DB, adOpenStatic
If ISSTYPE = "A" Then
    RS1.Open "select distinct date""Docdt"",ISSFLG,ISSUE_DESC from ig_rbohd A,RM_ISSUETYPE B where A.ISSFLG=B.ISSUE_CODE AND divcode='" & Divcode & "' and date between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' order by ISSFLG,date", DB, adOpenStatic
Else
    RS1.Open "select distinct date""Docdt"" from ig_rbohd A,RM_ISSUETYPE B where A.ISSFLG=B.ISSUE_CODE AND A.ISSFLG='" & ISSTYPE & "' AND divcode='" & Divcode & "' and date between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' order by date", DB, adOpenStatic
End If
If RS1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

isstot = 0
grnttot = 0


Set RPTV = New REPORT.ReportView
a = FreeFile
Close #a
Open "C:\wiss.TXT" For Output As #a
pg1 = 1
co = 0
Call PartyHeader(pg1, co, u, v, ISSTYPE)

str1 = ""
tot4 = 0
gissflg = ""
g = 0
RS1.MoveFirst

Do While Not RS1.EOF
    
    If ISSTYPE = "A" Then
        If gissflg <> RS1("issue_desc") Then
            If gissflg <> "" And g >= 1 Then
                Print #a,
                Print #a, Space(5) & Padl("**IssueTypeWise Total**", 34, " ") & Space(2) & Padr("", 30, " ") & Space(2) & Padl(INF(isstot, 3), 12, " ")
                Print #a,
                co = co + 3
                isstot = 0
                g = 0
            End If
            If co >= PageLen - 3 Then
                Print #a, Space(5) + String(80, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call PartyHeader(pg1, co, u, v, ISSTYPE)
            End If
            Print #a,
            Print #a, Space(5) & Chr(27) & "E" & RS1("issue_desc") & Chr(27) & "F"
            co = co + 2
            gissflg = RS1("ISSUE_DESC")
            xx = ""
        End If
    
    End If

    Set rs = New Recordset
    If ISSTYPE = "A" Then
        rs.Open "select distinct c.date""Docdt"",c.bo_no""Docno"",description as Wdes,sum(nett_kgs) as netwt from ig_rbodt a,ig_rproduct b,ig_rbohd c where C.ISSFLG='" & RS1("ISSFLG") & "' AND a.bo_type=c.bo_type and a.bo_no=c.bo_no and " & _
             "a.divcode=c.divcode and a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & Divcode & "' and c.date between '" & Format(RS1("docdt"), "yyyy-mm-dd") & "' and '" & Format(RS1("docdt"), "yyyy-mm-dd") & "' Group by c.date,c.bo_no,description order by c.date,c.bo_no,description", DB, adOpenStatic
    Else
        rs.Open "select distinct c.date""Docdt"",c.bo_no""Docno"",description as Wdes,sum(nett_kgs) as netwt from ig_rbodt a,ig_rproduct b,ig_rbohd c where C.ISSFLG='" & ISSTYPE & "' AND a.bo_type=c.bo_type and a.bo_no=c.bo_no and " & _
             "a.divcode=c.divcode and a.product_code=b.product_code and a.divcode=b.divcode and a.divcode='" & Divcode & "' and c.date between '" & Format(RS1("docdt"), "yyyy-mm-dd") & "' and '" & Format(RS1("docdt"), "yyyy-mm-dd") & "' Group by c.date,c.bo_no,description order by c.date,c.bo_no,description", DB, adOpenStatic
    End If
    
    Do While Not rs.EOF
        If xx = rs("docdt") And yy = rs("docno") Then
            Print #a, Space(41) & Padr(rs("wdes"), 30, " ") & Space(2) & Padl(INF(rs("netwt"), 3), 12, " ")
            xx = Format(rs("docdt"), "dd/mm/yyyy")
            yy = rs("docno")
            variety = rs("wdes")
        Else
            If xx = rs("docdt") Then
                Print #a, Space(5) & Padr("", 10, " ") & Space(2) & Padl(CInt(Right(rs("docno"), 6)), 10, " ") & Space(2) & Padr("", 10, " ") & Space(2) & Padr(rs("wdes"), 30, " ") & Space(2) & Padl(INF(rs("netwt"), 3), 12, " ")
            Else
                Print #a, Space(5) & Padr(Format(rs("docdt"), "dd/mm/yy"), 10, " ") & Space(2) & Padl(CInt(Right(rs("docno"), 6)), 10, " ") & Space(2) & Padr("", 10, " ") & Space(2) & Padr(rs("wdes"), 30, " ") & Space(2) & Padl(INF(rs("netwt"), 3), 12, " ")
            End If
            xx = Format(rs("docdt"), "dd/mm/yyyy")
            yy = rs("docno")
            variety = rs("wdes")
        End If
        co = co + 1
        If co >= PageLen Then
            Print #a, Space(5) + String(80, "-")
            Print #a, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call PartyHeader(pg1, co, u, v, ISSTYPE)
        End If
        isstot = isstot + Round(rs("netwt"), 3)
        grnttot = grnttot + Round(rs("netwt"), 3)
        rs.MoveNext
        If Not rs.EOF Then
            g = g + 1
        End If
    Loop
    RS1.MoveNext
Loop
If co >= PageLen - 5 Then
    Print #a, Space(5) + String(80, "-")
    Print #a, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call PartyHeader(pg1, co, u, v, ISSTYPE)
End If
If g >= 1 And ISSTYPE = "A" Then
    Print #a,
    Print #a, Space(5) & Padl("**IssueTypeWise Total**", 34, " ") & Space(2) & Padr("", 30, " ") & Space(2) & Padl(INF(isstot, 3), 12, " ")
    isstot = 0
    g = 0
End If
Print #a, Space(5) + String(80, "-")
Print #a, Space(5) & Chr(27) & "E" & Padl("** Grand Total **", 34, " ") & Space(2) & Padr("", 30, " ") & Space(2) & Padl(INF(grnttot, 3), 12, " ") & Chr(27) & "F"
Print #a, Space(5) + String(80, "-")
Print #a, Chr(12)
 Call footermod(CInt(a), rp.UserFooter1.SelectedStr, 85)
Close #a
a = FreeFile
Open "C:\wiss.bat" For Output As #a
Print #a, "cd\"
Print #a, "C:"
Print #a, "cd\"
Print #a, "type wiss.txt>prn"
Close #a
RPTV.txtfile = "C:\wiss.txt"
RPTV.Batfile = "C:\wiss.bat"
End Sub
Public Sub PartyHeader(pg1 As Integer, co As Integer, u As String, v As String, iss As String)
          Print #a,
          Print #a, Chr(18)
          Print #a, Space(3) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + Chr(27) + "E" + "Issue Register " + Chr(27) + "F" + "from" & Space(1) & Format(u, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(18) & Padl(Format(CStr(Date), "dd/mm/yy") & Space(2) & "Pg.: " & Padl(CStr(pg1), 3, " "), 18, " ")
          If iss <> "A" Then
            Set rst = New Recordset
            rst.Open "select issue_desc from rm_issuetype where issue_code='" & iss & "'", DB, adOpenStatic
            issdesc = ""
            If rst.RecordCount > 0 Then
                issdesc = rst(0)
            End If
            Print #a, Space(3) + Chr(27) + "E" + CENTRE("Option : " & issdesc, 80, " ") + Chr(27) + "F"
          End If
          Print #a, Space(5) + String(80, "-")
          If iss = "A" Then
            Print #a, Space(5) & "IssueType"
          End If
        ''Print #a, Space(5) + "Docno.       Doc.Date               Variety                          Issued Kgs."
          Print #a, Space(5) + "Doc.Date         Docno.             Variety                          Issued Kgs."
          Print #a, Space(5) + String(80, "-")
          co = 9
End Sub



