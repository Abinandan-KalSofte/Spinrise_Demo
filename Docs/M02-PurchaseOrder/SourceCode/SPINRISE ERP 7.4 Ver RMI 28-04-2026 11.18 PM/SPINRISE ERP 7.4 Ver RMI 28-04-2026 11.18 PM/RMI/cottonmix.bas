Attribute VB_Name = "cottonmix"
Public Sub Detailed_mixing(a As String, dname As String, B As String)
Dim rsmix As Recordset
Dim tot1 As Integer
pg = 1
div = divname
Set cn = New Connection

cn.Provider = "msdatashape"
cn.Open connectstring

Set Rs = New Recordset

Set rev = New Report.ReportView

co = 0
tot1 = 0

Dim r As String
Dim s As String

ree = 0
r = a
s = B

Set cn = New Connection
cn.Provider = "msdatashape"

cn.Open connectstring

Set rsmix = New Recordset
rsmix.Open "select mixgrp mixno,docdt from RM_issReqH where docdt = '" & Format(a, "yyyy-mm-dd") & "' " & _
           " and mixgrp = '" & B & "' and divcode='" & Divcode & "' ", DB, adOpenStatic

If rsmix.RecordCount <= 0 Then
    MsgBox "No record found", vbInformation
    Exit Sub
End If
                
Set Rs = New Recordset
Set rev = New Report.ReportView

Close #1
Open "c:\soon.txt" For Output As #1

pg1 = 1
slno = 0

Call callhead1(a, CInt(pg1), CStr(B))

tot1 = 0
Dim RS2 As Recordset

    Do While Not rsmix.EOF
        
        Set RS2 = New Recordset
