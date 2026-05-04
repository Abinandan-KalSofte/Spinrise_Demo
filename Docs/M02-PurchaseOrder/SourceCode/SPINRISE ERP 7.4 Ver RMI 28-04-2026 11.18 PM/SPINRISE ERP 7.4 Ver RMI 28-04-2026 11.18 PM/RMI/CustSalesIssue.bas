Attribute VB_Name = "CustSales"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Dim U As String
Dim V As String
Dim W As String
Dim rp As New repform

Public Sub CustSales(U As String, V As String, DIVNAME As String)
Dim Rs As Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim RS9 As Recordset
Dim br As Integer
Dim RS8 As Recordset
Dim cnn As Connection
Set cnn = New Connection

Set RS2 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
a = FreeFile
Close #a
Set rs1 = New Recordset
    rs1.Open " select distinct a.slcode,slname,b.lotno,b.lotdt,b.varcode, a.cntcd,netwt,bales=(case bblflg when 'B' then bales  end), " & _
    " borah=(case when bblflg  IN ('R','H') then bales end),d.netwt,Value=d.ratekg*netwt from rm_issh a,rm_issb b,fa_slmas c,rm_lot d,rm_issuetype e where a.isstype=e.issue_code and b.isstype=e.issue_code and  b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  " & _
    " and a.isstype=b.isstype and e.isstype='S' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode=c.slcode  and  a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' order by a.slcode,slname,b.lotno,b.lotdt", Cn, adOpenStatic, adLockBatchOptimistic
If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
Set RPTV = New Report.ReportView
Close #a
Open KALFOLDERDATA & "\cust.TXT" For Output As #a
pg1 = 1
Co = 0
Screen.MousePointer = 0
Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
While Not rs1.EOF
    Set RS9 = New Recordset
    RS9.Open "select distinct a.slcode,c.slname,b.lotno,b.lotdt,B.varcode, a.cntcd,netwt,bales=(case bblflg when 'B' then bales  end), borah=(case when bblflg  IN ('R','H') then bales end),sum(b.isskgs)as netwt,Value=d.ratekg*sum(b.isskgs)from rm_issh a,rm_issb b,fa_slmas c,rm_lot d,rm_issuetype e where a.isstype=e.issue_code and e.issue_code=b.isstype and e.isStype='S' AND b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode=c.slcode and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.slcode='" & rs1(0) & "' group by a.slcode,slname,b.lotno,b.lotdt,B.varcode, a.cntcd,netwt,bblflg,ratekg,d.bales  order by a.slcode,slname,b.lotno,b.lotdt ", cnn, adOpenStatic
    If RS9.RecordCount > 0 Then
        Set RS8 = New Recordset
        'RS8.Open "select distinct a.slcode,slname,b.lotno,b.lotdt,B.varcode, a.cntcd,netwt,bales=(case bblflg when 'B' then bales  end), borah=(case when bblflg IN ('R','H') then bales end),d.netwt,Value=d.ratekg*netwt,b.baleno from rm_issh a,rm_issb b,fa_slmas c,rm_lot d,RM_ISSUETYPE E where  a.isstype=e.issue_code and e.issue_code=b.isstype and e.isStype='S' AND b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype  and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode =c.slcode   and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.slcode = '" & RS1(0) & "' order by a.slcode,slname,b.lotno,b.lotdt", cnn, adOpenStatic
        RS8.Open "select distinct a.slcode,c.slname,b.lotno,b.lotdt,B.varcode, a.cntcd,netwt,bales=(case bblflg when 'B' then bales  end), borah=(case when bblflg  IN ('R','H') then bales end),netwt,Value=d.ratekg*netwt,b.baleno from rm_issh a,rm_issb b,fa_slmas c,rm_lot d,rm_issuetype e where a.isstype=e.issue_code and e.issue_code=b.isstype and e.isStype='S' AND b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode =c.slcode  and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.slcode = '" & rs1(0) & "' order by a.slcode,slname,b.lotno,b.lotdt", cnn, adOpenStatic
        br = RS8.RecordCount
    Else
        MsgBox "No Records Found", vbInformation, head
        Close #a
        Screen.MousePointer = 0
        Exit Sub
    End If
    Print #a, Space(5) & Padr(CStr(rs1(0)), 9, " ") & Padr(CStr(rs1(1)), 45, " ")
    Print #a,
    Co = Co + 2
    If Co >= PageLen Then
                    Print #a, Space(5) + String(116, "-");
                      Print #a, Chr(12)
                      pg1 = pg1 + 1
                      Co = 0
                      Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
                     End If
    
    
    Set RPTV = New Report.ReportView
    pg1 = 1
    Co = 11
    RS9.MoveFirst
      While Not RS9.EOF
      Set Namers = New Recordset
      Namers.Open "Select varname from rm_var where varcode='" & RS9("varcode") & "'", DB, adOpenStatic
      Print #a, Space(5) + Padl((CStr(RS9("lotno"))), 6, " ") + Space(5) + Padr(RS9("lotdt"), 13, " "); Space(2) & Padr(Namers("varname"), 19, " ") & Padr("", 10, " ") & Space(4) & Padl(IIf(br = 0, " ", br), 11, " ") & Padl(IIf(IsNull(RS9("borah")) = True, " ", RS9("borah")), 12, " ") & Padl(Format(RS9("netwt"), "#.000"), 17, " ") & Padl(Format(RS9("value"), "#,##.00"), 17, " ")
      Co = Co + 1
