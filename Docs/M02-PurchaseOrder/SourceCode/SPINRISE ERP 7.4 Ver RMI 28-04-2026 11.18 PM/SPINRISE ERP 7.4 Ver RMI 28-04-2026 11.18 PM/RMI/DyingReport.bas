Attribute VB_Name = "Dyingreport"
Dim pg As Integer
Dim sno As Integer
Dim Count As Integer
Dim RS1, rs2 As Recordset
Dim rep As ReportView
Dim z As Integer
Dim a, b As Date
Dim fp, tp, fv, TV As String
Dim op, cl, iss, rec, val As Double
Dim City, pin As String

Public Sub dying_rep(a As Date, b As Date, fp As String, tp As String, fv As String, TV As String)
pg = 0
sno = 0
op = 0
cl = 0
rec = 0
iss = 0
val = 0
totVal = 0
grop = 0
grcl = 0
grrec = 0
griss = 0
GTOTVAL = 0
variety = " "
party = " "

Set RS1 = New Recordset
'RS1.Open "select varcode,slcode,colorcode,sum(opqty) as opqty,sum(recqty) as recqty,sum(issqty) as issqty,sum(opqty)+sum(recqty)-sum(issqty) as cloqty from(  " & _
        "select varcode,slcode,colorcode,sum(netwt) as opqty,0 as recqty,0 as issqty from rm_recdyingdt a,rm_recdyinghd b where a.recdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' and a.divcode=b.divcode and a.recno=b.recno and " & _
        "a.recdt=b.recdt  and a.obflag='Y' group by varcode,slcode,colorcode " & _
        "Union  " & _
        "select varcode,slcode,colorcode,0 as opqty,sum(netwt) as recqty,0 as issqty from rm_recdyingdt a,rm_recdyinghd b where a.recdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' and a.divcode=b.divcode and a.recno=b.recno and " & _
        "a.recdt=b.recdt  and isnull(a.obflag,'')<>'Y' group by varcode,slcode,colorcode " & _
        "Union " & _
        "select varcode,slcode,colorcode,0 as opqty,0 as recqty,sum(kgs) as issqty from rm_issdying where issdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' group by varcode,slcode,colorcode " & _
        " )x where x.slcode between '" & fp & "' and '" & tp & "' and x.varcode between '" & fv & "'and '" & TV & "' group by varcode,slcode,colorcode " & _
        "order by varcode,slcode,colorcode ", connectstring, adOpenStatic, adLockBatchOptimistic
RS1.Open "select varcode,slcode,colorcode,sum(opqty) as opqty,sum(recqty) as recqty,sum(issqty) as issqty,sum(opqty)+sum(recqty)-sum(issqty) as cloqty from(  " & _
        "select varcode,slcode,colorcode,sum(opqty)-sum(issqty) as opqty,0 as recqty,0 as issqty from( " & _
        "select varcode,slcode,colorcode,sum(millwt) as opqty,0 as recqty,0 as issqty from rm_recdyingdt a,rm_recdyinghd b where a.divcode=b.divcode and a.recno=b.recno and " & _
        "a.recdt=b.recdt  and (a.obflag='Y' or isnull(a.obflag,'')<>'Y') and a.recdt < '" & Format(a, "YYYY-MM-DD") & "'  group by varcode,slcode,colorcode " & _
        " union " & _
        " select varcode,slcode,colorcode,0 as opqty,0 as recqty,sum(kgs) as issqty from rm_issdying where issdt < '" & Format(a, "YYYY-MM-DD") & "' group by varcode,slcode,colorcode)y group by varcode,slcode,colorcode " & _
        "Union  " & _
        "select varcode,slcode,colorcode,0 as opqty,sum(millwt) as recqty,0 as issqty from rm_recdyingdt a,rm_recdyinghd b where a.recdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' and a.divcode=b.divcode and a.recno=b.recno and " & _
        "a.recdt=b.recdt  and isnull(a.obflag,'')<>'Y' group by varcode,slcode,colorcode " & _
        "Union " & _
        "select varcode,slcode,colorcode,0 as opqty,0 as recqty,sum(kgs) as issqty from rm_issdying where issdt between '" & Format(a, "YYYY-MM-DD") & "' and '" & Format(b, "YYYY-MM-DD") & "' group by varcode,slcode,colorcode " & _
        " )x group by varcode,slcode,colorcode " & _
        "order by varcode,slcode,colorcode ", connectstring, adOpenStatic, adLockBatchOptimistic



