Attribute VB_Name = "Module1"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim tot As Double
Dim gtot As Double
Dim a As Integer
Dim co As Integer
Public Sub WIRReport(Dc1 As String, Dc2 As String)
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
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim Cnn As Connection
Dim c As String


Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
    
Set drs1 = New Recordset
drs1.Open "select distinct docdt,DOCNO from rm_wissue where divcode='" & Divcode & "' and docdt between '" & Dc1 & "' and '" & Dc2 & "' and isstype='R'", Cnn, adOpenStatic

If drs1.EOF Then
   MsgBox "Sorry ! No Issues found for this month", vbInformation, head
    Exit Sub
End If


Set rptv = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\rlot.TXT" For Output As #a
pg1 = 1
co = 0
Call Heads(pg1, co, CStr(Dc1), CStr(Dc2))
drs1.MoveFirst
tot1 = 0
gtot = 0
        Set drs1 = New Recordset
        drs1.Open "select distinct docdt,DOCNO from rm_wissue where divcode='" & Divcode & "' and docdt between '" & Dc1 & "' and '" & Dc2 & "' and isstype='R'", Cnn, adOpenStatic
        Do While Not drs1.EOF
               Print #a, Space(5) + Padr((CStr(Format(drs1(0), "dd/mm/yyyy"))), 11, " ")
               Print #a, Space(17); Padr(CStr(INF(drs1(1), 0)), 11, " ")
                Set rs1 = New Recordset
                'rs1.Open "select distinct a.docno,a.docdt,a.isstype,a.wcode,b.wdes,a.netwt,a.cntcd from rm_wissue a,rm_wastetype b where a.divcode=b.divcode and a.wcode=b.wcode and docdt between '" & dc1 & "' and '" & dc2 & "' and docdt='" & Format(drs1(0), "yyyy-mm-dd") & "' and isstype='R'", cnn, adOpenStatic
                rs1.Open "select distinct a.cntcd from rm_wissue a,rm_wastetype b where a.divcode=b.divcode and a.wcode=b.wcode and docdt between '" & Dc1 & "' and '" & Dc2 & "' and docdt='" & Format(drs1(0), "yyyy-mm-dd") & "' AND DOCNO=" & drs1(1) & " and isstype='R'", Cnn, adOpenStatic

            Do While Not rs1.EOF
            Print #a, Space(19); Padr(rs1(0), 12, " ")
                Set RESULT = New Recordset
                RESULT.Open "select distinct a.docno,a.docdt,a.isstype,a.wcode,b.wdes,round(SUM(a.netwt),2) AS NETWT ,a.cntcd from rm_wissue a,rm_wastetype b where a.divcode=b.divcode and a.wcode=b.wcode and docdt between '" & Dc1 & "' and '" & Dc2 & "' and docdt='" & Format(drs1(0), "yyyy-mm-dd") & "' AND DOCNO='" & drs1(1) & "' AND CNTCD = '" & rs1(0) & "' and isstype='R' GROUP BY a.docno,a.docdt,a.isstype,a.wcode,b.wdes,A.CNTCD ", Cnn, adOpenStatic
                'result.Open "select distinct a.docno,a.docdt,a.isstype,a.wcode,b.wdes,round(SUM(a.netwt),2) AS NETWT ,a.cntcd from rm_wissue a,rm_wastetype b where a.divcode=b.divcode and a.wcode=b.wcode and docdt between '" & dc1 & "' and '" & dc2 & "' and docdt='" & Format(drs1(0), "yyyy-mm-dd") & "' AND DOCNO='" & drs1(1) & "'  and isstype='R' GROUP BY a.docno,a.docdt,a.isstype,a.wcode,b.wdes,A.CNTCD ", cnn, adOpenStatic
                Do While Not RESULT.EOF
                    Print #a, Space(13) + Space(19) + Padr(CStr(RESULT("wdes")), 30, " ") + Space(5) + Padl(CStr(INF(RESULT("netwt"), 2)), 9, " ")
                    tot1 = tot1 + RESULT("netwt")
                    gtot = gtot + RESULT("netwt")
                    co = co + 1
                RESULT.MoveNext
            Loop
            Print #a,
            Print #a, Space(29); Chr(27); "E" + " **  Total **" + Space(10) + Padl(INF(tot1, 2), 24, " ") & Chr(27); "F"
            tot1 = 0
    rs1.MoveNext

Loop
drs1.MoveNext
Loop

Print #a,
Print #a, Space(5) + String(71, "-")
Print #a, Space(29); Chr(27); "E" + " ** Grand Total **" + Space(4) + Padl(INF(gtot, 2), 25, " ") & Chr(27); "F"
tot2 = 0
Print #a, Space(5) + String(71, "-")
Print #a, Chr(12)
Close #a
a = FreeFile
Call KALBATPROCESS("rlot")
'Open "C:\rlot.bat" For Output As #A
'Print #A, "cd\"
'Print #A, "C:"
'Print #A, "cd\"
'Print #A, "type rlot.txt>prn"
'Close #A
'RPTV.txtfile = "C:\rlot.txt"
'RPTV.Batfile = "C:\rlot.bat"
Screen.MousePointer = 0
End Sub
Public Sub Heads(pg1 As Integer, co As Integer, U As String, v As String)
          Print #a, Chr(27) + "E" + CENTRE(divname, 71, " ") + Chr(27) + "F"
          co = co + 1
          Print #a,
          co = co + 1
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + Chr(27) + "E" + "Waste Issue for ReUse" + Chr(27) + "F" + " From" & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "To" & Space(1) & Format(v, "dd/mm/yyyy")
          co = co + 1
          Print #a, Space(53) + SR + "Pg.No :" + Space(1) + CStr(pg1)
          co = co + 1
          Print #a, Space(5) + String(71, "-")
          co = co + 1
          Print #a, Space(8) + "Date"
          co = co + 1
          Print #a, Space(13) + "Docno" + Space(1) + "Count" + Space(8) + "Description" + Space(19) + "Weight in Kgs."
          co = co + 1
          Print #a, Space(5) + String(71, "-")
          co = co + 1
End Sub


Public Function GetServerDate() As String
    Dim RsDt As New ADODB.Recordset
    Dim CNNN As ADODB.Connection
    Set RsDt = New Recordset
    Set CNNN = New ADODB.Connection
    
    CNNN.Open connectstring
    RsDt.Open "Select Getdate() As CurrDateTime", CNNN
    GetServerDate = Format(RsDt("CurrDateTime"), "yyyy-mm-dd HH:MM")
End Function

