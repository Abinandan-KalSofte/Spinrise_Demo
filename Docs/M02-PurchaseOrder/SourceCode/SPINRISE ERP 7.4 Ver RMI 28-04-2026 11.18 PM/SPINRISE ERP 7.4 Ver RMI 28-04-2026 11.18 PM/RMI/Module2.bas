Attribute VB_Name = "Module2"
Option Explicit

Public Sub Varietywisedetaily(fromdate As Date, todate As Date, Category As String)
Dim str_lotno As String
Dim temp_lotdt As Date
Dim temp_issdt As Date
Dim str_issno As String
Dim dbl_receiptvalue As Double
Dim dbl_issuevalue As Double
Dim dbl_openvalue As Double
Dim dbl_openqty As Double
a = FreeFile
Close #a
Close
Open "C:\stkledgerdetail.txt" For Output As #a
pg = 1
co = 0
BlockCode = Empty
CategoryCode = Empty
Category = Left(Category, 1)
If Category = "A" Then
    CategoryCode = "'C','P','V'"
ElseIf Category = "S" Then
    CategoryCode = "'P','V'"
Else
    CategoryCode = "'" & Category & "'"
End If
Set rs3 = New Recordset

Set rs = New Recordset
rs.Open "select  DISTINCT a.varcode,b.varname from rm_lot a,rm_var b where a.varcode=b.varcode and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ")  and decode(a.accflg,'M',nvl(a.NETWT,0),'P',nvl(a.PTYNET,0))>0 order by varcode", db, adOpenStatic
If rs.RecordCount > 0 Then
Call stkvarietydetailheader(fromdate, todate, Category)
    Do Until rs.EOF
        dbl_receiptvalue = 0
        dbl_issuevalue = 0
        Print #a, Space(3) & Padr(rs("varname").Value, 20, " ")
        co = co + 1
        Print #a,
        Set rs2 = New Recordset
        rs2.Open "select sum(decode(a.accflg,'M',nvl(a.NETWT,0),'P',nvl(a.PTYNET,0))),sum(decode(a.accflg,'M',nvl(a.NETWT,0)*a.ratekg,'P',nvl(a.PTYNET,0)*a.ratekg)) from rm_lot a where a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.varcode='" & rs("varcode").Value & "'  and  OPFLG='Y'", db, adOpenStatic
        If rs2.EOF = False Then
            Print #a, Space(75) & Padr("***OPENING STOCK***", 21, " ") & Padl(INF(rs2(0).Value, 2), 20, " ") & Padl(INF(rs2(1).Value, 2), 20, " ")
            dbl_openqty = IIf(IsNull(rs2(0)), 0, rs2(0))
            dbl_openvalue = IIf(IsNull(rs2(1)), 0, rs2(1))
            co = co + 1
        End If
        co = co + 1
        Set rs1 = New Recordset
        rs1.Open "select a.lotno,a.lotdt,decode(a.accflg,'M',nvl(a.NETWT,0),'P',nvl(a.PTYNET,0)) recqty,decode(a.accflg,'M',nvl(a.NETWT,0),'P',nvl(a.PTYNET,0))*nvl(a.ratekg,0) recvalue,a.ratekg from rm_lot a where a.divcode='" & Divcode & "'  and a.catcd IN (" & CategoryCode & ") and a.varcode='" & rs("varcode").Value & "' and a.opflg='N'  ORDER BY a.lotdt", db, adOpenStatic
        If rs1.RecordCount > 0 Then
            Do Until rs1.EOF
                If temp_lotdt <> Format(rs1("lotdt").Value, "DD/MM/YY") Then
                    Print #a, Space(3) & Padr(Format(rs1("lotdt").Value, "DD/MM/YY"), 10, " ") & Padr(rs1("lotno").Value, 10, " ") & Padl(INF(rs1("recqty").Value, 3), 20, "") & Padl(INF(rs1("recvalue").Value, 2), 20, "")
                ElseIf temp_lotdt = Format(rs1("lotdt").Value, "DD/MM/YY") Then
                    Print #a, Space(3) & Padr(" ", 10, " ") & Padr(rs1("lotno").Value, 10, " ") & Padl(INF(rs1("recqty").Value, 3), 20, "") & Padl(INF(rs1("recvalue").Value, 2), 20, "")
                End If
                dbl_receiptvalue = dbl_receiptvalue + Round(rs1("recvalue").Value, 3)
                co = co + 1
                If co = 60 Then
                     Print #a, Space(3) & String(132, "-")
                     Print #a, Chr(12)
                     Call stkvarietydetailheader(fromdate, todate, Category)
                End If
                'Print #a, Space(3) & Padl(" ", 10, " ") & Padl(INF(rs1("recqty").Value, 3), 20, "") & Padl(INF(rs1("recvalue").Value, 3), 20, "")
                Set rs2 = New Recordset
                rs2.Open "select DOCNO,DOCDT,sum(NVL(ISSKGS,0)) ISSKGS from rm_issb a,rm_lot b where b.VARCODE='" & rs("VARCODE").Value & "' and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.lotno=" & rs1("lotno") & " and a.lotdt='" & Format(rs1("lotdt").Value, "DD/MMM/YYYY") & "' and b.divcode=a.divcode and b.catcd=a.catcd and b.lotno=a.lotno and b.lotdt=a.lotdt and b.opflg='N' group by DOCNO,DOCDT", db, adOpenStatic
                If rs2.RecordCount > 0 Then
                    Do Until rs2.EOF
                        dbl_issuevalue = dbl_issuevalue + rs2("ISSKGS").Value * IIf(IsNull(rs1("ratekg").Value), 0, rs1("ratekg").Value)
                        If temp_issdt <> Format(rs2("DOCDT").Value, "DD/MM/YY") Then
                            If str_issno = rs2("DOCNO").Value Then
                                Print #a, Space(3) & Padr(Format(rs2("DOCDT").Value, "DD/MM/YY"), 10, " ") & Padr(" ", 10, " ") & Space(30) & Padl(INF(rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(rs2("ISSKGS").Value * rs1("ratekg").Value, 3), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            ElseIf str_issno <> rs2("DOCNO").Value Then
                                Print #a, Space(3) & Padr(Format(rs2("DOCDT").Value, "DD/MM/YY"), 10, " ") & Padr(rs2("DOCNO").Value, 10, " ") & Space(30) & Padl(INF(rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(rs2("ISSKGS").Value * rs1("ratekg").Value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            End If
                            co = co + 1
                            If co = 60 Then
                                 Print #a, Space(3) & String(132, "-")
                                 Print #a, Chr(12)
                                 Call stkvarietydetailheader(fromdate, todate, Category)
                            End If
                        ElseIf temp_issdt = Format(rs2("DOCDT").Value, "DD/MM/YY") Then
                            If str_issno = rs2("DOCNO").Value Then
                                Print #a, Space(3) & Padr(" ", 10, " ") & Padr(" ", 10, " ") & Space(30) & Padl(INF(rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(rs2("ISSKGS").Value * rs1("ratekg").Value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            ElseIf str_issno <> rs2("DOCNO").Value Then
                                Print #a, Space(3) & Padr(" ", 10, " ") & Padr(rs2("DOCNO").Value, 10, " ") & Space(30) & Padl(INF(rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(rs2("ISSKGS").Value * rs1("ratekg").Value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            End If
                            co = co + 1
                            If co = 60 Then
                                 Print #a, Space(3) & String(132, "-")
                                 Print #a, Chr(12)
                                 Call stkvarietydetailheader(fromdate, todate, Category)
                            End If
                        End If
                    str_issno = rs2("DOCNO").Value
                    temp_issdt = Format(rs2("DOCDT").Value, "DD/MM/YY")
                    rs2.MoveNext
                    Loop
                ElseIf rs2.RecordCount = 0 Then
                   'Print #a, Space(3) & Padr(" ", 10, " ") & Padr(" ", 10, " ") & Space(30) & Padl(" ", 20, " ") & Padl(" ", 20, " ") & Space(3) & Padl(INF(rs1("recqty").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                End If
                temp_lotdt = Format(rs1("lotdt").Value, "DD/MM/YY")
                str_lotno = rs1("lotno").Value
            rs1.MoveNext
                Print #a,
                co = co + 1
                If co = 60 Then
                     Print #a, Space(3) & String(132, "-")
                     Print #a, Chr(12)
                     Call stkvarietydetailheader(fromdate, todate, Category)
                End If
            Loop
        End If
        Set rs1 = New Recordset
        rs1.Open "select sum(decode(a.accflg,'M',nvl(a.NETWT,0),'P',nvl(a.PTYNET,0))) recqty from rm_lot a where a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.varcode='" & rs("varcode").Value & "' and a.opflg='N' ", db, adOpenStatic
        Set rs2 = New Recordset
        rs2.Open "select sum(NVL(ISSKGS,0)) ISSKGS from rm_issb a,rm_lot b where b.VARCODE='" & rs("VARCODE").Value & "' and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and b.divcode=a.divcode and b.catcd=a.catcd and b.lotno=a.lotno and b.lotdt=a.lotdt and b.opflg='N'", db, adOpenStatic
    '    Print #a, Space(3) & Padr(" ", 2, " ") & Padr("VARIETY WISE TOTAL", 18, " ") & Padl(INF(rs1(0).Value, 3), 20, "") & Padl(INF(dbl_receiptvalue, 3), 20, "") & Space(3) & Padr(INF(rs2(0).Value, 3), 20, "") & Padl(INF(dbl_issuevalue, 3), 20, "")
        Print #a, Space(3) & Padr(" ", 2, " ") & Padr("VARIETY TOTAL     ", 18, " ") & Padl(INF(rs1(0).Value, 3), 20, "") & Space(3) & Padl(INF(dbl_receiptvalue, 3), 17, "") & Space(3) & Padr(INF(rs2(0).Value, 3), 18, "") & Padr(INF(dbl_issuevalue, 2), 13, "") '& Padr("QUANTITY", 20, "") & Space(2) & Padr("VALUE", 20, "")
        Print #a,
        co = co + 1
        If co = 60 Then
             Print #a, Space(3) & String(132, "-")
             Print #a, Chr(12)
             Call stkvarietydetailheader(fromdate, todate, Category)
        End If
        If rs1(0).Value - IIf(IsNull(rs2(0).Value), 0, rs2(0).Value) = 0 Then
            Print #a, Space(75) & Padr("***CLOSING STOCK***", 21, " ") & Padl(Format(dbl_openqty + rs1(0).Value - IIf(IsNull(rs2(0).Value), 0, rs2(0).Value), "##.###"), 20, " ") & Padl(INF(dbl_openvalue + dbl_receiptvalue - dbl_issuevalue, 2), 20, " ")
        ElseIf rs1(0).Value - IIf(IsNull(rs2(0).Value), 0, rs2(0).Value) > 0 Then
            Print #a, Space(75) & Padr("***CLOSING STOCK***", 21, " ") & Padl(INF(dbl_openqty + rs1(0).Value - IIf(IsNull(rs2(0).Value), 0, rs2(0).Value), 2), 20, " ") & Padl(INF(dbl_openvalue + dbl_receiptvalue - dbl_issuevalue, 2), 20, " ")
        End If
        dbl_receiptvalue = 0
        dbl_issuevalue = 0
            co = co + 1
            If co = 60 Then
                 Print #a, Space(3) & String(132, "-")
                 Print #a, Chr(12)
                 Call stkvarietydetailheader(fromdate, todate, Category)
            End If
        Print #a,
        co = co + 1
        If co = 60 Then
             Print #a, Space(3) & String(132, "-")
             Print #a, Chr(12)
             Call stkvarietydetailheader(fromdate, todate, Category)
        End If
    rs.MoveNext
    Loop