If RS1.RecordCount <= 0 Then
    MsgBox "No Records Found ", vbInformation, head
    Exit Sub
End If

Set rs2 = New Recordset
rs2.Open "select isnull(city,' ') as city ,isnull(pincode,' ') as pin from  pp_divmas  where divcode ='" & Divcode & "' ", connectstring, adOpenStatic, adLockBatchOptimistic
City = rs2("city")
pin = rs2("pin")


Set rep = New Report.ReportView
z = FreeFile
Close
Open KALFOLDERDATA & "\dy1.TXT" For Output As #z


Call header(pg, fp, tp, fv, TV, cnt, a, b)
RS1.MoveFirst

Do While Not RS1.EOF
If RS1("cloqty") > 0 Then
Set RATERS = New Recordset
RATERS.Open "SELECT RATE FROM RM_DYINGDET WHERE SLCODE='" & RS1("SLCODE") & "' AND VARCODE='" & RS1("VARCODE") & "' AND COLORCODE='" & RS1("COLORCODE") & "'", connectstring, adOpenStatic, adLockBatchOptimistic

Set rs2 = New Recordset
rs2.Open "select varname from rm_var where varcode ='" & RS1("varcode") & "' ", connectstring, adOpenStatic, adLockBatchOptimistic
    
    If variety <> RS1("varcode") And sno > 1 Then
            Print #z, Space(56) + String(100, "-")
            Print #z, Space(1) + Space(35) + Padl("Variety Wise Total ", 20, " ") + Padl(INF(op, 3), 15, " ") + Space(1) + Padl(INF(rec, 3), 15, " ") + Space(7) + Space(1) + Padl(INF(iss, 3), 15, " ") + Space(1) + Padl(INF(cl, 3), 15, " ") + Space(10) + Padl(INF(totVal, 3), 18, " ")
            Print #z, Space(56) + String(100, "-")
            cnt = cnt + 3
            sno = 0
            op = 0
            cl = 0
            rec = 0
            iss = 0
            totVal = 0
    End If



    If variety <> RS1("varcode") Then
            Print #z, Space(1) + rs2("varname")
            Print #z, Space(1) + String(Len(rs2("varname")), "=")
            Print #z,
            cnt = cnt + 3
    End If
    

Set rs2 = New Recordset
rs2.Open "select slname from fa_slmas where slcode ='" & RS1("slcode") & "' ", connectstring, adOpenStatic, adLockBatchOptimistic

Set rs3 = New Recordset
rs3.Open "select colorname from rm_color where colorcode ='" & RS1("colorcode") & "' ", connectstring, adOpenStatic, adLockBatchOptimistic

    If party <> RS1("slcode") Then
            val = RATERS("rate") * RS1("cloqty")
            Print #z, Space(1) + Padr(rs2("slname"), 40, " ") + Space(2) + Padr(rs3("colorname"), 15, " ") + Padl(INF(IIf(RS1("opqty") > 0, RS1("opqty"), ""), 3), 13, " ") + Space(1) + Padl(INF(RS1("recqty"), 3), 15, " ") + Space(7) + Space(1) + Padl(INF(RS1("issqty"), 3), 15, " ") + Space(1) + Padl(INF(RS1("cloqty"), 3), 15, " ") + Space(4) + Padl(INF(RATERS("rate"), 2), 6, " ") + Padl(INF(val, 3), 18, " ")
            sno = sno + 1
            totVal = totVal + val
            val = 0
    Else
            If RS1.EOF = False And RATERS.EOF = False Then
            val = RATERS("rate") * RS1("cloqty")
            Else
                val = 0
            End If
            If RATERS.EOF = False Then
                rate12 = RATERS("rate")
            Else
                rate12 = 0
            End If
            
            Print #z, Space(1) + Space(40) + Space(2) + Padr(rs3("colorname"), 15, " ") + Padl(INF(IIf(RS1("opqty") > 0, RS1("opqty"), ""), 3), 13, " ") + Space(1) + Padl(INF(RS1("recqty"), 3), 15, " ") + Space(7) + Space(1) + Padl(INF(RS1("issqty"), 3), 15, " ") + Space(1) + Padl(INF(IIf(RS1("opqty") < 0, RS1("issqty") + RS1("recqty"), RS1("cloqty")), 3), 15, " ") + Space(4) + Padl(INF(rate12, 2), 6, " ") + Padl(INF(val, 3), 18, " ")
            sno = sno + 1
            totVal = totVal + val
             val = 0
    End If
    
    cnt = cnt + 1
