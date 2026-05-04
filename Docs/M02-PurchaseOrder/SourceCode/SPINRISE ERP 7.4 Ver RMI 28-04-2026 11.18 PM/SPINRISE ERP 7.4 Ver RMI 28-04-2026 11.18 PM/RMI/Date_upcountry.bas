Attribute VB_Name = "dd_Upcountry"
Dim rs5 As Recordset
Dim RS6 As Recordset
'Dim rs7 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
'Dim re As String
Dim tot, tot1, tot2, tot3, tot4  As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim co As Integer
Dim s1, s2 As String
Dim z As Integer
Dim i As Integer
Dim f1 As String
Dim F2 As String

Public Sub proc_date_upcountry(From_Date As String, To_Date As String)
f1 = From_Date
F2 = To_Date
    Set cnn = New Connection
    cnn.Provider = "MSDATASHAPE"
    cnn.Open connectstring
    Set RPTV = New Report.ReportView
    s = FreeFile
    Close #11
    Open "C:\luc.TXT" For Output As #11
    pg1 = 1
    co = 0
    Print #11, Chr(15)
    z = FreeFile
    Call header(CStr(f1), CStr(F2))
 
    tot1 = 0
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    tot6 = 0
    Set RS6 = New Recordset
     'rs6.Open "select distinct z.Areaname from rm_lot  a,fa_slmas b,rm_cat c,rm_var d,rm_area z where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and  a.arrdt between '" & Format(from_date, "yyyy-mm-dd") & "' and '" & Format(to_date, "yyyy-mm-dd") & "' and z.areacode=a.areacd group by z.areaname", cnn, adOpenStatic
     RS6.Open "select distinct z.Areaname,a.areacd from rm_lot  a,fa_slmas b,rm_cat c,rm_var d,rm_area z where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and  a.arrdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and z.areacode=*a.areacd group by z.areaname,a.areacd", cnn, adOpenStatic
    If RS6.RecordCount <= 0 Then
      MsgBox ("No records found"), vbInformation, head
       Close
      Screen.MousePointer = 0
      Exit Sub
    End If
    'rs6.MoveFirst
     Do While Not RS6.EOF
            Print #11, Space(5) + Padr(RS6(0), 13, " ")
            co = co + 1
            If co >= pagelen Then
                    pg1 = pg1 + 1
                    Print #11, Chr(12)
                    co = 0
                    Call header(CStr(f1), CStr(F2))
                    co = 0
            End If
            
            AREACD = IIf(IsNull(RS6(1)) = True, Null, RS6(1))
            
            Set rs5 = New Recordset
            If IsNull(AREACD) = True Then
                rs5.Open "select a.lotdt,a.lotno,z.areaname,a.arrdt,b.slname,isnull((a.ratecy/355.6187),0) 'rate',x.cntname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,round(a.netwt,2) as netwt,isnull(a.netwt,0)*round((isnull(a.ratecy,0)/355.6187),2) 'value'  from rm_lot a,fa_slmas b,rm_cat c,rm_var d,rm_count x,rm_area z where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and a.arrdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and a.areacd*=z.areacode and x.cntcd=a.cntcode and  a.areacd IS NULL order by lotno", cnn, adOpenStatic
            Else
                'rs5.Open "select a.lotdt,a.lotno,z.areaname,a.arrdt,b.slname,isnull((a.ratecy/355.6187),0) 'rate',x.cntname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,round(a.netwt,2) as netwt,isnull(a.netwt,0)*round((isnull(a.ratecy,0)/355.6187),2) 'value'  from rm_lot a,fa_slmas b,rm_cat c,rm_var d,rm_count x,rm_area z where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and a.arrdt between '" & Format(from_date, "yyyy-mm-dd") & "' and '" & Format(to_date, "yyyy-mm-dd") & "' and z.areacode=a.areacd and x.cntcd=a.cntcode and  z.areaname='" & rs6(0) & "' order by lotno", cnn, adOpenDynamic, adLockOptimistic
            rs5.Open "select a.lotdt,a.lotno,z.areaname,a.arrdt,b.slname,isnull((a.ratecy/355.6187),0) 'rate',x.cntname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,round(a.netwt,2) as netwt,isnull(a.netwt,0)*round((isnull(a.ratecy,0)/355.6187),2) 'value'  from rm_lot a,fa_slmas b,rm_cat c,rm_var d,rm_count x,rm_area z where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and a.arrdt between '" & Format(From_Date, "yyyy-mm-dd") & "' and '" & Format(To_Date, "yyyy-mm-dd") & "' and z.areacode=a.areacd and x.cntcd=a.cntcode and  a.areacd='" & AREACD & "' order by lotno", cnn, adOpenStatic
            End If
            Do While Not rs5.EOF
            If Len(rs5(7)) > 25 Then
                Print #11, Space(18) & (Mid(1, rs(7), 25))
                co = co + 1
                If co >= pagelen Then
                    pg1 = pg1 + 1
                    Print #11, Chr(12)
                    co = 0
                    Call header(CStr(f1), CStr(F2))
                    co = 0
                End If
                Print #11, Space(18) & (Mid(26, rs(7), 35))
                co = co + 1
                If co >= pagelen Then
                    pg1 = pg1 + 1
                    Print #11, Chr(12)
                    co = 0
                    Call header(CStr(f1), CStr(F2))
                    co = 0
                End If
            Else
                Print #11, Space(18) & Padl(INF(rs5(1), 0), 6, " ") & Space(2) & Padr(rs5(3), rs5(3).DefinedSize, " ") & Space(2) & Padr(rs5(4), 45, " ") & Space(2) & Padr(rs5(7), 25, " ") & Space(2) & Padr(rs5(8), rs5(8).DefinedSize, " ") & Space(1) & Padr(rs5(6), 10, " ") & Space(2) & Padr(rs5(9), 5, " ") & Padl(INF(rs5(10), 0), 13, " ") & Space(2) & Padl(INF(rs5(11), 2), 15, " ") & Space(3) & Padl(INF(rs5(5), 2), 14, " ") & Space(2) & Padl(INF(rs5(12), 2), 20, " ")
                co = co + 1
                If co >= pagelen Then
                    pg1 = pg1 + 1
                    Print #11, Chr(12)
                    co = 0
                    Call header(CStr(f1), CStr(F2))
                    co = 0
                End If
            End If
            tot1 = tot1 + val(rs5("netwt"))
            tot2 = tot2 + val(IIf(IsNull(rs5("bales")), 0, rs5("bales")))
            tot3 = tot3 + val(IIf(IsNull(rs5(5)), 0, rs5(5)))
            tot4 = tot4 + val((IIf(IsNull(rs5(12)), 0, rs5(12))))
            rs5.MoveNext
            i = i + 1
            If co >= pagelen Then
                pg1 = pg1 + 1
                Print #11, Chr(12)
                co = 0
                Call header(CStr(f1), CStr(F2))
            End If
        Loop
        RS6.MoveNext
        Print #11,
        co = co + 1
        If co >= pagelen Then
            pg1 = pg1 + 1
            Print #11, Chr(12)
            co = 0
            Call header(CStr(f1), CStr(F2))
            co = 0
        End If
    Loop
    
    Print #11, Space(5) & String(220, "-")
    Print #11, Space(95) + "  **  Grand Total  **  " + Space(38) & Padl(INF(tot2, 0), 13, " ") & Space(3) & Padl(INF(tot1, 2), 14, " ") & Space(3) & Padl(" ", 14, " ") & Space(2) & Padl(INF(tot4, 2), 20, " ")
    Print #11, Space(5) & String(220, "-")
    Print #11, Chr(12)
    Close #11
    co = 0
    z = FreeFile
    Open "C:\luc.bat" For Output As #11
    Print #11, "cd\"
    Print #11, "C:"
    Print #11, "cd\"
    Print #11, "type luc.TXT>prn"
    Close #11
    RPTV.txtfile = "C:\luc.TXT"
    RPTV.Batfile = "C:\luc.bat"
    Screen.MousePointer = 0
End Sub

Public Sub header(f1 As String, F2 As String)
          a = a1
          Print #11,
          co = co + 1
          Print #11, Chr(18)
          co = co + 1
          Print #11, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 132, " ") + Chr(27) + "F"
          co = co + 1
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #11, Space(3) + Chr(27) + "E" + "Datewise Local/Up Country Stock Position" + Chr(27) + "F" + " As on: " + Format(f1, "DD/MM/YYYY") + Space(39) + CStr(SR) + "Pg.No : " + CStr(pg1) + Chr(15)
          co = co + 1
          Print #11, Space(5) + String(220, "-")
          co = co + 1
          Print #11, Space(5) + "AreaName"
          co = co + 1
          Print #11, Space(15) + Space(3) + "Lot No" + Space(1) + "Arrival Date " + Space(6) + "Party" + Space(42) + "Category" + Space(19) + "Variety" + Space(14) + "Count" + Space(7) + "Unit" + Space(6) + "Quantity" + Space(14) + "Kgs" + Space(13) + "Rate" + Space(17) + "Value"
          co = co + 1
          Print #11, Space(5) & String(220, "-")
          co = co + 1
End Sub
