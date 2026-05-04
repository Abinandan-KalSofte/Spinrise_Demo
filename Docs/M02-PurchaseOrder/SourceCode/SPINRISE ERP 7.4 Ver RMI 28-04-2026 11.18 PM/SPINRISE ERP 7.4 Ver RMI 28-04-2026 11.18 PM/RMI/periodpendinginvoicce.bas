Attribute VB_Name = "periodpendinginvoice"
Dim rs1 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1, b1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim z As Integer
Public Sub pendinvReport(a As String, b As String)
Set cnn = New Connection
a1 = a
b1 = b
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
    Set ResultRs = New Recordset
      ResultRs.Open "select c.pjno,a.arrdate ,b.slname ,z.varname as varcode,c.billno,c.billdt,c.lotno,bales=(c.bales),unit=(case when a.bbflag='R' then 'Borah' else 'Bales' end),round(a.netwt,2) as netwt , round(100 * c.ratekg,2) 'rate/quintal',c.ratekg*a.netwt'amount'from rm_arrival a,fa_slmas b,rm_lot c,rm_var z Where c.lotyear='" & Year(yfdate) & "' and a.varcode=z.varcode and a.supcd = b.slcode and c.lotno=a.lotno and a.contdt between '" & a & "' and '" & b & "' and c.pjno is null ", cnn, adOpenStatic
  If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
     Set RPTV = New Report.ReportView
    z = FreeFile
    Close #z
    Open KALFOLDERDATA & "\pein.TXT" For Output As #z
    pg1 = 1
    Co = 0
    Print #z, Chr(15)
     'z = FreeFile
    Call pendinvHeader(pg1, Co, S, a, b)
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      tot4 = 0
     Print #z,
     Co = Co + 1
        Do While Not ResultRs.EOF
               Print #z,
                 Co = Co + 1
                 If Co >= PageLen Then
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call pendinvHeader(pg1, Co, S, a, b)
                End If
            'On Error Resume Next
                Print #z, Space(5) + Padl(CStr(Format(IIf(IsNull(ResultRs("arrdate")), " ", ResultRs("arrdate")), "dd-mm-yyyy")), 11, " ") + Space(2) + Padr(CStr(IIf(IsNull(ResultRs("slname")), " ", ResultRs("slname"))), 40, " ") + Space(11) + Padr(CStr(IIf(IsNull(ResultRs("varcode")), " ", ResultRs("varcode"))), 20, " ") + Space(5) + Padl(CStr(IIf(IsNull(ResultRs("billno")), 0, ResultRs("billno"))), 10, " ") + Space(2) + Padl(Format(IIf(IsNull(ResultRs("billdt")), 0, ResultRs("billdt")), "dd-mm-yyyy"), 11, " ") + Space(3) + Padl(CStr(IIf(IsNull(ResultRs("lotno")), " ", ResultRs("lotno"))), 16, " ") + Space(2) + Padl(INF(ResultRs("bales"), 0), 10, " ") + Space(8) + Padr(ResultRs("unit"), 5, " ") + Padl(INF(ResultRs("netwt"), 2), 16, " ") + Space(5) & _
                       Padl(INF(ResultRs("rate/quintal"), 2), 18, " ") + Space(4) + Padl(INF(ResultRs("amount"), 2), 23, " ")
                  Co = Co + 1
                 If Co >= PageLen Then
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call pendinvHeader(pg1, Co, S, a, b)
                End If
               tot = tot + IIf(IsNull(ResultRs("BALEs")), 0, ResultRs("BALEs"))
               tot2 = tot2 + ResultRs("netwt")
               tot3 = tot3 + ResultRs("rate/quintal")
               tot4 = tot4 + ResultRs("amount")
                ResultRs.MoveNext
        Loop
        Print #z,
                  Co = Co + 1
                 If Co >= PageLen Then
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call pendinvHeader(pg1, Co, S, a, b)
                End If
        Print #z, Space(5) + String(222, "-")
        Print #z, Space(100) + "**  Grand Total  ** " + Space(17) + Padl(INF(tot, 0), 11, " ") + Space(2) + Padl(INF(tot1, 0), 10, " ") + Space(1) + Padl(INF(tot2, 2), 16, " ") + Space(29) + Padl(INF(tot4, 2), 21, " ")
        Print #z, Space(5) + String(222, "-")

   
Print #z, Chr(12)
Print #z, Chr(18)
Close #z
 z = FreeFile
 Call KALBATPROCESS("pein")
End Sub
Public Sub pendinvHeader(pg1 As Integer, Co As Integer, S As String, a As String, b As String)
a = a1
b = b1
          Print #z,
          Print #z, Chr(18)
          Print #z, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          Print #z,
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #z, Space(3) + Chr(27) + "E" + "Pending Invoice " + Chr(27) + "F" + "From " + Format(Trim(a), "DD/MM/YYYY") + " To " + Format(Trim(b), "DD/MM/YYYY") + Space(61) + CStr(SR) + "Pg.No : " + CStr(pg1) + Chr(15)
          Print #z, Space(5) + String(222, "-")
          Print #z, Space(5) + "    Date     Party                                              Spot/For                   Bill.No.      Bill              Mill Lot         Qty        Unit              Kgs           Rate/Quintal                    Invoice"
          Print #z, Space(5) + "             Name                                               Variety                                  Date                Number                                                                                     Amount"
          Print #z, Space(5) + String(222, "-")
          Co = Co + 9
End Sub
