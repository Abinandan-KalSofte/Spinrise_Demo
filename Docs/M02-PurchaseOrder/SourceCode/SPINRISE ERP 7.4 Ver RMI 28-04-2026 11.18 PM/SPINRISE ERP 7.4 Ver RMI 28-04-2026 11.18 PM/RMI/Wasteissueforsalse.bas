Attribute VB_Name = "Wasteissuesforsalse"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Public Sub WISReport(Dc1 As String, Dc2 As String)
Dim RS1 As Recordset
Dim rs2 As Recordset
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
Dim cnn As Connection
Dim c As String
pagelen = 63

Set cnn = New Connection

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
    
Set drs1 = New Recordset
drs1.Open "select distinct docdt from rm_wissue where divcode='" & Divcode & "' and docdt between '" & Dc1 & "' and '" & Dc2 & "' and isstype='S'", cnn, adOpenStatic

If drs1.EOF Then
   MsgBox "Sorry ! No Issues found for this month", vbInformation, head
   Screen.MousePointer = 0
    Exit Sub
End If


Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Open KALFOLDERDATA & "\slot.TXT" For Output As #a
pg1 = 1
co = 0
Call Heads(pg1, co, CStr(Dc1), CStr(Dc2))
co = 10
drs1.MoveFirst
tot1 = 0
tot2 = 0
Do While Not drs1.EOF
                              
                Print #a, Space(5) + Padr((CStr(Format(drs1(0), "dd/mm/yyyy"))), 11, " ")
                
                Set RS1 = New Recordset
                RS1.Open "select distinct a.docno,a.docdt,a.isstype,a.wcode,b.wdes,a.netwt from rm_wissue a,rm_wastetype b where a.divcode=b.divcode and a.wcode=b.wcode and docdt between '" & Dc1 & "' and '" & Dc2 & "' and docdt='" & Format(drs1(0), "yyyy-mm-dd") & "' and isstype='S'", cnn, adOpenStatic
                
                If RS1.RecordCount <= 0 Then
                    MsgBox "No Records Found"
                    Exit Sub
                End If
            
                If RS1.RecordCount > 1 Then
                    c = "Y"
                Else
                    c = ""
                End If
            
            Do While Not RS1.EOF
            
                Print #a, Space(13) + Padr(CStr(RS1("docno")), 5, " ") + Space(1) + Padr(CStr(RS1(3)), 10, " ") + Space(1) + Padr(CStr(RS1("wdes")), 30, " ") + Space(3) + Padl(CStr(INF(RS1("netwt"), 3)), 13, " ")
                tot1 = tot1 + RS1("netwt")
                co = co + 2
                If co > pagelen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  co = 10
                  Call Heads(pg1, co, CStr(Dc1), CStr(Dc2))
                End If
                
    RS1.MoveNext
Loop
    Print #a,
    If c = "Y" Then
        Print #a, Space(17) + Chr(27) + "E" + " ** Datewise Total **" + Chr(27) + "F" + Space(23) + Padl(INF(tot1, 3), 13, " ")
    End If
    tot2 = tot2 + tot1
    tot1 = 0
drs1.MoveNext
Loop

Print #a,
Print #a, Space(5) + String(71, "-")
Print #a, Space(17) + Chr(27) + "E" + " ** Grand Total **" + Chr(27) + "F" + Space(28) + Padl(INF(tot2, 3), 9, " ")
tot2 = 0
Print #a, Space(5) + String(71, "-")
Print #a, Chr(12)

Close #a
a = FreeFile
Call KALBATPROCESS("slot")
'Open "C:\slot.bat" For Output As #A
'Print #A, "cd\"
'Print #A, "C:"
'Print #A, "cd\"
'Print #A, "type slot.txt>prn"
'Close #A
'
'RPTV.txtfile = "C:\slot.txt"
'RPTV.Batfile = "C:\slot.bat"
Screen.MousePointer = 0
End Sub
Public Sub Heads(pg1 As Integer, co As Integer, u As String, v As String)
          Print #a, Chr(27) + "E" + CENTRE(DIVNAME, 71, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(5) + Chr(27) + "E" + "Waste Issue for Sales" + Chr(27) + "F" + " From" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "To" & Space(1) & Format(v, "dd/mm/yyyy")
          Print #a, Space(53) + SR + "Pg.No :" + Space(1) + CStr(pg1)
          Print #a, Space(5) + String(71, "-")
          Print #a, Space(8) + "Date"
          Print #a, Space(13) + "Docno" + Space(1) + "Waste" + Space(6) + "Description" + Space(21) + "Weight in Kgs."
          Print #a, Space(5) + String(71, "-")
End Sub