'        rs2.Open " select slname,b.varcode,areaname,a.lotno,a.lotdt,b.bales,prno,lorrynos from RM_issReqb a,RM_issReqH b1,rm_lot b,fa_slmas c,rm_area d,rm_arrival e" & _
'        " Where a.Divcode = b.Divcode And a.lotno = b.lotno And a.Lotdt = b.Lotdt And b.supcd = c.slcode And b.areacd = d.areacode and b.arrno*=e.arrno and a.docno=b1.docno and a.docdt=b1.docdt and a.divcode=b1.divcode" & _
'        " and b1.mixgrp='" & B & "' and a.docdt='" & Format(a, "yyyy-mm-dd") & "' order by a.lotno", DB, adOpenStatic
        
    RS2.Open " select slname,b.varcode,areaname,a.lotno,a.lotdt,b.bales,prno,lorrynos from RM_issReqb a inner join RM_issReqH b1 on  a.docno=b1.docno and a.docdt=b1.docdt and a.divcode=b1.divcode " & _
        "  inner join rm_lot b on a.Divcode = b.Divcode And a.lotno = b.lotno And a.Lotdt = b.Lotdt inner join fa_slmas c on   b.supcd = c.slcode  inner join rm_area d on b.areacd = d.areacode  left join rm_arrival e  on  b.arrno=e.arrno and c.arrdt=e.ARRDATE  and e.varcode=c.varcode and e.divcode=c.divcode " & _
        " where b1.mixgrp='" & B & "' and a.docdt='" & Format(a, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' order by a.lotno", DB, adOpenStatic
        
            Do While Not RS2.EOF
                        
                slno = slno + 1
                Print #1, Space(3) & Padl(slno, 3, " ") & Space(3) & Padr(RS2("slname"), 40, " ") & Space(2) & Padr(RS2("varcode"), 10, " ") & Space(2) & Padr(RS2("areaname"), 15, " ") & Space(2) & Padl(RS2("lotno"), 5, " ") & Space(2) & Padl(RS2("bales"), 5, " ") & Space(5) & Padr(RS2("prno"), 23, " ") '& Space(1) & Padr(rs2("lorrynos"), 15, " ")
                co = co + 1
                tot1 = tot1 + RS2("bales")
                    If co >= 57 Then
                        Print #1, Space(3) & String(130, "-")
                        Print #1, Chr(12)
                        pg1 = pg1 + 1
                        co = 0
                        Call callhead1(a, CInt(pg1), CStr(B))
                    End If
                
                RS2.MoveNext
            Loop
            
        rsmix.MoveNext
    Loop
    
Print #1, Space(3) & String(130, "-")
Print #1, Space(3) & Space(59) & "   Grand Total    " & Space(7) & Padl(tot1, 5, " ")
Print #1, Space(3) & String(130, "-")

    If co >= 57 Then
        Print #1, Space(3) & String(130, "-")
        Print #1, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call callhead1(a, CInt(pg1), CStr(B))
    End If

Print #1, Chr(12)
Close #1

Open "c:\soon.bat" For Output As #1
Print #1, "cd\"
Print #1, "c:"
Print #1, "cd\"

Print #1, "type soon.txt>prn"
rev.txtfile = "c:\soon.txt"
rev.Batfile = "c:\soon.bat"
Close #17


End Sub
Public Sub Quality_Exp(a As String, dname As String, B As String)

Dim STR As String
Dim slno As Integer
Dim tot1 As Double
Dim rsmix As Recordset

Dim s25, s50, ufr, sf, mic, st, trash, rc, rk As Double
Dim s251, s501, ufr1, sf1, mic1, st1, trash1, rc1, rk1 As Double
Dim s252, s502, ufr2, sf2, mic2, st2, trash2, rc2, rk2 As Double
Dim s253, s503, ufr3, sf3, mic3, st3, trash3, rc3, rk3 As Double
Dim s254, s504, ufr4, sf4, mic4, st4, trash4, rc4, rk4 As Double

pg = 1
div = divname
Set cn = New Connection

cn.Provider = "msdatashape"
cn.Open connectstring

Set Rs = New Recordset

Set rev = New Report.ReportView

co = 0
tot1 = 0

Dim r As String
Dim s As String

ree = 0
r = a
s = B

Set cn = New Connection
cn.Provider = "msdatashape"

cn.Open connectstring


Set rsmix = New Recordset
rsmix.Open "select lotno,lotdt,baleno noofbales from RM_issReqb a inner join RM_issReqh  b on a.docno=b.docno and a.docdt=b.docdt where a.docdt = '" & Format(a, "yyyy-mm-dd") & "' " & _
           " and mixgrp = '" & B & "' ", DB, adOpenStatic

If rsmix.RecordCount <= 0 Then
    MsgBox "No record found", vbInformation
    Exit Sub
End If
                
Set Rs = New Recordset
Set rev = New Report.ReportView

Close #1
Open "c:\soon.txt" For Output As #1

pg1 = 1
slno = 1

Call callhead(a, CInt(pg1), CStr(B))
 
   tot1 = 0
    Do While Not rsmix.EOF
    On Error Resume Next
        Set RS2 = New Recordset
        '(bales-isnull(issbal,0)) as lotbale
 
        RS2.Open "select lotno,varcode,areacd,b.areaname,(bales-isnull(issbal,0)) as lotbale,isnull(staplen,0) as s25," & _
                "isnull(staplen50,0) as s50,isnull(uniratio,0) as UFR ,isnull(short_fibre,0) as SF, " & _
                "isnull(micronaire,0) as mic,isnull(strength,0) as st,isnull(trash_per,0) as trash , " & _
                " ratecy,ratekg from RM_lot a,rm_area b where a.areacd =b.areacode " & _
                " and lotno = " & rsmix!lotno & " and lotdt = '" & Format(rsmix!LOTDT, "yyyy-mm-dd") & "' order by lotno", DB, adOpenStatic
                           
                                  
            Do While Not RS2.EOF
                
                'Print #1, Space(3) & Padr(Format(rs2("lotdt"), "dd-mm-yy"), 10, " ") & Space(3) & Padr(rs2("slname"), 26, " ") & Space(2) & Padr(rs2("varname"), 11, " ") & Space(2) & Padl(rs2("plotno"), 10, " ") & Space(2) & Padl(rs2("lotno"), 8, " ") & Space(2) & Padl(rs2("bales"), 5, " ") & Space(2) & Padl(INF(rs2("STAPLEN"), 2), 10, " ") & Space(1) & Padl(INF(rs2("STAPLEN50"), 2), 9, " "); Padl(INF(rs2("uniratio"), 2), 10, " "); Padl(INF(rs2("micronaire"), 2), 10, " "); Space(1); Padl(INF(rs2("strength"), 2), 10, " ");
                'Print #1, Space(1); Padl(INF(rs2("MATURE"), 2), 9, " "); Padl(INF(rs2("HMATURE"), 2), 11, " "); Padl(INF(rs2("IMATURE"), 2), 10, " "); Padl(Format(rs2("mcoeff"), "#0.00"), 12, " "); Padl(INF(rs2("fqi"), 2), 10, " "); Padl(INF(rs2("RATECANDY"), 0), 10, " "); Padl(INF(rs2("moisture"), 2), 11, " "); Padl(INF(rs2("trash_per"), 2), 10, " ")
                
                Print #1, Space(4) & Padl(slno, 3, " ") & Space(3) & Padl(RS2("lotno"), 5, " ") & Space(3) & Padr(RS2("Varcode"), 4, "") & Space(5) & Padl(rsmix("noofbales"), 5, " ") & Space(5) & Padr(RS2("areaname"), 12, "") & Space(1) & Padl(INF(RS2("s25"), 2), 5, " ") & Space(5) & Padl(INF(RS2("s50"), 2), 5, " ") & Space(3) & Padl(INF(RS2("UFR"), 2), 5, " ") & Space(5) & Padl(INF(RS2("SF"), 2), 5, " ") & Space(5) & Padl(INF(RS2("mic"), 2), 5, " ") & Space(2) & Padl(INF(RS2("st"), 2), 5, " ") & Space(4) & Padl(INF(RS2("trash"), 2), 5, " ") & Space(3) & Padl(INF(RS2("ratecy"), 0), 9, " ") & Space(2) & Padl(INF(RS2("ratekg"), 2), 9, " ")
                
                                
                s25 = s25 + val(RS2("s25"))
                s50 = s50 + val(RS2("s50"))
                ufr = ufr + val(RS2("UFR"))
                sf = sf + val(RS2("SF"))
                mic = mic + val(RS2("mic"))
                st = st + val(RS2("st"))
                trash = trash + val(RS2("trash"))
                rc = rc + val(RS2("ratecy"))
                rk = rk + val(RS2("ratekg"))
                
                'to find Max ,minvalue Value
                
                If s251 = 0 Then
                     s251 = val(RS2("s25"))
                     s252 = val(RS2("s25"))
                Else
                     If val(RS2("s25")) >= s251 Then
                         s251 = val(RS2("s25"))
                     ElseIf val(RS2("s25")) <= s252 Then
                         s252 = val(RS2("s25"))
                     End If
                End If
                
                If s501 = 0 Then
                     s501 = val(RS2("s50"))
                     s502 = val(RS2("s50"))
                Else
                     If val(RS2("s50")) >= s501 Then
                         s501 = val(RS2("s50"))
                     ElseIf val(RS2("s50")) <= s502 Then
                         s252 = val(RS2("s50"))
                     End If
                End If
                
                If ufr1 = 0 Then
                     ufr1 = val(RS2("UFR"))
                     ufr2 = val(RS2("UFR"))
                Else
                     If val(RS2("UFR")) >= ufr1 Then
                         ufr1 = val(RS2("UFR"))
                     ElseIf val(RS2("UFR")) <= ufr2 Then
                         ufr2 = val(RS2("UFR"))
                     End If
                End If
                
                If sf1 = 0 Then
                     sf1 = val(RS2("SF"))
                     sf2 = val(RS2("SF"))
                Else
                     If val(RS2("SF")) >= sf1 Then
                         sf1 = val(RS2("SF"))
                     ElseIf val(RS2("SF")) <= sf2 Then
                         sf2 = val(RS2("SF"))
                     End If
                End If
                
                If mic1 = 0 Then
                     mic1 = val(RS2("mic"))
                     mic2 = val(RS2("mic"))
                Else
                     If val(RS2("mic")) >= mic1 Then
                         mic1 = val(RS2("mic"))
                     ElseIf val(RS2("mic")) <= mic2 Then
                         mic2 = val(RS2("mic"))
                     End If
                End If
                
                If st1 = 0 Then
                     st1 = val(RS2("st"))
                     st2 = val(RS2("st"))
                Else
                     If val(RS2("st")) >= st1 Then
                         st1 = val(RS2("st"))
                     ElseIf val(RS2("st")) <= st2 Then
                         st2 = val(RS2("st"))
                     End If
                End If
                
                If trash1 = 0 Then
                     trash1 = val(RS2("trash"))
                     trash2 = val(RS2("trash"))
                Else
                     If val(RS2("trash")) >= trash1 Then
                         trash1 = val(RS2("trash"))
                     ElseIf val(RS2("trash")) <= trash2 Then
                         trash2 = val(RS2("trash"))
                     End If
                End If
                                
                If rc1 = 0 Then
                     rc1 = val(RS2("ratecy"))
                     rc2 = val(RS2("ratecy"))
                Else
                     If val(RS2("ratecy")) >= rc1 Then
                         rc1 = val(RS2("ratecy"))
                     ElseIf val(RS2("ratecy")) <= rc2 Then
                         rc2 = val(RS2("ratecy"))
                     End If
                End If
                                                
                If rk1 = 0 Then
                     rk1 = val(RS2("ratekg"))
                     rk2 = val(RS2("ratekg"))
                Else
                     If val(RS2("ratekg")) >= rk1 Then
                         rk1 = val(RS2("ratekg"))
                     ElseIf val(RS2("ratekg")) <= rk2 Then
                         rk2 = val(RS2("ratekg"))
                     End If
                End If
                
                co = co + 1
                tot1 = tot1 + val(rsmix("noofbales"))
                
                slno = slno + 1
                
                If co >= 60 Then
                    Print #1, Space(3) & String(130, "-")
                    Print #1, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call callhead(a, CInt(pg1), CStr(B))
                End If
                
                RS2.MoveNext
            Loop
            
        rsmix.MoveNext
    Loop


'Average
    slno = slno - 1
    s253 = (s25 / slno)
    s503 = (s50 / slno)
    ufr3 = (ufr / slno)
    sf3 = (sf / slno)
    mic3 = (mic / slno)
    st3 = (st / slno)
    trash3 = (trash / slno)
    rc3 = (rc / slno)
    rk3 = (rk / slno)
    
 'Range
    
    s254 = s251 - s252
    s504 = s501 - s502
    ufr4 = ufr1 - ufr2
    sf4 = sf1 - sf2
    mic4 = mic1 - mic2
    st4 = st1 - st2
    trash4 = trash1 - trash2
    rc4 = rc1 - rc2
    rk4 = rk1 - rk2
    
'Set rs = New Recordset
'
'rs.Open "select avg(staplen)as s25,max(staplen)as s251,min(staplen)as s252,(max(staplen)-min(staplen))as s253, " & _
'            "avg(staplen) as s50,max(staplen) as s501,min(staplen) as s502,(max(staplen)-min(staplen))as s503," & _
'            "avg(uniratio) as UFR ,max(uniratio) as UFR1 ,min(uniratio) as UFR2 ,(max(uniratio)-min(uniratio)) as UFR3," & _
'            " avg(short_fibre) as SF, max(short_fibre) as SF1,min(short_fibre) as SF2,(max(short_fibre)-min(short_fibre))as SF3, " & _
'            "avg(micronaire) as mic,max(micronaire) as mic1,min(micronaire) as mic2,(max(micronaire)-min(micronaire)) as mic3," & _
'            "avg(strength) as st,max(strength) as st1,min(strength) as st2,(max(strength)-min(strength)) as st3, " & _
'            " avg(trash_per) as trash ,max(trash_per) as trash1 ,min(trash_per) as trash2 ,(max(trash_per)-min(trash_per))as trash3 ," & _
'            " avg(ratecy) as ratecy ,max(ratecy) as ratecy1,min(ratecy) as ratecy2,(max(ratecy)-min(ratecy)) as ratecy3," & _
'            " avg(ratekg) as ratekg,max(ratekg) as ratekg1,min(ratekg) as ratekg2,(max(ratekg)-min(ratekg))as ratekg3 " & _
'            " from RM_lot  " & _
'            " where lotdt = '" & Format(a, "yyyy-mm-dd") & "' ", DB, adOpenStatic
            
            '" from RM_lot a,rm_area b where a.areacd =b.areacode " & _

Print #1, Space(3) & String(130, "-")
Print #1, Space(3) + Space(7) + "Total" + Space(12) & Padl(tot1, 5, " ")

Print #1, Space(3) + Space(7) + "Avg" + Space(37) & Padl(INF(s253, 2), 5, " ") & Space(5) & Padl(INF(s503, 2), 5, " ") & Space(3) & Padl(INF(ufr3, 2), 5, " ") & Space(5) & Padl(INF(sf3, 2), 5, " ") & Space(5) & Padl(INF(mic3, 2), 5, " ") & Space(2) & Padl(INF(st3, 2), 5, " ") & Space(4) & Padl(INF(trash3, 2), 5, " ") & Space(3) & Padl(INF(rc3, 0), 9, " ") & Space(2) & Padl(INF(rk3, 2), 9, " ")
Print #1, Space(3) + Space(7) + "Max" + Space(37) & Padl(INF(s251, 2), 5, " ") & Space(5) & Padl(INF(s501, 2), 5, " ") & Space(3) & Padl(INF(ufr1, 2), 5, " ") & Space(5) & Padl(INF(sf1, 2), 5, " ") & Space(5) & Padl(INF(mic1, 2), 5, " ") & Space(2) & Padl(INF(st1, 2), 5, " ") & Space(4) & Padl(INF(trash1, 2), 5, " ") & Space(3) & Padl(INF(rc1, 0), 9, " ") & Space(2) & Padl(INF(rk1, 2), 9, " ")
Print #1, Space(3) + Space(7) + "Min" + Space(37) & Padl(INF(s252, 2), 5, " ") & Space(5) & Padl(INF(s502, 2), 5, " ") & Space(3) & Padl(INF(ufr2, 2), 5, " ") & Space(5) & Padl(INF(sf2, 2), 5, " ") & Space(5) & Padl(INF(mic2, 2), 5, " ") & Space(2) & Padl(INF(st2, 2), 5, " ") & Space(4) & Padl(INF(trash2, 2), 5, " ") & Space(3) & Padl(INF(rc2, 0), 9, " ") & Space(2) & Padl(INF(rk2, 2), 9, " ")
Print #1, Space(3) + Space(7) + "Range" + Space(35) & Padl(INF(s254, 2), 5, " ") & Space(5) & Padl(INF(s504, 2), 5, " ") & Space(3) & Padl(INF(ufr4, 2), 5, " ") & Space(5) & Padl(INF(sf4, 2), 5, " ") & Space(5) & Padl(INF(mic4, 2), 5, " ") & Space(2) & Padl(INF(st4, 2), 5, " ") & Space(4) & Padl(INF(trash4, 2), 5, " ") & Space(3) & Padl(INF(rc4, 0), 9, " ") & Space(2) & Padl(INF(rk4, 2), 9, " ")
Print #1, Space(3) & String(130, "-")

'Print #1, Space(3) + Space(7) + "Avg" + Space(37) & Padl(INF(rs("s25"), 2), 5, " ") & Space(5) & Padl(INF(rs("s50"), 2), 5, " ") & Space(3) & Padl(INF(rs("UFR"), 2), 5, " ") & Space(5) & Padl(INF(rs("SF"), 2), 5, " ") & Space(5) & Padl(INF(rs("mic"), 2), 5, " ") & Space(2) & Padl(INF(rs("st"), 2), 5, " ") & Space(4) & Padl(INF(rs("trash"), 2), 5, " ") & Space(3) & Padl(INF(rs("ratecy"), 2), 9, " ") & Space(2) & Padl(INF(rs("ratekg"), 2), 9, " ")
'Print #1, Space(3) + Space(7) + "Max" + Space(37) & Padl(INF(rs("s251"), 2), 5, " ") & Space(5) & Padl(INF(rs("s501"), 2), 5, " ") & Space(3) & Padl(INF(rs("UFR1"), 2), 5, " ") & Space(5) & Padl(INF(rs("SF1"), 2), 5, " ") & Space(5) & Padl(INF(rs("mic1"), 2), 5, " ") & Space(2) & Padl(INF(rs("st1"), 2), 5, " ") & Space(4) & Padl(INF(rs("trash1"), 2), 5, " ") & Space(3) & Padl(INF(rs("ratecy1"), 2), 9, " ") & Space(2) & Padl(INF(rs("ratekg1"), 2), 9, " ")
'Print #1, Space(3) + Space(7) + "Min" + Space(37) & Padl(INF(rs("s252"), 2), 5, " ") & Space(5) & Padl(INF(rs("s502"), 2), 5, " ") & Space(3) & Padl(INF(rs("UFR2"), 2), 5, " ") & Space(5) & Padl(INF(rs("SF2"), 2), 5, " ") & Space(5) & Padl(INF(rs("mic2"), 2), 5, " ") & Space(2) & Padl(INF(rs("st2"), 2), 5, " ") & Space(4) & Padl(INF(rs("trash2"), 2), 5, " ") & Space(3) & Padl(INF(rs("ratecy2"), 2), 9, " ") & Space(2) & Padl(INF(rs("ratekg2"), 2), 9, " ")
'Print #1, Space(3) + Space(7) + "Range" + Space(35) & Padl(INF(rs("s253"), 2), 5, " ") & Space(5) & Padl(INF(rs("s503"), 2), 5, " ") & Space(3) & Padl(INF(rs("UFR3"), 2), 5, " ") & Space(5) & Padl(INF(rs("SF3"), 2), 5, " ") & Space(5) & Padl(INF(rs("mic3"), 2), 5, " ") & Space(2) & Padl(INF(rs("st3"), 2), 5, " ") & Space(4) & Padl(INF(rs("trash3"), 2), 5, " ") & Space(3) & Padl(INF(rs("ratecy3"), 2), 9, " ") & Space(2) & Padl(INF(rs("ratekg3"), 2), 9, " ")
'Print #1, Space(3) & String(130, "-")
Print #1, Chr(18)

co = co + 8

If co >= 60 Then
    Print #1, Space(3) & String(130, "-")
    Print #1, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call callhead(a, CInt(pg1), CStr(B))
End If
                
Print #1, Chr(12)
Close #1

Open "c:\soon.bat" For Output As #1
Print #1, "cd\"
Print #1, "c:"
Print #1, "cd\"

Print #1, "type soon.txt>prn"
rev.txtfile = "c:\soon.txt"
rev.Batfile = "c:\soon.bat"
Close #17

End Sub
Private Sub callhead(a As String, pg1 As String, B As String)
Dim div As String

Print #1, Chr(18) & Chr(15)
Print #1, Space(3) + Chr(27) + "E" + CENTRE(divname, 130, " ") + Chr(27) + "F"
Print #1,
Print #1, 'Chr(15)
Print #1, Space(3) + "Quality Report For Mixing  " & Padr(B, 7, " ") & Space(3) & Format(a, "dd/mm/yy") & Space(67) & Format(Date, "dd/mm/yy") & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #1, Space(3) & String(130, "-")

'Print #1, Space(3); " Date of                                                   Party      Mill  No of        2.5%       50%     U.R %       M/C   Strength                                   Maturity               Rate/                                  "

Print #1, Space(3) + "       Mill    Vari-    No.Of                                                                                 Rate Per   Rate Per"
Print #1, Space(3) + " Sl.   LotNo   -ety     Bales     Station      2.5 %      50 %     UFR      S.F.      MIC      ST    Trash       Candy        Kgs "

Print #1, Space(3) & String(130, "-")
co = co + 9
End Sub
  
Private Sub callhead1(a As String, pg1 As String, B As String)
Dim div As String

Print #1, Chr(18)
Print #1, Space(3) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1,
Print #1, Chr(15)
Print #1, Space(3) + "Mixing Selection For " & Padr(B, 7, " ") & Space(3) & Format(a, "dd/mm/yy") & Space(68) & Format(Date, "dd/mm/yy") & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #1, Space(3) & String(130, "-")

Print #1, Space(3) + "Sl.   Supplier Name                             Varitey     Station          Lotno  Quantity  P.R.NO                "
Print #1, Space(3) & String(130, "-")
co = co + 8

End Sub