If Co >= PageLen Then
                Print #a, Space(5) + String(116, "-");
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
                 End If

    tot1 = tot1 + br
    tot2 = tot2 + RS9("borah")
    tot3 = tot3 + RS9("netwt")
    tot4 = tot4 + RS9("value")
     Print #a,
     Co = Co + 1
If Co >= PageLen Then
                Print #a, Space(5) + String(116, "-");
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
                 End If

     'Print #a, Space(48) & "** Supplier Total **" & Space(14) & Padl(CStr(tot1), 12, " ") & Padl(CStr(IIf(IsNull(tot2), " ", tot2)), 12, " ") & Padl(CStr(Format(tot3, "#,##.00")), 17, " ") & Padl(CStr(Format(tot4, "#,##.00")), 17, " ")
    RS9.MoveNext
    Wend
    rs1.MoveNext
    Wend
Print #a,
Co = Co + 1
If Co >= PageLen Then
                Print #a, Space(5) + String(116, "-");
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call PartyHeader(pg1, Co, U, V, W, DIVNAME)
                 End If
Print #a, Space(5) + String(116, "-")
Print #a, Space(28) + " ** Grand Total **" + Space(17) + Padl(CStr(tot1), 12, " ") & Padl(CStr(IIf(IsNull(tot2), " ", tot2)), 12, " ") & Padl(CStr(Format(tot3, "#,##.000")), 17, " ") & Padl(CStr(Format(tot4, "#,##.00")), 17, " ")
'Print #a,
Print #a, Space(5) + String(116, "-")
Print #a, Chr(18)
Print #a, Chr(12)
 Call footermod(CInt(a), rp.UserFooter1.SelectedStr, 85)
 rp.Visible = False

Close #a

a = FreeFile
Call KALBATPROCESS("cust")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, W As String, DIVNAME As String)
          Print #a, Chr(18)
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Sales Issues" + Chr(27) + "F" + Space(1) + "CustomerWise For Period From " & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy") & Space(19) & W
          Print #a,
          Print #a, Space(45) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(116, "-")
          Print #a, Space(5) + "Code     Party Name"
''        Print #a, Space(5) + "Lot No     Receipt Date   Variety            Count               Bales       Borah       Net Weight            Value"
          Print #a, Space(5) + "Lot No     Receipt Date   Variety                                Bales       Borah       Net Weight            Value"
          Print #a, Space(5) + String(116, "-")
          Co = Co + 10
End Sub