Else
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Close #a
Open "C:\stkledgerdetail.bat" For Output As #a
Print #a, "type C:\stkledgerdetail.txt > prn"
Close #a
Set RPTV = New Report.ReportView
RPTV.txtfile = "C:\stkledgerdetail.txt"
RPTV.Batfile = "C:\stkledgerdetail.bat"
Screen.MousePointer = 0
End Sub
Public Sub stkvarietydetailheader(fromdate As Date, todate As Date, Category As String)
    co = 0
    Print #a, Chr(18)
    Print #a, Space(3) & CENTRE(Chr(14) & DIVNAME & Chr(14), 90, " ")
    Print #a,
    Print #a, Space(3) & CENTRE(Chr(27) & "E" & " STOCK LEDGER VARIETY WISE FOR THE DATE BETWEEN " & Format(fromdate, "DD/MM/YYYY") & " AND " & Format(todate, "DD/MM/YYYY") & ". " & Chr(27) & "F", 130, " ")
    Print #a,
    Print #a, Space(3) & Padr(" ", 100, " ") & "Date: " & Format(Date, "dd/mm/yyyy") & " Page: " & pg
    Print #a, Space(3) & String(132, "-")
    Print #a, Space(3) & Padr("VARIETY", 20, " ") & Space(14) & "<-----" & CENTRE("RECEIPTS", 10, " ") & "----->" & Space(6) & "<-----" & CENTRE("ISSUES", 10, " ") & "----->" & Space(20) & "<-----" & CENTRE("STOCK", 10, " ") & "----->"
    Print #a, Space(3) & Padr("DATE", 10, " ") & Space(1) & Padr("DOCNO", 10, " ") '& Space(39) & Padr("DATE", 10, " ") & Space(1) & Padr("DOCNO", 10, " ")
    Print #a, Space(3) & Padr(" ", 10, " ") & Padr(" ", 10, " ") & Padl("QUANTITY", 20, "") & Space(3) & Padl("VALUE", 17, "") & Space(2) & Padr("QUANTITY", 20, "") & Space(3) & Padr("VALUE", 18, "") & Padr("QUANTITY", 20, "") & Space(2) & Padr("VALUE", 20, "")
    Print #a, Space(3) & String(132, "-")
    co = co + 11
End Sub


