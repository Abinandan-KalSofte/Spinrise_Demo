Attribute VB_Name = "cottonissue"
Option Explicit
Dim rs As Recordset
Dim PlotNo As Integer
Dim rs2 As Recordset
Dim cn As Connection
Dim pg1 As Integer
Dim pg As Integer
Dim co As Integer
Dim ree As Double
Dim rev As Report.ReportView

Public Sub Cotton_Issue(a As String, b As String, dname As String, str1 As String, str2 As String)

Dim r As String
Dim s As String
Dim div As String

ree = 0
r = a
s = b
co = 0

div = DIVNAME
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring

Set rs = New Recordset
Set rev = New Report.ReportView

Close #1
Open "c:\soon.txt" For Output As #1

pg1 = 1

Call callhead1(r, s, CInt(pg1))

Set rs = New Recordset

rs.Open " select cntcd,a.docdt,count(baleno) as bales,sum(actisskgs)as kgs " & _
        "from rm_issh a,rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype " & _
        " and cntcd Between '" & str1 & "' AND '" & str2 & "' " & _
        " and a.docdt Between '" & Format(r, "yyyy-mm-dd") & "' and ' " & Format(s, "yyyy-mm-dd") & "' " & _
        " group by cntcd,a.docdt order by 1,2", cn, adOpenStatic

If rs.RecordCount <= 0 Then
    MsgBox "No record found", vbInformation
    Exit Sub
    Close #1
End If

Dim tot1 As Double
Dim Gtotal1 As Double

Dim tot2 As Double
Dim Gtotal2 As Double

Dim check As String
Dim sl As Integer
Dim strmix As String
        
        sl = 1
        strmix = ""
        
        Do While Not rs.EOF
                                
                If strmix = "" Then
                    strmix = rs("cntcd")
                    Print #1, Space(3) + Space(6) + "Mixing :" + Space(2) + Padr(rs("cntcd"), 8, " ") + Space(14) + "[ Abstract ]"
                    Print #1,
                    Print #1, Space(3) + Padl(sl, 7, " ") + Space(9) + Padr(Format(rs("docdt"), "dd/mm/yyyy"), 10, " ") + Space(17) + Padl(rs("bales"), 7, " ") + Space(15) + Padl(INF(rs("kgs"), 2), 14, " ")
                    
                    tot1 = tot1 + rs("bales")
                    tot2 = tot2 + INF(rs("kgs"), 2)
                    sl = sl + 1
                    co = co + 3
                    
                ElseIf strmix = rs("cntcd") Then
                    
                    Print #1, Space(3) + Padl(sl, 7, " ") + Space(9) + Padr(Format(rs("docdt"), "dd/mm/yyyy"), 10, " ") + Space(17) + Padl(rs("bales"), 7, " ") + Space(15) + Padl(INF(rs("kgs"), 2), 14, " ")
                    
                    tot1 = tot1 + rs("bales")
                    tot2 = tot2 + INF(rs("kgs"), 2)
                    sl = sl + 1
                    co = co + 1
                    
                ElseIf strmix <> rs("cntcd") Then
                    
                    Print #1, Space(3) & String(80, "-")
                    Print #1, Space(19) + "Total" + Space(22) + Padl(tot1, 7, " ") + Space(15) + Padl(INF(tot2, 2), 14, " ")
                    Print #1, Space(3) & String(80, "-")
                    
                    Gtotal1 = Gtotal1 + tot1
                    Gtotal2 = Gtotal2 + tot2
                    
                    tot1 = 0
                    tot2 = 0
                    sl = 1
                    
                    strmix = rs("cntcd")
                    
                    Print #1, Space(3) + Space(6) + "Mixing :" + Space(2) + Padr(rs("cntcd"), 8, " ") + Space(14) + "[ Abstract ]"
                    Print #1,
                    Print #1, Space(3) + Padl(sl, 7, " ") + Space(9) + Padr(Format(rs("docdt"), "dd/mm/yyyy"), 10, " ") + Space(17) + Padl(rs("bales"), 7, " ") + Space(15) + Padl(INF(rs("kgs"), 2), 14, " ")
                    
                    tot1 = tot1 + rs("bales")
                    tot2 = tot2 + INF(rs("kgs"), 2)
                    
                    sl = sl + 1
                    co = co + 6
                End If
                
                If co >= 60 Then
                    Print #1, Space(3) & String(80, "-")
                    Print #1, Chr(12)
                    pg1 = pg1 + 1
                    co = 0
                    Call callhead1(CStr(a), CStr(b), CStr(pg1))
                End If
                
            If rs.EOF = False Then
                rs.MoveNext
            End If
        Loop
            
Gtotal1 = Gtotal1 + tot1
Gtotal2 = Gtotal2 + tot2
                    
Print #1, Space(3) & String(80, "-")
Print #1, Space(19) + "Total" + Space(22) + Padl(tot1, 7, " ") + Space(15) + Padl(INF(tot2, 2), 14, " ")
Print #1, Space(3) & String(80, "-")
Print #1, Space(13) + "Grand Total" + Space(22) + Padl(Gtotal1, 7, " ") + Space(15) + Padl(INF(Gtotal2, 2), 14, " ")
Print #1, Space(3) & String(80, "-")
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



Private Sub callhead1(s As String, q As String, pg1 As String)
Dim div As String

Print #1, Chr(18)
Print #1, Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
Print #1,
'Print #1, Chr(15)
Print #1, Space(3) + "Cotton Issue Details " & Space(1) + "From " & Format(s, "dd/mm/yy") & Space(1) & "to " & Format(q, "dd/mm/yy") & Space(2) & Space(8) & Format(Date, "dd/mm/yy") & Space(8) & "Pg.:" & Padl(pg1, 3, " ")
Print #1, Space(3) & String(80, "-")
'Print #1, Space(3); " Date of                                                   Party      Mill  No of        2.5%       50%     U.R %       M/C   Strength                                   Maturity               Rate/                                  "
Print #1, Space(3); " Sl.No.         Issue Date            Issue  Bales           Net Qty. (in Kgs.)"
Print #1, Space(3) & String(80, "-")

co = co + 7
End Sub








