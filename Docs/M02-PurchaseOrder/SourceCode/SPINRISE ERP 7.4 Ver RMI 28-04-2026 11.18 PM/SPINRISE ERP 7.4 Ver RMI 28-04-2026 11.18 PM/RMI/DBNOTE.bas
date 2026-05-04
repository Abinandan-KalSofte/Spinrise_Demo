Attribute VB_Name = "DBNOTE"
Dim S As Integer
Public Sub DBNOTE(SLCODE As String, MONYEAR As String, vocno As Double, VOCDT As String, VOCTC As Double, TC As Double)
        
        Set Cn = New Connection
        Cn.Open connectstring
'***        rs1.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)),narration1 from fa_JVLINE Where  divcode = '" & divcode & "' and tc= " & VOCTC & " and vocdt = '" & Format(VOCDT, "dd/mmm/yyyy") & "'  and ACCODE = '" & Mid(Combo6.text, 1, 6) & "' AND ISNULL(debit,0) > 0 GROUP BY vocno,vocdt,narration1", cn
        Set rs1 = New Recordset
        rs1.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)) from fa_JVLINE Where  vocno='" & vocno & "' and divcode = '" & Divcode & "' and tc= " & VOCTC & " and vocdt = '" & Format(VOCDT, "dd/mmm/yyyy") & "'  and ACCODE = '" & SLCODE & "' AND ISNULL(debit,0) > 0 GROUP BY vocsno,vocno,vocdt", Cn
        If rs1.EOF = True Then MsgBox "No Records Found", vbInformation, "Kalsofte": Screen.MousePointer = 0: Exit Sub
        Dim dnt As Recordset
        Set cm1 = New Command
        cm1.ActiveConnection = Cn
        
        Set REPVIEW = New Report.ReportView
        S = FreeFile()
        Close
'        Open "c:\BRS.txt" For Output As #S
 Open KALFOLDERDATA & "\BRS.TXT" For Output As #S

        cm1.CommandText = "create table numw(vocno NUMERIC(15),vocdt datetime,amt numeric(15,2),wamt varchar(150),narration1 varchar(150),Qty numeric(15,3))"
        cm1.Execute

        rs1.MoveFirst
        Do While Not (rs1.EOF)
            amt = rs1(2)
            wor = Num_To_Word(CDbl(amt))
            Set rsa = New Recordset
            rsa.Open "select sum(b.netwt) as wt from RM_ARRIVAL a,rm_bale b WHERE status in ('RT','AW') AND a.lotno=b.lotno and a.lotdt=b.lotdt and dbno='" & vocno & "' and dbdt='" & Format(VOCDT, "yyyy-mm-dd") & "' ", Cn
            If rsa.EOF = False Then
                qty = rsa(0)
            End If
'***            cn.Execute ("insert into numw(vocno,vocdt,amt,wamt,narration1) values (" & rs1(0).Value & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & amt & ",'" & wor & "','" & rs1("narration1") & "')")
            Cn.Execute ("insert into numw(vocno,vocdt,amt,wamt,qty) values (" & rs1(0).value & ",'" & Format(rs1(1), "yyyy-mm-dd") & "'," & amt & ",'" & wor & "','" & IIf(IsNull(qty), 0, qty) & "')")
            rs1.MoveNext
        Loop

        Set Rs = New Recordset
        Rs.Open "Select distinct vocno,vocdt,amt,wamt,qty from numw where vocno = " & vocno, Cn

        tot = 0
        Dim DbCnt As Integer
        Dim intLoop As Integer
        z = 0
        rs1.MoveFirst
Set RS2 = New Recordset
RS2.Open "select slname ,ADD1,ADD2,'' AS ADD3,CITY,PIN from fa_slmas where slcode = '" & SLCODE & "'", Cn
 
Do While Not Rs.EOF
For intLoop = 1 To 2
      Set trs = New Recordset
      trs.Open "select divname,isnull(add1,''),isnull(add2,''),isnull(city,''),isnull(pincode,''),isnull(phone1,''),isnull(phone2,'') from pp_divmas WHERE divcode = '" & Divcode & "'", Cn
      Print #S, Chr(18) + Chr(27); "E"; CENTRE(Trim(DIVNAME), 95, " "); Chr(27); "F"
      Print #S, Space(5) + CENTRE(IIf(trs(1) <> "", trs(1) & ",", "") & IIf(trs(2) <> "", trs(2) & ",", "") & IIf(trs(3) <> "", trs(3) & IIf(trs(4) <> "", "-", ""), "") & trs(4), 85, " ")
      If trs(5) <> "" Or trs(6) <> "" Then
        Print #S, Space(5) + CENTRE(Trim("Phone: " & IIf(trs(5) <> "", trs(5) & IIf(trs(6) <> "", ",", ""), "") & trs(6)), 90, " ");
      Else
        Print #S, ;
      End If
      Print #S,
      Print #S, Chr(18)
      Print #S, Space(5); Chr(27); "E"; CENTRE("DEBIT NOTE", 80, " "); Chr(27); "F";
      Print #S,

        Print #S, Space(5) & "To,"
        Print #S, Space(5) & "M/s. " & Padr(RS2("slname"), 45, " ") & Space(1) & "No.  : " & Rs("vocno")
        Print #S, Space(10) & Padr(RS2("add1"), 45, " ") & Space(1) & "Date : " & Format(Rs("vocdt"), "dd/mm/yyyy")
        Print #S, Space(10) & Padr(RS2("add2"), 45, " ")
        Print #S, Space(10) & Padr(RS2("add3"), 45, " ")
        Print #S, Space(10) & Padr(RS2("city"), 45, " ")
        Print #S,
        Print #S, Space(5) & "We have debited your account as detailed here under."
        Print #S, Space(5) & String(75, "-")
        Print #S, Space(5) & "Particulars                                              Qty         Amount"
        Print #S, Space(5) & String(75, "-")

