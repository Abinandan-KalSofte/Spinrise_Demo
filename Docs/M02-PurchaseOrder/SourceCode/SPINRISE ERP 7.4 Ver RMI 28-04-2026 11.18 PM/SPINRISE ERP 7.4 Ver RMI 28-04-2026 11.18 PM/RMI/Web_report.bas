Attribute VB_Name = "Web_report"
Dim pg As Integer
Dim sno As Integer
Dim Count As Integer
Dim RS1, rs2 As Recordset
Dim rep As ReportView
Dim z As Integer
Dim a, b, opendt As Date
Dim fp, tp, fv, TV As String
Dim op, cl, iss, rec, val As Double
Dim City, pin As String
Dim i As Date

Public Sub web_rep(a As Date, b As Date, fp As String, tp As String, fv As String, TV As String)
pg = 0
sno = 0
op = 0
cl = 0
DCNO = ""
opendt = Format(a, "yyyy-mm-dd")
DCDT = ""
nodcqty = ""
nodckgs = 0
gnodcqty = 0
gnodckgs = 0
recno = ""
recdt = ""
colourcd = ""
rnetwt = ""
rqty = ""
rmillwt = 0
grnetwt = 0
grqty = 0
grmillwt = 0
grop = 0
grcl = 0
grrec = 0
griss = 0
variety = " "
party = " "

Set RS1 = New Recordset
  If MONTH(a) = "04" Then
   RS1.Open "select slcode,Varcode from rm_dcdyinghd a,rm_dcdyingdt b where a.divcode=b.divcode and a.dcno=b.dcno and a.dcdt=b.dcdt and isnull(b.obflag,'')='Y' and b.dcdt<='" & Format(a, "yyyy-mm-dd") & "' and varcode between '" & fv & "'  and '" & TV & "' and slcode='" & fp & "' group by slcode,Varcode", connectstring, adOpenStatic, adLockBatchOptimistic
   Else
   RS1.Open "select slcode,Varcode from rm_dcdyinghd a,rm_dcdyingdt b where a.divcode=b.divcode and a.dcno=b.dcno and a.dcdt=b.dcdt and b.dcdt<='" & Format(a, "yyyy-mm-dd") & "' and varcode between '" & fv & "'  and '" & TV & "' and slcode='" & fp & "' group by slcode,Varcode", connectstring, adOpenStatic, adLockBatchOptimistic
   End If
If RS1.RecordCount <= 0 Then
    MsgBox "No Records Found ", vbInformation, head
    Exit Sub
End If

Set rs2 = New Recordset
rs2.Open "select isnull(city,' ') as city ,isnull(pincode,' ') as pin from  pp_divmas  where divcode ='" & Divcode & "' ", connectstring, adOpenStatic, adLockBatchOptimistic
City = rs2("city")
pin = rs2("pin")
DCNO = ""

Set rep = New Report.ReportView
z = FreeFile
Close
Open KALFOLDERDATA & "\web.TXT" For Output As #z

fp = RS1("slcode")
tp = RS1("slcode")
fv = RS1("varcode")
TV = RS1("varcode")
Call header(pg, fp, tp, fv, TV, cnt, a, b)
diff = DateDiff("d", a, b)
RS1.MoveFirst

Do While Not RS1.EOF
Set openrs = New Recordset
If MONTH(a) = "4" Then
openrs.Open "select x.slcode,slname,varname,balance from (" & _
            " Select slcode,B.Varcode, B.VarName,sum(issqty)-sum(recqty) as balqty, " & _
            " SUM(ISNULL(Issued,0)) as Iss, SUM(ISNULL(Received,0)) as Rcvd, " & _
            " SUM(ISNULL(Issued,0))- SUM(ISNULL(Received,0)) as balance From ( " & _
            " Select slcode,sum(quantity) as issqty,0 as recqty, SUM(Kgs) Issued, Varcode, 0 as Received " & _
            " From Rm_Dcdyingdt a,rm_dcdyinghd b Where a.dcno=b.dcno and a.dcdt=b.dcdt and " & _
            " a.divcode=b.divcode and  b.dcdt<='" & Format(a, "yyyy-mm-dd") & "' and b.obflag='Y' and varcode='" & RS1("varcode") & "' and slcode='" & fp & "' group by slcode,varcode " & _
            " Union All Select slcode,0 as issqty,sum(quantity) as recqty, 0 as Issued, Varcode,sum(netwt) " & _
            " as Received  FROM Rm_Recdyingdt a,rm_recdyinghd b Where a.recno=b.recno and " & _
            " a.recdt=b.recdt and a.divcode=b.divcode  and a.recdt<'" & Format(a, "yyyy-mm-dd") & "'  and a.varcode='" & RS1("varcode") & "' and b.slcode='" & fp & "' and quantity>0 group by slcode,varcode " & _
            " )a, Rm_Var B Where a.varcode = B.varcode Group by slcode,B.Varcode, B.VarName )x ,fa_slmas b Where x.slcode = b.slcode ", connectstring, adOpenStatic, adLockBatchOptimistic
