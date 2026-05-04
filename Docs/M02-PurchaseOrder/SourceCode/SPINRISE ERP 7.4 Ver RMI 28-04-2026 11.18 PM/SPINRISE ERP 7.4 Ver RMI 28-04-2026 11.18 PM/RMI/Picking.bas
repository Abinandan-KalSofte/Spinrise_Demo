Attribute VB_Name = "Picking"
Dim cnn As Connection
Dim rs As Recordset

Dim RPTV As Report.ReportView
Dim sr As String
Dim a As Integer


Public Sub pickingreport(u As String, v As String, DIVNAME As String)


Set cnn = New Connection

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs = New Recordset
rs.Open "Select distinct prefix + '-'+ cast(docno as varchar) as mixno  from rm_issb a ,fa_slmas b ,rm_lot c , rm_area d ,rm_var e where E.VARCODE=C.VARCODE AND ISSTYPE ='P' and b.slcode = c.supcd  and d.areacode = b.areacode  and  a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.lotno = c.lotno  ", cnn, adOpenStatic

If rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
Open "C:\pick.TXT" For Output As #a
pg1 = 1
co = 0
Print #a, Chr(15)
co = co + 1
Call pickingHeader(CStr(pg1), CStr(co), u, v, DIVNAME)
   

Do While Not rs.EOF

co = co + 1
Set rs1 = New Recordset
rs1.Open "Select distinct a.lotno,a.docdt as mixdate,a.LOTDT,b.slname  ,d.areaname ,e.VARNAME ,c.yellowpick, c.Jute,c.Trash,c.nofhairs,c.colorfibre,c.otherpicks from rm_issb a ,fa_slmas b ,rm_lot c , rm_area d ,rm_var e where a.lotdt = c.lotdt  and a.catcd=c.catcd and a.lottype=c.lottype  and E.VARCODE=C.VARCODE AND ISSTYPE ='P' and b.slcode = c.supcd  and d.areacode = b.areacode  and  a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.lotno = c.lotno and  a.prefix = '" & Mid$(rs("mixno"), 1, InStr(rs("mixno"), "-") - 1) & "'  and a.DOCno ='" & Mid(rs("mixno"), InStr(1, rs("mixno"), "-") + 1, Len(rs("mixno"))) & " '  ", cnn, adOpenStatic
'rs1.Open "Select a.lotno,a.docdt as mixdate,a.LOTDT,b.slname  ,d.areaname ,e.VARNAME ,c.yellowpick, c.Jute,c.Trash,c.nofhairs,c.colorfibre,c.otherpicks from rm_issb a ,fa_slmas b ,rm_lot c , rm_area d ,rm_var e where E.VARCODE=C.VARCODE AND ISSTYPE ='P' and b.slcode = c.supcd  and d.areacode = b.areacode  and  a.docdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.lotno = c.lotno   and a.lotno ='" & Mid(rs("mixno"), InStr(1, rs("mixno"), "-") + 1, Len(rs("mixno"))) & " '  ", cnn, adOpenStatic
If rs1.RecordCount > 0 Then
    Print #a, Space(5); Padr(Replace(rs("mixno"), "-", ""), 7, " ")
    co = co + 1
End If
Do While Not rs1.EOF
Print #a, Space(14); Padl(rs1("lotno"), 5, " ") & Space(2); rs1("mixdate") & Space(2); Padr(rs1("slname"), 25, " ") & Space(2) & Padr(rs1("areaname"), 15, " ") & Space(2) & Padr(rs1("varname"), 21, " ") & Space(2); Padl(rs1("yellowpick"), 6, " ") & Space(2); Padl(rs1("jute"), 5, " ") & Space(2) & Padl(rs1("trash"), 5, " ") & Space(2) & Padl(rs1("nofhairs"), 5, " ") & Space(2) & Padl(rs1("colorfibre"), 5, " ") & Space(2) & Padl(rs1("otherpicks"), 5, "")
co = co + 1
If co > pagelen Then
pg1 = pg1 + 1
Print #a, Space(5) + String(159 - 23, "-")
Print #a, Chr(12)
co = 0
Call pickingHeader(CStr(pg1), CStr(co), u, v, DIVNAME)
End If





rs1.MoveNext
Loop
If co > pagelen Then
pg1 = pg1 + 1
Print #a, Space(5) + String(159 - 23, "-")
Print #a, Chr(12)
co = 0
Call pickingHeader(CStr(pg1), CStr(co), u, v, DIVNAME)
End If
rs.MoveNext
Loop
Print #a, Space(5) + String(159 - 23, "-")


Print #a, Chr(12)
Close #a
a = FreeFile
Open "c:\pick.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type pick.txt>prn"
Close #a
RPTV.txtfile = "c:\Pick.txt"
RPTV.Batfile = "c:\pick.bat"
Screen.MousePointer = 0
End Sub
Public Sub pickingHeader(pg1 As Integer, co As Integer, u As String, v As String, DIVNAME As String)
          Print #a, Chr(18)
           Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
           Print #a,
           sr = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Picking / Pre Opener " + Chr(27) + "F" + "from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(10) + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
           Print #a, Space(5) + String(159 - 23, "-")
          Print #a, Space(5); "Mixno. "
           Print #a, Space(13) & "Lotno.   Mix date   Party Name                 Area             Variety                Yellow   Jute  Trash  No.of  Color  Other  "
           Print #a, "                                                                                                    Pick                  hairs  fibre  picks  "
           Print #a, Space(5) + String(159 - 23, "-")
          co = co + 8
          
End Sub