'**     Loop Here if more than one Debit entry in a Single Voucher
        Set dnt = New Recordset
        dnt.Open "select vocno,vocdt,SUM(ISNULL(DEBIT,0)),narration1 from fa_JVLINE Where  divcode = '" & Divcode & "' and tc= " & VOCTC & " and Vocno = " & Rs("Vocno") & " and vocdt = '" & Format(Rs("Vocdt"), "dd/mmm/yyyy") & "'  and ACCODE = '" & SLCODE & "' AND ISNULL(debit,0) > 0 GROUP BY vocno,vocdt,narration1", Cn
        dnt.MoveFirst
        While Not dnt.EOF
            Print #S, Space(5) & Padr(dnt("narration1"), 44, " ") & Space(1); Padl(INF(Rs("qty"), 3), 15, " ") & Space(1) & Padl(Format(dnt(2), "#0.00"), 14, " ")
            z = z + 1
            If Len(Mid$(dnt("narration1"), 61, 12)) > 0 Then
                Print #S, Space(5) & Padr(Mid$(dnt("narration1"), 61, 120), 60, " ")
                z = z + 1
            End If
            tot = tot + dnt(2)
            dnt.MoveNext
        Wend
'***        rs.MoveNext
'***Loop
        If z >= 5 Then
        Else
            For m = z To 3 - z
                Print #S,
            Next
        End If
        z = 0
        DbCnt = DbCnt + 1
        Print #S, Space(5) & String(75, "-")
        Print #S, Space(50) & "  Total  " & Space(7) & Padl(Format(tot, "#0.00"), 14, " ")
        Print #S, Space(5) & String(75, "-")
        wor = Num_To_Word(CDbl(tot))
        Print #S, Space(5) & Chr(27); "E" & "" & wor & Chr(27); "F"
        Print #S, Space(5)
        Print #S, Space(43) & Chr(27); "E" & "For" & Space(1) & Trim(DIVNAME) & Chr(27); "F"
        Print #S,
        Print #S,
        Print #S,
        Print #S, Space(60) & "Authorised Signatory"
        Print #S,

        If DbCnt = 2 Then
            Print #S, Chr(12)
            DbCnt = 0
        End If

        Print #S,
        rs1.MoveFirst
        tot = 0
Next intLoop
        Rs.MoveNext
Loop


        cm1.CommandText = "drop table numw"
        cm1.Execute

Close #S
S = FreeFile()
'Open "c:\BRS.bat" For Output As #S
'Print #S, "cd\"
'Print #S, "c:"
'Print #S, "cd\"
'Print #S, "c:\type BRS.txt > Prn"
'Close #S
'REPVIEW.txtfile = "c:\BRS.txt"
'REPVIEW.Batfile = "c:\BRS.bat"
S = FreeFile
Call KALBATPROCESS("BRS")
Screen.MousePointer = 0

End Sub

Private Sub DbCrntHeading(dch As String, intN As Integer)
      Print #a,
      Set trs = New Recordset
      trs.Open "select divname,isnull(add1,''),isnull(add2,''),isnull(city,''),isnull(pincode,''),isnull(phone1,''),isnull(phone2,'') from pp_divmas WHERE divcode = '" & Divcode & "'", Cn
      Print #a, Chr(18) + Chr(27); "E"; CENTRE(DIVNAME, 95, " "); Chr(27); "F"
      Print #a, Space(5) + CENTRE(IIf(trs(1) <> "", trs(1) & ",", "") & IIf(trs(2) <> "", trs(2) & ",", "") & IIf(trs(3) <> "", trs(3) & IIf(trs(4) <> "", "-", ""), "") & trs(4), 85, " ")
      If trs(5) <> "" Or trs(6) <> "" Then
        Print #a, Space(5) + CENTRE("Phone: " & IIf(trs(5) <> "", trs(5) & IIf(trs(6) <> "", ",", ""), "") & trs(6), 90, " ");
      Else
        Print #a, ;
      End If
      If intN = 1 Then Print #a, "For Office Use"
      Print #a,
      Print #a, Chr(18)
      Print #a, Space(5); Chr(27); "E"; CENTRE(dch, 80, " "); Chr(27); "F";
      Print #a,
End Sub