Else
openrs.Open "select x.slcode,slname,varname,balance from (" & _
            " Select slcode,B.Varcode, B.VarName,sum(issqty)-sum(recqty) as balqty, " & _
            " SUM(ISNULL(Issued,0)) as Iss, SUM(ISNULL(Received,0)) as Rcvd, " & _
            " SUM(ISNULL(Issued,0))- SUM(ISNULL(Received,0)) as balance From ( " & _
            " Select slcode,sum(quantity) as issqty,0 as recqty, SUM(Kgs) Issued, Varcode, 0 as Received " & _
            " From Rm_Dcdyingdt a,rm_dcdyinghd b Where a.dcno=b.dcno and a.dcdt=b.dcdt and " & _
            " a.divcode=b.divcode and  b.dcdt<'" & Format(a, "yyyy-mm-dd") & "' and varcode='" & RS1("varcode") & "' and slcode='" & fp & "' group by slcode,varcode " & _
            " Union All Select slcode,0 as issqty,sum(quantity) as recqty, 0 as Issued, Varcode,sum(netwt) " & _
            " as Received  FROM Rm_Recdyingdt a,rm_recdyinghd b Where a.recno=b.recno and " & _
            " a.recdt=b.recdt and a.divcode=b.divcode  and a.recdt<'" & Format(a, "yyyy-mm-dd") & "'  and a.varcode='" & RS1("varcode") & "' and b.slcode='" & fp & "' and quantity>0 group by slcode,varcode " & _
            " )a, Rm_Var B Where a.varcode = B.varcode Group by slcode,B.Varcode, B.VarName )x ,fa_slmas b Where x.slcode = b.slcode ", connectstring, adOpenStatic, adLockBatchOptimistic
