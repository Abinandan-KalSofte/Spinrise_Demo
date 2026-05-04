Attribute VB_Name = "marketcommrepissue"
Dim rs1 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1, b1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim z As Integer
Public Sub marcommissReport(a As String, b As String)
Set cnn = New Connection
a1 = a
b1 = b
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring


    Set ResultRs = New Recordset
      
        
    ResultRs.Open "SHAPE{select lotno,varcode,bale=(case when bblflg='B' then bales end),bora=(case when bblflg='R' then bales end),round(isswt,2) as isswt,ratekg*isswt'value'" & _
                  " From rm_lot where lotdt between'" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & "'order by lotno,varcode} as COMMAND2 compute COMMAND2 by 'lotno','varcode'", cnn, adOpenStatic
        
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
     Set rs1 = New Recordset
      rs1.Open "select lotno,varcode,bale=(bales),unit=(case when bblflg='B' then 'Bales' else 'Borah' end),round(isswt,2) as isswt,ratekg*isswt 'value'" & _
               " From rm_lot  where lotdt between'" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & "' order by lotno,varcode", cnn, adOpenStatic, adLockBatchOptimistic
    Set RPTV = New Report.ReportView

     z = FreeFile
    Close #z
'    Open "C:\mcri.TXT" For Output As #z
 Open KALFOLDERDATA & "\mcri.TXT" For Output As #z
    pg1 = 1
    Co = 0
    'Print #z, Chr(15)
     'z = FreeFile
    Call marcommissHeader(pg1, Co, S, a, b)

      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
        Do While Not rs1.EOF
               Print #z,
               Co = Co + 1
                If Co >= PageLen Then
                    Print #z, Space(5) + String(84, "-");
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call marcommissHeader(pg1, Co, S, a, b)
                End If
                Set Rs = New Recordset
                Rs.Open "Select varname from rm_var where varcode='" & rs1("varcode") & "'", db, adOpenStatic
                Print #z, Space(5) + Padl(CStr(rs1("lotno")), 6, " ") + Space(2) + Padr(CStr(Rs("varname")), 20, " ") + Space(1) + Padl(INF(rs1("bale"), 0), 10, " ") + Space(5) + Padr(rs1("unit"), 5, " ") + Space(1) + Padl(INF(rs1("isswt"), 2), 16, " ") + Space(2) + Padl(INF(rs1("value"), 2), 16, " ")
                Co = Co + 1
                If Co >= PageLen Then
                    Print #z, Space(5) + String(84, "-");
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call marcommissHeader(pg1, Co, S, a, b)
                End If
               If rs1("bale") <> "" Then
               tot = tot + IIf(IsNull(rs1("BALE")), 0, rs1("bale"))
               End If
               If rs1("isswt") <> "" Then
               tot2 = tot2 + IIf(IsNull(rs1("isswt")), 0, rs1("isswt"))
               End If
               If rs1("value") <> "" Then
               tot3 = tot3 + IIf(IsNull(rs1("VALUE")), 0, rs1("value"))
               End If
                rs1.MoveNext
        Loop
        Print #z,
        Print #z, Space(5) + String(84, "-")
        Print #z,
        Print #z, Space(5) + Space(1) + "** Grand Total ** " + Space(10) + Padl(INF(tot, 0), 10, " ") + Space(11) + Padl(INF(tot2, 2), 16, " ") + Space(2) + Padl(INF(tot3, 2), 16, " ")
        Print #z,
        Print #z, Space(5) + String(84, "-")

'Print #z,
'Print #z,
'
'        Print #z,
'
Print #z, Chr(12)
'Print #z, Chr(18)
Close #z
z = FreeFile
'Open "c:\mcri.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type mcri.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\mcri.TXT"
'RPTV.Batfile = "c:\mcri.bat"
Call KALBATPROCESS("mcri")
End Sub
Public Sub marcommissHeader(pg1 As Integer, Co As Integer, S As String, a As String, b As String)
a = a1
b = b1
          
          Print #z,
          Print #z, Chr(18)
          Print #z, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 81, " ") + Chr(27) + "F"
          Print #z,
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #z, Space(5) + Chr(27) + "E" + "Market Committee Report(Consumption)" + Chr(27) + "F" + " From " + Format(Trim(a), "DD/MM/YYYY") + " To " + Format(Trim(b), "DD/MM/YYYY")
          Print #z, Space(64) + CStr(SR) + "Pg.No : " + CStr(pg1)
          Print #z, Space(5) + String(84, "-")
          Print #z, Space(5) + "Lot No  Variety                     Qty     Unit               Kgs             Value"
          Print #z, Space(5) + String(84, "-")
          Co = Co + 9
             
End Sub