If RS1("opqty") > 0 Then
op = op + RS1("opqty")
End If
rec = rec + RS1("recqty")
iss = iss + RS1("issqty")
If RS1("cloqty") Then
cl = cl + RS1("cloqty")
End If
If RS1("opqty") > 0 Then
grop = grop + RS1("opqty")
End If
grrec = grrec + RS1("recqty")
griss = griss + RS1("issqty")
GTOTVAL = GTOTVAL + totVal
If RS1("cloqty") Then
grcl = grcl + RS1("cloqty")
End If

party = RS1("slcode")
variety = RS1("varcode")
    

End If
RS1.MoveNext

If cnt >= 60 Then
    Print #z, Space(1) + String(155, "-")
    cnt = 0
    Call header(pg, fp, tp, fv, TV, cnt, a, b)
End If

Loop
    Print #z, Space(56) + String(100, "-")
    Print #z, Space(1) + Space(35) + Padl("Variety Wise Total ", 20, " ") + Padl(INF(op, 3), 15, " ") + Space(1) + Padl(INF(rec, 3), 15, " ") + Space(7) + Space(1) + Padl(INF(iss, 3), 15, " ") + Space(1) + Padl(INF(cl, 3), 15, " ") + Space(10) + Padl(INF(totVal, 3), 18, " ")
    Print #z, Space(56) + String(100, "-")

    Print #z, Space(56) + String(100, "-")
    Print #z, Space(1) + Space(35) + Padl("Grand Total ", 20, " ") + Padl(INF(grop, 3), 15, " ") + Space(1) + Padl(INF(grrec, 3), 15, " ") + Space(7) + Space(1) + Padl(INF(griss, 3), 15, " ") + Space(1) + Padl(INF(grcl, 3), 15, " ") + Space(10) + Padl(INF(GTOTVAL, 3), 18, " ")
    Print #z, Space(1) + String(155, "-")

        Screen.MousePointer = 0
        Close #z
Call KALBATPROCESS("dy1")
'        Close #z
'        Open "C:\dy1.bat" For Output As #z
'        Print #z, "cd\"
'        Print #z, "C:"
'        Print #z, "cd\"
'        Print #z, "type dy1.txt > prn"
'        Close #z
'        rep.txtfile = "C:\dy1.TXT"
'        rep.Batfile = "C:\dy1.bat"
        

End Sub
Private Sub header(pg, fp, tp, fv, TV, cnt, a, b)
pg = pg + 1
cnt = 0
SR = Format(pdate, "dd/mm/yy")
t = Format(time, "h:mm:SS")
Print #z, Chr(15)
Print #z, Space(1) + Padr(DIVNAME + " " + City + " - " + pin, 90, " ") & Space(50) & "Date [" & SR & "]"
Print #z, Space(1) + Padr("Variety Wise Dyed Fiber Stock Abstract For the Period From ", 60, " ") & Format(a, "dd/mm/yy") & " To " & Format(b, "dd/mm/yy") & Space(60) & "Time [" & t & "]"
Print #z, Space(1) + "Party Code [" + Padr(fp, 7, " ") + " - " + Padr(tp, 7, " ") + " ] " + "      Variety [ " + Padr(fv, 15, " ") + " - " + Padr(TV, 10, " ") + "] " + Space(69) + "Pg.: " + Padl(pg, 3, " ")
Print #z, Space(1) + String(155, "-")
Print #z, Space(1) + "Variety Name" + Space(30) + "Colour         " + "<-------------------------------Weight in Kgs--------------------------->"
Print #z, Space(1) + "Party Name" + Space(53) + "   Opening      Arrival      Rejected      Issues      Closing    Rate/Kg          Value"
Print #z, Space(1) + String(155, "-")
cnt = cnt + 8

End Sub