End If
'''openrs.Open "select Sum(Kgs) as Kgs from rm_dcdyinghd a,rm_dcdyingdt b where a.divcode=b.divcode and a.dcno=b.dcno and a.dcdt=b.dcdt and isnull(b.obflag,'')='Y' and b.dcdt<='" & Format(a, "yyyy-mm-dd") & "' and varcode='" & RS1("varcode") & "' and slcode='" & fp & "' group by slcode,Varcode", connectstring, adOpenStatic, adLockBatchOptimistic
''''cl = openrs("Kgs")
'''Set issdyed = New Recordset
'''issdyed.Open "select Sum(netwt) as Kgs from rm_recdyinghd a,rm_recdyingdt b where a.divcode=b.divcode and a.recno=b.recno and a.recdt=b.recdt and isnull(b.obflag,'')='Y' and b.recdt<='" & Format(a, "yyyy-mm-dd") & "' and varcode='" & RS1("varcode") & "' and slcode='" & fp & "' group by slcode,Varcode", connectstring, adOpenStatic, adLockBatchOptimistic
cl = openrs("balance")
Print #z, Space(5); "OPENING :" & Space(106); Padl(INF(cl, 3), 15, " ")
For i = 0 To diff
Set webrs = New Recordset
webrs.Open "select slcode,Varcode,a.dcdt,a.dcno,sum(Quantity) as Quantity,Sum(Kgs) as Kgs from rm_dcdyinghd a,rm_dcdyingdt b where a.divcode=b.divcode and a.dcno=b.dcno and a.dcdt=b.dcdt and slcode='" & fp & "' and varcode='" & RS1("varcode") & "' and isnull(b.obflag,'')<>'Y' and a.dcdt='" & Format(a, "yyyy-mm-dd") & "' group by slcode,Varcode,a.dcdt,a.dcno", connectstring, adOpenStatic, adLockBatchOptimistic
    Do While Not webrs.EOF
    If webrs.RecordCount > 0 Then
            DCNO = webrs("dcno")
            DCDT = webrs("dcdt")
            nodcqty = webrs("quantity")
            nodckgs = webrs("Kgs")
            predcno = webrs("dcno")
            gnodcqty = gnodcqty + webrs("quantity")
            gnodckgs = gnodckgs + webrs("Kgs")
        Else
            DCNO = ""
            DCDT = ""
            nodcqty = ""
            nodckgs = 0
            'gnodcqty = 0
            'gnodckgs = 0
    End If
    
    If webrs.RecordCount = 1 Then
    cl = cl + nodckgs
    Print #z, Space(1) + Padr(a, 12, " ") + Space(3) + Padr(DCNO, 5, " ") + Space(9) + Padr(nodcqty, 3, " ") + Padl(INF(nodckgs, 3), 13, " ") + Space(74) + Padl(INF(cl, 3), 15, " ")
    Else
    cl = cl + nodckgs
    Print #z, Space(1) + Padr(a, 12, " ") + Space(3) + Padr(DCNO, 5, " ") + Space(9) + Padr(nodcqty, 3, " ") + Padl(INF(nodckgs, 3), 13, " ") + Space(74) + Padl(INF(cl, 3), 15, " ")
    End If
    webrs.MoveNext
    Loop
    Set dyedrs = New Recordset
    dyedrs.Open "select slcode,a.dcno,a.recdt,colorcode,sum(quantity) as quantity,sum(netwt) as netwt,sum(millwt) as millwt from rm_recdyinghd a,rm_recdyingdt b where a.divcode=b.divcode and a.recno=b.recno and a.recdt=b.recdt and slcode='" & fp & "' and varcode='" & RS1("varcode") & "' and isnull(b.obflag,'')<>'Y' and b.recdt ='" & Format(a, "yyyy-mm-dd") & "' group by slcode,a.dcno,a.recdt,colorcode", connectstring, adOpenStatic, adLockBatchOptimistic
 
 
 Do While Not dyedrs.EOF
    If dyedrs.RecordCount > 0 Then
    recno = dyedrs("dcno")
    recdt = dyedrs("recdt")
    colourcd = dyedrs("colorcode")
    rnetwt = dyedrs("netwt")
    rqty = dyedrs("quantity")
    rmillwt = dyedrs("millwt")
    grnetwt = grnetwt + dyedrs("netwt")
    grqty = grqty + dyedrs("quantity")
    grmillwt = grmillwt + dyedrs("millwt")
    Else
    recno = ""
    recdt = ""
    colourcd = ""
    rnetwt = ""
    rqty = ""
    rmillwt = 0
    'grnetwt = 0
    'grqty = 0
    'grmillwt = 0
    End If
    cl = cl - rnetwt
    
           
            Print #z, Space(1) + Padr(a, 12, " ") + Space(38) + Padr(colourcd, 10, " ") + Space(1) + Padr(recno, 4, " ") + Space(8) + Padr(rqty, 4, " ") + Space(5) + Padl(INF(rnetwt, 3), 10, " ") + Space(3) + Padl(rqty, 5, " ") + Space(3) + Padl(INF(rmillwt, 3), 15, " ") + Space(1) + Padl(INF(cl, 3), 15, " ")
            cnt = cnt + 1
            sno = sno + 1
           

dyedrs.MoveNext
Loop
If dyedrs.RecordCount = 0 Then
   recno = ""
    recdt = ""
    colourcd = ""
    rnetwt = 0
    rqty = ""
    rmillwt = 0

    cl = cl - rnetwt
    Print #z, Space(1) + Padr(a, 12, " ") + Space(38) + Padr(colourcd, 10, " ") + Space(1) + Padr(recno, 4, " ") + Space(8) + Padr(rqty, 4, " ") + Space(5) + Padl(INF(rnetwt, 3), 10, " ") + Space(3) + Padl(rqty, 5, " ") + Space(3) + Padl(INF(rmillwt, 3), 15, " ") + Space(1) + Padl(INF(cl, 3), 15, " ")
    cnt = cnt + 1
    
End If
a = DateAdd("d", 1, a)

