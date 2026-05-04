Attribute VB_Name = "CustomisedReportBannari"
Dim sQuery As String
Dim rQuery As Recordset
Public Sub GodownCapacityReport(sDate As String, FromGodown As String, ToGodown As String)

Dim str As String
Dim tot5, tot6, tot7 As Double
Dim r As String
Dim S As String
Dim sLotYear As String
Dim temp1 As String
Dim iCnt As Integer

Dim iCapacity, iStock As Double
Dim itCapacity, itStock, itBal As Double

div = DIVNAME
Set Cn = New Connection
Cn.Provider = "msdatashape"
Cn.Open connectstring

    sQuery = ""
    sQuery = sQuery + Chr(13) + " Select Distinct  g.gcode,g.gname, isnull(g.capacity,0) as Capacity, ("
    sQuery = sQuery + Chr(13) + " select "
    sQuery = sQuery + Chr(13) + " case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
    sQuery = sQuery + Chr(13) + " else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) end  + "
    sQuery = sQuery + Chr(13) + " case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
    sQuery = sQuery + Chr(13) + " else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END Stock "
    sQuery = sQuery + Chr(13) + " FROM ("
    sQuery = sQuery + Chr(13) + gStockStatement(sDate, sDate)
    sQuery = sQuery + Chr(13) + " ) A, RM_lot B Where A.lotno=b.lotno and a.lotdt=b.lotdt and a.varcode=b.varcode and b.lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' AND b.godown=g.gcode) as Stock"
    sQuery = sQuery + Chr(13) + " FROM  Rm_god g Where g.divcode='" & Divcode & "'"
    
    Set rQuery = New Recordset
    rQuery.Open sQuery, db, adOpenStatic
    
    If rQuery.RecordCount = 0 Then
        MsgBox "No records Found ", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If

    Set rev = New Report.ReportView
    Close
    'Open "c:\carr.txt" For Output As #1
     Open KALFOLDERDATA & "\carr.TXT" For Output As #1
    pg1 = 1
    Co = 0
    
    iCapacity = 0: iStock = 0
    itCapacity = 0: itStock = 0: itBal = 0


    Call GodownCapacityHeader(CStr(sDate), CInt(pg1))
    rQuery.MoveFirst
    Do While Not rQuery.EOF
       
        If Co >= 59 Then
            Print #1, Space(2) & String(80, "-")
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call GodownCapacityHeader(CStr(sDate), CInt(pg1))
            Co = 9
        End If
        iCapacity = 0: iStock = 0
        iCapacity = IIf(IsNull(rQuery("Capacity")), 0, rQuery("Capacity"))
        iStock = IIf(IsNull(rQuery("stock")), 0, rQuery("stock"))
        
        
        Print #1, Space(3) & Padr(rQuery("gcode"), 6, " ") & Space(3) & Padr(rQuery("gname"), 22, " ") & Space(3) & Padl(INF(iCapacity, 0), 13, " ") & Space(3) & Padl(INF(iStock, 0), 13, " ") & Space(3) & Padl(INF(iCapacity - iStock, 0), 13, " ")
        
        itCapacity = itCapacity + iCapacity
        itStock = itStock + iStock
        itBal = itBal + (iCapacity - iStock)
        
        Co = Co + 1
        c1 = c1 + 1
        If Co >= 63 Then
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call GodownCapacityHeader(CStr(sDate), CInt(pg1))
            Co = 9
        End If
        
        rQuery.MoveNext
    Loop
    
    Print #1, Space(3) & String(80, "-")
    Print #1, Space(3) & Space(9) & Padr("Total", 22, " ") & Space(3) & Padl(INF(itCapacity, 0), 13, " ") & Space(3) & Padl(INF(itStock, 0), 13, " ") & Space(3) & Padl(INF(itBal, 0), 13, " ")
    Print #1, Space(3) & String(80, "=")
    Print #1,
    Print #1,
    Print #1,
    'Call footermod(CInt(1), footerstr, 85)
    Print #1, Chr(12)
    Screen.MousePointer = 0
    Close #1
'    Open "c:\carr.bat" For Output As #1
'    Print #1, "cd\"
'    Print #1, "c:"
'    Print #1, "cd\"
'    Print #1, "type Carr.txt>prn"
'    Close #1
'    Set rev = New Report.ReportView
'    rev.txtfile = "C:\Carr.txt"
'    rev.Batfile = "C:\Carr.bat"
'1 = FreeFile
Call KALBATPROCESS("Carr")
    
End Sub
Public Sub GodownCapacityHeader(a As String, pg1 As Integer)
Print #1, Chr(18)
Print #1, Space(3) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
Print #1, Chr(18)
Print #1, Space(3) & Chr(27) & "E" & Padr("Godown Capacity Report As On ", 29, " ") & Chr(27) & "F" & Padr(Format(a, "dd/mm/yy"), 8, " ") & Space(17) & Padr(Format(pdate, "dd/mm/yy"), 8, " ") & Space(2) & "Pg. No. :" & Padl(pg1, 3, " ")
Print #1, Space(3) & String(80, "-")
Print #1, Space(3) & Padr("Godown", 6, " ") & Space(3) & Padr("Godown Name", 22, " ") & Space(3) & Padl("Storage", 13, " ") & Space(3) & Padl("Current", 13, " ") & Space(3) & Padl("Quantity to", 13, " ")
Print #1, Space(3) & Padr("Code", 6, " ") & Space(3) & Padr(" ", 22, " ") & Space(3) & Padl("Capacity", 13, " ") & Space(3) & Padl("Stock", 13, " ") & Space(3) & Padl(" be Stacked", 13, " ")
Print #1, Space(3) & String(80, "-")
Co = Co + 7
End Sub