Next
Print #z, Space(1) + String(135, "-")
Print #z, Space(5) + Padl("Total ", 9, " ") + Space(15) + Padl(INF(gnodcqty, 0), 3, " ") + Space(1) + Padl(INF(gnodckgs, 3), 13, " ") + Space(25) + Padl(INF(grqty, 0), 5, " ") + Space(2) + Padl(INF(grnetwt, 3), 15, " ") + Space(1) + Padl(INF(grqty, 0), 7, " ") + Space(3) + Padl(INF(grmillwt, 3), 15, " ") + Space(1) + Padl(INF(cl, 3), 15, " ")
Print #z, Space(1) + String(135, "-")
a = opendt
cl = 0
DCNO = ""
DCDT = ""
nodcqty = ""
nodckgs = 0
recno = ""
recdt = ""
colourcd = ""
rnetwt = ""
rqty = ""
rmillwt = 0
c1 = 60 - cnt
For c = 0 To c1
cnt = cnt + 1
Print #z,
Next


RS1.MoveNext
If cnt >= 60 Then
 If Not RS1.EOF Then
    Print #z, Space(1) + String(135, "-")
    cnt = 0
    grnetwt = 0
    grqty = 0
    grmillwt = 0
    fp = RS1("slcode")
    tp = RS1("slcode")
    fv = RS1("varcode")
    TV = RS1("varcode")
    Call header(pg, fp, tp, fv, TV, cnt, a, b)
 End If
End If

Loop
    'Print #z, Space(56) + String(100, "-")
    'Print #z, Space(1) + Space(35) + Padl("Variety Wise Total ", 20, " ") + Padl(INF(op, 3), 15, " ") + Space(1) + Padl(INF(rec, 3), 15, " ") + Space(10) + Space(1) + Padl(INF(iss, 3), 15, " ") + Space(1) + Padl(INF(cl, 3), 18, " ")
    'Print #z, Space(56) + String(100, "-")

    'Print #z, Space(56) + String(100, "-")
    'Print #z, Space(1) + Space(35) + Padl("Grand Total ", 20, " ") + Padl(INF(grop, 3), 15, " ") + Space(1) + Padl(INF(grrec, 3), 15, " ") + Space(10) + Space(1) + Padl(INF(griss, 3), 15, " ") + Space(1) + Padl(INF(grcl, 3), 18, " ")
    Print #z, Space(1) + String(135, "-")

        Screen.MousePointer = 0
        Close #z
    Call KALBATPROCESS("web")
        
'        Open "C:\web.bat" For Output As #z
'        Print #z, "cd\"
'        Print #z, "C:"
'        Print #z, "cd\"
'        Print #z, "type web.txt > prn"
'        Close #z
'        rep.txtfile = "C:\web.TXT"
'        rep.Batfile = "C:\web.bat"
        

End Sub
Private Sub header(pg, fp, tp, fv, TV, cnt, a, b)
pg = pg + 1
cnt = 0
SR = Format(pdate, "dd/mm/yy")
t = Format(time, "h:mm:SS")
Set rs2 = New Recordset
rs2.Open "select slname,add1,add2,add3,city,pin from fa_slmas where slcode ='" & fp & "' ", connectstring, adOpenStatic, adLockBatchOptimistic
Print #z, Chr(15)
Print #z, Space(1) + Padr(DIVNAME + " " + City + " - " + pin, 90, " ") & Space(25) & "Date [" & SR & "]"
Print #z,
Print #z, Space(1) + "Party Name : " + Padr(rs2("slname"), 40, " ") + Space(65) + "Time [" & t & "]"
Print #z, Space(1) + "    Adress : " + Padr(rs2("add1"), 25, " ")
Print #z, Space(14) + Padr(rs2("add2"), 25, " ")
Print #z, Space(14) + Padr(rs2("add3"), 25, " ")
Print #z, Space(14) + Padr(rs2("city"), 15, " ") + "-" + Padr(rs2("pin"), 7, " ")
Print #z,
Set rs2 = New Recordset
rs2.Open "select varname from rm_var where varcode ='" & fv & "' ", connectstring, adOpenStatic, adLockBatchOptimistic
Print #z, Space(1) + "Date [" & Format(a, "dd/mm/yy") & " To " & Format(b, "dd/mm/yy"); "]" & Space(45) & "Variety : " & rs2("varname") & Space(35) & "Pg.: " + Padl(pg, 3, " ")
Print #z, Space(1) + String(135, "-")
Print #z, Space(1) + "Date" + Space(5) + "     DC.No     No. of Bags    Web Wt.    Colour    Del.No   No. of Bags    Dyed Wt.   No. of Bags     Dyed Wt.      Balance"
Print #z, Space(1) + String(135, "-")
cnt = cnt + 10

End Sub


